# CloudflareRIPGen
Cloudflare Real IP Config Generator

This little script auto-generates NGINX Cloudflare Real IP Config.

I've created this small and simple script, as cloudflare may change its IP Addresses often.

# Usage

1) Download the script on your server.
2) Change the outputfile in the script (using a text-editor such as: nano, vi, etc.)
3) Run it

# Smart usage of the script

Following the scripts above, I would use the script with a crontab.

I'd set the crontab every day/week to run once, appending a 'killall -s SIGHUP nginx'.

This way the script would be ran once for day/week and automatically reconfigurate nginx to parse the new IP Addresses.

# Credits

~ toxiicdev.net
