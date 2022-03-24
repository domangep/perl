#!/usr/bin/perl
use strict;
use warnings;

# first, create your message
use Email::MIME;
my $message = Email::MIME->create(
  header_str => [
    From    => 'patrice.domange@gmail.com',
    To      => 'patrice.domange@gmail.com',
    Subject => 'test',
  ],
  attributes => {
    encoding => 'quoted-printable',
    charset  => 'ISO-8859-1',
  },
  body_str => "test!\n",
);

# send the message
use Email::Sender::Simple qw(sendmail);
sendmail($message);