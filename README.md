DyNS (dyns.cx) update client for Mac
===========

A script to update an ip address for DyNS (dyns.cx).

This ruby script works on ruby 1.8.7 (pre-installed on Mac OS X Mountain Lion).

## How to use

1. Download dyns_update.rb https://github.com/shinichy/dyns_update/archive/master.zip
2. Put it somewhere (e.g. ~/Dropbox/bin)
3. Change settings in the script
    - username
    - password
    - hostname
    - domain (optional)
    - interface
4. Run
    - ruby dyns_update.rb
5. Make sure that response status is 200. Output is like this
    - 200 host test.dyns.cx updated (10.33.33.33)
6. Register it in crontab
    - crontab -e
    - Enter an entry (this example setting runs dyns_update.rb every 30 minutes)
        - */30 * * * * /usr/bin/ruby /Users/test/Dropbox/bin/dyns_update.rb
    - check if it's registered by running crontab -l
