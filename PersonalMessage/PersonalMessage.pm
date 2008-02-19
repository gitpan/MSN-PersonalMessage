package MSN::PersonalMessage;

use 5.006;
use strict;
use warnings;

require Exporter;
require DynaLoader;

our @ISA = qw(Exporter DynaLoader);

# Items to export into callers namespace by default. Note: do not export
# names by default without a very good reason. Use EXPORT_OK instead.
# Do not simply export all your public functions/methods/constants.

# This allows declaration        use MSN::PersonalMessage ':all';
# If you do not need this, moving things directly into @EXPORT or @EXPORT_OK
# will save memory.
our %EXPORT_TAGS = ( 'all' => [ qw(Change Disable) ] );
our @EXPORT_OK = ( @{ $EXPORT_TAGS{'all'} } );
our @EXPORT = qw();
our $VERSION = '0.01';

bootstrap MSN::PersonalMessage $VERSION;

# Preloaded methods go here.

1;
__END__
# Below is stub documentation for your module. You better edit it!

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

   Text length must less than 512 byte, and it support Multibyte charset.

=head1 AUTHOR

Lilo Huang (kenwu@cpan.org)

http://blog.roodo.com/kenwu/


=head1 COPYRIGHT AND LICENSE

Copyright 2008 by Lilo Huang All Rights Reserved.

You can use this module under the same terms as Perl itself.

=cut