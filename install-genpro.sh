#!/bin/ash
# Installation script by @Navvatart.

DIR=/usr/bin

finish(){
    clear
    echo ""
    echo "DOWNLOAD GENPRO DONE"
    echo ""
    echo "This tools for Openclash only. Generate many proxy and SNI with one click"
    echo ""
    echo ""
    echo "
MENJALANKAN PERINTAH SETELAH BERHASIL.
Open genpro with link this 192.168.1.1/genpro.
how to use

A. STEP 1

Create group provider and proxy provider in openclash (for example: name bug test)
apply.
You can skip if have proxy
B. STEP 2

go to servers
insert server you have.
inser bugs you have.
go home and select server
insert port
click bug name
select file .yaml from openclash proxy provider
click ke-OC
go to Yard and refresh
done... you have many bugs testing
Good luck trying!

Use it wisely.
Sponsoring
Support this project by becoming a sponsor or a backer.

It's not there yet, so let's help with donations to boost their motivation for updates.
"
}

download_files()
{
    clear
    echo "Please Wait"
    sleep 3
    echo "Internet connection must ready"
    sleep 3
    echo "Downloading In Progress..... Please Wait"
    if [ -d "/www/genpro" ]
    then
    	echo "Proccess Update...."
    	sleep 3
        cd www/ && rm -r genpro && wget https://github.com/Navvatart/genpro/archive/refs/tags/Beta-v02.05.14.2024.zip && unzip Beta-v02.05.14.2024.zip && rm Beta-v02.05.14.2024.zip && mv genpro-Beta-v02.05.14.2024 genpro && cd -
    else
    	echo "Proccess Install...."
    	sleep 3
         cd www/ && wget https://github.com/Navvatart/genpro/archive/refs/tags/Beta-v02.05.14.2024.zip && unzip Beta-v02.05.14.2024.zip && rm Beta-v02.05.14.2024.zip && mv genpro-Beta-v02.05.14.2024 genpro && cd -
    fi
   
	#
   
    finish
}

download_files
