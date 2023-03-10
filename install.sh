#!/bin/sh

log=install.log

ls -1c -v ./fonts.tar.xz.part* | xargs -I {} cat {} >> ./fonts.tar.xz

tar -v -xf ./fonts.tar.xz >> $log

mkdir -pv /usr/share/fonts/truetype/w10_o19 >> $log

cp -v ./fonts/*.ttf /usr/share/fonts/truetype/w10_o19/ >> $log
cp -v ./fonts/*.ttc /usr/share/fonts/truetype/w10_o19/ >> $log

chown -Rv root:root /usr/share/fonts/truetype/w10_o19 >> $log

chmod -v 755 /usr/share/fonts/truetype/w10_o19 >> $log
chmod -v 644 /usr/share/fonts/truetype/w10_o19/*.ttf >> $log
chmod -v 644 /usr/share/fonts/truetype/w10_o19/*.ttc >> $log

fc-cache -fv >> $log
