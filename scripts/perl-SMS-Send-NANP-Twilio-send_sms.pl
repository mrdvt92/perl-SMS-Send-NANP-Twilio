#!/usr/bin/perl
use strict;
use warnings;
use DateTime;
use SMS::Send::NANP::Twilio;
use Getopt::Std;

my %settings    = ();
my $opt       = {};
getopts('s:t::m:f:', $opt);
$settings{'AccountSid'}          = $opt->{'s'} if $opt->{'s'};
$settings{'AuthToken'}           = $opt->{'t'} if $opt->{'t'};
$settings{'MessagingServiceSid'} = $opt->{'m'} if $opt->{'m'};
$settings{'From'}                = $opt->{'f'} if $opt->{'f'};

my $syntax    = qq{$0 [-u AccountSid] [-t AuthToken] [-m MessagingServiceSid] [-f From] phone "text"\n};
my $to        = shift or die($syntax);
my $text      = shift or die($syntax);

my $service = SMS::Send::NANP::Twilio->new(%settings);

my $status  = $service->send_sms(to => $to, text => $text);
printf "%s: Phone: %s, Text: %s, Status: %s\n", DateTime->now, $to, $text, $status;

__END__

=head1 NAME

perl-SMS-Send-NANP-Twilio-send_sms.pl - SMS::Send::NANP::Twilio Example script

=cut
