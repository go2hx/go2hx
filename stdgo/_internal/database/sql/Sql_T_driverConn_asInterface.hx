package stdgo._internal.database.sql;
class T_driverConn_asInterface {
    @:keep
    public dynamic function _finalClose():stdgo.Error return __self__.value._finalClose();
    @:keep
    public dynamic function close():stdgo.Error return __self__.value.close();
    @:keep
    public dynamic function _closeDBLocked():() -> stdgo.Error return __self__.value._closeDBLocked();
    @:keep
    public dynamic function _prepareLocked(_ctx:stdgo._internal.context.Context_Context.Context, _cg:stdgo._internal.database.sql.Sql_T_stmtConnGrabber.T_stmtConnGrabber, _query:stdgo.GoString):{ var _0 : stdgo.Ref<stdgo._internal.database.sql.Sql_T_driverStmt.T_driverStmt>; var _1 : stdgo.Error; } return __self__.value._prepareLocked(_ctx, _cg, _query);
    @:keep
    public dynamic function _validateConnection(_needsReset:Bool):Bool return __self__.value._validateConnection(_needsReset);
    @:keep
    public dynamic function _resetSession(_ctx:stdgo._internal.context.Context_Context.Context):stdgo.Error return __self__.value._resetSession(_ctx);
    @:keep
    public dynamic function _expired(_timeout:stdgo._internal.time.Time_Duration.Duration):Bool return __self__.value._expired(_timeout);
    @:keep
    public dynamic function _removeOpenStmt(_ds:stdgo.Ref<stdgo._internal.database.sql.Sql_T_driverStmt.T_driverStmt>):Void __self__.value._removeOpenStmt(_ds);
    @:keep
    public dynamic function _releaseConn(_err:stdgo.Error):Void __self__.value._releaseConn(_err);
    @:embedded
    public dynamic function _unlockSlow(_r:stdgo.GoInt32):Void __self__.value._unlockSlow(_r);
    @:embedded
    public dynamic function _lockSlow():Void __self__.value._lockSlow();
    @:embedded
    public dynamic function unlock():Void __self__.value.unlock();
    @:embedded
    public dynamic function tryLock():Bool return __self__.value.tryLock();
    @:embedded
    public dynamic function lock():Void __self__.value.lock();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<stdgo._internal.database.sql.Sql_T_driverConn.T_driverConn>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
