package stdgo._internal.image.png;
class T_encoder_asInterface {
    @:keep
    public dynamic function _writeIEND():Void __self__.value._writeIEND();
    @:keep
    public dynamic function _writeIDATs():Void __self__.value._writeIDATs();
    @:keep
    public dynamic function _writeImage(_w:stdgo._internal.io.Io_Writer.Writer, _m:stdgo._internal.image.Image_Image.Image, _cb:stdgo.GoInt, _level:stdgo.GoInt):stdgo.Error return __self__.value._writeImage(_w, _m, _cb, _level);
    @:keep
    public dynamic function write(_b:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return __self__.value.write(_b);
    @:keep
    public dynamic function _writePLTEAndTRNS(_p:stdgo._internal.image.color.Color_Palette.Palette):Void __self__.value._writePLTEAndTRNS(_p);
    @:keep
    public dynamic function _writeIHDR():Void __self__.value._writeIHDR();
    @:keep
    public dynamic function _writeChunk(_b:stdgo.Slice<stdgo.GoUInt8>, _name:stdgo.GoString):Void __self__.value._writeChunk(_b, _name);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<stdgo._internal.image.png.Png_T_encoder.T_encoder>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
