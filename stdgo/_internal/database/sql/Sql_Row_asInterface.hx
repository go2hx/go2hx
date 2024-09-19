package stdgo._internal.database.sql;
class Row_asInterface {
    @:keep
    public dynamic function err():stdgo.Error return __self__.value.err();
    @:keep
    public dynamic function scan(_dest:haxe.Rest<stdgo.AnyInterface>):stdgo.Error return __self__.value.scan(..._dest);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<stdgo._internal.database.sql.Sql_Row.Row>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
