#!/usr/bin/perl
use strict;
use warnings;

my $prefix = '/usr/local';
my $cronDir = "/etc/cron.hourly";

my @deps = qw(
  libnet-twitter-lite-perl
  libnet-oauth-perl
);

sub run(@){
  print "@_\n";
  system @_;
}

run "sudo apt-get install @deps";
run "sudo cp src/* $prefix/bin";
run "sudo cp logrotate.conf /etc/logrotate.d/twip";

run "sudo rm -f $cronDir/twip";
print "add twips cronjob to $cronDir? [y/N] ";
if(readline STDIN eq "y\n"){
  run "sudo cp cron /etc/cron.daily/twip";
}
