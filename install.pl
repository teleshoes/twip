#!/usr/bin/perl
use strict;
use warnings;

my $prefix = '/usr/local';

print "handling prereq, Net::Twitter::Lite perl module\n";
system "sudo apt-get install libnet-twitter-lite-perl";

my $cmd = "sudo cp src/* $prefix/bin"; 
system "echo $cmd";
system $cmd;

