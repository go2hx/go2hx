package stdgo._internal.compress.bzip2;
class T_moveToFrontDecoder_asInterface {
    @:keep
    @:tdfield
    public dynamic function first():stdgo.GoUInt8 return @:_0 __self__.value.first();
    @:keep
    @:tdfield
    public dynamic function decode(_n:stdgo.GoInt):stdgo.GoUInt8 return @:_0 __self__.value.decode(_n);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.compress.bzip2.Bzip2_t_movetofrontdecoderpointer.T_moveToFrontDecoderPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
