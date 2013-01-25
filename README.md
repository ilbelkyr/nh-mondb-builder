## Warning:

**tl;dr: Don't use this unless you have no other choice.**

This code is not exactly what most people would consider
"good" code. That said, it seems to work... mostly.

I wrote this quite some time ago, so I'm not sure about
most of the details of the code. You *could* ask me
about it, but I can't guarantee that I will be able to
answer correctly (or at all).

The only reason I uploaded this is that I've been asked
to. I don't guarantee that it works. It's not *that*
unlikely, I think.  
I also cannot guarantee that reading the source will
make Cthulhu eat your soul. It's not *that* unlikely,
I think.

## Requirements

To create the database, you need:

* Perl (at least 5.12, not tested with older versions);
* DBI;
* DBIx::Class (and the dbicadmin program);
* various modules included with Perl.

SQLite is also recommended as this has not been tested with
other DBs and likely will mysteriously stop working when
confronted with a database demanding something as exotic
as a "username" or a "password". (In other words, I was
lazy and didn't code for that.)

## Making it work (hopefully)

(Below, `<dsn>` is the data source, for example '`dbi:SQLite:mon.db`'
 for an SQLite database in the `mon.db` file.)

To deploy the schema to the database, use this command:

    PERL5LIB=./lib dbicadmin --deploy --schema-class Local::MonDB::Schema --connect-info dsn=<dsn>

(This assumes no user/password needs to be specified.)

Now, to read monst.c and populate the database, use

    ./parse_monst --monst=</path/to/monst.c> --hash | ./populate_db <dsn>

That's it -- you should have a working monster database to do
queries against now. Well, in a minute or so; it's not exactly
optimized...
