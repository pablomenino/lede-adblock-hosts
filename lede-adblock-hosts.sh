#!/bin/bash

#----------------------------------------------------------------------------------------
# lede-adblock-hosts
# Version: 0.1
# 
# WebSite:
# https://github.com/pablomenino/lede-adblock-hosts
# 
# Copyright © 2019 - Pablo Meniño <pablo.menino@gmail.com>
#----------------------------------------------------------------------------------------

#----------------------------------------------------------------------------------------
# Get params
OPERATION=$1

#----------------------------------------------------------------------------------------
# lists

master="https://raw.githubusercontent.com/StevenBlack/hosts/master/hosts"
fakenews="https://raw.githubusercontent.com/StevenBlack/hosts/master/alternates/fakenews/hosts"
gambling="https://raw.githubusercontent.com/StevenBlack/hosts/master/alternates/gambling/hosts"
porn="https://raw.githubusercontent.com/StevenBlack/hosts/master/alternates/porn/hosts"
social="https://raw.githubusercontent.com/StevenBlack/hosts/master/alternates/social/hosts"
fakenews_gambling="https://raw.githubusercontent.com/StevenBlack/hosts/master/alternates/fakenews-gambling/hosts"
fakenews_porn="https://raw.githubusercontent.com/StevenBlack/hosts/master/alternates/fakenews-porn/hosts"
fakenews_social="https://raw.githubusercontent.com/StevenBlack/hosts/master/alternates/fakenews-social/hosts"
gambling_porn="https://raw.githubusercontent.com/StevenBlack/hosts/master/alternates/gambling-porn/hosts"
gambling_social="https://raw.githubusercontent.com/StevenBlack/hosts/master/alternates/gambling-social/hosts"
porn_social="https://raw.githubusercontent.com/StevenBlack/hosts/master/alternates/porn-social/hosts"
fakenews_gambling_porn="https://raw.githubusercontent.com/StevenBlack/hosts/master/alternates/fakenews-gambling-porn/hosts"
fakenews_gambling_social="https://raw.githubusercontent.com/StevenBlack/hosts/master/alternates/fakenews-gambling-social/hosts"
fakenews_porn_social="https://raw.githubusercontent.com/StevenBlack/hosts/master/alternates/fakenews-porn-social/hosts"
gambling_porn_social="https://raw.githubusercontent.com/StevenBlack/hosts/master/alternates/gambling-porn-social/hosts"
fakenews_gambling_porn_social="https://raw.githubusercontent.com/StevenBlack/hosts/master/alternates/fakenews-gambling-porn-social/hosts"


#----------------------------------------------------------------------------------------
# Main

if [ "$OPERATION" == "" ]; then
	echo "donwload default list - fakenews_gambling_porn"
	wget "$fakenews_gambling_porn"
	mv hosts hosts.StevenBlack
	echo "# StevenBlack.lede.txt" >> StevenBlack.lede.txt
	awk '$0~/^0.0.0.0[[:space:]]+([[:alnum:]_-]+.){1,}[[:alpha:]]+([[:space:]]|$)/{print tolower($2)}' hosts.StevenBlack >> StevenBlack.lede.txt
	echo "StevenBlack.lede.txt file ready to upload to OpenWRT host file"
else
	echo "donwload list - $OPERATION"
	wget ${!OPERATION}
	mv hosts hosts.StevenBlack
	echo "# StevenBlack.lede.txt" >> StevenBlack.lede.txt
	awk '$0~/^0.0.0.0[[:space:]]+([[:alnum:]_-]+.){1,}[[:alpha:]]+([[:space:]]|$)/{print tolower($2)}' hosts.StevenBlack >> StevenBlack.lede.txt
	echo "StevenBlack.lede.txt file ready to upload to OpenWRT host file"
fi

#----------------------------------------------------------------------------------------
# Exit

exit 0
#----------------------------------------------------------------------------------------
