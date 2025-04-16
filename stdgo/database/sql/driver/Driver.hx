package stdgo.database.sql.driver;
var resultNoRows(get, set) : stdgo._internal.database.sql.driver.Driver_t_norows.T_noRows;
private function get_resultNoRows():stdgo._internal.database.sql.driver.Driver_t_norows.T_noRows return stdgo._internal.database.sql.driver.Driver_resultnorows.resultNoRows;
private function set_resultNoRows(v:stdgo._internal.database.sql.driver.Driver_t_norows.T_noRows):stdgo._internal.database.sql.driver.Driver_t_norows.T_noRows {
        stdgo._internal.database.sql.driver.Driver_resultnorows.resultNoRows = v;
        return v;
    }
var bool_(get, set) : stdgo._internal.database.sql.driver.Driver_t_booltype.T_boolType;
private function get_bool_():stdgo._internal.database.sql.driver.Driver_t_booltype.T_boolType return stdgo._internal.database.sql.driver.Driver_bool_.bool_;
private function set_bool_(v:stdgo._internal.database.sql.driver.Driver_t_booltype.T_boolType):stdgo._internal.database.sql.driver.Driver_t_booltype.T_boolType {
        stdgo._internal.database.sql.driver.Driver_bool_.bool_ = v;
        return v;
    }
var int32(get, set) : stdgo._internal.database.sql.driver.Driver_t_int32type.T_int32Type;
private function get_int32():stdgo._internal.database.sql.driver.Driver_t_int32type.T_int32Type return stdgo._internal.database.sql.driver.Driver_int32.int32;
private function set_int32(v:stdgo._internal.database.sql.driver.Driver_t_int32type.T_int32Type):stdgo._internal.database.sql.driver.Driver_t_int32type.T_int32Type {
        stdgo._internal.database.sql.driver.Driver_int32.int32 = v;
        return v;
    }
var string(get, set) : stdgo._internal.database.sql.driver.Driver_t_stringtype.T_stringType;
private function get_string():stdgo._internal.database.sql.driver.Driver_t_stringtype.T_stringType return stdgo._internal.database.sql.driver.Driver_string.string;
private function set_string(v:stdgo._internal.database.sql.driver.Driver_t_stringtype.T_stringType):stdgo._internal.database.sql.driver.Driver_t_stringtype.T_stringType {
        stdgo._internal.database.sql.driver.Driver_string.string = v;
        return v;
    }
var defaultParameterConverter(get, set) : stdgo._internal.database.sql.driver.Driver_t_defaultconverter.T_defaultConverter;
private function get_defaultParameterConverter():stdgo._internal.database.sql.driver.Driver_t_defaultconverter.T_defaultConverter return stdgo._internal.database.sql.driver.Driver_defaultparameterconverter.defaultParameterConverter;
private function set_defaultParameterConverter(v:stdgo._internal.database.sql.driver.Driver_t_defaultconverter.T_defaultConverter):stdgo._internal.database.sql.driver.Driver_t_defaultconverter.T_defaultConverter {
        stdgo._internal.database.sql.driver.Driver_defaultparameterconverter.defaultParameterConverter = v;
        return v;
    }
var errSkip(get, set) : stdgo.Error;
private function get_errSkip():stdgo.Error return stdgo._internal.database.sql.driver.Driver_errskip.errSkip;
private function set_errSkip(v:stdgo.Error):stdgo.Error {
        stdgo._internal.database.sql.driver.Driver_errskip.errSkip = v;
        return v;
    }
var errBadConn(get, set) : stdgo.Error;
private function get_errBadConn():stdgo.Error return stdgo._internal.database.sql.driver.Driver_errbadconn.errBadConn;
private function set_errBadConn(v:stdgo.Error):stdgo.Error {
        stdgo._internal.database.sql.driver.Driver_errbadconn.errBadConn = v;
        return v;
    }
var errRemoveArgument(get, set) : stdgo.Error;
private function get_errRemoveArgument():stdgo.Error return stdgo._internal.database.sql.driver.Driver_errremoveargument.errRemoveArgument;
private function set_errRemoveArgument(v:stdgo.Error):stdgo.Error {
        stdgo._internal.database.sql.driver.Driver_errremoveargument.errRemoveArgument = v;
        return v;
    }
