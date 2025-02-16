package stdgo;
final noCompression : haxe.UInt64 = stdgo._internal.compress.gzip.Gzip_nocompression.noCompression;
final bestSpeed : haxe.UInt64 = stdgo._internal.compress.gzip.Gzip_bestspeed.bestSpeed;
final bestCompression : haxe.UInt64 = stdgo._internal.compress.gzip.Gzip_bestcompression.bestCompression;
final defaultCompression : haxe.UInt64 = stdgo._internal.compress.gzip.Gzip_defaultcompression.defaultCompression;
final huffmanOnly : haxe.UInt64 = stdgo._internal.compress.gzip.Gzip_huffmanonly.huffmanOnly;
var errChecksum(get, set) : stdgo.Error;
private function get_errChecksum():stdgo.Error return stdgo._internal.compress.gzip.Gzip_errchecksum.errChecksum;
private function set_errChecksum(v:stdgo.Error):stdgo.Error {
        stdgo._internal.compress.gzip.Gzip_errchecksum.errChecksum = (v : stdgo.Error);
        return v;
    }
var errHeader(get, set) : stdgo.Error;
private function get_errHeader():stdgo.Error return stdgo._internal.compress.gzip.Gzip_errheader.errHeader;
private function set_errHeader(v:stdgo.Error):stdgo.Error {
        stdgo._internal.compress.gzip.Gzip_errheader.errHeader = (v : stdgo.Error);
        return v;
    }
