package stdgo.database.sql;
var levelDefault : IsolationLevel = 0i64;
var levelReadUncommitted : IsolationLevel = 1i64;
var levelReadCommitted : IsolationLevel = 2i64;
var levelWriteCommitted : IsolationLevel = 3i64;
var levelRepeatableRead : IsolationLevel = 4i64;
var levelSnapshot : IsolationLevel = 5i64;
var levelSerializable : IsolationLevel = 6i64;
var levelLinearizable : IsolationLevel = 7i64;
var errNoRows(get, set) : stdgo.Error;
private function get_errNoRows():stdgo.Error return stdgo._internal.database.sql.Sql_errnorows.errNoRows;
private function set_errNoRows(v:stdgo.Error):stdgo.Error {
        stdgo._internal.database.sql.Sql_errnorows.errNoRows = v;
        return v;
    }
var errConnDone(get, set) : stdgo.Error;
private function get_errConnDone():stdgo.Error return stdgo._internal.database.sql.Sql_errconndone.errConnDone;
private function set_errConnDone(v:stdgo.Error):stdgo.Error {
        stdgo._internal.database.sql.Sql_errconndone.errConnDone = v;
        return v;
    }
var errTxDone(get, set) : stdgo.Error;
private function get_errTxDone():stdgo.Error return stdgo._internal.database.sql.Sql_errtxdone.errTxDone;
private function set_errTxDone(v:stdgo.Error):stdgo.Error {
        stdgo._internal.database.sql.Sql_errtxdone.errTxDone = v;
        return v;
    }
