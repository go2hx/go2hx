package stdgo._internal.internal.fuzz;
class T_mutator_asInterface {
    @:keep
    @:tdfield
    public dynamic function _mutateBytes(_ptrB:stdgo.Ref<stdgo.Slice<stdgo.GoUInt8>>):Void @:_0 __self__.value._mutateBytes(_ptrB);
    @:keep
    @:tdfield
    public dynamic function _mutateFloat(_v:stdgo.GoFloat64, _maxValue:stdgo.GoFloat64):stdgo.GoFloat64 return @:_0 __self__.value._mutateFloat(_v, _maxValue);
    @:keep
    @:tdfield
    public dynamic function _mutateUInt(_v:stdgo.GoUInt64, _maxValue:stdgo.GoUInt64):stdgo.GoUInt64 return @:_0 __self__.value._mutateUInt(_v, _maxValue);
    @:keep
    @:tdfield
    public dynamic function _mutateInt(_v:stdgo.GoInt64, _maxValue:stdgo.GoInt64):stdgo.GoInt64 return @:_0 __self__.value._mutateInt(_v, _maxValue);
    @:keep
    @:tdfield
    public dynamic function _mutate(_vals:stdgo.Slice<stdgo.AnyInterface>, _maxBytes:stdgo.GoInt):Void @:_0 __self__.value._mutate(_vals, _maxBytes);
    @:keep
    @:tdfield
    public dynamic function _chooseLen(_n:stdgo.GoInt):stdgo.GoInt return @:_0 __self__.value._chooseLen(_n);
    @:keep
    @:tdfield
    public dynamic function _randByteOrder():stdgo._internal.encoding.binary.Binary_byteorder.ByteOrder return @:_0 __self__.value._randByteOrder();
    @:keep
    @:tdfield
    public dynamic function _rand(_n:stdgo.GoInt):stdgo.GoInt return @:_0 __self__.value._rand(_n);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.internal.fuzz.Fuzz_t_mutatorpointer.T_mutatorPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
