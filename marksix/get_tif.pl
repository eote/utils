#!/usr/bin/perl -w
use strict;


my $host = 'http://tk1.922966.com:16880/zhitif/';
my %press = (
    "曾道人"=>[qw/043 044/],
    "白小姐旗袍"=>[qw/003 004/],
);

my $ext = shift(@ARGV) || 'tif';
sub run {
    print STDERR join(" ",@_),"\n";
    return system(@_) == 0;
}
foreach my $name (keys %press) {
    my @id = @{$press{$name}};
    my $idx = ord('a');
    foreach(@id) {
        my $url = $host . $_ . ".$ext";
        my $file = $name . chr($idx) . ".$ext";
        run("curl","-o",$file,"-e",$url,$url);
        $idx++;
    }
}
