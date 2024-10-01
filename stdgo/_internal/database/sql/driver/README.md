# Module: `stdgo._internal.database.sql.driver`

[(view library index)](../../../../stdgo.md)


# Overview


# Index


- [Variables](<#variables>)

- [`function _callValuerValue(_vr:stdgo._internal.database.sql.driver.Valuer):{
	_1:stdgo.Error;
	_0:stdgo._internal.database.sql.driver.Value;
}`](<#function-_callvaluervalue>)

- [`function isScanValue(_v:stdgo.AnyInterface):Bool`](<#function-isscanvalue>)

- [`function isValue(_v:stdgo.AnyInterface):Bool`](<#function-isvalue>)

- [class NamedValue](<#class-namedvalue>)

  - [`function new(?name:stdgo.GoString, ?ordinal:stdgo.GoInt, ?value:Null<stdgo._internal.database.sql.driver.Value>):Void`](<#namedvalue-function-new>)

- [class NotNull](<#class-notnull>)

  - [`function new(?converter:Null<stdgo._internal.database.sql.driver.ValueConverter>):Void`](<#notnull-function-new>)

- [class Null\_](<#class-null_>)

  - [`function new(?converter:Null<stdgo._internal.database.sql.driver.ValueConverter>):Void`](<#null_-function-new>)

- [class T\_boolType](<#class-t_booltype>)

  - [`function new():Void`](<#t_booltype-function-new>)

- [class T\_defaultConverter](<#class-t_defaultconverter>)

  - [`function new():Void`](<#t_defaultconverter-function-new>)

- [class T\_int32Type](<#class-t_int32type>)

  - [`function new():Void`](<#t_int32type-function-new>)

- [class T\_noRows](<#class-t_norows>)

  - [`function new():Void`](<#t_norows-function-new>)

- [class T\_stringType](<#class-t_stringtype>)

  - [`function new():Void`](<#t_stringtype-function-new>)

- [class TxOptions](<#class-txoptions>)

  - [`function new(?isolation:Null<stdgo._internal.database.sql.driver.IsolationLevel>, ?readOnly:Bool):Void`](<#txoptions-function-new>)

- [typedef ColumnConverter](<#typedef-columnconverter>)

- [typedef Conn](<#typedef-conn>)

- [typedef ConnBeginTx](<#typedef-connbegintx>)

- [typedef ConnPrepareContext](<#typedef-connpreparecontext>)

- [typedef Connector](<#typedef-connector>)

- [typedef Driver](<#typedef-driver>)

- [typedef DriverContext](<#typedef-drivercontext>)

- [typedef Execer](<#typedef-execer>)

- [typedef ExecerContext](<#typedef-execercontext>)

- [typedef IsolationLevel](<#typedef-isolationlevel>)

- [typedef NamedValueChecker](<#typedef-namedvaluechecker>)

- [typedef Pinger](<#typedef-pinger>)

- [typedef Queryer](<#typedef-queryer>)

- [typedef QueryerContext](<#typedef-queryercontext>)

- [typedef Result](<#typedef-result>)

- [typedef Rows](<#typedef-rows>)

- [typedef RowsAffected](<#typedef-rowsaffected>)

- [typedef RowsColumnTypeDatabaseTypeName](<#typedef-rowscolumntypedatabasetypename>)

- [typedef RowsColumnTypeLength](<#typedef-rowscolumntypelength>)

- [typedef RowsColumnTypeNullable](<#typedef-rowscolumntypenullable>)

- [typedef RowsColumnTypePrecisionScale](<#typedef-rowscolumntypeprecisionscale>)

- [typedef RowsColumnTypeScanType](<#typedef-rowscolumntypescantype>)

- [typedef RowsNextResultSet](<#typedef-rowsnextresultset>)

- [typedef SessionResetter](<#typedef-sessionresetter>)

- [typedef Stmt](<#typedef-stmt>)

- [typedef StmtExecContext](<#typedef-stmtexeccontext>)

- [typedef StmtQueryContext](<#typedef-stmtquerycontext>)

- [typedef T\_decimalDecompose](<#typedef-t_decimaldecompose>)

- [typedef Tx](<#typedef-tx>)

- [typedef Validator](<#typedef-validator>)

- [typedef Value](<#typedef-value>)

- [typedef ValueConverter](<#typedef-valueconverter>)

- [typedef Valuer](<#typedef-valuer>)

# Variables


```haxe
import stdgo._internal.database.sql.driver.Driver_string
```


```haxe
var errSkip:stdgo.Error
```


```haxe
var errBadConn:stdgo.Error
```


```haxe
var errRemoveArgument:stdgo.Error
```


```haxe
var _valuerReflectType:stdgo._internal.reflect.Type_
```


```haxe
var __0:stdgo._internal.database.sql.driver.Result
```


```haxe
var __1:stdgo._internal.database.sql.driver.Result
```


```haxe
var __2:stdgo._internal.database.sql.driver.ValueConverter
```


```haxe
var __3:stdgo._internal.database.sql.driver.ValueConverter
```


```haxe
var __4:stdgo._internal.database.sql.driver.ValueConverter
```


```haxe
var bool_:stdgo._internal.database.sql.driver.T_boolType
```


```haxe
var defaultParameterConverter:stdgo._internal.database.sql.driver.T_defaultConverter
```


```haxe
var int32:stdgo._internal.database.sql.driver.T_int32Type
```


```haxe
var resultNoRows:stdgo._internal.database.sql.driver.T_noRows
```


```haxe
var string:stdgo._internal.database.sql.driver.T_stringType
```


# Functions


```haxe
import stdgo._internal.database.sql.driver.Driver_string
```


## function \_callValuerValue


```haxe
function _callValuerValue(_vr:stdgo._internal.database.sql.driver.Valuer):{
	_1:stdgo.Error;
	_0:stdgo._internal.database.sql.driver.Value;
}
```


[\(view code\)](<./Driver_string.hx#L2>)


## function isScanValue


```haxe
function isScanValue(_v:stdgo.AnyInterface):Bool
```


[\(view code\)](<./Driver_string.hx#L2>)


## function isValue


```haxe
function isValue(_v:stdgo.AnyInterface):Bool
```


[\(view code\)](<./Driver_string.hx#L2>)


# Classes


```haxe
import stdgo._internal.database.sql.driver.*
```


## class NamedValue


```haxe
var name:stdgo.GoString
```


```haxe
var ordinal:stdgo.GoInt
```


```haxe
var value:stdgo._internal.database.sql.driver.Value
```


### NamedValue function new


```haxe
function new(?name:stdgo.GoString, ?ordinal:stdgo.GoInt, ?value:Null<stdgo._internal.database.sql.driver.Value>):Void
```


[\(view code\)](<./Driver_NamedValue.hx#L6>)


## class NotNull


```haxe
var converter:stdgo._internal.database.sql.driver.ValueConverter
```


### NotNull function new


```haxe
function new(?converter:Null<stdgo._internal.database.sql.driver.ValueConverter>):Void
```


[\(view code\)](<./Driver_NotNull.hx#L4>)


## class Null\_


```haxe
var converter:stdgo._internal.database.sql.driver.ValueConverter
```


### Null\_ function new


```haxe
function new(?converter:Null<stdgo._internal.database.sql.driver.ValueConverter>):Void
```


[\(view code\)](<./Driver_Null_.hx#L4>)


## class T\_boolType


### T\_boolType function new


```haxe
function new():Void
```


[\(view code\)](<./Driver_T_boolType.hx#L3>)


## class T\_defaultConverter


### T\_defaultConverter function new


```haxe
function new():Void
```


[\(view code\)](<./Driver_T_defaultConverter.hx#L3>)


## class T\_int32Type


### T\_int32Type function new


```haxe
function new():Void
```


[\(view code\)](<./Driver_T_int32Type.hx#L3>)


## class T\_noRows


### T\_noRows function new


```haxe
function new():Void
```


[\(view code\)](<./Driver_T_noRows.hx#L3>)


## class T\_stringType


### T\_stringType function new


```haxe
function new():Void
```


[\(view code\)](<./Driver_T_stringType.hx#L3>)


## class TxOptions


```haxe
var isolation:stdgo._internal.database.sql.driver.IsolationLevel
```


```haxe
var readOnly:Bool
```


### TxOptions function new


```haxe
function new(?isolation:Null<stdgo._internal.database.sql.driver.IsolationLevel>, ?readOnly:Bool):Void
```


[\(view code\)](<./Driver_TxOptions.hx#L5>)


# Typedefs


```haxe
import stdgo._internal.database.sql.driver.*
```


## typedef ColumnConverter


```haxe
typedef ColumnConverter = {
	public function columnConverter(_idx:stdgo.GoInt):stdgo._internal.database.sql.driver.ValueConverter;	// ColumnConverter returns a ValueConverter for the provided column index. If the type of a specific column isn't known or shouldn't be handled specially, DefaultValueConverter can be returned.
};
```


## typedef Conn


```haxe
typedef Conn = {
	public function prepare(_query:stdgo.GoString):{
		_1:stdgo.Error;
		_0:stdgo._internal.database.sql.driver.Stmt;
	};	// Prepare returns a prepared statement, bound to this connection.
	public function close():stdgo.Error;	// Close invalidates and potentially stops any current prepared statements and transactions, marking this connection as no longer in use. Because the sql package maintains a free pool of connections and only calls Close when there's a surplus of idle connections, it shouldn't be necessary for drivers to do their own connection caching. Drivers must ensure all network calls made by Close do not block indefinitely (e.g. apply a timeout).
	public function begin():{
		_1:stdgo.Error;
		_0:stdgo._internal.database.sql.driver.Tx;
	};	// Begin starts and returns a new transaction. Deprecated: Drivers should implement ConnBeginTx instead (or additionally).
};
```


## typedef ConnBeginTx


```haxe
typedef ConnBeginTx = {
	public function beginTx(_ctx:stdgo._internal.context.Context, _opts:stdgo._internal.database.sql.driver.TxOptions):{
		_1:stdgo.Error;
		_0:stdgo._internal.database.sql.driver.Tx;
	};	// BeginTx starts and returns a new transaction. If the context is canceled by the user the sql package will call Tx.Rollback before discarding and closing the connection. This must check opts.Isolation to determine if there is a set isolation level. If the driver does not support a non-default level and one is set or if there is a non-default isolation level that is not supported, an error must be returned. This must also check opts.ReadOnly to determine if the read-only value is true to either set the read-only transaction property if supported or return an error if it is not supported.
};
```


## typedef ConnPrepareContext


```haxe
typedef ConnPrepareContext = {
	public function prepareContext(_ctx:stdgo._internal.context.Context, _query:stdgo.GoString):{
		_1:stdgo.Error;
		_0:stdgo._internal.database.sql.driver.Stmt;
	};	// PrepareContext returns a prepared statement, bound to this connection. context is for the preparation of the statement, it must not store the context within the statement itself.
};
```


## typedef Connector


```haxe
typedef Connector = {
	public function driver():stdgo._internal.database.sql.driver.Driver;	// Driver returns the underlying Driver of the Connector, mainly to maintain compatibility with the Driver method on sql.DB.
	public function connect(_0:stdgo._internal.context.Context):{
		_1:stdgo.Error;
		_0:stdgo._internal.database.sql.driver.Conn;
	};	// Connect returns a connection to the database. Connect may return a cached connection (one previously closed), but doing so is unnecessary; the sql package maintains a pool of idle connections for efficient re-use. The provided context.Context is for dialing purposes only (see net.DialContext) and should not be stored or used for other purposes. A default timeout should still be used when dialing as a connection pool may call Connect asynchronously to any query. The returned connection is only used by one goroutine at a time.
};
```


## typedef Driver


```haxe
typedef Driver = {
	public function open(_name:stdgo.GoString):{
		_1:stdgo.Error;
		_0:stdgo._internal.database.sql.driver.Conn;
	};	// Open returns a new connection to the database. The name is a string in a driver-specific format. Open may return a cached connection (one previously closed), but doing so is unnecessary; the sql package maintains a pool of idle connections for efficient re-use. The returned connection is only used by one goroutine at a time.
};
```


## typedef DriverContext


```haxe
typedef DriverContext = {
	public function openConnector(_name:stdgo.GoString):{
		_1:stdgo.Error;
		_0:stdgo._internal.database.sql.driver.Connector;
	};	// OpenConnector must parse the name in the same format that Driver.Open parses the name parameter.
};
```


## typedef Execer


```haxe
typedef Execer = {
	public function exec(_query:stdgo.GoString, _args:stdgo.Slice<stdgo._internal.database.sql.driver.Value>):{
		_1:stdgo.Error;
		_0:stdgo._internal.database.sql.driver.Result;
	};
};
```


## typedef ExecerContext


```haxe
typedef ExecerContext = {
	public function execContext(_ctx:stdgo._internal.context.Context, _query:stdgo.GoString, _args:stdgo.Slice<stdgo._internal.database.sql.driver.NamedValue>):{
		_1:stdgo.Error;
		_0:stdgo._internal.database.sql.driver.Result;
	};
};
```


## typedef IsolationLevel


```haxe
typedef IsolationLevel = stdgo.GoInt;
```


## typedef NamedValueChecker


```haxe
typedef NamedValueChecker = {
	public function checkNamedValue(_0:stdgo.Ref<stdgo._internal.database.sql.driver.NamedValue>):stdgo.Error;	// CheckNamedValue is called before passing arguments to the driver and is called in place of any ColumnConverter. CheckNamedValue must do type validation and conversion as appropriate for the driver.
};
```


## typedef Pinger


```haxe
typedef Pinger = {
	public function ping(_ctx:stdgo._internal.context.Context):stdgo.Error;
};
```


## typedef Queryer


```haxe
typedef Queryer = {
	public function query(_query:stdgo.GoString, _args:stdgo.Slice<stdgo._internal.database.sql.driver.Value>):{
		_1:stdgo.Error;
		_0:stdgo._internal.database.sql.driver.Rows;
	};
};
```


## typedef QueryerContext


```haxe
typedef QueryerContext = {
	public function queryContext(_ctx:stdgo._internal.context.Context, _query:stdgo.GoString, _args:stdgo.Slice<stdgo._internal.database.sql.driver.NamedValue>):{
		_1:stdgo.Error;
		_0:stdgo._internal.database.sql.driver.Rows;
	};
};
```


## typedef Result


```haxe
typedef Result = {
	public function rowsAffected():{
		_1:stdgo.Error;
		_0:stdgo.GoInt64;
	};	// RowsAffected returns the number of rows affected by the query.
	public function lastInsertId():{
		_1:stdgo.Error;
		_0:stdgo.GoInt64;
	};	// LastInsertId returns the database's auto-generated ID after, for example, an INSERT into a table with primary key.
};
```


## typedef Rows


```haxe
typedef Rows = {
	public function next(_dest:stdgo.Slice<stdgo._internal.database.sql.driver.Value>):stdgo.Error;	// Next is called to populate the next row of data into the provided slice. The provided slice will be the same size as the Columns() are wide. Next should return io.EOF when there are no more rows. The dest should not be written to outside of Next. Care should be taken when closing Rows not to modify a buffer held in dest.
	public function columns():stdgo.Slice<stdgo.GoString>;	// Columns returns the names of the columns. The number of columns of the result is inferred from the length of the slice. If a particular column name isn't known, an empty string should be returned for that entry.
	public function close():stdgo.Error;	// Close closes the rows iterator.
};
```


## typedef RowsAffected


```haxe
typedef RowsAffected = stdgo.GoInt64;
```


## typedef RowsColumnTypeDatabaseTypeName


```haxe
typedef RowsColumnTypeDatabaseTypeName = {
	public function next(_dest:stdgo.Slice<stdgo._internal.database.sql.driver.Value>):stdgo.Error;	// Next is called to populate the next row of data into the provided slice. The provided slice will be the same size as the Columns() are wide. Next should return io.EOF when there are no more rows. The dest should not be written to outside of Next. Care should be taken when closing Rows not to modify a buffer held in dest.
	public function columns():stdgo.Slice<stdgo.GoString>;	// Columns returns the names of the columns. The number of columns of the result is inferred from the length of the slice. If a particular column name isn't known, an empty string should be returned for that entry.
	public function columnTypeDatabaseTypeName(_index:stdgo.GoInt):stdgo.GoString;
	public function close():stdgo.Error;	// Close closes the rows iterator.
};
```


## typedef RowsColumnTypeLength


```haxe
typedef RowsColumnTypeLength = {
	public function next(_dest:stdgo.Slice<stdgo._internal.database.sql.driver.Value>):stdgo.Error;	// Next is called to populate the next row of data into the provided slice. The provided slice will be the same size as the Columns() are wide. Next should return io.EOF when there are no more rows. The dest should not be written to outside of Next. Care should be taken when closing Rows not to modify a buffer held in dest.
	public function columns():stdgo.Slice<stdgo.GoString>;	// Columns returns the names of the columns. The number of columns of the result is inferred from the length of the slice. If a particular column name isn't known, an empty string should be returned for that entry.
	public function columnTypeLength(_index:stdgo.GoInt):{
		_1:Bool;
		_0:stdgo.GoInt64;
	};
	public function close():stdgo.Error;	// Close closes the rows iterator.
};
```


## typedef RowsColumnTypeNullable


```haxe
typedef RowsColumnTypeNullable = {
	public function next(_dest:stdgo.Slice<stdgo._internal.database.sql.driver.Value>):stdgo.Error;	// Next is called to populate the next row of data into the provided slice. The provided slice will be the same size as the Columns() are wide. Next should return io.EOF when there are no more rows. The dest should not be written to outside of Next. Care should be taken when closing Rows not to modify a buffer held in dest.
	public function columns():stdgo.Slice<stdgo.GoString>;	// Columns returns the names of the columns. The number of columns of the result is inferred from the length of the slice. If a particular column name isn't known, an empty string should be returned for that entry.
	public function columnTypeNullable(_index:stdgo.GoInt):{
		_1:Bool;
		_0:Bool;
	};
	public function close():stdgo.Error;	// Close closes the rows iterator.
};
```


## typedef RowsColumnTypePrecisionScale


```haxe
typedef RowsColumnTypePrecisionScale = {
	public function next(_dest:stdgo.Slice<stdgo._internal.database.sql.driver.Value>):stdgo.Error;	// Next is called to populate the next row of data into the provided slice. The provided slice will be the same size as the Columns() are wide. Next should return io.EOF when there are no more rows. The dest should not be written to outside of Next. Care should be taken when closing Rows not to modify a buffer held in dest.
	public function columns():stdgo.Slice<stdgo.GoString>;	// Columns returns the names of the columns. The number of columns of the result is inferred from the length of the slice. If a particular column name isn't known, an empty string should be returned for that entry.
	public function columnTypePrecisionScale(_index:stdgo.GoInt):{
		_2:Bool;
		_1:stdgo.GoInt64;
		_0:stdgo.GoInt64;
	};
	public function close():stdgo.Error;	// Close closes the rows iterator.
};
```


## typedef RowsColumnTypeScanType


```haxe
typedef RowsColumnTypeScanType = {
	public function next(_dest:stdgo.Slice<stdgo._internal.database.sql.driver.Value>):stdgo.Error;	// Next is called to populate the next row of data into the provided slice. The provided slice will be the same size as the Columns() are wide. Next should return io.EOF when there are no more rows. The dest should not be written to outside of Next. Care should be taken when closing Rows not to modify a buffer held in dest.
	public function columns():stdgo.Slice<stdgo.GoString>;	// Columns returns the names of the columns. The number of columns of the result is inferred from the length of the slice. If a particular column name isn't known, an empty string should be returned for that entry.
	public function columnTypeScanType(_index:stdgo.GoInt):stdgo._internal.reflect.Type_;
	public function close():stdgo.Error;	// Close closes the rows iterator.
};
```


## typedef RowsNextResultSet


```haxe
typedef RowsNextResultSet = {
	public function nextResultSet():stdgo.Error;	// NextResultSet advances the driver to the next result set even if there are remaining rows in the current result set. NextResultSet should return io.EOF when there are no more result sets.
	public function next(_dest:stdgo.Slice<stdgo._internal.database.sql.driver.Value>):stdgo.Error;	// Next is called to populate the next row of data into the provided slice. The provided slice will be the same size as the Columns() are wide. Next should return io.EOF when there are no more rows. The dest should not be written to outside of Next. Care should be taken when closing Rows not to modify a buffer held in dest.
	public function hasNextResultSet():Bool;	// HasNextResultSet is called at the end of the current result set and reports whether there is another result set after the current one.
	public function columns():stdgo.Slice<stdgo.GoString>;	// Columns returns the names of the columns. The number of columns of the result is inferred from the length of the slice. If a particular column name isn't known, an empty string should be returned for that entry.
	public function close():stdgo.Error;	// Close closes the rows iterator.
};
```


## typedef SessionResetter


```haxe
typedef SessionResetter = {
	public function resetSession(_ctx:stdgo._internal.context.Context):stdgo.Error;	// ResetSession is called prior to executing a query on the connection if the connection has been used before. If the driver returns ErrBadConn the connection is discarded.
};
```


## typedef Stmt


```haxe
typedef Stmt = {
	public function query(_args:stdgo.Slice<stdgo._internal.database.sql.driver.Value>):{
		_1:stdgo.Error;
		_0:stdgo._internal.database.sql.driver.Rows;
	};	// Query executes a query that may return rows, such as a SELECT. Deprecated: Drivers should implement StmtQueryContext instead (or additionally).
	public function numInput():stdgo.GoInt;	// NumInput returns the number of placeholder parameters. If NumInput returns >= 0, the sql package will sanity check argument counts from callers and return errors to the caller before the statement's Exec or Query methods are called. NumInput may also return -1, if the driver doesn't know its number of placeholders. In that case, the sql package will not sanity check Exec or Query argument counts.
	public function exec(_args:stdgo.Slice<stdgo._internal.database.sql.driver.Value>):{
		_1:stdgo.Error;
		_0:stdgo._internal.database.sql.driver.Result;
	};	// Exec executes a query that doesn't return rows, such as an INSERT or UPDATE. Deprecated: Drivers should implement StmtExecContext instead (or additionally).
	public function close():stdgo.Error;	// Close closes the statement. As of Go 1.1, a Stmt will not be closed if it's in use by any queries. Drivers must ensure all network calls made by Close do not block indefinitely (e.g. apply a timeout).
};
```


## typedef StmtExecContext


```haxe
typedef StmtExecContext = {
	public function execContext(_ctx:stdgo._internal.context.Context, _args:stdgo.Slice<stdgo._internal.database.sql.driver.NamedValue>):{
		_1:stdgo.Error;
		_0:stdgo._internal.database.sql.driver.Result;
	};	// ExecContext executes a query that doesn't return rows, such as an INSERT or UPDATE. ExecContext must honor the context timeout and return when it is canceled.
};
```


## typedef StmtQueryContext


```haxe
typedef StmtQueryContext = {
	public function queryContext(_ctx:stdgo._internal.context.Context, _args:stdgo.Slice<stdgo._internal.database.sql.driver.NamedValue>):{
		_1:stdgo.Error;
		_0:stdgo._internal.database.sql.driver.Rows;
	};	// QueryContext executes a query that may return rows, such as a SELECT. QueryContext must honor the context timeout and return when it is canceled.
};
```


## typedef T\_decimalDecompose


```haxe
typedef T_decimalDecompose = {
	public function decompose(_buf:stdgo.Slice<stdgo.GoUInt8>):{
		_3:stdgo.GoInt32;
		_2:stdgo.Slice<stdgo.GoUInt8>;
		_1:Bool;
		_0:stdgo.GoUInt8;
	};	// Decompose returns the internal decimal state into parts. If the provided buf has sufficient capacity, buf may be returned as the coefficient with the value set and length set as appropriate.
};
```


## typedef Tx


```haxe
typedef Tx = {
	public function rollback():stdgo.Error;
	public function commit():stdgo.Error;
};
```


## typedef Validator


```haxe
typedef Validator = {
	public function isValid():Bool;	// IsValid is called prior to placing the connection into the connection pool. The connection will be discarded if false is returned.
};
```


## typedef Value


```haxe
typedef Value = stdgo.AnyInterface;
```


## typedef ValueConverter


```haxe
typedef ValueConverter = {
	public function convertValue(_v:stdgo.AnyInterface):{
		_1:stdgo.Error;
		_0:stdgo._internal.database.sql.driver.Value;
	};	// ConvertValue converts a value to a driver Value.
};
```


## typedef Valuer


```haxe
typedef Valuer = {
	public function value():{
		_1:stdgo.Error;
		_0:stdgo._internal.database.sql.driver.Value;
	};	// Value returns a driver Value. Value must not panic.
};
```


