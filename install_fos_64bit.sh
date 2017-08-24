#!/bin/bash

# FUNCTION: Ubuntu 14.04 Check
distro(){
if [ -f /etc/lsb-release ]; then
    . /etc/lsb-release
        if [ $DISTRIB_ID == Ubuntu ]; then
            if [ $DISTRIB_RELEASE != "14.04" ]; then
                error
            fi
        else
            error
        fi
fi
}

# FUNCTION: ERROR
error(){
    sleep 2
    echo -ne '\n'"--PROBLEM!--"
    echo -ne '\n'"Support: https://github.com/pantgr/FOS-Streaming-v1" '\n'
exit
}


# FUNCTION: FOS-Streaming Exist
fosstreamingexist() {
    if [ -d "/home/fos-streaming" ]; then
      echo -ne '\n'"You have already installed fos streaming before?"
      echo "If you want remove fos-streaming"
      echo "killall -9 php-fpm nginx_fos"
      echo  "userdel fosstreaming"
      echo "rm -r /home/fos-streaming"
      exit
    fi
}

# FUNCTION: Packages Install
packages_install(){
    apt-get update
    apt-get install -y --force-yes git
    apt-get install -y --force-yes php5-cli curl
    apt-get install -y --force-yes libxml2-dev
    apt-get install -y --force-yes libbz2-dev
    apt-get install -y --force-yes libcurl4-openssl-dev 
    apt-get install -y --force-yes libmcrypt-dev
    apt-get install -y --force-yes libmhash2
    apt-get install -y --force-yes libmhash-dev
    apt-get install -y --force-yes libpcre3
    apt-get install -y --force-yes libpcre3-dev
    apt-get install -y --force-yes make
    apt-get install -y --force-yes build-essential
    apt-get install -y --force-yes libxslt1-dev git
    apt-get install -y --force-yes libssl-dev
    apt-get install -y --force-yes git
    apt-get install -y --force-yes php5
    apt-get install -y --force-yes unzip
    apt-get install -y --force-yes python-software-properties
    apt-get install -y --force-yes libpopt0
    apt-get install -y --force-yes libpq-dev
    apt-get install -y --force-yes libpq5
    apt-get install -y --force-yes libpspell-dev
    apt-get install -y --force-yes libpthread-stubs0-dev
    apt-get install -y --force-yes libpython-stdlib
    apt-get install -y --force-yes libqdbm-dev
    apt-get install -y --force-yes libqdbm14
    apt-get install -y --force-yes libquadmath0
    apt-get install -y --force-yes librecode-dev
    apt-get install -y --force-yes librecode0
    apt-get install -y --force-yes librtmp-dev
    apt-get install -y --force-yes librtmp0
    apt-get install -y --force-yes libsasl2-dev
    apt-get install -y --force-yes libsasl2-modules
    apt-get install -y --force-yes libsctp-dev
    apt-get install -y --force-yes libsctp1
    apt-get install -y --force-yes libsensors4
    apt-get install -y --force-yes libsensors4-dev
    apt-get install -y --force-yes libsm-dev
    apt-get install -y --force-yes libsm6
    apt-get install -y --force-yes libsnmp-base
    apt-get install -y --force-yes libsnmp-dev
    apt-get install -y --force-yes libsnmp-perl
    apt-get install -y --force-yes libsnmp30
    apt-get install -y --force-yes libsqlite3-dev
    apt-get install -y --force-yes libssh2-1
    apt-get install -y --force-yes libssh2-1-dev
    apt-get install -y --force-yes libssl-dev
    apt-get install -y --force-yes libstdc++-4.8-dev
    apt-get install -y --force-yes libstdc++6-4.7-dev
	apt-get install -y --force-yes libstdc++
    apt-get install -y --force-yes libsybdb5
    apt-get install -y --force-yes libtasn1-3-dev
    apt-get install -y --force-yes libtasn1-6-dev
    apt-get install -y --force-yes libterm-readkey-perl
    apt-get install -y --force-yes libtidy-0.99-0
    apt-get install -y --force-yes libtidy-dev
    apt-get install -y --force-yes libtiff5
    apt-get install -y --force-yes libtiff5-dev
    apt-get install -y --force-yes libtiffxx5
    apt-get install -y --force-yes libtimedate-perl
    apt-get install -y --force-yes libtinfo-dev
    apt-get install -y --force-yes libtool
    apt-get install -y --force-yes libtsan0
    apt-get install -y --force-yes libunistring0
    apt-get install -y --force-yes libvpx-dev
    apt-get install -y --force-yes libvpx1
    apt-get install -y --force-yes libwrap0-dev
    apt-get install -y --force-yes libx11-6
    apt-get install -y --force-yes libx11-data
    apt-get install -y --force-yes libx11-dev
    apt-get install -y --force-yes libxau-dev
    apt-get install -y --force-yes libxau6
    apt-get install -y --force-yes libxcb1
    apt-get install -y --force-yes libxcb1-dev
    apt-get install -y --force-yes libxdmcp-dev
    apt-get install -y --force-yes libxdmcp6
    apt-get install -y --force-yes libxml2
    apt-get install -y --force-yes libxml2-dev
    apt-get install -y --force-yes libxmltok1
    apt-get install -y --force-yes libxmltok1-dev
    apt-get install -y --force-yes libxpm-dev
    apt-get install -y --force-yes libxpm4
    apt-get install -y --force-yes libxslt1-dev
    apt-get install -y --force-yes libxslt1.1
    apt-get install -y --force-yes libxt-dev
    apt-get install -y --force-yes libxt6
    apt-get install -y --force-yes linux-libc-dev
    apt-get install -y --force-yes m4
    apt-get install -y --force-yes make
    apt-get install -y --force-yes man-db
    apt-get install -y --force-yes netcat-openbsd
    apt-get install -y --force-yes odbcinst1debian2
    apt-get install -y --force-yes openssl
    apt-get install -y --force-yes patch
    apt-get install -y --force-yes pkg-config
    apt-get install -y --force-yes po-debconf
    apt-get install -y --force-yes python
    apt-get install -y --force-yes python-minimal
    apt-get install -y --force-yes python2.7
    apt-get install -y --force-yes python2.7-minimal
    apt-get install -y --force-yes re2c
    apt-get install -y --force-yes unixodbc
    apt-get install -y --force-yes unixodbc-dev
    apt-get install -y --force-yes uuid-dev
    apt-get install -y --force-yes x11-common
    apt-get install -y --force-yes x11proto-core-dev
    apt-get install -y --force-yes x11proto-input-dev
    apt-get install -y --force-yes x11proto-kb-dev
    apt-get install -y --force-yes xorg-sgml-doctools
    apt-get install -y --force-yes libjpeg8
    apt-get install -y --force-yes xtrans-dev
    apt-get install -y --force-yes zlib1g-dev
    apt-get install -y --force-yes php5-fpm
    apt-get install -y --force-yes libgtk2.0-0 libgdk-pixbuf2.0-0 libfontconfig1 libxrender1 libx11-6 libglib2.0-0  libxft2 libfreetype6 libc6 zlib1g libpng12-0 libstdc++6-4.8-dbg-arm64-cross libgcc1
    }
    ln -s /usr/lib/x86_64-linux-gnu/libfreetype.so.6.11.1 /usr/lib/libfreetype.so.6
    fos_install(){
    /usr/sbin/useradd -s /sbin/nologin -U -d /home/fos-streaming -m fosstreaming
    cd /home/fos-streaming
    wget https://www.dropbox.com/s/8xpfnmdq5dsdegv/fos-streaming_unpack_x84_64.tar.gz -O /home/fos-streaming/fos-streaming_unpack_x84_64.tar.gz
    #--no-check-certificate if needed
    tar -xzf /home/fos-streaming/fos-streaming_unpack_x84_64.tar.gz -C /home/fos-streaming/
    rm -rf /home/fos-streaming/fos/www/vendor /home/fos-streaming/fos/www/50x.html
    cd /home/fos-streaming/fos/www
    git clone https://github.com/pantgr/FOS-Streaming-v1.git
    cp -R /home/fos-streaming/fos/www/FOS-Streaming-v1/* /home/fos-streaming/fos/www/

    echo 'fosstreaming = (root) NOPASSWD: /usr/local/bin/ffmpeg' >> /etc/sudoers
    echo 'fosstreaming = (root) NOPASSWD: /usr/local/bin/ffprobe' >> /etc/sudoers
    echo '*/2 * * * * fosstreaming /home/fos-streaming/fos/php/bin/php /home/fos-streaming/fos/www/cron.php' >> /etc/crontab

    sed --in-place '/exit 0/d' /etc/rc.local
    echo 'sleep 10' >> /etc/rc.local
    echo '/home/fos-streaming/fos/nginx/sbin/nginx_fos' >> /etc/rc.local
    echo '/home/fos-streaming/fos/php/sbin/php-fpm' >> /etc/rc.local
    echo 'exit 0' >> /etc/rc.local

    /bin/mkdir /home/fos-streaming/fos/www/hl
    chmod -R 777 /home/fos-streaming/fos/www/hl
    /bin/mkdir /home/fos-streaming/fos/www/cache
    chmod -R 777 /home/fos-streaming/fos/www/cache
    chown www-data:www-data /home/fos-streaming/fos/nginx/conf

    /bin/cp improvement/nginx.conf /home/fos-streaming/fos/nginx/conf/nginx.conf
    /bin/cp improvement/php-fpm.conf /home/fos-streaming/fos/php/etc/php-fpm.conf
    /bin/cp improvement/www.conf /home/fos-streaming/fos/php/etc/pool.d/www.conf
    /bin/cp improvement/balance.conf /home/fos-streaming/fos/nginx/conf/balance.conf
	/bin/cp /home/fos-streaming/fos/www/libjpeg.so.8 /usr/lib/x86_64-linux-gnu
	/bin/cp /home/fos-streaming/fos/www/libjpeg.so.8.0.0 /usr/lib/x86_64-linux-gnu
	

}

