#!/bin/sh

rm -rf $MODPATH/* &> /dev/null
if [ -f /data/adb/magisk/busybox ] ; then
    unzipbin="/data/adb/magisk/busybox unzip"
elif [ -f /data/adb/ksu/busybox ] ; then
    unzipbin="/data/adb/ksu/busybox unzip"
elif type unzip &> /dev/null ; then
    unzipbin="unzip"
else
    exit 19
fi
cd $MODPATH
$unzipbin "$ZIPFILE" &> /dev/null
chmod 777 $MODPATH/META-INF/com/google/android/update-binary
sh $MODPATH/META-INF/com/google/android/update-binary 1 2 "$ZIPFILE" "ksuinstaller"
EXIT_CODE=$?
rm -rf $MODPATH &> /dev/null
exit $EXIT_CODE