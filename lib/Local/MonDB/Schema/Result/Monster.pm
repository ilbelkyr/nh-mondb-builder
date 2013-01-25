package Local::MonDB::Schema::Result::Monster;
use 5.012;
use strict;
use warnings;
use base 'DBIx::Class::Core';

__PACKAGE__->table('monsters');
__PACKAGE__->add_columns(
    monid => {
        data_type         => 'integer',
        is_nullable       => 0,
        is_auto_increment => 1,
    },
    name => {
        data_type   => 'varchar',
        is_nullable => 0,
    },
    ac => {
        data_type   => 'integer',
        is_nullable => 0,
    },
    align => {
        data_type   => 'integer',
        is_nullable => 0,
    },
    baselev => {
        data_type   => 'integer',
        is_nullable => 0,
    },
    color => {
        data_tye    => 'varchar',
        is_nullable => 0,
    },
    # TODO: confer
    # TODO: flags
    frequency => {
        data_type   => 'integer',
        is_nullable => 0,
    },
    # TODO: gflags
    glyph => {
        data_type   => 'char',
        size        => 1,
        is_nullable => 0,
    },
    mr => {
        data_type   => 'integer',
        is_nullable => 0,
    },
    nutrition => {
        data_type   => 'integer',
        is_nullable => 0,
    },
    pxl => {
        data_type   => 'varchar',
        is_nullable => 0,
    },
    # TODO: resist
    size => {
        data_type   => 'varchar',
        is_nullable => 0,
    },
    sound => {
        data_type   => 'varchar',
        is_nullable => 0,
    },
    speed => {
        data_type   => 'integer',
        is_nullable => 0,
    },
    weight => {
        data_type   => 'integer',
        is_nullable => 0,
    },
);

__PACKAGE__->set_primary_key('monid');
__PACKAGE__->has_many('attacks', 'Local::MonDB::Schema::Result::Attack', 'monster');
# Currently also stores resistances, conferred resistances, etc.
__PACKAGE__->has_many('flags', 'Local::MonDB::Schema::Result::Flag', 'monster');

1;
