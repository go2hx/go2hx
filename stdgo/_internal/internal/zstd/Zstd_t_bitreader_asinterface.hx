package stdgo._internal.internal.zstd;
class T_bitReader_asInterface {
    @:keep
    @:tdfield
    public dynamic function _makeError(_msg:stdgo.GoString):stdgo.Error return @:_0 __self__.value._makeError(_msg);
    @:keep
    @:tdfield
    public dynamic function _backup():Void @:_0 __self__.value._backup();
    @:keep
    @:tdfield
    public dynamic function _val(_b:stdgo.GoUInt8):stdgo.GoUInt32 return @:_0 __self__.value._val(_b);
    @:keep
    @:tdfield
    public dynamic function _moreBits():stdgo.Error return @:_0 __self__.value._moreBits();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.internal.zstd.Zstd_t_bitreaderpointer.T_bitReaderPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
