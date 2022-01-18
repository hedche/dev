#!/usr/bin/perl
#Author: Monty Rhodes
#Created on: 10/01/2022
#The purpose of this script is to sort files from one directory to two separate directories, depending on the filename of said files.

use strict;
use warnings;
use v5.10;

print "Please input the path of directory to be sorted e.g. /home/user/Downloads/ : ";
my $name = <STDIN>;
chomp $name;

my $fullpath = "${name}*";
say $fullpath;

my @array = ( "fwfkmowmfs01e05fAEGR.MP4", "FEF1080pilm1", "GEhtebS03e30eb", "Yes");

my @dirs = glob('/var/lib/transmission-daemon/downloads/*');

foreach my $item (@dirs) {

	#Regex with case insensitivity m/<pattern>/i
	if ($item =~ m/[sS][0-9]{2}[eE][0-9]{2}/i ){
	
		say("TV");
	}
	elsif ($item =~ /[0-9]{4}/) {

		say("Film");
	}
	else {
		say("N/A");
	}
}	
