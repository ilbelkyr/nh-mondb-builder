package Local::MonDB::Schema::Result::Flag;
use 5.012;
use strict;
use warnings;
use base 'DBIx::Class::Core';

__PACKAGE__->table('flags');
__PACKAGE__->add_columns(
    flagid => {
        data_type         => 'integer',
        is_nullable       => 0,
        is_auto_increment => 1,
    },
    monster => {
        data_type   => 'integer',
        is_nullable => 0,
    },
    name => {
        data_type   => 'varchar',
        is_nullable => 0,
    },
);

__PACKAGE__->set_primary_key('flagid');
__PACKAGE__->belongs_to('monster', 'Local::MonDB::Schema::Result::Monster');

1;
