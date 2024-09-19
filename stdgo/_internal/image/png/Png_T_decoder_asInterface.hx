package stdgo._internal.image.png;
class T_decoder_asInterface {
    @:keep
    public dynamic function _checkHeader():stdgo.Error return __self__.value._checkHeader();
    @:keep
    public dynamic function _verifyChecksum():stdgo.Error return __self__.value._verifyChecksum();
    @:keep
    public dynamic function _parseChunk(_configOnly:Bool):stdgo.Error return __self__.value._parseChunk(_configOnly);
    @:keep
    public dynamic function _parseIEND(_length:stdgo.GoUInt32):stdgo.Error return __self__.value._parseIEND(_length);
    @:keep
    public dynamic function _parseIDAT(_length:stdgo.GoUInt32):stdgo.Error return __self__.value._parseIDAT(_length);
    @:keep
    public dynamic function _mergePassInto(_dst:stdgo._internal.image.Image_Image.Image, _src:stdgo._internal.image.Image_Image.Image, _pass:stdgo.GoInt):Void __self__.value._mergePassInto(_dst, _src, _pass);
    @:keep
    public dynamic function _readImagePass(_r:stdgo._internal.io.Io_Reader.Reader, _pass:stdgo.GoInt, _allocateOnly:Bool):{ var _0 : stdgo._internal.image.Image_Image.Image; var _1 : stdgo.Error; } return __self__.value._readImagePass(_r, _pass, _allocateOnly);
    @:keep
    public dynamic function _decode():{ var _0 : stdgo._internal.image.Image_Image.Image; var _1 : stdgo.Error; } return __self__.value._decode();
    @:keep
    public dynamic function read(_p:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return __self__.value.read(_p);
    @:keep
    public dynamic function _parsetRNS(_length:stdgo.GoUInt32):stdgo.Error return __self__.value._parsetRNS(_length);
    @:keep
    public dynamic function _parsePLTE(_length:stdgo.GoUInt32):stdgo.Error return __self__.value._parsePLTE(_length);
    @:keep
    public dynamic function _parseIHDR(_length:stdgo.GoUInt32):stdgo.Error return __self__.value._parseIHDR(_length);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<stdgo._internal.image.png.Png_T_decoder.T_decoder>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}