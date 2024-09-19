package stdgo._internal.database.sql;
class Conn_asInterface {
    @:keep
    public dynamic function close():stdgo.Error return __self__.value.close();
    @:keep
    public dynamic function _close(_err:stdgo.Error):stdgo.Error return __self__.value._close(_err);
    @:keep
    public dynamic function _txCtx():stdgo._internal.context.Context_Context.Context return __self__.value._txCtx();
    @:keep
    public dynamic function _closemuRUnlockCondReleaseConn(_err:stdgo.Error):Void __self__.value._closemuRUnlockCondReleaseConn(_err);
    @:keep
    public dynamic function beginTx(_ctx:stdgo._internal.context.Context_Context.Context, _opts:stdgo.Ref<stdgo._internal.database.sql.Sql_TxOptions.TxOptions>):{ var _0 : stdgo.Ref<stdgo._internal.database.sql.Sql_Tx.Tx>; var _1 : stdgo.Error; } return __self__.value.beginTx(_ctx, _opts);
    @:keep
    public dynamic function raw(_f:stdgo.AnyInterface -> stdgo.Error):stdgo.Error return __self__.value.raw(_f);
    @:keep
    public dynamic function prepareContext(_ctx:stdgo._internal.context.Context_Context.Context, _query:stdgo.GoString):{ var _0 : stdgo.Ref<stdgo._internal.database.sql.Sql_Stmt.Stmt>; var _1 : stdgo.Error; } return __self__.value.prepareContext(_ctx, _query);
    @:keep
    public dynamic function queryRowContext(_ctx:stdgo._internal.context.Context_Context.Context, _query:stdgo.GoString, _args:haxe.Rest<stdgo.AnyInterface>):stdgo.Ref<stdgo._internal.database.sql.Sql_Row.Row> return __self__.value.queryRowContext(_ctx, _query, ..._args);
    @:keep
    public dynamic function queryContext(_ctx:stdgo._internal.context.Context_Context.Context, _query:stdgo.GoString, _args:haxe.Rest<stdgo.AnyInterface>):{ var _0 : stdgo.Ref<stdgo._internal.database.sql.Sql_Rows.Rows>; var _1 : stdgo.Error; } return __self__.value.queryContext(_ctx, _query, ..._args);
    @:keep
    public dynamic function execContext(_ctx:stdgo._internal.context.Context_Context.Context, _query:stdgo.GoString, _args:haxe.Rest<stdgo.AnyInterface>):{ var _0 : stdgo._internal.database.sql.Sql_Result.Result; var _1 : stdgo.Error; } return __self__.value.execContext(_ctx, _query, ..._args);
    @:keep
    public dynamic function pingContext(_ctx:stdgo._internal.context.Context_Context.Context):stdgo.Error return __self__.value.pingContext(_ctx);
    @:keep
    public dynamic function _grabConn(_0:stdgo._internal.context.Context_Context.Context):{ var _0 : stdgo.Ref<stdgo._internal.database.sql.Sql_T_driverConn.T_driverConn>; var _1 : stdgo._internal.database.sql.Sql_T_releaseConn.T_releaseConn; var _2 : stdgo.Error; } return __self__.value._grabConn(_0);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<stdgo._internal.database.sql.Sql_Conn.Conn>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
