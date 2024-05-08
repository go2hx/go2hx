package stdgo;
/**
    Package bufio implements buffered I/O. It wraps an io.Reader or io.Writer
    object, creating another object (Reader or Writer) that also implements
    the interface but provides buffering and some help for textual I/O.
**/
private var __go2hxdoc__package : Bool;
final defaultBufSize : haxe.UInt64 = stdgo._internal.bufio.Bufio.defaultBufSize;
final maxScanTokenSize : haxe.UInt64 = stdgo._internal.bufio.Bufio.maxScanTokenSize;
var errInvalidUnreadByte(get, set) : stdgo.Error;
private function get_errInvalidUnreadByte():stdgo.Error return stdgo._internal.bufio.Bufio.errInvalidUnreadByte;
private function set_errInvalidUnreadByte(v:stdgo.Error):stdgo.Error {
        stdgo._internal.bufio.Bufio.errInvalidUnreadByte = v;
        return v;
    }
var errInvalidUnreadRune(get, set) : stdgo.Error;
private function get_errInvalidUnreadRune():stdgo.Error return stdgo._internal.bufio.Bufio.errInvalidUnreadRune;
private function set_errInvalidUnreadRune(v:stdgo.Error):stdgo.Error {
        stdgo._internal.bufio.Bufio.errInvalidUnreadRune = v;
        return v;
    }
var errBufferFull(get, set) : stdgo.Error;
private function get_errBufferFull():stdgo.Error return stdgo._internal.bufio.Bufio.errBufferFull;
private function set_errBufferFull(v:stdgo.Error):stdgo.Error {
        stdgo._internal.bufio.Bufio.errBufferFull = v;
        return v;
    }
var errNegativeCount(get, set) : stdgo.Error;
private function get_errNegativeCount():stdgo.Error return stdgo._internal.bufio.Bufio.errNegativeCount;
private function set_errNegativeCount(v:stdgo.Error):stdgo.Error {
        stdgo._internal.bufio.Bufio.errNegativeCount = v;
        return v;
    }
var errTooLong(get, set) : stdgo.Error;
private function get_errTooLong():stdgo.Error return stdgo._internal.bufio.Bufio.errTooLong;
private function set_errTooLong(v:stdgo.Error):stdgo.Error {
        stdgo._internal.bufio.Bufio.errTooLong = v;
        return v;
    }
var errNegativeAdvance(get, set) : stdgo.Error;
private function get_errNegativeAdvance():stdgo.Error return stdgo._internal.bufio.Bufio.errNegativeAdvance;
private function set_errNegativeAdvance(v:stdgo.Error):stdgo.Error {
        stdgo._internal.bufio.Bufio.errNegativeAdvance = v;
        return v;
    }
var errAdvanceTooFar(get, set) : stdgo.Error;
private function get_errAdvanceTooFar():stdgo.Error return stdgo._internal.bufio.Bufio.errAdvanceTooFar;
private function set_errAdvanceTooFar(v:stdgo.Error):stdgo.Error {
        stdgo._internal.bufio.Bufio.errAdvanceTooFar = v;
        return v;
    }
var errBadReadCount(get, set) : stdgo.Error;
private function get_errBadReadCount():stdgo.Error return stdgo._internal.bufio.Bufio.errBadReadCount;
private function set_errBadReadCount(v:stdgo.Error):stdgo.Error {
        stdgo._internal.bufio.Bufio.errBadReadCount = v;
        return v;
    }
var errFinalToken(get, set) : stdgo.Error;
private function get_errFinalToken():stdgo.Error return stdgo._internal.bufio.Bufio.errFinalToken;
private function set_errFinalToken(v:stdgo.Error):stdgo.Error {
        stdgo._internal.bufio.Bufio.errFinalToken = v;
        return v;
    }
var isSpace(get, set) : stdgo.GoInt32 -> Bool;
private function get_isSpace():stdgo.GoInt32 -> Bool return _0 -> stdgo._internal.bufio.Bufio.isSpace(_0);
private function set_isSpace(v:stdgo.GoInt32 -> Bool):stdgo.GoInt32 -> Bool {
        stdgo._internal.bufio.Bufio.isSpace = v;
        return v;
    }
