package stdgo._internal.image.gif;
class T_blockWriter_asInterface {
    @:keep
    @:tdfield
    public dynamic function _close():Void @:_0 __self__.value._close();
    @:keep
    @:tdfield
    public dynamic function write(_data:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return @:_0 __self__.value.write(_data);
    @:keep
    @:tdfield
    public dynamic function writeByte(_c:stdgo.GoUInt8):stdgo.Error return @:_0 __self__.value.writeByte(_c);
    @:keep
    @:tdfield
    public dynamic function flush():stdgo.Error return @:_0 __self__.value.flush();
    @:keep
    @:tdfield
    public dynamic function _setup():Void @:_0 __self__.value._setup();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.image.gif.Gif_t_blockwriterpointer.T_blockWriterPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
