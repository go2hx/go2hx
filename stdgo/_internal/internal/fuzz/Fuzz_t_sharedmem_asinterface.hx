package stdgo._internal.internal.fuzz;
class T_sharedMem_asInterface {
    @:keep
    @:tdfield
    public dynamic function close():stdgo.Error return @:_0 __self__.value.close();
    @:keep
    @:tdfield
    public dynamic function _setValueLen(_n:stdgo.GoInt):Void @:_0 __self__.value._setValueLen(_n);
    @:keep
    @:tdfield
    public dynamic function _setValue(_b:stdgo.Slice<stdgo.GoUInt8>):Void @:_0 __self__.value._setValue(_b);
    @:keep
    @:tdfield
    public dynamic function _valueCopy():stdgo.Slice<stdgo.GoUInt8> return @:_0 __self__.value._valueCopy();
    @:keep
    @:tdfield
    public dynamic function _valueRef():stdgo.Slice<stdgo.GoUInt8> return @:_0 __self__.value._valueRef();
    @:keep
    @:tdfield
    public dynamic function _header():stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_t_sharedmemheader.T_sharedMemHeader> return @:_0 __self__.value._header();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.internal.fuzz.Fuzz_t_sharedmempointer.T_sharedMemPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
