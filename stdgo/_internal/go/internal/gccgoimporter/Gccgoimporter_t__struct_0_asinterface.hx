package stdgo._internal.go.internal.gccgoimporter;
class T__struct_0_asInterface {
    @:embedded
    @:localembedfields
    public dynamic function underlying():stdgo._internal.go.types.Types_type_.Type_ return @:_0 __self__.value.underlying();
    @:embedded
    @:localembedfields
    public dynamic function string():stdgo.GoString return @:_0 __self__.value.string();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.go.internal.gccgoimporter.Gccgoimporter_t__struct_0pointer.T__struct_0Pointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
