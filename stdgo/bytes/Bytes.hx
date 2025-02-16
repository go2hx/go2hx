package stdgo.bytes;
final minRead : haxe.UInt64 = stdgo._internal.bytes.Bytes_minread.minRead;
var errTooLarge(get, set) : stdgo.Error;
private function get_errTooLarge():stdgo.Error return stdgo._internal.bytes.Bytes_errtoolarge.errTooLarge;
private function set_errTooLarge(v:stdgo.Error):stdgo.Error {
        stdgo._internal.bytes.Bytes_errtoolarge.errTooLarge = (v : stdgo.Error);
        return v;
    }
var indexBytePortable(get, set) : (Array<std.UInt>, std.UInt) -> StdTypes.Int;
private function get_indexBytePortable():(Array<std.UInt>, std.UInt) -> StdTypes.Int return (_0, _1) -> stdgo._internal.bytes.Bytes_indexbyteportable.indexBytePortable([for (i in _0) i], _1);
private function set_indexBytePortable(v:(Array<std.UInt>, std.UInt) -> StdTypes.Int):(Array<std.UInt>, std.UInt) -> StdTypes.Int {
        stdgo._internal.bytes.Bytes_indexbyteportable.indexBytePortable = v;
        return v;
    }
@:structInit @:using(stdgo.bytes.Bytes.Buffer_static_extension) abstract Buffer(stdgo._internal.bytes.Bytes_buffer.Buffer) from stdgo._internal.bytes.Bytes_buffer.Buffer to stdgo._internal.bytes.Bytes_buffer.Buffer {
    public var _buf(get, set) : Array<std.UInt>;
    function get__buf():Array<std.UInt> return [for (i in this._buf) i];
    function set__buf(v:Array<std.UInt>):Array<std.UInt> {
        this._buf = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public var _off(get, set) : StdTypes.Int;
    function get__off():StdTypes.Int return this._off;
    function set__off(v:StdTypes.Int):StdTypes.Int {
        this._off = (v : stdgo.GoInt);
        return v;
    }
    public var _lastRead(get, set) : T_readOp;
    function get__lastRead():T_readOp return this._lastRead;
    function set__lastRead(v:T_readOp):T_readOp {
        this._lastRead = v;
        return v;
    }
    public function new(?_buf:Array<std.UInt>, ?_off:StdTypes.Int, ?_lastRead:T_readOp) this = new stdgo._internal.bytes.Bytes_buffer.Buffer(([for (i in _buf) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>), (_off : stdgo.GoInt), _lastRead);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.bytes.Bytes.Reader_static_extension) abstract Reader(stdgo._internal.bytes.Bytes_reader.Reader) from stdgo._internal.bytes.Bytes_reader.Reader to stdgo._internal.bytes.Bytes_reader.Reader {
    public var _s(get, set) : Array<std.UInt>;
    function get__s():Array<std.UInt> return [for (i in this._s) i];
    function set__s(v:Array<std.UInt>):Array<std.UInt> {
        this._s = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public var _i(get, set) : haxe.Int64;
    function get__i():haxe.Int64 return this._i;
    function set__i(v:haxe.Int64):haxe.Int64 {
        this._i = (v : stdgo.GoInt64);
        return v;
    }
    public var _prevRune(get, set) : StdTypes.Int;
    function get__prevRune():StdTypes.Int return this._prevRune;
    function set__prevRune(v:StdTypes.Int):StdTypes.Int {
        this._prevRune = (v : stdgo.GoInt);
        return v;
    }
    public function new(?_s:Array<std.UInt>, ?_i:haxe.Int64, ?_prevRune:StdTypes.Int) this = new stdgo._internal.bytes.Bytes_reader.Reader(([for (i in _s) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>), (_i : stdgo.GoInt64), (_prevRune : stdgo.GoInt));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:dox(hide) typedef T_readOp = stdgo._internal.bytes.Bytes_t_readop.T_readOp;
@:dox(hide) typedef T_asciiSet = stdgo._internal.bytes.Bytes_t_asciiset.T_asciiSet;
@:structInit @:using(stdgo.bytes.Bytes.T_fieldsFunc___localname___span_11914_static_extension) @:dox(hide) abstract T_fieldsFunc___localname___span_11914(stdgo._internal.bytes.Bytes_t_fieldsfunc___localname___span_11914.T_fieldsFunc___localname___span_11914) from stdgo._internal.bytes.Bytes_t_fieldsfunc___localname___span_11914.T_fieldsFunc___localname___span_11914 to stdgo._internal.bytes.Bytes_t_fieldsfunc___localname___span_11914.T_fieldsFunc___localname___span_11914 {
    public var _start(get, set) : StdTypes.Int;
    function get__start():StdTypes.Int return this._start;
    function set__start(v:StdTypes.Int):StdTypes.Int {
        this._start = (v : stdgo.GoInt);
        return v;
    }
    public var _end(get, set) : StdTypes.Int;
    function get__end():StdTypes.Int return this._end;
    function set__end(v:StdTypes.Int):StdTypes.Int {
        this._end = (v : stdgo.GoInt);
        return v;
    }
    public function new(?_start:StdTypes.Int, ?_end:StdTypes.Int) this = new stdgo._internal.bytes.Bytes_t_fieldsfunc___localname___span_11914.T_fieldsFunc___localname___span_11914((_start : stdgo.GoInt), (_end : stdgo.GoInt));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
typedef BufferPointer = stdgo._internal.bytes.Bytes_bufferpointer.BufferPointer;
class Buffer_static_extension {
    static public function readString(_b:Buffer, _delim:std.UInt):stdgo.Tuple<String, stdgo.Error> {
        final _b = (_b : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>);
        final _delim = (_delim : stdgo.GoUInt8);
        return {
            final obj = stdgo._internal.bytes.Bytes_buffer_static_extension.Buffer_static_extension.readString(_b, _delim);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _readSlice(_b:Buffer, _delim:std.UInt):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        final _b = (_b : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>);
        final _delim = (_delim : stdgo.GoUInt8);
        return {
            final obj = stdgo._internal.bytes.Bytes_buffer_static_extension.Buffer_static_extension._readSlice(_b, _delim);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    static public function readBytes(_b:Buffer, _delim:std.UInt):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        final _b = (_b : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>);
        final _delim = (_delim : stdgo.GoUInt8);
        return {
            final obj = stdgo._internal.bytes.Bytes_buffer_static_extension.Buffer_static_extension.readBytes(_b, _delim);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    static public function unreadByte(_b:Buffer):stdgo.Error {
        final _b = (_b : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>);
        return stdgo._internal.bytes.Bytes_buffer_static_extension.Buffer_static_extension.unreadByte(_b);
    }
    static public function unreadRune(_b:Buffer):stdgo.Error {
        final _b = (_b : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>);
        return stdgo._internal.bytes.Bytes_buffer_static_extension.Buffer_static_extension.unreadRune(_b);
    }
    static public function readRune(_b:Buffer):stdgo.Tuple.Tuple3<StdTypes.Int, StdTypes.Int, stdgo.Error> {
        final _b = (_b : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>);
        return {
            final obj = stdgo._internal.bytes.Bytes_buffer_static_extension.Buffer_static_extension.readRune(_b);
            { _0 : obj._0, _1 : obj._1, _2 : obj._2 };
        };
    }
    static public function readByte(_b:Buffer):stdgo.Tuple<std.UInt, stdgo.Error> {
        final _b = (_b : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>);
        return {
            final obj = stdgo._internal.bytes.Bytes_buffer_static_extension.Buffer_static_extension.readByte(_b);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function next(_b:Buffer, _n:StdTypes.Int):Array<std.UInt> {
        final _b = (_b : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>);
        final _n = (_n : stdgo.GoInt);
        return [for (i in stdgo._internal.bytes.Bytes_buffer_static_extension.Buffer_static_extension.next(_b, _n)) i];
    }
    static public function read(_b:Buffer, _p:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _b = (_b : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>);
        final _p = ([for (i in _p) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.bytes.Bytes_buffer_static_extension.Buffer_static_extension.read(_b, _p);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function writeRune(_b:Buffer, _r:StdTypes.Int):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _b = (_b : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>);
        final _r = (_r : stdgo.GoInt32);
        return {
            final obj = stdgo._internal.bytes.Bytes_buffer_static_extension.Buffer_static_extension.writeRune(_b, _r);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function writeByte(_b:Buffer, _c:std.UInt):stdgo.Error {
        final _b = (_b : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>);
        final _c = (_c : stdgo.GoUInt8);
        return stdgo._internal.bytes.Bytes_buffer_static_extension.Buffer_static_extension.writeByte(_b, _c);
    }
    static public function writeTo(_b:Buffer, _w:stdgo._internal.io.Io_writer.Writer):stdgo.Tuple<haxe.Int64, stdgo.Error> {
        final _b = (_b : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>);
        return {
            final obj = stdgo._internal.bytes.Bytes_buffer_static_extension.Buffer_static_extension.writeTo(_b, _w);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function readFrom(_b:Buffer, _r:stdgo._internal.io.Io_reader.Reader):stdgo.Tuple<haxe.Int64, stdgo.Error> {
        final _b = (_b : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>);
        return {
            final obj = stdgo._internal.bytes.Bytes_buffer_static_extension.Buffer_static_extension.readFrom(_b, _r);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function writeString(_b:Buffer, _s:String):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _b = (_b : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>);
        final _s = (_s : stdgo.GoString);
        return {
            final obj = stdgo._internal.bytes.Bytes_buffer_static_extension.Buffer_static_extension.writeString(_b, _s);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function write(_b:Buffer, _p:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _b = (_b : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>);
        final _p = ([for (i in _p) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.bytes.Bytes_buffer_static_extension.Buffer_static_extension.write(_b, _p);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function grow(_b:Buffer, _n:StdTypes.Int):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>);
        final _n = (_n : stdgo.GoInt);
        stdgo._internal.bytes.Bytes_buffer_static_extension.Buffer_static_extension.grow(_b, _n);
    }
    static public function _grow(_b:Buffer, _n:StdTypes.Int):StdTypes.Int {
        final _b = (_b : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>);
        final _n = (_n : stdgo.GoInt);
        return stdgo._internal.bytes.Bytes_buffer_static_extension.Buffer_static_extension._grow(_b, _n);
    }
    static public function _tryGrowByReslice(_b:Buffer, _n:StdTypes.Int):stdgo.Tuple<StdTypes.Int, Bool> {
        final _b = (_b : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>);
        final _n = (_n : stdgo.GoInt);
        return {
            final obj = stdgo._internal.bytes.Bytes_buffer_static_extension.Buffer_static_extension._tryGrowByReslice(_b, _n);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function reset(_b:Buffer):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>);
        stdgo._internal.bytes.Bytes_buffer_static_extension.Buffer_static_extension.reset(_b);
    }
    static public function truncate(_b:Buffer, _n:StdTypes.Int):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>);
        final _n = (_n : stdgo.GoInt);
        stdgo._internal.bytes.Bytes_buffer_static_extension.Buffer_static_extension.truncate(_b, _n);
    }
    static public function available(_b:Buffer):StdTypes.Int {
        final _b = (_b : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>);
        return stdgo._internal.bytes.Bytes_buffer_static_extension.Buffer_static_extension.available(_b);
    }
    static public function cap(_b:Buffer):StdTypes.Int {
        final _b = (_b : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>);
        return stdgo._internal.bytes.Bytes_buffer_static_extension.Buffer_static_extension.cap(_b);
    }
    static public function len(_b:Buffer):StdTypes.Int {
        final _b = (_b : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>);
        return stdgo._internal.bytes.Bytes_buffer_static_extension.Buffer_static_extension.len(_b);
    }
    static public function _empty(_b:Buffer):Bool {
        final _b = (_b : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>);
        return stdgo._internal.bytes.Bytes_buffer_static_extension.Buffer_static_extension._empty(_b);
    }
    static public function string(_b:Buffer):String {
        final _b = (_b : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>);
        return stdgo._internal.bytes.Bytes_buffer_static_extension.Buffer_static_extension.string(_b);
    }
    static public function availableBuffer(_b:Buffer):Array<std.UInt> {
        final _b = (_b : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>);
        return [for (i in stdgo._internal.bytes.Bytes_buffer_static_extension.Buffer_static_extension.availableBuffer(_b)) i];
    }
    static public function bytes(_b:Buffer):Array<std.UInt> {
        final _b = (_b : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>);
        return [for (i in stdgo._internal.bytes.Bytes_buffer_static_extension.Buffer_static_extension.bytes(_b)) i];
    }
}
typedef ReaderPointer = stdgo._internal.bytes.Bytes_readerpointer.ReaderPointer;
class Reader_static_extension {
    static public function reset(_r:Reader, _b:Array<std.UInt>):Void {
        final _r = (_r : stdgo.Ref<stdgo._internal.bytes.Bytes_reader.Reader>);
        final _b = ([for (i in _b) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        stdgo._internal.bytes.Bytes_reader_static_extension.Reader_static_extension.reset(_r, _b);
    }
    static public function writeTo(_r:Reader, _w:stdgo._internal.io.Io_writer.Writer):stdgo.Tuple<haxe.Int64, stdgo.Error> {
        final _r = (_r : stdgo.Ref<stdgo._internal.bytes.Bytes_reader.Reader>);
        return {
            final obj = stdgo._internal.bytes.Bytes_reader_static_extension.Reader_static_extension.writeTo(_r, _w);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function seek(_r:Reader, _offset:haxe.Int64, _whence:StdTypes.Int):stdgo.Tuple<haxe.Int64, stdgo.Error> {
        final _r = (_r : stdgo.Ref<stdgo._internal.bytes.Bytes_reader.Reader>);
        final _offset = (_offset : stdgo.GoInt64);
        final _whence = (_whence : stdgo.GoInt);
        return {
            final obj = stdgo._internal.bytes.Bytes_reader_static_extension.Reader_static_extension.seek(_r, _offset, _whence);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function unreadRune(_r:Reader):stdgo.Error {
        final _r = (_r : stdgo.Ref<stdgo._internal.bytes.Bytes_reader.Reader>);
        return stdgo._internal.bytes.Bytes_reader_static_extension.Reader_static_extension.unreadRune(_r);
    }
    static public function readRune(_r:Reader):stdgo.Tuple.Tuple3<StdTypes.Int, StdTypes.Int, stdgo.Error> {
        final _r = (_r : stdgo.Ref<stdgo._internal.bytes.Bytes_reader.Reader>);
        return {
            final obj = stdgo._internal.bytes.Bytes_reader_static_extension.Reader_static_extension.readRune(_r);
            { _0 : obj._0, _1 : obj._1, _2 : obj._2 };
        };
    }
    static public function unreadByte(_r:Reader):stdgo.Error {
        final _r = (_r : stdgo.Ref<stdgo._internal.bytes.Bytes_reader.Reader>);
        return stdgo._internal.bytes.Bytes_reader_static_extension.Reader_static_extension.unreadByte(_r);
    }
    static public function readByte(_r:Reader):stdgo.Tuple<std.UInt, stdgo.Error> {
        final _r = (_r : stdgo.Ref<stdgo._internal.bytes.Bytes_reader.Reader>);
        return {
            final obj = stdgo._internal.bytes.Bytes_reader_static_extension.Reader_static_extension.readByte(_r);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function readAt(_r:Reader, _b:Array<std.UInt>, _off:haxe.Int64):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _r = (_r : stdgo.Ref<stdgo._internal.bytes.Bytes_reader.Reader>);
        final _b = ([for (i in _b) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _off = (_off : stdgo.GoInt64);
        return {
            final obj = stdgo._internal.bytes.Bytes_reader_static_extension.Reader_static_extension.readAt(_r, _b, _off);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function read(_r:Reader, _b:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _r = (_r : stdgo.Ref<stdgo._internal.bytes.Bytes_reader.Reader>);
        final _b = ([for (i in _b) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.bytes.Bytes_reader_static_extension.Reader_static_extension.read(_r, _b);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function size(_r:Reader):haxe.Int64 {
        final _r = (_r : stdgo.Ref<stdgo._internal.bytes.Bytes_reader.Reader>);
        return stdgo._internal.bytes.Bytes_reader_static_extension.Reader_static_extension.size(_r);
    }
    static public function len(_r:Reader):StdTypes.Int {
        final _r = (_r : stdgo.Ref<stdgo._internal.bytes.Bytes_reader.Reader>);
        return stdgo._internal.bytes.Bytes_reader_static_extension.Reader_static_extension.len(_r);
    }
}
@:dox(hide) typedef T_readOpPointer = stdgo._internal.bytes.Bytes_t_readoppointer.T_readOpPointer;
@:dox(hide) class T_readOp_static_extension {

}
@:dox(hide) typedef T_asciiSetPointer = stdgo._internal.bytes.Bytes_t_asciisetpointer.T_asciiSetPointer;
@:dox(hide) class T_asciiSet_static_extension {
    static public function _contains(_as:T_asciiSet, _c:std.UInt):Bool {
        final _as = (_as : stdgo.Ref<stdgo._internal.bytes.Bytes_t_asciiset.T_asciiSet>);
        final _c = (_c : stdgo.GoUInt8);
        return stdgo._internal.bytes.Bytes_t_asciiset_static_extension.T_asciiSet_static_extension._contains(_as, _c);
    }
}
@:dox(hide) typedef T_fieldsFunc___localname___span_11914Pointer = stdgo._internal.bytes.Bytes_t_fieldsfunc___localname___span_11914pointer.T_fieldsFunc___localname___span_11914Pointer;
@:dox(hide) class T_fieldsFunc___localname___span_11914_static_extension {

}
/**
    * Package bytes implements functions for the manipulation of byte slices.
    * It is analogous to the facilities of the [strings] package.
**/
class Bytes {
    /**
        * NewBuffer creates and initializes a new Buffer using buf as its
        * initial contents. The new Buffer takes ownership of buf, and the
        * caller should not use buf after this call. NewBuffer is intended to
        * prepare a Buffer to read existing data. It can also be used to set
        * the initial size of the internal buffer for writing. To do that,
        * buf should have the desired capacity but a length of zero.
        * 
        * In most cases, new(Buffer) (or just declaring a Buffer variable) is
        * sufficient to initialize a Buffer.
    **/
    static public inline function newBuffer(_buf:Array<std.UInt>):Buffer {
        final _buf = ([for (i in _buf) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.bytes.Bytes_newbuffer.newBuffer(_buf);
    }
    /**
        * NewBufferString creates and initializes a new Buffer using string s as its
        * initial contents. It is intended to prepare a buffer to read an existing
        * string.
        * 
        * In most cases, new(Buffer) (or just declaring a Buffer variable) is
        * sufficient to initialize a Buffer.
    **/
    static public inline function newBufferString(_s:String):Buffer {
        final _s = (_s : stdgo.GoString);
        return stdgo._internal.bytes.Bytes_newbufferstring.newBufferString(_s);
    }
    /**
        * Equal reports whether a and b
        * are the same length and contain the same bytes.
        * A nil argument is equivalent to an empty slice.
    **/
    static public inline function equal(_a:Array<std.UInt>, _b:Array<std.UInt>):Bool {
        final _a = ([for (i in _a) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _b = ([for (i in _b) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.bytes.Bytes_equal.equal(_a, _b);
    }
    /**
        * Compare returns an integer comparing two byte slices lexicographically.
        * The result will be 0 if a == b, -1 if a < b, and +1 if a > b.
        * A nil argument is equivalent to an empty slice.
    **/
    static public inline function compare(_a:Array<std.UInt>, _b:Array<std.UInt>):StdTypes.Int {
        final _a = ([for (i in _a) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _b = ([for (i in _b) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.bytes.Bytes_compare.compare(_a, _b);
    }
    /**
        * Count counts the number of non-overlapping instances of sep in s.
        * If sep is an empty slice, Count returns 1 + the number of UTF-8-encoded code points in s.
    **/
    static public inline function count(_s:Array<std.UInt>, _sep:Array<std.UInt>):StdTypes.Int {
        final _s = ([for (i in _s) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _sep = ([for (i in _sep) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.bytes.Bytes_count.count(_s, _sep);
    }
    /**
        * Contains reports whether subslice is within b.
    **/
    static public inline function contains(_b:Array<std.UInt>, _subslice:Array<std.UInt>):Bool {
        final _b = ([for (i in _b) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _subslice = ([for (i in _subslice) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.bytes.Bytes_contains.contains(_b, _subslice);
    }
    /**
        * ContainsAny reports whether any of the UTF-8-encoded code points in chars are within b.
    **/
    static public inline function containsAny(_b:Array<std.UInt>, _chars:String):Bool {
        final _b = ([for (i in _b) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _chars = (_chars : stdgo.GoString);
        return stdgo._internal.bytes.Bytes_containsany.containsAny(_b, _chars);
    }
    /**
        * ContainsRune reports whether the rune is contained in the UTF-8-encoded byte slice b.
    **/
    static public inline function containsRune(_b:Array<std.UInt>, _r:StdTypes.Int):Bool {
        final _b = ([for (i in _b) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _r = (_r : stdgo.GoInt32);
        return stdgo._internal.bytes.Bytes_containsrune.containsRune(_b, _r);
    }
    /**
        * ContainsFunc reports whether any of the UTF-8-encoded code points r within b satisfy f(r).
    **/
    static public inline function containsFunc(_b:Array<std.UInt>, _f:StdTypes.Int -> Bool):Bool {
        final _b = ([for (i in _b) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _f = _f;
        return stdgo._internal.bytes.Bytes_containsfunc.containsFunc(_b, _f);
    }
    /**
        * IndexByte returns the index of the first instance of c in b, or -1 if c is not present in b.
    **/
    static public inline function indexByte(_b:Array<std.UInt>, _c:std.UInt):StdTypes.Int {
        final _b = ([for (i in _b) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _c = (_c : stdgo.GoUInt8);
        return stdgo._internal.bytes.Bytes_indexbyte.indexByte(_b, _c);
    }
    /**
        * LastIndex returns the index of the last instance of sep in s, or -1 if sep is not present in s.
    **/
    static public inline function lastIndex(_s:Array<std.UInt>, _sep:Array<std.UInt>):StdTypes.Int {
        final _s = ([for (i in _s) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _sep = ([for (i in _sep) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.bytes.Bytes_lastindex.lastIndex(_s, _sep);
    }
    /**
        * LastIndexByte returns the index of the last instance of c in s, or -1 if c is not present in s.
    **/
    static public inline function lastIndexByte(_s:Array<std.UInt>, _c:std.UInt):StdTypes.Int {
        final _s = ([for (i in _s) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _c = (_c : stdgo.GoUInt8);
        return stdgo._internal.bytes.Bytes_lastindexbyte.lastIndexByte(_s, _c);
    }
    /**
        * IndexRune interprets s as a sequence of UTF-8-encoded code points.
        * It returns the byte index of the first occurrence in s of the given rune.
        * It returns -1 if rune is not present in s.
        * If r is utf8.RuneError, it returns the first instance of any
        * invalid UTF-8 byte sequence.
    **/
    static public inline function indexRune(_s:Array<std.UInt>, _r:StdTypes.Int):StdTypes.Int {
        final _s = ([for (i in _s) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _r = (_r : stdgo.GoInt32);
        return stdgo._internal.bytes.Bytes_indexrune.indexRune(_s, _r);
    }
    /**
        * IndexAny interprets s as a sequence of UTF-8-encoded Unicode code points.
        * It returns the byte index of the first occurrence in s of any of the Unicode
        * code points in chars. It returns -1 if chars is empty or if there is no code
        * point in common.
    **/
    static public inline function indexAny(_s:Array<std.UInt>, _chars:String):StdTypes.Int {
        final _s = ([for (i in _s) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _chars = (_chars : stdgo.GoString);
        return stdgo._internal.bytes.Bytes_indexany.indexAny(_s, _chars);
    }
    /**
        * LastIndexAny interprets s as a sequence of UTF-8-encoded Unicode code
        * points. It returns the byte index of the last occurrence in s of any of
        * the Unicode code points in chars. It returns -1 if chars is empty or if
        * there is no code point in common.
    **/
    static public inline function lastIndexAny(_s:Array<std.UInt>, _chars:String):StdTypes.Int {
        final _s = ([for (i in _s) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _chars = (_chars : stdgo.GoString);
        return stdgo._internal.bytes.Bytes_lastindexany.lastIndexAny(_s, _chars);
    }
    /**
        * SplitN slices s into subslices separated by sep and returns a slice of
        * the subslices between those separators.
        * If sep is empty, SplitN splits after each UTF-8 sequence.
        * The count determines the number of subslices to return:
        * 
        * 	n > 0: at most n subslices; the last subslice will be the unsplit remainder.
        * 	n == 0: the result is nil (zero subslices)
        * 	n < 0: all subslices
        * 
        * To split around the first instance of a separator, see Cut.
    **/
    static public inline function splitN(_s:Array<std.UInt>, _sep:Array<std.UInt>, _n:StdTypes.Int):Array<Array<std.UInt>> {
        final _s = ([for (i in _s) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _sep = ([for (i in _sep) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _n = (_n : stdgo.GoInt);
        return [for (i in stdgo._internal.bytes.Bytes_splitn.splitN(_s, _sep, _n)) [for (i in i) i]];
    }
    /**
        * SplitAfterN slices s into subslices after each instance of sep and
        * returns a slice of those subslices.
        * If sep is empty, SplitAfterN splits after each UTF-8 sequence.
        * The count determines the number of subslices to return:
        * 
        * 	n > 0: at most n subslices; the last subslice will be the unsplit remainder.
        * 	n == 0: the result is nil (zero subslices)
        * 	n < 0: all subslices
    **/
    static public inline function splitAfterN(_s:Array<std.UInt>, _sep:Array<std.UInt>, _n:StdTypes.Int):Array<Array<std.UInt>> {
        final _s = ([for (i in _s) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _sep = ([for (i in _sep) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _n = (_n : stdgo.GoInt);
        return [for (i in stdgo._internal.bytes.Bytes_splitaftern.splitAfterN(_s, _sep, _n)) [for (i in i) i]];
    }
    /**
        * Split slices s into all subslices separated by sep and returns a slice of
        * the subslices between those separators.
        * If sep is empty, Split splits after each UTF-8 sequence.
        * It is equivalent to SplitN with a count of -1.
        * 
        * To split around the first instance of a separator, see Cut.
    **/
    static public inline function split(_s:Array<std.UInt>, _sep:Array<std.UInt>):Array<Array<std.UInt>> {
        final _s = ([for (i in _s) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _sep = ([for (i in _sep) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return [for (i in stdgo._internal.bytes.Bytes_split.split(_s, _sep)) [for (i in i) i]];
    }
    /**
        * SplitAfter slices s into all subslices after each instance of sep and
        * returns a slice of those subslices.
        * If sep is empty, SplitAfter splits after each UTF-8 sequence.
        * It is equivalent to SplitAfterN with a count of -1.
    **/
    static public inline function splitAfter(_s:Array<std.UInt>, _sep:Array<std.UInt>):Array<Array<std.UInt>> {
        final _s = ([for (i in _s) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _sep = ([for (i in _sep) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return [for (i in stdgo._internal.bytes.Bytes_splitafter.splitAfter(_s, _sep)) [for (i in i) i]];
    }
    /**
        * Fields interprets s as a sequence of UTF-8-encoded code points.
        * It splits the slice s around each instance of one or more consecutive white space
        * characters, as defined by unicode.IsSpace, returning a slice of subslices of s or an
        * empty slice if s contains only white space.
    **/
    static public inline function fields(_s:Array<std.UInt>):Array<Array<std.UInt>> {
        final _s = ([for (i in _s) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return [for (i in stdgo._internal.bytes.Bytes_fields.fields(_s)) [for (i in i) i]];
    }
    /**
        * FieldsFunc interprets s as a sequence of UTF-8-encoded code points.
        * It splits the slice s at each run of code points c satisfying f(c) and
        * returns a slice of subslices of s. If all code points in s satisfy f(c), or
        * len(s) == 0, an empty slice is returned.
        * 
        * FieldsFunc makes no guarantees about the order in which it calls f(c)
        * and assumes that f always returns the same value for a given c.
    **/
    static public inline function fieldsFunc(_s:Array<std.UInt>, _f:StdTypes.Int -> Bool):Array<Array<std.UInt>> {
        final _s = ([for (i in _s) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _f = _f;
        return [for (i in stdgo._internal.bytes.Bytes_fieldsfunc.fieldsFunc(_s, _f)) [for (i in i) i]];
    }
    /**
        * Join concatenates the elements of s to create a new byte slice. The separator
        * sep is placed between elements in the resulting slice.
    **/
    static public inline function join(_s:Array<Array<std.UInt>>, _sep:Array<std.UInt>):Array<std.UInt> {
        final _s = ([for (i in _s) ([for (i in i) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>)] : stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>>);
        final _sep = ([for (i in _sep) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return [for (i in stdgo._internal.bytes.Bytes_join.join(_s, _sep)) i];
    }
    /**
        * HasPrefix tests whether the byte slice s begins with prefix.
    **/
    static public inline function hasPrefix(_s:Array<std.UInt>, _prefix:Array<std.UInt>):Bool {
        final _s = ([for (i in _s) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _prefix = ([for (i in _prefix) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.bytes.Bytes_hasprefix.hasPrefix(_s, _prefix);
    }
    /**
        * HasSuffix tests whether the byte slice s ends with suffix.
    **/
    static public inline function hasSuffix(_s:Array<std.UInt>, _suffix:Array<std.UInt>):Bool {
        final _s = ([for (i in _s) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _suffix = ([for (i in _suffix) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.bytes.Bytes_hassuffix.hasSuffix(_s, _suffix);
    }
    /**
        * Map returns a copy of the byte slice s with all its characters modified
        * according to the mapping function. If mapping returns a negative value, the character is
        * dropped from the byte slice with no replacement. The characters in s and the
        * output are interpreted as UTF-8-encoded code points.
    **/
    static public inline function map_(_mapping:StdTypes.Int -> StdTypes.Int, _s:Array<std.UInt>):Array<std.UInt> {
        final _mapping = _mapping;
        final _s = ([for (i in _s) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return [for (i in stdgo._internal.bytes.Bytes_map_.map_(_mapping, _s)) i];
    }
    /**
        * Repeat returns a new byte slice consisting of count copies of b.
        * 
        * It panics if count is negative or if the result of (len(b) * count)
        * overflows.
    **/
    static public inline function repeat(_b:Array<std.UInt>, _count:StdTypes.Int):Array<std.UInt> {
        final _b = ([for (i in _b) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _count = (_count : stdgo.GoInt);
        return [for (i in stdgo._internal.bytes.Bytes_repeat.repeat(_b, _count)) i];
    }
    /**
        * ToUpper returns a copy of the byte slice s with all Unicode letters mapped to
        * their upper case.
    **/
    static public inline function toUpper(_s:Array<std.UInt>):Array<std.UInt> {
        final _s = ([for (i in _s) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return [for (i in stdgo._internal.bytes.Bytes_toupper.toUpper(_s)) i];
    }
    /**
        * ToLower returns a copy of the byte slice s with all Unicode letters mapped to
        * their lower case.
    **/
    static public inline function toLower(_s:Array<std.UInt>):Array<std.UInt> {
        final _s = ([for (i in _s) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return [for (i in stdgo._internal.bytes.Bytes_tolower.toLower(_s)) i];
    }
    /**
        * ToTitle treats s as UTF-8-encoded bytes and returns a copy with all the Unicode letters mapped to their title case.
    **/
    static public inline function toTitle(_s:Array<std.UInt>):Array<std.UInt> {
        final _s = ([for (i in _s) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return [for (i in stdgo._internal.bytes.Bytes_totitle.toTitle(_s)) i];
    }
    /**
        * ToUpperSpecial treats s as UTF-8-encoded bytes and returns a copy with all the Unicode letters mapped to their
        * upper case, giving priority to the special casing rules.
    **/
    static public inline function toUpperSpecial(_c:stdgo._internal.unicode.Unicode_specialcase.SpecialCase, _s:Array<std.UInt>):Array<std.UInt> {
        final _s = ([for (i in _s) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return [for (i in stdgo._internal.bytes.Bytes_toupperspecial.toUpperSpecial(_c, _s)) i];
    }
    /**
        * ToLowerSpecial treats s as UTF-8-encoded bytes and returns a copy with all the Unicode letters mapped to their
        * lower case, giving priority to the special casing rules.
    **/
    static public inline function toLowerSpecial(_c:stdgo._internal.unicode.Unicode_specialcase.SpecialCase, _s:Array<std.UInt>):Array<std.UInt> {
        final _s = ([for (i in _s) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return [for (i in stdgo._internal.bytes.Bytes_tolowerspecial.toLowerSpecial(_c, _s)) i];
    }
    /**
        * ToTitleSpecial treats s as UTF-8-encoded bytes and returns a copy with all the Unicode letters mapped to their
        * title case, giving priority to the special casing rules.
    **/
    static public inline function toTitleSpecial(_c:stdgo._internal.unicode.Unicode_specialcase.SpecialCase, _s:Array<std.UInt>):Array<std.UInt> {
        final _s = ([for (i in _s) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return [for (i in stdgo._internal.bytes.Bytes_totitlespecial.toTitleSpecial(_c, _s)) i];
    }
    /**
        * ToValidUTF8 treats s as UTF-8-encoded bytes and returns a copy with each run of bytes
        * representing invalid UTF-8 replaced with the bytes in replacement, which may be empty.
    **/
    static public inline function toValidUTF8(_s:Array<std.UInt>, _replacement:Array<std.UInt>):Array<std.UInt> {
        final _s = ([for (i in _s) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _replacement = ([for (i in _replacement) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return [for (i in stdgo._internal.bytes.Bytes_tovalidutf8.toValidUTF8(_s, _replacement)) i];
    }
    /**
        * Title treats s as UTF-8-encoded bytes and returns a copy with all Unicode letters that begin
        * words mapped to their title case.
        * 
        * Deprecated: The rule Title uses for word boundaries does not handle Unicode
        * punctuation properly. Use golang.org/x/text/cases instead.
    **/
    static public inline function title(_s:Array<std.UInt>):Array<std.UInt> {
        final _s = ([for (i in _s) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return [for (i in stdgo._internal.bytes.Bytes_title.title(_s)) i];
    }
    /**
        * TrimLeftFunc treats s as UTF-8-encoded bytes and returns a subslice of s by slicing off
        * all leading UTF-8-encoded code points c that satisfy f(c).
    **/
    static public inline function trimLeftFunc(_s:Array<std.UInt>, _f:StdTypes.Int -> Bool):Array<std.UInt> {
        final _s = ([for (i in _s) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _f = _f;
        return [for (i in stdgo._internal.bytes.Bytes_trimleftfunc.trimLeftFunc(_s, _f)) i];
    }
    /**
        * TrimRightFunc returns a subslice of s by slicing off all trailing
        * UTF-8-encoded code points c that satisfy f(c).
    **/
    static public inline function trimRightFunc(_s:Array<std.UInt>, _f:StdTypes.Int -> Bool):Array<std.UInt> {
        final _s = ([for (i in _s) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _f = _f;
        return [for (i in stdgo._internal.bytes.Bytes_trimrightfunc.trimRightFunc(_s, _f)) i];
    }
    /**
        * TrimFunc returns a subslice of s by slicing off all leading and trailing
        * UTF-8-encoded code points c that satisfy f(c).
    **/
    static public inline function trimFunc(_s:Array<std.UInt>, _f:StdTypes.Int -> Bool):Array<std.UInt> {
        final _s = ([for (i in _s) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _f = _f;
        return [for (i in stdgo._internal.bytes.Bytes_trimfunc.trimFunc(_s, _f)) i];
    }
    /**
        * TrimPrefix returns s without the provided leading prefix string.
        * If s doesn't start with prefix, s is returned unchanged.
    **/
    static public inline function trimPrefix(_s:Array<std.UInt>, _prefix:Array<std.UInt>):Array<std.UInt> {
        final _s = ([for (i in _s) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _prefix = ([for (i in _prefix) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return [for (i in stdgo._internal.bytes.Bytes_trimprefix.trimPrefix(_s, _prefix)) i];
    }
    /**
        * TrimSuffix returns s without the provided trailing suffix string.
        * If s doesn't end with suffix, s is returned unchanged.
    **/
    static public inline function trimSuffix(_s:Array<std.UInt>, _suffix:Array<std.UInt>):Array<std.UInt> {
        final _s = ([for (i in _s) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _suffix = ([for (i in _suffix) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return [for (i in stdgo._internal.bytes.Bytes_trimsuffix.trimSuffix(_s, _suffix)) i];
    }
    /**
        * IndexFunc interprets s as a sequence of UTF-8-encoded code points.
        * It returns the byte index in s of the first Unicode
        * code point satisfying f(c), or -1 if none do.
    **/
    static public inline function indexFunc(_s:Array<std.UInt>, _f:StdTypes.Int -> Bool):StdTypes.Int {
        final _s = ([for (i in _s) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _f = _f;
        return stdgo._internal.bytes.Bytes_indexfunc.indexFunc(_s, _f);
    }
    /**
        * LastIndexFunc interprets s as a sequence of UTF-8-encoded code points.
        * It returns the byte index in s of the last Unicode
        * code point satisfying f(c), or -1 if none do.
    **/
    static public inline function lastIndexFunc(_s:Array<std.UInt>, _f:StdTypes.Int -> Bool):StdTypes.Int {
        final _s = ([for (i in _s) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _f = _f;
        return stdgo._internal.bytes.Bytes_lastindexfunc.lastIndexFunc(_s, _f);
    }
    /**
        * Trim returns a subslice of s by slicing off all leading and
        * trailing UTF-8-encoded code points contained in cutset.
    **/
    static public inline function trim(_s:Array<std.UInt>, _cutset:String):Array<std.UInt> {
        final _s = ([for (i in _s) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _cutset = (_cutset : stdgo.GoString);
        return [for (i in stdgo._internal.bytes.Bytes_trim.trim(_s, _cutset)) i];
    }
    /**
        * TrimLeft returns a subslice of s by slicing off all leading
        * UTF-8-encoded code points contained in cutset.
    **/
    static public inline function trimLeft(_s:Array<std.UInt>, _cutset:String):Array<std.UInt> {
        final _s = ([for (i in _s) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _cutset = (_cutset : stdgo.GoString);
        return [for (i in stdgo._internal.bytes.Bytes_trimleft.trimLeft(_s, _cutset)) i];
    }
    /**
        * TrimRight returns a subslice of s by slicing off all trailing
        * UTF-8-encoded code points that are contained in cutset.
    **/
    static public inline function trimRight(_s:Array<std.UInt>, _cutset:String):Array<std.UInt> {
        final _s = ([for (i in _s) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _cutset = (_cutset : stdgo.GoString);
        return [for (i in stdgo._internal.bytes.Bytes_trimright.trimRight(_s, _cutset)) i];
    }
    /**
        * TrimSpace returns a subslice of s by slicing off all leading and
        * trailing white space, as defined by Unicode.
    **/
    static public inline function trimSpace(_s:Array<std.UInt>):Array<std.UInt> {
        final _s = ([for (i in _s) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return [for (i in stdgo._internal.bytes.Bytes_trimspace.trimSpace(_s)) i];
    }
    /**
        * Runes interprets s as a sequence of UTF-8-encoded code points.
        * It returns a slice of runes (Unicode code points) equivalent to s.
    **/
    static public inline function runes(_s:Array<std.UInt>):Array<StdTypes.Int> {
        final _s = ([for (i in _s) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return [for (i in stdgo._internal.bytes.Bytes_runes.runes(_s)) i];
    }
    /**
        * Replace returns a copy of the slice s with the first n
        * non-overlapping instances of old replaced by new.
        * If old is empty, it matches at the beginning of the slice
        * and after each UTF-8 sequence, yielding up to k+1 replacements
        * for a k-rune slice.
        * If n < 0, there is no limit on the number of replacements.
    **/
    static public inline function replace(_s:Array<std.UInt>, _old:Array<std.UInt>, _new_:Array<std.UInt>, _n:StdTypes.Int):Array<std.UInt> {
        final _s = ([for (i in _s) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _old = ([for (i in _old) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _new_ = ([for (i in _new_) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _n = (_n : stdgo.GoInt);
        return [for (i in stdgo._internal.bytes.Bytes_replace.replace(_s, _old, _new_, _n)) i];
    }
    /**
        * ReplaceAll returns a copy of the slice s with all
        * non-overlapping instances of old replaced by new.
        * If old is empty, it matches at the beginning of the slice
        * and after each UTF-8 sequence, yielding up to k+1 replacements
        * for a k-rune slice.
    **/
    static public inline function replaceAll(_s:Array<std.UInt>, _old:Array<std.UInt>, _new_:Array<std.UInt>):Array<std.UInt> {
        final _s = ([for (i in _s) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _old = ([for (i in _old) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _new_ = ([for (i in _new_) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return [for (i in stdgo._internal.bytes.Bytes_replaceall.replaceAll(_s, _old, _new_)) i];
    }
    /**
        * EqualFold reports whether s and t, interpreted as UTF-8 strings,
        * are equal under simple Unicode case-folding, which is a more general
        * form of case-insensitivity.
    **/
    static public inline function equalFold(_s:Array<std.UInt>, _t:Array<std.UInt>):Bool {
        final _s = ([for (i in _s) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _t = ([for (i in _t) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.bytes.Bytes_equalfold.equalFold(_s, _t);
    }
    /**
        * Index returns the index of the first instance of sep in s, or -1 if sep is not present in s.
    **/
    static public inline function index(_s:Array<std.UInt>, _sep:Array<std.UInt>):StdTypes.Int {
        final _s = ([for (i in _s) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _sep = ([for (i in _sep) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.bytes.Bytes_index.index(_s, _sep);
    }
    /**
        * Cut slices s around the first instance of sep,
        * returning the text before and after sep.
        * The found result reports whether sep appears in s.
        * If sep does not appear in s, cut returns s, nil, false.
        * 
        * Cut returns slices of the original slice s, not copies.
    **/
    static public inline function cut(_s:Array<std.UInt>, _sep:Array<std.UInt>):stdgo.Tuple.Tuple3<Array<std.UInt>, Array<std.UInt>, Bool> {
        final _s = ([for (i in _s) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _sep = ([for (i in _sep) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.bytes.Bytes_cut.cut(_s, _sep);
            { _0 : [for (i in obj._0) i], _1 : [for (i in obj._1) i], _2 : obj._2 };
        };
    }
    /**
        * Clone returns a copy of b[:len(b)].
        * The result may have additional unused capacity.
        * Clone(nil) returns nil.
    **/
    static public inline function clone(_b:Array<std.UInt>):Array<std.UInt> {
        final _b = ([for (i in _b) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return [for (i in stdgo._internal.bytes.Bytes_clone.clone(_b)) i];
    }
    /**
        * CutPrefix returns s without the provided leading prefix byte slice
        * and reports whether it found the prefix.
        * If s doesn't start with prefix, CutPrefix returns s, false.
        * If prefix is the empty byte slice, CutPrefix returns s, true.
        * 
        * CutPrefix returns slices of the original slice s, not copies.
    **/
    static public inline function cutPrefix(_s:Array<std.UInt>, _prefix:Array<std.UInt>):stdgo.Tuple<Array<std.UInt>, Bool> {
        final _s = ([for (i in _s) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _prefix = ([for (i in _prefix) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.bytes.Bytes_cutprefix.cutPrefix(_s, _prefix);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    /**
        * CutSuffix returns s without the provided ending suffix byte slice
        * and reports whether it found the suffix.
        * If s doesn't end with suffix, CutSuffix returns s, false.
        * If suffix is the empty byte slice, CutSuffix returns s, true.
        * 
        * CutSuffix returns slices of the original slice s, not copies.
    **/
    static public inline function cutSuffix(_s:Array<std.UInt>, _suffix:Array<std.UInt>):stdgo.Tuple<Array<std.UInt>, Bool> {
        final _s = ([for (i in _s) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _suffix = ([for (i in _suffix) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.bytes.Bytes_cutsuffix.cutSuffix(_s, _suffix);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    /**
        * NewReader returns a new Reader reading from b.
    **/
    static public inline function newReader(_b:Array<std.UInt>):Reader {
        final _b = ([for (i in _b) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.bytes.Bytes_newreader.newReader(_b);
    }
}
