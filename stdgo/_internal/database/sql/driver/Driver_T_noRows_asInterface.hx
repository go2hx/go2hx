package stdgo._internal.database.sql.driver;
class T_noRows_asInterface {
    @:keep
    public dynamic function rowsAffected():{ var _0 : stdgo.GoInt64; var _1 : stdgo.Error; } return __self__.value.rowsAffected();
    @:keep
    public dynamic function lastInsertId():{ var _0 : stdgo.GoInt64; var _1 : stdgo.Error; } return __self__.value.lastInsertId();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<stdgo._internal.database.sql.driver.Driver_T_noRows.T_noRows>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
