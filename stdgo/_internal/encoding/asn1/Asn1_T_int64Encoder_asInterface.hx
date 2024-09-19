package stdgo._internal.encoding.asn1;
class T_int64Encoder_asInterface {
    @:keep
    public dynamic function encode(_dst:stdgo.Slice<stdgo.GoUInt8>):Void __self__.value.encode(_dst);
    @:keep
    public dynamic function len():stdgo.GoInt return __self__.value.len();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<stdgo._internal.encoding.asn1.Asn1_T_int64Encoder.T_int64Encoder>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