typedef Scanner = stdgo._internal.database.sql.Sql_scanner.Scanner;
typedef Result = stdgo._internal.database.sql.Sql_result.Result;
typedef NamedArg = stdgo._internal.database.sql.Sql_namedarg.NamedArg;
typedef TxOptions = stdgo._internal.database.sql.Sql_txoptions.TxOptions;
typedef NullString = stdgo._internal.database.sql.Sql_nullstring.NullString;
typedef NullInt64 = stdgo._internal.database.sql.Sql_nullint64.NullInt64;
typedef NullInt32 = stdgo._internal.database.sql.Sql_nullint32.NullInt32;
typedef NullInt16 = stdgo._internal.database.sql.Sql_nullint16.NullInt16;
typedef NullByte = stdgo._internal.database.sql.Sql_nullbyte.NullByte;
typedef NullFloat64 = stdgo._internal.database.sql.Sql_nullfloat64.NullFloat64;
typedef NullBool = stdgo._internal.database.sql.Sql_nullbool.NullBool;
typedef NullTime = stdgo._internal.database.sql.Sql_nulltime.NullTime;
typedef Out = stdgo._internal.database.sql.Sql_out.Out;
typedef DB = stdgo._internal.database.sql.Sql_db.DB;
typedef DBStats = stdgo._internal.database.sql.Sql_dbstats.DBStats;
typedef Conn = stdgo._internal.database.sql.Sql_conn.Conn;
typedef Tx = stdgo._internal.database.sql.Sql_tx.Tx;
typedef Stmt = stdgo._internal.database.sql.Sql_stmt.Stmt;
typedef Rows = stdgo._internal.database.sql.Sql_rows.Rows;
typedef ColumnType = stdgo._internal.database.sql.Sql_columntype.ColumnType;
typedef Row = stdgo._internal.database.sql.Sql_row.Row;
typedef IsolationLevel = stdgo._internal.database.sql.Sql_isolationlevel.IsolationLevel;
typedef RawBytes = stdgo._internal.database.sql.Sql_rawbytes.RawBytes;
typedef NamedArgPointer = stdgo._internal.database.sql.Sql_namedargpointer.NamedArgPointer;
typedef TxOptionsPointer = stdgo._internal.database.sql.Sql_txoptionspointer.TxOptionsPointer;
typedef NullStringPointer = stdgo._internal.database.sql.Sql_nullstringpointer.NullStringPointer;
typedef NullInt64Pointer = stdgo._internal.database.sql.Sql_nullint64pointer.NullInt64Pointer;
typedef NullInt32Pointer = stdgo._internal.database.sql.Sql_nullint32pointer.NullInt32Pointer;
typedef NullInt16Pointer = stdgo._internal.database.sql.Sql_nullint16pointer.NullInt16Pointer;
typedef NullBytePointer = stdgo._internal.database.sql.Sql_nullbytepointer.NullBytePointer;
typedef NullFloat64Pointer = stdgo._internal.database.sql.Sql_nullfloat64pointer.NullFloat64Pointer;
typedef NullBoolPointer = stdgo._internal.database.sql.Sql_nullboolpointer.NullBoolPointer;
typedef NullTimePointer = stdgo._internal.database.sql.Sql_nulltimepointer.NullTimePointer;
typedef OutPointer = stdgo._internal.database.sql.Sql_outpointer.OutPointer;
typedef DBPointer = stdgo._internal.database.sql.Sql_dbpointer.DBPointer;
typedef DBStatsPointer = stdgo._internal.database.sql.Sql_dbstatspointer.DBStatsPointer;
typedef ConnPointer = stdgo._internal.database.sql.Sql_connpointer.ConnPointer;
typedef TxPointer = stdgo._internal.database.sql.Sql_txpointer.TxPointer;
typedef StmtPointer = stdgo._internal.database.sql.Sql_stmtpointer.StmtPointer;
typedef RowsPointer = stdgo._internal.database.sql.Sql_rowspointer.RowsPointer;
typedef ColumnTypePointer = stdgo._internal.database.sql.Sql_columntypepointer.ColumnTypePointer;
typedef RowPointer = stdgo._internal.database.sql.Sql_rowpointer.RowPointer;
typedef IsolationLevelPointer = stdgo._internal.database.sql.Sql_isolationlevelpointer.IsolationLevelPointer;
typedef RawBytesPointer = stdgo._internal.database.sql.Sql_rawbytespointer.RawBytesPointer;
/**
    * Package sql provides a generic interface around SQL (or SQL-like)
    * databases.
    * 
    * The sql package must be used in conjunction with a database driver.
    * See https://golang.org/s/sqldrivers for a list of drivers.
    * 
    * Drivers that do not support context cancellation will not return until
    * after the query is completed.
    * 
    * For usage examples, see the wiki page at
    * https://golang.org/s/sqlwiki.
**/
class Sql {
    /**
        * Register makes a database driver available by the provided name.
        * If Register is called twice with the same name or if driver is nil,
        * it panics.
    **/
    static public inline function register(_name:stdgo.GoString, _driver:stdgo._internal.database.sql.driver.Driver_driver.Driver):Void stdgo._internal.database.sql.Sql_register.register(_name, _driver);
    /**
        * Drivers returns a sorted list of the names of the registered drivers.
    **/
    static public inline function drivers():stdgo.Slice<stdgo.GoString> return stdgo._internal.database.sql.Sql_drivers.drivers();
    /**
        * Named provides a more concise way to create NamedArg values.
        * 
        * Example usage:
        * 
        * 	db.ExecContext(ctx, `
        * 	    delete from Invoice
        * 	    where
        * 	        TimeCreated < @end
        * 	        and TimeCreated >= @start;`,
        * 	    sql.Named("start", startTime),
        * 	    sql.Named("end", endTime),
        * 	)
    **/
    static public inline function named(_name:stdgo.GoString, _value:stdgo.AnyInterface):stdgo._internal.database.sql.Sql_namedarg.NamedArg return stdgo._internal.database.sql.Sql_named.named(_name, _value);
    /**
        * OpenDB opens a database using a Connector, allowing drivers to
        * bypass a string based data source name.
        * 
        * Most users will open a database via a driver-specific connection
        * helper function that returns a *DB. No database drivers are included
        * in the Go standard library. See https://golang.org/s/sqldrivers for
        * a list of third-party drivers.
        * 
        * OpenDB may just validate its arguments without creating a connection
        * to the database. To verify that the data source name is valid, call
        * Ping.
        * 
        * The returned DB is safe for concurrent use by multiple goroutines
        * and maintains its own pool of idle connections. Thus, the OpenDB
        * function should be called just once. It is rarely necessary to
        * close a DB.
    **/
    static public inline function openDB(_c:stdgo._internal.database.sql.driver.Driver_connector.Connector):stdgo.Ref<stdgo._internal.database.sql.Sql_db.DB> return stdgo._internal.database.sql.Sql_opendb.openDB(_c);
    /**
        * Open opens a database specified by its database driver name and a
        * driver-specific data source name, usually consisting of at least a
        * database name and connection information.
        * 
        * Most users will open a database via a driver-specific connection
        * helper function that returns a *DB. No database drivers are included
        * in the Go standard library. See https://golang.org/s/sqldrivers for
        * a list of third-party drivers.
        * 
        * Open may just validate its arguments without creating a connection
        * to the database. To verify that the data source name is valid, call
        * Ping.
        * 
        * The returned DB is safe for concurrent use by multiple goroutines
        * and maintains its own pool of idle connections. Thus, the Open
        * function should be called just once. It is rarely necessary to
        * close a DB.
    **/
    static public inline function open(_driverName:stdgo.GoString, _dataSourceName:stdgo.GoString):{ var _0 : stdgo.Ref<stdgo._internal.database.sql.Sql_db.DB>; var _1 : stdgo.Error; } return stdgo._internal.database.sql.Sql_open.open(_driverName, _dataSourceName);
}
