package stdgo.bytes;
final minRead : haxe.UInt64 = stdgo._internal.bytes.Bytes.minRead;
var errTooLarge(get, set) : stdgo.Error;
private function get_errTooLarge():stdgo.Error return stdgo._internal.bytes.Bytes.errTooLarge;
private function set_errTooLarge(v:stdgo.Error):stdgo.Error {
        stdgo._internal.bytes.Bytes.errTooLarge = v;
        return v;
    }
var indexBytePortable(get, set) : (stdgo.Slice<stdgo.GoUInt8>, stdgo.GoUInt8) -> stdgo.GoInt;
private function get_indexBytePortable():(stdgo.Slice<stdgo.GoUInt8>, stdgo.GoUInt8) -> stdgo.GoInt return (_0, _1) -> stdgo._internal.bytes.Bytes.indexBytePortable([for (i in _0) i], _1);
private function set_indexBytePortable(v:(stdgo.Slice<stdgo.GoUInt8>, stdgo.GoUInt8) -> stdgo.GoInt):(stdgo.Slice<stdgo.GoUInt8>, stdgo.GoUInt8) -> stdgo.GoInt {
        stdgo._internal.bytes.Bytes.indexBytePortable = v;
        return v;
    }
@:structInit @:using(stdgo.bytes.Bytes.Buffer_static_extension) abstract Buffer(stdgo._internal.bytes.Bytes.Buffer) from stdgo._internal.bytes.Bytes.Buffer to stdgo._internal.bytes.Bytes.Buffer {
    public var _buf(get, set) : Array<std.UInt>;
    function get__buf():Array<std.UInt> return [for (i in this._buf) i];
    function set__buf(v:Array<std.UInt>):Array<std.UInt> {
        this._buf = ([for (i in v) i] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public var _off(get, set) : StdTypes.Int;
    function get__off():StdTypes.Int return this._off;
    function set__off(v:StdTypes.Int):StdTypes.Int {
        this._off = v;
        return v;
    }
    public var _lastRead(get, set) : stdgo._internal.bytes.Bytes.T_readOp;
    function get__lastRead():stdgo._internal.bytes.Bytes.T_readOp return this._lastRead;
    function set__lastRead(v:stdgo._internal.bytes.Bytes.T_readOp):stdgo._internal.bytes.Bytes.T_readOp {
        this._lastRead = v;
        return v;
    }
    public function new(?_buf:Array<std.UInt>, ?_off:StdTypes.Int, ?_lastRead:stdgo._internal.bytes.Bytes.T_readOp) this = new stdgo._internal.bytes.Bytes.Buffer(([for (i in _buf) i] : stdgo.Slice<stdgo.GoUInt8>), _off, _lastRead);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.bytes.Bytes.Reader_static_extension) abstract Reader(stdgo._internal.bytes.Bytes.Reader) from stdgo._internal.bytes.Bytes.Reader to stdgo._internal.bytes.Bytes.Reader {
    public var _s(get, set) : Array<std.UInt>;
    function get__s():Array<std.UInt> return [for (i in this._s) i];
    function set__s(v:Array<std.UInt>):Array<std.UInt> {
        this._s = ([for (i in v) i] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public var _i(get, set) : haxe.Int64;
    function get__i():haxe.Int64 return this._i;
    function set__i(v:haxe.Int64):haxe.Int64 {
        this._i = v;
        return v;
    }
    public var _prevRune(get, set) : StdTypes.Int;
    function get__prevRune():StdTypes.Int return this._prevRune;
    function set__prevRune(v:StdTypes.Int):StdTypes.Int {
        this._prevRune = v;
        return v;
    }
    public function new(?_s:Array<std.UInt>, ?_i:haxe.Int64, ?_prevRune:StdTypes.Int) this = new stdgo._internal.bytes.Bytes.Reader(([for (i in _s) i] : stdgo.Slice<stdgo.GoUInt8>), _i, _prevRune);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
typedef T_readOp = stdgo._internal.bytes.Bytes.T_readOp;
typedef T_asciiSet = stdgo._internal.bytes.Bytes.T_asciiSet;
@:structInit abstract T_fieldsFunc___localname___span_11914(stdgo._internal.bytes.Bytes.T_fieldsFunc___localname___span_11914) from stdgo._internal.bytes.Bytes.T_fieldsFunc___localname___span_11914 to stdgo._internal.bytes.Bytes.T_fieldsFunc___localname___span_11914 {
    public var _start(get, set) : StdTypes.Int;
    function get__start():StdTypes.Int return this._start;
    function set__start(v:StdTypes.Int):StdTypes.Int {
        this._start = v;
        return v;
    }
    public var _end(get, set) : StdTypes.Int;
    function get__end():StdTypes.Int return this._end;
    function set__end(v:StdTypes.Int):StdTypes.Int {
        this._end = v;
        return v;
    }
    public function new(?_start:StdTypes.Int, ?_end:StdTypes.Int) this = new stdgo._internal.bytes.Bytes.T_fieldsFunc___localname___span_11914(_start, _end);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
class Buffer_static_extension {
    static public function readString(_b:Buffer, _delim:StdTypes.Int):stdgo.Tuple<String, stdgo.Error> {
        return {
            final obj = stdgo._internal.bytes.Bytes.Buffer_static_extension.readString(_b, _delim);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _readSlice(_b:Buffer, _delim:StdTypes.Int):stdgo.Tuple<Array<StdTypes.Int>, stdgo.Error> {
        return {
            final obj = stdgo._internal.bytes.Bytes.Buffer_static_extension._readSlice(_b, _delim);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    static public function readBytes(_b:Buffer, _delim:StdTypes.Int):stdgo.Tuple<Array<StdTypes.Int>, stdgo.Error> {
        return {
            final obj = stdgo._internal.bytes.Bytes.Buffer_static_extension.readBytes(_b, _delim);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    static public function unreadByte(_b:Buffer):stdgo.Error {
        return stdgo._internal.bytes.Bytes.Buffer_static_extension.unreadByte(_b);
    }
    static public function unreadRune(_b:Buffer):stdgo.Error {
        return stdgo._internal.bytes.Bytes.Buffer_static_extension.unreadRune(_b);
    }
    static public function readRune(_b:Buffer):stdgo.Tuple.Tuple3<StdTypes.Int, StdTypes.Int, stdgo.Error> {
        return {
            final obj = stdgo._internal.bytes.Bytes.Buffer_static_extension.readRune(_b);
            { _0 : obj._0, _1 : obj._1, _2 : obj._2 };
        };
    }
    static public function readByte(_b:Buffer):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        return {
            final obj = stdgo._internal.bytes.Bytes.Buffer_static_extension.readByte(_b);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function next(_b:Buffer, _n:StdTypes.Int):Array<StdTypes.Int> {
        return [for (i in stdgo._internal.bytes.Bytes.Buffer_static_extension.next(_b, _n)) i];
    }
    static public function read(_b:Buffer, _p:Array<StdTypes.Int>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _p = ([for (i in _p) i] : stdgo.Slice<stdgo.GoByte>);
        return {
            final obj = stdgo._internal.bytes.Bytes.Buffer_static_extension.read(_b, _p);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function writeRune(_b:Buffer, _r:StdTypes.Int):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        return {
            final obj = stdgo._internal.bytes.Bytes.Buffer_static_extension.writeRune(_b, _r);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function writeByte(_b:Buffer, _c:StdTypes.Int):stdgo.Error {
        return stdgo._internal.bytes.Bytes.Buffer_static_extension.writeByte(_b, _c);
    }
    static public function writeTo(_b:Buffer, _w:stdgo._internal.io.Io.Writer):stdgo.Tuple<haxe.Int64, stdgo.Error> {
        return {
            final obj = stdgo._internal.bytes.Bytes.Buffer_static_extension.writeTo(_b, _w);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function readFrom(_b:Buffer, _r:stdgo._internal.io.Io.Reader):stdgo.Tuple<haxe.Int64, stdgo.Error> {
        return {
            final obj = stdgo._internal.bytes.Bytes.Buffer_static_extension.readFrom(_b, _r);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function writeString(_b:Buffer, _s:String):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        return {
            final obj = stdgo._internal.bytes.Bytes.Buffer_static_extension.writeString(_b, _s);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function write(_b:Buffer, _p:Array<StdTypes.Int>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _p = ([for (i in _p) i] : stdgo.Slice<stdgo.GoByte>);
        return {
            final obj = stdgo._internal.bytes.Bytes.Buffer_static_extension.write(_b, _p);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function grow(_b:Buffer, _n:StdTypes.Int):Void {
        stdgo._internal.bytes.Bytes.Buffer_static_extension.grow(_b, _n);
    }
    static public function _grow(_b:Buffer, _n:StdTypes.Int):StdTypes.Int {
        return stdgo._internal.bytes.Bytes.Buffer_static_extension._grow(_b, _n);
    }
    static public function _tryGrowByReslice(_b:Buffer, _n:StdTypes.Int):stdgo.Tuple<StdTypes.Int, Bool> {
        return {
            final obj = stdgo._internal.bytes.Bytes.Buffer_static_extension._tryGrowByReslice(_b, _n);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function reset(_b:Buffer):Void {
        stdgo._internal.bytes.Bytes.Buffer_static_extension.reset(_b);
    }
    static public function truncate(_b:Buffer, _n:StdTypes.Int):Void {
        stdgo._internal.bytes.Bytes.Buffer_static_extension.truncate(_b, _n);
    }
    static public function available(_b:Buffer):StdTypes.Int {
        return stdgo._internal.bytes.Bytes.Buffer_static_extension.available(_b);
    }
    static public function cap(_b:Buffer):StdTypes.Int {
        return stdgo._internal.bytes.Bytes.Buffer_static_extension.cap(_b);
    }
    static public function len(_b:Buffer):StdTypes.Int {
        return stdgo._internal.bytes.Bytes.Buffer_static_extension.len(_b);
    }
    static public function _empty(_b:Buffer):Bool {
        return stdgo._internal.bytes.Bytes.Buffer_static_extension._empty(_b);
    }
    static public function string(_b:Buffer):String {
        return stdgo._internal.bytes.Bytes.Buffer_static_extension.string(_b);
    }
    static public function availableBuffer(_b:Buffer):Array<StdTypes.Int> {
        return [for (i in stdgo._internal.bytes.Bytes.Buffer_static_extension.availableBuffer(_b)) i];
    }
    static public function bytes(_b:Buffer):Array<StdTypes.Int> {
        return [for (i in stdgo._internal.bytes.Bytes.Buffer_static_extension.bytes(_b)) i];
    }
}
class Reader_static_extension {
    static public function reset(_r:Reader, _b:Array<StdTypes.Int>):Void {
        final _b = ([for (i in _b) i] : stdgo.Slice<stdgo.GoByte>);
        stdgo._internal.bytes.Bytes.Reader_static_extension.reset(_r, _b);
    }
    static public function writeTo(_r:Reader, _w:stdgo._internal.io.Io.Writer):stdgo.Tuple<haxe.Int64, stdgo.Error> {
        return {
            final obj = stdgo._internal.bytes.Bytes.Reader_static_extension.writeTo(_r, _w);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function seek(_r:Reader, _offset:haxe.Int64, _whence:StdTypes.Int):stdgo.Tuple<haxe.Int64, stdgo.Error> {
        return {
            final obj = stdgo._internal.bytes.Bytes.Reader_static_extension.seek(_r, _offset, _whence);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function unreadRune(_r:Reader):stdgo.Error {
        return stdgo._internal.bytes.Bytes.Reader_static_extension.unreadRune(_r);
    }
    static public function readRune(_r:Reader):stdgo.Tuple.Tuple3<StdTypes.Int, StdTypes.Int, stdgo.Error> {
        return {
            final obj = stdgo._internal.bytes.Bytes.Reader_static_extension.readRune(_r);
            { _0 : obj._0, _1 : obj._1, _2 : obj._2 };
        };
    }
    static public function unreadByte(_r:Reader):stdgo.Error {
        return stdgo._internal.bytes.Bytes.Reader_static_extension.unreadByte(_r);
    }
    static public function readByte(_r:Reader):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        return {
            final obj = stdgo._internal.bytes.Bytes.Reader_static_extension.readByte(_r);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function readAt(_r:Reader, _b:Array<StdTypes.Int>, _off:haxe.Int64):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _b = ([for (i in _b) i] : stdgo.Slice<stdgo.GoByte>);
        return {
            final obj = stdgo._internal.bytes.Bytes.Reader_static_extension.readAt(_r, _b, _off);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function read(_r:Reader, _b:Array<StdTypes.Int>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _b = ([for (i in _b) i] : stdgo.Slice<stdgo.GoByte>);
        return {
            final obj = stdgo._internal.bytes.Bytes.Reader_static_extension.read(_r, _b);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function size(_r:Reader):haxe.Int64 {
        return stdgo._internal.bytes.Bytes.Reader_static_extension.size(_r);
    }
    static public function len(_r:Reader):StdTypes.Int {
        return stdgo._internal.bytes.Bytes.Reader_static_extension.len(_r);
    }
}
class T_asciiSet_static_extension {
    static public function _contains(_as:T_asciiSet, _c:StdTypes.Int):Bool {
        return stdgo._internal.bytes.Bytes.T_asciiSet_static_extension._contains(_as, _c);
    }
}
/**
    Package bytes implements functions for the manipulation of byte slices.
    It is analogous to the facilities of the [strings] package.
**/
class Bytes {
    /**
        NewBuffer creates and initializes a new Buffer using buf as its
        initial contents. The new Buffer takes ownership of buf, and the
        caller should not use buf after this call. NewBuffer is intended to
        prepare a Buffer to read existing data. It can also be used to set
        the initial size of the internal buffer for writing. To do that,
        buf should have the desired capacity but a length of zero.
        
        In most cases, new(Buffer) (or just declaring a Buffer variable) is
        sufficient to initialize a Buffer.
    **/
    static public function newBuffer(_buf:Array<StdTypes.Int>):Buffer {
        final _buf = ([for (i in _buf) i] : stdgo.Slice<stdgo.GoByte>);
        return stdgo._internal.bytes.Bytes.newBuffer(_buf);
    }
    /**
        NewBufferString creates and initializes a new Buffer using string s as its
        initial contents. It is intended to prepare a buffer to read an existing
        string.
        
        In most cases, new(Buffer) (or just declaring a Buffer variable) is
        sufficient to initialize a Buffer.
    **/
    static public function newBufferString(_s:String):Buffer {
        return stdgo._internal.bytes.Bytes.newBufferString(_s);
    }
    /**
        Equal reports whether a and b
        are the same length and contain the same bytes.
        A nil argument is equivalent to an empty slice.
    **/
    static public function equal(_a:Array<StdTypes.Int>, _b:Array<StdTypes.Int>):Bool {
        final _a = ([for (i in _a) i] : stdgo.Slice<stdgo.GoByte>);
        final _b = ([for (i in _b) i] : stdgo.Slice<stdgo.GoByte>);
        return stdgo._internal.bytes.Bytes.equal(_a, _b);
    }
    /**
        Compare returns an integer comparing two byte slices lexicographically.
        The result will be 0 if a == b, -1 if a < b, and +1 if a > b.
        A nil argument is equivalent to an empty slice.
    **/
    static public function compare(_a:Array<StdTypes.Int>, _b:Array<StdTypes.Int>):StdTypes.Int {
        final _a = ([for (i in _a) i] : stdgo.Slice<stdgo.GoByte>);
        final _b = ([for (i in _b) i] : stdgo.Slice<stdgo.GoByte>);
        return stdgo._internal.bytes.Bytes.compare(_a, _b);
    }
    /**
        Count counts the number of non-overlapping instances of sep in s.
        If sep is an empty slice, Count returns 1 + the number of UTF-8-encoded code points in s.
    **/
    static public function count(_s:Array<StdTypes.Int>, _sep:Array<StdTypes.Int>):StdTypes.Int {
        final _s = ([for (i in _s) i] : stdgo.Slice<stdgo.GoByte>);
        final _sep = ([for (i in _sep) i] : stdgo.Slice<stdgo.GoByte>);
        return stdgo._internal.bytes.Bytes.count(_s, _sep);
    }
    /**
        Contains reports whether subslice is within b.
    **/
    static public function contains(_b:Array<StdTypes.Int>, _subslice:Array<StdTypes.Int>):Bool {
        final _b = ([for (i in _b) i] : stdgo.Slice<stdgo.GoByte>);
        final _subslice = ([for (i in _subslice) i] : stdgo.Slice<stdgo.GoByte>);
        return stdgo._internal.bytes.Bytes.contains(_b, _subslice);
    }
    /**
        ContainsAny reports whether any of the UTF-8-encoded code points in chars are within b.
    **/
    static public function containsAny(_b:Array<StdTypes.Int>, _chars:String):Bool {
        final _b = ([for (i in _b) i] : stdgo.Slice<stdgo.GoByte>);
        return stdgo._internal.bytes.Bytes.containsAny(_b, _chars);
    }
    /**
        ContainsRune reports whether the rune is contained in the UTF-8-encoded byte slice b.
    **/
    static public function containsRune(_b:Array<StdTypes.Int>, _r:StdTypes.Int):Bool {
        final _b = ([for (i in _b) i] : stdgo.Slice<stdgo.GoByte>);
        return stdgo._internal.bytes.Bytes.containsRune(_b, _r);
    }
    /**
        ContainsFunc reports whether any of the UTF-8-encoded code points r within b satisfy f(r).
    **/
    static public function containsFunc(_b:Array<StdTypes.Int>, _f:stdgo.GoRune -> Bool):Bool {
        final _b = ([for (i in _b) i] : stdgo.Slice<stdgo.GoByte>);
        final _f = _f;
        return stdgo._internal.bytes.Bytes.containsFunc(_b, _f);
    }
    /**
        IndexByte returns the index of the first instance of c in b, or -1 if c is not present in b.
    **/
    static public function indexByte(_b:Array<StdTypes.Int>, _c:StdTypes.Int):StdTypes.Int {
        final _b = ([for (i in _b) i] : stdgo.Slice<stdgo.GoByte>);
        return stdgo._internal.bytes.Bytes.indexByte(_b, _c);
    }
    /**
        LastIndex returns the index of the last instance of sep in s, or -1 if sep is not present in s.
    **/
    static public function lastIndex(_s:Array<StdTypes.Int>, _sep:Array<StdTypes.Int>):StdTypes.Int {
        final _s = ([for (i in _s) i] : stdgo.Slice<stdgo.GoByte>);
        final _sep = ([for (i in _sep) i] : stdgo.Slice<stdgo.GoByte>);
        return stdgo._internal.bytes.Bytes.lastIndex(_s, _sep);
    }
    /**
        LastIndexByte returns the index of the last instance of c in s, or -1 if c is not present in s.
    **/
    static public function lastIndexByte(_s:Array<StdTypes.Int>, _c:StdTypes.Int):StdTypes.Int {
        final _s = ([for (i in _s) i] : stdgo.Slice<stdgo.GoByte>);
        return stdgo._internal.bytes.Bytes.lastIndexByte(_s, _c);
    }
    /**
        IndexRune interprets s as a sequence of UTF-8-encoded code points.
        It returns the byte index of the first occurrence in s of the given rune.
        It returns -1 if rune is not present in s.
        If r is utf8.RuneError, it returns the first instance of any
        invalid UTF-8 byte sequence.
    **/
    static public function indexRune(_s:Array<StdTypes.Int>, _r:StdTypes.Int):StdTypes.Int {
        final _s = ([for (i in _s) i] : stdgo.Slice<stdgo.GoByte>);
        return stdgo._internal.bytes.Bytes.indexRune(_s, _r);
    }
    /**
        IndexAny interprets s as a sequence of UTF-8-encoded Unicode code points.
        It returns the byte index of the first occurrence in s of any of the Unicode
        code points in chars. It returns -1 if chars is empty or if there is no code
        point in common.
    **/
    static public function indexAny(_s:Array<StdTypes.Int>, _chars:String):StdTypes.Int {
        final _s = ([for (i in _s) i] : stdgo.Slice<stdgo.GoByte>);
        return stdgo._internal.bytes.Bytes.indexAny(_s, _chars);
    }
    /**
        LastIndexAny interprets s as a sequence of UTF-8-encoded Unicode code
        points. It returns the byte index of the last occurrence in s of any of
        the Unicode code points in chars. It returns -1 if chars is empty or if
        there is no code point in common.
    **/
    static public function lastIndexAny(_s:Array<StdTypes.Int>, _chars:String):StdTypes.Int {
        final _s = ([for (i in _s) i] : stdgo.Slice<stdgo.GoByte>);
        return stdgo._internal.bytes.Bytes.lastIndexAny(_s, _chars);
    }
    /**
        SplitN slices s into subslices separated by sep and returns a slice of
        the subslices between those separators.
        If sep is empty, SplitN splits after each UTF-8 sequence.
        The count determines the number of subslices to return:
        
        	n > 0: at most n subslices; the last subslice will be the unsplit remainder.
        	n == 0: the result is nil (zero subslices)
        	n < 0: all subslices
        
        To split around the first instance of a separator, see Cut.
    **/
    static public function splitN(_s:Array<StdTypes.Int>, _sep:Array<StdTypes.Int>, _n:StdTypes.Int):Array<Array<StdTypes.Int>> {
        final _s = ([for (i in _s) i] : stdgo.Slice<stdgo.GoByte>);
        final _sep = ([for (i in _sep) i] : stdgo.Slice<stdgo.GoByte>);
        return [for (i in stdgo._internal.bytes.Bytes.splitN(_s, _sep, _n)) [for (i in i) i]];
    }
    /**
        SplitAfterN slices s into subslices after each instance of sep and
        returns a slice of those subslices.
        If sep is empty, SplitAfterN splits after each UTF-8 sequence.
        The count determines the number of subslices to return:
        
        	n > 0: at most n subslices; the last subslice will be the unsplit remainder.
        	n == 0: the result is nil (zero subslices)
        	n < 0: all subslices
    **/
    static public function splitAfterN(_s:Array<StdTypes.Int>, _sep:Array<StdTypes.Int>, _n:StdTypes.Int):Array<Array<StdTypes.Int>> {
        final _s = ([for (i in _s) i] : stdgo.Slice<stdgo.GoByte>);
        final _sep = ([for (i in _sep) i] : stdgo.Slice<stdgo.GoByte>);
        return [for (i in stdgo._internal.bytes.Bytes.splitAfterN(_s, _sep, _n)) [for (i in i) i]];
    }
    /**
        Split slices s into all subslices separated by sep and returns a slice of
        the subslices between those separators.
        If sep is empty, Split splits after each UTF-8 sequence.
        It is equivalent to SplitN with a count of -1.
        
        To split around the first instance of a separator, see Cut.
    **/
    static public function split(_s:Array<StdTypes.Int>, _sep:Array<StdTypes.Int>):Array<Array<StdTypes.Int>> {
        final _s = ([for (i in _s) i] : stdgo.Slice<stdgo.GoByte>);
        final _sep = ([for (i in _sep) i] : stdgo.Slice<stdgo.GoByte>);
        return [for (i in stdgo._internal.bytes.Bytes.split(_s, _sep)) [for (i in i) i]];
    }
    /**
        SplitAfter slices s into all subslices after each instance of sep and
        returns a slice of those subslices.
        If sep is empty, SplitAfter splits after each UTF-8 sequence.
        It is equivalent to SplitAfterN with a count of -1.
    **/
    static public function splitAfter(_s:Array<StdTypes.Int>, _sep:Array<StdTypes.Int>):Array<Array<StdTypes.Int>> {
        final _s = ([for (i in _s) i] : stdgo.Slice<stdgo.GoByte>);
        final _sep = ([for (i in _sep) i] : stdgo.Slice<stdgo.GoByte>);
        return [for (i in stdgo._internal.bytes.Bytes.splitAfter(_s, _sep)) [for (i in i) i]];
    }
    /**
        Fields interprets s as a sequence of UTF-8-encoded code points.
        It splits the slice s around each instance of one or more consecutive white space
        characters, as defined by unicode.IsSpace, returning a slice of subslices of s or an
        empty slice if s contains only white space.
    **/
    static public function fields(_s:Array<StdTypes.Int>):Array<Array<StdTypes.Int>> {
        final _s = ([for (i in _s) i] : stdgo.Slice<stdgo.GoByte>);
        return [for (i in stdgo._internal.bytes.Bytes.fields(_s)) [for (i in i) i]];
    }
    /**
        FieldsFunc interprets s as a sequence of UTF-8-encoded code points.
        It splits the slice s at each run of code points c satisfying f(c) and
        returns a slice of subslices of s. If all code points in s satisfy f(c), or
        len(s) == 0, an empty slice is returned.
        
        FieldsFunc makes no guarantees about the order in which it calls f(c)
        and assumes that f always returns the same value for a given c.
    **/
    static public function fieldsFunc(_s:Array<StdTypes.Int>, _f:stdgo.GoRune -> Bool):Array<Array<StdTypes.Int>> {
        final _s = ([for (i in _s) i] : stdgo.Slice<stdgo.GoByte>);
        final _f = _f;
        return [for (i in stdgo._internal.bytes.Bytes.fieldsFunc(_s, _f)) [for (i in i) i]];
    }
    /**
        Join concatenates the elements of s to create a new byte slice. The separator
        sep is placed between elements in the resulting slice.
    **/
    static public function join(_s:Array<Array<StdTypes.Int>>, _sep:Array<StdTypes.Int>):Array<StdTypes.Int> {
        final _s = ([for (i in _s) ([for (i in i) i] : stdgo.Slice<stdgo.GoByte>)] : stdgo.Slice<stdgo.Slice<stdgo.GoByte>>);
        final _sep = ([for (i in _sep) i] : stdgo.Slice<stdgo.GoByte>);
        return [for (i in stdgo._internal.bytes.Bytes.join(_s, _sep)) i];
    }
    /**
        HasPrefix tests whether the byte slice s begins with prefix.
    **/
    static public function hasPrefix(_s:Array<StdTypes.Int>, _prefix:Array<StdTypes.Int>):Bool {
        final _s = ([for (i in _s) i] : stdgo.Slice<stdgo.GoByte>);
        final _prefix = ([for (i in _prefix) i] : stdgo.Slice<stdgo.GoByte>);
        return stdgo._internal.bytes.Bytes.hasPrefix(_s, _prefix);
    }
    /**
        HasSuffix tests whether the byte slice s ends with suffix.
    **/
    static public function hasSuffix(_s:Array<StdTypes.Int>, _suffix:Array<StdTypes.Int>):Bool {
        final _s = ([for (i in _s) i] : stdgo.Slice<stdgo.GoByte>);
        final _suffix = ([for (i in _suffix) i] : stdgo.Slice<stdgo.GoByte>);
        return stdgo._internal.bytes.Bytes.hasSuffix(_s, _suffix);
    }
    /**
        Map returns a copy of the byte slice s with all its characters modified
        according to the mapping function. If mapping returns a negative value, the character is
        dropped from the byte slice with no replacement. The characters in s and the
        output are interpreted as UTF-8-encoded code points.
    **/
    static public function map_(_mapping:(_r:stdgo.GoRune) -> stdgo.GoRune, _s:Array<StdTypes.Int>):Array<StdTypes.Int> {
        final _mapping = _mapping;
        final _s = ([for (i in _s) i] : stdgo.Slice<stdgo.GoByte>);
        return [for (i in stdgo._internal.bytes.Bytes.map_(_mapping, _s)) i];
    }
    /**
        Repeat returns a new byte slice consisting of count copies of b.
        
        It panics if count is negative or if the result of (len(b) * count)
        overflows.
    **/
    static public function repeat(_b:Array<StdTypes.Int>, _count:StdTypes.Int):Array<StdTypes.Int> {
        final _b = ([for (i in _b) i] : stdgo.Slice<stdgo.GoByte>);
        return [for (i in stdgo._internal.bytes.Bytes.repeat(_b, _count)) i];
    }
    /**
        ToUpper returns a copy of the byte slice s with all Unicode letters mapped to
        their upper case.
    **/
    static public function toUpper(_s:Array<StdTypes.Int>):Array<StdTypes.Int> {
        final _s = ([for (i in _s) i] : stdgo.Slice<stdgo.GoByte>);
        return [for (i in stdgo._internal.bytes.Bytes.toUpper(_s)) i];
    }
    /**
        ToLower returns a copy of the byte slice s with all Unicode letters mapped to
        their lower case.
    **/
    static public function toLower(_s:Array<StdTypes.Int>):Array<StdTypes.Int> {
        final _s = ([for (i in _s) i] : stdgo.Slice<stdgo.GoByte>);
        return [for (i in stdgo._internal.bytes.Bytes.toLower(_s)) i];
    }
    /**
        ToTitle treats s as UTF-8-encoded bytes and returns a copy with all the Unicode letters mapped to their title case.
    **/
    static public function toTitle(_s:Array<StdTypes.Int>):Array<StdTypes.Int> {
        final _s = ([for (i in _s) i] : stdgo.Slice<stdgo.GoByte>);
        return [for (i in stdgo._internal.bytes.Bytes.toTitle(_s)) i];
    }
    /**
        ToUpperSpecial treats s as UTF-8-encoded bytes and returns a copy with all the Unicode letters mapped to their
        upper case, giving priority to the special casing rules.
    **/
    static public function toUpperSpecial(_c:stdgo._internal.unicode.Unicode.SpecialCase, _s:Array<StdTypes.Int>):Array<StdTypes.Int> {
        final _s = ([for (i in _s) i] : stdgo.Slice<stdgo.GoByte>);
        return [for (i in stdgo._internal.bytes.Bytes.toUpperSpecial(_c, _s)) i];
    }
    /**
        ToLowerSpecial treats s as UTF-8-encoded bytes and returns a copy with all the Unicode letters mapped to their
        lower case, giving priority to the special casing rules.
    **/
    static public function toLowerSpecial(_c:stdgo._internal.unicode.Unicode.SpecialCase, _s:Array<StdTypes.Int>):Array<StdTypes.Int> {
        final _s = ([for (i in _s) i] : stdgo.Slice<stdgo.GoByte>);
        return [for (i in stdgo._internal.bytes.Bytes.toLowerSpecial(_c, _s)) i];
    }
    /**
        ToTitleSpecial treats s as UTF-8-encoded bytes and returns a copy with all the Unicode letters mapped to their
        title case, giving priority to the special casing rules.
    **/
    static public function toTitleSpecial(_c:stdgo._internal.unicode.Unicode.SpecialCase, _s:Array<StdTypes.Int>):Array<StdTypes.Int> {
        final _s = ([for (i in _s) i] : stdgo.Slice<stdgo.GoByte>);
        return [for (i in stdgo._internal.bytes.Bytes.toTitleSpecial(_c, _s)) i];
    }
    /**
        ToValidUTF8 treats s as UTF-8-encoded bytes and returns a copy with each run of bytes
        representing invalid UTF-8 replaced with the bytes in replacement, which may be empty.
    **/
    static public function toValidUTF8(_s:Array<StdTypes.Int>, _replacement:Array<StdTypes.Int>):Array<StdTypes.Int> {
        final _s = ([for (i in _s) i] : stdgo.Slice<stdgo.GoByte>);
        final _replacement = ([for (i in _replacement) i] : stdgo.Slice<stdgo.GoByte>);
        return [for (i in stdgo._internal.bytes.Bytes.toValidUTF8(_s, _replacement)) i];
    }
    /**
        Title treats s as UTF-8-encoded bytes and returns a copy with all Unicode letters that begin
        words mapped to their title case.
        
        Deprecated: The rule Title uses for word boundaries does not handle Unicode
        punctuation properly. Use golang.org/x/text/cases instead.
    **/
    static public function title(_s:Array<StdTypes.Int>):Array<StdTypes.Int> {
        final _s = ([for (i in _s) i] : stdgo.Slice<stdgo.GoByte>);
        return [for (i in stdgo._internal.bytes.Bytes.title(_s)) i];
    }
    /**
        TrimLeftFunc treats s as UTF-8-encoded bytes and returns a subslice of s by slicing off
        all leading UTF-8-encoded code points c that satisfy f(c).
    **/
    static public function trimLeftFunc(_s:Array<StdTypes.Int>, _f:(_r:stdgo.GoRune) -> Bool):Array<StdTypes.Int> {
        final _s = ([for (i in _s) i] : stdgo.Slice<stdgo.GoByte>);
        final _f = _f;
        return [for (i in stdgo._internal.bytes.Bytes.trimLeftFunc(_s, _f)) i];
    }
    /**
        TrimRightFunc returns a subslice of s by slicing off all trailing
        UTF-8-encoded code points c that satisfy f(c).
    **/
    static public function trimRightFunc(_s:Array<StdTypes.Int>, _f:(_r:stdgo.GoRune) -> Bool):Array<StdTypes.Int> {
        final _s = ([for (i in _s) i] : stdgo.Slice<stdgo.GoByte>);
        final _f = _f;
        return [for (i in stdgo._internal.bytes.Bytes.trimRightFunc(_s, _f)) i];
    }
    /**
        TrimFunc returns a subslice of s by slicing off all leading and trailing
        UTF-8-encoded code points c that satisfy f(c).
    **/
    static public function trimFunc(_s:Array<StdTypes.Int>, _f:(_r:stdgo.GoRune) -> Bool):Array<StdTypes.Int> {
        final _s = ([for (i in _s) i] : stdgo.Slice<stdgo.GoByte>);
        final _f = _f;
        return [for (i in stdgo._internal.bytes.Bytes.trimFunc(_s, _f)) i];
    }
    /**
        TrimPrefix returns s without the provided leading prefix string.
        If s doesn't start with prefix, s is returned unchanged.
    **/
    static public function trimPrefix(_s:Array<StdTypes.Int>, _prefix:Array<StdTypes.Int>):Array<StdTypes.Int> {
        final _s = ([for (i in _s) i] : stdgo.Slice<stdgo.GoByte>);
        final _prefix = ([for (i in _prefix) i] : stdgo.Slice<stdgo.GoByte>);
        return [for (i in stdgo._internal.bytes.Bytes.trimPrefix(_s, _prefix)) i];
    }
    /**
        TrimSuffix returns s without the provided trailing suffix string.
        If s doesn't end with suffix, s is returned unchanged.
    **/
    static public function trimSuffix(_s:Array<StdTypes.Int>, _suffix:Array<StdTypes.Int>):Array<StdTypes.Int> {
        final _s = ([for (i in _s) i] : stdgo.Slice<stdgo.GoByte>);
        final _suffix = ([for (i in _suffix) i] : stdgo.Slice<stdgo.GoByte>);
        return [for (i in stdgo._internal.bytes.Bytes.trimSuffix(_s, _suffix)) i];
    }
    /**
        IndexFunc interprets s as a sequence of UTF-8-encoded code points.
        It returns the byte index in s of the first Unicode
        code point satisfying f(c), or -1 if none do.
    **/
    static public function indexFunc(_s:Array<StdTypes.Int>, _f:(_r:stdgo.GoRune) -> Bool):StdTypes.Int {
        final _s = ([for (i in _s) i] : stdgo.Slice<stdgo.GoByte>);
        final _f = _f;
        return stdgo._internal.bytes.Bytes.indexFunc(_s, _f);
    }
    /**
        LastIndexFunc interprets s as a sequence of UTF-8-encoded code points.
        It returns the byte index in s of the last Unicode
        code point satisfying f(c), or -1 if none do.
    **/
    static public function lastIndexFunc(_s:Array<StdTypes.Int>, _f:(_r:stdgo.GoRune) -> Bool):StdTypes.Int {
        final _s = ([for (i in _s) i] : stdgo.Slice<stdgo.GoByte>);
        final _f = _f;
        return stdgo._internal.bytes.Bytes.lastIndexFunc(_s, _f);
    }
    /**
        Trim returns a subslice of s by slicing off all leading and
        trailing UTF-8-encoded code points contained in cutset.
    **/
    static public function trim(_s:Array<StdTypes.Int>, _cutset:String):Array<StdTypes.Int> {
        final _s = ([for (i in _s) i] : stdgo.Slice<stdgo.GoByte>);
        return [for (i in stdgo._internal.bytes.Bytes.trim(_s, _cutset)) i];
    }
    /**
        TrimLeft returns a subslice of s by slicing off all leading
        UTF-8-encoded code points contained in cutset.
    **/
    static public function trimLeft(_s:Array<StdTypes.Int>, _cutset:String):Array<StdTypes.Int> {
        final _s = ([for (i in _s) i] : stdgo.Slice<stdgo.GoByte>);
        return [for (i in stdgo._internal.bytes.Bytes.trimLeft(_s, _cutset)) i];
    }
    /**
        TrimRight returns a subslice of s by slicing off all trailing
        UTF-8-encoded code points that are contained in cutset.
    **/
    static public function trimRight(_s:Array<StdTypes.Int>, _cutset:String):Array<StdTypes.Int> {
        final _s = ([for (i in _s) i] : stdgo.Slice<stdgo.GoByte>);
        return [for (i in stdgo._internal.bytes.Bytes.trimRight(_s, _cutset)) i];
    }
    /**
        TrimSpace returns a subslice of s by slicing off all leading and
        trailing white space, as defined by Unicode.
    **/
    static public function trimSpace(_s:Array<StdTypes.Int>):Array<StdTypes.Int> {
        final _s = ([for (i in _s) i] : stdgo.Slice<stdgo.GoByte>);
        return [for (i in stdgo._internal.bytes.Bytes.trimSpace(_s)) i];
    }
    /**
        Runes interprets s as a sequence of UTF-8-encoded code points.
        It returns a slice of runes (Unicode code points) equivalent to s.
    **/
    static public function runes(_s:Array<StdTypes.Int>):Array<StdTypes.Int> {
        final _s = ([for (i in _s) i] : stdgo.Slice<stdgo.GoByte>);
        return [for (i in stdgo._internal.bytes.Bytes.runes(_s)) i];
    }
    /**
        Replace returns a copy of the slice s with the first n
        non-overlapping instances of old replaced by new.
        If old is empty, it matches at the beginning of the slice
        and after each UTF-8 sequence, yielding up to k+1 replacements
        for a k-rune slice.
        If n < 0, there is no limit on the number of replacements.
    **/
    static public function replace(_s:Array<StdTypes.Int>, _old:Array<StdTypes.Int>, _new:Array<StdTypes.Int>, _n:StdTypes.Int):Array<StdTypes.Int> {
        final _s = ([for (i in _s) i] : stdgo.Slice<stdgo.GoByte>);
        final _old = ([for (i in _old) i] : stdgo.Slice<stdgo.GoByte>);
        final _new = ([for (i in _new) i] : stdgo.Slice<stdgo.GoByte>);
        return [for (i in stdgo._internal.bytes.Bytes.replace(_s, _old, _new, _n)) i];
    }
    /**
        ReplaceAll returns a copy of the slice s with all
        non-overlapping instances of old replaced by new.
        If old is empty, it matches at the beginning of the slice
        and after each UTF-8 sequence, yielding up to k+1 replacements
        for a k-rune slice.
    **/
    static public function replaceAll(_s:Array<StdTypes.Int>, _old:Array<StdTypes.Int>, _new:Array<StdTypes.Int>):Array<StdTypes.Int> {
        final _s = ([for (i in _s) i] : stdgo.Slice<stdgo.GoByte>);
        final _old = ([for (i in _old) i] : stdgo.Slice<stdgo.GoByte>);
        final _new = ([for (i in _new) i] : stdgo.Slice<stdgo.GoByte>);
        return [for (i in stdgo._internal.bytes.Bytes.replaceAll(_s, _old, _new)) i];
    }
    /**
        EqualFold reports whether s and t, interpreted as UTF-8 strings,
        are equal under simple Unicode case-folding, which is a more general
        form of case-insensitivity.
    **/
    static public function equalFold(_s:Array<StdTypes.Int>, _t:Array<StdTypes.Int>):Bool {
        final _s = ([for (i in _s) i] : stdgo.Slice<stdgo.GoByte>);
        final _t = ([for (i in _t) i] : stdgo.Slice<stdgo.GoByte>);
        return stdgo._internal.bytes.Bytes.equalFold(_s, _t);
    }
    /**
        Index returns the index of the first instance of sep in s, or -1 if sep is not present in s.
    **/
    static public function index(_s:Array<StdTypes.Int>, _sep:Array<StdTypes.Int>):StdTypes.Int {
        final _s = ([for (i in _s) i] : stdgo.Slice<stdgo.GoByte>);
        final _sep = ([for (i in _sep) i] : stdgo.Slice<stdgo.GoByte>);
        return stdgo._internal.bytes.Bytes.index(_s, _sep);
    }
    /**
        Cut slices s around the first instance of sep,
        returning the text before and after sep.
        The found result reports whether sep appears in s.
        If sep does not appear in s, cut returns s, nil, false.
        
        Cut returns slices of the original slice s, not copies.
    **/
    static public function cut(_s:Array<StdTypes.Int>, _sep:Array<StdTypes.Int>):stdgo.Tuple.Tuple3<Array<StdTypes.Int>, Array<StdTypes.Int>, Bool> {
        final _s = ([for (i in _s) i] : stdgo.Slice<stdgo.GoByte>);
        final _sep = ([for (i in _sep) i] : stdgo.Slice<stdgo.GoByte>);
        return {
            final obj = stdgo._internal.bytes.Bytes.cut(_s, _sep);
            { _0 : [for (i in obj._0) i], _1 : [for (i in obj._1) i], _2 : obj._2 };
        };
    }
    /**
        Clone returns a copy of b[:len(b)].
        The result may have additional unused capacity.
        Clone(nil) returns nil.
    **/
    static public function clone(_b:Array<StdTypes.Int>):Array<StdTypes.Int> {
        final _b = ([for (i in _b) i] : stdgo.Slice<stdgo.GoByte>);
        return [for (i in stdgo._internal.bytes.Bytes.clone(_b)) i];
    }
    /**
        CutPrefix returns s without the provided leading prefix byte slice
        and reports whether it found the prefix.
        If s doesn't start with prefix, CutPrefix returns s, false.
        If prefix is the empty byte slice, CutPrefix returns s, true.
        
        CutPrefix returns slices of the original slice s, not copies.
    **/
    static public function cutPrefix(_s:Array<StdTypes.Int>, _prefix:Array<StdTypes.Int>):stdgo.Tuple<Array<StdTypes.Int>, Bool> {
        final _s = ([for (i in _s) i] : stdgo.Slice<stdgo.GoByte>);
        final _prefix = ([for (i in _prefix) i] : stdgo.Slice<stdgo.GoByte>);
        return {
            final obj = stdgo._internal.bytes.Bytes.cutPrefix(_s, _prefix);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    /**
        CutSuffix returns s without the provided ending suffix byte slice
        and reports whether it found the suffix.
        If s doesn't end with suffix, CutSuffix returns s, false.
        If suffix is the empty byte slice, CutSuffix returns s, true.
        
        CutSuffix returns slices of the original slice s, not copies.
    **/
    static public function cutSuffix(_s:Array<StdTypes.Int>, _suffix:Array<StdTypes.Int>):stdgo.Tuple<Array<StdTypes.Int>, Bool> {
        final _s = ([for (i in _s) i] : stdgo.Slice<stdgo.GoByte>);
        final _suffix = ([for (i in _suffix) i] : stdgo.Slice<stdgo.GoByte>);
        return {
            final obj = stdgo._internal.bytes.Bytes.cutSuffix(_s, _suffix);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    /**
        NewReader returns a new Reader reading from b.
    **/
    static public function newReader(_b:Array<StdTypes.Int>):Reader {
        final _b = ([for (i in _b) i] : stdgo.Slice<stdgo.GoByte>);
        return stdgo._internal.bytes.Bytes.newReader(_b);
    }
}
