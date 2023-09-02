# PARTY-SERVER-INSTALL

The following HOWTO shows how to install a complete FujiNet server for LAN party use.

The following components are included:

* TNFS server with High Score Enabled Games
* Web Server, with High Score boards

## Installing TNFS server with High Score Enabled Games

### Step 1: Install Ubuntu Server 22.04

Install Ubuntu Server 22.04 with default settings, for your system. Follow the [instructions](https://ubuntu.com/tutorials/install-ubuntu-server#1-overview).

Once this is done, become root:

```sh
sudo -i
```

When prompted, enter the user password that you specified at install.

You should now be in root's home directory (/root)
### Step 2: Install git, and the required build tools

```sh
apt -y install build-essential git 
```

### Step 3: Create the tnfs user

''(the tnfs group will automatically be created)''

```sh
useradd tnfs
```

### Step 4: Use git to retrieve the TNFS server

```sh
git clone https://github.com/FujiNetWIFI/spectranet.git
```

### Step 5: Compile the TNFS server

```sh
cd spectranet/tnfs/tnfsd

make OS=LINUX
```

### Step 6: Install the TNFS server to /usr/local/bin

```sh
install -o tnfs -g tnfs bin/tnfsd /usr/local/sbin/tnfsd
```

### Step 7: Make the /tnfs directory

This will be used to store the files served by TNFS.

```sh
mkdir /tnfs
chown tnfs:tnfs /tnfs
```

### Step 8: Install and start the TNFS systemd service

```sh
install tnfsd.service /etc/systemd/system

systemctl enable tnfsd

systemctl start tnfsd
```

You can check the status of the service with:

```sh
systemctl status tnfsd
```

At this point, the TNFS service is now running.

### Step 9: Fetch the high score enabled repository.

Now we need to fetch the High Score Enabled repository, with all of its games, and tools, using 'git'

```sh
cd ~
git clone https://github.com/FujiNetWIFI/fujinet-high-scores.git
```

### Step 10: Copy High Score Enabled Games to TNFS

```sh
cd fujinet-high-scores/atari-blank-games/
chmod ugo+rw *
chown tnfs:tnfs *
cp * /tnfs
```

### Step 11: Allow connections to TNFS

Ubuntu Server ships with the 'ufw' firewall enabled, so TNFS connections must be allowed. TNFS uses UDP port 16384.

```sh
ufw allow 16384/udp
```

### Step 12: Test TNFS server

With the nearest #FujiNet equipped Atari, boot into CONFIG, set the host slot to the network address or hostname of the new server, and try to load a game.

If this works, the TNFS server is ready. Now to set up the web server.

## Setting up the Web Server

### Step 1: Install nginx-full

Start, with installing the web server.

```sh
apt -y install nginx-full
```

### Step 2: Allow HTTP traffic

Use 'ufw' to allow HTTP traffic.

```sh
ufw allow http
```

### Step 3: Replace the index.html

```sh
cd fujinet-high-scores/atari
cp index.html /var/www/html/index.nginx-debian.html
```

### Step 4: Build and install the score scrapers

Each score scraper needs to be built and installed into /usr/local/sbin.

#### B.C.'s Quest for Tires

```sh
cd bcsquestfortires
make
install bcsquestfortires /usr/local/sbin
install bcsquestfortires.css /var/www/html
install bcsquestfortires.png /var/www/html
install bcsquestfortires.service /etc/systemd/system
systemctl enable bcsquestfortires
systemctl start bcsquestfortires
```

#### Crisis Mountain

```sh
cd crisismountain
make
install crisismountain /usr/local/sbin
install crisismountain.css /var/www/html
install crisismountain.png /var/www/html
install crisismountain.service /etc/systemd/system
systemctl enable crisismountain
systemctl start crisismountain
```

#### Flak

```sh
cd flak
make
install flak /usr/local/sbin
install flak.css /var/www/html
install flak.png /var/www/html
install flak.service /etc/systemd/system
systemctl enable flak
systemctl start flak
```

#### Frogger

```sh
cd frogger
make
install frogger /usr/local/sbin
install frogger.css /var/www/html
install frogger.png /var/www/html
install frogger.service /etc/systemd/system
systemctl enable frogger
systemctl start frogger
```

#### GORF

```sh
cd gorf
make
install gorf /usr/local/sbin
install gorf.css /var/www/html
install gorf.png /var/www/html
install gorf.service /etc/systemd/system
systemctl enable gorf
systemctl start gorf
```

#### Jawbreaker II

```sh
cd jawbreakerii
make
install jawbreakerii /usr/local/sbin
install jawbreakerii.css /var/www/html
install jawbreakerii.png /var/www/html
install jawbreakerii.service /etc/systemd/system
systemctl enable jawbreakerii
systemctl start jawbreakerii
```

#### Jumpman

```sh
cd jumpman
make
install jumpman /usr/local/sbin
install jumpman.css /var/www/html
install jumpman.png /var/www/html
install jumpman.service /etc/systemd/system
systemctl enable jumpman
systemctl start jumpman
```

#### LodeRunner

```sh
cd loderunner
make
install loderunner /usr/local/sbin
install loderunner.css /var/www/html
install loderunner.png /var/www/html
install loderunner.service /etc/systemd/system
systemctl enable loderunner
systemctl start loderunner
```

#### PAC-MAN

```sh
cd pacman
make
install pacman /usr/local/sbin
install pacman.css /var/www/html
install pacman.png /var/www/html
install pacman.service /etc/systemd/system
systemctl enable pacman
systemctl start pacman
```

#### Rear Guard

```sh
cd rearguard
make
install rearguard /usr/local/sbin
install rearguard.css /var/www/html
install rearguard.png /var/www/html
install rearguard.service /etc/systemd/system
systemctl enable rearguard
systemctl start rearguard
```

#### Serpentine

```sh
cd serpentine
make
install serpentine /usr/local/sbin
install serpentine.css /var/www/html
install serpentine.png /var/www/html
install serpentine.service /etc/systemd/system
systemctl enable serpentine
systemctl start serpentine
```

#### Smol Snek

```sh
cd smol-snek
make
install smolsnek /usr/local/sbin
install smolsnek.css /var/www/html
install smolsnek.png /var/www/html
install smolsnek.service /etc/systemd/system
systemctl enable smolsnek
systemctl start smolsnek
```

#### Snokie

```sh
cd snokie
make
install snokie /usr/local/sbin
install snokie.css /var/www/html
install snokie.png /var/www/html
install snokie.service /etc/systemd/system
systemctl enable snokie
systemctl start snokie
```

#### Spelunker

```sh
cd spelunker
make
install spelunker /usr/local/sbin
install spelunker.css /var/www/html
install spelunker.png /var/www/html
install spelunker.service /etc/systemd/system
systemctl enable spelunker
systemctl start spelunker
```

#### Track Attack

```sh
cd trackattack
make
install trackattack /usr/local/sbin
install trackattack.css /var/www/html
install trackattack.png /var/www/html
install trackattack.service /etc/systemd/system
systemctl enable trackattack
systemctl start trackattack
```

#### Tutti Frutti

```sh
cd tuttifrutti
make
install tuttifrutti /usr/local/sbin
install tuttifrutti.css /var/www/html
install tuttifrutti.png /var/www/html
install tuttifrutti.service /etc/systemd/system
systemctl enable tuttifrutti
systemctl start tuttifrutti
```

#### Wizard of Wor

```sh
cd wizardofwor
make
install wizardofwor /usr/local/sbin
install wizardofwor.css /var/www/html
install wizardofwor.png /var/www/html
install wizardofwor.service /etc/systemd/system
systemctl enable wizardofwor
systemctl start wizardofwor
```

### Step 5: Test Web Server and scoreboards

At this point, you should be able to point a PC to the now set up web server, and see the scoreboard, e.g.

```
HTTP://party-server/
```

