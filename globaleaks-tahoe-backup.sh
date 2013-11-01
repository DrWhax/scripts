#!/usr/bin/bash
#
# Globaleaks backup to Tahoe-lafe grid.
#
#
# Author: DrWhax - drwhax@2600nl.net
#
# todo: 
#    * How many backups should be retained?
#    * 

# defaul preferences
globaleaks_dir=/var/globaleaks
# maybe add a default tahoe lafs grid write cap?
tahoe_write_cap=

# Start script

usage()
{
cat << EOF
usage: ./globaleaks-tahoe-backup.sh options

OPTIONS:
-h Show this message
-gpg <keyid> which keyid should be used to encrypt the file
-g <globaleaks path> if you use a custom globaleaks path
-p <path to save> /var/globaleaks/backup
-t ip from tahoe-lafe node
-b to install backup dependencies
EOF
}

install_backup_dependencies()
{
  echo "[+] Installing backup dependencies... "
  sudo apt-get update -y
  sudo apt-get install curl -y
}

gpg()
{
  echo "[+] Selecting key for encrypting your backups"
  

}

