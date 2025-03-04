package stdgo.database.sql.driver;
var resultNoRows(get, set) : T_noRows;
private function get_resultNoRows():T_noRows return stdgo._internal.database.sql.driver.Driver_resultnorows.resultNoRows;
private function set_resultNoRows(v:T_noRows):T_noRows {
        stdgo._internal.database.sql.driver.Driver_resultnorows.resultNoRows = v;
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
private function get_defaultParameterConverter():T_defaultConverter return stdgo._internal.database.sql.driver.Driver_defaultparameterconverter.defaultParameterConverter;
private function set_defaultParameterConverter(v:T_defaultConverter):T_defaultConverter {
        stdgo._internal.database.sql.driver.Driver_defaultparameterconverter.defaultParameterConverter = v;
        return v;
    }
var errSkip(get, set) : stdgo.Error;
private function get_errSkip():stdgo.Error return stdgo._internal.database.sql.driver.Driver_errskip.errSkip;
private function set_errSkip(v:stdgo.Error):stdgo.Error {
        stdgo._internal.database.sql.driver.Driver_errskip.errSkip = (v : stdgo.Error);
        return v;
    }
var errBadConn(get, set) : stdgo.Error;
private function get_errBadConn():stdgo.Error return stdgo._internal.database.sql.driver.Driver_errbadconn.errBadConn;
private function set_errBadConn(v:stdgo.Error):stdgo.Error {
        stdgo._internal.database.sql.driver.Driver_errbadconn.errBadConn = (v : stdgo.Error);
        return v;
    }
var errRemoveArgument(get, set) : stdgo.Error;
private function get_errRemoveArgument():stdgo.Error return stdgo._internal.database.sql.driver.Driver_errremoveargument.errRemoveArgument;
private function set_errRemoveArgument(v:stdgo.Error):stdgo.Error {
        stdgo._internal.database.sql.driver.Driver_errremoveargument.errRemoveArgument = (v : stdgo.Error);
        return v;
    }
class Driver_static_extension {
    static public function open(t:stdgo._internal.database.sql.driver.Driver_driver.Driver, _name:String):stdgo.Tuple<Conn, stdgo.Error> {
        final _name = (_name : stdgo.GoString);
        return {
            final obj = stdgo._internal.database.sql.driver.Driver_driver_static_extension.Driver_static_extension.open(t, _name);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
@:interface @:forward abstract Driver_(stdgo._internal.database.sql.driver.Driver_driver.Driver) from stdgo._internal.database.sql.driver.Driver_driver.Driver to stdgo._internal.database.sql.driver.Driver_driver.Driver {
    @:from
    static function fromHaxeInterface(x:{ function open(_name:String):stdgo.Tuple<Conn, stdgo.Error>; }):Driver_ {
        var __f__:Void -> stdgo.AnyInterface = null;
        final y:Driver_ = { open : _0 -> {
            final obj = x.open(_0);
            { _0 : obj._0, _1 : obj._1 };
        }, __underlying__ : () -> __f__() };
        __f__ = () -> stdgo.Go.toInterface(y);
        return y;
    }
}
class DriverContext_static_extension {
    static public function openConnector(t:stdgo._internal.database.sql.driver.Driver_drivercontext.DriverContext, _name:String):stdgo.Tuple<Connector, stdgo.Error> {
        final _name = (_name : stdgo.GoString);
        return {
            final obj = stdgo._internal.database.sql.driver.Driver_drivercontext_static_extension.DriverContext_static_extension.openConnector(t, _name);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
@:interface @:forward abstract DriverContext(stdgo._internal.database.sql.driver.Driver_drivercontext.DriverContext) from stdgo._internal.database.sql.driver.Driver_drivercontext.DriverContext to stdgo._internal.database.sql.driver.Driver_drivercontext.DriverContext {
    @:from
    static function fromHaxeInterface(x:{ function openConnector(_name:String):stdgo.Tuple<Connector, stdgo.Error>; }):DriverContext {
        var __f__:Void -> stdgo.AnyInterface = null;
        final y:DriverContext = { openConnector : _0 -> {
            final obj = x.openConnector(_0);
            { _0 : obj._0, _1 : obj._1 };
        }, __underlying__ : () -> __f__() };
        __f__ = () -> stdgo.Go.toInterface(y);
        return y;
    }
}
class Connector_static_extension {
    static public function driver(t:stdgo._internal.database.sql.driver.Driver_connector.Connector):Driver_ {
        return stdgo._internal.database.sql.driver.Driver_connector_static_extension.Connector_static_extension.driver(t);
    }
    static public function connect(t:stdgo._internal.database.sql.driver.Driver_connector.Connector, _0:stdgo._internal.context.Context_context.Context):stdgo.Tuple<Conn, stdgo.Error> {
        return {
            final obj = stdgo._internal.database.sql.driver.Driver_connector_static_extension.Connector_static_extension.connect(t, _0);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
@:interface @:forward abstract Connector(stdgo._internal.database.sql.driver.Driver_connector.Connector) from stdgo._internal.database.sql.driver.Driver_connector.Connector to stdgo._internal.database.sql.driver.Driver_connector.Connector {
    @:from
    static function fromHaxeInterface(x:{ function connect(_0:stdgo._internal.context.Context_context.Context):stdgo.Tuple<Conn, stdgo.Error>; function driver():Driver_; }):Connector {
        var __f__:Void -> stdgo.AnyInterface = null;
        final y:Connector = { connect : _0 -> {
            final obj = x.connect(_0);
            { _0 : obj._0, _1 : obj._1 };
        }, driver : () -> x.driver(), __underlying__ : () -> __f__() };
        __f__ = () -> stdgo.Go.toInterface(y);
        return y;
    }
}
class Pinger_static_extension {
    static public function ping(t:stdgo._internal.database.sql.driver.Driver_pinger.Pinger, _ctx:stdgo._internal.context.Context_context.Context):stdgo.Error {
        return stdgo._internal.database.sql.driver.Driver_pinger_static_extension.Pinger_static_extension.ping(t, _ctx);
    }
}
@:interface @:forward abstract Pinger(stdgo._internal.database.sql.driver.Driver_pinger.Pinger) from stdgo._internal.database.sql.driver.Driver_pinger.Pinger to stdgo._internal.database.sql.driver.Driver_pinger.Pinger {
    @:from
    static function fromHaxeInterface(x:{ function ping(_ctx:stdgo._internal.context.Context_context.Context):stdgo.Error; }):Pinger {
        var __f__:Void -> stdgo.AnyInterface = null;
        final y:Pinger = { ping : _0 -> x.ping(_0), __underlying__ : () -> __f__() };
        __f__ = () -> stdgo.Go.toInterface(y);
        return y;
    }
}
class Execer_static_extension {
    static public function exec(t:stdgo._internal.database.sql.driver.Driver_execer.Execer, _query:String, _args:Array<Value>):stdgo.Tuple<Result, stdgo.Error> {
        final _query = (_query : stdgo.GoString);
        final _args = ([for (i in _args) i] : stdgo.Slice<stdgo._internal.database.sql.driver.Driver_value.Value>);
        return {
            final obj = stdgo._internal.database.sql.driver.Driver_execer_static_extension.Execer_static_extension.exec(t, _query, _args);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
@:interface @:forward abstract Execer(stdgo._internal.database.sql.driver.Driver_execer.Execer) from stdgo._internal.database.sql.driver.Driver_execer.Execer to stdgo._internal.database.sql.driver.Driver_execer.Execer {
    @:from
    static function fromHaxeInterface(x:{ function exec(_query:String, _args:Array<Value>):stdgo.Tuple<Result, stdgo.Error>; }):Execer {
        var __f__:Void -> stdgo.AnyInterface = null;
        final y:Execer = { exec : (_0, _1) -> {
            final obj = x.exec(_0, [for (i in _1) i]);
            { _0 : obj._0, _1 : obj._1 };
        }, __underlying__ : () -> __f__() };
        __f__ = () -> stdgo.Go.toInterface(y);
        return y;
    }
}
class ExecerContext_static_extension {
    static public function execContext(t:stdgo._internal.database.sql.driver.Driver_execercontext.ExecerContext, _ctx:stdgo._internal.context.Context_context.Context, _query:String, _args:Array<NamedValue>):stdgo.Tuple<Result, stdgo.Error> {
        final _query = (_query : stdgo.GoString);
        final _args = ([for (i in _args) i] : stdgo.Slice<stdgo._internal.database.sql.driver.Driver_namedvalue.NamedValue>);
        return {
            final obj = stdgo._internal.database.sql.driver.Driver_execercontext_static_extension.ExecerContext_static_extension.execContext(t, _ctx, _query, _args);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
@:interface @:forward abstract ExecerContext(stdgo._internal.database.sql.driver.Driver_execercontext.ExecerContext) from stdgo._internal.database.sql.driver.Driver_execercontext.ExecerContext to stdgo._internal.database.sql.driver.Driver_execercontext.ExecerContext {
    @:from
    static function fromHaxeInterface(x:{ function execContext(_ctx:stdgo._internal.context.Context_context.Context, _query:String, _args:Array<NamedValue>):stdgo.Tuple<Result, stdgo.Error>; }):ExecerContext {
        var __f__:Void -> stdgo.AnyInterface = null;
        final y:ExecerContext = { execContext : (_0, _1, _2) -> {
            final obj = x.execContext(_0, _1, [for (i in _2) i]);
            { _0 : obj._0, _1 : obj._1 };
        }, __underlying__ : () -> __f__() };
        __f__ = () -> stdgo.Go.toInterface(y);
        return y;
    }
}
class Queryer_static_extension {
    static public function query(t:stdgo._internal.database.sql.driver.Driver_queryer.Queryer, _query:String, _args:Array<Value>):stdgo.Tuple<Rows, stdgo.Error> {
        final _query = (_query : stdgo.GoString);
        final _args = ([for (i in _args) i] : stdgo.Slice<stdgo._internal.database.sql.driver.Driver_value.Value>);
        return {
            final obj = stdgo._internal.database.sql.driver.Driver_queryer_static_extension.Queryer_static_extension.query(t, _query, _args);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
@:interface @:forward abstract Queryer(stdgo._internal.database.sql.driver.Driver_queryer.Queryer) from stdgo._internal.database.sql.driver.Driver_queryer.Queryer to stdgo._internal.database.sql.driver.Driver_queryer.Queryer {
    @:from
    static function fromHaxeInterface(x:{ function query(_query:String, _args:Array<Value>):stdgo.Tuple<Rows, stdgo.Error>; }):Queryer {
        var __f__:Void -> stdgo.AnyInterface = null;
        final y:Queryer = { query : (_0, _1) -> {
            final obj = x.query(_0, [for (i in _1) i]);
            { _0 : obj._0, _1 : obj._1 };
        }, __underlying__ : () -> __f__() };
        __f__ = () -> stdgo.Go.toInterface(y);
        return y;
    }
}
class QueryerContext_static_extension {
    static public function queryContext(t:stdgo._internal.database.sql.driver.Driver_queryercontext.QueryerContext, _ctx:stdgo._internal.context.Context_context.Context, _query:String, _args:Array<NamedValue>):stdgo.Tuple<Rows, stdgo.Error> {
        final _query = (_query : stdgo.GoString);
        final _args = ([for (i in _args) i] : stdgo.Slice<stdgo._internal.database.sql.driver.Driver_namedvalue.NamedValue>);
        return {
            final obj = stdgo._internal.database.sql.driver.Driver_queryercontext_static_extension.QueryerContext_static_extension.queryContext(t, _ctx, _query, _args);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
@:interface @:forward abstract QueryerContext(stdgo._internal.database.sql.driver.Driver_queryercontext.QueryerContext) from stdgo._internal.database.sql.driver.Driver_queryercontext.QueryerContext to stdgo._internal.database.sql.driver.Driver_queryercontext.QueryerContext {
    @:from
    static function fromHaxeInterface(x:{ function queryContext(_ctx:stdgo._internal.context.Context_context.Context, _query:String, _args:Array<NamedValue>):stdgo.Tuple<Rows, stdgo.Error>; }):QueryerContext {
        var __f__:Void -> stdgo.AnyInterface = null;
        final y:QueryerContext = { queryContext : (_0, _1, _2) -> {
            final obj = x.queryContext(_0, _1, [for (i in _2) i]);
            { _0 : obj._0, _1 : obj._1 };
        }, __underlying__ : () -> __f__() };
        __f__ = () -> stdgo.Go.toInterface(y);
        return y;
    }
}
class Conn_static_extension {
    static public function begin(t:stdgo._internal.database.sql.driver.Driver_conn.Conn):stdgo.Tuple<Tx, stdgo.Error> {
        return {
            final obj = stdgo._internal.database.sql.driver.Driver_conn_static_extension.Conn_static_extension.begin(t);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function close(t:stdgo._internal.database.sql.driver.Driver_conn.Conn):stdgo.Error {
        return stdgo._internal.database.sql.driver.Driver_conn_static_extension.Conn_static_extension.close(t);
    }
    static public function prepare(t:stdgo._internal.database.sql.driver.Driver_conn.Conn, _query:String):stdgo.Tuple<Stmt, stdgo.Error> {
        final _query = (_query : stdgo.GoString);
        return {
            final obj = stdgo._internal.database.sql.driver.Driver_conn_static_extension.Conn_static_extension.prepare(t, _query);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
@:interface @:forward abstract Conn(stdgo._internal.database.sql.driver.Driver_conn.Conn) from stdgo._internal.database.sql.driver.Driver_conn.Conn to stdgo._internal.database.sql.driver.Driver_conn.Conn {
    @:from
    static function fromHaxeInterface(x:{ function prepare(_query:String):stdgo.Tuple<Stmt, stdgo.Error>; function close():stdgo.Error; function begin():stdgo.Tuple<Tx, stdgo.Error>; }):Conn {
        var __f__:Void -> stdgo.AnyInterface = null;
        final y:Conn = { prepare : _0 -> {
            final obj = x.prepare(_0);
            { _0 : obj._0, _1 : obj._1 };
        }, close : () -> x.close(), begin : () -> {
            final obj = x.begin();
            { _0 : obj._0, _1 : obj._1 };
        }, __underlying__ : () -> __f__() };
        __f__ = () -> stdgo.Go.toInterface(y);
        return y;
    }
}
class ConnPrepareContext_static_extension {
    static public function prepareContext(t:stdgo._internal.database.sql.driver.Driver_connpreparecontext.ConnPrepareContext, _ctx:stdgo._internal.context.Context_context.Context, _query:String):stdgo.Tuple<Stmt, stdgo.Error> {
        final _query = (_query : stdgo.GoString);
        return {
            final obj = stdgo._internal.database.sql.driver.Driver_connpreparecontext_static_extension.ConnPrepareContext_static_extension.prepareContext(t, _ctx, _query);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
@:interface @:forward abstract ConnPrepareContext(stdgo._internal.database.sql.driver.Driver_connpreparecontext.ConnPrepareContext) from stdgo._internal.database.sql.driver.Driver_connpreparecontext.ConnPrepareContext to stdgo._internal.database.sql.driver.Driver_connpreparecontext.ConnPrepareContext {
    @:from
    static function fromHaxeInterface(x:{ function prepareContext(_ctx:stdgo._internal.context.Context_context.Context, _query:String):stdgo.Tuple<Stmt, stdgo.Error>; }):ConnPrepareContext {
        var __f__:Void -> stdgo.AnyInterface = null;
        final y:ConnPrepareContext = { prepareContext : (_0, _1) -> {
            final obj = x.prepareContext(_0, _1);
            { _0 : obj._0, _1 : obj._1 };
        }, __underlying__ : () -> __f__() };
        __f__ = () -> stdgo.Go.toInterface(y);
        return y;
    }
}
class ConnBeginTx_static_extension {
    static public function beginTx(t:stdgo._internal.database.sql.driver.Driver_connbegintx.ConnBeginTx, _ctx:stdgo._internal.context.Context_context.Context, _opts:TxOptions):stdgo.Tuple<Tx, stdgo.Error> {
        return {
            final obj = stdgo._internal.database.sql.driver.Driver_connbegintx_static_extension.ConnBeginTx_static_extension.beginTx(t, _ctx, _opts);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
@:interface @:forward abstract ConnBeginTx(stdgo._internal.database.sql.driver.Driver_connbegintx.ConnBeginTx) from stdgo._internal.database.sql.driver.Driver_connbegintx.ConnBeginTx to stdgo._internal.database.sql.driver.Driver_connbegintx.ConnBeginTx {
    @:from
    static function fromHaxeInterface(x:{ function beginTx(_ctx:stdgo._internal.context.Context_context.Context, _opts:TxOptions):stdgo.Tuple<Tx, stdgo.Error>; }):ConnBeginTx {
        var __f__:Void -> stdgo.AnyInterface = null;
        final y:ConnBeginTx = { beginTx : (_0, _1) -> {
            final obj = x.beginTx(_0, _1);
            { _0 : obj._0, _1 : obj._1 };
        }, __underlying__ : () -> __f__() };
        __f__ = () -> stdgo.Go.toInterface(y);
        return y;
    }
}
class SessionResetter_static_extension {
    static public function resetSession(t:stdgo._internal.database.sql.driver.Driver_sessionresetter.SessionResetter, _ctx:stdgo._internal.context.Context_context.Context):stdgo.Error {
        return stdgo._internal.database.sql.driver.Driver_sessionresetter_static_extension.SessionResetter_static_extension.resetSession(t, _ctx);
    }
}
@:interface @:forward abstract SessionResetter(stdgo._internal.database.sql.driver.Driver_sessionresetter.SessionResetter) from stdgo._internal.database.sql.driver.Driver_sessionresetter.SessionResetter to stdgo._internal.database.sql.driver.Driver_sessionresetter.SessionResetter {
    @:from
    static function fromHaxeInterface(x:{ function resetSession(_ctx:stdgo._internal.context.Context_context.Context):stdgo.Error; }):SessionResetter {
        var __f__:Void -> stdgo.AnyInterface = null;
        final y:SessionResetter = { resetSession : _0 -> x.resetSession(_0), __underlying__ : () -> __f__() };
        __f__ = () -> stdgo.Go.toInterface(y);
        return y;
    }
}
class Validator_static_extension {
    static public function isValid(t:stdgo._internal.database.sql.driver.Driver_validator.Validator):Bool {
        return stdgo._internal.database.sql.driver.Driver_validator_static_extension.Validator_static_extension.isValid(t);
    }
}
@:interface @:forward abstract Validator(stdgo._internal.database.sql.driver.Driver_validator.Validator) from stdgo._internal.database.sql.driver.Driver_validator.Validator to stdgo._internal.database.sql.driver.Driver_validator.Validator {
    @:from
    static function fromHaxeInterface(x:{ function isValid():Bool; }):Validator {
        var __f__:Void -> stdgo.AnyInterface = null;
        final y:Validator = { isValid : () -> x.isValid(), __underlying__ : () -> __f__() };
        __f__ = () -> stdgo.Go.toInterface(y);
        return y;
    }
}
class Result_static_extension {
    static public function rowsAffected(t:stdgo._internal.database.sql.driver.Driver_result.Result):stdgo.Tuple<haxe.Int64, stdgo.Error> {
        return {
            final obj = stdgo._internal.database.sql.driver.Driver_result_static_extension.Result_static_extension.rowsAffected(t);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function lastInsertId(t:stdgo._internal.database.sql.driver.Driver_result.Result):stdgo.Tuple<haxe.Int64, stdgo.Error> {
        return {
            final obj = stdgo._internal.database.sql.driver.Driver_result_static_extension.Result_static_extension.lastInsertId(t);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
@:interface @:forward abstract Result(stdgo._internal.database.sql.driver.Driver_result.Result) from stdgo._internal.database.sql.driver.Driver_result.Result to stdgo._internal.database.sql.driver.Driver_result.Result {
    @:from
    static function fromHaxeInterface(x:{ function lastInsertId():stdgo.Tuple<haxe.Int64, stdgo.Error>; function rowsAffected():stdgo.Tuple<haxe.Int64, stdgo.Error>; }):Result {
        var __f__:Void -> stdgo.AnyInterface = null;
        final y:Result = { lastInsertId : () -> {
            final obj = x.lastInsertId();
            { _0 : obj._0, _1 : obj._1 };
        }, rowsAffected : () -> {
            final obj = x.rowsAffected();
            { _0 : obj._0, _1 : obj._1 };
        }, __underlying__ : () -> __f__() };
        __f__ = () -> stdgo.Go.toInterface(y);
        return y;
    }
}
class Stmt_static_extension {
    static public function query(t:stdgo._internal.database.sql.driver.Driver_stmt.Stmt, _args:Array<Value>):stdgo.Tuple<Rows, stdgo.Error> {
        final _args = ([for (i in _args) i] : stdgo.Slice<stdgo._internal.database.sql.driver.Driver_value.Value>);
        return {
            final obj = stdgo._internal.database.sql.driver.Driver_stmt_static_extension.Stmt_static_extension.query(t, _args);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function exec(t:stdgo._internal.database.sql.driver.Driver_stmt.Stmt, _args:Array<Value>):stdgo.Tuple<Result, stdgo.Error> {
        final _args = ([for (i in _args) i] : stdgo.Slice<stdgo._internal.database.sql.driver.Driver_value.Value>);
        return {
            final obj = stdgo._internal.database.sql.driver.Driver_stmt_static_extension.Stmt_static_extension.exec(t, _args);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function numInput(t:stdgo._internal.database.sql.driver.Driver_stmt.Stmt):StdTypes.Int {
        return stdgo._internal.database.sql.driver.Driver_stmt_static_extension.Stmt_static_extension.numInput(t);
    }
    static public function close(t:stdgo._internal.database.sql.driver.Driver_stmt.Stmt):stdgo.Error {
        return stdgo._internal.database.sql.driver.Driver_stmt_static_extension.Stmt_static_extension.close(t);
    }
}
@:interface @:forward abstract Stmt(stdgo._internal.database.sql.driver.Driver_stmt.Stmt) from stdgo._internal.database.sql.driver.Driver_stmt.Stmt to stdgo._internal.database.sql.driver.Driver_stmt.Stmt {
    @:from
    static function fromHaxeInterface(x:{ function close():stdgo.Error; function numInput():StdTypes.Int; function exec(_args:Array<Value>):stdgo.Tuple<Result, stdgo.Error>; function query(_args:Array<Value>):stdgo.Tuple<Rows, stdgo.Error>; }):Stmt {
        var __f__:Void -> stdgo.AnyInterface = null;
        final y:Stmt = { close : () -> x.close(), numInput : () -> x.numInput(), exec : _0 -> {
            final obj = x.exec([for (i in _0) i]);
            { _0 : obj._0, _1 : obj._1 };
        }, query : _0 -> {
            final obj = x.query([for (i in _0) i]);
            { _0 : obj._0, _1 : obj._1 };
        }, __underlying__ : () -> __f__() };
        __f__ = () -> stdgo.Go.toInterface(y);
        return y;
    }
}
class StmtExecContext_static_extension {
    static public function execContext(t:stdgo._internal.database.sql.driver.Driver_stmtexeccontext.StmtExecContext, _ctx:stdgo._internal.context.Context_context.Context, _args:Array<NamedValue>):stdgo.Tuple<Result, stdgo.Error> {
        final _args = ([for (i in _args) i] : stdgo.Slice<stdgo._internal.database.sql.driver.Driver_namedvalue.NamedValue>);
        return {
            final obj = stdgo._internal.database.sql.driver.Driver_stmtexeccontext_static_extension.StmtExecContext_static_extension.execContext(t, _ctx, _args);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
@:interface @:forward abstract StmtExecContext(stdgo._internal.database.sql.driver.Driver_stmtexeccontext.StmtExecContext) from stdgo._internal.database.sql.driver.Driver_stmtexeccontext.StmtExecContext to stdgo._internal.database.sql.driver.Driver_stmtexeccontext.StmtExecContext {
    @:from
    static function fromHaxeInterface(x:{ function execContext(_ctx:stdgo._internal.context.Context_context.Context, _args:Array<NamedValue>):stdgo.Tuple<Result, stdgo.Error>; }):StmtExecContext {
        var __f__:Void -> stdgo.AnyInterface = null;
        final y:StmtExecContext = { execContext : (_0, _1) -> {
            final obj = x.execContext(_0, [for (i in _1) i]);
            { _0 : obj._0, _1 : obj._1 };
        }, __underlying__ : () -> __f__() };
        __f__ = () -> stdgo.Go.toInterface(y);
        return y;
    }
}
class StmtQueryContext_static_extension {
    static public function queryContext(t:stdgo._internal.database.sql.driver.Driver_stmtquerycontext.StmtQueryContext, _ctx:stdgo._internal.context.Context_context.Context, _args:Array<NamedValue>):stdgo.Tuple<Rows, stdgo.Error> {
        final _args = ([for (i in _args) i] : stdgo.Slice<stdgo._internal.database.sql.driver.Driver_namedvalue.NamedValue>);
        return {
            final obj = stdgo._internal.database.sql.driver.Driver_stmtquerycontext_static_extension.StmtQueryContext_static_extension.queryContext(t, _ctx, _args);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
@:interface @:forward abstract StmtQueryContext(stdgo._internal.database.sql.driver.Driver_stmtquerycontext.StmtQueryContext) from stdgo._internal.database.sql.driver.Driver_stmtquerycontext.StmtQueryContext to stdgo._internal.database.sql.driver.Driver_stmtquerycontext.StmtQueryContext {
    @:from
    static function fromHaxeInterface(x:{ function queryContext(_ctx:stdgo._internal.context.Context_context.Context, _args:Array<NamedValue>):stdgo.Tuple<Rows, stdgo.Error>; }):StmtQueryContext {
        var __f__:Void -> stdgo.AnyInterface = null;
        final y:StmtQueryContext = { queryContext : (_0, _1) -> {
            final obj = x.queryContext(_0, [for (i in _1) i]);
            { _0 : obj._0, _1 : obj._1 };
        }, __underlying__ : () -> __f__() };
        __f__ = () -> stdgo.Go.toInterface(y);
        return y;
    }
}
class NamedValueChecker_static_extension {
    static public function checkNamedValue(t:stdgo._internal.database.sql.driver.Driver_namedvaluechecker.NamedValueChecker, _0:NamedValue):stdgo.Error {
        final _0 = (_0 : stdgo.Ref<stdgo._internal.database.sql.driver.Driver_namedvalue.NamedValue>);
        return stdgo._internal.database.sql.driver.Driver_namedvaluechecker_static_extension.NamedValueChecker_static_extension.checkNamedValue(t, _0);
    }
}
@:interface @:forward abstract NamedValueChecker(stdgo._internal.database.sql.driver.Driver_namedvaluechecker.NamedValueChecker) from stdgo._internal.database.sql.driver.Driver_namedvaluechecker.NamedValueChecker to stdgo._internal.database.sql.driver.Driver_namedvaluechecker.NamedValueChecker {
    @:from
    static function fromHaxeInterface(x:{ function checkNamedValue(_0:NamedValue):stdgo.Error; }):NamedValueChecker {
        var __f__:Void -> stdgo.AnyInterface = null;
        final y:NamedValueChecker = { checkNamedValue : _0 -> x.checkNamedValue(_0), __underlying__ : () -> __f__() };
        __f__ = () -> stdgo.Go.toInterface(y);
        return y;
    }
}
class ColumnConverter_static_extension {
    static public function columnConverter(t:stdgo._internal.database.sql.driver.Driver_columnconverter.ColumnConverter, _idx:StdTypes.Int):ValueConverter {
        final _idx = (_idx : stdgo.GoInt);
        return stdgo._internal.database.sql.driver.Driver_columnconverter_static_extension.ColumnConverter_static_extension.columnConverter(t, _idx);
    }
}
@:interface @:forward abstract ColumnConverter(stdgo._internal.database.sql.driver.Driver_columnconverter.ColumnConverter) from stdgo._internal.database.sql.driver.Driver_columnconverter.ColumnConverter to stdgo._internal.database.sql.driver.Driver_columnconverter.ColumnConverter {
    @:from
    static function fromHaxeInterface(x:{ function columnConverter(_idx:StdTypes.Int):ValueConverter; }):ColumnConverter {
        var __f__:Void -> stdgo.AnyInterface = null;
        final y:ColumnConverter = { columnConverter : _0 -> x.columnConverter(_0), __underlying__ : () -> __f__() };
        __f__ = () -> stdgo.Go.toInterface(y);
        return y;
    }
}
class Rows_static_extension {
    static public function next(t:stdgo._internal.database.sql.driver.Driver_rows.Rows, _dest:Array<Value>):stdgo.Error {
        final _dest = ([for (i in _dest) i] : stdgo.Slice<stdgo._internal.database.sql.driver.Driver_value.Value>);
        return stdgo._internal.database.sql.driver.Driver_rows_static_extension.Rows_static_extension.next(t, _dest);
    }
    static public function close(t:stdgo._internal.database.sql.driver.Driver_rows.Rows):stdgo.Error {
        return stdgo._internal.database.sql.driver.Driver_rows_static_extension.Rows_static_extension.close(t);
    }
    static public function columns(t:stdgo._internal.database.sql.driver.Driver_rows.Rows):Array<String> {
        return [for (i in stdgo._internal.database.sql.driver.Driver_rows_static_extension.Rows_static_extension.columns(t)) i];
    }
}
@:interface @:forward abstract Rows(stdgo._internal.database.sql.driver.Driver_rows.Rows) from stdgo._internal.database.sql.driver.Driver_rows.Rows to stdgo._internal.database.sql.driver.Driver_rows.Rows {
    @:from
    static function fromHaxeInterface(x:{ function columns():Array<String>; function close():stdgo.Error; function next(_dest:Array<Value>):stdgo.Error; }):Rows {
        var __f__:Void -> stdgo.AnyInterface = null;
        final y:Rows = { columns : () -> [for (i in x.columns()) i], close : () -> x.close(), next : _0 -> x.next([for (i in _0) i]), __underlying__ : () -> __f__() };
        __f__ = () -> stdgo.Go.toInterface(y);
        return y;
    }
}
class RowsNextResultSet_static_extension {
    static public function nextResultSet(t:stdgo._internal.database.sql.driver.Driver_rowsnextresultset.RowsNextResultSet):stdgo.Error {
        return stdgo._internal.database.sql.driver.Driver_rowsnextresultset_static_extension.RowsNextResultSet_static_extension.nextResultSet(t);
    }
    static public function hasNextResultSet(t:stdgo._internal.database.sql.driver.Driver_rowsnextresultset.RowsNextResultSet):Bool {
        return stdgo._internal.database.sql.driver.Driver_rowsnextresultset_static_extension.RowsNextResultSet_static_extension.hasNextResultSet(t);
    }
}
@:interface @:forward abstract RowsNextResultSet(stdgo._internal.database.sql.driver.Driver_rowsnextresultset.RowsNextResultSet) from stdgo._internal.database.sql.driver.Driver_rowsnextresultset.RowsNextResultSet to stdgo._internal.database.sql.driver.Driver_rowsnextresultset.RowsNextResultSet {
    @:from
    static function fromHaxeInterface(x:{ function hasNextResultSet():Bool; function nextResultSet():stdgo.Error; function close():stdgo.Error; function columns():Array<String>; function next(_0:Array<Value>):stdgo.Error; }):RowsNextResultSet {
        var __f__:Void -> stdgo.AnyInterface = null;
        final y:RowsNextResultSet = { hasNextResultSet : () -> x.hasNextResultSet(), nextResultSet : () -> x.nextResultSet(), close : () -> x.close(), columns : () -> [for (i in x.columns()) i], next : _0 -> x.next([for (i in _0) i]), __underlying__ : () -> __f__() };
        __f__ = () -> stdgo.Go.toInterface(y);
        return y;
    }
}
class RowsColumnTypeScanType_static_extension {
    static public function columnTypeScanType(t:stdgo._internal.database.sql.driver.Driver_rowscolumntypescantype.RowsColumnTypeScanType, _index:StdTypes.Int):stdgo._internal.reflect.Reflect_type_.Type_ {
        final _index = (_index : stdgo.GoInt);
        return stdgo._internal.database.sql.driver.Driver_rowscolumntypescantype_static_extension.RowsColumnTypeScanType_static_extension.columnTypeScanType(t, _index);
    }
}
@:interface @:forward abstract RowsColumnTypeScanType(stdgo._internal.database.sql.driver.Driver_rowscolumntypescantype.RowsColumnTypeScanType) from stdgo._internal.database.sql.driver.Driver_rowscolumntypescantype.RowsColumnTypeScanType to stdgo._internal.database.sql.driver.Driver_rowscolumntypescantype.RowsColumnTypeScanType {
    @:from
    static function fromHaxeInterface(x:{ function columnTypeScanType(_index:StdTypes.Int):stdgo._internal.reflect.Reflect_type_.Type_; function close():stdgo.Error; function columns():Array<String>; function next(_0:Array<Value>):stdgo.Error; }):RowsColumnTypeScanType {
        var __f__:Void -> stdgo.AnyInterface = null;
        final y:RowsColumnTypeScanType = { columnTypeScanType : _0 -> x.columnTypeScanType(_0), close : () -> x.close(), columns : () -> [for (i in x.columns()) i], next : _0 -> x.next([for (i in _0) i]), __underlying__ : () -> __f__() };
        __f__ = () -> stdgo.Go.toInterface(y);
        return y;
    }
}
class RowsColumnTypeDatabaseTypeName_static_extension {
    static public function columnTypeDatabaseTypeName(t:stdgo._internal.database.sql.driver.Driver_rowscolumntypedatabasetypename.RowsColumnTypeDatabaseTypeName, _index:StdTypes.Int):String {
        final _index = (_index : stdgo.GoInt);
        return stdgo._internal.database.sql.driver.Driver_rowscolumntypedatabasetypename_static_extension.RowsColumnTypeDatabaseTypeName_static_extension.columnTypeDatabaseTypeName(t, _index);
    }
}
@:interface @:forward abstract RowsColumnTypeDatabaseTypeName(stdgo._internal.database.sql.driver.Driver_rowscolumntypedatabasetypename.RowsColumnTypeDatabaseTypeName) from stdgo._internal.database.sql.driver.Driver_rowscolumntypedatabasetypename.RowsColumnTypeDatabaseTypeName to stdgo._internal.database.sql.driver.Driver_rowscolumntypedatabasetypename.RowsColumnTypeDatabaseTypeName {
    @:from
    static function fromHaxeInterface(x:{ function columnTypeDatabaseTypeName(_index:StdTypes.Int):String; function close():stdgo.Error; function columns():Array<String>; function next(_0:Array<Value>):stdgo.Error; }):RowsColumnTypeDatabaseTypeName {
        var __f__:Void -> stdgo.AnyInterface = null;
        final y:RowsColumnTypeDatabaseTypeName = { columnTypeDatabaseTypeName : _0 -> x.columnTypeDatabaseTypeName(_0), close : () -> x.close(), columns : () -> [for (i in x.columns()) i], next : _0 -> x.next([for (i in _0) i]), __underlying__ : () -> __f__() };
        __f__ = () -> stdgo.Go.toInterface(y);
        return y;
    }
}
class RowsColumnTypeLength_static_extension {
    static public function columnTypeLength(t:stdgo._internal.database.sql.driver.Driver_rowscolumntypelength.RowsColumnTypeLength, _index:StdTypes.Int):stdgo.Tuple<haxe.Int64, Bool> {
        final _index = (_index : stdgo.GoInt);
        return {
            final obj = stdgo._internal.database.sql.driver.Driver_rowscolumntypelength_static_extension.RowsColumnTypeLength_static_extension.columnTypeLength(t, _index);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
@:interface @:forward abstract RowsColumnTypeLength(stdgo._internal.database.sql.driver.Driver_rowscolumntypelength.RowsColumnTypeLength) from stdgo._internal.database.sql.driver.Driver_rowscolumntypelength.RowsColumnTypeLength to stdgo._internal.database.sql.driver.Driver_rowscolumntypelength.RowsColumnTypeLength {
    @:from
    static function fromHaxeInterface(x:{ function columnTypeLength(_index:StdTypes.Int):stdgo.Tuple<haxe.Int64, Bool>; function close():stdgo.Error; function columns():Array<String>; function next(_0:Array<Value>):stdgo.Error; }):RowsColumnTypeLength {
        var __f__:Void -> stdgo.AnyInterface = null;
        final y:RowsColumnTypeLength = { columnTypeLength : _0 -> {
            final obj = x.columnTypeLength(_0);
            { _0 : obj._0, _1 : obj._1 };
        }, close : () -> x.close(), columns : () -> [for (i in x.columns()) i], next : _0 -> x.next([for (i in _0) i]), __underlying__ : () -> __f__() };
        __f__ = () -> stdgo.Go.toInterface(y);
        return y;
    }
}
class RowsColumnTypeNullable_static_extension {
    static public function columnTypeNullable(t:stdgo._internal.database.sql.driver.Driver_rowscolumntypenullable.RowsColumnTypeNullable, _index:StdTypes.Int):stdgo.Tuple<Bool, Bool> {
        final _index = (_index : stdgo.GoInt);
        return {
            final obj = stdgo._internal.database.sql.driver.Driver_rowscolumntypenullable_static_extension.RowsColumnTypeNullable_static_extension.columnTypeNullable(t, _index);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
@:interface @:forward abstract RowsColumnTypeNullable(stdgo._internal.database.sql.driver.Driver_rowscolumntypenullable.RowsColumnTypeNullable) from stdgo._internal.database.sql.driver.Driver_rowscolumntypenullable.RowsColumnTypeNullable to stdgo._internal.database.sql.driver.Driver_rowscolumntypenullable.RowsColumnTypeNullable {
    @:from
    static function fromHaxeInterface(x:{ function columnTypeNullable(_index:StdTypes.Int):stdgo.Tuple<Bool, Bool>; function close():stdgo.Error; function columns():Array<String>; function next(_0:Array<Value>):stdgo.Error; }):RowsColumnTypeNullable {
        var __f__:Void -> stdgo.AnyInterface = null;
        final y:RowsColumnTypeNullable = { columnTypeNullable : _0 -> {
            final obj = x.columnTypeNullable(_0);
            { _0 : obj._0, _1 : obj._1 };
        }, close : () -> x.close(), columns : () -> [for (i in x.columns()) i], next : _0 -> x.next([for (i in _0) i]), __underlying__ : () -> __f__() };
        __f__ = () -> stdgo.Go.toInterface(y);
        return y;
    }
}
class RowsColumnTypePrecisionScale_static_extension {
    static public function columnTypePrecisionScale(t:stdgo._internal.database.sql.driver.Driver_rowscolumntypeprecisionscale.RowsColumnTypePrecisionScale, _index:StdTypes.Int):stdgo.Tuple.Tuple3<haxe.Int64, haxe.Int64, Bool> {
        final _index = (_index : stdgo.GoInt);
        return {
            final obj = stdgo._internal.database.sql.driver.Driver_rowscolumntypeprecisionscale_static_extension.RowsColumnTypePrecisionScale_static_extension.columnTypePrecisionScale(t, _index);
            { _0 : obj._0, _1 : obj._1, _2 : obj._2 };
        };
    }
}
@:interface @:forward abstract RowsColumnTypePrecisionScale(stdgo._internal.database.sql.driver.Driver_rowscolumntypeprecisionscale.RowsColumnTypePrecisionScale) from stdgo._internal.database.sql.driver.Driver_rowscolumntypeprecisionscale.RowsColumnTypePrecisionScale to stdgo._internal.database.sql.driver.Driver_rowscolumntypeprecisionscale.RowsColumnTypePrecisionScale {
    @:from
    static function fromHaxeInterface(x:{ function columnTypePrecisionScale(_index:StdTypes.Int):stdgo.Tuple.Tuple3<haxe.Int64, haxe.Int64, Bool>; function close():stdgo.Error; function columns():Array<String>; function next(_0:Array<Value>):stdgo.Error; }):RowsColumnTypePrecisionScale {
        var __f__:Void -> stdgo.AnyInterface = null;
        final y:RowsColumnTypePrecisionScale = { columnTypePrecisionScale : _0 -> {
            final obj = x.columnTypePrecisionScale(_0);
            { _0 : obj._0, _1 : obj._1, _2 : obj._2 };
        }, close : () -> x.close(), columns : () -> [for (i in x.columns()) i], next : _0 -> x.next([for (i in _0) i]), __underlying__ : () -> __f__() };
        __f__ = () -> stdgo.Go.toInterface(y);
        return y;
    }
}
class Tx_static_extension {
    static public function rollback(t:stdgo._internal.database.sql.driver.Driver_tx.Tx):stdgo.Error {
        return stdgo._internal.database.sql.driver.Driver_tx_static_extension.Tx_static_extension.rollback(t);
    }
    static public function commit(t:stdgo._internal.database.sql.driver.Driver_tx.Tx):stdgo.Error {
        return stdgo._internal.database.sql.driver.Driver_tx_static_extension.Tx_static_extension.commit(t);
    }
}
@:interface @:forward abstract Tx(stdgo._internal.database.sql.driver.Driver_tx.Tx) from stdgo._internal.database.sql.driver.Driver_tx.Tx to stdgo._internal.database.sql.driver.Driver_tx.Tx {
    @:from
    static function fromHaxeInterface(x:{ function commit():stdgo.Error; function rollback():stdgo.Error; }):Tx {
        var __f__:Void -> stdgo.AnyInterface = null;
        final y:Tx = { commit : () -> x.commit(), rollback : () -> x.rollback(), __underlying__ : () -> __f__() };
        __f__ = () -> stdgo.Go.toInterface(y);
        return y;
    }
}
class ValueConverter_static_extension {
    static public function convertValue(t:stdgo._internal.database.sql.driver.Driver_valueconverter.ValueConverter, _v:stdgo.AnyInterface):stdgo.Tuple<Value, stdgo.Error> {
        final _v = (_v : stdgo.AnyInterface);
        return {
            final obj = stdgo._internal.database.sql.driver.Driver_valueconverter_static_extension.ValueConverter_static_extension.convertValue(t, _v);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
@:interface @:forward abstract ValueConverter(stdgo._internal.database.sql.driver.Driver_valueconverter.ValueConverter) from stdgo._internal.database.sql.driver.Driver_valueconverter.ValueConverter to stdgo._internal.database.sql.driver.Driver_valueconverter.ValueConverter {
    @:from
    static function fromHaxeInterface(x:{ function convertValue(_v:stdgo.AnyInterface):stdgo.Tuple<Value, stdgo.Error>; }):ValueConverter {
        var __f__:Void -> stdgo.AnyInterface = null;
        final y:ValueConverter = { convertValue : _0 -> {
            final obj = x.convertValue(_0);
            { _0 : obj._0, _1 : obj._1 };
        }, __underlying__ : () -> __f__() };
        __f__ = () -> stdgo.Go.toInterface(y);
        return y;
    }
}
class Valuer_static_extension {
    static public function value(t:stdgo._internal.database.sql.driver.Driver_valuer.Valuer):stdgo.Tuple<Value, stdgo.Error> {
        return {
            final obj = stdgo._internal.database.sql.driver.Driver_valuer_static_extension.Valuer_static_extension.value(t);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
@:interface @:forward abstract Valuer(stdgo._internal.database.sql.driver.Driver_valuer.Valuer) from stdgo._internal.database.sql.driver.Driver_valuer.Valuer to stdgo._internal.database.sql.driver.Driver_valuer.Valuer {
    @:from
    static function fromHaxeInterface(x:{ function value():stdgo.Tuple<Value, stdgo.Error>; }):Valuer {
        var __f__:Void -> stdgo.AnyInterface = null;
        final y:Valuer = { value : () -> {
            final obj = x.value();
            { _0 : obj._0, _1 : obj._1 };
        }, __underlying__ : () -> __f__() };
        __f__ = () -> stdgo.Go.toInterface(y);
        return y;
    }
}
@:dox(hide) class T_decimalDecompose_static_extension {
    static public function decompose(t:stdgo._internal.database.sql.driver.Driver_t_decimaldecompose.T_decimalDecompose, _buf:Array<std.UInt>):stdgo.Tuple.Tuple4<std.UInt, Bool, Array<std.UInt>, StdTypes.Int> {
        final _buf = ([for (i in _buf) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.database.sql.driver.Driver_t_decimaldecompose_static_extension.T_decimalDecompose_static_extension.decompose(t, _buf);
            { _0 : obj._0, _1 : obj._1, _2 : [for (i in obj._2) i], _3 : obj._3 };
        };
    }
}
@:interface @:dox(hide) @:forward abstract T_decimalDecompose(stdgo._internal.database.sql.driver.Driver_t_decimaldecompose.T_decimalDecompose) from stdgo._internal.database.sql.driver.Driver_t_decimaldecompose.T_decimalDecompose to stdgo._internal.database.sql.driver.Driver_t_decimaldecompose.T_decimalDecompose {
    @:from
    static function fromHaxeInterface(x:{ function decompose(_buf:Array<std.UInt>):stdgo.Tuple.Tuple4<std.UInt, Bool, Array<std.UInt>, StdTypes.Int>; }):T_decimalDecompose {
        var __f__:Void -> stdgo.AnyInterface = null;
        final y:T_decimalDecompose = { decompose : _0 -> {
            final obj = x.decompose([for (i in _0) i]);
            { _0 : obj._0, _1 : obj._1, _2 : [for (i in obj._2) i], _3 : obj._3 };
        }, __underlying__ : () -> __f__() };
        __f__ = () -> stdgo.Go.toInterface(y);
        return y;
    }
}
@:structInit @:using(stdgo.database.sql.driver.Driver.NamedValue_static_extension) abstract NamedValue(stdgo._internal.database.sql.driver.Driver_namedvalue.NamedValue) from stdgo._internal.database.sql.driver.Driver_namedvalue.NamedValue to stdgo._internal.database.sql.driver.Driver_namedvalue.NamedValue {
    public var name(get, set) : String;
    function get_name():String return this.name;
    function set_name(v:String):String {
        this.name = (v : stdgo.GoString);
        return v;
    }
    public var ordinal(get, set) : StdTypes.Int;
    function get_ordinal():StdTypes.Int return this.ordinal;
    function set_ordinal(v:StdTypes.Int):StdTypes.Int {
        this.ordinal = (v : stdgo.GoInt);
        return v;
    }
    public var value(get, set) : Value;
    function get_value():Value return this.value;
    function set_value(v:Value):Value {
        this.value = v;
        return v;
    }
    public function new(?name:String, ?ordinal:StdTypes.Int, ?value:Value) this = new stdgo._internal.database.sql.driver.Driver_namedvalue.NamedValue((name : stdgo.GoString), (ordinal : stdgo.GoInt), value);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.database.sql.driver.Driver.TxOptions_static_extension) abstract TxOptions(stdgo._internal.database.sql.driver.Driver_txoptions.TxOptions) from stdgo._internal.database.sql.driver.Driver_txoptions.TxOptions to stdgo._internal.database.sql.driver.Driver_txoptions.TxOptions {
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
    public function new(?isolation:IsolationLevel, ?readOnly:Bool) this = new stdgo._internal.database.sql.driver.Driver_txoptions.TxOptions(isolation, readOnly);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.database.sql.driver.Driver.T_noRows_static_extension) @:dox(hide) abstract T_noRows(stdgo._internal.database.sql.driver.Driver_t_norows.T_noRows) from stdgo._internal.database.sql.driver.Driver_t_norows.T_noRows to stdgo._internal.database.sql.driver.Driver_t_norows.T_noRows {
    public function new() this = new stdgo._internal.database.sql.driver.Driver_t_norows.T_noRows();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.database.sql.driver.Driver.T_boolType_static_extension) @:dox(hide) abstract T_boolType(stdgo._internal.database.sql.driver.Driver_t_booltype.T_boolType) from stdgo._internal.database.sql.driver.Driver_t_booltype.T_boolType to stdgo._internal.database.sql.driver.Driver_t_booltype.T_boolType {
    public function new() this = new stdgo._internal.database.sql.driver.Driver_t_booltype.T_boolType();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.database.sql.driver.Driver.T_int32Type_static_extension) @:dox(hide) abstract T_int32Type(stdgo._internal.database.sql.driver.Driver_t_int32type.T_int32Type) from stdgo._internal.database.sql.driver.Driver_t_int32type.T_int32Type to stdgo._internal.database.sql.driver.Driver_t_int32type.T_int32Type {
    public function new() this = new stdgo._internal.database.sql.driver.Driver_t_int32type.T_int32Type();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.database.sql.driver.Driver.T_stringType_static_extension) @:dox(hide) abstract T_stringType(stdgo._internal.database.sql.driver.Driver_t_stringtype.T_stringType) from stdgo._internal.database.sql.driver.Driver_t_stringtype.T_stringType to stdgo._internal.database.sql.driver.Driver_t_stringtype.T_stringType {
    public function new() this = new stdgo._internal.database.sql.driver.Driver_t_stringtype.T_stringType();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.database.sql.driver.Driver.Null__static_extension) abstract Null_(stdgo._internal.database.sql.driver.Driver_null_.Null_) from stdgo._internal.database.sql.driver.Driver_null_.Null_ to stdgo._internal.database.sql.driver.Driver_null_.Null_ {
    public var converter(get, set) : ValueConverter;
    function get_converter():ValueConverter return this.converter;
    function set_converter(v:ValueConverter):ValueConverter {
        this.converter = v;
        return v;
    }
    public function new(?converter:ValueConverter) this = new stdgo._internal.database.sql.driver.Driver_null_.Null_(converter);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.database.sql.driver.Driver.NotNull_static_extension) abstract NotNull(stdgo._internal.database.sql.driver.Driver_notnull.NotNull) from stdgo._internal.database.sql.driver.Driver_notnull.NotNull to stdgo._internal.database.sql.driver.Driver_notnull.NotNull {
    public var converter(get, set) : ValueConverter;
    function get_converter():ValueConverter return this.converter;
    function set_converter(v:ValueConverter):ValueConverter {
        this.converter = v;
        return v;
    }
    public function new(?converter:ValueConverter) this = new stdgo._internal.database.sql.driver.Driver_notnull.NotNull(converter);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.database.sql.driver.Driver.T_defaultConverter_static_extension) @:dox(hide) abstract T_defaultConverter(stdgo._internal.database.sql.driver.Driver_t_defaultconverter.T_defaultConverter) from stdgo._internal.database.sql.driver.Driver_t_defaultconverter.T_defaultConverter to stdgo._internal.database.sql.driver.Driver_t_defaultconverter.T_defaultConverter {
    public function new() this = new stdgo._internal.database.sql.driver.Driver_t_defaultconverter.T_defaultConverter();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
typedef Value = stdgo._internal.database.sql.driver.Driver_value.Value;
typedef IsolationLevel = stdgo._internal.database.sql.driver.Driver_isolationlevel.IsolationLevel;
typedef RowsAffected = stdgo._internal.database.sql.driver.Driver_rowsaffected.RowsAffected;
typedef NamedValuePointer = stdgo._internal.database.sql.driver.Driver_namedvaluepointer.NamedValuePointer;
class NamedValue_static_extension {

}
typedef TxOptionsPointer = stdgo._internal.database.sql.driver.Driver_txoptionspointer.TxOptionsPointer;
class TxOptions_static_extension {

}
@:dox(hide) typedef T_noRowsPointer = stdgo._internal.database.sql.driver.Driver_t_norowspointer.T_noRowsPointer;
@:dox(hide) class T_noRows_static_extension {
    static public function rowsAffected(_:T_noRows):stdgo.Tuple<haxe.Int64, stdgo.Error> {
        return {
            final obj = stdgo._internal.database.sql.driver.Driver_t_norows_static_extension.T_noRows_static_extension.rowsAffected(_);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function lastInsertId(_:T_noRows):stdgo.Tuple<haxe.Int64, stdgo.Error> {
        return {
            final obj = stdgo._internal.database.sql.driver.Driver_t_norows_static_extension.T_noRows_static_extension.lastInsertId(_);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
@:dox(hide) typedef T_boolTypePointer = stdgo._internal.database.sql.driver.Driver_t_booltypepointer.T_boolTypePointer;
@:dox(hide) class T_boolType_static_extension {
    static public function convertValue(_:T_boolType, _src:stdgo.AnyInterface):stdgo.Tuple<Value, stdgo.Error> {
        final _src = (_src : stdgo.AnyInterface);
        return {
            final obj = stdgo._internal.database.sql.driver.Driver_t_booltype_static_extension.T_boolType_static_extension.convertValue(_, _src);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function string(_:T_boolType):String {
        return stdgo._internal.database.sql.driver.Driver_t_booltype_static_extension.T_boolType_static_extension.string(_);
    }
}
@:dox(hide) typedef T_int32TypePointer = stdgo._internal.database.sql.driver.Driver_t_int32typepointer.T_int32TypePointer;
@:dox(hide) class T_int32Type_static_extension {
    static public function convertValue(_:T_int32Type, _v:stdgo.AnyInterface):stdgo.Tuple<Value, stdgo.Error> {
        final _v = (_v : stdgo.AnyInterface);
        return {
            final obj = stdgo._internal.database.sql.driver.Driver_t_int32type_static_extension.T_int32Type_static_extension.convertValue(_, _v);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
@:dox(hide) typedef T_stringTypePointer = stdgo._internal.database.sql.driver.Driver_t_stringtypepointer.T_stringTypePointer;
@:dox(hide) class T_stringType_static_extension {
    static public function convertValue(_:T_stringType, _v:stdgo.AnyInterface):stdgo.Tuple<Value, stdgo.Error> {
        final _v = (_v : stdgo.AnyInterface);
        return {
            final obj = stdgo._internal.database.sql.driver.Driver_t_stringtype_static_extension.T_stringType_static_extension.convertValue(_, _v);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
typedef Null_Pointer = stdgo._internal.database.sql.driver.Driver_null_pointer.Null_Pointer;
class Null__static_extension {
    static public function convertValue(_n:Null_, _v:stdgo.AnyInterface):stdgo.Tuple<Value, stdgo.Error> {
        final _v = (_v : stdgo.AnyInterface);
        return {
            final obj = stdgo._internal.database.sql.driver.Driver_null__static_extension.Null__static_extension.convertValue(_n, _v);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
typedef NotNullPointer = stdgo._internal.database.sql.driver.Driver_notnullpointer.NotNullPointer;
class NotNull_static_extension {
    static public function convertValue(_n:NotNull, _v:stdgo.AnyInterface):stdgo.Tuple<Value, stdgo.Error> {
        final _v = (_v : stdgo.AnyInterface);
        return {
            final obj = stdgo._internal.database.sql.driver.Driver_notnull_static_extension.NotNull_static_extension.convertValue(_n, _v);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
@:dox(hide) typedef T_defaultConverterPointer = stdgo._internal.database.sql.driver.Driver_t_defaultconverterpointer.T_defaultConverterPointer;
@:dox(hide) class T_defaultConverter_static_extension {
    static public function convertValue(_:T_defaultConverter, _v:stdgo.AnyInterface):stdgo.Tuple<Value, stdgo.Error> {
        final _v = (_v : stdgo.AnyInterface);
        return {
            final obj = stdgo._internal.database.sql.driver.Driver_t_defaultconverter_static_extension.T_defaultConverter_static_extension.convertValue(_, _v);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
typedef ValuePointer = stdgo._internal.database.sql.driver.Driver_valuepointer.ValuePointer;
class Value_static_extension {

}
typedef IsolationLevelPointer = stdgo._internal.database.sql.driver.Driver_isolationlevelpointer.IsolationLevelPointer;
class IsolationLevel_static_extension {

}
typedef RowsAffectedPointer = stdgo._internal.database.sql.driver.Driver_rowsaffectedpointer.RowsAffectedPointer;
class RowsAffected_static_extension {
    static public function rowsAffected(_v:RowsAffected):stdgo.Tuple<haxe.Int64, stdgo.Error> {
        return {
            final obj = stdgo._internal.database.sql.driver.Driver_rowsaffected_static_extension.RowsAffected_static_extension.rowsAffected(_v);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function lastInsertId(_:RowsAffected):stdgo.Tuple<haxe.Int64, stdgo.Error> {
        return {
            final obj = stdgo._internal.database.sql.driver.Driver_rowsaffected_static_extension.RowsAffected_static_extension.lastInsertId(_);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
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
    static public inline function isValue(_v:stdgo.AnyInterface):Bool {
        final _v = (_v : stdgo.AnyInterface);
        return stdgo._internal.database.sql.driver.Driver_isvalue.isValue(_v);
    }
    /**
        * IsScanValue is equivalent to IsValue.
        * It exists for compatibility.
    **/
    static public inline function isScanValue(_v:stdgo.AnyInterface):Bool {
        final _v = (_v : stdgo.AnyInterface);
        return stdgo._internal.database.sql.driver.Driver_isscanvalue.isScanValue(_v);
    }
}
