#!/usr/bin/perl
use Filesys::Df;
use Env qw(BLOCK_INSTANCE);

if ($ENV{'BLOCK_BUTTON'} == 1) {
    system("nemo");
} elsif ($ENV{'BLOCK_BUTTON'} == 3) {
    system("gnome-system-monitor -f");
}
my $ref = df($ENV{'BLOCK_INSTANCE'});
my $df = $ref->{bfree}/1000000;
print "free: $df";
