package stdgo._internal.archive.zip;
class T_writeBuf_asInterface {
    @:keep
    @:tdfield
    public dynamic function _uint64(_v:stdgo.GoUInt64):Void @:_0 __self__.value._uint64(_v);
    @:keep
    @:tdfield
    public dynamic function _uint32(_v:stdgo.GoUInt32):Void @:_0 __self__.value._uint32(_v);
    @:keep
    @:tdfield
    public dynamic function _uint16(_v:stdgo.GoUInt16):Void @:_0 __self__.value._uint16(_v);
    @:keep
    @:tdfield
    public dynamic function _uint8(_v:stdgo.GoUInt8):Void @:_0 __self__.value._uint8(_v);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.archive.zip.Zip_t_writebufpointer.T_writeBufPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
