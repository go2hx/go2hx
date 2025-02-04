package stdgo._internal.encoding.binary;
class T_encoder_asInterface {
    @:keep
    @:tdfield
    public dynamic function _skip(_v:stdgo._internal.reflect.Reflect_value.Value):Void @:_0 __self__.value._skip(_v);
    @:keep
    @:tdfield
    public dynamic function _value(_v:stdgo._internal.reflect.Reflect_value.Value):Void @:_0 __self__.value._value(_v);
    @:keep
    @:tdfield
    public dynamic function _int64(_x:stdgo.GoInt64):Void @:_0 __self__.value._int64(_x);
    @:keep
    @:tdfield
    public dynamic function _int32(_x:stdgo.GoInt32):Void @:_0 __self__.value._int32(_x);
    @:keep
    @:tdfield
    public dynamic function _int16(_x:stdgo.GoInt16):Void @:_0 __self__.value._int16(_x);
    @:keep
    @:tdfield
    public dynamic function _int8(_x:stdgo.GoInt8):Void @:_0 __self__.value._int8(_x);
    @:keep
    @:tdfield
    public dynamic function _uint64(_x:stdgo.GoUInt64):Void @:_0 __self__.value._uint64(_x);
    @:keep
    @:tdfield
    public dynamic function _uint32(_x:stdgo.GoUInt32):Void @:_0 __self__.value._uint32(_x);
    @:keep
    @:tdfield
    public dynamic function _uint16(_x:stdgo.GoUInt16):Void @:_0 __self__.value._uint16(_x);
    @:keep
    @:tdfield
    public dynamic function _uint8(_x:stdgo.GoUInt8):Void @:_0 __self__.value._uint8(_x);
    @:keep
    @:tdfield
    public dynamic function _bool(_x:Bool):Void @:_0 __self__.value._bool(_x);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.encoding.binary.Binary_t_encoderpointer.T_encoderPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