abstract Reader(stdgo._internal.bufio.Bufio.Reader) from stdgo._internal.bufio.Bufio.Reader to stdgo._internal.bufio.Bufio.Reader {
    public var _buf(get, set) : Array<std.UInt>;
    function get__buf():Array<std.UInt> return [for (i in this._buf) i];
    function set__buf(v:Array<std.UInt>):Array<std.UInt> {
        this._buf = ([for (i in v) i] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public var _rd(get, set) : stdgo._internal.io.Io.Reader;
    function get__rd():stdgo._internal.io.Io.Reader return this._rd;
    function set__rd(v:stdgo._internal.io.Io.Reader):stdgo._internal.io.Io.Reader {
        this._rd = v;
        return v;
    }
    public var _r(get, set) : StdTypes.Int;
    function get__r():StdTypes.Int return this._r;
    function set__r(v:StdTypes.Int):StdTypes.Int {
        this._r = v;
        return v;
    }
    public var _w(get, set) : StdTypes.Int;
    function get__w():StdTypes.Int return this._w;
    function set__w(v:StdTypes.Int):StdTypes.Int {
        this._w = v;
        return v;
    }
    public var _err(get, set) : stdgo.Error;
    function get__err():stdgo.Error return this._err;
    function set__err(v:stdgo.Error):stdgo.Error {
        this._err = v;
        return v;
    }
    public var _lastByte(get, set) : StdTypes.Int;
    function get__lastByte():StdTypes.Int return this._lastByte;
    function set__lastByte(v:StdTypes.Int):StdTypes.Int {
        this._lastByte = v;
        return v;
    }
    public var _lastRuneSize(get, set) : StdTypes.Int;
    function get__lastRuneSize():StdTypes.Int return this._lastRuneSize;
    function set__lastRuneSize(v:StdTypes.Int):StdTypes.Int {
        this._lastRuneSize = v;
        return v;
    }
    public function new(?_buf:Array<std.UInt>, ?_rd:stdgo._internal.io.Io.Reader, ?_r:StdTypes.Int, ?_w:StdTypes.Int, ?_err:stdgo.Error, ?_lastByte:StdTypes.Int, ?_lastRuneSize:StdTypes.Int) this = new stdgo._internal.bufio.Bufio.Reader(([for (i in _buf) i] : stdgo.Slice<stdgo.GoUInt8>), _rd, _r, _w, _err, _lastByte, _lastRuneSize);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
abstract Writer(stdgo._internal.bufio.Bufio.Writer) from stdgo._internal.bufio.Bufio.Writer to stdgo._internal.bufio.Bufio.Writer {
    public var _err(get, set) : stdgo.Error;
    function get__err():stdgo.Error return this._err;
    function set__err(v:stdgo.Error):stdgo.Error {
        this._err = v;
        return v;
    }
    public var _buf(get, set) : Array<std.UInt>;
    function get__buf():Array<std.UInt> return [for (i in this._buf) i];
    function set__buf(v:Array<std.UInt>):Array<std.UInt> {
        this._buf = ([for (i in v) i] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public var _n(get, set) : StdTypes.Int;
    function get__n():StdTypes.Int return this._n;
    function set__n(v:StdTypes.Int):StdTypes.Int {
        this._n = v;
        return v;
    }
    public var _wr(get, set) : stdgo._internal.io.Io.Writer;
    function get__wr():stdgo._internal.io.Io.Writer return this._wr;
    function set__wr(v:stdgo._internal.io.Io.Writer):stdgo._internal.io.Io.Writer {
        this._wr = v;
        return v;
    }
    public function new(?_err:stdgo.Error, ?_buf:Array<std.UInt>, ?_n:StdTypes.Int, ?_wr:stdgo._internal.io.Io.Writer) this = new stdgo._internal.bufio.Bufio.Writer(_err, ([for (i in _buf) i] : stdgo.Slice<stdgo.GoUInt8>), _n, _wr);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
abstract ReadWriter(stdgo._internal.bufio.Bufio.ReadWriter) from stdgo._internal.bufio.Bufio.ReadWriter to stdgo._internal.bufio.Bufio.ReadWriter {
    public var reader(get, set) : stdgo._internal.bufio.Bufio.Reader;
    function get_reader():stdgo._internal.bufio.Bufio.Reader return this.reader;
    function set_reader(v:stdgo._internal.bufio.Bufio.Reader):stdgo._internal.bufio.Bufio.Reader {
        this.reader = v;
        return v;
    }
    public var writer(get, set) : stdgo._internal.bufio.Bufio.Writer;
    function get_writer():stdgo._internal.bufio.Bufio.Writer return this.writer;
    function set_writer(v:stdgo._internal.bufio.Bufio.Writer):stdgo._internal.bufio.Bufio.Writer {
        this.writer = v;
        return v;
    }
    public function new(?reader:stdgo._internal.bufio.Bufio.Reader, ?writer:stdgo._internal.bufio.Bufio.Writer) this = new stdgo._internal.bufio.Bufio.ReadWriter(reader, writer);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
abstract Scanner(stdgo._internal.bufio.Bufio.Scanner) from stdgo._internal.bufio.Bufio.Scanner to stdgo._internal.bufio.Bufio.Scanner {
    public var _r(get, set) : stdgo._internal.io.Io.Reader;
    function get__r():stdgo._internal.io.Io.Reader return this._r;
    function set__r(v:stdgo._internal.io.Io.Reader):stdgo._internal.io.Io.Reader {
        this._r = v;
        return v;
    }
    public var _split(get, set) : stdgo._internal.bufio.Bufio.SplitFunc;
    function get__split():stdgo._internal.bufio.Bufio.SplitFunc return this._split;
    function set__split(v:stdgo._internal.bufio.Bufio.SplitFunc):stdgo._internal.bufio.Bufio.SplitFunc {
        this._split = v;
        return v;
    }
    public var _maxTokenSize(get, set) : StdTypes.Int;
    function get__maxTokenSize():StdTypes.Int return this._maxTokenSize;
    function set__maxTokenSize(v:StdTypes.Int):StdTypes.Int {
        this._maxTokenSize = v;
        return v;
    }
    public var _token(get, set) : Array<std.UInt>;
    function get__token():Array<std.UInt> return [for (i in this._token) i];
    function set__token(v:Array<std.UInt>):Array<std.UInt> {
        this._token = ([for (i in v) i] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public var _buf(get, set) : Array<std.UInt>;
    function get__buf():Array<std.UInt> return [for (i in this._buf) i];
    function set__buf(v:Array<std.UInt>):Array<std.UInt> {
        this._buf = ([for (i in v) i] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
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
    public var _err(get, set) : stdgo.Error;
    function get__err():stdgo.Error return this._err;
    function set__err(v:stdgo.Error):stdgo.Error {
        this._err = v;
        return v;
    }
    public var _empties(get, set) : StdTypes.Int;
    function get__empties():StdTypes.Int return this._empties;
    function set__empties(v:StdTypes.Int):StdTypes.Int {
        this._empties = v;
        return v;
    }
    public var _scanCalled(get, set) : Bool;
    function get__scanCalled():Bool return this._scanCalled;
    function set__scanCalled(v:Bool):Bool {
        this._scanCalled = v;
        return v;
    }
    public var _done(get, set) : Bool;
    function get__done():Bool return this._done;
    function set__done(v:Bool):Bool {
        this._done = v;
        return v;
    }
    public function new(?_r:stdgo._internal.io.Io.Reader, ?_split:stdgo._internal.bufio.Bufio.SplitFunc, ?_maxTokenSize:StdTypes.Int, ?_token:Array<std.UInt>, ?_buf:Array<std.UInt>, ?_start:StdTypes.Int, ?_end:StdTypes.Int, ?_err:stdgo.Error, ?_empties:StdTypes.Int, ?_scanCalled:Bool, ?_done:Bool) this = new stdgo._internal.bufio.Bufio.Scanner(
_r,
_split,
_maxTokenSize,
([for (i in _token) i] : stdgo.Slice<stdgo.GoUInt8>),
([for (i in _buf) i] : stdgo.Slice<stdgo.GoUInt8>),
_start,
_end,
_err,
_empties,
_scanCalled,
_done);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
typedef SplitFunc = stdgo._internal.bufio.Bufio.SplitFunc;
class Bufio {
    /**
        NewReaderSize returns a new Reader whose buffer has at least the specified
        size. If the argument io.Reader is already a Reader with large enough
        size, it returns the underlying Reader.
    **/
    static public function newReaderSize(rd:stdgo._internal.io.Io.Reader, size:StdTypes.Int):Reader {
        return stdgo._internal.bufio.Bufio.newReaderSize(rd, size);
    }
    /**
        NewReader returns a new Reader whose buffer has the default size.
    **/
    static public function newReader(rd:stdgo._internal.io.Io.Reader):Reader {
        return stdgo._internal.bufio.Bufio.newReader(rd);
    }
    /**
        NewWriterSize returns a new Writer whose buffer has at least the specified
        size. If the argument io.Writer is already a Writer with large enough
        size, it returns the underlying Writer.
    **/
    static public function newWriterSize(w:stdgo._internal.io.Io.Writer, size:StdTypes.Int):Writer {
        return stdgo._internal.bufio.Bufio.newWriterSize(w, size);
    }
    /**
        NewWriter returns a new Writer whose buffer has the default size.
        If the argument io.Writer is already a Writer with large enough buffer size,
        it returns the underlying Writer.
    **/
    static public function newWriter(w:stdgo._internal.io.Io.Writer):Writer {
        return stdgo._internal.bufio.Bufio.newWriter(w);
    }
    /**
        NewReadWriter allocates a new ReadWriter that dispatches to r and w.
    **/
    static public function newReadWriter(r:Reader, w:Writer):ReadWriter {
        return stdgo._internal.bufio.Bufio.newReadWriter(r, w);
    }
    /**
        NewScanner returns a new Scanner to read from r.
        The split function defaults to ScanLines.
    **/
    static public function newScanner(r:stdgo._internal.io.Io.Reader):Scanner {
        return stdgo._internal.bufio.Bufio.newScanner(r);
    }
    /**
        ScanBytes is a split function for a Scanner that returns each byte as a token.
    **/
    static public function scanBytes(data:Array<StdTypes.Int>, atEOF:Bool):stdgo.Tuple.Tuple3<StdTypes.Int, Array<StdTypes.Int>, stdgo.Error> {
        final data = ([for (i in data) i] : stdgo.Slice<stdgo.GoByte>);
        return {
            final obj = stdgo._internal.bufio.Bufio.scanBytes(data, atEOF);
            { _0 : obj._0, _1 : [for (i in obj._1) i], _2 : obj._2 };
        };
    }
    /**
        ScanRunes is a split function for a Scanner that returns each
        UTF-8-encoded rune as a token. The sequence of runes returned is
        equivalent to that from a range loop over the input as a string, which
        means that erroneous UTF-8 encodings translate to U+FFFD = "\xef\xbf\xbd".
        Because of the Scan interface, this makes it impossible for the client to
        distinguish correctly encoded replacement runes from encoding errors.
    **/
    static public function scanRunes(data:Array<StdTypes.Int>, atEOF:Bool):stdgo.Tuple.Tuple3<StdTypes.Int, Array<StdTypes.Int>, stdgo.Error> {
        final data = ([for (i in data) i] : stdgo.Slice<stdgo.GoByte>);
        return {
            final obj = stdgo._internal.bufio.Bufio.scanRunes(data, atEOF);
            { _0 : obj._0, _1 : [for (i in obj._1) i], _2 : obj._2 };
        };
    }
    /**
        ScanLines is a split function for a Scanner that returns each line of
        text, stripped of any trailing end-of-line marker. The returned line may
        be empty. The end-of-line marker is one optional carriage return followed
        by one mandatory newline. In regular expression notation, it is `\r?\n`.
        The last non-empty line of input will be returned even if it has no
        newline.
    **/
    static public function scanLines(data:Array<StdTypes.Int>, atEOF:Bool):stdgo.Tuple.Tuple3<StdTypes.Int, Array<StdTypes.Int>, stdgo.Error> {
        final data = ([for (i in data) i] : stdgo.Slice<stdgo.GoByte>);
        return {
            final obj = stdgo._internal.bufio.Bufio.scanLines(data, atEOF);
            { _0 : obj._0, _1 : [for (i in obj._1) i], _2 : obj._2 };
        };
    }
    /**
        ScanWords is a split function for a Scanner that returns each
        space-separated word of text, with surrounding spaces deleted. It will
        never return an empty string. The definition of space is set by
        unicode.IsSpace.
    **/
    static public function scanWords(data:Array<StdTypes.Int>, atEOF:Bool):stdgo.Tuple.Tuple3<StdTypes.Int, Array<StdTypes.Int>, stdgo.Error> {
        final data = ([for (i in data) i] : stdgo.Slice<stdgo.GoByte>);
        return {
            final obj = stdgo._internal.bufio.Bufio.scanWords(data, atEOF);
            { _0 : obj._0, _1 : [for (i in obj._1) i], _2 : obj._2 };
        };
    }
}
