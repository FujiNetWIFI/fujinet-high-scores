<?
  //RS DISASSEMBLER v1.92 by raster/c.p.u., 2005-2008 (ver.20081204)
  //(SOURCE GENERATOR)
  //============================================================================

  $fname="dk.xex";

  $extra_run_addresses='$9196,$91b0,$91c3,$92be,$92f7,$930d,$9323,$934f,$9377,$938d,$983c,$983f,$9855,$986b,$989d,$9901,$997c,$9999,$99d4,$99fa,$9bcc,$9aa8,$9b03,$989d,$9c23,$9c5c,$9d3c,$9cc9,$9c81,$989d,$9e74,$9f2e,$a0ee,$a102,$a30d,$ae94,$af22,$af99,$afa9,$b176';  //extra adresy oddelene carkou, tj. napr '$1234,$3000,32768';

  $try_rts=0;               //0=no, 1=yes   - zkouset pokracovat za kazdou instrukci RTS
  $try_jmp=0;               //0=no, 1=yes   - zkouset pokracovat za kazdou instrukci JMP
  $try_rti=0;               //0=no, 1=yes   - zkouset pokracovat za kazdou instrukci RTI

  $datalines[0]=1;          //dta lines 1=hex, 2=asc, 3=vid    - tato varianta bude nezapoznamkovana
  $datalines[1]=1;          //dta hex  0=no, 1=yes   - jestli tam ma vubec byt (trebaze zapoznamkovana)
  $datalines[2]=0;          //dta asc  0=no, 1=yes   - jestli tam ma vubec byt (trebaze zapoznamkovana)
  $datalines[3]=0;          //dta vid  0=no, 1=yes   - jestli tam ma vubec byt (trebaze zapoznamkovana)

  //============================================================================

  error_reporting(E_ALL ^ E_NOTICE);
  set_time_limit(300);

  $datalines[$datalines[0]]=1; //ta ktera ma byt nezapoznamkovana tam byt musi!

  $extra_run_addresses=trim($extra_run_addresses);
  $afterrunadrs=array();
  if ($extra_run_addresses)
  {
   $extrara=explode(',',$extra_run_addresses);
   for(reset($extrara); list($key,$val)=each($extrara);)
   {
    $s=trim($val);
    $adr = ($s[0]=='$')? (int)hexdec(substr($s,1)) : (int)$s;
    if ($adr<0x10000) $afterrunadrs[]=$adr;
   }
  }

  $fi=@fopen($fname,"rb");
  if (!$fi) { echo "Can't open file $fname.\n"; exit(); }
  $fsize=filesize($fname);
  $file=@fread($fi,$fsize);
  fclose($fi);

  echo ";\n";
  echo "; File '$fname', size \$".sprintf("%04X",$fsize)." ($fsize) bytes\n;";
  //echo $file;

  $instr6502 = array(
        'BRK', 'ORA ($1,X)', '?CIM', '?ASO ($1,X)', '?NOP $1', 'ORA $1', 'ASL $1', '?ASO $1',
        'PHP', 'ORA #$1', 'ASL @', '?ANC #$1', '?NOP $2', 'ORA $2', 'ASL $2', '?ASO $2',

        'BPL $0', 'ORA ($1),Y', '?CIM', '?ASO ($1),Y', '?NOP $1,X', 'ORA $1,X', 'ASL $1,X', '?ASO $1,X',
        'CLC', 'ORA $2,Y', '?NOP', '?ASO $2,Y', '?NOP $2,X', 'ORA $2,X', 'ASL $2,X', '?ASO $2,X',

        'JSR $2', 'AND ($1,X)', '?CIM', '?RLA ($1,X)', 'BIT $1', 'AND $1', 'ROL $1', '?RLA $1',
        'PLP', 'AND #$1', 'ROL @', '?ANC #$1', 'BIT $2', 'AND $2', 'ROL $2', '?RLA $2',

        'BMI $0', 'AND ($1),Y', '?CIM', '?RLA ($1),Y', '?NOP $1,X', 'AND $1,X', 'ROL $1,X', '?RLA $1,X',
        'SEC', 'AND $2,Y', '?NOP', '?RLA $2,Y', '?NOP $2,X', 'AND $2,X', 'ROL $2,X', '?RLA $2,X',


        'RTI', 'EOR ($1,X)', '?CIM', '?LSE ($1,X)', '?NOP $1', 'EOR $1', 'LSR $1', '?LSE $1',
        'PHA', 'EOR #$1', 'LSR @', '?ALR #$1', 'JMP $2', 'EOR $2', 'LSR $2', '?LSE $2',

        'BVC $0', 'EOR ($1),Y', '?CIM', '?LSE ($1),Y', '?NOP $1,X', 'EOR $1,X', 'LSR $1,X', '?LSE $1,X',
        'CLI', 'EOR $2,Y', '?NOP', '?LSE $2,Y', '?NOP $2,X', 'EOR $2,X', 'LSR $2,X', '?LSE $2,X',

        'RTS', 'ADC ($1,X)', '?CIM', '?RRA ($1,X)', '?NOP $1', 'ADC $1', 'ROR $1', '?RRA $1',
        'PLA', 'ADC #$1', 'ROR @', '?ARR #$1', 'JMP ($2)', 'ADC $2', 'ROR $2', '?RRA $2',

        'BVS $0', 'ADC ($1),Y', '?CIM', '?RRA ($1),Y', '?NOP $1,X', 'ADC $1,X', 'ROR $1,X', '?RRA $1,X',
        'SEI', 'ADC $2,Y', '?NOP', '?RRA $2,Y', '?NOP $2,X', 'ADC $2,X', 'ROR $2,X', '?RRA $2,X',


        '?NOP #$1', 'STA ($1,X)', '?NOP #$1', '?SAX ($1,X)', 'STY $1', 'STA $1', 'STX $1', '?SAX $1',
        'DEY', '?NOP #$1', 'TXA', '?ANE #$1', 'STY $2', 'STA $2', 'STX $2', '?SAX $2',

        'BCC $0', 'STA ($1),Y', '?CIM', '?SHA ($1),Y', 'STY $1,X', 'STA $1,X', 'STX $1,Y', '?SAX $1,Y',
        'TYA', 'STA $2,Y', 'TXS', '?SHS $2,Y', '?SHY $2,X', 'STA $2,X', '?SHX $2,Y', '?SHA $2,Y',

        'LDY #$1', 'LDA ($1,X)', 'LDX #$1', '?LAX ($1,X)', 'LDY $1', 'LDA $1', 'LDX $1', '?LAX $1',
        'TAY', 'LDA #$1', 'TAX', '?ANX #$1', 'LDY $2', 'LDA $2', 'LDX $2', '?LAX $2',

        'BCS $0', 'LDA ($1),Y', '?CIM', '?LAX ($1),Y', 'LDY $1,X', 'LDA $1,X', 'LDX $1,Y', '?LAX $1,X',
        'CLV', 'LDA $2,Y', 'TSX', '?LAS $2,Y', 'LDY $2,X', 'LDA $2,X', 'LDX $2,Y', '?LAX $2,Y',


        'CPY #$1', 'CMP ($1,X)', '?NOP #$1', '?DCM ($1,X)', 'CPY $1', 'CMP $1', 'DEC $1', '?DCM $1',
        'INY', 'CMP #$1', 'DEX', '?SBX #$1', 'CPY $2', 'CMP $2', 'DEC $2', '?DCM $2',

        'BNE $0', 'CMP ($1),Y', '?CIM      [ESCRTS]', '?DCM ($1),Y', '?NOP $1,X', 'CMP $1,X', 'DEC $1,X', '?DCM $1,X',
        'CLD', 'CMP $2,Y', '?NOP', '?DCM $2,Y', '?NOP $2,X', 'CMP $2,X', 'DEC $2,X', '?DCM $2,X',


        'CPX #$1', 'SBC ($1,X)', '?NOP #$1', '?INS ($1,X)', 'CPX $1', 'SBC $1', 'INC $1', '?INS $1',
        'INX', 'SBC #$1', 'NOP', 'SBC #$1', 'CPX $2', 'SBC $2', 'INC $2', '?INS $2',

        'BEQ $0', 'SBC ($1),Y', '?CIM      [ESC]', '?INS ($1),Y', '?NOP $1,X', 'SBC $1,X', 'INC $1,X', '?INS $1,X',
        'SED', 'SBC $2,Y', '?NOP', '?INS $2,Y', '?NOP $2,X', 'SBC $2,X', 'INC $2,X', '?INS $2,X'
        );

  $tmp=array();
  $indis=array(); //pole kodu instrukci obsahujicich parametr '$2' ktere existuji i v textove identicke verzi s '$1'
  foreach($instr6502 as $key=>$val)
  {
   $cha=str_replace('$2','$1',$val);
   if (isset($tmp[$cha]))
   {
    if (strstr($instr6502[$key],'$2')!='') $indis[$key]=1;
    if (strstr($instr6502[$tmp[$cha]],'$2')!='') $indis[$tmp[$cha]]=1;
   }
   $tmp[$cha]=$key;
  }
  unset($tmp);
  ksort($indis);

  function GetLabel($num)
  {
   global $part;
   if ($num<256)
    return sprintf("ZP%s_%02X",$part,$num);
   else
    return sprintf("L%s_%04X",$part,$num);
  }

  $tp['$']=array('',',','');
  $tp['0']=array('',',','');
  $tp['c']=array('c"','','"');
  $tp['c*']=array('c"','','"*');
  $tp['d']=array('d"','','"');
  $tp['d*']=array('d"','','"*');

  function GetToken($type,$v)
  {
   switch ($type)
   {
    case '$':
      $r[0]='$';
      $r[1]=sprintf('$%02X',$v);
      break;
    case '0':
      $r[0]='0';
      $r[1]=(string)$v;
      break;
    case 'c': //ASCII
       if ($v>=32 && $v<127)
       {
        $r[0]='c';
        $r[1]=chr($v);
       }
       else
       if ($v>=128+32 && $v<128+127)
       {
        $r[0]='c*';
        $r[1]=chr($v&0x7f);
       }
       else
       {
        $r[0]='$';
        $r[1]=sprintf('$%02X',$v);
       }
       break;
    case 'd': //VIDEO
       $z=($v & 0x80);
       $u=($v & 0x7f);
       if ($u<64)
       {
        $u+=32;
       }
       else
       if ($u<96)
       {
        $u-=64;
       }
       $u|=$z;
       if ($u>=32 && $u<127)
       {
        $r[0]='d';
        $r[1]=chr($u);
       }
       else
       if ($u>=128+32 && $u<128+127)
       {
        $r[0]='d*';
        $r[1]=chr($u&0x7f);
       }
       else
       {
        $r[0]='$';
        $r[1]=sprintf('$%02X',$v);
       }
       break;
   }
   if ($r[1]=='"') $r[1]='""';
   return $r;
  }



  function Zpracuj($adr)
  {
   //printf("Zpracuj %04X\n",$adr); flush();
   global $mem;
   global $instr6502,$indis;
   global $try_rts,$try_jmp,$try_rti;
   if (!isset($mem[$adr][0])) return;
   $mem[$adr]['L']=GetLabel($adr);

   while(1)
   {
    //printf("Zpracovavam: %04X\n",$adr);
    if (!isset($mem[$adr][0])) return;
    //if ($mem[$adr]['I']) return;
    if ($mem[$adr]['T']) return;
    $c1=$mem[$adr][0];
    $c2=$mem[$adr+1][0];
    $c3=$mem[$adr+2][0];
    $instr=$instr6502[$c1];
    // printf("%04X %s\n",$adr,$instr); flush();
    if ($instr[0]=='?') return; //undocumented instruction
    $i=strpos($instr,'$');
    $leni=1;
    if ($i)
    {
     $a=$instr[$i+1];
     if ($a=='1')
     {
      if ($instr[4]!='#')
      {
       $mem[$c2]['L']=GetLabel($c2);
       $instr=str_replace('$1',GetLabel($c2),$instr);
      }
      else
       $instr=str_replace('$1',sprintf('$%02X',$c2),$instr);
      if (isset($mem[$adr+1]['T'])) { $mem[$adr]['X']=$instr; return; } //kolize dvou instrukci (kdyz se skace na parametr instrukce)
      $mem[$adr+1]['T']='1';
      $leni=2;
     }
     else
     if ($a=='2')
     {
      $dval=$c2+$c3*256;
      $instr=str_replace('$2',(($dval<256 && $indis[$c1])?'a:':'').GetLabel($dval),$instr);
      $mem[$dval]['L']=GetLabel($dval);
      if (isset($mem[$adr+1]['T']) || isset($mem[$adr+2]['T'])) { $mem[$adr]['X']=$instr; return; } //kolize dvou instrukci (kdyz se skace na parametr instrukce)
      $mem[$adr+1]['T']='1';
      $mem[$adr+2]['T']='2';
      $leni=3;
     }
     else
     if ($a=='0')
     {
      if ($c2<128)
       $dadr=$adr+$c2+2;
      else
       $dadr=$adr-256+$c2+2;
      $instr=str_replace('$0',GetLabel($dadr),$instr);
      $leni=2;
      $mem[$dadr]['L']=GetLabel($dadr);
      if (isset($mem[$adr+1]['T'])) { $mem[$adr]['X']=$instr; return; }  //kolize dvou instrukci (kdyz se skace na parametr instrukce)
      $mem[$adr]['I']=$instr;
      $mem[$adr]['T']='I';
      $mem[$adr]['N']=$leni;
      $mem[$adr+1]['T']='1';
      Zpracuj($dadr);
     }
    }
    $mem[$adr]['I']=$instr;
    $mem[$adr]['T']='I';
    $mem[$adr]['N']=$leni;
    $adr+=$leni;
    $si=substr($instr,0,3);
    switch($si)
    {
    case 'RTS':
          if ($try_rts) Zpracuj($adr); //Zkusi za RTS
    case 'CIM':
    case 'BRK':
          return;
    case 'RTI':
          if ($try_rti) Zpracuj($adr); //Zkusi za RTI
          return;
    case 'JMP':
          if ($try_jmp) Zpracuj($adr); //Zkusi za JMP
          if ($instr[4]=='(')
           $adr=$mem[$c2][0]+$mem[$c3][0]*256; //JMP (....)
          else
           $adr=$c2+$c3*256;
          break;
    case 'JSR':
          Zpracuj($c2+$c3*256);
          break;
    }
   }
  }


 function MemOut()
 {
  global $mem;
  global $tp;
  global $datalines;

  echo "\n;\n;--------------------------------\n;";

  ksort($mem);
  $key=$lastkey=$keyset='';
  for(reset($mem); list($key,$val)=each($mem);)
  {
   //if ($key!=$lastkey+1 && isset($val[0])) printf("\n;\n\t\torg $%04X\n;",$key);
   if (!isset($mem[$key-1][0]) && isset($val[0])) printf("\n;\n\t\torg $%04X\n;",$key);
   $lab=$val['L'];
   $line="";
   $typ=$val['T'];
   $num=$val[0];
   $len=$val['N'];
   $xno=$val['X']; //specialni poznamka (u kolizi dvou instrukci)
   if ($typ=='I')
   {
    $ins=$val['I'];
    $pt=5-((integer)(strlen($ins)+1)/4);
    $line.=$ins;
    $line.=str_repeat("\t",$pt);
    $line.=sprintf(";%04X %02X",$key,$num);
    if ($len>1) $line.=sprintf(" %02X",$mem[$key+1][0]);
    if ($len>2) $line.=sprintf(" %02X",$mem[$key+2][0]);
   }
   else
   if ($typ=='1' || $typ=='2')
   {
    $lab=$mem[$key]['L'];
    if ($lab)
    {
     $lai=$mem[$key-((integer)$typ)]['N'];   //velikost predchozi instrukce
     $line=sprintf("equ *-%u\t\t\t;!",$lai-((integer)$typ));
    }
   }
   else
   {
    if (isset($val[0]))
    {
     for($i=1; $i<16; $i++) if ($mem[$key+$i]['T'] || !isset($mem[$key+$i][0]) || $mem[$key+$i]['L']) break;
     if ($i>1)
     {
      if ($datalines[1])
      {
       if ($datalines[0]!=1) $line.=";hex\t";
       $line.=sprintf('dta $%02X',$mem[$key][0]);
       for($j=1; $j<$i; $j++) $line.=sprintf(',$%02X',$mem[$key+$j][0]);
       //$line.=sprintf("\n;\t\tdta %u",$mem[$key][0]);
       //for($j=1; $j<$i; $j++) $line.=sprintf(',%u',$mem[$key+$j][0]);
      }

      if ($datalines[2])
      {
       if ($datalines[1]) $line.="\n";
       if ($datalines[0]!=2) $line.=";asc";
       if ($datalines[1]) $line.="\t";
       $line.="dta ";
       $af='';
       for($j=0; $j<$i; $j++)
       {
        $z=GetToken('c',$mem[$key+$j][0]);
        if ($z[0]==$af)
         $line.=(($j)?$tp[$af][1]:'').$z[1];
        else
        {
         $nf=$z[0];
         $line.=$tp[$af][2].(($j)?',':'').$tp[$nf][0].$z[1];
         $af=$nf;
        }
       }
       $line.=$tp[$af][2];
      }

      if ($datalines[3])
      {
       if ($datalines[1] || $datalines[2]) $line.="\n";
       if ($datalines[0]!=3) $line.=";vid";
       if ($datalines[1] || $datalines[2]) $line.="\t";
       $line.="dta ";
       $af='';
       for($j=0; $j<$i; $j++)
       {
        $z=GetToken('d',$mem[$key+$j][0]);
        if ($z[0]==$af)
         $line.=(($j)?$tp[$af][1]:'').$z[1];
        else
        {
         $nf=$z[0];
         $line.=$tp[$af][2].(($j)?',':'').$tp[$nf][0].$z[1];
         $af=$nf;
        }
       }
       $line.=$tp[$af][2];
      }

      for($j=0; $j<$i-1; $j++) list($keyset,$v)=each($mem); //posun aby je znovu nevypisoval na dalsich radcich
     }
     else
     {
      $z=$val[0];
      $r=GetToken('c',$z);
      if ($r[0][0]=='c') $z1=$r[1]; else $z1=' ';
      $r=GetToken('d',$z);
      if ($r[0][0]=='d') $z2=$r[1]; else $z2=' ';
      $line.=sprintf("dta \$%02X\t\t\t;%04X %02X %s %s",$z,$key,$z,$z1,$z2);
     }
    }
   }
   //printf("%04X: %-5s %-16s\n",$key,$lab,$ins);
   if ($lab || trim($line)) echo "\n";
   if ($lab) echo $lab;
   if (trim($line))
   {
    if (!$lab) echo "\t";
    echo "\t".strtolower(substr($line,0,3)).substr($line,3);
   }
   else
   {
    if ($lab)
    {
     if ($key<256)
      printf("\tequ \$%02X",$key);
     else
      printf("\tequ \$%04X",$key);
    }
   }
   if ($xno) echo " ; !!! $xno"; //specialni poznamka
   if ($keyset) { $lastkey=$keyset; $keyset=''; }
   else
    $lastkey=$key; //aktualni key
   //echo "Key=$key , key(\$mem)=".key($mem)."\n";
  }
 }


  $mem=array();
  $runadr=$iniadr=0;
  $part='';
  for($i=0; $i<$fsize;)
  {
   $from=ord($file[$i])+ord($file[$i+1])*256; $i+=2;
   if ($from==0xffff) continue;
   $to=ord($file[$i])+ord($file[$i+1])*256; $i+=2;
   $len=$to-$from+1;
   if (!$runadr) $runadr=$from;
   printf("\n; Block \$%04X-\$%04X (\$%04X)",$from,$to,$len);
   if ($to<$from)
   { echo "\n; Error: Bad block definition."; exit(); }
   if ($i+$len>$fsize)
   { echo "\n; Error: Bad block size or file corrupted."; exit(); }

   for($j=$from; $j<=$to; $j++) { $mem[$j][0]=ord($file[$i]); $i++; }

   $r=$mem[0x2e0][0]+$mem[0x2e1][0]*256;
   if ($r) $runadr=$r;

   $iniadr=$mem[0x2e2][0]+$mem[0x2e3][0]*256;
   if ($iniadr)
   {
    $u1=$mem[0x2e2];
    $u2=$mem[0x2e3];
    unset($mem[0x2e2]);   //protoze init blok musi byt az za tim datovym blokem
    unset($mem[0x2e3]);
    $mem[$iniadr]['L']=GetLabel($iniadr);
    printf("\n;\n; INITADR=%04X\n;",$iniadr);
    Zpracuj($iniadr);
    MemOut();
    unset($mem);
    $mem[0x2e2]=$u1;     //az tady ho znovu zalozi
    $mem[0x2e3]=$u2;
    MemOut();
    unset($mem);
    echo "\n;\n;--------------------------------\n;";
    if ($part=='') $part=2; else $part++;
    $iniadr=0;
   }
  }

  $mem[$runadr]['L']=GetLabel($runadr);
  printf("\n;\n; RUNADR=\$%04X\n;",$runadr);
  Zpracuj($runadr);

  $i=1;
  for(reset($afterrunadrs); list($key,$val)=each($afterrunadrs);)
  {
   if ($i==1) printf("\n;");
   printf("\n; EXTRARUNADR=\$%04X",$val);
   Zpracuj($val);
   $i++;
  }

  MemOut();
  unset($mem);

  echo "\n;\n;--------------------------------\n;";

?>