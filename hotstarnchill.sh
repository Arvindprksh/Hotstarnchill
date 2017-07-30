
echo -e "What do you wish to see?\n"
read choice
choice="hotstar $choice"
echo $choice
echo -e "What clarity do you want to see this in ? 360p, 404p or 720p\n"
read QUALITY
DOWN_OR_STREAM=d
echo q | googler -C  -n 2 $choice  > searchQuery && cat searchQuery | grep ^http* > searchUrl.txt
url=$(cat searchUrl.txt)
echo -e "$url\n${QUALITY}\n${DOWN_OR_STREAM}" | ./hotstarlivestreamer.sh
echo "Mission Completed"
