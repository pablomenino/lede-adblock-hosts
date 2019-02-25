<h3 align="center">lede-adblock-hosts</h3>
<p align="center">Script to load StevenBlack blocklist host to LEDE Adblock</p>

<p align="center">
<a href="https://github.com/pablomenino/lede-adblock-hosts/releases"><img src="https://img.shields.io/github/release/pablomenino/lede-adblock-hosts.svg"></a>
<a href="./LICENSE"><img src="https://img.shields.io/github/license/pablomenino/lede-adblock-hosts.svg"></a>
</p>

## Table of contents

* [How to Use](#how-to-use)
* [ToDo](#todo)
* [Credit](#credit)

## <a name="how-to-use">How to Use

To Download block list and convert to addblock OpenWRT format, execute:

```bash
./lede-adblock-hosts.sh block-host-list
```

Example:

```bash
./lede-adblock-hosts.sh master
```

list to be downloaded by default: fakenews-gambling-porn

List:

```
master (adware + malware) https://raw.githubusercontent.com/StevenBlack/hosts/master/hosts
fakenews (adware + malware + fakenews) https://raw.githubusercontent.com/StevenBlack/hosts/master/alternates/fakenews/hosts
gambling (adware + malware + gambling) https://raw.githubusercontent.com/StevenBlack/hosts/master/alternates/gambling/hosts
porn (adware + malware + porn) https://raw.githubusercontent.com/StevenBlack/hosts/master/alternates/porn/hosts
social (adware + malware + social) https://raw.githubusercontent.com/StevenBlack/hosts/master/alternates/social/hosts
fakenews_gambling (adware + malware + fakenews + gambling) https://raw.githubusercontent.com/StevenBlack/hosts/master/alternates/fakenews-gambling/hosts
fakenews_porn (adware + malware + fakenews + porn ) https://raw.githubusercontent.com/StevenBlack/hosts/master/alternates/fakenews-porn/hosts
fakenews_social (adware + malware + fakenews + social) https://raw.githubusercontent.com/StevenBlack/hosts/master/alternates/fakenews-social/hosts
gambling_porn (adware + malware + gambling + porn) https://raw.githubusercontent.com/StevenBlack/hosts/master/alternates/gambling-porn/hosts
gambling_social (adware + malware + gambling + social) https://raw.githubusercontent.com/StevenBlack/hosts/master/alternates/gambling-social/hosts
porn_social (adware + malware + porn + social) https://raw.githubusercontent.com/StevenBlack/hosts/master/alternates/porn-social/hosts
fakenews_gambling_porn (adware + malware + fakenews + gambling + porn) https://raw.githubusercontent.com/StevenBlack/hosts/master/alternates/fakenews-gambling-porn/hosts
fakenews_gambling_social (adware + malware + fakenews + gambling + social) https://raw.githubusercontent.com/StevenBlack/hosts/master/alternates/fakenews-gambling-social/hosts
fakenews_porn_social (adware + malware + fakenews + porn + social) https://raw.githubusercontent.com/StevenBlack/hosts/master/alternates/fakenews-porn-social/hosts
gambling_porn_social (adware + malware + gambling + porn + social) https://raw.githubusercontent.com/StevenBlack/hosts/master/alternates/gambling-porn-social/hosts
fakenews_gambling_porn_social (adware + malware + fakenews + gambling + porn + social) https://raw.githubusercontent.com/StevenBlack/hosts/master/alternates/fakenews-gambling-porn-social/hosts
```

## <a name="todo">ToDo

* Upload and apply list to OpenWRT


## <a name="credit">Credit

* [StevenBlack](https://www.github.com/StevenBlack/hosts)

