package stdgo.database.sql.driver;
var resultNoRows(get, set) : T_noRows;
private function get_resultNoRows():T_noRows return stdgo._internal.database.sql.driver.Driver_resultNoRows.resultNoRows;
private function set_resultNoRows(v:T_noRows):T_noRows {
        stdgo._internal.database.sql.driver.Driver_resultNoRows.resultNoRows = v;
        return v;
    }
var bool_(get, set) : T_boolType;
private function get_bool_():T_boolType return stdgo._internal.database.sql.driver.Driver_bool_.bool_;
private function set_bool_(v:T_boolType):T_boolType {
        stdgo._internal.database.sql.driver.Driver_bool_.bool_ = v;
        return v;
    }
var int32(get, set) : T_int32Type;
private function get_int32():T_int32Type return stdgo._internal.database.sql.driver.Driver_int32.int32;
private function set_int32(v:T_int32Type):T_int32Type {
        stdgo._internal.database.sql.driver.Driver_int32.int32 = v;
        return v;
    }
var string(get, set) : T_stringType;
private function get_string():T_stringType return stdgo._internal.database.sql.driver.Driver_string.string;
private function set_string(v:T_stringType):T_stringType {
        stdgo._internal.database.sql.driver.Driver_string.string = v;
        return v;
    }
var defaultParameterConverter(get, set) : T_defaultConverter;
private function get_defaultParameterConverter():T_defaultConverter return stdgo._internal.database.sql.driver.Driver_defaultParameterConverter.defaultParameterConverter;
private function set_defaultParameterConverter(v:T_defaultConverter):T_defaultConverter {
        stdgo._internal.database.sql.driver.Driver_defaultParameterConverter.defaultParameterConverter = v;
        return v;
    }
var errSkip(get, set) : stdgo.Error;
private function get_errSkip():stdgo.Error return stdgo._internal.database.sql.driver.Driver_errSkip.errSkip;
private function set_errSkip(v:stdgo.Error):stdgo.Error {
        stdgo._internal.database.sql.driver.Driver_errSkip.errSkip = v;
        return v;
    }
var errBadConn(get, set) : stdgo.Error;
private function get_errBadConn():stdgo.Error return stdgo._internal.database.sql.driver.Driver_errBadConn.errBadConn;
private function set_errBadConn(v:stdgo.Error):stdgo.Error {
        stdgo._internal.database.sql.driver.Driver_errBadConn.errBadConn = v;
        return v;
    }
var errRemoveArgument(get, set) : stdgo.Error;
private function get_errRemoveArgument():stdgo.Error return stdgo._internal.database.sql.driver.Driver_errRemoveArgument.errRemoveArgument;
private function set_errRemoveArgument(v:stdgo.Error):stdgo.Error {
        stdgo._internal.database.sql.driver.Driver_errRemoveArgument.errRemoveArgument = v;
        return v;
    }
