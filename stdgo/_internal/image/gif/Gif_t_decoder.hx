package stdgo._internal.image.gif;
@:structInit @:using(stdgo._internal.image.gif.Gif_t_decoder_static_extension.T_decoder_static_extension) class T_decoder {
    public var _r : stdgo._internal.image.gif.Gif_t_reader.T_reader = (null : stdgo._internal.image.gif.Gif_t_reader.T_reader);
    public var _vers : stdgo.GoString = "";
    public var _width : stdgo.GoInt = 0;
    public var _height : stdgo.GoInt = 0;
    public var _loopCount : stdgo.GoInt = 0;
    public var _delayTime : stdgo.GoInt = 0;
    public var _backgroundIndex : stdgo.GoUInt8 = 0;
    public var _disposalMethod : stdgo.GoUInt8 = 0;
    public var _imageFields : stdgo.GoUInt8 = 0;
    public var _transparentIndex : stdgo.GoUInt8 = 0;
    public var _hasTransparentIndex : Bool = false;
    public var _globalColorTable : stdgo._internal.image.color.Color_palette.Palette = (new stdgo._internal.image.color.Color_palette.Palette(0, 0) : stdgo._internal.image.color.Color_palette.Palette);
    public var _delay : stdgo.Slice<stdgo.GoInt> = (null : stdgo.Slice<stdgo.GoInt>);
    public var _disposal : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public var _image : stdgo.Slice<stdgo.Ref<stdgo._internal.image.Image_paletted.Paletted>> = (null : stdgo.Slice<stdgo.Ref<stdgo._internal.image.Image_paletted.Paletted>>);
    public var _tmp : stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(1024, 1024).__setNumber32__();
    public function new(?_r:stdgo._internal.image.gif.Gif_t_reader.T_reader, ?_vers:stdgo.GoString, ?_width:stdgo.GoInt, ?_height:stdgo.GoInt, ?_loopCount:stdgo.GoInt, ?_delayTime:stdgo.GoInt, ?_backgroundIndex:stdgo.GoUInt8, ?_disposalMethod:stdgo.GoUInt8, ?_imageFields:stdgo.GoUInt8, ?_transparentIndex:stdgo.GoUInt8, ?_hasTransparentIndex:Bool, ?_globalColorTable:stdgo._internal.image.color.Color_palette.Palette, ?_delay:stdgo.Slice<stdgo.GoInt>, ?_disposal:stdgo.Slice<stdgo.GoUInt8>, ?_image:stdgo.Slice<stdgo.Ref<stdgo._internal.image.Image_paletted.Paletted>>, ?_tmp:stdgo.GoArray<stdgo.GoUInt8>) {
        if (_r != null) this._r = _r;
        if (_vers != null) this._vers = _vers;
        if (_width != null) this._width = _width;
        if (_height != null) this._height = _height;
        if (_loopCount != null) this._loopCount = _loopCount;
        if (_delayTime != null) this._delayTime = _delayTime;
        if (_backgroundIndex != null) this._backgroundIndex = _backgroundIndex;
        if (_disposalMethod != null) this._disposalMethod = _disposalMethod;
        if (_imageFields != null) this._imageFields = _imageFields;
        if (_transparentIndex != null) this._transparentIndex = _transparentIndex;
        if (_hasTransparentIndex != null) this._hasTransparentIndex = _hasTransparentIndex;
        if (_globalColorTable != null) this._globalColorTable = _globalColorTable;
        if (_delay != null) this._delay = _delay;
        if (_disposal != null) this._disposal = _disposal;
        if (_image != null) this._image = _image;
        if (_tmp != null) this._tmp = _tmp;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_decoder(
_r,
_vers,
_width,
_height,
_loopCount,
_delayTime,
_backgroundIndex,
_disposalMethod,
_imageFields,
_transparentIndex,
_hasTransparentIndex,
_globalColorTable,
_delay,
_disposal,
_image,
_tmp);
    }
}
