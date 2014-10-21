use strict;
use warnings;
package Dist::Zilla::Plugin::MungeFile::WithData;
BEGIN {
  $Dist::Zilla::Plugin::MungeFile::WithData::AUTHORITY = 'cpan:ETHER';
}
# ABSTRACT: (DEPRECATED) Modify files in the build, with templates and DATA section
# vim: set ts=8 sw=4 tw=78 et :
$Dist::Zilla::Plugin::MungeFile::WithData::VERSION = '0.007';
use Moose;
extends 'Dist::Zilla::Plugin::MungeFile::WithDataSection';
use namespace::autoclean;

before register_component => sub {
    warn "!!! [MungeFile::WithData] is deprecated and will be removed in a future release; replace it with [MungeFile::WithDataSection]\n";
};

__PACKAGE__->meta->make_immutable;

__END__

=pod

=encoding UTF-8

=for :stopwords Karen Etheridge

=head1 NAME

Dist::Zilla::Plugin::MungeFile::WithData - (DEPRECATED) Modify files in the build, with templates and DATA section

=head1 VERSION

version 0.007

=head1 SYNOPSIS

In your F<dist.ini>:

    [MungeFile::WithData]
    file = lib/My/Module.pm
    house = maison

=head1 DESCRIPTION

This is the deprecated form of the
L<[MungeFile::WithDataSection]|Dist::Zilla::Plugin::MungeFile::WithDataSection> plugin.
See its documentation for a full list of options available.

=head1 AUTHOR

Karen Etheridge <ether@cpan.org>

=head1 COPYRIGHT AND LICENSE

This software is copyright (c) 2013 by Karen Etheridge.

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.

=cut
