package stdgo._internal.encoding.binary;
class T_decoder_asInterface {
    @:keep
    public dynamic function _skip(_v:stdgo._internal.reflect.Reflect_Value.Value):Void __self__.value._skip(_v);
    @:keep
    public dynamic function _value(_v:stdgo._internal.reflect.Reflect_Value.Value):Void __self__.value._value(_v);
    @:keep
    public dynamic function _int64():stdgo.GoInt64 return __self__.value._int64();
    @:keep
    public dynamic function _int32():stdgo.GoInt32 return __self__.value._int32();
    @:keep
    public dynamic function _int16():stdgo.GoInt16 return __self__.value._int16();
    @:keep
    public dynamic function _int8():stdgo.GoInt8 return __self__.value._int8();
    @:keep
    public dynamic function _uint64():stdgo.GoUInt64 return __self__.value._uint64();
    @:keep
    public dynamic function _uint32():stdgo.GoUInt32 return __self__.value._uint32();
    @:keep
    public dynamic function _uint16():stdgo.GoUInt16 return __self__.value._uint16();
    @:keep
    public dynamic function _uint8():stdgo.GoUInt8 return __self__.value._uint8();
    @:keep
    public dynamic function _bool():Bool return __self__.value._bool();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<stdgo._internal.encoding.binary.Binary_T_decoder.T_decoder>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
