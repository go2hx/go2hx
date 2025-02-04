package stdgo._internal.internal.zstd;
class T_reverseBitReader_asInterface {
    @:keep
    @:tdfield
    public dynamic function _makeError(_msg:stdgo.GoString):stdgo.Error return @:_0 __self__.value._makeError(_msg);
    @:keep
    @:tdfield
    public dynamic function _fetch(_b:stdgo.GoUInt8):Bool return @:_0 __self__.value._fetch(_b);
    @:keep
    @:tdfield
    public dynamic function _val(_b:stdgo.GoUInt8):{ var _0 : stdgo.GoUInt32; var _1 : stdgo.Error; } return @:_0 __self__.value._val(_b);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.internal.zstd.Zstd_t_reversebitreaderpointer.T_reverseBitReaderPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
