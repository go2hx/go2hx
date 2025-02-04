package stdgo._internal.encoding.gob;
class Vector_asInterface {
    @:keep
    @:tdfield
    public dynamic function square():stdgo.GoInt return @:_0 __self__.value.square();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.encoding.gob.Gob_vectorpointer.VectorPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
