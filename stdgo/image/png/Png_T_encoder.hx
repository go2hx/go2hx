package stdgo.image.png;
@:structInit @:using(stdgo.image.png.Png.T_encoder_static_extension) abstract T_encoder(stdgo._internal.image.png.Png_T_encoder.T_encoder) from stdgo._internal.image.png.Png_T_encoder.T_encoder to stdgo._internal.image.png.Png_T_encoder.T_encoder {
    public var _enc(get, set) : Encoder;
    function get__enc():Encoder return this._enc;
    function set__enc(v:Encoder):Encoder {
        this._enc = (v : stdgo.Ref<stdgo._internal.image.png.Png_Encoder.Encoder>);
        return v;
    }
    public var _w(get, set) : stdgo._internal.io.Io_Writer.Writer;
    function get__w():stdgo._internal.io.Io_Writer.Writer return this._w;
    function set__w(v:stdgo._internal.io.Io_Writer.Writer):stdgo._internal.io.Io_Writer.Writer {
        this._w = v;
        return v;
    }
    public var _m(get, set) : stdgo._internal.image.Image_Image.Image;
    function get__m():stdgo._internal.image.Image_Image.Image return this._m;
    function set__m(v:stdgo._internal.image.Image_Image.Image):stdgo._internal.image.Image_Image.Image {
        this._m = v;
        return v;
    }
    public var _cb(get, set) : StdTypes.Int;
    function get__cb():StdTypes.Int return this._cb;
    function set__cb(v:StdTypes.Int):StdTypes.Int {
        this._cb = (v : stdgo.GoInt);
        return v;
    }
    public var _err(get, set) : stdgo.Error;
    function get__err():stdgo.Error return this._err;
    function set__err(v:stdgo.Error):stdgo.Error {
        this._err = (v : stdgo.Error);
        return v;
    }
    public var _header(get, set) : haxe.ds.Vector<std.UInt>;
    function get__header():haxe.ds.Vector<std.UInt> return haxe.ds.Vector.fromArrayCopy([for (i in this._header) i]);
    function set__header(v:haxe.ds.Vector<std.UInt>):haxe.ds.Vector<std.UInt> {
        this._header = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.GoArray<stdgo.GoUInt8>);
        return v;
    }
    public var _footer(get, set) : haxe.ds.Vector<std.UInt>;
    function get__footer():haxe.ds.Vector<std.UInt> return haxe.ds.Vector.fromArrayCopy([for (i in this._footer) i]);
    function set__footer(v:haxe.ds.Vector<std.UInt>):haxe.ds.Vector<std.UInt> {
        this._footer = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.GoArray<stdgo.GoUInt8>);
        return v;
    }
    public var _tmp(get, set) : haxe.ds.Vector<std.UInt>;
    function get__tmp():haxe.ds.Vector<std.UInt> return haxe.ds.Vector.fromArrayCopy([for (i in this._tmp) i]);
    function set__tmp(v:haxe.ds.Vector<std.UInt>):haxe.ds.Vector<std.UInt> {
        this._tmp = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.GoArray<stdgo.GoUInt8>);
        return v;
    }
    public var _cr(get, set) : haxe.ds.Vector<Array<std.UInt>>;
    function get__cr():haxe.ds.Vector<Array<std.UInt>> return haxe.ds.Vector.fromArrayCopy([for (i in this._cr) [for (i in i) i]]);
    function set__cr(v:haxe.ds.Vector<Array<std.UInt>>):haxe.ds.Vector<Array<std.UInt>> {
        this._cr = ([for (i in v) ([for (i in i) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>)] : stdgo.GoArray<stdgo.Slice<stdgo.GoUInt8>>);
        return v;
    }
    public var _pr(get, set) : Array<std.UInt>;
    function get__pr():Array<std.UInt> return [for (i in this._pr) i];
    function set__pr(v:Array<std.UInt>):Array<std.UInt> {
        this._pr = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public var _zw(get, set) : stdgo._internal.compress.zlib.Zlib_Writer.Writer;
    function get__zw():stdgo._internal.compress.zlib.Zlib_Writer.Writer return this._zw;
    function set__zw(v:stdgo._internal.compress.zlib.Zlib_Writer.Writer):stdgo._internal.compress.zlib.Zlib_Writer.Writer {
        this._zw = (v : stdgo.Ref<stdgo._internal.compress.zlib.Zlib_Writer.Writer>);
        return v;
    }
    public var _zwLevel(get, set) : StdTypes.Int;
    function get__zwLevel():StdTypes.Int return this._zwLevel;
    function set__zwLevel(v:StdTypes.Int):StdTypes.Int {
        this._zwLevel = (v : stdgo.GoInt);
        return v;
    }
    public var _bw(get, set) : stdgo._internal.bufio.Bufio_Writer.Writer;
    function get__bw():stdgo._internal.bufio.Bufio_Writer.Writer return this._bw;
    function set__bw(v:stdgo._internal.bufio.Bufio_Writer.Writer):stdgo._internal.bufio.Bufio_Writer.Writer {
        this._bw = (v : stdgo.Ref<stdgo._internal.bufio.Bufio_Writer.Writer>);
        return v;
    }
    public function new(?_enc:Encoder, ?_w:stdgo._internal.io.Io_Writer.Writer, ?_m:stdgo._internal.image.Image_Image.Image, ?_cb:StdTypes.Int, ?_err:stdgo.Error, ?_header:haxe.ds.Vector<std.UInt>, ?_footer:haxe.ds.Vector<std.UInt>, ?_tmp:haxe.ds.Vector<std.UInt>, ?_cr:haxe.ds.Vector<Array<std.UInt>>, ?_pr:Array<std.UInt>, ?_zw:stdgo._internal.compress.zlib.Zlib_Writer.Writer, ?_zwLevel:StdTypes.Int, ?_bw:stdgo._internal.bufio.Bufio_Writer.Writer) this = new stdgo._internal.image.png.Png_T_encoder.T_encoder(
(_enc : stdgo.Ref<stdgo._internal.image.png.Png_Encoder.Encoder>),
_w,
_m,
(_cb : stdgo.GoInt),
(_err : stdgo.Error),
([for (i in _header) (i : stdgo.GoUInt8)] : stdgo.GoArray<stdgo.GoUInt8>),
([for (i in _footer) (i : stdgo.GoUInt8)] : stdgo.GoArray<stdgo.GoUInt8>),
([for (i in _tmp) (i : stdgo.GoUInt8)] : stdgo.GoArray<stdgo.GoUInt8>),
([for (i in _cr) ([for (i in i) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>)] : stdgo.GoArray<stdgo.Slice<stdgo.GoUInt8>>),
([for (i in _pr) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>),
(_zw : stdgo.Ref<stdgo._internal.compress.zlib.Zlib_Writer.Writer>),
(_zwLevel : stdgo.GoInt),
(_bw : stdgo.Ref<stdgo._internal.bufio.Bufio_Writer.Writer>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
