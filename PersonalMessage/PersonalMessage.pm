package MSN::PersonalMessage;

use 5.006;
use strict;
use warnings;

require Exporter;
require DynaLoader;

our @ISA = qw(Exporter DynaLoader);

our %EXPORT_TAGS = ( 'all' => [ qw(Change Disable) ] );
our @EXPORT_OK = ( @{ $EXPORT_TAGS{'all'} } );
our @EXPORT = qw();
our $VERSION = '0.02';

bootstrap MSN::PersonalMessage $VERSION;

1;
__END__

=head1 NAME

MSN::PersonalMessage - Perl extension for change MSN Personal Message

=head1 SYNOPSIS

  use MSN::PersonalMessage qw(Change Disable);

  Change("Music", "This is my text");
  # Change("Games", "This is my text");
  # Change("Office", "This is my text");
  Disable();

=head1 DESCRIPTION

  This is a module for change MSN Personal Message.

=head2 NOTE

   Text is support Multibyte charset.

=head2 PPM DISTRIBUTION

   If you are using ActivePerl, you can also install with the command
   ppm install http://tw.kuso.cc/MSN-PersonalMessage.ppd

=head1 AUTHOR

Lilo Huang (kenwu@cpan.org)

http://blog.roodo.com/kenwu/


=head1 COPYRIGHT AND LICENSE

Copyright 2008 by Lilo Huang All Rights Reserved.

You can use this module under the same terms as Perl itself.

=cut