
use strict;
use warnings;



use ExtUtils::MakeMaker 6.11;



my %WriteMakefileArgs = (
                       'test' => {
                                   'TESTS' => 't/*.t'
                                 },
                       'NAME' => 'MooseX::Meta::TypeConstraint::Intersection',
                       'DISTNAME' => 'MooseX-Meta-TypeConstraint-Intersection',
                       'AUTHOR' => 'Florian Ragwitz <rafl@debian.org>',
                       'ABSTRACT' => 'An intersection of Moose type constraints',
                       'EXE_FILES' => [],
                       'VERSION' => '0.02',
                       'LICENSE' => 'perl',
                       'PREREQ_PM' => {
                                        'MooseX::Types::Moose' => '0',
                                        'Test::More' => '0.88',
                                        'namespace::autoclean' => '0',
                                        'ExtUtils::MakeMaker' => '6.11',
                                        'aliased' => '0',
                                        'Moose' => '0'
                                      }
                     );


delete $WriteMakefileArgs{LICENSE}
  unless eval { ExtUtils::MakeMaker->VERSION(6.31) };

WriteMakefile(%WriteMakefileArgs);



