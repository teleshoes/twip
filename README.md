twip - TWitter IP

Twip is for sending and retrieving encrypted IP addresses to/from Twitter.
It is intended to serve as a makeshift alternative to dynamic DNS.

Twip is not affiliated with or endorsed by Twitter,
and using it in any way may violate Twitter's terms of service.

Features:
-gpg encryption
-uses Twitter's OAUTH api through Net::Twitter
-remote devices dont need Net::Twitter

Requirements:
-Net::Twitter for twips
-wget and perl5.10+ (and standard modules) for twipc

Files:
twip - TWitter IP
  core script; interacts with Net::Twitter and gpg
twipc - TWitter IP Client
  fetches ip from twitter, and maintains a cache.
  if Net::Twitter is not present, falls back on wget
twips - TWitter IP Server
  gets external ip and tweets it
extip - EXTernal IP
  simple perl script for fetching IP by asking a known, fixed server
~/.twip
  config file for twitter screen name and oauth config.
  sample:
  > cat ~/.twip
  accessToken=046527185-bcDsuLi9OKCohKCpZKUpwb20xIDAwOTEgMDavM1I
  accessTokenSecret=15L1A5MSAwMzUafia981df415s135n1j3n1ZygoKlkp
  consumerKey=Oy4xW3BsaWp1bjRvY24xb
  consumerSecret=dO1s7MTk4aDMxNW4KW3L2dcXDtKRjJuRmpHNDtpSkQK
  screenName=mytwitterip23
