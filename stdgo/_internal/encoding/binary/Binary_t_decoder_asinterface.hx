package stdgo._internal.encoding.binary;
class T_decoder_asInterface {
    @:keep
    @:tdfield
    public dynamic function _skip(_v:stdgo._internal.reflect.Reflect_value.Value):Void @:_0 __self__.value._skip(_v);
    @:keep
    @:tdfield
    public dynamic function _value(_v:stdgo._internal.reflect.Reflect_value.Value):Void @:_0 __self__.value._value(_v);
    @:keep
    @:tdfield
    public dynamic function _int64():stdgo.GoInt64 return @:_0 __self__.value._int64();
    @:keep
    @:tdfield
    public dynamic function _int32():stdgo.GoInt32 return @:_0 __self__.value._int32();
    @:keep
    @:tdfield
    public dynamic function _int16():stdgo.GoInt16 return @:_0 __self__.value._int16();
    @:keep
    @:tdfield
    public dynamic function _int8():stdgo.GoInt8 return @:_0 __self__.value._int8();
    @:keep
    @:tdfield
    public dynamic function _uint64():stdgo.GoUInt64 return @:_0 __self__.value._uint64();
    @:keep
    @:tdfield
    public dynamic function _uint32():stdgo.GoUInt32 return @:_0 __self__.value._uint32();
    @:keep
    @:tdfield
    public dynamic function _uint16():stdgo.GoUInt16 return @:_0 __self__.value._uint16();
    @:keep
    @:tdfield
    public dynamic function _uint8():stdgo.GoUInt8 return @:_0 __self__.value._uint8();
    @:keep
    @:tdfield
    public dynamic function _bool():Bool return @:_0 __self__.value._bool();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.encoding.binary.Binary_t_decoderpointer.T_decoderPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
