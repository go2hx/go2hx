package stdgo._internal.database.sql;
import stdgo._internal.errors.Errors;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.time.Time;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.database.sql.driver.Driver;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.sort.Sort;
import stdgo._internal.context.Context;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.io.Io;
class DB_asInterface {
    @:keep
    @:tdfield
    public dynamic function conn(_ctx:stdgo._internal.context.Context_Context.Context):{ var _0 : stdgo.Ref<stdgo._internal.database.sql.Sql_Conn.Conn>; var _1 : stdgo.Error; } return @:_0 __self__.value.conn(_ctx);
    @:keep
    @:tdfield
    public dynamic function driver():stdgo._internal.database.sql.driver.Driver_Driver.Driver return @:_0 __self__.value.driver();
    @:keep
    @:tdfield
    public dynamic function _beginDC(_ctx:stdgo._internal.context.Context_Context.Context, _dc:stdgo.Ref<stdgo._internal.database.sql.Sql_T_driverConn.T_driverConn>, _release:stdgo.Error -> Void, _opts:stdgo.Ref<stdgo._internal.database.sql.Sql_TxOptions.TxOptions>):{ var _0 : stdgo.Ref<stdgo._internal.database.sql.Sql_Tx.Tx>; var _1 : stdgo.Error; } return @:_0 __self__.value._beginDC(_ctx, _dc, _release, _opts);
    @:keep
    @:tdfield
    public dynamic function _begin(_ctx:stdgo._internal.context.Context_Context.Context, _opts:stdgo.Ref<stdgo._internal.database.sql.Sql_TxOptions.TxOptions>, _strategy:stdgo._internal.database.sql.Sql_T_connReuseStrategy.T_connReuseStrategy):{ var _0 : stdgo.Ref<stdgo._internal.database.sql.Sql_Tx.Tx>; var _1 : stdgo.Error; } return @:_0 __self__.value._begin(_ctx, _opts, _strategy);
    @:keep
    @:tdfield
    public dynamic function begin():{ var _0 : stdgo.Ref<stdgo._internal.database.sql.Sql_Tx.Tx>; var _1 : stdgo.Error; } return @:_0 __self__.value.begin();
    @:keep
    @:tdfield
    public dynamic function beginTx(_ctx:stdgo._internal.context.Context_Context.Context, _opts:stdgo.Ref<stdgo._internal.database.sql.Sql_TxOptions.TxOptions>):{ var _0 : stdgo.Ref<stdgo._internal.database.sql.Sql_Tx.Tx>; var _1 : stdgo.Error; } return @:_0 __self__.value.beginTx(_ctx, _opts);
    @:keep
    @:tdfield
    public dynamic function queryRow(_query:stdgo.GoString, _args:haxe.Rest<stdgo.AnyInterface>):stdgo.Ref<stdgo._internal.database.sql.Sql_Row.Row> return @:_0 __self__.value.queryRow(_query, ..._args);
    @:keep
    @:tdfield
    public dynamic function queryRowContext(_ctx:stdgo._internal.context.Context_Context.Context, _query:stdgo.GoString, _args:haxe.Rest<stdgo.AnyInterface>):stdgo.Ref<stdgo._internal.database.sql.Sql_Row.Row> return @:_0 __self__.value.queryRowContext(_ctx, _query, ..._args);
    @:keep
    @:tdfield
    public dynamic function _queryDC(_ctx:stdgo._internal.context.Context_Context.Context, _txctx:stdgo._internal.context.Context_Context.Context, _dc:stdgo.Ref<stdgo._internal.database.sql.Sql_T_driverConn.T_driverConn>, _releaseConn:stdgo.Error -> Void, _query:stdgo.GoString, _args:stdgo.Slice<stdgo.AnyInterface>):{ var _0 : stdgo.Ref<stdgo._internal.database.sql.Sql_Rows.Rows>; var _1 : stdgo.Error; } return @:_0 __self__.value._queryDC(_ctx, _txctx, _dc, _releaseConn, _query, _args);
    @:keep
    @:tdfield
    public dynamic function _query(_ctx:stdgo._internal.context.Context_Context.Context, _query:stdgo.GoString, _args:stdgo.Slice<stdgo.AnyInterface>, _strategy:stdgo._internal.database.sql.Sql_T_connReuseStrategy.T_connReuseStrategy):{ var _0 : stdgo.Ref<stdgo._internal.database.sql.Sql_Rows.Rows>; var _1 : stdgo.Error; } return @:_0 __self__.value._query(_ctx, _query, _args, _strategy);
    @:keep
    @:tdfield
    public dynamic function query(_query:stdgo.GoString, _args:haxe.Rest<stdgo.AnyInterface>):{ var _0 : stdgo.Ref<stdgo._internal.database.sql.Sql_Rows.Rows>; var _1 : stdgo.Error; } return @:_0 __self__.value.query(_query, ..._args);
    @:keep
    @:tdfield
    public dynamic function queryContext(_ctx:stdgo._internal.context.Context_Context.Context, _query:stdgo.GoString, _args:haxe.Rest<stdgo.AnyInterface>):{ var _0 : stdgo.Ref<stdgo._internal.database.sql.Sql_Rows.Rows>; var _1 : stdgo.Error; } return @:_0 __self__.value.queryContext(_ctx, _query, ..._args);
    @:keep
    @:tdfield
    public dynamic function _execDC(_ctx:stdgo._internal.context.Context_Context.Context, _dc:stdgo.Ref<stdgo._internal.database.sql.Sql_T_driverConn.T_driverConn>, _release:stdgo.Error -> Void, _query:stdgo.GoString, _args:stdgo.Slice<stdgo.AnyInterface>):{ var _0 : stdgo._internal.database.sql.Sql_Result.Result; var _1 : stdgo.Error; } return @:_0 __self__.value._execDC(_ctx, _dc, _release, _query, _args);
    @:keep
    @:tdfield
    public dynamic function _exec(_ctx:stdgo._internal.context.Context_Context.Context, _query:stdgo.GoString, _args:stdgo.Slice<stdgo.AnyInterface>, _strategy:stdgo._internal.database.sql.Sql_T_connReuseStrategy.T_connReuseStrategy):{ var _0 : stdgo._internal.database.sql.Sql_Result.Result; var _1 : stdgo.Error; } return @:_0 __self__.value._exec(_ctx, _query, _args, _strategy);
    @:keep
    @:tdfield
    public dynamic function exec(_query:stdgo.GoString, _args:haxe.Rest<stdgo.AnyInterface>):{ var _0 : stdgo._internal.database.sql.Sql_Result.Result; var _1 : stdgo.Error; } return @:_0 __self__.value.exec(_query, ..._args);
    @:keep
    @:tdfield
    public dynamic function execContext(_ctx:stdgo._internal.context.Context_Context.Context, _query:stdgo.GoString, _args:haxe.Rest<stdgo.AnyInterface>):{ var _0 : stdgo._internal.database.sql.Sql_Result.Result; var _1 : stdgo.Error; } return @:_0 __self__.value.execContext(_ctx, _query, ..._args);
    @:keep
    @:tdfield
    public dynamic function _prepareDC(_ctx:stdgo._internal.context.Context_Context.Context, _dc:stdgo.Ref<stdgo._internal.database.sql.Sql_T_driverConn.T_driverConn>, _release:stdgo.Error -> Void, _cg:stdgo._internal.database.sql.Sql_T_stmtConnGrabber.T_stmtConnGrabber, _query:stdgo.GoString):{ var _0 : stdgo.Ref<stdgo._internal.database.sql.Sql_Stmt.Stmt>; var _1 : stdgo.Error; } return @:_0 __self__.value._prepareDC(_ctx, _dc, _release, _cg, _query);
    @:keep
    @:tdfield
    public dynamic function _prepare(_ctx:stdgo._internal.context.Context_Context.Context, _query:stdgo.GoString, _strategy:stdgo._internal.database.sql.Sql_T_connReuseStrategy.T_connReuseStrategy):{ var _0 : stdgo.Ref<stdgo._internal.database.sql.Sql_Stmt.Stmt>; var _1 : stdgo.Error; } return @:_0 __self__.value._prepare(_ctx, _query, _strategy);
    @:keep
    @:tdfield
    public dynamic function prepare(_query:stdgo.GoString):{ var _0 : stdgo.Ref<stdgo._internal.database.sql.Sql_Stmt.Stmt>; var _1 : stdgo.Error; } return @:_0 __self__.value.prepare(_query);
    @:keep
    @:tdfield
    public dynamic function prepareContext(_ctx:stdgo._internal.context.Context_Context.Context, _query:stdgo.GoString):{ var _0 : stdgo.Ref<stdgo._internal.database.sql.Sql_Stmt.Stmt>; var _1 : stdgo.Error; } return @:_0 __self__.value.prepareContext(_ctx, _query);
    @:keep
    @:tdfield
    public dynamic function _retry(_fn:stdgo._internal.database.sql.Sql_T_connReuseStrategy.T_connReuseStrategy -> stdgo.Error):stdgo.Error return @:_0 __self__.value._retry(_fn);
    @:keep
    @:tdfield
    public dynamic function _putConnDBLocked(_dc:stdgo.Ref<stdgo._internal.database.sql.Sql_T_driverConn.T_driverConn>, _err:stdgo.Error):Bool return @:_0 __self__.value._putConnDBLocked(_dc, _err);
    @:keep
    @:tdfield
    public dynamic function _putConn(_dc:stdgo.Ref<stdgo._internal.database.sql.Sql_T_driverConn.T_driverConn>, _err:stdgo.Error, _resetSession:Bool):Void @:_0 __self__.value._putConn(_dc, _err, _resetSession);
    @:keep
    @:tdfield
    public dynamic function _noteUnusedDriverStatement(_c:stdgo.Ref<stdgo._internal.database.sql.Sql_T_driverConn.T_driverConn>, _ds:stdgo.Ref<stdgo._internal.database.sql.Sql_T_driverStmt.T_driverStmt>):Void @:_0 __self__.value._noteUnusedDriverStatement(_c, _ds);
    @:keep
    @:tdfield
    public dynamic function _conn(_ctx:stdgo._internal.context.Context_Context.Context, _strategy:stdgo._internal.database.sql.Sql_T_connReuseStrategy.T_connReuseStrategy):{ var _0 : stdgo.Ref<stdgo._internal.database.sql.Sql_T_driverConn.T_driverConn>; var _1 : stdgo.Error; } return @:_0 __self__.value._conn(_ctx, _strategy);
    @:keep
    @:tdfield
    public dynamic function _nextRequestKeyLocked():stdgo.GoUInt64 return @:_0 __self__.value._nextRequestKeyLocked();
    @:keep
    @:tdfield
    public dynamic function _openNewConnection(_ctx:stdgo._internal.context.Context_Context.Context):Void @:_0 __self__.value._openNewConnection(_ctx);
    @:keep
    @:tdfield
    public dynamic function _connectionOpener(_ctx:stdgo._internal.context.Context_Context.Context):Void @:_0 __self__.value._connectionOpener(_ctx);
    @:keep
    @:tdfield
    public dynamic function _maybeOpenNewConnections():Void @:_0 __self__.value._maybeOpenNewConnections();
    @:keep
    @:tdfield
    public dynamic function stats():stdgo._internal.database.sql.Sql_DBStats.DBStats return @:_0 __self__.value.stats();
    @:keep
    @:tdfield
    public dynamic function _connectionCleanerRunLocked(_d:stdgo._internal.time.Time_Duration.Duration):{ var _0 : stdgo._internal.time.Time_Duration.Duration; var _1 : stdgo.Slice<stdgo.Ref<stdgo._internal.database.sql.Sql_T_driverConn.T_driverConn>>; } return @:_0 __self__.value._connectionCleanerRunLocked(_d);
    @:keep
    @:tdfield
    public dynamic function _connectionCleaner(_d:stdgo._internal.time.Time_Duration.Duration):Void @:_0 __self__.value._connectionCleaner(_d);
    @:keep
    @:tdfield
    public dynamic function _startCleanerLocked():Void @:_0 __self__.value._startCleanerLocked();
    @:keep
    @:tdfield
    public dynamic function setConnMaxIdleTime(_d:stdgo._internal.time.Time_Duration.Duration):Void @:_0 __self__.value.setConnMaxIdleTime(_d);
    @:keep
    @:tdfield
    public dynamic function setConnMaxLifetime(_d:stdgo._internal.time.Time_Duration.Duration):Void @:_0 __self__.value.setConnMaxLifetime(_d);
    @:keep
    @:tdfield
    public dynamic function setMaxOpenConns(_n:stdgo.GoInt):Void @:_0 __self__.value.setMaxOpenConns(_n);
    @:keep
    @:tdfield
    public dynamic function setMaxIdleConns(_n:stdgo.GoInt):Void @:_0 __self__.value.setMaxIdleConns(_n);
    @:keep
    @:tdfield
    public dynamic function _shortestIdleTimeLocked():stdgo._internal.time.Time_Duration.Duration return @:_0 __self__.value._shortestIdleTimeLocked();
    @:keep
    @:tdfield
    public dynamic function _maxIdleConnsLocked():stdgo.GoInt return @:_0 __self__.value._maxIdleConnsLocked();
    @:keep
    @:tdfield
    public dynamic function close():stdgo.Error return @:_0 __self__.value.close();
    @:keep
    @:tdfield
    public dynamic function ping():stdgo.Error return @:_0 __self__.value.ping();
    @:keep
    @:tdfield
    public dynamic function pingContext(_ctx:stdgo._internal.context.Context_Context.Context):stdgo.Error return @:_0 __self__.value.pingContext(_ctx);
    @:keep
    @:tdfield
    public dynamic function _pingDC(_ctx:stdgo._internal.context.Context_Context.Context, _dc:stdgo.Ref<stdgo._internal.database.sql.Sql_T_driverConn.T_driverConn>, _release:stdgo.Error -> Void):stdgo.Error return @:_0 __self__.value._pingDC(_ctx, _dc, _release);
    @:keep
    @:tdfield
    public dynamic function _removeDepLocked(_x:stdgo._internal.database.sql.Sql_T_finalCloser.T_finalCloser, _dep:stdgo.AnyInterface):() -> stdgo.Error return @:_0 __self__.value._removeDepLocked(_x, _dep);
    @:keep
    @:tdfield
    public dynamic function _removeDep(_x:stdgo._internal.database.sql.Sql_T_finalCloser.T_finalCloser, _dep:stdgo.AnyInterface):stdgo.Error return @:_0 __self__.value._removeDep(_x, _dep);
    @:keep
    @:tdfield
    public dynamic function _addDepLocked(_x:stdgo._internal.database.sql.Sql_T_finalCloser.T_finalCloser, _dep:stdgo.AnyInterface):Void @:_0 __self__.value._addDepLocked(_x, _dep);
    @:keep
    @:tdfield
    public dynamic function _addDep(_x:stdgo._internal.database.sql.Sql_T_finalCloser.T_finalCloser, _dep:stdgo.AnyInterface):Void @:_0 __self__.value._addDep(_x, _dep);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.database.sql.Sql_DBPointer.DBPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
