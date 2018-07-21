#!/bin/bash
#Script written by toxiicdev.net © 2018

OUTPUT_FILE="/root/nginx_cf.conf";

echo -e "Script started | Developed by toxiicdev.net\n\n";

echo -e "Output file will be $OUTPUT_FILE\n";

#download the latest IP list

wget -q -O /tmp/v6.tdev https://www.cloudflare.com/ips-v6;
wget -q -O /tmp/v4.tdev https://www.cloudflare.com/ips-v4;

echo -e "Building the config...\n";

#reset config file
echo > "$OUTPUT_FILE"

#build the file

for i in /tmp/*.tdev; do
        while read l; do
                echo "set_real_ip_from $l;" >> $OUTPUT_FILE;
        done <"$i";
done

#remove junk data
rm -rf /tmp/*.tdev;

#set the real ip header
echo -e "\nreal_ip_header CF-Connecting-IP;" >> $OUTPUT_FILE

echo -e "Done!\nThank you for using Cloudflare RealIP Generator by toxiicdev.net"