startfos(){
    /home/fos-streaming/fos/php/sbin/php-fpm
    /home/fos-streaming/fos/nginx/sbin/nginx_fos
    sleep 3
    curl "http://127.0.0.1:7777/install_database_tables.php?install"
    curl "http://127.0.0.1:7777/install_database_tables.php?update"
    rm -r /home/fos-streaming/fos/www/install_database_tables.php
}

ffmpeg()
{
    #wget http://johnvansickle.com/ffmpeg/releases/ffmpeg-release-64bit-static.tar.xz -O /home/fos-streaming/ffmpeg-release-64bit-static.tar.xz
    tar -xJf /home/fos-streaming/fos/www/ffmpeg-release-64bit-static.tar.xz -C /tmp/
    /bin/cp /tmp/ffmpeg*/ffmpeg  /usr/local/bin/ffmpeg
    /bin/cp /tmp/ffmpeg*/ffprobe /usr/local/bin/ffprobe
    chmod 755 /usr/local/bin/ffmpeg
    chmod 755 /usr/local/bin/ffprobe
    chown www-data:root /home/fos-streaming/fos/nginx/html
}
foswebport-streamport()
{
    /bin/mkdir /home/fos-streaming/fos/www1/
    /bin/mkdir /home/fos-streaming/fos/www1/log/
    chown fosstreaming:fosstreaming /home/fos-streaming/fos/www1/log/
    /bin/cp -R /home/fos-streaming/fos/www/* /home/fos-streaming/fos/www1/
    /bin/rm /home/fos-streaming/fos/www1/*.*
    /bin/rm -rf /home/fos-streaming/fos/www1/hl
    /bin/ln -s /home/fos-streaming/fos/www/hl /home/fos-streaming/fos/www1/hl
    /bin/ln -s /home/fos-streaming/fos/www/config.php /home/fos-streaming/fos/www1/config.php
    /bin/ln -s /home/fos-streaming/fos/www/functions.php /home/fos-streaming/fos/www1/functions.php
    /bin/ln -s /home/fos-streaming/fos/www/stream.php /home/fos-streaming/fos/www1/stream.php
    /bin/ln -s /home/fos-streaming/fos/www/playlist.php /home/fos-streaming/fos/www1/playlist.php
 }   
info(){
 echo "********************************************************************************************;
    echo "FOS-Streaming installed.. \n";
    echo "streaming port   page: 'http://host:8000' \n";
    echo "visit management page: 'http://host:7777' \n";
    echo "Login: \n";
    echo "Username: admin \n";
    echo "Password: admin \n";
    echo "database details: \n";
    echo  "hostname: localhost, database_name: " $1 " , database_username: "  $2  " , database_password " $3
    echo "IMPORTANT: After you logged in, go to settings and check your ip-address. \n";
    echo "*****************************************************************************************;
}

database(){

echo ""
read -p "Choose your MySQL database name: " sqldatabase
read -p "Enter your MySQL username(usual 'root'): " sqluname
read -rep $'Enter your MySQL password (ENTER for none):' sqlpasswd
echo "mysql-server mysql-server/root_password password $sqlpasswd" | debconf-set-selections
echo "mysql-server mysql-server/root_password_again password $sqlpasswd" | debconf-set-selections
echo "phpmyadmin phpmyadmin/dbconfig-install boolean true" | debconf-set-selections
echo "phpmyadmin phpmyadmin/app-password-confirm password $sqlpasswd" | debconf-set-selections
echo "phpmyadmin phpmyadmin/mysql/admin-pass password $sqlpasswd" | debconf-set-selections
echo "phpmyadmin phpmyadmin/mysql/app-pass password $sqlpasswd" | debconf-set-selections
echo "phpmyadmin phpmyadmin/reconfigure-webserver multiselect none" | debconf-set-selections

apt-get install -y mysql-server
apt-get install -y php5-mysql

mysql -uroot -p$sqlpasswd -e "CREATE DATABASE $sqldatabase"
mysql -uroot -p$sqlpasswd -e "grant all privileges on $sqldatabase.* to '$sqluname'@'localhost' identified by '$sqlpasswd'"


sed -i 's/xxx/'$sqldatabase'/g' /home/fos-streaming/fos/www/config.php
sed -i 's/zzz/'$sqlpasswd'/g' /home/fos-streaming/fos/www/config.php
sed -i 's/ttt/'$sqluname'/g' /home/fos-streaming/fos/www/config.php

}

echo "FOS-Streaming is installing, you need to wait till the installation gets finished"

fosstreamingexist
distro
packages_install
fos_install
database
ffmpeg
startfos
#test
foswebport-streamport
info