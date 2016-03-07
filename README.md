# watch tv using VLC

* Connect ATSC card to computer
* install w-scan and vlc
  * `sudo apt-get -y install w-scan vlc`
* make a folder for channel info
  * `mkdir ~/hdtv`
* generate channel list using w-scan
  * `w_scan -c US -X > ~/hdtv/channels.conf`
* watch tv using vlc
  * `vlc ~/hdtv/channels.con`

  
  

https://askubuntu.com/questions/20204/which-application-do-you-recommend-for-watching-tv-dvb/20213#20213