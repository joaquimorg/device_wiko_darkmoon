#!/bin/sh

FOLDER=lib
diff -qr ../../../../darkmoon/stockrom/system/$FOLDER ../../../out/target/product/darkmoon/system/$FOLDER | grep ../../../../darkmoon/stockrom/system/$FOLDER | awk '{if ($0 ~ /^ *Only/) { gsub(":","",$3); gsub("../../../../darkmoon/stockrom/system/","",$3); print $3 "/" $4;}}' > libdiff.txt
