package Local::MonDB::Schema::Result::Attack;
use 5.012;
use strict;
use warnings;
use base 'DBIx::Class::Core';

__PACKAGE__->table('attacks');
__PACKAGE__->add_columns(
    atkid => {
        data_type         => 'integer',
        is_nullable       => 0,
        is_auto_increment => 1,
    },
    monster => {
        data_type   => 'integer',
        is_nullable => 0,
    },
    sort_index => {
        data_type   => 'integer',
        is_nullable => 0,
    },
    at => {
        data_type   => 'varchar',
        is_nullable => 0,
    },
    ad => {
        data_type   => 'varchar',
        is_nullable => 0,
    },
    dn => {
        data_type   => 'integer',
        is_nullable => 0,
    },
    ds => {
        data_type   => 'integer',
        is_nullable => 0,
    },
);

__PACKAGE__->set_primary_key('atkid');
__PACKAGE__->belongs_to('monster', 'Local::MonDB::Schema::Result::Monster');

1;
