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
our $VERSION = '0.03';

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

=head1 AUTHOR

Lilo Huang

=head1 COPYRIGHT AND LICENSE

Copyright 2008 by Lilo Huang All Rights Reserved.

You can use this module under the same terms as Perl itself.

=cut