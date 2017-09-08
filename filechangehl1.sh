#!/bin/bash

### Set initial time of file
LTIME=`stat -c %Z /home/fos-streaming/fos/www/hl/1_.m3u8`

while true    
do
   ATIME=`stat -c %Z /home/fos-streaming/fos/www/hl/1_.m3u8`

   if [[ "$ATIME" != "$LTIME" ]]
   then    
	   echo "Stream File Change ok hl1"
       LTIME=$ATIME
	else 
		echo "Stream File Not Change hl1"
		curl "http://127.0.0.1:8000/streams.php?stop=1" >> /dev/null 2>&1
		sleep 10
		rm -r /home/fos-streaming/fos/www/hl/1*.*
		rm -r /home/fos-streaming/fos/www/hl/1*.*
		rm -r /home/fos-streaming/fos/www/hl/1*.*
		rm -r /home/fos-streaming/fos/www/hl/1*.*
		rm -r /home/fos-streaming/fos/www/hl/1*.*
		sleep 5
		curl "http://127.0.0.1:8000/streams.php?start=1" >> /dev/null 2>&1
   fi
   sleep 60
done