cd ..
rm -rf util-linux-2.37.2
tar -xvf util-linux-2.37.2.tar.xz 
cd util-linux-2.37.2
../JesusChrist.sh 
../JesusChrist.sh 
./configure ADJTIME_PATH=/var/lib/hwclock/adjtime               --libdir=/usr/lib                --docdir=/usr/share/doc/util-linux-2.37.2             --disable-chfn-chsh              --disable-login                  --disable-nologin                --disable-su                     --disable-setpriv                --disable-runuser                --disable-pylibmount             --disable-static                 --without-python                 --without-systemd                --without-systemdsystemunitdir             runstatedir=/run
make 
rm tests/ts/lsns/ioctl_ns
chown -Rv tester .
su tester -c "make -k check"
make install
cd ..
rm -rf util-linux-2.37.2
tar -xvf e2fsprogs-1.46.4.tar.gz 
cd e2fsprogs-1.46.4
ls
../JesusChrist.sh 
../JesusChrist.sh 
mkdir -v build
cd       build
../configure --prefix=/usr                        --sysconfdir=/etc                    --enable-elf-shlibs                  --disable-libblkid                   --disable-libuuid                    --disable-uuidd                      --disable-fsck
make
make check
make install
rm -fv /usr/lib/{libcom_err,libe2p,libext2fs,libss}.a
gunzip -v /usr/share/info/libext2fs.info.gz
install-info --dir-file=/usr/share/info/dir /usr/share/info/libext2fs.info
cd /usr/share/info/
/sources/JesusChrist.sh 
cd /sources/e2fsprogs-1.46.4/build/
makeinfo -o      doc/com_err.info ../lib/et/com_err.texinfo
install -v -m644 doc/com_err.info /usr/share/info
install-info --dir-file=/usr/share/info/dir /usr/share/info/com_err.info
cd ..
cd ..
rm -rf e2fsprogs-1.46.4
tar -xvf sysklogd-1.5.1.tar.gz 
cd sysklogd-1.5.1
sed -i '/Error loading kernel symbols/{n;n;d}' ksym_mod.c
sed -i 's/union wait/int/' syslogd.c
../JesusChrist.sh 
../JesusChrist.sh 
make
make BINDIR=/sbin install
cat > /etc/syslog.conf << "EOF"
# Begin /etc/syslog.conf

auth,authpriv.* -/var/log/auth.log
*.*;auth,authpriv.none -/var/log/sys.log
christ.* -/var/log/christ.log
kern.* -/var/log/kern.log
mail.* -/var/log/mail.log
user.* -/var/log/user.log
*.emerg *

# End /etc/syslog.conf
EOF

cd ..
rm -rf 
tar -xvf sysvinit-3.00.tar.xz 
cd sys
cd sysvinit-
cd sysvinit-3.00
patch -Np1 -i ../sysvinit-3.00-consolidated-1.patch
../JesusChrist.sh 
../JesusChrist.sh 
make
make install
cd ..
rm -rf sysvinit-3.00
save_usrlib="$(cd /usr/lib; ls ld-linux*)
             libc.so.6
             libthread_db.so.1
             libquadmath.so.0.0.0
             libstdc++.so.6.0.29
             libitm.so.1.0.0
             libatomic.so.1.2.0"
cd /usr/lib
for LIB in $save_usrlib; do     objcopy --only-keep-debug $LIB $LIB.dbg;     cp $LIB /tmp/$LIB;     strip --strip-unneeded /tmp/$LIB;     objcopy --add-gnu-debuglink=$LIB.dbg /tmp/$LIB;     install -vm755 /tmp/$LIB /usr/lib;     rm /tmp/$LIB; done
online_usrbin="bash find strip"
online_usrlib="libbfd-2.37.so
               libhistory.so.8.1
               libncursesw.so.6.2
               libm.so.6
               libreadline.so.8.1
               libz.so.1.2.11
               $(cd /usr/lib; find libnss*.so* -type f)"
