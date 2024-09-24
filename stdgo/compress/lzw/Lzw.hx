package stdgo.compress.lzw;
final lsb : Order = stdgo._internal.compress.lzw.Lzw_lsb.lsb;
final msb = stdgo._internal.compress.lzw.Lzw_msb.msb;
class T_writer_static_extension {
    static public function flush(t:stdgo._internal.compress.lzw.Lzw_T_writer.T_writer):stdgo.Error {
        return stdgo._internal.compress.lzw.Lzw_T_writer_static_extension.T_writer_static_extension.flush(t);
    }
}
typedef T_writer = stdgo._internal.compress.lzw.Lzw_T_writer.T_writer;
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
        this._bits = v;
        return v;
    }
    public var _nBits(get, set) : std.UInt;
    function get__nBits():std.UInt return this._nBits;
    function set__nBits(v:std.UInt):std.UInt {
        this._nBits = v;
        return v;
    }
    public var _width(get, set) : std.UInt;
    function get__width():std.UInt return this._width;
    function set__width(v:std.UInt):std.UInt {
        this._width = v;
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
        this._litWidth = v;
        return v;
    }
    public var _err(get, set) : stdgo.Error;
    function get__err():stdgo.Error return this._err;
    function set__err(v:stdgo.Error):stdgo.Error {
        this._err = v;
        return v;
    }
    public var _clear(get, set) : std.UInt;
    function get__clear():std.UInt return this._clear;
    function set__clear(v:std.UInt):std.UInt {
        this._clear = v;
        return v;
    }
    public var _eof(get, set) : std.UInt;
    function get__eof():std.UInt return this._eof;
    function set__eof(v:std.UInt):std.UInt {
        this._eof = v;
        return v;
    }
    public var _hi(get, set) : std.UInt;
    function get__hi():std.UInt return this._hi;
    function set__hi(v:std.UInt):std.UInt {
        this._hi = v;
        return v;
    }
    public var _overflow(get, set) : std.UInt;
    function get__overflow():std.UInt return this._overflow;
    function set__overflow(v:std.UInt):std.UInt {
        this._overflow = v;
        return v;
    }
    public var _last(get, set) : std.UInt;
    function get__last():std.UInt return this._last;
    function set__last(v:std.UInt):std.UInt {
        this._last = v;
        return v;
    }
    public var _suffix(get, set) : haxe.ds.Vector<std.UInt>;
    function get__suffix():haxe.ds.Vector<std.UInt> return haxe.ds.Vector.fromArrayCopy([for (i in this._suffix) i]);
    function set__suffix(v:haxe.ds.Vector<std.UInt>):haxe.ds.Vector<std.UInt> {
        this._suffix = ([for (i in v) i] : stdgo.GoArray<stdgo.GoUInt8>);
        return v;
    }
    public var _prefix(get, set) : haxe.ds.Vector<std.UInt>;
    function get__prefix():haxe.ds.Vector<std.UInt> return haxe.ds.Vector.fromArrayCopy([for (i in this._prefix) i]);
    function set__prefix(v:haxe.ds.Vector<std.UInt>):haxe.ds.Vector<std.UInt> {
        this._prefix = ([for (i in v) i] : stdgo.GoArray<stdgo.GoUInt16>);
        return v;
    }
    public var _output(get, set) : haxe.ds.Vector<std.UInt>;
    function get__output():haxe.ds.Vector<std.UInt> return haxe.ds.Vector.fromArrayCopy([for (i in this._output) i]);
    function set__output(v:haxe.ds.Vector<std.UInt>):haxe.ds.Vector<std.UInt> {
        this._output = ([for (i in v) i] : stdgo.GoArray<stdgo.GoUInt8>);
        return v;
    }
    public var _o(get, set) : StdTypes.Int;
    function get__o():StdTypes.Int return this._o;
    function set__o(v:StdTypes.Int):StdTypes.Int {
        this._o = v;
        return v;
    }
    public var _toRead(get, set) : Array<std.UInt>;
    function get__toRead():Array<std.UInt> return [for (i in this._toRead) i];
    function set__toRead(v:Array<std.UInt>):Array<std.UInt> {
        this._toRead = ([for (i in v) i] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public function new(?_r:stdgo._internal.io.Io_ByteReader.ByteReader, ?_bits:std.UInt, ?_nBits:std.UInt, ?_width:std.UInt, ?_read:stdgo.Ref<stdgo._internal.compress.lzw.Lzw_Reader.Reader> -> { var _0 : stdgo.GoUInt16; var _1 : stdgo.Error; }, ?_litWidth:StdTypes.Int, ?_err:stdgo.Error, ?_clear:std.UInt, ?_eof:std.UInt, ?_hi:std.UInt, ?_overflow:std.UInt, ?_last:std.UInt, ?_suffix:haxe.ds.Vector<std.UInt>, ?_prefix:haxe.ds.Vector<std.UInt>, ?_output:haxe.ds.Vector<std.UInt>, ?_o:StdTypes.Int, ?_toRead:Array<std.UInt>) this = new stdgo._internal.compress.lzw.Lzw_Reader.Reader(
_r,
_bits,
_nBits,
_width,
_read,
_litWidth,
_err,
_clear,
_eof,
_hi,
_overflow,
_last,
([for (i in _suffix) i] : stdgo.GoArray<stdgo.GoUInt8>),
([for (i in _prefix) i] : stdgo.GoArray<stdgo.GoUInt16>),
([for (i in _output) i] : stdgo.GoArray<stdgo.GoUInt8>),
_o,
([for (i in _toRead) i] : stdgo.Slice<stdgo.GoUInt8>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.compress.lzw.Lzw.Writer_static_extension) abstract Writer(stdgo._internal.compress.lzw.Lzw_Writer.Writer) from stdgo._internal.compress.lzw.Lzw_Writer.Writer to stdgo._internal.compress.lzw.Lzw_Writer.Writer {
    public var _w(get, set) : T_writer;
    function get__w():T_writer return this._w;
    function set__w(v:T_writer):T_writer {
        this._w = v;
        return v;
    }
    public var _order(get, set) : Order;
    function get__order():Order return this._order;
    function set__order(v:Order):Order {
        this._order = v;
        return v;
    }
    public var _write(get, set) : (stdgo.Ref<stdgo._internal.compress.lzw.Lzw_Writer.Writer>, stdgo.GoUInt32) -> stdgo.Error;
    function get__write():(stdgo.Ref<stdgo._internal.compress.lzw.Lzw_Writer.Writer>, stdgo.GoUInt32) -> stdgo.Error return (_0, _1) -> this._write(_0, _1);
    function set__write(v:(stdgo.Ref<stdgo._internal.compress.lzw.Lzw_Writer.Writer>, stdgo.GoUInt32) -> stdgo.Error):(stdgo.Ref<stdgo._internal.compress.lzw.Lzw_Writer.Writer>, stdgo.GoUInt32) -> stdgo.Error {
        this._write = v;
        return v;
    }
    public var _bits(get, set) : std.UInt;
    function get__bits():std.UInt return this._bits;
    function set__bits(v:std.UInt):std.UInt {
        this._bits = v;
        return v;
    }
    public var _nBits(get, set) : std.UInt;
    function get__nBits():std.UInt return this._nBits;
    function set__nBits(v:std.UInt):std.UInt {
        this._nBits = v;
        return v;
    }
    public var _width(get, set) : std.UInt;
    function get__width():std.UInt return this._width;
    function set__width(v:std.UInt):std.UInt {
        this._width = v;
        return v;
    }
    public var _litWidth(get, set) : std.UInt;
    function get__litWidth():std.UInt return this._litWidth;
    function set__litWidth(v:std.UInt):std.UInt {
        this._litWidth = v;
        return v;
    }
    public var _hi(get, set) : std.UInt;
    function get__hi():std.UInt return this._hi;
    function set__hi(v:std.UInt):std.UInt {
        this._hi = v;
        return v;
    }
    public var _overflow(get, set) : std.UInt;
    function get__overflow():std.UInt return this._overflow;
    function set__overflow(v:std.UInt):std.UInt {
        this._overflow = v;
        return v;
    }
    public var _savedCode(get, set) : std.UInt;
    function get__savedCode():std.UInt return this._savedCode;
    function set__savedCode(v:std.UInt):std.UInt {
        this._savedCode = v;
        return v;
    }
    public var _err(get, set) : stdgo.Error;
    function get__err():stdgo.Error return this._err;
    function set__err(v:stdgo.Error):stdgo.Error {
        this._err = v;
        return v;
    }
    public var _table(get, set) : haxe.ds.Vector<std.UInt>;
    function get__table():haxe.ds.Vector<std.UInt> return haxe.ds.Vector.fromArrayCopy([for (i in this._table) i]);
    function set__table(v:haxe.ds.Vector<std.UInt>):haxe.ds.Vector<std.UInt> {
        this._table = ([for (i in v) i] : stdgo.GoArray<stdgo.GoUInt32>);
        return v;
    }
    public function new(?_w:T_writer, ?_order:Order, ?_write:(stdgo.Ref<stdgo._internal.compress.lzw.Lzw_Writer.Writer>, stdgo.GoUInt32) -> stdgo.Error, ?_bits:std.UInt, ?_nBits:std.UInt, ?_width:std.UInt, ?_litWidth:std.UInt, ?_hi:std.UInt, ?_overflow:std.UInt, ?_savedCode:std.UInt, ?_err:stdgo.Error, ?_table:haxe.ds.Vector<std.UInt>) this = new stdgo._internal.compress.lzw.Lzw_Writer.Writer(
_w,
_order,
_write,
_bits,
_nBits,
_width,
_litWidth,
_hi,
_overflow,
_savedCode,
_err,
([for (i in _table) i] : stdgo.GoArray<stdgo.GoUInt32>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
typedef Order = stdgo._internal.compress.lzw.Lzw_Order.Order;
class Reader_static_extension {
    static public function _init(_r:Reader, _src:stdgo._internal.io.Io_Reader.Reader, _order:Order, _litWidth:StdTypes.Int):Void {
        stdgo._internal.compress.lzw.Lzw_Reader_static_extension.Reader_static_extension._init(_r, _src, _order, _litWidth);
    }
    static public function reset(_r:Reader, _src:stdgo._internal.io.Io_Reader.Reader, _order:Order, _litWidth:StdTypes.Int):Void {
        stdgo._internal.compress.lzw.Lzw_Reader_static_extension.Reader_static_extension.reset(_r, _src, _order, _litWidth);
    }
    static public function close(_r:Reader):stdgo.Error {
        return stdgo._internal.compress.lzw.Lzw_Reader_static_extension.Reader_static_extension.close(_r);
    }
    static public function _decode(_r:Reader):Void {
        stdgo._internal.compress.lzw.Lzw_Reader_static_extension.Reader_static_extension._decode(_r);
    }
    static public function read(_r:Reader, _b:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _b = ([for (i in _b) i] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.compress.lzw.Lzw_Reader_static_extension.Reader_static_extension.read(_r, _b);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _readMSB(_r:Reader):stdgo.Tuple<std.UInt, stdgo.Error> {
        return {
            final obj = stdgo._internal.compress.lzw.Lzw_Reader_static_extension.Reader_static_extension._readMSB(_r);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _readLSB(_r:Reader):stdgo.Tuple<std.UInt, stdgo.Error> {
        return {
            final obj = stdgo._internal.compress.lzw.Lzw_Reader_static_extension.Reader_static_extension._readLSB(_r);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
class Writer_static_extension {
    static public function _init(_w:Writer, _dst:stdgo._internal.io.Io_Writer.Writer, _order:Order, _litWidth:StdTypes.Int):Void {
        stdgo._internal.compress.lzw.Lzw_Writer_static_extension.Writer_static_extension._init(_w, _dst, _order, _litWidth);
    }
    static public function reset(_w:Writer, _dst:stdgo._internal.io.Io_Writer.Writer, _order:Order, _litWidth:StdTypes.Int):Void {
        stdgo._internal.compress.lzw.Lzw_Writer_static_extension.Writer_static_extension.reset(_w, _dst, _order, _litWidth);
    }
    static public function close(_w:Writer):stdgo.Error {
        return stdgo._internal.compress.lzw.Lzw_Writer_static_extension.Writer_static_extension.close(_w);
    }
    static public function write(_w:Writer, _p:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _p = ([for (i in _p) i] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.compress.lzw.Lzw_Writer_static_extension.Writer_static_extension.write(_w, _p);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _incHi(_w:Writer):stdgo.Error {
        return stdgo._internal.compress.lzw.Lzw_Writer_static_extension.Writer_static_extension._incHi(_w);
    }
    static public function _writeMSB(_w:Writer, _c:std.UInt):stdgo.Error {
        return stdgo._internal.compress.lzw.Lzw_Writer_static_extension.Writer_static_extension._writeMSB(_w, _c);
    }
    static public function _writeLSB(_w:Writer, _c:std.UInt):stdgo.Error {
        return stdgo._internal.compress.lzw.Lzw_Writer_static_extension.Writer_static_extension._writeLSB(_w, _c);
    }
}
/**
    Package lzw implements the Lempel-Ziv-Welch compressed data format,
    described in T. A. Welch, “A Technique for High-Performance Data
    Compression”, Computer, 17(6) (June 1984), pp 8-19.
    
    In particular, it implements LZW as used by the GIF and PDF file
    formats, which means variable-width codes up to 12 bits and the first
    two non-literal codes are a clear code and an EOF code.
    
    The TIFF file format uses a similar but incompatible version of the LZW
    algorithm. See the golang.org/x/image/tiff/lzw package for an
    implementation.
**/
class Lzw {
    /**
        NewReader creates a new io.ReadCloser.
        Reads from the returned io.ReadCloser read and decompress data from r.
        If r does not also implement io.ByteReader,
        the decompressor may read more data than necessary from r.
        It is the caller's responsibility to call Close on the ReadCloser when
        finished reading.
        The number of bits to use for literal codes, litWidth, must be in the
        range [2,8] and is typically 8. It must equal the litWidth
        used during compression.
        
        It is guaranteed that the underlying type of the returned io.ReadCloser
        is a *Reader.
    **/
    static public function newReader(_r:stdgo._internal.io.Io_Reader.Reader, _order:Order, _litWidth:StdTypes.Int):stdgo._internal.io.Io_ReadCloser.ReadCloser {
        return stdgo._internal.compress.lzw.Lzw_newReader.newReader(_r, _order, _litWidth);
    }
    /**
        NewWriter creates a new io.WriteCloser.
        Writes to the returned io.WriteCloser are compressed and written to w.
        It is the caller's responsibility to call Close on the WriteCloser when
        finished writing.
        The number of bits to use for literal codes, litWidth, must be in the
        range [2,8] and is typically 8. Input bytes must be less than 1<<litWidth.
        
        It is guaranteed that the underlying type of the returned io.WriteCloser
        is a *Writer.
    **/
    static public function newWriter(_w:stdgo._internal.io.Io_Writer.Writer, _order:Order, _litWidth:StdTypes.Int):stdgo._internal.io.Io_WriteCloser.WriteCloser {
        return stdgo._internal.compress.lzw.Lzw_newWriter.newWriter(_w, _order, _litWidth);
    }
}
