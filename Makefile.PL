
use strict;
use warnings;

use ExtUtils::MakeMaker;

WriteMakefile(
  DISTNAME  => 'MooseX-Meta-TypeConstraint-Intersection',
  NAME      => 'MooseX::Meta::TypeConstraint::Intersection',
  AUTHOR    => 'Florian\ Ragwitz\ \<rafl\@debian\.org\>',
  ABSTRACT  => 'An\ intersection\ of\ Moose\ type\ constraints',
  VERSION   => '0.01',
  EXE_FILES => [ qw() ],
  (eval { ExtUtils::MakeMaker->VERSION(6.21) } ? (LICENSE => 'perl') : ()),
  PREREQ_PM    => {
    "MooseX::Types::Moose" => '0',
    "namespace::autoclean" => '0',
    "aliased" => '0',
    "Moose" => '0',
  },
);
