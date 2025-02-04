package stdgo._internal.image.gif;
class T_decoder_asInterface {
    @:keep
    @:tdfield
    public dynamic function _readBlock():{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return @:_0 __self__.value._readBlock();
    @:keep
    @:tdfield
    public dynamic function _newImageFromDescriptor():{ var _0 : stdgo.Ref<stdgo._internal.image.Image_paletted.Paletted>; var _1 : stdgo.Error; } return @:_0 __self__.value._newImageFromDescriptor();
    @:keep
    @:tdfield
    public dynamic function _readImageDescriptor(_keepAllFrames:Bool):stdgo.Error return @:_0 __self__.value._readImageDescriptor(_keepAllFrames);
    @:keep
    @:tdfield
    public dynamic function _readGraphicControl():stdgo.Error return @:_0 __self__.value._readGraphicControl();
    @:keep
    @:tdfield
    public dynamic function _readExtension():stdgo.Error return @:_0 __self__.value._readExtension();
    @:keep
    @:tdfield
    public dynamic function _readColorTable(_fields:stdgo.GoUInt8):{ var _0 : stdgo._internal.image.color.Color_palette.Palette; var _1 : stdgo.Error; } return @:_0 __self__.value._readColorTable(_fields);
    @:keep
    @:tdfield
    public dynamic function _readHeaderAndScreenDescriptor():stdgo.Error return @:_0 __self__.value._readHeaderAndScreenDescriptor();
    @:keep
    @:tdfield
    public dynamic function _decode(_r:stdgo._internal.io.Io_reader.Reader, _configOnly:Bool, _keepAllFrames:Bool):stdgo.Error return @:_0 __self__.value._decode(_r, _configOnly, _keepAllFrames);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.image.gif.Gif_t_decoderpointer.T_decoderPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
