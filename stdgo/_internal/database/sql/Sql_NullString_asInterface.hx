package stdgo._internal.database.sql;
class NullString_asInterface {
    @:keep
    public dynamic function value():{ var _0 : stdgo._internal.database.sql.driver.Driver_Value.Value; var _1 : stdgo.Error; } return __self__.value.value();
    @:keep
    public dynamic function scan(_value:stdgo.AnyInterface):stdgo.Error return __self__.value.scan(_value);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<stdgo._internal.database.sql.Sql_NullString.NullString>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
