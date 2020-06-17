#!/bin/bash

echo -n "HamPi Packaging started at: "
start_time=`date`
echo $start_time
# Compute the seconds since epoch for start date
t1=`date --date="$start_time" +%s`

VERSION=1.0

# Compress image using XZ format
pxz "HamPi v${VERSION} by W3DJS/HamPi_v${VERSION}.img"

# Generate SHA256SUM
sha256sum "HamPi v${VERSION} by W3DJS/HamPi_v${VERSION}.img.xz" > "HamPi v${VERSION} by W3DJS/HamPi_v${VERSION}.img.xz.sha256sum"

# Create archive using smaller xz format:
result=`nice -n 19 tar --dereference \
-cvf "HamPi_v${VERSION}.tar" "HamPi v${VERSION} by W3DJS"`

# Display status
if (( $result == 0 )); then
    espeak -s 150 -v en-us "Ham Pie image compression successful!" 2> /dev/null &
    notify-send -i /usr/share/icons/Adwaita/scalable/status/checkbox-checked-symbolic.svg -t 60000 "Ham Pi" "Image compression successful" &
  else
    espeak -s 150 -v en-us "Ham Pie image compression unsuccessful!" 2> /dev/null &
    notify-send -i /usr/share/icons/Adwaita/scalable/status/checkbox-checked-symbolic.svg -t 60000 "Ham Pi" "Image compression unsuccessful" &
fi

# Compute the seconds since epoch for end date
end_time=`date`
t2=`date --date="$end_time" +%s`

let "diff_time=$t2-$t1"
printf "Total time for HamPi Packaging: %02d:%02d:%02d\n" $((diff_time/3600)) $((diff_time%3600/60)) $((diff_time % 60))

