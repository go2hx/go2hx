package stdgo.compress.lzw;
@:structInit @:using(stdgo.compress.lzw.Lzw.Reader_static_extension) abstract Reader(stdgo._internal.compress.lzw.Lzw_Reader.Reader) from stdgo._internal.compress.lzw.Lzw_Reader.Reader to stdgo._internal.compress.lzw.Lzw_Reader.Reader {
    public var _r(get, set) : stdgo._internal.io.Io_ByteReader.ByteReader;
    function get__r():stdgo._internal.io.Io_ByteReader.ByteReader return this._r;
    function set__r(v:stdgo._internal.io.Io_ByteReader.ByteReader):stdgo._internal.io.Io_ByteReader.ByteReader {
        this._r = v;
        return v;
    }
    public var _bits(get, set) : std.UInt;
    function get__bits():std.UInt return this._bits;
    function set__bits(v:std.UInt):std.UInt {
        this._bits = (v : stdgo.GoUInt32);
        return v;
    }
    public var _nBits(get, set) : std.UInt;
    function get__nBits():std.UInt return this._nBits;
    function set__nBits(v:std.UInt):std.UInt {
        this._nBits = (v : stdgo.GoUInt);
        return v;
    }
    public var _width(get, set) : std.UInt;
    function get__width():std.UInt return this._width;
    function set__width(v:std.UInt):std.UInt {
        this._width = (v : stdgo.GoUInt);
        return v;
    }
    public var _read(get, set) : stdgo.Ref<stdgo._internal.compress.lzw.Lzw_Reader.Reader> -> { var _0 : stdgo.GoUInt16; var _1 : stdgo.Error; };
    function get__read():stdgo.Ref<stdgo._internal.compress.lzw.Lzw_Reader.Reader> -> { var _0 : stdgo.GoUInt16; var _1 : stdgo.Error; } return _0 -> this._read(_0);
    function set__read(v:stdgo.Ref<stdgo._internal.compress.lzw.Lzw_Reader.Reader> -> { var _0 : stdgo.GoUInt16; var _1 : stdgo.Error; }):stdgo.Ref<stdgo._internal.compress.lzw.Lzw_Reader.Reader> -> { var _0 : stdgo.GoUInt16; var _1 : stdgo.Error; } {
        this._read = v;
        return v;
    }
    public var _litWidth(get, set) : StdTypes.Int;
    function get__litWidth():StdTypes.Int return this._litWidth;
    function set__litWidth(v:StdTypes.Int):StdTypes.Int {
        this._litWidth = (v : stdgo.GoInt);
        return v;
    }
    public var _err(get, set) : stdgo.Error;
    function get__err():stdgo.Error return this._err;
    function set__err(v:stdgo.Error):stdgo.Error {
        this._err = (v : stdgo.Error);
        return v;
    }
    public var _clear(get, set) : std.UInt;
    function get__clear():std.UInt return this._clear;
    function set__clear(v:std.UInt):std.UInt {
        this._clear = (v : stdgo.GoUInt16);
        return v;
    }
    public var _eof(get, set) : std.UInt;
    function get__eof():std.UInt return this._eof;
    function set__eof(v:std.UInt):std.UInt {
        this._eof = (v : stdgo.GoUInt16);
        return v;
    }
    public var _hi(get, set) : std.UInt;
    function get__hi():std.UInt return this._hi;
    function set__hi(v:std.UInt):std.UInt {
        this._hi = (v : stdgo.GoUInt16);
        return v;
    }
    public var _overflow(get, set) : std.UInt;
    function get__overflow():std.UInt return this._overflow;
    function set__overflow(v:std.UInt):std.UInt {
        this._overflow = (v : stdgo.GoUInt16);
        return v;
    }
    public var _last(get, set) : std.UInt;
    function get__last():std.UInt return this._last;
    function set__last(v:std.UInt):std.UInt {
        this._last = (v : stdgo.GoUInt16);
        return v;
    }
    public var _suffix(get, set) : haxe.ds.Vector<std.UInt>;
    function get__suffix():haxe.ds.Vector<std.UInt> return haxe.ds.Vector.fromArrayCopy([for (i in this._suffix) i]);
    function set__suffix(v:haxe.ds.Vector<std.UInt>):haxe.ds.Vector<std.UInt> {
        this._suffix = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.GoArray<stdgo.GoUInt8>);
        return v;
    }
    public var _prefix(get, set) : haxe.ds.Vector<std.UInt>;
    function get__prefix():haxe.ds.Vector<std.UInt> return haxe.ds.Vector.fromArrayCopy([for (i in this._prefix) i]);
    function set__prefix(v:haxe.ds.Vector<std.UInt>):haxe.ds.Vector<std.UInt> {
        this._prefix = ([for (i in v) (i : stdgo.GoUInt16)] : stdgo.GoArray<stdgo.GoUInt16>);
        return v;
    }
    public var _output(get, set) : haxe.ds.Vector<std.UInt>;
    function get__output():haxe.ds.Vector<std.UInt> return haxe.ds.Vector.fromArrayCopy([for (i in this._output) i]);
    function set__output(v:haxe.ds.Vector<std.UInt>):haxe.ds.Vector<std.UInt> {
        this._output = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.GoArray<stdgo.GoUInt8>);
        return v;
    }
    public var _o(get, set) : StdTypes.Int;
    function get__o():StdTypes.Int return this._o;
    function set__o(v:StdTypes.Int):StdTypes.Int {
        this._o = (v : stdgo.GoInt);
        return v;
    }
    public var _toRead(get, set) : Array<std.UInt>;
    function get__toRead():Array<std.UInt> return [for (i in this._toRead) i];
    function set__toRead(v:Array<std.UInt>):Array<std.UInt> {
        this._toRead = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public function new(?_r:stdgo._internal.io.Io_ByteReader.ByteReader, ?_bits:std.UInt, ?_nBits:std.UInt, ?_width:std.UInt, ?_read:stdgo.Ref<stdgo._internal.compress.lzw.Lzw_Reader.Reader> -> { var _0 : stdgo.GoUInt16; var _1 : stdgo.Error; }, ?_litWidth:StdTypes.Int, ?_err:stdgo.Error, ?_clear:std.UInt, ?_eof:std.UInt, ?_hi:std.UInt, ?_overflow:std.UInt, ?_last:std.UInt, ?_suffix:haxe.ds.Vector<std.UInt>, ?_prefix:haxe.ds.Vector<std.UInt>, ?_output:haxe.ds.Vector<std.UInt>, ?_o:StdTypes.Int, ?_toRead:Array<std.UInt>) this = new stdgo._internal.compress.lzw.Lzw_Reader.Reader(
_r,
(_bits : stdgo.GoUInt32),
(_nBits : stdgo.GoUInt),
(_width : stdgo.GoUInt),
_read,
(_litWidth : stdgo.GoInt),
(_err : stdgo.Error),
(_clear : stdgo.GoUInt16),
(_eof : stdgo.GoUInt16),
(_hi : stdgo.GoUInt16),
(_overflow : stdgo.GoUInt16),
(_last : stdgo.GoUInt16),
([for (i in _suffix) (i : stdgo.GoUInt8)] : stdgo.GoArray<stdgo.GoUInt8>),
([for (i in _prefix) (i : stdgo.GoUInt16)] : stdgo.GoArray<stdgo.GoUInt16>),
([for (i in _output) (i : stdgo.GoUInt8)] : stdgo.GoArray<stdgo.GoUInt8>),
(_o : stdgo.GoInt),
([for (i in _toRead) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
