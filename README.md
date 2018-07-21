# CloudflareRIPGen
Cloudflare Real IP Config Generator

This little script auto-generates NGINX Cloudflare Real IP Config.

I've created this small and simple script, as cloudflare may change its IP Addresses often.

# Usage

1) Download the script on your server.
2) Change the outputfile in the script (using a text-editor such as: nano, vi, etc.)
3) Change permissions to the file, to run it through chmod
4) Run it

# Smart usage of the script

Following the scripts above, I would use the script with a crontab.

I'd set the crontab every day/week to run once, apending to the script the command 'killall -s SIGHUP nginx'.

This way the script would be ran once for day/week and automatically and appending the 'killall' command it would automatically repare new IP Addresses without causing any downtime.

# Credits

~ toxiicdev.net
