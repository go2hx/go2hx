package stdgo._internal.compress.lzw;
class Writer_asInterface {
    @:keep
    @:tdfield
    public dynamic function _init(_dst:stdgo._internal.io.Io_writer.Writer, _order:stdgo._internal.compress.lzw.Lzw_order.Order, _litWidth:stdgo.GoInt):Void @:_0 __self__.value._init(_dst, _order, _litWidth);
    @:keep
    @:tdfield
    public dynamic function reset(_dst:stdgo._internal.io.Io_writer.Writer, _order:stdgo._internal.compress.lzw.Lzw_order.Order, _litWidth:stdgo.GoInt):Void @:_0 __self__.value.reset(_dst, _order, _litWidth);
    @:keep
    @:tdfield
    public dynamic function close():stdgo.Error return @:_0 __self__.value.close();
    @:keep
    @:tdfield
    public dynamic function write(_p:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return @:_0 __self__.value.write(_p);
    @:keep
    @:tdfield
    public dynamic function _incHi():stdgo.Error return @:_0 __self__.value._incHi();
    @:keep
    @:tdfield
    public dynamic function _writeMSB(_c:stdgo.GoUInt32):stdgo.Error return @:_0 __self__.value._writeMSB(_c);
    @:keep
    @:tdfield
    public dynamic function _writeLSB(_c:stdgo.GoUInt32):stdgo.Error return @:_0 __self__.value._writeLSB(_c);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.compress.lzw.Lzw_writerpointer.WriterPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
