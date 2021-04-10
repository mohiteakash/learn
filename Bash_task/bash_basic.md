2. create directory "developing" and its parent directory using single command.
```
Ans:- akash@akash-Virtual-Machine:~$  mkdir -p Scripts/devloping
    akash@akash-Virtual-Machine:~/Scripts/developing$ pwd
/home/akash/Scripts/developing
```
3. create "papers" and "sciData" inside its parent directory both using single command.
```
Ans:-akash@akash-Virtual-Machine:~$ mkdir -p research ./research/papers ./research/sciData
akash@akash-Virtual-Machine:~$ ls
a            Documents  html      project     research     simple.txt  Templates
bash_script  Downloads  Music     Public      Scripts      smb.conf    test.txt
Desktop      home       Pictures  random.txt  sharefolder  snap        Videos
akash@akash-Virtual-Machine:~$ cd research/
akash@akash-Virtual-Machine:~/research$ ls
papers  sciData
```

4. cerate a empty file "dev.txt" inside developing directory.
```
Ans:-akash@akash-Virtual-Machine:~$ cd Scripts/developing/
    akash@akash-Virtual-Machine:~/Scripts/developing$ touch dev.txt
    akash@akash-Virtual-Machine:~/Scripts/developing$ ls
    dev.txt
```
5. use echo command to add some text to the "dev.txt" file. Use a command to show   the contents of "dev.txt" file.
```
Ans:-akash@akash-Virtual-Machine:~/Scripts/developing$ echo "hello world" > dev.txt
    akash@akash-Virtual-Machine:~/Scripts/developing$ cat dev.txt
    hello world
```
6. do the above instruction using command in single line. HINT: use pipe
```
Ans:-akash@akash-Virtual-Machine:~$ mkdir -p scripts/devloping | mkdir -p research ./research/papers ./research/sciData | touch dev.txt 
```

7. find all files starting with "bin" and ends with "xe".
```
Ans:-akash@akash-Virtual-Machine:~$ 
 find . -type f -name "bin*" | find . -type f -name "*xe"
./.config/Code/CachedData/c185983a683d14c396952dd432459097bc7f757f/bindings-98c5e62d4d2ce1b256cc718e70af6232.code
./.config/Code/CachedData/c185983a683d14c396952dd432459097bc7f757f/bindings-7892486a01de832d86c094006e8c9daa.code
./.config/Code/CachedData/c185983a683d14c396952dd432459097bc7f757f/bindings-5f149bbc464abc43a37acedb30314297.code
```

8. list root and describe the usage/significance of each folder.
```
Ans:-akash@akash-Virtual-Machine:~$ ls /
bin   dev  home  lib32  libx32      media  opt   root  sbin  srv  tmp  var
boot  etc  lib   lib64  lost+found  mnt    proc  run   snap  sys  usr



the root directory is /, not /root /root is the home directory of the root user
```

