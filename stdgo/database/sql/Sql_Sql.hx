package stdgo.database.sql;
/**
    Package sql provides a generic interface around SQL (or SQL-like)
    databases.
    
    The sql package must be used in conjunction with a database driver.
    See https://golang.org/s/sqldrivers for a list of drivers.
    
    Drivers that do not support context cancellation will not return until
    after the query is completed.
    
    For usage examples, see the wiki page at
    https://golang.org/s/sqlwiki.
**/
class Sql {
    /**
        Register makes a database driver available by the provided name.
        If Register is called twice with the same name or if driver is nil,
        it panics.
    **/
    static public inline function register(_name:String, _driver:Driver):Void {
        final _name = (_name : stdgo.GoString);
        stdgo._internal.database.sql.Sql_register.register(_name, _driver);
    }
    /**
        Drivers returns a sorted list of the names of the registered drivers.
    **/
    static public inline function drivers():Array<String> {
        return [for (i in stdgo._internal.database.sql.Sql_drivers.drivers()) i];
    }
    /**
        Named provides a more concise way to create NamedArg values.
        
        Example usage:
        
        	db.ExecContext(ctx, `
        	    delete from Invoice
        	    where
        	        TimeCreated < @end
        	        and TimeCreated >= @start;`,
        	    sql.Named("start", startTime),
        	    sql.Named("end", endTime),
        	)
    **/
    static public inline function named(_name:String, _value:stdgo.AnyInterface):NamedArg {
        final _name = (_name : stdgo.GoString);
        final _value = (_value : stdgo.AnyInterface);
        return stdgo._internal.database.sql.Sql_named.named(_name, _value);
    }
    /**
        OpenDB opens a database using a Connector, allowing drivers to
        bypass a string based data source name.
        
        Most users will open a database via a driver-specific connection
        helper function that returns a *DB. No database drivers are included
        in the Go standard library. See https://golang.org/s/sqldrivers for
        a list of third-party drivers.
        
        OpenDB may just validate its arguments without creating a connection
        to the database. To verify that the data source name is valid, call
        Ping.
        
        The returned DB is safe for concurrent use by multiple goroutines
        and maintains its own pool of idle connections. Thus, the OpenDB
        function should be called just once. It is rarely necessary to
        close a DB.
    **/
    static public inline function openDB(_c:Connector):DB {
        return stdgo._internal.database.sql.Sql_openDB.openDB(_c);
    }
    /**
        Open opens a database specified by its database driver name and a
        driver-specific data source name, usually consisting of at least a
        database name and connection information.
        
        Most users will open a database via a driver-specific connection
        helper function that returns a *DB. No database drivers are included
        in the Go standard library. See https://golang.org/s/sqldrivers for
        a list of third-party drivers.
        
        Open may just validate its arguments without creating a connection
        to the database. To verify that the data source name is valid, call
        Ping.
        
        The returned DB is safe for concurrent use by multiple goroutines
        and maintains its own pool of idle connections. Thus, the Open
        function should be called just once. It is rarely necessary to
        close a DB.
    **/
    static public inline function open(_driverName:String, _dataSourceName:String):stdgo.Tuple<DB, stdgo.Error> {
        final _driverName = (_driverName : stdgo.GoString);
        final _dataSourceName = (_dataSourceName : stdgo.GoString);
        return {
            final obj = stdgo._internal.database.sql.Sql_open.open(_driverName, _dataSourceName);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
