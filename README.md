# CloudflareRIPGen
Cloudflare Real IP Config Generator

This little script auto-generates NGINX Cloudflare Real IP Config.

I've created this small and simple script, as cloudflare may change IP Addresses often.

# Usage

1) Download the script on your server.
2) Change the outputfile in the script (using a text-editor such as: nano, vi, etc.)
3) Change permissions to the file (as example through chmod)
4) Execute it (<kbd>./generator.sh</kbd>)

# Smart usage of the script

Following the steps above, I would use the script with a crontab.

I'd set the crontab every day/week to run once, apending to the script the command <kbd>killall -s SIGHUP nginx</kbd>

This way the script would be ran once for day/week and automatically and appending the <kbd>killall</kbd> command it would automatically repare new IP Addresses without causing any downtime.

# Credits

~ toxiicdev.net

# License

**This project is licensed under the MIT license**

See the "[LICENSE](https://github.com/toxiicdev/CloudflareRIPGen/blob/master/LICENSE)" file for more details.