9. list /etc by file size.
```
Ans:-akash@akash-Virtual-Machine:~$ ls -lS /etc
total 1140
-rw-r--r--  1 root root   70174 Apr  8 14:00 ld.so.cache
-rw-r--r--  1 root root   42332 Apr  8 14:26 mailcap
-rw-r--r--  1 root root   26916 Mar  4  2020 brltty.conf
-rw-r--r--  1 root root   24546 Oct 19  2019 mime.types
-rw-r--r--  1 root root   14867 Feb  1  2019 ltrace.conf
-rw-r--r--  1 root root   14464 Feb 17  2020 services
-rw-r--r--  1 root root   10593 Nov  7  2019 sensors3.conf
-rw-r--r--  1 root root   10550 Feb  7  2020 login.defs
-rw-r--r--  1 root root   10037 Feb  7  2020 nanorc
-rw-r--r--  1 root root    9442 Apr 23  2020 locale.gen
-rw-r--r--  1 root root    7649 Apr 23  2020 pnm2ppa.conf
-rw-r--r--  1 root root    6569 Mar 20 11:51 ca-certificates.conf
-rw-r--r--  1 root root    5713 Apr 23  2020 ca-certificates.conf.dpkg-old
-rw-r--r--  1 root root    5215 Feb 25  2020 manpath.config
-rw-r--r--  1 root root    5211 Mar 11  2020 rygel.conf
-rw-r--r--  1 root root    5060 Aug 21  2019 hdparm.conf
-rw-r--r--  1 root root    4942 Jul 25  2019 wgetrc
-rw-r--r--  1 root root    4371 Mar  3  2020 gamemode.ini
drwxr-xr-x  3 root root    4096 Apr 23  2020 acpi
drwxr-xr-x  3 root root    4096 Apr 23  2020 alsa
drwxr-xr-x  2 root root    4096 Mar 19 11:35 alternatives
drwxr-xr-x  5 root root    4096 Apr 23  2020 apm
drwxr-xr-x  3 root root    4096 Apr 23  2020 apparmor
drwxr-xr-x  9 root root    4096 Mar 31 13:15 apparmor.d
drwxr-xr-x  4 root root    4096 Mar 22 10:05 apport
drwxr-xr-x  7 root root    4096 Apr  8 13:55 apt
drwxr-xr-x  3 root root    4096 Apr 23  2020 avahi
drwxr-xr-x  2 root root    4096 Apr  8 13:58 bash_completion.d
drwxr-sr-x  2 root bind    4096 Mar 20 12:56 bind
drwxr-xr-x  2 root root    4096 Apr 22  2020 binfmt.d
drwxr-xr-x  2 root root    4096 Apr 23  2020 bluetooth
drwxr-xr-x  7 root root    4096 Apr 23  2020 brltty
drwxr-xr-x  3 root root    4096 Apr 23  2020 ca-certificates
drwxr-xr-x  2 root root    4096 Apr 23  2020 calendar
drwxr-s---  2 root dip     4096 Mar 20 12:06 chatscripts
drwxr-xr-x  2 root root    4096 Mar 17 13:29 console-setup
drwxr-xr-x  2 root root    4096 Apr 23  2020 cracklib
drwxr-xr-x  2 root root    4096 Apr 23  2020 cron.d
drwxr-xr-x  2 root root    4096 Mar 22 10:05 cron.daily
drwxr-xr-x  2 root root    4096 Apr 23  2020 cron.hourly
drwxr-xr-x  2 root root    4096 Apr 23  2020 cron.monthly
drwxr-xr-x  2 root root    4096 Apr 23  2020 cron.weekly
drwxr-xr-x  2 root root    4096 Apr 23  2020 cryptsetup-initramfs
drwxr-xr-x  5 root lp      4096 Apr  8 13:23 cups
drwxr-xr-x  2 root root    4096 Apr 23  2020 cupshelpers
drwxr-xr-x  4 root root    4096 Apr 23  2020 dbus-1
drwxr-xr-x  4 root root    4096 Apr 23  2020 dconf
drwxr-xr-x  3 root root    4096 Mar 30 17:42 default
drwxr-xr-x  2 root root    4096 Apr 23  2020 depmod.d
drwxr-xr-x  5 root root    4096 Mar 19 16:57 dhcp
drwxr-xr-x  2 root root    4096 Apr 23  2020 dictionaries-common
drwxr-xr-x  2 root root    4096 Mar 30 17:42 dnsmasq.d
drwxr-xr-x  2 root root    4096 Mar 30 17:47 docker
drwxr-xr-x  4 root root    4096 Apr 23  2020 dpkg
drwxr-xr-x  3 root root    4096 Apr 23  2020 emacs
drwxr-xr-x  2 root root    4096 Apr 23  2020 environment.d
drwxr-xr-x  3 root root    4096 Mar 31 13:15 firefox
drwxr-xr-x  4 root root    4096 Apr 23  2020 fonts
drwxr-xr-x  3 root root    4096 Mar 20 12:01 fwupd
drwxr-xr-x  5 root root    4096 Apr  8 14:00 gconf
drwxr-xr-x  2 root root    4096 Apr 23  2020 gdb
drwxr-xr-x  8 root root    4096 Mar 20 11:51 gdm3
drwxr-xr-x  2 root root    4096 Apr 23  2020 geoclue
drwxr-xr-x  4 root root    4096 Apr 23  2020 ghostscript
drwxr-xr-x  3 root root    4096 Apr 23  2020 glvnd
drwxr-xr-x  2 root root    4096 Apr 23  2020 gnome
drwxr-xr-x  2 root root    4096 Apr 23  2020 groff
drwxr-xr-x  2 root root    4096 Mar 20 12:11 grub.d
drwxr-xr-x  3 root root    4096 Apr 23  2020 gss
drwxr-xr-x  2 root root    4096 Apr 23  2020 gtk-2.0
drwxr-xr-x  2 root root    4096 Apr 23  2020 gtk-3.0
drwxr-xr-x  2 root root    4096 Apr 23  2020 hp
drwxr-xr-x  3 root root    4096 Apr 23  2020 ifplugd
drwxr-xr-x  2 root root    4096 Mar 30 17:42 init
drwxr-xr-x  2 root root    4096 Mar 30 17:42 init.d
drwxr-xr-x  5 root root    4096 Apr 23  2020 initramfs-tools
drwxr-xr-x  2 root root    4096 Mar 20 12:20 insserv.conf.d
drwxr-xr-x  4 root root    4096 Apr 23  2020 iproute2
drwxr-xr-x  6 root root    4096 Apr 23  2020 kernel
drwxr-xr-x  2 root root    4096 Mar 22 09:51 ldap
drwxr-xr-x  2 root root    4096 Mar 19 11:35 ld.so.conf.d
drwxr-xr-x  3 root root    4096 Apr 23  2020 libblockdev
drwxr-xr-x  2 root root    4096 Mar 19 11:35 libibverbs.d
drwxr-xr-x  2 root root    4096 Apr 23  2020 libnl-3
drwxr-xr-x  2 root root    4096 Jun 26  2019 libpaper.d
drwxr-xr-x  2 root root    4096 Apr 23  2020 libreoffice
drwxr-xr-x  4 root root    4096 Apr 23  2020 logcheck
drwxr-xr-x  2 root root    4096 Mar 22 10:05 logrotate.d
drwxr-xr-x  3 root root    4096 Apr 23  2020 lvm
drwxr-xr-x  2 root root    4096 Mar 22 10:03 modprobe.d
drwxr-xr-x  2 root root    4096 Apr 23  2020 modules-load.d
drwxr-xr-x  3 root root    4096 Apr 23  2020 mysql
drwxr-xr-x  2 root root    4096 Apr 23  2020 netplan
drwxr-xr-x  6 root root    4096 Mar 30 17:42 network
drwxr-xr-x  8 root root    4096 Apr 23  2020 networkd-dispatcher
drwxr-xr-x  7 root root    4096 Apr 23  2020 NetworkManager
drwxr-xr-x  2 root root    4096 Apr 23  2020 newt
drwxr-xr-x  4 root root    4096 Apr 23  2020 openvpn
drwxr-xr-x  2 root root    4096 Apr 23  2020 opt
drwxr-xr-x  2 root root    4096 Mar 20 11:53 PackageKit
drwxr-xr-x  2 root root    4096 Mar 22 09:58 pam.d
drwxr-xr-x  2 root root    4096 Apr 23  2020 pcmcia
drwxr-xr-x  3 root root    4096 Apr 23  2020 perl
drwxr-xr-x  4 root root    4096 Apr 23  2020 pki
drwxr-xr-x  3 root root    4096 Apr 23  2020 pm
drwxr-xr-x  4 root root    4096 Apr 23  2020 polkit-1
drwxr-xr-x  7 root dip     4096 Mar 20 12:06 ppp
drwxr-xr-x  2 root root    4096 Mar 22 10:03 profile.d
drwxr-xr-x  3 root root    4096 Mar 20 11:53 pulse
drwxr-xr-x  2 root root    4096 Apr 23  2020 python3
drwxr-xr-x  2 root root    4096 Mar 20 11:49 python3.8
drwxr-xr-x  2 root root    4096 Mar 30 17:42 rc0.d
drwxr-xr-x  2 root root    4096 Mar 30 17:42 rc1.d
drwxr-xr-x  2 root root    4096 Mar 30 17:42 rc2.d
drwxr-xr-x  2 root root    4096 Mar 30 17:42 rc3.d
drwxr-xr-x  2 root root    4096 Mar 30 17:42 rc4.d
drwxr-xr-x  2 root root    4096 Mar 30 17:42 rc5.d
drwxr-xr-x  2 root root    4096 Mar 30 17:42 rc6.d
drwxr-xr-x  2 root root    4096 Mar 17 13:30 rcS.d
drwxr-xr-x  2 root root    4096 Apr 23  2020 rsyslog.d
drwxr-xr-x  3 root root    4096 Mar 19 13:32 samba
drwxr-xr-x  3 root root    4096 Mar 20 12:10 sane.d
drwxr-xr-x  4 root root    4096 Apr 23  2020 security
drwxr-xr-x  2 root root    4096 Apr 23  2020 selinux
drwxr-xr-x  2 root root    4096 Apr 23  2020 sensors.d
drwxr-xr-x  3 root root    4096 Apr 23  2020 sgml
drwxr-xr-x  2 root root    4096 Apr 23  2020 skel
drwxr-xr-x  2 root root    4096 Mar 20 11:53 snmp
drwxr-xr-x  4 root root    4096 Apr 23  2020 speech-dispatcher
drwxr-xr-x  3 root root    4096 Mar 20 12:06 ssh
drwxr-xr-x  4 root root    4096 Mar 31 13:16 ssl
drwxr-xr-x  2 root root    4096 Mar 22 09:58 sudoers.d
drwxr-xr-x  2 root root    4096 Apr 23  2020 sysctl.d
drwxr-xr-x  5 root root    4096 Apr 23  2020 systemd
drwxr-xr-x  2 root root    4096 Apr 23  2020 terminfo
drwxr-xr-x  2 root root    4096 Apr 23  2020 thermald
drwxr-xr-x  2 root root    4096 Mar 20 11:54 thunderbird
drwxr-xr-x  2 root root    4096 Apr 22  2020 tmpfiles.d
drwxr-xr-x  2 root root    4096 Apr 23  2020 ubuntu-advantage
drwxr-xr-x  4 root root    4096 Apr 23  2020 udev
drwxr-xr-x  2 root root    4096 Apr 23  2020 udisks2
drwxr-xr-x  3 root root    4096 Apr 23  2020 ufw
drwxr-xr-x  3 root root    4096 Apr 23  2020 update-manager
drwxr-xr-x  2 root root    4096 Mar 20 12:01 update-motd.d
drwxr-xr-x  2 root root    4096 Apr  2  2020 update-notifier
drwxr-xr-x  2 root root    4096 Apr 23  2020 UPower
drwxr-xr-x  2 root root    4096 Feb 25  2020 usb_modeswitch.d
drwxr-xr-x  2 root root    4096 Apr 23  2020 vim
drwxr-xr-x  5 root root    4096 Apr 23  2020 vulkan
drwxr-xr-x  2 root root    4096 Mar 20 12:14 wpa_supplicant
drwxr-xr-x 12 root root    4096 Apr 23  2020 X11
drwxr-xr-x  6 root root    4096 Apr 23  2020 xdg
drwxr-xr-x  2 root root    4096 Apr 23  2020 xml
drwxr-xr-x  3 root root    4096 Apr 23  2020 xrdp
-rw-r--r--  1 root root    3028 Apr 23  2020 adduser.conf
-rw-r--r--  1 root root    2996 Apr 15  2020 locale.alias
-rw-r--r--  1 root root    2969 Aug  3  2019 debconf.conf
-rw-r--r--  1 root root    2932 Apr  2  2013 protocols
-rw-r--r--  1 root root    2876 Mar 20 12:20 passwd
-rw-r--r--  1 root root    2876 Mar 20 12:20 passwd-
-rw-r--r--  1 root root    2584 Feb  1  2020 gai.conf
-rw-r--r--  1 root root    2351 Feb 14  2020 sysctl.conf
-rw-r--r--  1 root root    2319 Feb 25  2020 bash.bashrc
-rw-r--r--  1 root root    1816 Dec 27  2019 ethertypes
-rw-r--r--  1 root root    1748 Feb 25  2020 inputrc
-rw-r--r--  1 root root    1523 Feb 10  2020 usb_modeswitch.conf
-rw-r-----  1 root shadow  1514 Mar 20 12:20 shadow
-rw-r-----  1 root shadow  1514 Mar 20 12:20 shadow-
-rw-r--r--  1 root root    1382 Feb 11  2020 rsyslog.conf
-rw-r--r--  1 root root    1308 Dec  2  2017 kerneloops.conf
-rw-r--r--  1 root root    1260 Dec 14  2018 ucf.conf
-rw-r--r--  1 root root    1105 Mar 30 17:42 group
-rw-r--r--  1 root root    1091 Mar 20 12:20 group-
-rw-r--r--  1 root root    1042 Feb 14  2020 crontab
-rw-r-----  1 root shadow   916 Mar 30 17:42 gshadow
-rw-r-----  1 root shadow   905 Mar 20 12:20 gshadow-
-rw-r--r--  1 root root     887 Apr  1  2013 rpc
-rw-r--r--  1 root root     808 Feb 14  2020 mke2fs.conf
-rw-r--r--  1 root root     769 Jan 18  2020 appstream.conf
-r--r-----  1 root root     755 Feb  3  2020 sudoers
-rw-r--r--  1 root root     711 Apr 23  2020 hosts.deny
-rw-r--r--  1 root root     685 Feb 14  2020 e2scrub.conf
-rw-r--r--  1 root root     642 Sep 24  2019 xattr.conf
-rw-r--r--  1 root root     624 Mar 22  2020 mtools.conf
-rw-r--r--  1 root root     604 Sep 16  2018 deluser.conf
-rw-r--r--  1 root root     581 Dec  5  2019 profile
-rw-r--r--  1 root root     552 Dec 17  2019 pam.conf
-rw-r--r--  1 root root     542 Apr 23  2020 nsswitch.conf
-rw-r--r--  1 root root     533 Jan 21  2019 logrotate.conf
-rw-r--r--  1 root root     477 Oct  7  2019 zsh_command_not_found
-rw-r--r--  1 root root     449 Oct 19  2019 mailcap.order
-rw-r--r--  1 root root     433 Oct  2  2017 apg.conf
-rw-r--r--  1 root root     411 Apr 23  2020 hosts.allow
-rw-r--r--  1 root root     401 Jul 17  2019 anacrontab
-rw-r--r--  1 root root     367 Apr 15  2020 bindresvport.blacklist
-rw-r--r--  1 root root     280 Jun 20  2014 fuse.conf
-rw-r--r--  1 root root     267 Dec  5  2019 legal
-rw-r--r--  1 root root     236 Mar 17 13:29 hosts
-rw-r--r--  1 root root     195 Apr 23  2020 modules
-rw-r--r--  1 root root     191 Feb 18  2020 libaudit.conf
-rw-r--r--  1 root root     118 Apr 23  2020 fstab
-rw-r--r--  1 root root     116 Apr 23  2020 shells
-rw-r--r--  1 root root     111 Jan 17  2020 magic
-rw-r--r--  1 root root     111 Jan 17  2020 magic.mime
-rw-r--r--  1 root root     110 Apr 23  2020 kernel-img.conf
-rw-r--r--  1 root root     102 Apr 15  2020 lsb-release
-rw-r--r--  1 root root      96 Mar 17 13:29 environment
-rw-r--r--  1 root root      92 Dec  5  2019 host.conf
-rw-r--r--  1 root root      91 Dec  5  2019 networks
-rw-r--r--  1 root root      54 Apr 23  2020 crypttab
-rw-r--r--  1 root root      45 Jan 26  2020 bash_completion
lrwxrwxrwx  1 root root      39 Apr 23  2020 resolv.conf -> ../run/systemd/resolve/stub-resolv.conf
-rw-r--r--  1 root root      36 Mar 17 13:29 subgid-
-rw-r--r--  1 root root      36 Mar 17 13:29 subuid-
-rw-r--r--  1 root root      34 Apr 15  2020 ld.so.conf
-rw-r-----  1 root root      33 Apr 23  2020 brlapi.key
-r--r--r--  1 root root      33 Mar 17 13:24 machine-id
lrwxrwxrwx  1 root root      32 Mar 20 11:57 localtime -> /usr/share/zoneinfo/Asia/Kolkata
-rw-r--r--  1 root root      27 Jan 19  2018 libao.conf
-rw-r--r--  1 root root      24 Apr 15  2020 issue
lrwxrwxrwx  1 root root      23 Apr 23  2020 vtrgb -> /etc/alternatives/vtrgb
-rw-r--r--  1 root root      22 Mar 17 13:29 hostname
lrwxrwxrwx  1 root root      21 Apr 15  2020 os-release -> ../usr/lib/os-release
-rw-r--r--  1 root root      20 Feb 10  2020 fprintd.conf
lrwxrwxrwx  1 root root      19 Mar 17 13:29 mtab -> ../proc/self/mounts
-rw-r--r--  1 root root      19 Mar 17 13:30 subgid
-rw-r--r--  1 root root      19 Mar 17 13:30 subuid
lrwxrwxrwx  1 root root      18 Mar 20 11:44 printcap -> /run/cups/printcap
-rw-r--r--  1 root root      17 Apr 15  2020 issue.net
-rw-r--r--  1 root root      13 Dec  5  2019 debian_version
lrwxrwxrwx  1 root root      13 Dec 16 07:08 rmt -> /usr/sbin/rmt
-rw-r--r--  1 root root      13 Mar 20 11:57 timezone
,,,








10. list only files in /etc by modified date.
```
Ans:-
akash@akash-Virtual-Machine:~$ ls -lt /etc
total 1140
-rw-r--r--  1 root root   42332 Apr  8 14:26 mailcap
-rw-r--r--  1 root root   70174 Apr  8 14:00 ld.so.cache
drwxr-xr-x  5 root root    4096 Apr  8 14:00 gconf
drwxr-xr-x  2 root root    4096 Apr  8 13:58 bash_completion.d
drwxr-xr-x  7 root root    4096 Apr  8 13:55 apt
drwxr-xr-x  5 root lp      4096 Apr  8 13:23 cups
drwxr-xr-x  4 root root    4096 Mar 31 13:16 ssl
drwxr-xr-x  3 root root    4096 Mar 31 13:15 firefox
drwxr-xr-x  9 root root    4096 Mar 31 13:15 apparmor.d
drwxr-xr-x  2 root root    4096 Mar 30 17:47 docker
-rw-r-----  1 root shadow   916 Mar 30 17:42 gshadow
-rw-r--r--  1 root root    1105 Mar 30 17:42 group
drwxr-xr-x  2 root root    4096 Mar 30 17:42 rc0.d
drwxr-xr-x  2 root root    4096 Mar 30 17:42 rc1.d
drwxr-xr-x  2 root root    4096 Mar 30 17:42 rc2.d
drwxr-xr-x  2 root root    4096 Mar 30 17:42 rc3.d
drwxr-xr-x  2 root root    4096 Mar 30 17:42 rc4.d
drwxr-xr-x  2 root root    4096 Mar 30 17:42 rc5.d
drwxr-xr-x  2 root root    4096 Mar 30 17:42 rc6.d
drwxr-xr-x  6 root root    4096 Mar 30 17:42 network
drwxr-xr-x  2 root root    4096 Mar 30 17:42 init
drwxr-xr-x  2 root root    4096 Mar 30 17:42 init.d
drwxr-xr-x  2 root root    4096 Mar 30 17:42 dnsmasq.d
drwxr-xr-x  3 root root    4096 Mar 30 17:42 default
drwxr-xr-x  2 root root    4096 Mar 22 10:05 logrotate.d
drwxr-xr-x  2 root root    4096 Mar 22 10:05 cron.daily
drwxr-xr-x  4 root root    4096 Mar 22 10:05 apport
drwxr-xr-x  2 root root    4096 Mar 22 10:03 profile.d
drwxr-xr-x  2 root root    4096 Mar 22 10:03 modprobe.d
drwxr-xr-x  2 root root    4096 Mar 22 09:58 sudoers.d
drwxr-xr-x  2 root root    4096 Mar 22 09:58 pam.d
drwxr-xr-x  2 root root    4096 Mar 22 09:51 ldap
drwxr-sr-x  2 root bind    4096 Mar 20 12:56 bind
-rw-r-----  1 root shadow  1514 Mar 20 12:20 shadow
-rw-r--r--  1 root root    2876 Mar 20 12:20 passwd
drwxr-xr-x  2 root root    4096 Mar 20 12:20 insserv.conf.d
-rw-r--r--  1 root root    1091 Mar 20 12:20 group-
-rw-r-----  1 root shadow   905 Mar 20 12:20 gshadow-
-rw-r--r--  1 root root    2876 Mar 20 12:20 passwd-
-rw-r-----  1 root shadow  1514 Mar 20 12:20 shadow-
drwxr-xr-x  2 root root    4096 Mar 20 12:14 wpa_supplicant
drwxr-xr-x  2 root root    4096 Mar 20 12:11 grub.d
drwxr-xr-x  3 root root    4096 Mar 20 12:10 sane.d
drwxr-xr-x  3 root root    4096 Mar 20 12:06 ssh
drwxr-xr-x  7 root dip     4096 Mar 20 12:06 ppp
drwxr-s---  2 root dip     4096 Mar 20 12:06 chatscripts
drwxr-xr-x  2 root root    4096 Mar 20 12:01 update-motd.d
drwxr-xr-x  3 root root    4096 Mar 20 12:01 fwupd
lrwxrwxrwx  1 root root      32 Mar 20 11:57 localtime -> /usr/share/zoneinfo/Asia/Kolkata
-rw-r--r--  1 root root      13 Mar 20 11:57 timezone
drwxr-xr-x  2 root root    4096 Mar 20 11:54 thunderbird
drwxr-xr-x  3 root root    4096 Mar 20 11:53 pulse
drwxr-xr-x  2 root root    4096 Mar 20 11:53 snmp
drwxr-xr-x  2 root root    4096 Mar 20 11:53 PackageKit
drwxr-xr-x  8 root root    4096 Mar 20 11:51 gdm3
-rw-r--r--  1 root root    6569 Mar 20 11:51 ca-certificates.conf
drwxr-xr-x  2 root root    4096 Mar 20 11:49 python3.8
lrwxrwxrwx  1 root root      18 Mar 20 11:44 printcap -> /run/cups/printcap
drwxr-xr-x  5 root root    4096 Mar 19 16:57 dhcp
drwxr-xr-x  3 root root    4096 Mar 19 13:32 samba
drwxr-xr-x  2 root root    4096 Mar 19 11:35 alternatives
drwxr-xr-x  2 root root    4096 Mar 19 11:35 libibverbs.d
drwxr-xr-x  2 root root    4096 Mar 19 11:35 ld.so.conf.d
-rw-r--r--  1 root root      19 Mar 17 13:30 subgid
-rw-r--r--  1 root root      19 Mar 17 13:30 subuid
drwxr-xr-x  2 root root    4096 Mar 17 13:30 rcS.d
lrwxrwxrwx  1 root root      19 Mar 17 13:29 mtab -> ../proc/self/mounts
-rw-r--r--  1 root root      36 Mar 17 13:29 subgid-
-rw-r--r--  1 root root      36 Mar 17 13:29 subuid-
drwxr-xr-x  2 root root    4096 Mar 17 13:29 console-setup
-rw-r--r--  1 root root      96 Mar 17 13:29 environment
-rw-r--r--  1 root root      22 Mar 17 13:29 hostname
-rw-r--r--  1 root root     236 Mar 17 13:29 hosts
-r--r--r--  1 root root      33 Mar 17 13:24 machine-id
lrwxrwxrwx  1 root root      13 Dec 16 07:08 rmt -> /usr/sbin/rmt
drwxr-xr-x 12 root root    4096 Apr 23  2020 X11
drwxr-xr-x  3 root root    4096 Apr 23  2020 xrdp
-rw-r--r--  1 root root     118 Apr 23  2020 fstab
drwxr-xr-x  2 root root    4096 Apr 23  2020 modules-load.d
drwxr-xr-x  2 root root    4096 Apr 23  2020 netplan
drwxr-xr-x  2 root root    4096 Apr 23  2020 dictionaries-common
drwxr-xr-x  3 root root    4096 Apr 23  2020 lvm
drwxr-xr-x  2 root root    4096 Apr 23  2020 cryptsetup-initramfs
-rw-r--r--  1 root root      54 Apr 23  2020 crypttab
drwxr-xr-x  2 root root    4096 Apr 23  2020 xml
drwxr-xr-x  3 root root    4096 Apr 23  2020 sgml
drwxr-xr-x  2 root root    4096 Apr 23  2020 gtk-3.0
drwxr-xr-x  2 root root    4096 Apr 23  2020 geoclue
drwxr-xr-x  2 root root    4096 Apr 23  2020 libreoffice
drwxr-xr-x  2 root root    4096 Apr 23  2020 cron.weekly
drwxr-xr-x  3 root root    4096 Apr 23  2020 update-manager
drwxr-xr-x  2 root root    4096 Apr 23  2020 hp
drwxr-xr-x  2 root root    4096 Apr 23  2020 cupshelpers
drwxr-xr-x  7 root root    4096 Apr 23  2020 NetworkManager
-rw-r--r--  1 root root    7649 Apr 23  2020 pnm2ppa.conf
-rw-r--r--  1 root root     542 Apr 23  2020 nsswitch.conf
drwxr-xr-x  3 root root    4096 Apr 23  2020 avahi
drwxr-xr-x  4 root root    4096 Apr 23  2020 speech-dispatcher
drwxr-xr-x  2 root root    4096 Apr 23  2020 udisks2
drwxr-xr-x  2 root root    4096 Apr 23  2020 environment.d
-rw-r-----  1 root root      33 Apr 23  2020 brlapi.key
drwxr-xr-x  3 root root    4096 Apr 23  2020 ufw
drwxr-xr-x  2 root root    4096 Apr 23  2020 rsyslog.d
drwxr-xr-x  5 root root    4096 Apr 23  2020 initramfs-tools
drwxr-xr-x  2 root root    4096 Apr 23  2020 groff
drwxr-xr-x  2 root root    4096 Apr 23  2020 gdb
drwxr-xr-x  2 root root    4096 Apr 23  2020 cracklib
drwxr-xr-x  2 root root    4096 Apr 23  2020 UPower
drwxr-xr-x  4 root root    4096 Apr 23  2020 fonts
drwxr-xr-x  4 root root    4096 Apr 23  2020 openvpn
drwxr-xr-x  3 root root    4096 Apr 23  2020 acpi
drwxr-xr-x  2 root root    4096 Apr 23  2020 thermald
drwxr-xr-x  2 root root    4096 Apr 23  2020 gtk-2.0
drwxr-xr-x  2 root root    4096 Apr 23  2020 libnl-3
drwxr-xr-x  2 root root    4096 Apr 23  2020 pcmcia
drwxr-xr-x  2 root root    4096 Apr 23  2020 calendar
-rw-r--r--  1 root root     711 Apr 23  2020 hosts.deny
-rw-r--r--  1 root root     411 Apr 23  2020 hosts.allow
drwxr-xr-x  2 root root    4096 Apr 23  2020 bluetooth
drwxr-xr-x  3 root root    4096 Apr 23  2020 apparmor
drwxr-xr-x  2 root root    4096 Apr 23  2020 sensors.d
drwxr-xr-x  2 root root    4096 Apr 23  2020 cron.d
drwxr-xr-x  2 root root    4096 Apr 23  2020 gnome
drwxr-xr-x  2 root root    4096 Apr 23  2020 cron.monthly
drwxr-xr-x  3 root root    4096 Apr 23  2020 mysql
drwxr-xr-x  4 root root    4096 Apr 23  2020 security
drwxr-xr-x  7 root root    4096 Apr 23  2020 brltty
drwxr-xr-x  3 root root    4096 Apr 23  2020 ifplugd
drwxr-xr-x  6 root root    4096 Apr 23  2020 kernel
drwxr-xr-x  4 root root    4096 Apr 23  2020 dconf
drwxr-xr-x  3 root root    4096 Apr 23  2020 pm
drwxr-xr-x  6 root root    4096 Apr 23  2020 xdg
drwxr-xr-x  3 root root    4096 Apr 23  2020 libblockdev
drwxr-xr-x  4 root root    4096 Apr 23  2020 pki
drwxr-xr-x  4 root root    4096 Apr 23  2020 logcheck
drwxr-xr-x  4 root root    4096 Apr 23  2020 ghostscript
drwxr-xr-x  5 root root    4096 Apr 23  2020 vulkan
drwxr-xr-x  3 root root    4096 Apr 23  2020 emacs
drwxr-xr-x  3 root root    4096 Apr 23  2020 glvnd
drwxr-xr-x  4 root root    4096 Apr 23  2020 polkit-1
drwxr-xr-x  5 root root    4096 Apr 23  2020 apm
drwxr-xr-x  3 root root    4096 Apr 23  2020 alsa
drwxr-xr-x  3 root root    4096 Apr 23  2020 gss
drwxr-xr-x  3 root root    4096 Apr 23  2020 perl
-rw-r--r--  1 root root     110 Apr 23  2020 kernel-img.conf
lrwxrwxrwx  1 root root      23 Apr 23  2020 vtrgb -> /etc/alternatives/vtrgb
drwxr-xr-x  2 root root    4096 Apr 23  2020 ubuntu-advantage
drwxr-xr-x  2 root root    4096 Apr 23  2020 python3
-rw-r--r--  1 root root    5713 Apr 23  2020 ca-certificates.conf.dpkg-old
drwxr-xr-x  2 root root    4096 Apr 23  2020 vim
drwxr-xr-x  4 root root    4096 Apr 23  2020 iproute2
drwxr-xr-x  2 root root    4096 Apr 23  2020 newt
drwxr-xr-x  4 root root    4096 Apr 23  2020 udev
-rw-r--r--  1 root root    9442 Apr 23  2020 locale.gen
-rw-r--r--  1 root root     195 Apr 23  2020 modules
drwxr-xr-x  2 root root    4096 Apr 23  2020 depmod.d
drwxr-xr-x  2 root root    4096 Apr 23  2020 cron.hourly
drwxr-xr-x  8 root root    4096 Apr 23  2020 networkd-dispatcher
drwxr-xr-x  4 root root    4096 Apr 23  2020 dbus-1
drwxr-xr-x  3 root root    4096 Apr 23  2020 ca-certificates
drwxr-xr-x  5 root root    4096 Apr 23  2020 systemd
lrwxrwxrwx  1 root root      39 Apr 23  2020 resolv.conf -> ../run/systemd/resolve/stub-resolv.conf
-rw-r--r--  1 root root    3028 Apr 23  2020 adduser.conf
drwxr-xr-x  2 root root    4096 Apr 23  2020 sysctl.d
-rw-r--r--  1 root root     116 Apr 23  2020 shells
drwxr-xr-x  4 root root    4096 Apr 23  2020 dpkg
drwxr-xr-x  2 root root    4096 Apr 23  2020 skel
drwxr-xr-x  2 root root    4096 Apr 23  2020 terminfo
drwxr-xr-x  2 root root    4096 Apr 23  2020 selinux
drwxr-xr-x  2 root root    4096 Apr 23  2020 opt
drwxr-xr-x  2 root root    4096 Apr 22  2020 binfmt.d
drwxr-xr-x  2 root root    4096 Apr 22  2020 tmpfiles.d
-rw-r--r--  1 root root      24 Apr 15  2020 issue
-rw-r--r--  1 root root      17 Apr 15  2020 issue.net
-rw-r--r--  1 root root     102 Apr 15  2020 lsb-release
lrwxrwxrwx  1 root root      21 Apr 15  2020 os-release -> ../usr/lib/os-release
-rw-r--r--  1 root root     367 Apr 15  2020 bindresvport.blacklist
-rw-r--r--  1 root root      34 Apr 15  2020 ld.so.conf
-rw-r--r--  1 root root    2996 Apr 15  2020 locale.alias
drwxr-xr-x  2 root root    4096 Apr  2  2020 update-notifier
-rw-r--r--  1 root root     624 Mar 22  2020 mtools.conf
-rw-r--r--  1 root root    5211 Mar 11  2020 rygel.conf
-rw-r--r--  1 root root   26916 Mar  4  2020 brltty.conf
-rw-r--r--  1 root root    4371 Mar  3  2020 gamemode.ini
-rw-r--r--  1 root root    5215 Feb 25  2020 manpath.config
-rw-r--r--  1 root root    2319 Feb 25  2020 bash.bashrc
-rw-r--r--  1 root root    1748 Feb 25  2020 inputrc
drwxr-xr-x  2 root root    4096 Feb 25  2020 usb_modeswitch.d
-rw-r--r--  1 root root     191 Feb 18  2020 libaudit.conf
-rw-r--r--  1 root root   14464 Feb 17  2020 services
-rw-r--r--  1 root root     685 Feb 14  2020 e2scrub.conf
-rw-r--r--  1 root root     808 Feb 14  2020 mke2fs.conf
-rw-r--r--  1 root root    2351 Feb 14  2020 sysctl.conf
-rw-r--r--  1 root root    1042 Feb 14  2020 crontab
-rw-r--r--  1 root root    1382 Feb 11  2020 rsyslog.conf
-rw-r--r--  1 root root      20 Feb 10  2020 fprintd.conf
-rw-r--r--  1 root root    1523 Feb 10  2020 usb_modeswitch.conf
-rw-r--r--  1 root root   10550 Feb  7  2020 login.defs
-rw-r--r--  1 root root   10037 Feb  7  2020 nanorc
-r--r-----  1 root root     755 Feb  3  2020 sudoers
-rw-r--r--  1 root root    2584 Feb  1  2020 gai.conf
-rw-r--r--  1 root root      45 Jan 26  2020 bash_completion
-rw-r--r--  1 root root     769 Jan 18  2020 appstream.conf
-rw-r--r--  1 root root     111 Jan 17  2020 magic
-rw-r--r--  1 root root     111 Jan 17  2020 magic.mime
-rw-r--r--  1 root root    1816 Dec 27  2019 ethertypes
-rw-r--r--  1 root root     552 Dec 17  2019 pam.conf
-rw-r--r--  1 root root      13 Dec  5  2019 debian_version
-rw-r--r--  1 root root      92 Dec  5  2019 host.conf
-rw-r--r--  1 root root     267 Dec  5  2019 legal
-rw-r--r--  1 root root      91 Dec  5  2019 networks
-rw-r--r--  1 root root     581 Dec  5  2019 profile
-rw-r--r--  1 root root   10593 Nov  7  2019 sensors3.conf
-rw-r--r--  1 root root     449 Oct 19  2019 mailcap.order
-rw-r--r--  1 root root   24546 Oct 19  2019 mime.types
-rw-r--r--  1 root root     477 Oct  7  2019 zsh_command_not_found
-rw-r--r--  1 root root     642 Sep 24  2019 xattr.conf
-rw-r--r--  1 root root    5060 Aug 21  2019 hdparm.conf
-rw-r--r--  1 root root    2969 Aug  3  2019 debconf.conf
-rw-r--r--  1 root root    4942 Jul 25  2019 wgetrc
-rw-r--r--  1 root root     401 Jul 17  2019 anacrontab
drwxr-xr-x  2 root root    4096 Jun 26  2019 libpaper.d
-rw-r--r--  1 root root   14867 Feb  1  2019 ltrace.conf
-rw-r--r--  1 root root     533 Jan 21  2019 logrotate.conf
-rw-r--r--  1 root root    1260 Dec 14  2018 ucf.conf
-rw-r--r--  1 root root     604 Sep 16  2018 deluser.conf
-rw-r--r--  1 root root      27 Jan 19  2018 libao.conf
-rw-r--r--  1 root root    1308 Dec  2  2017 kerneloops.conf
-rw-r--r--  1 root root     433 Oct  2  2017 apg.conf
-rw-r--r--  1 root root     280 Jun 20  2014 fuse.conf
-rw-r--r--  1 root root    2932 Apr  2  2013 protocols
-rw-r--r--  1 root root     887 Apr  1  2013 rpc
```


11. create bash to test the input file is directory or file.
```
Ans:-
#!/bin/bash

read file
if [ -f "$file" ]
then
        echo "the file is exists"
else
        if [ -d "$file" ]
        then
                echo "the directory is exists"
        fi
fi
```


12. create a bash script to list all files and folder of the provided input path and all its subdir in the following format

#!/bin/bash
read dir
for all in `ls -R $dir`
do
        echo $all
        if [ -f $all ]
        then
                echo "f-  $all"
        else 
        
        fi[ -d $all ]
then
                echo "d-  $all"
        fi
fi
done
