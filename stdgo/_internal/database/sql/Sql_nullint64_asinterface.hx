package stdgo._internal.database.sql;
class NullInt64_asInterface {
    @:keep
    @:tdfield
    public dynamic function value():{ var _0 : stdgo._internal.database.sql.driver.Driver_value.Value; var _1 : stdgo.Error; } return @:_0 __self__.value.value();
    @:keep
    @:tdfield
    public dynamic function scan(_value:stdgo.AnyInterface):stdgo.Error return @:_0 __self__.value.scan(_value);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.database.sql.Sql_nullint64pointer.NullInt64Pointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
