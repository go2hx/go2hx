package stdgo._internal.compress.lzw;
class Reader_asInterface {
    @:keep
    @:tdfield
    public dynamic function _init(_src:stdgo._internal.io.Io_reader.Reader, _order:stdgo._internal.compress.lzw.Lzw_order.Order, _litWidth:stdgo.GoInt):Void @:_0 __self__.value._init(_src, _order, _litWidth);
    @:keep
    @:tdfield
    public dynamic function reset(_src:stdgo._internal.io.Io_reader.Reader, _order:stdgo._internal.compress.lzw.Lzw_order.Order, _litWidth:stdgo.GoInt):Void @:_0 __self__.value.reset(_src, _order, _litWidth);
    @:keep
    @:tdfield
    public dynamic function close():stdgo.Error return @:_0 __self__.value.close();
    @:keep
    @:tdfield
    public dynamic function _decode():Void @:_0 __self__.value._decode();
    @:keep
    @:tdfield
    public dynamic function read(_b:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return @:_0 __self__.value.read(_b);
    @:keep
    @:tdfield
    public dynamic function _readMSB():{ var _0 : stdgo.GoUInt16; var _1 : stdgo.Error; } return @:_0 __self__.value._readMSB();
    @:keep
    @:tdfield
    public dynamic function _readLSB():{ var _0 : stdgo.GoUInt16; var _1 : stdgo.Error; } return @:_0 __self__.value._readLSB();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.compress.lzw.Lzw_readerpointer.ReaderPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
