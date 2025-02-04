package stdgo._internal.encoding.asn1;
class T_bytesEncoder_asInterface {
    @:keep
    @:tdfield
    public dynamic function encode(_dst:stdgo.Slice<stdgo.GoUInt8>):Void @:_0 __self__.value.encode(_dst);
    @:keep
    @:tdfield
    public dynamic function len():stdgo.GoInt return @:_0 __self__.value.len();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.encoding.asn1.Asn1_t_bytesencoderpointer.T_bytesEncoderPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
