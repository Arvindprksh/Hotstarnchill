echo -e "What do you wish to see?\n"
read choice
QUALITY=360P
DOWN_OR_STREAM=d
echo q | googler -C  -n 2 $choice  > searchQuery && cat searchQuery | grep ^http* > searchUrl.txt
url=$(cat searchUrl.txt)
echo -e "$url\n${QUALITY}\n${DOWN_OR_STREAM}" | ./hotstarlivestreamer.sh
echo "Mission Completed"
