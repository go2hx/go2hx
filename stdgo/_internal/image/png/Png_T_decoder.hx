package stdgo._internal.image.png;
import stdgo._internal.hash.crc32.Crc32;
import stdgo._internal.io.Io;
import stdgo._internal.image.color.Color;
import stdgo._internal.image.Image;
import stdgo._internal.encoding.binary.Binary;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.compress.zlib.Zlib;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.bufio.Bufio;
@:structInit @:using(stdgo._internal.image.png.Png_T_decoder_static_extension.T_decoder_static_extension) class T_decoder {
    public var _r : stdgo._internal.io.Io_Reader.Reader = (null : stdgo._internal.io.Io_Reader.Reader);
    public var _img : stdgo._internal.image.Image_Image.Image = (null : stdgo._internal.image.Image_Image.Image);
    public var _crc : stdgo._internal.hash.Hash_Hash32.Hash32 = (null : stdgo._internal.hash.Hash_Hash32.Hash32);
    public var _width : stdgo.GoInt = 0;
    public var _height : stdgo.GoInt = 0;
    public var _depth : stdgo.GoInt = 0;
    public var _palette : stdgo._internal.image.color.Color_Palette.Palette = new stdgo._internal.image.color.Color_Palette.Palette(0, 0);
    public var _cb : stdgo.GoInt = 0;
    public var _stage : stdgo.GoInt = 0;
    public var _idatLength : stdgo.GoUInt32 = 0;
    public var _tmp : stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(768, 768).__setNumber32__();
    public var _interlace : stdgo.GoInt = 0;
    public var _useTransparent : Bool = false;
    public var _transparent : stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(6, 6).__setNumber32__();
    public function new(?_r:stdgo._internal.io.Io_Reader.Reader, ?_img:stdgo._internal.image.Image_Image.Image, ?_crc:stdgo._internal.hash.Hash_Hash32.Hash32, ?_width:stdgo.GoInt, ?_height:stdgo.GoInt, ?_depth:stdgo.GoInt, ?_palette:stdgo._internal.image.color.Color_Palette.Palette, ?_cb:stdgo.GoInt, ?_stage:stdgo.GoInt, ?_idatLength:stdgo.GoUInt32, ?_tmp:stdgo.GoArray<stdgo.GoUInt8>, ?_interlace:stdgo.GoInt, ?_useTransparent:Bool, ?_transparent:stdgo.GoArray<stdgo.GoUInt8>) {
        if (_r != null) this._r = _r;
        if (_img != null) this._img = _img;
        if (_crc != null) this._crc = _crc;
        if (_width != null) this._width = _width;
        if (_height != null) this._height = _height;
        if (_depth != null) this._depth = _depth;
        if (_palette != null) this._palette = _palette;
        if (_cb != null) this._cb = _cb;
        if (_stage != null) this._stage = _stage;
        if (_idatLength != null) this._idatLength = _idatLength;
        if (_tmp != null) this._tmp = _tmp;
        if (_interlace != null) this._interlace = _interlace;
        if (_useTransparent != null) this._useTransparent = _useTransparent;
        if (_transparent != null) this._transparent = _transparent;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_decoder(
_r,
_img,
_crc,
_width,
_height,
_depth,
_palette,
_cb,
_stage,
_idatLength,
_tmp,
_interlace,
_useTransparent,
_transparent);
    }
}