typedef Driver_ = stdgo._internal.database.sql.driver.Driver_driver.Driver;
typedef DriverContext = stdgo._internal.database.sql.driver.Driver_drivercontext.DriverContext;
typedef Connector = stdgo._internal.database.sql.driver.Driver_connector.Connector;
typedef Pinger = stdgo._internal.database.sql.driver.Driver_pinger.Pinger;
typedef Execer = stdgo._internal.database.sql.driver.Driver_execer.Execer;
typedef ExecerContext = stdgo._internal.database.sql.driver.Driver_execercontext.ExecerContext;
typedef Queryer = stdgo._internal.database.sql.driver.Driver_queryer.Queryer;
typedef QueryerContext = stdgo._internal.database.sql.driver.Driver_queryercontext.QueryerContext;
typedef Conn = stdgo._internal.database.sql.driver.Driver_conn.Conn;
typedef ConnPrepareContext = stdgo._internal.database.sql.driver.Driver_connpreparecontext.ConnPrepareContext;
typedef ConnBeginTx = stdgo._internal.database.sql.driver.Driver_connbegintx.ConnBeginTx;
typedef SessionResetter = stdgo._internal.database.sql.driver.Driver_sessionresetter.SessionResetter;
typedef Validator = stdgo._internal.database.sql.driver.Driver_validator.Validator;
typedef Result = stdgo._internal.database.sql.driver.Driver_result.Result;
typedef Stmt = stdgo._internal.database.sql.driver.Driver_stmt.Stmt;
typedef StmtExecContext = stdgo._internal.database.sql.driver.Driver_stmtexeccontext.StmtExecContext;
typedef StmtQueryContext = stdgo._internal.database.sql.driver.Driver_stmtquerycontext.StmtQueryContext;
typedef NamedValueChecker = stdgo._internal.database.sql.driver.Driver_namedvaluechecker.NamedValueChecker;
typedef ColumnConverter = stdgo._internal.database.sql.driver.Driver_columnconverter.ColumnConverter;
typedef Rows = stdgo._internal.database.sql.driver.Driver_rows.Rows;
typedef RowsNextResultSet = stdgo._internal.database.sql.driver.Driver_rowsnextresultset.RowsNextResultSet;
typedef RowsColumnTypeScanType = stdgo._internal.database.sql.driver.Driver_rowscolumntypescantype.RowsColumnTypeScanType;
typedef RowsColumnTypeDatabaseTypeName = stdgo._internal.database.sql.driver.Driver_rowscolumntypedatabasetypename.RowsColumnTypeDatabaseTypeName;
typedef RowsColumnTypeLength = stdgo._internal.database.sql.driver.Driver_rowscolumntypelength.RowsColumnTypeLength;
typedef RowsColumnTypeNullable = stdgo._internal.database.sql.driver.Driver_rowscolumntypenullable.RowsColumnTypeNullable;
typedef RowsColumnTypePrecisionScale = stdgo._internal.database.sql.driver.Driver_rowscolumntypeprecisionscale.RowsColumnTypePrecisionScale;
typedef Tx = stdgo._internal.database.sql.driver.Driver_tx.Tx;
typedef ValueConverter = stdgo._internal.database.sql.driver.Driver_valueconverter.ValueConverter;
typedef Valuer = stdgo._internal.database.sql.driver.Driver_valuer.Valuer;
typedef NamedValue = stdgo._internal.database.sql.driver.Driver_namedvalue.NamedValue;
typedef TxOptions = stdgo._internal.database.sql.driver.Driver_txoptions.TxOptions;
typedef Null_ = stdgo._internal.database.sql.driver.Driver_null_.Null_;
typedef NotNull = stdgo._internal.database.sql.driver.Driver_notnull.NotNull;
typedef Value = stdgo._internal.database.sql.driver.Driver_value.Value;
typedef IsolationLevel = stdgo._internal.database.sql.driver.Driver_isolationlevel.IsolationLevel;
typedef RowsAffected = stdgo._internal.database.sql.driver.Driver_rowsaffected.RowsAffected;
typedef NamedValuePointer = stdgo._internal.database.sql.driver.Driver_namedvaluepointer.NamedValuePointer;
typedef TxOptionsPointer = stdgo._internal.database.sql.driver.Driver_txoptionspointer.TxOptionsPointer;
typedef Null_Pointer = stdgo._internal.database.sql.driver.Driver_null_pointer.Null_Pointer;
typedef NotNullPointer = stdgo._internal.database.sql.driver.Driver_notnullpointer.NotNullPointer;
typedef ValuePointer = stdgo._internal.database.sql.driver.Driver_valuepointer.ValuePointer;
typedef IsolationLevelPointer = stdgo._internal.database.sql.driver.Driver_isolationlevelpointer.IsolationLevelPointer;
typedef RowsAffectedPointer = stdgo._internal.database.sql.driver.Driver_rowsaffectedpointer.RowsAffectedPointer;
/**
    * Package driver defines interfaces to be implemented by database
    * drivers as used by package sql.
    * 
    * Most code should use package sql.
    * 
    * The driver interface has evolved over time. Drivers should implement
    * Connector and DriverContext interfaces.
    * The Connector.Connect and Driver.Open methods should never return ErrBadConn.
    * ErrBadConn should only be returned from Validator, SessionResetter, or
    * a query method if the connection is already in an invalid (e.g. closed) state.
    * 
    * All Conn implementations should implement the following interfaces:
    * Pinger, SessionResetter, and Validator.
    * 
    * If named parameters or context are supported, the driver's Conn should implement:
    * ExecerContext, QueryerContext, ConnPrepareContext, and ConnBeginTx.
    * 
    * To support custom data types, implement NamedValueChecker. NamedValueChecker
    * also allows queries to accept per-query options as a parameter by returning
    * ErrRemoveArgument from CheckNamedValue.
    * 
    * If multiple result sets are supported, Rows should implement RowsNextResultSet.
    * If the driver knows how to describe the types present in the returned result
    * it should implement the following interfaces: RowsColumnTypeScanType,
    * RowsColumnTypeDatabaseTypeName, RowsColumnTypeLength, RowsColumnTypeNullable,
    * and RowsColumnTypePrecisionScale. A given row value may also return a Rows
    * type, which may represent a database cursor value.
    * 
    * Before a connection is returned to the connection pool after use, IsValid is
    * called if implemented. Before a connection is reused for another query,
    * ResetSession is called if implemented. If a connection is never returned to the
    * connection pool but immediately reused, then ResetSession is called prior to
    * reuse but IsValid is not called.
**/
class Driver {
    /**
        * IsValue reports whether v is a valid Value parameter type.
    **/
    static public inline function isValue(_v:stdgo.AnyInterface):Bool return stdgo._internal.database.sql.driver.Driver_isvalue.isValue(_v);
    /**
        * IsScanValue is equivalent to IsValue.
        * It exists for compatibility.
    **/
    static public inline function isScanValue(_v:stdgo.AnyInterface):Bool return stdgo._internal.database.sql.driver.Driver_isscanvalue.isScanValue(_v);
}
