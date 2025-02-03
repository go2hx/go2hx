package stdgo.image.png;
@:structInit @:using(stdgo.image.png.Png.T_decoder_static_extension) abstract T_decoder(stdgo._internal.image.png.Png_T_decoder.T_decoder) from stdgo._internal.image.png.Png_T_decoder.T_decoder to stdgo._internal.image.png.Png_T_decoder.T_decoder {
    public var _r(get, set) : stdgo._internal.io.Io_Reader.Reader;
    function get__r():stdgo._internal.io.Io_Reader.Reader return this._r;
    function set__r(v:stdgo._internal.io.Io_Reader.Reader):stdgo._internal.io.Io_Reader.Reader {
        this._r = v;
        return v;
    }
    public var _img(get, set) : stdgo._internal.image.Image_Image.Image;
    function get__img():stdgo._internal.image.Image_Image.Image return this._img;
    function set__img(v:stdgo._internal.image.Image_Image.Image):stdgo._internal.image.Image_Image.Image {
        this._img = v;
        return v;
    }
    public var _crc(get, set) : stdgo._internal.hash.Hash_Hash32.Hash32;
    function get__crc():stdgo._internal.hash.Hash_Hash32.Hash32 return this._crc;
    function set__crc(v:stdgo._internal.hash.Hash_Hash32.Hash32):stdgo._internal.hash.Hash_Hash32.Hash32 {
        this._crc = v;
        return v;
    }
    public var _width(get, set) : StdTypes.Int;
    function get__width():StdTypes.Int return this._width;
    function set__width(v:StdTypes.Int):StdTypes.Int {
        this._width = (v : stdgo.GoInt);
        return v;
    }
    public var _height(get, set) : StdTypes.Int;
    function get__height():StdTypes.Int return this._height;
    function set__height(v:StdTypes.Int):StdTypes.Int {
        this._height = (v : stdgo.GoInt);
        return v;
    }
    public var _depth(get, set) : StdTypes.Int;
    function get__depth():StdTypes.Int return this._depth;
    function set__depth(v:StdTypes.Int):StdTypes.Int {
        this._depth = (v : stdgo.GoInt);
        return v;
    }
    public var _palette(get, set) : stdgo._internal.image.color.Color_Palette.Palette;
    function get__palette():stdgo._internal.image.color.Color_Palette.Palette return this._palette;
    function set__palette(v:stdgo._internal.image.color.Color_Palette.Palette):stdgo._internal.image.color.Color_Palette.Palette {
        this._palette = v;
        return v;
    }
    public var _cb(get, set) : StdTypes.Int;
    function get__cb():StdTypes.Int return this._cb;
    function set__cb(v:StdTypes.Int):StdTypes.Int {
        this._cb = (v : stdgo.GoInt);
        return v;
    }
    public var _stage(get, set) : StdTypes.Int;
    function get__stage():StdTypes.Int return this._stage;
    function set__stage(v:StdTypes.Int):StdTypes.Int {
        this._stage = (v : stdgo.GoInt);
        return v;
    }
    public var _idatLength(get, set) : std.UInt;
    function get__idatLength():std.UInt return this._idatLength;
    function set__idatLength(v:std.UInt):std.UInt {
        this._idatLength = (v : stdgo.GoUInt32);
        return v;
    }
    public var _tmp(get, set) : haxe.ds.Vector<std.UInt>;
    function get__tmp():haxe.ds.Vector<std.UInt> return haxe.ds.Vector.fromArrayCopy([for (i in this._tmp) i]);
    function set__tmp(v:haxe.ds.Vector<std.UInt>):haxe.ds.Vector<std.UInt> {
        this._tmp = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.GoArray<stdgo.GoUInt8>);
        return v;
    }
    public var _interlace(get, set) : StdTypes.Int;
    function get__interlace():StdTypes.Int return this._interlace;
    function set__interlace(v:StdTypes.Int):StdTypes.Int {
        this._interlace = (v : stdgo.GoInt);
        return v;
    }
    public var _useTransparent(get, set) : Bool;
    function get__useTransparent():Bool return this._useTransparent;
    function set__useTransparent(v:Bool):Bool {
        this._useTransparent = v;
        return v;
    }
    public var _transparent(get, set) : haxe.ds.Vector<std.UInt>;
    function get__transparent():haxe.ds.Vector<std.UInt> return haxe.ds.Vector.fromArrayCopy([for (i in this._transparent) i]);
    function set__transparent(v:haxe.ds.Vector<std.UInt>):haxe.ds.Vector<std.UInt> {
        this._transparent = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.GoArray<stdgo.GoUInt8>);
        return v;
    }
    public function new(?_r:stdgo._internal.io.Io_Reader.Reader, ?_img:stdgo._internal.image.Image_Image.Image, ?_crc:stdgo._internal.hash.Hash_Hash32.Hash32, ?_width:StdTypes.Int, ?_height:StdTypes.Int, ?_depth:StdTypes.Int, ?_palette:stdgo._internal.image.color.Color_Palette.Palette, ?_cb:StdTypes.Int, ?_stage:StdTypes.Int, ?_idatLength:std.UInt, ?_tmp:haxe.ds.Vector<std.UInt>, ?_interlace:StdTypes.Int, ?_useTransparent:Bool, ?_transparent:haxe.ds.Vector<std.UInt>) this = new stdgo._internal.image.png.Png_T_decoder.T_decoder(
_r,
_img,
_crc,
(_width : stdgo.GoInt),
(_height : stdgo.GoInt),
(_depth : stdgo.GoInt),
_palette,
(_cb : stdgo.GoInt),
(_stage : stdgo.GoInt),
(_idatLength : stdgo.GoUInt32),
([for (i in _tmp) (i : stdgo.GoUInt8)] : stdgo.GoArray<stdgo.GoUInt8>),
(_interlace : stdgo.GoInt),
_useTransparent,
([for (i in _transparent) (i : stdgo.GoUInt8)] : stdgo.GoArray<stdgo.GoUInt8>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