for BIN in $online_usrbin; do     cp /usr/bin/$BIN /tmp/$BIN;     strip --strip-unneeded /tmp/$BIN;     install -vm755 /tmp/$BIN /usr/bin;     rm /tmp/$BIN; done
for LIB in $online_usrlib; do     cp /usr/lib/$LIB /tmp/$LIB;     strip --strip-unneeded /tmp/$LIB;     install -vm755 /tmp/$LIB /usr/lib;     rm /tmp/$LIB; done
for i in $(find /usr/lib -type f -name \*.so* ! -name \*dbg)          $(find /usr/lib -type f -name \*.a)                          $(find /usr/{bin,sbin,libexec} -type f); do     case "$online_usrbin $online_usrlib $save_usrlib" in         *$(basename $i)* )             ;;         * ) strip --strip-unneeded $i;             ;;     esac; done
unset BIN LIB save_usrlib online_usrbin online_usrlib
ls /tmp
rm -rf /tmp/*
logout
ls
cd sources/
ls
exit
cd sources/
ls
tar -xvf openssh-8.7p1.tar.gz 
cd openssh-8.7p1
../JesusChrist.sh 
../JesusChrist.sh 
install  -v -m700 -d /var/lib/sshd
chown    -v root:sys /var/lib/sshd
groupadd -g 50 sshd       
useradd  -c 'sshd PrivSep'          -d /var/lib/sshd           -g sshd                    -s /bin/false              -u 50 sshd
ls
./configure --prefix=/usr                                        --sysconfdir=/etc/ssh                                --with-md5-passwords                                 --with-privsep-path=/var/lib/sshd                    --with-default-path=/usr/bin                         --with-superuser-path=/usr/sbin:/usr/bin             --with-pid-dir=/run
make
make -j1 tests
make install
install -v -m755    contrib/ssh-copy-id /usr/bin     && install -v -m644    contrib/ssh-copy-id.1                     /usr/share/man/man1              && install -v -m755 -d /usr/share/doc/openssh-8.7p1     && install -v -m644    INSTALL LICENCE OVERVIEW README*                     /usr/share/doc/openssh-8.7p1
echo "PermitRootLogin yes" >> /etc/ssh/sshd_config
cat /etc/ssh/sshd_config 
ssh-keygen 
exit
cd sources/
tar -xvf blfs-bootscripts-20210826.tar.xz 
cd blfs-bootscripts-20210826
../JesusChrist.sh 
../JesusChrist.sh 
make install-sshd
cd ..
rm -rf blfs-bootscripts-20210826
ls
rm -rf openssh-8.7p1
tar -xvf links-2.24.tar.bz2 
cd links-2.24
../JesusChrist.sh 
../JesusChrist.sh 
./configure --prefix=/usr --mandir=/usr/share/man
make -j64
make install 
install -v -d -m755 /usr/share/doc/links-2.24 && install -v -m644 doc/links_cal/* KEYS BRAILLE_HOWTO     /usr/share/doc/links-2.24
cd ..
rm -rf links-2.24
tar -xvf wget-1.21.2.tar.gz 
cd wget-1.21.2
../JesusChrist.sh 
../JesusChrist.sh 
./configure --prefix=/usr                  --sysconfdir=/etc              --with-ssl=openssl
make -j64
autoreconf -vif
cd ..
rm -rf wget-1.21.2
tar -xvf wget-1.21.2.tar.gz 
cd wget-1.21.2
autoreconf -vif
autoreconf -v -d -W all
../JesusChrist.sh 
../JesusChrist.sh 
./configure --prefix=/usr                  --sysconfdir=/etc              --with-ssl=openssl
make
exit
clear
find /usr/lib /usr/libexec -name \*.la -delete
find /usr -depth -name $(uname -m)-lfs-linux-gnu\* | xargs rm -rf
userdel -r tester
du -h
cd sources/
tar -xvf lfs-bootscripts-20210608.tar.xz 
cd lfs-bootscripts-20210608
../JesusChrist.sh 
../JesusChrist.sh 
make install
vim /usr/lib/udev/init-net-rules.sh 
bash /usr/lib/udev/init-net-rules.sh
cat /etc/udev/rules.d/70-persistent-net.rules
ifconfig
vim /etc/udev/rules.d/70-persistent-net.rules
vim /etc/udev/rules.d/70-persistent-net.rules
udevadm test /sys/block/hdd
sed -e 's/"write_cd_rules"/"write_cd_rules mode"/'     -i /etc/udev/rules.d/83-cdrom-symlinks.rules
udevadm info -a -p /sys/class/video4linux/video0
cat > /etc/udev/rules.d/83-duplicate_devs.rules << "EOF"

# Persistent symlinks for webcam and tuner
KERNEL=="video*", ATTRS{idProduct}=="1910", ATTRS{idVendor}=="0d81", SYMLINK+="webcam"
KERNEL=="video*", ATTRS{device}=="0x036f",  ATTRS{vendor}=="0x109e", SYMLINK+="tvtuner"

EOF

ifconfig
cd /etc/sysconfig/
cat > ifconfig.ens3 << "EOF"
ONBOOT=yes
IFACE=ens3
SERVICE=ipv4-static
IP=10.0.2.15
GATEWAY=10.0.2.0
PREFIX=24
BROADCAST=10.0.2.255
EOF

cat > /etc/resolv.conf << "EOF"
# Begin /etc/resolv.conf

domain manuceau.net
nameserver 1.1.1.1
nameserver 1.0.0.1

# End /etc/resolv.conf
EOF

echo "yeshua-os" > /etc/hostname
cat /etc/hosts
cat > /etc/hosts << "EOF"
# Begin /etc/hosts

127.0.0.1 localhost.localdomain localhost
127.0.1.1 yeshua-os.org yeshua-os
10.0.2.15 yeshua-os.org yeshua-os
::1       localhost ip6-localhost ip6-loopback
ff02::1   ip6-allnodes
ff02::2   ip6-allrouters

# End /etc/hosts
EOF

cat > /etc/inittab << "EOF"
# Begin /etc/inittab

id:3:initdefault:

si::sysinit:/etc/rc.d/init.d/rc S

l0:0:wait:/etc/rc.d/init.d/rc 0
l1:S1:wait:/etc/rc.d/init.d/rc 1
l2:2:wait:/etc/rc.d/init.d/rc 2
l3:3:wait:/etc/rc.d/init.d/rc 3
l4:4:wait:/etc/rc.d/init.d/rc 4
l5:5:wait:/etc/rc.d/init.d/rc 5
l6:6:wait:/etc/rc.d/init.d/rc 6

ca:12345:ctrlaltdel:/sbin/shutdown -t1 -a -r now

su:S016:once:/sbin/sulogin

1:2345:respawn:/sbin/agetty --noclear tty1 9600
2:2345:respawn:/sbin/agetty tty2 9600
3:2345:respawn:/sbin/agetty tty3 9600
4:2345:respawn:/sbin/agetty tty4 9600
5:2345:respawn:/sbin/agetty tty5 9600
6:2345:respawn:/sbin/agetty tty6 9600

# End /etc/inittab
EOF

cat > /etc/sysconfig/clock << "EOF"
# Begin /etc/sysconfig/clock

UTC=1

# Set this to any options you might need to give to hwclock,
# such as machine hardware clock type for Alphas.
CLOCKPARAMS=

# End /etc/sysconfig/clock
EOF

touch /etc/sysconfig/console
vim /etc/sysconfig/rc.site 
locale -a
vim /etc/profile
vim /etc/profile
vim /etc/profile
cat > /etc/inputrc << "EOF"
# Begin /etc/inputrc
# Modified by Chris Lynn <roryo@roryo.dynup.net>

# Allow the command prompt to wrap to the next line
set horizontal-scroll-mode Off

# Enable 8bit input
set meta-flag On
set input-meta On

# Turns off 8th bit stripping
set convert-meta Off

# Keep the 8th bit for display
set output-meta On

# none, visible or audible
set bell-style none

# All of the following map the escape sequence of the value
# contained in the 1st argument to the readline specific functions
"\eOd": backward-word
"\eOc": forward-word

# for linux console
"\e[1~": beginning-of-line
"\e[4~": end-of-line
"\e[5~": beginning-of-history
"\e[6~": end-of-history
"\e[3~": delete-char
"\e[2~": quoted-insert

# for xterm
"\eOH": beginning-of-line
"\eOF": end-of-line

# for Konsole
"\e[H": beginning-of-line
"\e[F": end-of-line

# End /etc/inputrc
EOF

cat > /etc/shells << "EOF"
# Begin /etc/shells

/bin/sh
/bin/bash

# End /etc/shells
EOF

cat > /etc/fstab << "EOF"
# Begin /etc/fstab

# file system  mount-point  type     options             dump  fsck
#                                                              order

/dev/<xxx>     /            <fff>    defaults            1     1
/dev/<yyy>     swap         swap     pri=1               0     0
proc           /proc        proc     nosuid,noexec,nodev 0     0
sysfs          /sys         sysfs    nosuid,noexec,nodev 0     0
devpts         /dev/pts     devpts   gid=5,mode=620      0     0
tmpfs          /run         tmpfs    defaults            0     0
devtmpfs       /dev         devtmpfs mode=0755,nosuid    0     0

# End /etc/fstab
EOF

lsblk
vim /etc/fstab
cd 
ls
passwd
cd /sources/
cd linux-5.15-rc3
make mrproper
/sources/JesusChrist.sh 
make defconfig
make menuconfig
make
make modules_install
cp -iv arch/x86/boot/bzImage /boot/yeshuaos-001
cp -iv System.map /boot/System.map001
cp -iv .config /boot/config001
install -d /usr/share/doc/linux-15-rc3
cp -r Documentation/* /usr/share/doc/linux-5.15-rc3
cp -r Documentation/* /usr/share/doc/linux-5.15
cp -r Documentation/* /usr/share/doc/linux-5.15-rc3
install -d /usr/share/doc/linux-5.15-rc3
cp -r Documentation/* /usr/share/doc/linux-5.15-rc3
rm -rf /usr/share/doc/linux-15-rc3/
install -v -m755 -d /etc/modprobe.d
cat > /etc/modprobe.d/usb.conf << "EOF"
# Begin /etc/modprobe.d/usb.conf

install ohci_hcd /sbin/modprobe ehci_hcd ; /sbin/modprobe -i ohci_hcd ; true
install uhci_hcd /sbin/modprobe ehci_hcd ; /sbin/modprobe -i uhci_hcd ; true

# End /etc/modprobe.d/usb.conf
EOF

grub-install /dev/sdb
mount
cat > /boot/grub/grub.cfg << "EOF"
# Begin /boot/grub/grub.cfg
set default=0
set timeout=5

insmod ext2
set root=(hd0,2)

menuentry "GNU/Linux, Linux 5.14.8-lfs-r11.0-39" {
        linux   /boot/vmlinuz-5.14.8-lfs-r11.0-39 root=/dev/sda2 ro
}
EOF

vim /boot/grub/grub.cfg 
ls /boot
vim /boot/grub/grub.cfg 
ls /boot
vim /boot/grub/grub.cfg 
cat > /etc/lsb-release << "EOF"
DISTRIB_ID="Yeshua OS"
DISTRIB_RELEASE="0.0.1"
DISTRIB_CODENAME="Genesis"
DISTRIB_DESCRIPTION="Yeshua OS"
EOF

cat > /etc/os-release << "EOF"
NAME="Yeshua OS"
VERSION="0.0.1"
ID=yeshua
PRETTY_NAME="Yeshua OS 0.0.1"
VERSION_CODENAME="Genesis"
EOF

grub-install --target i386-pc /dev/sdb
cd ..
tar -xvf make-ca-1.9.tar.xz 
cd make-ca-1.9
../JesusChrist.sh 
make install
install -vdm755 /etc/ssl/local
/usr/sbin/make-ca -g
cd ..
rm -rf make-ca-1.9
tar -xvf libtasn1-4.17.0.tar.gz 
cd libtasn1-4.17.0
../JesusChrist.sh 
../JesusChrist.sh 
./configure --prefix=/usr --disable-static
make
autoreconf -vif
../JesusChrist.sh 
./configure --prefix=/usr --disable-static
make
autoreconf -v -d -W all
make
autoreconf -vif
./configure --prefix=/usr --disable-static --disable-gtk-doc
cd ..
rm -rf libtasn1-4.17.0
tar -xvf libtasn1-4.17.0.tar.gz 
cd libtasn1-4.17.0
../JesusChrist.sh 
../JesusChrist.sh 
 ./configure --prefix=/usr --disable-static --disable-gtk-doc
make
automake --add-missing
make
make install
make -C doc/reference install-data-local
cd ..
rm -rf libtasn1-4.17.0
tar -xvf p11-kit-0.24.0.tar.xz 
cd p11-kit-0.24.0
../JesusChrist.sh 
../JesusChrist.sh 
sed '20,$ d' -i trust/trust-extract-compat &&
cat >> trust/trust-extract-compat << "EOF"# Copy existing anchor modifications to /etc/ssl/local
/usr/libexec/make-ca/copy-trust-modifications

# Update trust stores
/usr/sbin/make-ca -r
EOF

mkdir p11-build && cd    p11-build
meson --prefix=/usr             --buildtype=release       -Dtrust_paths=/etc/pki/anchors
ninja
ninja install
ln -sfv /usr/libexec/p11-kit/trust-extract-compat         /usr/bin/update-ca-certificates
cd ..
cd ..
rm -rf p11-kit-0.24.0
tar -xvf make-ca-1.9.tar.xz 
cd make-ca-1.9
../JesusChrist.sh 
../JesusChrist.sh 
make install 
install -vdm755 /etc/ssl/local
/usr/sbin/make-ca -g
cd ..
ls
rm -rf make-ca-1.9
cd wget-1.21.2
../JesusChrist.sh 
make clean
./configure --prefix=/usr                  --sysconfdir=/etc              --with-ssl=openssl 
make
make install
cd ..
rm -rf wget-1.21.2
ls -p
rm -rf libcap-2.59
ls -p
ls
clear
logout
dmesg
free -h
free
free -h
shutdown -h now
free -h
top
free -h
sudo shutdown -h now
shutdown -h now
