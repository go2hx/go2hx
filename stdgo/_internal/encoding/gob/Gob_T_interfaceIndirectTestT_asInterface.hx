package stdgo._internal.encoding.gob;
class T_interfaceIndirectTestT_asInterface {
    @:keep
    public dynamic function f():Bool return __self__.value.f();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<stdgo._internal.encoding.gob.Gob_T_interfaceIndirectTestT.T_interfaceIndirectTestT>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
