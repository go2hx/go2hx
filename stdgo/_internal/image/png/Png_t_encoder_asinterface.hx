package stdgo._internal.image.png;
class T_encoder_asInterface {
    @:keep
    @:tdfield
    public dynamic function _writeIEND():Void @:_0 __self__.value._writeIEND();
    @:keep
    @:tdfield
    public dynamic function _writeIDATs():Void @:_0 __self__.value._writeIDATs();
    @:keep
    @:tdfield
    public dynamic function _writeImage(_w:stdgo._internal.io.Io_writer.Writer, _m:stdgo._internal.image.Image_image.Image, _cb:stdgo.GoInt, _level:stdgo.GoInt):stdgo.Error return @:_0 __self__.value._writeImage(_w, _m, _cb, _level);
    @:keep
    @:tdfield
    public dynamic function write(_b:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return @:_0 __self__.value.write(_b);
    @:keep
    @:tdfield
    public dynamic function _writePLTEAndTRNS(_p:stdgo._internal.image.color.Color_palette.Palette):Void @:_0 __self__.value._writePLTEAndTRNS(_p);
    @:keep
    @:tdfield
    public dynamic function _writeIHDR():Void @:_0 __self__.value._writeIHDR();
    @:keep
    @:tdfield
    public dynamic function _writeChunk(_b:stdgo.Slice<stdgo.GoUInt8>, _name:stdgo.GoString):Void @:_0 __self__.value._writeChunk(_b, _name);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.image.png.Png_t_encoderpointer.T_encoderPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
