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
@:structInit abstract T_fieldsFunc_7___localname___span(stdgo._internal.bytes.Bytes.T_fieldsFunc_7___localname___span) from stdgo._internal.bytes.Bytes.T_fieldsFunc_7___localname___span to stdgo._internal.bytes.Bytes.T_fieldsFunc_7___localname___span {
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
    public function new(?_start:StdTypes.Int, ?_end:StdTypes.Int) this = new stdgo._internal.bytes.Bytes.T_fieldsFunc_7___localname___span(_start, _end);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
class Buffer_static_extension {
    static public function readString(b:Buffer, delim:StdTypes.Int):stdgo.Tuple<String, stdgo.Error> {
        return {
            final obj = stdgo._internal.bytes.Bytes.Buffer_static_extension.readString(b, delim);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _readSlice(b:Buffer, delim:StdTypes.Int):stdgo.Tuple<Array<StdTypes.Int>, stdgo.Error> {
        return {
            final obj = stdgo._internal.bytes.Bytes.Buffer_static_extension._readSlice(b, delim);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    static public function readBytes(b:Buffer, delim:StdTypes.Int):stdgo.Tuple<Array<StdTypes.Int>, stdgo.Error> {
        return {
            final obj = stdgo._internal.bytes.Bytes.Buffer_static_extension.readBytes(b, delim);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    static public function unreadByte(b:Buffer):stdgo.Error {
        return stdgo._internal.bytes.Bytes.Buffer_static_extension.unreadByte(b);
    }
    static public function unreadRune(b:Buffer):stdgo.Error {
        return stdgo._internal.bytes.Bytes.Buffer_static_extension.unreadRune(b);
    }
    static public function readRune(b:Buffer):stdgo.Tuple.Tuple3<StdTypes.Int, StdTypes.Int, stdgo.Error> {
        return {
            final obj = stdgo._internal.bytes.Bytes.Buffer_static_extension.readRune(b);
            { _0 : obj._0, _1 : obj._1, _2 : obj._2 };
        };
    }
    static public function readByte(b:Buffer):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        return {
            final obj = stdgo._internal.bytes.Bytes.Buffer_static_extension.readByte(b);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function next(b:Buffer, n:StdTypes.Int):Array<StdTypes.Int> {
        return [for (i in stdgo._internal.bytes.Bytes.Buffer_static_extension.next(b, n)) i];
    }
    static public function read(b:Buffer, p:Array<StdTypes.Int>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final p = ([for (i in p) i] : stdgo.Slice<stdgo.GoByte>);
        return {
            final obj = stdgo._internal.bytes.Bytes.Buffer_static_extension.read(b, p);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function writeRune(b:Buffer, r:StdTypes.Int):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        return {
            final obj = stdgo._internal.bytes.Bytes.Buffer_static_extension.writeRune(b, r);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function writeByte(b:Buffer, c:StdTypes.Int):stdgo.Error {
        return stdgo._internal.bytes.Bytes.Buffer_static_extension.writeByte(b, c);
    }
    static public function writeTo(b:Buffer, w:stdgo._internal.io.Io.Writer):stdgo.Tuple<haxe.Int64, stdgo.Error> {
        return {
            final obj = stdgo._internal.bytes.Bytes.Buffer_static_extension.writeTo(b, w);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function readFrom(b:Buffer, r:stdgo._internal.io.Io.Reader):stdgo.Tuple<haxe.Int64, stdgo.Error> {
        return {
            final obj = stdgo._internal.bytes.Bytes.Buffer_static_extension.readFrom(b, r);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function writeString(b:Buffer, s:String):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        return {
            final obj = stdgo._internal.bytes.Bytes.Buffer_static_extension.writeString(b, s);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function write(b:Buffer, p:Array<StdTypes.Int>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final p = ([for (i in p) i] : stdgo.Slice<stdgo.GoByte>);
        return {
            final obj = stdgo._internal.bytes.Bytes.Buffer_static_extension.write(b, p);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function grow(b:Buffer, n:StdTypes.Int):Void {
        stdgo._internal.bytes.Bytes.Buffer_static_extension.grow(b, n);
    }
    static public function _grow(b:Buffer, n:StdTypes.Int):StdTypes.Int {
        return stdgo._internal.bytes.Bytes.Buffer_static_extension._grow(b, n);
    }
    static public function _tryGrowByReslice(b:Buffer, n:StdTypes.Int):stdgo.Tuple<StdTypes.Int, Bool> {
        return {
            final obj = stdgo._internal.bytes.Bytes.Buffer_static_extension._tryGrowByReslice(b, n);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function reset(b:Buffer):Void {
        stdgo._internal.bytes.Bytes.Buffer_static_extension.reset(b);
    }
    static public function truncate(b:Buffer, n:StdTypes.Int):Void {
        stdgo._internal.bytes.Bytes.Buffer_static_extension.truncate(b, n);
    }
    static public function available(b:Buffer):StdTypes.Int {
        return stdgo._internal.bytes.Bytes.Buffer_static_extension.available(b);
    }
    static public function cap(b:Buffer):StdTypes.Int {
        return stdgo._internal.bytes.Bytes.Buffer_static_extension.cap(b);
    }
    static public function len(b:Buffer):StdTypes.Int {
        return stdgo._internal.bytes.Bytes.Buffer_static_extension.len(b);
    }
    static public function _empty(b:Buffer):Bool {
        return stdgo._internal.bytes.Bytes.Buffer_static_extension._empty(b);
    }
    static public function string(b:Buffer):String {
        return stdgo._internal.bytes.Bytes.Buffer_static_extension.string(b);
    }
    static public function availableBuffer(b:Buffer):Array<StdTypes.Int> {
        return [for (i in stdgo._internal.bytes.Bytes.Buffer_static_extension.availableBuffer(b)) i];
    }
    static public function bytes(b:Buffer):Array<StdTypes.Int> {
        return [for (i in stdgo._internal.bytes.Bytes.Buffer_static_extension.bytes(b)) i];
    }
}
class Reader_static_extension {
    static public function reset(r:Reader, b:Array<StdTypes.Int>):Void {
        final b = ([for (i in b) i] : stdgo.Slice<stdgo.GoByte>);
        stdgo._internal.bytes.Bytes.Reader_static_extension.reset(r, b);
    }
    static public function writeTo(r:Reader, w:stdgo._internal.io.Io.Writer):stdgo.Tuple<haxe.Int64, stdgo.Error> {
        return {
            final obj = stdgo._internal.bytes.Bytes.Reader_static_extension.writeTo(r, w);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function seek(r:Reader, offset:haxe.Int64, whence:StdTypes.Int):stdgo.Tuple<haxe.Int64, stdgo.Error> {
        return {
            final obj = stdgo._internal.bytes.Bytes.Reader_static_extension.seek(r, offset, whence);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function unreadRune(r:Reader):stdgo.Error {
        return stdgo._internal.bytes.Bytes.Reader_static_extension.unreadRune(r);
    }
    static public function readRune(r:Reader):stdgo.Tuple.Tuple3<StdTypes.Int, StdTypes.Int, stdgo.Error> {
        return {
            final obj = stdgo._internal.bytes.Bytes.Reader_static_extension.readRune(r);
            { _0 : obj._0, _1 : obj._1, _2 : obj._2 };
        };
    }
    static public function unreadByte(r:Reader):stdgo.Error {
        return stdgo._internal.bytes.Bytes.Reader_static_extension.unreadByte(r);
    }
    static public function readByte(r:Reader):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        return {
            final obj = stdgo._internal.bytes.Bytes.Reader_static_extension.readByte(r);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function readAt(r:Reader, b:Array<StdTypes.Int>, off:haxe.Int64):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final b = ([for (i in b) i] : stdgo.Slice<stdgo.GoByte>);
        return {
            final obj = stdgo._internal.bytes.Bytes.Reader_static_extension.readAt(r, b, off);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function read(r:Reader, b:Array<StdTypes.Int>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final b = ([for (i in b) i] : stdgo.Slice<stdgo.GoByte>);
        return {
            final obj = stdgo._internal.bytes.Bytes.Reader_static_extension.read(r, b);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function size(r:Reader):haxe.Int64 {
        return stdgo._internal.bytes.Bytes.Reader_static_extension.size(r);
    }
    static public function len(r:Reader):StdTypes.Int {
        return stdgo._internal.bytes.Bytes.Reader_static_extension.len(r);
    }
}
class T_asciiSet_static_extension {
    static public function _contains(as:T_asciiSet, c:StdTypes.Int):Bool {
        return stdgo._internal.bytes.Bytes.T_asciiSet_static_extension._contains(as, c);
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
    static public function newBuffer(buf:Array<StdTypes.Int>):Buffer {
        final buf = ([for (i in buf) i] : stdgo.Slice<stdgo.GoByte>);
        return stdgo._internal.bytes.Bytes.newBuffer(buf);
    }
    /**
        NewBufferString creates and initializes a new Buffer using string s as its
        initial contents. It is intended to prepare a buffer to read an existing
        string.
        
        In most cases, new(Buffer) (or just declaring a Buffer variable) is
        sufficient to initialize a Buffer.
    **/
    static public function newBufferString(s:String):Buffer {
        return stdgo._internal.bytes.Bytes.newBufferString(s);
    }
    /**
        Equal reports whether a and b
        are the same length and contain the same bytes.
        A nil argument is equivalent to an empty slice.
    **/
    static public function equal(a:Array<StdTypes.Int>, b:Array<StdTypes.Int>):Bool {
        final a = ([for (i in a) i] : stdgo.Slice<stdgo.GoByte>);
        final b = ([for (i in b) i] : stdgo.Slice<stdgo.GoByte>);
        return stdgo._internal.bytes.Bytes.equal(a, b);
    }
    /**
        Compare returns an integer comparing two byte slices lexicographically.
        The result will be 0 if a == b, -1 if a < b, and +1 if a > b.
        A nil argument is equivalent to an empty slice.
    **/
    static public function compare(a:Array<StdTypes.Int>, b:Array<StdTypes.Int>):StdTypes.Int {
        final a = ([for (i in a) i] : stdgo.Slice<stdgo.GoByte>);
        final b = ([for (i in b) i] : stdgo.Slice<stdgo.GoByte>);
        return stdgo._internal.bytes.Bytes.compare(a, b);
    }
    /**
        Count counts the number of non-overlapping instances of sep in s.
        If sep is an empty slice, Count returns 1 + the number of UTF-8-encoded code points in s.
    **/
    static public function count(s:Array<StdTypes.Int>, sep:Array<StdTypes.Int>):StdTypes.Int {
        final s = ([for (i in s) i] : stdgo.Slice<stdgo.GoByte>);
        final sep = ([for (i in sep) i] : stdgo.Slice<stdgo.GoByte>);
        return stdgo._internal.bytes.Bytes.count(s, sep);
    }
    /**
        Contains reports whether subslice is within b.
    **/
    static public function contains(b:Array<StdTypes.Int>, subslice:Array<StdTypes.Int>):Bool {
        final b = ([for (i in b) i] : stdgo.Slice<stdgo.GoByte>);
        final subslice = ([for (i in subslice) i] : stdgo.Slice<stdgo.GoByte>);
        return stdgo._internal.bytes.Bytes.contains(b, subslice);
    }
    /**
        ContainsAny reports whether any of the UTF-8-encoded code points in chars are within b.
    **/
    static public function containsAny(b:Array<StdTypes.Int>, chars:String):Bool {
        final b = ([for (i in b) i] : stdgo.Slice<stdgo.GoByte>);
        return stdgo._internal.bytes.Bytes.containsAny(b, chars);
    }
    /**
        ContainsRune reports whether the rune is contained in the UTF-8-encoded byte slice b.
    **/
    static public function containsRune(b:Array<StdTypes.Int>, r:StdTypes.Int):Bool {
        final b = ([for (i in b) i] : stdgo.Slice<stdgo.GoByte>);
        return stdgo._internal.bytes.Bytes.containsRune(b, r);
    }
    /**
        ContainsFunc reports whether any of the UTF-8-encoded code points r within b satisfy f(r).
    **/
    static public function containsFunc(b:Array<StdTypes.Int>, f:stdgo.GoRune -> Bool):Bool {
        final b = ([for (i in b) i] : stdgo.Slice<stdgo.GoByte>);
        final f = f;
        return stdgo._internal.bytes.Bytes.containsFunc(b, f);
    }
    /**
        IndexByte returns the index of the first instance of c in b, or -1 if c is not present in b.
    **/
    static public function indexByte(b:Array<StdTypes.Int>, c:StdTypes.Int):StdTypes.Int {
        final b = ([for (i in b) i] : stdgo.Slice<stdgo.GoByte>);
        return stdgo._internal.bytes.Bytes.indexByte(b, c);
    }
    /**
        LastIndex returns the index of the last instance of sep in s, or -1 if sep is not present in s.
    **/
    static public function lastIndex(s:Array<StdTypes.Int>, sep:Array<StdTypes.Int>):StdTypes.Int {
        final s = ([for (i in s) i] : stdgo.Slice<stdgo.GoByte>);
        final sep = ([for (i in sep) i] : stdgo.Slice<stdgo.GoByte>);
        return stdgo._internal.bytes.Bytes.lastIndex(s, sep);
    }
    /**
        LastIndexByte returns the index of the last instance of c in s, or -1 if c is not present in s.
    **/
    static public function lastIndexByte(s:Array<StdTypes.Int>, c:StdTypes.Int):StdTypes.Int {
        final s = ([for (i in s) i] : stdgo.Slice<stdgo.GoByte>);
        return stdgo._internal.bytes.Bytes.lastIndexByte(s, c);
    }
    /**
        IndexRune interprets s as a sequence of UTF-8-encoded code points.
        It returns the byte index of the first occurrence in s of the given rune.
        It returns -1 if rune is not present in s.
        If r is utf8.RuneError, it returns the first instance of any
        invalid UTF-8 byte sequence.
    **/
    static public function indexRune(s:Array<StdTypes.Int>, r:StdTypes.Int):StdTypes.Int {
        final s = ([for (i in s) i] : stdgo.Slice<stdgo.GoByte>);
        return stdgo._internal.bytes.Bytes.indexRune(s, r);
    }
    /**
        IndexAny interprets s as a sequence of UTF-8-encoded Unicode code points.
        It returns the byte index of the first occurrence in s of any of the Unicode
        code points in chars. It returns -1 if chars is empty or if there is no code
        point in common.
    **/
    static public function indexAny(s:Array<StdTypes.Int>, chars:String):StdTypes.Int {
        final s = ([for (i in s) i] : stdgo.Slice<stdgo.GoByte>);
        return stdgo._internal.bytes.Bytes.indexAny(s, chars);
    }
    /**
        LastIndexAny interprets s as a sequence of UTF-8-encoded Unicode code
        points. It returns the byte index of the last occurrence in s of any of
        the Unicode code points in chars. It returns -1 if chars is empty or if
        there is no code point in common.
    **/
    static public function lastIndexAny(s:Array<StdTypes.Int>, chars:String):StdTypes.Int {
        final s = ([for (i in s) i] : stdgo.Slice<stdgo.GoByte>);
        return stdgo._internal.bytes.Bytes.lastIndexAny(s, chars);
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
    static public function splitN(s:Array<StdTypes.Int>, sep:Array<StdTypes.Int>, n:StdTypes.Int):Array<Array<StdTypes.Int>> {
        final s = ([for (i in s) i] : stdgo.Slice<stdgo.GoByte>);
        final sep = ([for (i in sep) i] : stdgo.Slice<stdgo.GoByte>);
        return [for (i in stdgo._internal.bytes.Bytes.splitN(s, sep, n)) [for (i in i) i]];
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
    static public function splitAfterN(s:Array<StdTypes.Int>, sep:Array<StdTypes.Int>, n:StdTypes.Int):Array<Array<StdTypes.Int>> {
        final s = ([for (i in s) i] : stdgo.Slice<stdgo.GoByte>);
        final sep = ([for (i in sep) i] : stdgo.Slice<stdgo.GoByte>);
        return [for (i in stdgo._internal.bytes.Bytes.splitAfterN(s, sep, n)) [for (i in i) i]];
    }
    /**
        Split slices s into all subslices separated by sep and returns a slice of
        the subslices between those separators.
        If sep is empty, Split splits after each UTF-8 sequence.
        It is equivalent to SplitN with a count of -1.
        
        To split around the first instance of a separator, see Cut.
    **/
    static public function split(s:Array<StdTypes.Int>, sep:Array<StdTypes.Int>):Array<Array<StdTypes.Int>> {
        final s = ([for (i in s) i] : stdgo.Slice<stdgo.GoByte>);
        final sep = ([for (i in sep) i] : stdgo.Slice<stdgo.GoByte>);
        return [for (i in stdgo._internal.bytes.Bytes.split(s, sep)) [for (i in i) i]];
    }
    /**
        SplitAfter slices s into all subslices after each instance of sep and
        returns a slice of those subslices.
        If sep is empty, SplitAfter splits after each UTF-8 sequence.
        It is equivalent to SplitAfterN with a count of -1.
    **/
    static public function splitAfter(s:Array<StdTypes.Int>, sep:Array<StdTypes.Int>):Array<Array<StdTypes.Int>> {
        final s = ([for (i in s) i] : stdgo.Slice<stdgo.GoByte>);
        final sep = ([for (i in sep) i] : stdgo.Slice<stdgo.GoByte>);
        return [for (i in stdgo._internal.bytes.Bytes.splitAfter(s, sep)) [for (i in i) i]];
    }
    /**
        Fields interprets s as a sequence of UTF-8-encoded code points.
        It splits the slice s around each instance of one or more consecutive white space
        characters, as defined by unicode.IsSpace, returning a slice of subslices of s or an
        empty slice if s contains only white space.
    **/
    static public function fields(s:Array<StdTypes.Int>):Array<Array<StdTypes.Int>> {
        final s = ([for (i in s) i] : stdgo.Slice<stdgo.GoByte>);
        return [for (i in stdgo._internal.bytes.Bytes.fields(s)) [for (i in i) i]];
    }
    /**
        FieldsFunc interprets s as a sequence of UTF-8-encoded code points.
        It splits the slice s at each run of code points c satisfying f(c) and
        returns a slice of subslices of s. If all code points in s satisfy f(c), or
        len(s) == 0, an empty slice is returned.
        
        FieldsFunc makes no guarantees about the order in which it calls f(c)
        and assumes that f always returns the same value for a given c.
    **/
    static public function fieldsFunc(s:Array<StdTypes.Int>, f:stdgo.GoRune -> Bool):Array<Array<StdTypes.Int>> {
        final s = ([for (i in s) i] : stdgo.Slice<stdgo.GoByte>);
        final f = f;
        return [for (i in stdgo._internal.bytes.Bytes.fieldsFunc(s, f)) [for (i in i) i]];
    }
    /**
        Join concatenates the elements of s to create a new byte slice. The separator
        sep is placed between elements in the resulting slice.
    **/
    static public function join(s:Array<Array<StdTypes.Int>>, sep:Array<StdTypes.Int>):Array<StdTypes.Int> {
        final s = ([for (i in s) ([for (i in i) i] : stdgo.Slice<stdgo.GoByte>)] : stdgo.Slice<stdgo.Slice<stdgo.GoByte>>);
        final sep = ([for (i in sep) i] : stdgo.Slice<stdgo.GoByte>);
        return [for (i in stdgo._internal.bytes.Bytes.join(s, sep)) i];
    }
    /**
        HasPrefix tests whether the byte slice s begins with prefix.
    **/
    static public function hasPrefix(s:Array<StdTypes.Int>, prefix:Array<StdTypes.Int>):Bool {
        final s = ([for (i in s) i] : stdgo.Slice<stdgo.GoByte>);
        final prefix = ([for (i in prefix) i] : stdgo.Slice<stdgo.GoByte>);
        return stdgo._internal.bytes.Bytes.hasPrefix(s, prefix);
    }
    /**
        HasSuffix tests whether the byte slice s ends with suffix.
    **/
    static public function hasSuffix(s:Array<StdTypes.Int>, suffix:Array<StdTypes.Int>):Bool {
        final s = ([for (i in s) i] : stdgo.Slice<stdgo.GoByte>);
        final suffix = ([for (i in suffix) i] : stdgo.Slice<stdgo.GoByte>);
        return stdgo._internal.bytes.Bytes.hasSuffix(s, suffix);
    }
    /**
        Map returns a copy of the byte slice s with all its characters modified
        according to the mapping function. If mapping returns a negative value, the character is
        dropped from the byte slice with no replacement. The characters in s and the
        output are interpreted as UTF-8-encoded code points.
    **/
    static public function map_(mapping:(_r:stdgo.GoRune) -> stdgo.GoRune, s:Array<StdTypes.Int>):Array<StdTypes.Int> {
        final mapping = mapping;
        final s = ([for (i in s) i] : stdgo.Slice<stdgo.GoByte>);
        return [for (i in stdgo._internal.bytes.Bytes.map_(mapping, s)) i];
    }
    /**
        Repeat returns a new byte slice consisting of count copies of b.
        
        It panics if count is negative or if the result of (len(b) * count)
        overflows.
    **/
    static public function repeat(b:Array<StdTypes.Int>, count:StdTypes.Int):Array<StdTypes.Int> {
        final b = ([for (i in b) i] : stdgo.Slice<stdgo.GoByte>);
        return [for (i in stdgo._internal.bytes.Bytes.repeat(b, count)) i];
    }
    /**
        ToUpper returns a copy of the byte slice s with all Unicode letters mapped to
        their upper case.
    **/
    static public function toUpper(s:Array<StdTypes.Int>):Array<StdTypes.Int> {
        final s = ([for (i in s) i] : stdgo.Slice<stdgo.GoByte>);
        return [for (i in stdgo._internal.bytes.Bytes.toUpper(s)) i];
    }
    /**
        ToLower returns a copy of the byte slice s with all Unicode letters mapped to
        their lower case.
    **/
    static public function toLower(s:Array<StdTypes.Int>):Array<StdTypes.Int> {
        final s = ([for (i in s) i] : stdgo.Slice<stdgo.GoByte>);
        return [for (i in stdgo._internal.bytes.Bytes.toLower(s)) i];
    }
    /**
        ToTitle treats s as UTF-8-encoded bytes and returns a copy with all the Unicode letters mapped to their title case.
    **/
    static public function toTitle(s:Array<StdTypes.Int>):Array<StdTypes.Int> {
        final s = ([for (i in s) i] : stdgo.Slice<stdgo.GoByte>);
        return [for (i in stdgo._internal.bytes.Bytes.toTitle(s)) i];
    }
    /**
        ToUpperSpecial treats s as UTF-8-encoded bytes and returns a copy with all the Unicode letters mapped to their
        upper case, giving priority to the special casing rules.
    **/
    static public function toUpperSpecial(c:stdgo._internal.unicode.Unicode.SpecialCase, s:Array<StdTypes.Int>):Array<StdTypes.Int> {
        final s = ([for (i in s) i] : stdgo.Slice<stdgo.GoByte>);
        return [for (i in stdgo._internal.bytes.Bytes.toUpperSpecial(c, s)) i];
    }
    /**
        ToLowerSpecial treats s as UTF-8-encoded bytes and returns a copy with all the Unicode letters mapped to their
        lower case, giving priority to the special casing rules.
    **/
    static public function toLowerSpecial(c:stdgo._internal.unicode.Unicode.SpecialCase, s:Array<StdTypes.Int>):Array<StdTypes.Int> {
        final s = ([for (i in s) i] : stdgo.Slice<stdgo.GoByte>);
        return [for (i in stdgo._internal.bytes.Bytes.toLowerSpecial(c, s)) i];
    }
    /**
        ToTitleSpecial treats s as UTF-8-encoded bytes and returns a copy with all the Unicode letters mapped to their
        title case, giving priority to the special casing rules.
    **/
    static public function toTitleSpecial(c:stdgo._internal.unicode.Unicode.SpecialCase, s:Array<StdTypes.Int>):Array<StdTypes.Int> {
        final s = ([for (i in s) i] : stdgo.Slice<stdgo.GoByte>);
        return [for (i in stdgo._internal.bytes.Bytes.toTitleSpecial(c, s)) i];
    }
    /**
        ToValidUTF8 treats s as UTF-8-encoded bytes and returns a copy with each run of bytes
        representing invalid UTF-8 replaced with the bytes in replacement, which may be empty.
    **/
    static public function toValidUTF8(s:Array<StdTypes.Int>, replacement:Array<StdTypes.Int>):Array<StdTypes.Int> {
        final s = ([for (i in s) i] : stdgo.Slice<stdgo.GoByte>);
        final replacement = ([for (i in replacement) i] : stdgo.Slice<stdgo.GoByte>);
        return [for (i in stdgo._internal.bytes.Bytes.toValidUTF8(s, replacement)) i];
    }
    /**
        Title treats s as UTF-8-encoded bytes and returns a copy with all Unicode letters that begin
        words mapped to their title case.
        
        Deprecated: The rule Title uses for word boundaries does not handle Unicode
        punctuation properly. Use golang.org/x/text/cases instead.
    **/
    static public function title(s:Array<StdTypes.Int>):Array<StdTypes.Int> {
        final s = ([for (i in s) i] : stdgo.Slice<stdgo.GoByte>);
        return [for (i in stdgo._internal.bytes.Bytes.title(s)) i];
    }
    /**
        TrimLeftFunc treats s as UTF-8-encoded bytes and returns a subslice of s by slicing off
        all leading UTF-8-encoded code points c that satisfy f(c).
    **/
    static public function trimLeftFunc(s:Array<StdTypes.Int>, f:(_r:stdgo.GoRune) -> Bool):Array<StdTypes.Int> {
        final s = ([for (i in s) i] : stdgo.Slice<stdgo.GoByte>);
        final f = f;
        return [for (i in stdgo._internal.bytes.Bytes.trimLeftFunc(s, f)) i];
    }
    /**
        TrimRightFunc returns a subslice of s by slicing off all trailing
        UTF-8-encoded code points c that satisfy f(c).
    **/
    static public function trimRightFunc(s:Array<StdTypes.Int>, f:(_r:stdgo.GoRune) -> Bool):Array<StdTypes.Int> {
        final s = ([for (i in s) i] : stdgo.Slice<stdgo.GoByte>);
        final f = f;
        return [for (i in stdgo._internal.bytes.Bytes.trimRightFunc(s, f)) i];
    }
    /**
        TrimFunc returns a subslice of s by slicing off all leading and trailing
        UTF-8-encoded code points c that satisfy f(c).
    **/
    static public function trimFunc(s:Array<StdTypes.Int>, f:(_r:stdgo.GoRune) -> Bool):Array<StdTypes.Int> {
        final s = ([for (i in s) i] : stdgo.Slice<stdgo.GoByte>);
        final f = f;
        return [for (i in stdgo._internal.bytes.Bytes.trimFunc(s, f)) i];
    }
    /**
        TrimPrefix returns s without the provided leading prefix string.
        If s doesn't start with prefix, s is returned unchanged.
    **/
    static public function trimPrefix(s:Array<StdTypes.Int>, prefix:Array<StdTypes.Int>):Array<StdTypes.Int> {
        final s = ([for (i in s) i] : stdgo.Slice<stdgo.GoByte>);
        final prefix = ([for (i in prefix) i] : stdgo.Slice<stdgo.GoByte>);
        return [for (i in stdgo._internal.bytes.Bytes.trimPrefix(s, prefix)) i];
    }
    /**
        TrimSuffix returns s without the provided trailing suffix string.
        If s doesn't end with suffix, s is returned unchanged.
    **/
    static public function trimSuffix(s:Array<StdTypes.Int>, suffix:Array<StdTypes.Int>):Array<StdTypes.Int> {
        final s = ([for (i in s) i] : stdgo.Slice<stdgo.GoByte>);
        final suffix = ([for (i in suffix) i] : stdgo.Slice<stdgo.GoByte>);
        return [for (i in stdgo._internal.bytes.Bytes.trimSuffix(s, suffix)) i];
    }
    /**
        IndexFunc interprets s as a sequence of UTF-8-encoded code points.
        It returns the byte index in s of the first Unicode
        code point satisfying f(c), or -1 if none do.
    **/
    static public function indexFunc(s:Array<StdTypes.Int>, f:(_r:stdgo.GoRune) -> Bool):StdTypes.Int {
        final s = ([for (i in s) i] : stdgo.Slice<stdgo.GoByte>);
        final f = f;
        return stdgo._internal.bytes.Bytes.indexFunc(s, f);
    }
    /**
        LastIndexFunc interprets s as a sequence of UTF-8-encoded code points.
        It returns the byte index in s of the last Unicode
        code point satisfying f(c), or -1 if none do.
    **/
    static public function lastIndexFunc(s:Array<StdTypes.Int>, f:(_r:stdgo.GoRune) -> Bool):StdTypes.Int {
        final s = ([for (i in s) i] : stdgo.Slice<stdgo.GoByte>);
        final f = f;
        return stdgo._internal.bytes.Bytes.lastIndexFunc(s, f);
    }
    /**
        Trim returns a subslice of s by slicing off all leading and
        trailing UTF-8-encoded code points contained in cutset.
    **/
    static public function trim(s:Array<StdTypes.Int>, cutset:String):Array<StdTypes.Int> {
        final s = ([for (i in s) i] : stdgo.Slice<stdgo.GoByte>);
        return [for (i in stdgo._internal.bytes.Bytes.trim(s, cutset)) i];
    }
    /**
        TrimLeft returns a subslice of s by slicing off all leading
        UTF-8-encoded code points contained in cutset.
    **/
    static public function trimLeft(s:Array<StdTypes.Int>, cutset:String):Array<StdTypes.Int> {
        final s = ([for (i in s) i] : stdgo.Slice<stdgo.GoByte>);
        return [for (i in stdgo._internal.bytes.Bytes.trimLeft(s, cutset)) i];
    }
    /**
        TrimRight returns a subslice of s by slicing off all trailing
        UTF-8-encoded code points that are contained in cutset.
    **/
    static public function trimRight(s:Array<StdTypes.Int>, cutset:String):Array<StdTypes.Int> {
        final s = ([for (i in s) i] : stdgo.Slice<stdgo.GoByte>);
        return [for (i in stdgo._internal.bytes.Bytes.trimRight(s, cutset)) i];
    }
    /**
        TrimSpace returns a subslice of s by slicing off all leading and
        trailing white space, as defined by Unicode.
    **/
    static public function trimSpace(s:Array<StdTypes.Int>):Array<StdTypes.Int> {
        final s = ([for (i in s) i] : stdgo.Slice<stdgo.GoByte>);
        return [for (i in stdgo._internal.bytes.Bytes.trimSpace(s)) i];
    }
    /**
        Runes interprets s as a sequence of UTF-8-encoded code points.
        It returns a slice of runes (Unicode code points) equivalent to s.
    **/
    static public function runes(s:Array<StdTypes.Int>):Array<StdTypes.Int> {
        final s = ([for (i in s) i] : stdgo.Slice<stdgo.GoByte>);
        return [for (i in stdgo._internal.bytes.Bytes.runes(s)) i];
    }
    /**
        Replace returns a copy of the slice s with the first n
        non-overlapping instances of old replaced by new.
        If old is empty, it matches at the beginning of the slice
        and after each UTF-8 sequence, yielding up to k+1 replacements
        for a k-rune slice.
        If n < 0, there is no limit on the number of replacements.
    **/
    static public function replace(s:Array<StdTypes.Int>, old:Array<StdTypes.Int>, _new:Array<StdTypes.Int>, n:StdTypes.Int):Array<StdTypes.Int> {
        final s = ([for (i in s) i] : stdgo.Slice<stdgo.GoByte>);
        final old = ([for (i in old) i] : stdgo.Slice<stdgo.GoByte>);
        final _new = ([for (i in _new) i] : stdgo.Slice<stdgo.GoByte>);
        return [for (i in stdgo._internal.bytes.Bytes.replace(s, old, _new, n)) i];
    }
    /**
        ReplaceAll returns a copy of the slice s with all
        non-overlapping instances of old replaced by new.
        If old is empty, it matches at the beginning of the slice
        and after each UTF-8 sequence, yielding up to k+1 replacements
        for a k-rune slice.
    **/
    static public function replaceAll(s:Array<StdTypes.Int>, old:Array<StdTypes.Int>, _new:Array<StdTypes.Int>):Array<StdTypes.Int> {
        final s = ([for (i in s) i] : stdgo.Slice<stdgo.GoByte>);
        final old = ([for (i in old) i] : stdgo.Slice<stdgo.GoByte>);
        final _new = ([for (i in _new) i] : stdgo.Slice<stdgo.GoByte>);
        return [for (i in stdgo._internal.bytes.Bytes.replaceAll(s, old, _new)) i];
    }
    /**
        EqualFold reports whether s and t, interpreted as UTF-8 strings,
        are equal under simple Unicode case-folding, which is a more general
        form of case-insensitivity.
    **/
    static public function equalFold(s:Array<StdTypes.Int>, t:Array<StdTypes.Int>):Bool {
        final s = ([for (i in s) i] : stdgo.Slice<stdgo.GoByte>);
        final t = ([for (i in t) i] : stdgo.Slice<stdgo.GoByte>);
        return stdgo._internal.bytes.Bytes.equalFold(s, t);
    }
    /**
        Index returns the index of the first instance of sep in s, or -1 if sep is not present in s.
    **/
    static public function index(s:Array<StdTypes.Int>, sep:Array<StdTypes.Int>):StdTypes.Int {
        final s = ([for (i in s) i] : stdgo.Slice<stdgo.GoByte>);
        final sep = ([for (i in sep) i] : stdgo.Slice<stdgo.GoByte>);
        return stdgo._internal.bytes.Bytes.index(s, sep);
    }
    /**
        Cut slices s around the first instance of sep,
        returning the text before and after sep.
        The found result reports whether sep appears in s.
        If sep does not appear in s, cut returns s, nil, false.
        
        Cut returns slices of the original slice s, not copies.
    **/
    static public function cut(s:Array<StdTypes.Int>, sep:Array<StdTypes.Int>):stdgo.Tuple.Tuple3<Array<StdTypes.Int>, Array<StdTypes.Int>, Bool> {
        final s = ([for (i in s) i] : stdgo.Slice<stdgo.GoByte>);
        final sep = ([for (i in sep) i] : stdgo.Slice<stdgo.GoByte>);
        return {
            final obj = stdgo._internal.bytes.Bytes.cut(s, sep);
            { _0 : [for (i in obj._0) i], _1 : [for (i in obj._1) i], _2 : obj._2 };
        };
    }
    /**
        Clone returns a copy of b[:len(b)].
        The result may have additional unused capacity.
        Clone(nil) returns nil.
    **/
    static public function clone(b:Array<StdTypes.Int>):Array<StdTypes.Int> {
        final b = ([for (i in b) i] : stdgo.Slice<stdgo.GoByte>);
        return [for (i in stdgo._internal.bytes.Bytes.clone(b)) i];
    }
    /**
        CutPrefix returns s without the provided leading prefix byte slice
        and reports whether it found the prefix.
        If s doesn't start with prefix, CutPrefix returns s, false.
        If prefix is the empty byte slice, CutPrefix returns s, true.
        
        CutPrefix returns slices of the original slice s, not copies.
    **/
    static public function cutPrefix(s:Array<StdTypes.Int>, prefix:Array<StdTypes.Int>):stdgo.Tuple<Array<StdTypes.Int>, Bool> {
        final s = ([for (i in s) i] : stdgo.Slice<stdgo.GoByte>);
        final prefix = ([for (i in prefix) i] : stdgo.Slice<stdgo.GoByte>);
        return {
            final obj = stdgo._internal.bytes.Bytes.cutPrefix(s, prefix);
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
    static public function cutSuffix(s:Array<StdTypes.Int>, suffix:Array<StdTypes.Int>):stdgo.Tuple<Array<StdTypes.Int>, Bool> {
        final s = ([for (i in s) i] : stdgo.Slice<stdgo.GoByte>);
        final suffix = ([for (i in suffix) i] : stdgo.Slice<stdgo.GoByte>);
        return {
            final obj = stdgo._internal.bytes.Bytes.cutSuffix(s, suffix);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    /**
        NewReader returns a new Reader reading from b.
    **/
    static public function newReader(b:Array<StdTypes.Int>):Reader {
        final b = ([for (i in b) i] : stdgo.Slice<stdgo.GoByte>);
        return stdgo._internal.bytes.Bytes.newReader(b);
    }
}