class Driver_static_extension {
    static public function open(t:stdgo._internal.database.sql.driver.Driver_Driver.Driver, _name:String):stdgo.Tuple<Conn, stdgo.Error> {
        return {
            final obj = stdgo._internal.database.sql.driver.Driver_Driver_static_extension.Driver_static_extension.open(t, _name);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
typedef Driver = stdgo._internal.database.sql.driver.Driver_Driver.Driver;
class DriverContext_static_extension {
    static public function openConnector(t:stdgo._internal.database.sql.driver.Driver_DriverContext.DriverContext, _name:String):stdgo.Tuple<Connector, stdgo.Error> {
        return {
            final obj = stdgo._internal.database.sql.driver.Driver_DriverContext_static_extension.DriverContext_static_extension.openConnector(t, _name);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
typedef DriverContext = stdgo._internal.database.sql.driver.Driver_DriverContext.DriverContext;
class Connector_static_extension {
    static public function driver(t:stdgo._internal.database.sql.driver.Driver_Connector.Connector):Driver_ {
        return stdgo._internal.database.sql.driver.Driver_Connector_static_extension.Connector_static_extension.driver(t);
    }
    static public function connect(t:stdgo._internal.database.sql.driver.Driver_Connector.Connector, _0:stdgo._internal.context.Context_Context.Context):stdgo.Tuple<Conn, stdgo.Error> {
        return {
            final obj = stdgo._internal.database.sql.driver.Driver_Connector_static_extension.Connector_static_extension.connect(t, _0);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
typedef Connector = stdgo._internal.database.sql.driver.Driver_Connector.Connector;
class Pinger_static_extension {
    static public function ping(t:stdgo._internal.database.sql.driver.Driver_Pinger.Pinger, _ctx:stdgo._internal.context.Context_Context.Context):stdgo.Error {
        return stdgo._internal.database.sql.driver.Driver_Pinger_static_extension.Pinger_static_extension.ping(t, _ctx);
    }
}
typedef Pinger = stdgo._internal.database.sql.driver.Driver_Pinger.Pinger;
class Execer_static_extension {
    static public function exec(t:stdgo._internal.database.sql.driver.Driver_Execer.Execer, _query:String, _args:Array<Value>):stdgo.Tuple<Result, stdgo.Error> {
        final _args = ([for (i in _args) i] : stdgo.Slice<stdgo._internal.database.sql.driver.Driver_Value.Value>);
        return {
            final obj = stdgo._internal.database.sql.driver.Driver_Execer_static_extension.Execer_static_extension.exec(t, _query, _args);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
typedef Execer = stdgo._internal.database.sql.driver.Driver_Execer.Execer;
class ExecerContext_static_extension {
    static public function execContext(t:stdgo._internal.database.sql.driver.Driver_ExecerContext.ExecerContext, _ctx:stdgo._internal.context.Context_Context.Context, _query:String, _args:Array<NamedValue>):stdgo.Tuple<Result, stdgo.Error> {
        final _args = ([for (i in _args) i] : stdgo.Slice<stdgo._internal.database.sql.driver.Driver_NamedValue.NamedValue>);
        return {
            final obj = stdgo._internal.database.sql.driver.Driver_ExecerContext_static_extension.ExecerContext_static_extension.execContext(t, _ctx, _query, _args);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
typedef ExecerContext = stdgo._internal.database.sql.driver.Driver_ExecerContext.ExecerContext;
class Queryer_static_extension {
    static public function query(t:stdgo._internal.database.sql.driver.Driver_Queryer.Queryer, _query:String, _args:Array<Value>):stdgo.Tuple<Rows, stdgo.Error> {
        final _args = ([for (i in _args) i] : stdgo.Slice<stdgo._internal.database.sql.driver.Driver_Value.Value>);
        return {
            final obj = stdgo._internal.database.sql.driver.Driver_Queryer_static_extension.Queryer_static_extension.query(t, _query, _args);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
typedef Queryer = stdgo._internal.database.sql.driver.Driver_Queryer.Queryer;
class QueryerContext_static_extension {
    static public function queryContext(t:stdgo._internal.database.sql.driver.Driver_QueryerContext.QueryerContext, _ctx:stdgo._internal.context.Context_Context.Context, _query:String, _args:Array<NamedValue>):stdgo.Tuple<Rows, stdgo.Error> {
        final _args = ([for (i in _args) i] : stdgo.Slice<stdgo._internal.database.sql.driver.Driver_NamedValue.NamedValue>);
        return {
            final obj = stdgo._internal.database.sql.driver.Driver_QueryerContext_static_extension.QueryerContext_static_extension.queryContext(t, _ctx, _query, _args);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
typedef QueryerContext = stdgo._internal.database.sql.driver.Driver_QueryerContext.QueryerContext;
class Conn_static_extension {
    static public function begin(t:stdgo._internal.database.sql.driver.Driver_Conn.Conn):stdgo.Tuple<Tx, stdgo.Error> {
        return {
            final obj = stdgo._internal.database.sql.driver.Driver_Conn_static_extension.Conn_static_extension.begin(t);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function close(t:stdgo._internal.database.sql.driver.Driver_Conn.Conn):stdgo.Error {
        return stdgo._internal.database.sql.driver.Driver_Conn_static_extension.Conn_static_extension.close(t);
    }
    static public function prepare(t:stdgo._internal.database.sql.driver.Driver_Conn.Conn, _query:String):stdgo.Tuple<Stmt, stdgo.Error> {
        return {
            final obj = stdgo._internal.database.sql.driver.Driver_Conn_static_extension.Conn_static_extension.prepare(t, _query);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
typedef Conn = stdgo._internal.database.sql.driver.Driver_Conn.Conn;
class ConnPrepareContext_static_extension {
    static public function prepareContext(t:stdgo._internal.database.sql.driver.Driver_ConnPrepareContext.ConnPrepareContext, _ctx:stdgo._internal.context.Context_Context.Context, _query:String):stdgo.Tuple<Stmt, stdgo.Error> {
        return {
            final obj = stdgo._internal.database.sql.driver.Driver_ConnPrepareContext_static_extension.ConnPrepareContext_static_extension.prepareContext(t, _ctx, _query);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
typedef ConnPrepareContext = stdgo._internal.database.sql.driver.Driver_ConnPrepareContext.ConnPrepareContext;
class ConnBeginTx_static_extension {
    static public function beginTx(t:stdgo._internal.database.sql.driver.Driver_ConnBeginTx.ConnBeginTx, _ctx:stdgo._internal.context.Context_Context.Context, _opts:TxOptions):stdgo.Tuple<Tx, stdgo.Error> {
        return {
            final obj = stdgo._internal.database.sql.driver.Driver_ConnBeginTx_static_extension.ConnBeginTx_static_extension.beginTx(t, _ctx, _opts);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
typedef ConnBeginTx = stdgo._internal.database.sql.driver.Driver_ConnBeginTx.ConnBeginTx;
class SessionResetter_static_extension {
    static public function resetSession(t:stdgo._internal.database.sql.driver.Driver_SessionResetter.SessionResetter, _ctx:stdgo._internal.context.Context_Context.Context):stdgo.Error {
        return stdgo._internal.database.sql.driver.Driver_SessionResetter_static_extension.SessionResetter_static_extension.resetSession(t, _ctx);
    }
}
typedef SessionResetter = stdgo._internal.database.sql.driver.Driver_SessionResetter.SessionResetter;
class Validator_static_extension {
    static public function isValid(t:stdgo._internal.database.sql.driver.Driver_Validator.Validator):Bool {
        return stdgo._internal.database.sql.driver.Driver_Validator_static_extension.Validator_static_extension.isValid(t);
    }
}
typedef Validator = stdgo._internal.database.sql.driver.Driver_Validator.Validator;
class Result_static_extension {
    static public function rowsAffected(t:stdgo._internal.database.sql.driver.Driver_Result.Result):stdgo.Tuple<haxe.Int64, stdgo.Error> {
        return {
            final obj = stdgo._internal.database.sql.driver.Driver_Result_static_extension.Result_static_extension.rowsAffected(t);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function lastInsertId(t:stdgo._internal.database.sql.driver.Driver_Result.Result):stdgo.Tuple<haxe.Int64, stdgo.Error> {
        return {
            final obj = stdgo._internal.database.sql.driver.Driver_Result_static_extension.Result_static_extension.lastInsertId(t);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
typedef Result = stdgo._internal.database.sql.driver.Driver_Result.Result;
class Stmt_static_extension {
    static public function query(t:stdgo._internal.database.sql.driver.Driver_Stmt.Stmt, _args:Array<Value>):stdgo.Tuple<Rows, stdgo.Error> {
        final _args = ([for (i in _args) i] : stdgo.Slice<stdgo._internal.database.sql.driver.Driver_Value.Value>);
        return {
            final obj = stdgo._internal.database.sql.driver.Driver_Stmt_static_extension.Stmt_static_extension.query(t, _args);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function exec(t:stdgo._internal.database.sql.driver.Driver_Stmt.Stmt, _args:Array<Value>):stdgo.Tuple<Result, stdgo.Error> {
        final _args = ([for (i in _args) i] : stdgo.Slice<stdgo._internal.database.sql.driver.Driver_Value.Value>);
        return {
            final obj = stdgo._internal.database.sql.driver.Driver_Stmt_static_extension.Stmt_static_extension.exec(t, _args);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function numInput(t:stdgo._internal.database.sql.driver.Driver_Stmt.Stmt):StdTypes.Int {
        return stdgo._internal.database.sql.driver.Driver_Stmt_static_extension.Stmt_static_extension.numInput(t);
    }
    static public function close(t:stdgo._internal.database.sql.driver.Driver_Stmt.Stmt):stdgo.Error {
        return stdgo._internal.database.sql.driver.Driver_Stmt_static_extension.Stmt_static_extension.close(t);
    }
}
typedef Stmt = stdgo._internal.database.sql.driver.Driver_Stmt.Stmt;
class StmtExecContext_static_extension {
    static public function execContext(t:stdgo._internal.database.sql.driver.Driver_StmtExecContext.StmtExecContext, _ctx:stdgo._internal.context.Context_Context.Context, _args:Array<NamedValue>):stdgo.Tuple<Result, stdgo.Error> {
        final _args = ([for (i in _args) i] : stdgo.Slice<stdgo._internal.database.sql.driver.Driver_NamedValue.NamedValue>);
        return {
            final obj = stdgo._internal.database.sql.driver.Driver_StmtExecContext_static_extension.StmtExecContext_static_extension.execContext(t, _ctx, _args);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
typedef StmtExecContext = stdgo._internal.database.sql.driver.Driver_StmtExecContext.StmtExecContext;
class StmtQueryContext_static_extension {
    static public function queryContext(t:stdgo._internal.database.sql.driver.Driver_StmtQueryContext.StmtQueryContext, _ctx:stdgo._internal.context.Context_Context.Context, _args:Array<NamedValue>):stdgo.Tuple<Rows, stdgo.Error> {
        final _args = ([for (i in _args) i] : stdgo.Slice<stdgo._internal.database.sql.driver.Driver_NamedValue.NamedValue>);
        return {
            final obj = stdgo._internal.database.sql.driver.Driver_StmtQueryContext_static_extension.StmtQueryContext_static_extension.queryContext(t, _ctx, _args);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
typedef StmtQueryContext = stdgo._internal.database.sql.driver.Driver_StmtQueryContext.StmtQueryContext;
class NamedValueChecker_static_extension {
    static public function checkNamedValue(t:stdgo._internal.database.sql.driver.Driver_NamedValueChecker.NamedValueChecker, _0:NamedValue):stdgo.Error {
        return stdgo._internal.database.sql.driver.Driver_NamedValueChecker_static_extension.NamedValueChecker_static_extension.checkNamedValue(t, _0);
    }
}
typedef NamedValueChecker = stdgo._internal.database.sql.driver.Driver_NamedValueChecker.NamedValueChecker;
class ColumnConverter_static_extension {
    static public function columnConverter(t:stdgo._internal.database.sql.driver.Driver_ColumnConverter.ColumnConverter, _idx:StdTypes.Int):ValueConverter {
        return stdgo._internal.database.sql.driver.Driver_ColumnConverter_static_extension.ColumnConverter_static_extension.columnConverter(t, _idx);
    }
}
typedef ColumnConverter = stdgo._internal.database.sql.driver.Driver_ColumnConverter.ColumnConverter;
class Rows_static_extension {
    static public function next(t:stdgo._internal.database.sql.driver.Driver_Rows.Rows, _dest:Array<Value>):stdgo.Error {
        final _dest = ([for (i in _dest) i] : stdgo.Slice<stdgo._internal.database.sql.driver.Driver_Value.Value>);
        return stdgo._internal.database.sql.driver.Driver_Rows_static_extension.Rows_static_extension.next(t, _dest);
    }
    static public function close(t:stdgo._internal.database.sql.driver.Driver_Rows.Rows):stdgo.Error {
        return stdgo._internal.database.sql.driver.Driver_Rows_static_extension.Rows_static_extension.close(t);
    }
    static public function columns(t:stdgo._internal.database.sql.driver.Driver_Rows.Rows):Array<String> {
        return [for (i in stdgo._internal.database.sql.driver.Driver_Rows_static_extension.Rows_static_extension.columns(t)) i];
    }
}
typedef Rows = stdgo._internal.database.sql.driver.Driver_Rows.Rows;
class RowsNextResultSet_static_extension {
    static public function nextResultSet(t:stdgo._internal.database.sql.driver.Driver_RowsNextResultSet.RowsNextResultSet):stdgo.Error {
        return stdgo._internal.database.sql.driver.Driver_RowsNextResultSet_static_extension.RowsNextResultSet_static_extension.nextResultSet(t);
    }
    static public function hasNextResultSet(t:stdgo._internal.database.sql.driver.Driver_RowsNextResultSet.RowsNextResultSet):Bool {
        return stdgo._internal.database.sql.driver.Driver_RowsNextResultSet_static_extension.RowsNextResultSet_static_extension.hasNextResultSet(t);
    }
}
typedef RowsNextResultSet = stdgo._internal.database.sql.driver.Driver_RowsNextResultSet.RowsNextResultSet;
class RowsColumnTypeScanType_static_extension {
    static public function columnTypeScanType(t:stdgo._internal.database.sql.driver.Driver_RowsColumnTypeScanType.RowsColumnTypeScanType, _index:StdTypes.Int):stdgo._internal.reflect.Reflect_Type_.Type_ {
        return stdgo._internal.database.sql.driver.Driver_RowsColumnTypeScanType_static_extension.RowsColumnTypeScanType_static_extension.columnTypeScanType(t, _index);
    }
}
typedef RowsColumnTypeScanType = stdgo._internal.database.sql.driver.Driver_RowsColumnTypeScanType.RowsColumnTypeScanType;
class RowsColumnTypeDatabaseTypeName_static_extension {
    static public function columnTypeDatabaseTypeName(t:stdgo._internal.database.sql.driver.Driver_RowsColumnTypeDatabaseTypeName.RowsColumnTypeDatabaseTypeName, _index:StdTypes.Int):String {
        return stdgo._internal.database.sql.driver.Driver_RowsColumnTypeDatabaseTypeName_static_extension.RowsColumnTypeDatabaseTypeName_static_extension.columnTypeDatabaseTypeName(t, _index);
    }
}
typedef RowsColumnTypeDatabaseTypeName = stdgo._internal.database.sql.driver.Driver_RowsColumnTypeDatabaseTypeName.RowsColumnTypeDatabaseTypeName;
class RowsColumnTypeLength_static_extension {
    static public function columnTypeLength(t:stdgo._internal.database.sql.driver.Driver_RowsColumnTypeLength.RowsColumnTypeLength, _index:StdTypes.Int):stdgo.Tuple<haxe.Int64, Bool> {
        return {
            final obj = stdgo._internal.database.sql.driver.Driver_RowsColumnTypeLength_static_extension.RowsColumnTypeLength_static_extension.columnTypeLength(t, _index);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
typedef RowsColumnTypeLength = stdgo._internal.database.sql.driver.Driver_RowsColumnTypeLength.RowsColumnTypeLength;
class RowsColumnTypeNullable_static_extension {
    static public function columnTypeNullable(t:stdgo._internal.database.sql.driver.Driver_RowsColumnTypeNullable.RowsColumnTypeNullable, _index:StdTypes.Int):stdgo.Tuple<Bool, Bool> {
        return {
            final obj = stdgo._internal.database.sql.driver.Driver_RowsColumnTypeNullable_static_extension.RowsColumnTypeNullable_static_extension.columnTypeNullable(t, _index);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
typedef RowsColumnTypeNullable = stdgo._internal.database.sql.driver.Driver_RowsColumnTypeNullable.RowsColumnTypeNullable;
class RowsColumnTypePrecisionScale_static_extension {
    static public function columnTypePrecisionScale(t:stdgo._internal.database.sql.driver.Driver_RowsColumnTypePrecisionScale.RowsColumnTypePrecisionScale, _index:StdTypes.Int):stdgo.Tuple.Tuple3<haxe.Int64, haxe.Int64, Bool> {
        return {
            final obj = stdgo._internal.database.sql.driver.Driver_RowsColumnTypePrecisionScale_static_extension.RowsColumnTypePrecisionScale_static_extension.columnTypePrecisionScale(t, _index);
            { _0 : obj._0, _1 : obj._1, _2 : obj._2 };
        };
    }
}
typedef RowsColumnTypePrecisionScale = stdgo._internal.database.sql.driver.Driver_RowsColumnTypePrecisionScale.RowsColumnTypePrecisionScale;
class Tx_static_extension {
    static public function rollback(t:stdgo._internal.database.sql.driver.Driver_Tx.Tx):stdgo.Error {
        return stdgo._internal.database.sql.driver.Driver_Tx_static_extension.Tx_static_extension.rollback(t);
    }
    static public function commit(t:stdgo._internal.database.sql.driver.Driver_Tx.Tx):stdgo.Error {
        return stdgo._internal.database.sql.driver.Driver_Tx_static_extension.Tx_static_extension.commit(t);
    }
}
typedef Tx = stdgo._internal.database.sql.driver.Driver_Tx.Tx;
class ValueConverter_static_extension {
    static public function convertValue(t:stdgo._internal.database.sql.driver.Driver_ValueConverter.ValueConverter, _v:stdgo.AnyInterface):stdgo.Tuple<Value, stdgo.Error> {
        return {
            final obj = stdgo._internal.database.sql.driver.Driver_ValueConverter_static_extension.ValueConverter_static_extension.convertValue(t, _v);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
typedef ValueConverter = stdgo._internal.database.sql.driver.Driver_ValueConverter.ValueConverter;
class Valuer_static_extension {
    static public function value(t:stdgo._internal.database.sql.driver.Driver_Valuer.Valuer):stdgo.Tuple<Value, stdgo.Error> {
        return {
            final obj = stdgo._internal.database.sql.driver.Driver_Valuer_static_extension.Valuer_static_extension.value(t);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
typedef Valuer = stdgo._internal.database.sql.driver.Driver_Valuer.Valuer;
class T_decimalDecompose_static_extension {
    static public function decompose(t:stdgo._internal.database.sql.driver.Driver_T_decimalDecompose.T_decimalDecompose, _buf:Array<std.UInt>):stdgo.Tuple.Tuple4<std.UInt, Bool, Array<std.UInt>, StdTypes.Int> {
        final _buf = ([for (i in _buf) i] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.database.sql.driver.Driver_T_decimalDecompose_static_extension.T_decimalDecompose_static_extension.decompose(t, _buf);
            { _0 : obj._0, _1 : obj._1, _2 : [for (i in obj._2) i], _3 : obj._3 };
        };
    }
}
typedef T_decimalDecompose = stdgo._internal.database.sql.driver.Driver_T_decimalDecompose.T_decimalDecompose;
@:structInit abstract NamedValue(stdgo._internal.database.sql.driver.Driver_NamedValue.NamedValue) from stdgo._internal.database.sql.driver.Driver_NamedValue.NamedValue to stdgo._internal.database.sql.driver.Driver_NamedValue.NamedValue {
    public var name(get, set) : String;
    function get_name():String return this.name;
    function set_name(v:String):String {
        this.name = v;
        return v;
    }
    public var ordinal(get, set) : StdTypes.Int;
    function get_ordinal():StdTypes.Int return this.ordinal;
    function set_ordinal(v:StdTypes.Int):StdTypes.Int {
        this.ordinal = v;
        return v;
    }
    public var value(get, set) : Value;
    function get_value():Value return this.value;
    function set_value(v:Value):Value {
        this.value = v;
        return v;
    }
    public function new(?name:String, ?ordinal:StdTypes.Int, ?value:Value) this = new stdgo._internal.database.sql.driver.Driver_NamedValue.NamedValue(name, ordinal, value);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit abstract TxOptions(stdgo._internal.database.sql.driver.Driver_TxOptions.TxOptions) from stdgo._internal.database.sql.driver.Driver_TxOptions.TxOptions to stdgo._internal.database.sql.driver.Driver_TxOptions.TxOptions {
    public var isolation(get, set) : IsolationLevel;
    function get_isolation():IsolationLevel return this.isolation;
    function set_isolation(v:IsolationLevel):IsolationLevel {
        this.isolation = v;
        return v;
    }
    public var readOnly(get, set) : Bool;
    function get_readOnly():Bool return this.readOnly;
    function set_readOnly(v:Bool):Bool {
        this.readOnly = v;
        return v;
    }
    public function new(?isolation:IsolationLevel, ?readOnly:Bool) this = new stdgo._internal.database.sql.driver.Driver_TxOptions.TxOptions(isolation, readOnly);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.database.sql.driver.Driver.T_noRows_static_extension) abstract T_noRows(stdgo._internal.database.sql.driver.Driver_T_noRows.T_noRows) from stdgo._internal.database.sql.driver.Driver_T_noRows.T_noRows to stdgo._internal.database.sql.driver.Driver_T_noRows.T_noRows {
    public function new() this = new stdgo._internal.database.sql.driver.Driver_T_noRows.T_noRows();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.database.sql.driver.Driver.T_boolType_static_extension) abstract T_boolType(stdgo._internal.database.sql.driver.Driver_T_boolType.T_boolType) from stdgo._internal.database.sql.driver.Driver_T_boolType.T_boolType to stdgo._internal.database.sql.driver.Driver_T_boolType.T_boolType {
    public function new() this = new stdgo._internal.database.sql.driver.Driver_T_boolType.T_boolType();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.database.sql.driver.Driver.T_int32Type_static_extension) abstract T_int32Type(stdgo._internal.database.sql.driver.Driver_T_int32Type.T_int32Type) from stdgo._internal.database.sql.driver.Driver_T_int32Type.T_int32Type to stdgo._internal.database.sql.driver.Driver_T_int32Type.T_int32Type {
    public function new() this = new stdgo._internal.database.sql.driver.Driver_T_int32Type.T_int32Type();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.database.sql.driver.Driver.T_stringType_static_extension) abstract T_stringType(stdgo._internal.database.sql.driver.Driver_T_stringType.T_stringType) from stdgo._internal.database.sql.driver.Driver_T_stringType.T_stringType to stdgo._internal.database.sql.driver.Driver_T_stringType.T_stringType {
    public function new() this = new stdgo._internal.database.sql.driver.Driver_T_stringType.T_stringType();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.database.sql.driver.Driver.Null__static_extension) abstract Null_(stdgo._internal.database.sql.driver.Driver_Null_.Null_) from stdgo._internal.database.sql.driver.Driver_Null_.Null_ to stdgo._internal.database.sql.driver.Driver_Null_.Null_ {
    public var converter(get, set) : ValueConverter;
    function get_converter():ValueConverter return this.converter;
    function set_converter(v:ValueConverter):ValueConverter {
        this.converter = v;
        return v;
    }
    public function new(?converter:ValueConverter) this = new stdgo._internal.database.sql.driver.Driver_Null_.Null_(converter);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.database.sql.driver.Driver.NotNull_static_extension) abstract NotNull(stdgo._internal.database.sql.driver.Driver_NotNull.NotNull) from stdgo._internal.database.sql.driver.Driver_NotNull.NotNull to stdgo._internal.database.sql.driver.Driver_NotNull.NotNull {
    public var converter(get, set) : ValueConverter;
    function get_converter():ValueConverter return this.converter;
    function set_converter(v:ValueConverter):ValueConverter {
        this.converter = v;
        return v;
    }
    public function new(?converter:ValueConverter) this = new stdgo._internal.database.sql.driver.Driver_NotNull.NotNull(converter);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.database.sql.driver.Driver.T_defaultConverter_static_extension) abstract T_defaultConverter(stdgo._internal.database.sql.driver.Driver_T_defaultConverter.T_defaultConverter) from stdgo._internal.database.sql.driver.Driver_T_defaultConverter.T_defaultConverter to stdgo._internal.database.sql.driver.Driver_T_defaultConverter.T_defaultConverter {
    public function new() this = new stdgo._internal.database.sql.driver.Driver_T_defaultConverter.T_defaultConverter();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
typedef Value = stdgo._internal.database.sql.driver.Driver_Value.Value;
typedef IsolationLevel = stdgo._internal.database.sql.driver.Driver_IsolationLevel.IsolationLevel;
typedef RowsAffected = stdgo._internal.database.sql.driver.Driver_RowsAffected.RowsAffected;
typedef T_noRowsPointer = stdgo._internal.database.sql.driver.Driver_T_noRowsPointer.T_noRowsPointer;
class T_noRows_static_extension {
    static public function rowsAffected(_:T_noRows):stdgo.Tuple<haxe.Int64, stdgo.Error> {
        return {
            final obj = stdgo._internal.database.sql.driver.Driver_T_noRows_static_extension.T_noRows_static_extension.rowsAffected(_);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function lastInsertId(_:T_noRows):stdgo.Tuple<haxe.Int64, stdgo.Error> {
        return {
            final obj = stdgo._internal.database.sql.driver.Driver_T_noRows_static_extension.T_noRows_static_extension.lastInsertId(_);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
typedef T_boolTypePointer = stdgo._internal.database.sql.driver.Driver_T_boolTypePointer.T_boolTypePointer;
class T_boolType_static_extension {
    static public function convertValue(_:T_boolType, _src:stdgo.AnyInterface):stdgo.Tuple<Value, stdgo.Error> {
        return {
            final obj = stdgo._internal.database.sql.driver.Driver_T_boolType_static_extension.T_boolType_static_extension.convertValue(_, _src);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function string(_:T_boolType):String {
        return stdgo._internal.database.sql.driver.Driver_T_boolType_static_extension.T_boolType_static_extension.string(_);
    }
}
typedef T_int32TypePointer = stdgo._internal.database.sql.driver.Driver_T_int32TypePointer.T_int32TypePointer;
class T_int32Type_static_extension {
    static public function convertValue(_:T_int32Type, _v:stdgo.AnyInterface):stdgo.Tuple<Value, stdgo.Error> {
        return {
            final obj = stdgo._internal.database.sql.driver.Driver_T_int32Type_static_extension.T_int32Type_static_extension.convertValue(_, _v);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
typedef T_stringTypePointer = stdgo._internal.database.sql.driver.Driver_T_stringTypePointer.T_stringTypePointer;
class T_stringType_static_extension {
    static public function convertValue(_:T_stringType, _v:stdgo.AnyInterface):stdgo.Tuple<Value, stdgo.Error> {
        return {
            final obj = stdgo._internal.database.sql.driver.Driver_T_stringType_static_extension.T_stringType_static_extension.convertValue(_, _v);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
typedef Null_Pointer = stdgo._internal.database.sql.driver.Driver_Null_Pointer.Null_Pointer;
class Null__static_extension {
    static public function convertValue(_n:Null_, _v:stdgo.AnyInterface):stdgo.Tuple<Value, stdgo.Error> {
        return {
            final obj = stdgo._internal.database.sql.driver.Driver_Null__static_extension.Null__static_extension.convertValue(_n, _v);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
typedef NotNullPointer = stdgo._internal.database.sql.driver.Driver_NotNullPointer.NotNullPointer;
class NotNull_static_extension {
    static public function convertValue(_n:NotNull, _v:stdgo.AnyInterface):stdgo.Tuple<Value, stdgo.Error> {
        return {
            final obj = stdgo._internal.database.sql.driver.Driver_NotNull_static_extension.NotNull_static_extension.convertValue(_n, _v);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
typedef T_defaultConverterPointer = stdgo._internal.database.sql.driver.Driver_T_defaultConverterPointer.T_defaultConverterPointer;
class T_defaultConverter_static_extension {
    static public function convertValue(_:T_defaultConverter, _v:stdgo.AnyInterface):stdgo.Tuple<Value, stdgo.Error> {
        return {
            final obj = stdgo._internal.database.sql.driver.Driver_T_defaultConverter_static_extension.T_defaultConverter_static_extension.convertValue(_, _v);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
typedef RowsAffectedPointer = stdgo._internal.database.sql.driver.Driver_RowsAffectedPointer.RowsAffectedPointer;
class RowsAffected_static_extension {
    static public function rowsAffected(_v:RowsAffected):stdgo.Tuple<haxe.Int64, stdgo.Error> {
        return {
            final obj = stdgo._internal.database.sql.driver.Driver_RowsAffected_static_extension.RowsAffected_static_extension.rowsAffected(_v);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function lastInsertId(_:RowsAffected):stdgo.Tuple<haxe.Int64, stdgo.Error> {
        return {
            final obj = stdgo._internal.database.sql.driver.Driver_RowsAffected_static_extension.RowsAffected_static_extension.lastInsertId(_);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
/**
    Package driver defines interfaces to be implemented by database
    drivers as used by package sql.
    
    Most code should use package sql.
    
    The driver interface has evolved over time. Drivers should implement
    Connector and DriverContext interfaces.
    The Connector.Connect and Driver.Open methods should never return ErrBadConn.
    ErrBadConn should only be returned from Validator, SessionResetter, or
    a query method if the connection is already in an invalid (e.g. closed) state.
    
    All Conn implementations should implement the following interfaces:
    Pinger, SessionResetter, and Validator.
    
    If named parameters or context are supported, the driver's Conn should implement:
    ExecerContext, QueryerContext, ConnPrepareContext, and ConnBeginTx.
    
    To support custom data types, implement NamedValueChecker. NamedValueChecker
    also allows queries to accept per-query options as a parameter by returning
    ErrRemoveArgument from CheckNamedValue.
    
    If multiple result sets are supported, Rows should implement RowsNextResultSet.
    If the driver knows how to describe the types present in the returned result
    it should implement the following interfaces: RowsColumnTypeScanType,
    RowsColumnTypeDatabaseTypeName, RowsColumnTypeLength, RowsColumnTypeNullable,
    and RowsColumnTypePrecisionScale. A given row value may also return a Rows
    type, which may represent a database cursor value.
    
    Before a connection is returned to the connection pool after use, IsValid is
    called if implemented. Before a connection is reused for another query,
    ResetSession is called if implemented. If a connection is never returned to the
    connection pool but immediately reused, then ResetSession is called prior to
    reuse but IsValid is not called.
**/
class Driver {
    /**
        IsValue reports whether v is a valid Value parameter type.
    **/
    static public function isValue(_v:stdgo.AnyInterface):Bool {
        return stdgo._internal.database.sql.driver.Driver_isValue.isValue(_v);
    }
    /**
        IsScanValue is equivalent to IsValue.
        It exists for compatibility.
    **/
    static public function isScanValue(_v:stdgo.AnyInterface):Bool {
        return stdgo._internal.database.sql.driver.Driver_isScanValue.isScanValue(_v);
    }
}
