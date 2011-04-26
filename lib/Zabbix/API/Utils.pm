package Zabbix::API::Utils;

use strict;
use warnings;

use parent 'Exporter';

our @EXPORT_OK = qw(RE_FORMULA);

use constant RE_FORMULA =>
    qr/(?<function_call>\w+\(
         (?<function_args_quote>['"]?)
         (?<function_args>
           ((?<host>[\w ._-]+)
           :
           (?<item>[\w.,_]+)
           \[
             (?<item_arg>(\w+)(,(\w+))*)
           \])
           |
           .*?)
         \g{function_args_quote}
       \))/x;

# TODO: rendre les guillemets optionnels, support de plusieurs function_args

1;
__END__
=pod

=head1 NAME

Zabbix::Utils -- Useful miscellanea related to Zabbix

=head1 SYNOPSIS

  use Zabbix::Utils qw/RE_FORMULA/;

  my $regexp = RE_FORMULA;

  while ($formula =~ m/$regexp/g) {

      my %this_match = %+;

      push @matches, (\%this_match);

  }

=head1 DESCRIPTION

TODO write this

=head1 ATTRIBUTES

=over 4

=item attribute1

TODO write this

=item attribute2

TODO write this

=back

=head1 METHODS

=over 4

=item method(args)

TODO write this

=back

=head1 EXPORTS

None by default.

=over 4

=item $RE_FORMULA

TODO write this

=back

=head1 SEE ALSO

TODO links to other pods and documentation

=head1 AUTHOR

Fabrice Gabolde <fabrice.gabolde@uperto.com>

=head1 COPYRIGHT AND LICENSE

Copyright (C) 2010 SFR

This library is free software; you can redistribute it and/or modify it under
the same terms as Perl itself, either Perl version 5.10.0 or, at your option,
any later version of Perl 5 you may have available.

=cut
