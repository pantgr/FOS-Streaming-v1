#!/bin/bash

### Set initial time of file
LTIME=`stat -c %Z /home/fos-streaming/fos/www/hl/2_.m3u8`

while true    
do
   ATIME=`stat -c %Z /home/fos-streaming/fos/www/hl/2_.m3u8`

   if [[ "$ATIME" != "$LTIME" ]]
   then    
	   echo "Stream File Change ok"
       LTIME=$ATIME
	else 
		echo "Stream File Not Change"
		rm -r /home/fos-streaming/fos/www/hl/2*.*
		rm -r /home/fos-streaming/fos/www/hl/2*.*
		rm -r /home/fos-streaming/fos/www/hl/2*.*
		rm -r /home/fos-streaming/fos/www/hl/2*.*
		rm -r /home/fos-streaming/fos/www/hl/2*.*
   fi
   sleep 17
done