package stdgo._internal.database.sql;
class T_ccChecker_asInterface {
    @:keep
    @:tdfield
    public dynamic function checkNamedValue(_nv:stdgo.Ref<stdgo._internal.database.sql.driver.Driver_NamedValue.NamedValue>):stdgo.Error return @:_0 __self__.value.checkNamedValue(_nv);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.database.sql.Sql_T_ccCheckerPointer.T_ccCheckerPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
