package stdgo._internal.database.sql;
class T_driverResult_asInterface {
    @:keep
    public dynamic function rowsAffected():{ var _0 : stdgo.GoInt64; var _1 : stdgo.Error; } return __self__.value.rowsAffected();
    @:keep
    public dynamic function lastInsertId():{ var _0 : stdgo.GoInt64; var _1 : stdgo.Error; } return __self__.value.lastInsertId();
    @:embedded
    public dynamic function unlock():Void __self__.value.unlock();
    @:embedded
    public dynamic function lock():Void __self__.value.lock();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<stdgo._internal.database.sql.Sql_T_driverResult.T_driverResult>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}