#!/usr/bin/perl -w
my $baseurl = 'http://tk1.922966.com:16880/xml/Page0.js?Date=';
my $date=`date +'%a %b %d %Y %T GMT%z (%Z)'`;

system('download','-f','-s','Page.html',$baseurl . $date);
