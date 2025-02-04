package stdgo._internal.database.sql;
class Stmt_asInterface {
    @:keep
    @:tdfield
    public dynamic function _finalClose():stdgo.Error return @:_0 __self__.value._finalClose();
    @:keep
    @:tdfield
    public dynamic function close():stdgo.Error return @:_0 __self__.value.close();
    @:keep
    @:tdfield
    public dynamic function queryRow(_args:haxe.Rest<stdgo.AnyInterface>):stdgo.Ref<stdgo._internal.database.sql.Sql_row.Row> return @:_0 __self__.value.queryRow(..._args);
    @:keep
    @:tdfield
    public dynamic function queryRowContext(_ctx:stdgo._internal.context.Context_context.Context, _args:haxe.Rest<stdgo.AnyInterface>):stdgo.Ref<stdgo._internal.database.sql.Sql_row.Row> return @:_0 __self__.value.queryRowContext(_ctx, ..._args);
    @:keep
    @:tdfield
    public dynamic function query(_args:haxe.Rest<stdgo.AnyInterface>):{ var _0 : stdgo.Ref<stdgo._internal.database.sql.Sql_rows.Rows>; var _1 : stdgo.Error; } return @:_0 __self__.value.query(..._args);
    @:keep
    @:tdfield
    public dynamic function queryContext(_ctx:stdgo._internal.context.Context_context.Context, _args:haxe.Rest<stdgo.AnyInterface>):{ var _0 : stdgo.Ref<stdgo._internal.database.sql.Sql_rows.Rows>; var _1 : stdgo.Error; } return @:_0 __self__.value.queryContext(_ctx, ..._args);
    @:keep
    @:tdfield
    public dynamic function _prepareOnConnLocked(_ctx:stdgo._internal.context.Context_context.Context, _dc:stdgo.Ref<stdgo._internal.database.sql.Sql_t_driverconn.T_driverConn>):{ var _0 : stdgo.Ref<stdgo._internal.database.sql.Sql_t_driverstmt.T_driverStmt>; var _1 : stdgo.Error; } return @:_0 __self__.value._prepareOnConnLocked(_ctx, _dc);
    @:keep
    @:tdfield
    public dynamic function _connStmt(_ctx:stdgo._internal.context.Context_context.Context, _strategy:stdgo._internal.database.sql.Sql_t_connreusestrategy.T_connReuseStrategy):{ var _0 : stdgo.Ref<stdgo._internal.database.sql.Sql_t_driverconn.T_driverConn>; var _1 : stdgo.Error -> Void; var _2 : stdgo.Ref<stdgo._internal.database.sql.Sql_t_driverstmt.T_driverStmt>; var _3 : stdgo.Error; } return @:_0 __self__.value._connStmt(_ctx, _strategy);
    @:keep
    @:tdfield
    public dynamic function _removeClosedStmtLocked():Void @:_0 __self__.value._removeClosedStmtLocked();
    @:keep
    @:tdfield
    public dynamic function exec(_args:haxe.Rest<stdgo.AnyInterface>):{ var _0 : stdgo._internal.database.sql.Sql_result.Result; var _1 : stdgo.Error; } return @:_0 __self__.value.exec(..._args);
    @:keep
    @:tdfield
    public dynamic function execContext(_ctx:stdgo._internal.context.Context_context.Context, _args:haxe.Rest<stdgo.AnyInterface>):{ var _0 : stdgo._internal.database.sql.Sql_result.Result; var _1 : stdgo.Error; } return @:_0 __self__.value.execContext(_ctx, ..._args);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.database.sql.Sql_stmtpointer.StmtPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
