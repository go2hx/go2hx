package stdgo._internal.database.sql;
class Tx_asInterface {
    @:keep
    @:tdfield
    public dynamic function queryRow(_query:stdgo.GoString, _args:haxe.Rest<stdgo.AnyInterface>):stdgo.Ref<stdgo._internal.database.sql.Sql_row.Row> return @:_0 __self__.value.queryRow(_query, ..._args);
    @:keep
    @:tdfield
    public dynamic function queryRowContext(_ctx:stdgo._internal.context.Context_context.Context, _query:stdgo.GoString, _args:haxe.Rest<stdgo.AnyInterface>):stdgo.Ref<stdgo._internal.database.sql.Sql_row.Row> return @:_0 __self__.value.queryRowContext(_ctx, _query, ..._args);
    @:keep
    @:tdfield
    public dynamic function query(_query:stdgo.GoString, _args:haxe.Rest<stdgo.AnyInterface>):{ var _0 : stdgo.Ref<stdgo._internal.database.sql.Sql_rows.Rows>; var _1 : stdgo.Error; } return @:_0 __self__.value.query(_query, ..._args);
    @:keep
    @:tdfield
    public dynamic function queryContext(_ctx:stdgo._internal.context.Context_context.Context, _query:stdgo.GoString, _args:haxe.Rest<stdgo.AnyInterface>):{ var _0 : stdgo.Ref<stdgo._internal.database.sql.Sql_rows.Rows>; var _1 : stdgo.Error; } return @:_0 __self__.value.queryContext(_ctx, _query, ..._args);
    @:keep
    @:tdfield
    public dynamic function exec(_query:stdgo.GoString, _args:haxe.Rest<stdgo.AnyInterface>):{ var _0 : stdgo._internal.database.sql.Sql_result.Result; var _1 : stdgo.Error; } return @:_0 __self__.value.exec(_query, ..._args);
    @:keep
    @:tdfield
    public dynamic function execContext(_ctx:stdgo._internal.context.Context_context.Context, _query:stdgo.GoString, _args:haxe.Rest<stdgo.AnyInterface>):{ var _0 : stdgo._internal.database.sql.Sql_result.Result; var _1 : stdgo.Error; } return @:_0 __self__.value.execContext(_ctx, _query, ..._args);
    @:keep
    @:tdfield
    public dynamic function stmt(_stmt:stdgo.Ref<stdgo._internal.database.sql.Sql_stmt.Stmt>):stdgo.Ref<stdgo._internal.database.sql.Sql_stmt.Stmt> return @:_0 __self__.value.stmt(_stmt);
    @:keep
    @:tdfield
    public dynamic function stmtContext(_ctx:stdgo._internal.context.Context_context.Context, _stmt:stdgo.Ref<stdgo._internal.database.sql.Sql_stmt.Stmt>):stdgo.Ref<stdgo._internal.database.sql.Sql_stmt.Stmt> return @:_0 __self__.value.stmtContext(_ctx, _stmt);
    @:keep
    @:tdfield
    public dynamic function prepare(_query:stdgo.GoString):{ var _0 : stdgo.Ref<stdgo._internal.database.sql.Sql_stmt.Stmt>; var _1 : stdgo.Error; } return @:_0 __self__.value.prepare(_query);
    @:keep
    @:tdfield
    public dynamic function prepareContext(_ctx:stdgo._internal.context.Context_context.Context, _query:stdgo.GoString):{ var _0 : stdgo.Ref<stdgo._internal.database.sql.Sql_stmt.Stmt>; var _1 : stdgo.Error; } return @:_0 __self__.value.prepareContext(_ctx, _query);
    @:keep
    @:tdfield
    public dynamic function rollback():stdgo.Error return @:_0 __self__.value.rollback();
    @:keep
    @:tdfield
    public dynamic function _rollback(_discardConn:Bool):stdgo.Error return @:_0 __self__.value._rollback(_discardConn);
    @:keep
    @:tdfield
    public dynamic function commit():stdgo.Error return @:_0 __self__.value.commit();
    @:keep
    @:tdfield
    public dynamic function _closePrepared():Void @:_0 __self__.value._closePrepared();
    @:keep
    @:tdfield
    public dynamic function _closemuRUnlockRelease(_0:stdgo.Error):Void @:_0 __self__.value._closemuRUnlockRelease(_0);
    @:keep
    @:tdfield
    public dynamic function _txCtx():stdgo._internal.context.Context_context.Context return @:_0 __self__.value._txCtx();
    @:keep
    @:tdfield
    public dynamic function _grabConn(_ctx:stdgo._internal.context.Context_context.Context):{ var _0 : stdgo.Ref<stdgo._internal.database.sql.Sql_t_driverconn.T_driverConn>; var _1 : stdgo._internal.database.sql.Sql_t_releaseconn.T_releaseConn; var _2 : stdgo.Error; } return @:_0 __self__.value._grabConn(_ctx);
    @:keep
    @:tdfield
    public dynamic function _close(_err:stdgo.Error):Void @:_0 __self__.value._close(_err);
    @:keep
    @:tdfield
    public dynamic function _isDone():Bool return @:_0 __self__.value._isDone();
    @:keep
    @:tdfield
    public dynamic function _awaitDone():Void @:_0 __self__.value._awaitDone();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.database.sql.Sql_txpointer.TxPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
