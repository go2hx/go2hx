package stdgo._internal.compress.lzw;
class Reader_asInterface {
    @:keep
    public dynamic function _init(_src:stdgo._internal.io.Io_Reader.Reader, _order:stdgo._internal.compress.lzw.Lzw_Order.Order, _litWidth:stdgo.GoInt):Void __self__.value._init(_src, _order, _litWidth);
    @:keep
    public dynamic function reset(_src:stdgo._internal.io.Io_Reader.Reader, _order:stdgo._internal.compress.lzw.Lzw_Order.Order, _litWidth:stdgo.GoInt):Void __self__.value.reset(_src, _order, _litWidth);
    @:keep
    public dynamic function close():stdgo.Error return __self__.value.close();
    @:keep
    public dynamic function _decode():Void __self__.value._decode();
    @:keep
    public dynamic function read(_b:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return __self__.value.read(_b);
    @:keep
    public dynamic function _readMSB():{ var _0 : stdgo.GoUInt16; var _1 : stdgo.Error; } return __self__.value._readMSB();
    @:keep
    public dynamic function _readLSB():{ var _0 : stdgo.GoUInt16; var _1 : stdgo.Error; } return __self__.value._readLSB();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<stdgo._internal.compress.lzw.Lzw_Reader.Reader>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