@:structInit @:using(stdgo.compress.gzip.Gzip.Header_static_extension) abstract Header(stdgo._internal.compress.gzip.Gzip_header.Header) from stdgo._internal.compress.gzip.Gzip_header.Header to stdgo._internal.compress.gzip.Gzip_header.Header {
    public var comment(get, set) : String;
    function get_comment():String return this.comment;
    function set_comment(v:String):String {
        this.comment = (v : stdgo.GoString);
        return v;
    }
    public var extra(get, set) : Array<std.UInt>;
    function get_extra():Array<std.UInt> return [for (i in this.extra) i];
    function set_extra(v:Array<std.UInt>):Array<std.UInt> {
        this.extra = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public var modTime(get, set) : stdgo._internal.time.Time_time.Time;
    function get_modTime():stdgo._internal.time.Time_time.Time return this.modTime;
    function set_modTime(v:stdgo._internal.time.Time_time.Time):stdgo._internal.time.Time_time.Time {
        this.modTime = v;
        return v;
    }
    public var name(get, set) : String;
    function get_name():String return this.name;
    function set_name(v:String):String {
        this.name = (v : stdgo.GoString);
        return v;
    }
    public var oS(get, set) : std.UInt;
    function get_oS():std.UInt return this.oS;
    function set_oS(v:std.UInt):std.UInt {
        this.oS = (v : stdgo.GoUInt8);
        return v;
    }
    public function new(?comment:String, ?extra:Array<std.UInt>, ?modTime:stdgo._internal.time.Time_time.Time, ?name:String, ?oS:std.UInt) this = new stdgo._internal.compress.gzip.Gzip_header.Header((comment : stdgo.GoString), ([for (i in extra) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>), modTime, (name : stdgo.GoString), (oS : stdgo.GoUInt8));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.compress.gzip.Gzip.Reader_static_extension) abstract Reader(stdgo._internal.compress.gzip.Gzip_reader.Reader) from stdgo._internal.compress.gzip.Gzip_reader.Reader to stdgo._internal.compress.gzip.Gzip_reader.Reader {
    public var header(get, set) : Header;
    function get_header():Header return this.header;
    function set_header(v:Header):Header {
        this.header = v;
        return v;
    }
    public var _r(get, set) : stdgo._internal.compress.flate.Flate_reader.Reader;
    function get__r():stdgo._internal.compress.flate.Flate_reader.Reader return this._r;
    function set__r(v:stdgo._internal.compress.flate.Flate_reader.Reader):stdgo._internal.compress.flate.Flate_reader.Reader {
        this._r = v;
        return v;
    }
    public var _decompressor(get, set) : stdgo._internal.io.Io_readcloser.ReadCloser;
    function get__decompressor():stdgo._internal.io.Io_readcloser.ReadCloser return this._decompressor;
    function set__decompressor(v:stdgo._internal.io.Io_readcloser.ReadCloser):stdgo._internal.io.Io_readcloser.ReadCloser {
        this._decompressor = v;
        return v;
    }
    public var _digest(get, set) : std.UInt;
    function get__digest():std.UInt return this._digest;
    function set__digest(v:std.UInt):std.UInt {
        this._digest = (v : stdgo.GoUInt32);
        return v;
    }
    public var _size(get, set) : std.UInt;
    function get__size():std.UInt return this._size;
    function set__size(v:std.UInt):std.UInt {
        this._size = (v : stdgo.GoUInt32);
        return v;
    }
    public var _buf(get, set) : haxe.ds.Vector<std.UInt>;
    function get__buf():haxe.ds.Vector<std.UInt> return haxe.ds.Vector.fromArrayCopy([for (i in this._buf) i]);
    function set__buf(v:haxe.ds.Vector<std.UInt>):haxe.ds.Vector<std.UInt> {
        this._buf = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.GoArray<stdgo.GoUInt8>);
        return v;
    }
    public var _err(get, set) : stdgo.Error;
    function get__err():stdgo.Error return this._err;
    function set__err(v:stdgo.Error):stdgo.Error {
        this._err = (v : stdgo.Error);
        return v;
    }
    public var _multistream(get, set) : Bool;
    function get__multistream():Bool return this._multistream;
    function set__multistream(v:Bool):Bool {
        this._multistream = v;
        return v;
    }
    public function new(?header:Header, ?_r:stdgo._internal.compress.flate.Flate_reader.Reader, ?_decompressor:stdgo._internal.io.Io_readcloser.ReadCloser, ?_digest:std.UInt, ?_size:std.UInt, ?_buf:haxe.ds.Vector<std.UInt>, ?_err:stdgo.Error, ?_multistream:Bool) this = new stdgo._internal.compress.gzip.Gzip_reader.Reader(header, _r, _decompressor, (_digest : stdgo.GoUInt32), (_size : stdgo.GoUInt32), ([for (i in _buf) (i : stdgo.GoUInt8)] : stdgo.GoArray<stdgo.GoUInt8>), (_err : stdgo.Error), _multistream);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.compress.gzip.Gzip.Writer_static_extension) abstract Writer(stdgo._internal.compress.gzip.Gzip_writer.Writer) from stdgo._internal.compress.gzip.Gzip_writer.Writer to stdgo._internal.compress.gzip.Gzip_writer.Writer {
    public var header(get, set) : Header;
    function get_header():Header return this.header;
    function set_header(v:Header):Header {
        this.header = v;
        return v;
    }
    public var _w(get, set) : stdgo._internal.io.Io_writer.Writer;
    function get__w():stdgo._internal.io.Io_writer.Writer return this._w;
    function set__w(v:stdgo._internal.io.Io_writer.Writer):stdgo._internal.io.Io_writer.Writer {
        this._w = v;
        return v;
    }
    public var _level(get, set) : StdTypes.Int;
    function get__level():StdTypes.Int return this._level;
    function set__level(v:StdTypes.Int):StdTypes.Int {
        this._level = (v : stdgo.GoInt);
        return v;
    }
    public var _wroteHeader(get, set) : Bool;
    function get__wroteHeader():Bool return this._wroteHeader;
    function set__wroteHeader(v:Bool):Bool {
        this._wroteHeader = v;
        return v;
    }
    public var _compressor(get, set) : stdgo._internal.compress.flate.Flate_writer.Writer;
    function get__compressor():stdgo._internal.compress.flate.Flate_writer.Writer return this._compressor;
    function set__compressor(v:stdgo._internal.compress.flate.Flate_writer.Writer):stdgo._internal.compress.flate.Flate_writer.Writer {
        this._compressor = (v : stdgo.Ref<stdgo._internal.compress.flate.Flate_writer.Writer>);
        return v;
    }
    public var _digest(get, set) : std.UInt;
    function get__digest():std.UInt return this._digest;
    function set__digest(v:std.UInt):std.UInt {
        this._digest = (v : stdgo.GoUInt32);
        return v;
    }
    public var _size(get, set) : std.UInt;
    function get__size():std.UInt return this._size;
    function set__size(v:std.UInt):std.UInt {
        this._size = (v : stdgo.GoUInt32);
        return v;
    }
    public var _closed(get, set) : Bool;
    function get__closed():Bool return this._closed;
    function set__closed(v:Bool):Bool {
        this._closed = v;
        return v;
    }
    public var _buf(get, set) : haxe.ds.Vector<std.UInt>;
    function get__buf():haxe.ds.Vector<std.UInt> return haxe.ds.Vector.fromArrayCopy([for (i in this._buf) i]);
    function set__buf(v:haxe.ds.Vector<std.UInt>):haxe.ds.Vector<std.UInt> {
        this._buf = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.GoArray<stdgo.GoUInt8>);
        return v;
    }
    public var _err(get, set) : stdgo.Error;
    function get__err():stdgo.Error return this._err;
    function set__err(v:stdgo.Error):stdgo.Error {
        this._err = (v : stdgo.Error);
        return v;
    }
    public function new(?header:Header, ?_w:stdgo._internal.io.Io_writer.Writer, ?_level:StdTypes.Int, ?_wroteHeader:Bool, ?_compressor:stdgo._internal.compress.flate.Flate_writer.Writer, ?_digest:std.UInt, ?_size:std.UInt, ?_closed:Bool, ?_buf:haxe.ds.Vector<std.UInt>, ?_err:stdgo.Error) this = new stdgo._internal.compress.gzip.Gzip_writer.Writer(header, _w, (_level : stdgo.GoInt), _wroteHeader, (_compressor : stdgo.Ref<stdgo._internal.compress.flate.Flate_writer.Writer>), (_digest : stdgo.GoUInt32), (_size : stdgo.GoUInt32), _closed, ([for (i in _buf) (i : stdgo.GoUInt8)] : stdgo.GoArray<stdgo.GoUInt8>), (_err : stdgo.Error));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
typedef HeaderPointer = stdgo._internal.compress.gzip.Gzip_headerpointer.HeaderPointer;
class Header_static_extension {

}
typedef ReaderPointer = stdgo._internal.compress.gzip.Gzip_readerpointer.ReaderPointer;
class Reader_static_extension {
    static public function close(_z:Reader):stdgo.Error {
        final _z = (_z : stdgo.Ref<stdgo._internal.compress.gzip.Gzip_reader.Reader>);
        return stdgo._internal.compress.gzip.Gzip_reader_static_extension.Reader_static_extension.close(_z);
    }
    static public function read(_z:Reader, _p:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _z = (_z : stdgo.Ref<stdgo._internal.compress.gzip.Gzip_reader.Reader>);
        final _p = ([for (i in _p) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.compress.gzip.Gzip_reader_static_extension.Reader_static_extension.read(_z, _p);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _readHeader(_z:Reader):stdgo.Tuple<Header, stdgo.Error> {
        final _z = (_z : stdgo.Ref<stdgo._internal.compress.gzip.Gzip_reader.Reader>);
        return {
            final obj = stdgo._internal.compress.gzip.Gzip_reader_static_extension.Reader_static_extension._readHeader(_z);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _readString(_z:Reader):stdgo.Tuple<String, stdgo.Error> {
        final _z = (_z : stdgo.Ref<stdgo._internal.compress.gzip.Gzip_reader.Reader>);
        return {
            final obj = stdgo._internal.compress.gzip.Gzip_reader_static_extension.Reader_static_extension._readString(_z);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function multistream(_z:Reader, _ok:Bool):Void {
        final _z = (_z : stdgo.Ref<stdgo._internal.compress.gzip.Gzip_reader.Reader>);
        stdgo._internal.compress.gzip.Gzip_reader_static_extension.Reader_static_extension.multistream(_z, _ok);
    }
    static public function reset(_z:Reader, _r:stdgo._internal.io.Io_reader.Reader):stdgo.Error {
        final _z = (_z : stdgo.Ref<stdgo._internal.compress.gzip.Gzip_reader.Reader>);
        return stdgo._internal.compress.gzip.Gzip_reader_static_extension.Reader_static_extension.reset(_z, _r);
    }
}
typedef WriterPointer = stdgo._internal.compress.gzip.Gzip_writerpointer.WriterPointer;
class Writer_static_extension {
    static public function close(_z:Writer):stdgo.Error {
        final _z = (_z : stdgo.Ref<stdgo._internal.compress.gzip.Gzip_writer.Writer>);
        return stdgo._internal.compress.gzip.Gzip_writer_static_extension.Writer_static_extension.close(_z);
    }
    static public function flush(_z:Writer):stdgo.Error {
        final _z = (_z : stdgo.Ref<stdgo._internal.compress.gzip.Gzip_writer.Writer>);
        return stdgo._internal.compress.gzip.Gzip_writer_static_extension.Writer_static_extension.flush(_z);
    }
    static public function write(_z:Writer, _p:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _z = (_z : stdgo.Ref<stdgo._internal.compress.gzip.Gzip_writer.Writer>);
        final _p = ([for (i in _p) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.compress.gzip.Gzip_writer_static_extension.Writer_static_extension.write(_z, _p);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _writeString(_z:Writer, _s:String):stdgo.Error {
        final _z = (_z : stdgo.Ref<stdgo._internal.compress.gzip.Gzip_writer.Writer>);
        final _s = (_s : stdgo.GoString);
        return stdgo._internal.compress.gzip.Gzip_writer_static_extension.Writer_static_extension._writeString(_z, _s);
    }
    static public function _writeBytes(_z:Writer, _b:Array<std.UInt>):stdgo.Error {
        final _z = (_z : stdgo.Ref<stdgo._internal.compress.gzip.Gzip_writer.Writer>);
        final _b = ([for (i in _b) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.compress.gzip.Gzip_writer_static_extension.Writer_static_extension._writeBytes(_z, _b);
    }
    static public function reset(_z:Writer, _w:stdgo._internal.io.Io_writer.Writer):Void {
        final _z = (_z : stdgo.Ref<stdgo._internal.compress.gzip.Gzip_writer.Writer>);
        stdgo._internal.compress.gzip.Gzip_writer_static_extension.Writer_static_extension.reset(_z, _w);
    }
    static public function _init(_z:Writer, _w:stdgo._internal.io.Io_writer.Writer, _level:StdTypes.Int):Void {
        final _z = (_z : stdgo.Ref<stdgo._internal.compress.gzip.Gzip_writer.Writer>);
        final _level = (_level : stdgo.GoInt);
        stdgo._internal.compress.gzip.Gzip_writer_static_extension.Writer_static_extension._init(_z, _w, _level);
    }
}
/**
    * Package gzip implements reading and writing of gzip format compressed files,
    * as specified in RFC 1952.
**/
class Gzip {
    /**
        * NewReader creates a new Reader reading the given reader.
        * If r does not also implement io.ByteReader,
        * the decompressor may read more data than necessary from r.
        * 
        * It is the caller's responsibility to call Close on the Reader when done.
        * 
        * The Reader.Header fields will be valid in the Reader returned.
    **/
    static public inline function newReader(_r:stdgo._internal.io.Io_reader.Reader):stdgo.Tuple<Reader, stdgo.Error> {
        return {
            final obj = stdgo._internal.compress.gzip.Gzip_newreader.newReader(_r);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        * NewWriter returns a new Writer.
        * Writes to the returned writer are compressed and written to w.
        * 
        * It is the caller's responsibility to call Close on the Writer when done.
        * Writes may be buffered and not flushed until Close.
        * 
        * Callers that wish to set the fields in Writer.Header must do so before
        * the first call to Write, Flush, or Close.
    **/
    static public inline function newWriter(_w:stdgo._internal.io.Io_writer.Writer):Writer {
        return stdgo._internal.compress.gzip.Gzip_newwriter.newWriter(_w);
    }
    /**
        * NewWriterLevel is like NewWriter but specifies the compression level instead
        * of assuming DefaultCompression.
        * 
        * The compression level can be DefaultCompression, NoCompression, HuffmanOnly
        * or any integer value between BestSpeed and BestCompression inclusive.
        * The error returned will be nil if the level is valid.
    **/
    static public inline function newWriterLevel(_w:stdgo._internal.io.Io_writer.Writer, _level:StdTypes.Int):stdgo.Tuple<Writer, stdgo.Error> {
        final _level = (_level : stdgo.GoInt);
        return {
            final obj = stdgo._internal.compress.gzip.Gzip_newwriterlevel.newWriterLevel(_w, _level);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
