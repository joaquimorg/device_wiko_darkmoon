#!/bin/sh

VENDOR=wiko
DEVICE=darkmoon

BASE=../../../vendor/$VENDOR/$DEVICE/proprietary

echo "Pulling $DEVICE files..."
for FILE in `cat proprietary-files.txt | grep -v ^# | grep -v ^$`; do
    DIR=`dirname $FILE`
    if [ ! -d $BASE/$DIR ]; then
			mkdir -p $BASE/$DIR
    fi
    #copy from local folder
    cp ~/dev/android/darkmoon/stockrom/system/$FILE $BASE/$FILE

    #copy from device
    #adb pull /system/$FILE $BASE/$FILE
done

./setup-makefiles.sh
