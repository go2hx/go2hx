package stdgo.bufio;
final defaultBufSize : haxe.UInt64 = stdgo._internal.bufio.Bufio_defaultbufsize.defaultBufSize;
final maxScanTokenSize : haxe.UInt64 = stdgo._internal.bufio.Bufio_maxscantokensize.maxScanTokenSize;
var errInvalidUnreadByte(get, set) : stdgo.Error;
private function get_errInvalidUnreadByte():stdgo.Error return stdgo._internal.bufio.Bufio_errinvalidunreadbyte.errInvalidUnreadByte;
private function set_errInvalidUnreadByte(v:stdgo.Error):stdgo.Error {
        stdgo._internal.bufio.Bufio_errinvalidunreadbyte.errInvalidUnreadByte = (v : stdgo.Error);
        return v;
    }
var errInvalidUnreadRune(get, set) : stdgo.Error;
private function get_errInvalidUnreadRune():stdgo.Error return stdgo._internal.bufio.Bufio_errinvalidunreadrune.errInvalidUnreadRune;
private function set_errInvalidUnreadRune(v:stdgo.Error):stdgo.Error {
        stdgo._internal.bufio.Bufio_errinvalidunreadrune.errInvalidUnreadRune = (v : stdgo.Error);
        return v;
    }
var errBufferFull(get, set) : stdgo.Error;
private function get_errBufferFull():stdgo.Error return stdgo._internal.bufio.Bufio_errbufferfull.errBufferFull;
private function set_errBufferFull(v:stdgo.Error):stdgo.Error {
        stdgo._internal.bufio.Bufio_errbufferfull.errBufferFull = (v : stdgo.Error);
        return v;
    }
var errNegativeCount(get, set) : stdgo.Error;
private function get_errNegativeCount():stdgo.Error return stdgo._internal.bufio.Bufio_errnegativecount.errNegativeCount;
private function set_errNegativeCount(v:stdgo.Error):stdgo.Error {
        stdgo._internal.bufio.Bufio_errnegativecount.errNegativeCount = (v : stdgo.Error);
        return v;
    }
var errTooLong(get, set) : stdgo.Error;
private function get_errTooLong():stdgo.Error return stdgo._internal.bufio.Bufio_errtoolong.errTooLong;
private function set_errTooLong(v:stdgo.Error):stdgo.Error {
        stdgo._internal.bufio.Bufio_errtoolong.errTooLong = (v : stdgo.Error);
        return v;
    }
var errNegativeAdvance(get, set) : stdgo.Error;
private function get_errNegativeAdvance():stdgo.Error return stdgo._internal.bufio.Bufio_errnegativeadvance.errNegativeAdvance;
private function set_errNegativeAdvance(v:stdgo.Error):stdgo.Error {
        stdgo._internal.bufio.Bufio_errnegativeadvance.errNegativeAdvance = (v : stdgo.Error);
        return v;
    }
var errAdvanceTooFar(get, set) : stdgo.Error;
private function get_errAdvanceTooFar():stdgo.Error return stdgo._internal.bufio.Bufio_erradvancetoofar.errAdvanceTooFar;
private function set_errAdvanceTooFar(v:stdgo.Error):stdgo.Error {
        stdgo._internal.bufio.Bufio_erradvancetoofar.errAdvanceTooFar = (v : stdgo.Error);
        return v;
    }
var errBadReadCount(get, set) : stdgo.Error;
private function get_errBadReadCount():stdgo.Error return stdgo._internal.bufio.Bufio_errbadreadcount.errBadReadCount;
private function set_errBadReadCount(v:stdgo.Error):stdgo.Error {
        stdgo._internal.bufio.Bufio_errbadreadcount.errBadReadCount = (v : stdgo.Error);
        return v;
    }
var errFinalToken(get, set) : stdgo.Error;
private function get_errFinalToken():stdgo.Error return stdgo._internal.bufio.Bufio_errfinaltoken.errFinalToken;
private function set_errFinalToken(v:stdgo.Error):stdgo.Error {
        stdgo._internal.bufio.Bufio_errfinaltoken.errFinalToken = (v : stdgo.Error);
        return v;
    }
var isSpace(get, set) : StdTypes.Int -> Bool;
private function get_isSpace():StdTypes.Int -> Bool return _0 -> stdgo._internal.bufio.Bufio_isspace.isSpace(_0);
private function set_isSpace(v:StdTypes.Int -> Bool):StdTypes.Int -> Bool {
        stdgo._internal.bufio.Bufio_isspace.isSpace = _0 -> v((_0 : stdgo.GoInt32));
        return v;
    }
@:structInit @:using(stdgo.bufio.Bufio.Reader_static_extension) abstract Reader(stdgo._internal.bufio.Bufio_reader.Reader) from stdgo._internal.bufio.Bufio_reader.Reader to stdgo._internal.bufio.Bufio_reader.Reader {
    public var _buf(get, set) : Array<std.UInt>;
    function get__buf():Array<std.UInt> return [for (i in this._buf) i];
    function set__buf(v:Array<std.UInt>):Array<std.UInt> {
        this._buf = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public var _rd(get, set) : stdgo._internal.io.Io_reader.Reader;
    function get__rd():stdgo._internal.io.Io_reader.Reader return this._rd;
    function set__rd(v:stdgo._internal.io.Io_reader.Reader):stdgo._internal.io.Io_reader.Reader {
        this._rd = v;
        return v;
    }
    public var _r(get, set) : StdTypes.Int;
    function get__r():StdTypes.Int return this._r;
    function set__r(v:StdTypes.Int):StdTypes.Int {
        this._r = (v : stdgo.GoInt);
        return v;
    }
    public var _w(get, set) : StdTypes.Int;
    function get__w():StdTypes.Int return this._w;
    function set__w(v:StdTypes.Int):StdTypes.Int {
        this._w = (v : stdgo.GoInt);
        return v;
    }
    public var _err(get, set) : stdgo.Error;
    function get__err():stdgo.Error return this._err;
    function set__err(v:stdgo.Error):stdgo.Error {
        this._err = (v : stdgo.Error);
        return v;
    }
    public var _lastByte(get, set) : StdTypes.Int;
    function get__lastByte():StdTypes.Int return this._lastByte;
    function set__lastByte(v:StdTypes.Int):StdTypes.Int {
        this._lastByte = (v : stdgo.GoInt);
        return v;
    }
    public var _lastRuneSize(get, set) : StdTypes.Int;
    function get__lastRuneSize():StdTypes.Int return this._lastRuneSize;
    function set__lastRuneSize(v:StdTypes.Int):StdTypes.Int {
        this._lastRuneSize = (v : stdgo.GoInt);
        return v;
    }
    public function new(?_buf:Array<std.UInt>, ?_rd:stdgo._internal.io.Io_reader.Reader, ?_r:StdTypes.Int, ?_w:StdTypes.Int, ?_err:stdgo.Error, ?_lastByte:StdTypes.Int, ?_lastRuneSize:StdTypes.Int) this = new stdgo._internal.bufio.Bufio_reader.Reader(([for (i in _buf) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>), _rd, (_r : stdgo.GoInt), (_w : stdgo.GoInt), (_err : stdgo.Error), (_lastByte : stdgo.GoInt), (_lastRuneSize : stdgo.GoInt));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.bufio.Bufio.Writer_static_extension) abstract Writer(stdgo._internal.bufio.Bufio_writer.Writer) from stdgo._internal.bufio.Bufio_writer.Writer to stdgo._internal.bufio.Bufio_writer.Writer {
    public var _err(get, set) : stdgo.Error;
    function get__err():stdgo.Error return this._err;
    function set__err(v:stdgo.Error):stdgo.Error {
        this._err = (v : stdgo.Error);
        return v;
    }
    public var _buf(get, set) : Array<std.UInt>;
    function get__buf():Array<std.UInt> return [for (i in this._buf) i];
    function set__buf(v:Array<std.UInt>):Array<std.UInt> {
        this._buf = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public var _n(get, set) : StdTypes.Int;
    function get__n():StdTypes.Int return this._n;
    function set__n(v:StdTypes.Int):StdTypes.Int {
        this._n = (v : stdgo.GoInt);
        return v;
    }
    public var _wr(get, set) : stdgo._internal.io.Io_writer.Writer;
    function get__wr():stdgo._internal.io.Io_writer.Writer return this._wr;
    function set__wr(v:stdgo._internal.io.Io_writer.Writer):stdgo._internal.io.Io_writer.Writer {
        this._wr = v;
        return v;
    }
    public function new(?_err:stdgo.Error, ?_buf:Array<std.UInt>, ?_n:StdTypes.Int, ?_wr:stdgo._internal.io.Io_writer.Writer) this = new stdgo._internal.bufio.Bufio_writer.Writer((_err : stdgo.Error), ([for (i in _buf) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>), (_n : stdgo.GoInt), _wr);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.bufio.Bufio.ReadWriter_static_extension) abstract ReadWriter(stdgo._internal.bufio.Bufio_readwriter.ReadWriter) from stdgo._internal.bufio.Bufio_readwriter.ReadWriter to stdgo._internal.bufio.Bufio_readwriter.ReadWriter {
    public var reader(get, set) : Reader;
    function get_reader():Reader return this.reader;
    function set_reader(v:Reader):Reader {
        this.reader = (v : stdgo.Ref<stdgo._internal.bufio.Bufio_reader.Reader>);
        return v;
    }
    public var writer(get, set) : Writer;
    function get_writer():Writer return this.writer;
    function set_writer(v:Writer):Writer {
        this.writer = (v : stdgo.Ref<stdgo._internal.bufio.Bufio_writer.Writer>);
        return v;
    }
    public function new(?reader:Reader, ?writer:Writer) this = new stdgo._internal.bufio.Bufio_readwriter.ReadWriter((reader : stdgo.Ref<stdgo._internal.bufio.Bufio_reader.Reader>), (writer : stdgo.Ref<stdgo._internal.bufio.Bufio_writer.Writer>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.bufio.Bufio.Scanner_static_extension) abstract Scanner(stdgo._internal.bufio.Bufio_scanner.Scanner) from stdgo._internal.bufio.Bufio_scanner.Scanner to stdgo._internal.bufio.Bufio_scanner.Scanner {
    public var _r(get, set) : stdgo._internal.io.Io_reader.Reader;
    function get__r():stdgo._internal.io.Io_reader.Reader return this._r;
    function set__r(v:stdgo._internal.io.Io_reader.Reader):stdgo._internal.io.Io_reader.Reader {
        this._r = v;
        return v;
    }
    public var _split(get, set) : SplitFunc;
    function get__split():SplitFunc return this._split;
    function set__split(v:SplitFunc):SplitFunc {
        this._split = v;
        return v;
    }
    public var _maxTokenSize(get, set) : StdTypes.Int;
    function get__maxTokenSize():StdTypes.Int return this._maxTokenSize;
    function set__maxTokenSize(v:StdTypes.Int):StdTypes.Int {
        this._maxTokenSize = (v : stdgo.GoInt);
        return v;
    }
    public var _token(get, set) : Array<std.UInt>;
    function get__token():Array<std.UInt> return [for (i in this._token) i];
    function set__token(v:Array<std.UInt>):Array<std.UInt> {
        this._token = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public var _buf(get, set) : Array<std.UInt>;
    function get__buf():Array<std.UInt> return [for (i in this._buf) i];
    function set__buf(v:Array<std.UInt>):Array<std.UInt> {
        this._buf = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
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
    public var _err(get, set) : stdgo.Error;
    function get__err():stdgo.Error return this._err;
    function set__err(v:stdgo.Error):stdgo.Error {
        this._err = (v : stdgo.Error);
        return v;
    }
    public var _empties(get, set) : StdTypes.Int;
    function get__empties():StdTypes.Int return this._empties;
    function set__empties(v:StdTypes.Int):StdTypes.Int {
        this._empties = (v : stdgo.GoInt);
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
    public function new(?_r:stdgo._internal.io.Io_reader.Reader, ?_split:SplitFunc, ?_maxTokenSize:StdTypes.Int, ?_token:Array<std.UInt>, ?_buf:Array<std.UInt>, ?_start:StdTypes.Int, ?_end:StdTypes.Int, ?_err:stdgo.Error, ?_empties:StdTypes.Int, ?_scanCalled:Bool, ?_done:Bool) this = new stdgo._internal.bufio.Bufio_scanner.Scanner(
_r,
_split,
(_maxTokenSize : stdgo.GoInt),
([for (i in _token) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>),
([for (i in _buf) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>),
(_start : stdgo.GoInt),
(_end : stdgo.GoInt),
(_err : stdgo.Error),
(_empties : stdgo.GoInt),
_scanCalled,
_done);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
typedef SplitFunc = stdgo._internal.bufio.Bufio_splitfunc.SplitFunc;
typedef ReaderPointer = stdgo._internal.bufio.Bufio_readerpointer.ReaderPointer;
class Reader_static_extension {
    static public function _writeBuf(_b:Reader, _w:stdgo._internal.io.Io_writer.Writer):stdgo.Tuple<haxe.Int64, stdgo.Error> {
        final _b = (_b : stdgo.Ref<stdgo._internal.bufio.Bufio_reader.Reader>);
        return {
            final obj = stdgo._internal.bufio.Bufio_reader_static_extension.Reader_static_extension._writeBuf(_b, _w);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function writeTo(_b:Reader, _w:stdgo._internal.io.Io_writer.Writer):stdgo.Tuple<haxe.Int64, stdgo.Error> {
        final _b = (_b : stdgo.Ref<stdgo._internal.bufio.Bufio_reader.Reader>);
        return {
            final obj = stdgo._internal.bufio.Bufio_reader_static_extension.Reader_static_extension.writeTo(_b, _w);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function readString(_b:Reader, _delim:std.UInt):stdgo.Tuple<String, stdgo.Error> {
        final _b = (_b : stdgo.Ref<stdgo._internal.bufio.Bufio_reader.Reader>);
        final _delim = (_delim : stdgo.GoUInt8);
        return {
            final obj = stdgo._internal.bufio.Bufio_reader_static_extension.Reader_static_extension.readString(_b, _delim);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function readBytes(_b:Reader, _delim:std.UInt):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        final _b = (_b : stdgo.Ref<stdgo._internal.bufio.Bufio_reader.Reader>);
        final _delim = (_delim : stdgo.GoUInt8);
        return {
            final obj = stdgo._internal.bufio.Bufio_reader_static_extension.Reader_static_extension.readBytes(_b, _delim);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    static public function _collectFragments(_b:Reader, _delim:std.UInt):stdgo.Tuple.Tuple4<Array<Array<std.UInt>>, Array<std.UInt>, StdTypes.Int, stdgo.Error> {
        final _b = (_b : stdgo.Ref<stdgo._internal.bufio.Bufio_reader.Reader>);
        final _delim = (_delim : stdgo.GoUInt8);
        return {
            final obj = stdgo._internal.bufio.Bufio_reader_static_extension.Reader_static_extension._collectFragments(_b, _delim);
            { _0 : [for (i in obj._0) [for (i in i) i]], _1 : [for (i in obj._1) i], _2 : obj._2, _3 : obj._3 };
        };
    }
    static public function readLine(_b:Reader):stdgo.Tuple.Tuple3<Array<std.UInt>, Bool, stdgo.Error> {
        final _b = (_b : stdgo.Ref<stdgo._internal.bufio.Bufio_reader.Reader>);
        return {
            final obj = stdgo._internal.bufio.Bufio_reader_static_extension.Reader_static_extension.readLine(_b);
            { _0 : [for (i in obj._0) i], _1 : obj._1, _2 : obj._2 };
        };
    }
    static public function readSlice(_b:Reader, _delim:std.UInt):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        final _b = (_b : stdgo.Ref<stdgo._internal.bufio.Bufio_reader.Reader>);
        final _delim = (_delim : stdgo.GoUInt8);
        return {
            final obj = stdgo._internal.bufio.Bufio_reader_static_extension.Reader_static_extension.readSlice(_b, _delim);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    static public function buffered(_b:Reader):StdTypes.Int {
        final _b = (_b : stdgo.Ref<stdgo._internal.bufio.Bufio_reader.Reader>);
        return stdgo._internal.bufio.Bufio_reader_static_extension.Reader_static_extension.buffered(_b);
    }
    static public function unreadRune(_b:Reader):stdgo.Error {
        final _b = (_b : stdgo.Ref<stdgo._internal.bufio.Bufio_reader.Reader>);
        return stdgo._internal.bufio.Bufio_reader_static_extension.Reader_static_extension.unreadRune(_b);
    }
    static public function readRune(_b:Reader):stdgo.Tuple.Tuple3<StdTypes.Int, StdTypes.Int, stdgo.Error> {
        final _b = (_b : stdgo.Ref<stdgo._internal.bufio.Bufio_reader.Reader>);
        return {
            final obj = stdgo._internal.bufio.Bufio_reader_static_extension.Reader_static_extension.readRune(_b);
            { _0 : obj._0, _1 : obj._1, _2 : obj._2 };
        };
    }
    static public function unreadByte(_b:Reader):stdgo.Error {
        final _b = (_b : stdgo.Ref<stdgo._internal.bufio.Bufio_reader.Reader>);
        return stdgo._internal.bufio.Bufio_reader_static_extension.Reader_static_extension.unreadByte(_b);
    }
    static public function readByte(_b:Reader):stdgo.Tuple<std.UInt, stdgo.Error> {
        final _b = (_b : stdgo.Ref<stdgo._internal.bufio.Bufio_reader.Reader>);
        return {
            final obj = stdgo._internal.bufio.Bufio_reader_static_extension.Reader_static_extension.readByte(_b);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function read(_b:Reader, _p:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _b = (_b : stdgo.Ref<stdgo._internal.bufio.Bufio_reader.Reader>);
        final _p = ([for (i in _p) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.bufio.Bufio_reader_static_extension.Reader_static_extension.read(_b, _p);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function discard(_b:Reader, _n:StdTypes.Int):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _b = (_b : stdgo.Ref<stdgo._internal.bufio.Bufio_reader.Reader>);
        final _n = (_n : stdgo.GoInt);
        return {
            final obj = stdgo._internal.bufio.Bufio_reader_static_extension.Reader_static_extension.discard(_b, _n);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function peek(_b:Reader, _n:StdTypes.Int):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        final _b = (_b : stdgo.Ref<stdgo._internal.bufio.Bufio_reader.Reader>);
        final _n = (_n : stdgo.GoInt);
        return {
            final obj = stdgo._internal.bufio.Bufio_reader_static_extension.Reader_static_extension.peek(_b, _n);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    static public function _readErr(_b:Reader):stdgo.Error {
        final _b = (_b : stdgo.Ref<stdgo._internal.bufio.Bufio_reader.Reader>);
        return stdgo._internal.bufio.Bufio_reader_static_extension.Reader_static_extension._readErr(_b);
    }
    static public function _fill(_b:Reader):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.bufio.Bufio_reader.Reader>);
        stdgo._internal.bufio.Bufio_reader_static_extension.Reader_static_extension._fill(_b);
    }
    static public function _reset(_b:Reader, _buf:Array<std.UInt>, _r:stdgo._internal.io.Io_reader.Reader):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.bufio.Bufio_reader.Reader>);
        final _buf = ([for (i in _buf) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        stdgo._internal.bufio.Bufio_reader_static_extension.Reader_static_extension._reset(_b, _buf, _r);
    }
    static public function reset(_b:Reader, _r:stdgo._internal.io.Io_reader.Reader):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.bufio.Bufio_reader.Reader>);
        stdgo._internal.bufio.Bufio_reader_static_extension.Reader_static_extension.reset(_b, _r);
    }
    static public function size(_b:Reader):StdTypes.Int {
        final _b = (_b : stdgo.Ref<stdgo._internal.bufio.Bufio_reader.Reader>);
        return stdgo._internal.bufio.Bufio_reader_static_extension.Reader_static_extension.size(_b);
    }
}
typedef WriterPointer = stdgo._internal.bufio.Bufio_writerpointer.WriterPointer;
class Writer_static_extension {
    static public function readFrom(_b:Writer, _r:stdgo._internal.io.Io_reader.Reader):stdgo.Tuple<haxe.Int64, stdgo.Error> {
        final _b = (_b : stdgo.Ref<stdgo._internal.bufio.Bufio_writer.Writer>);
        return {
            final obj = stdgo._internal.bufio.Bufio_writer_static_extension.Writer_static_extension.readFrom(_b, _r);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function writeString(_b:Writer, _s:String):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _b = (_b : stdgo.Ref<stdgo._internal.bufio.Bufio_writer.Writer>);
        final _s = (_s : stdgo.GoString);
        return {
            final obj = stdgo._internal.bufio.Bufio_writer_static_extension.Writer_static_extension.writeString(_b, _s);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function writeRune(_b:Writer, _r:StdTypes.Int):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _b = (_b : stdgo.Ref<stdgo._internal.bufio.Bufio_writer.Writer>);
        final _r = (_r : stdgo.GoInt32);
        return {
            final obj = stdgo._internal.bufio.Bufio_writer_static_extension.Writer_static_extension.writeRune(_b, _r);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function writeByte(_b:Writer, _c:std.UInt):stdgo.Error {
        final _b = (_b : stdgo.Ref<stdgo._internal.bufio.Bufio_writer.Writer>);
        final _c = (_c : stdgo.GoUInt8);
        return stdgo._internal.bufio.Bufio_writer_static_extension.Writer_static_extension.writeByte(_b, _c);
    }
    static public function write(_b:Writer, _p:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _b = (_b : stdgo.Ref<stdgo._internal.bufio.Bufio_writer.Writer>);
        final _p = ([for (i in _p) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.bufio.Bufio_writer_static_extension.Writer_static_extension.write(_b, _p);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function buffered(_b:Writer):StdTypes.Int {
        final _b = (_b : stdgo.Ref<stdgo._internal.bufio.Bufio_writer.Writer>);
        return stdgo._internal.bufio.Bufio_writer_static_extension.Writer_static_extension.buffered(_b);
    }
    static public function availableBuffer(_b:Writer):Array<std.UInt> {
        final _b = (_b : stdgo.Ref<stdgo._internal.bufio.Bufio_writer.Writer>);
        return [for (i in stdgo._internal.bufio.Bufio_writer_static_extension.Writer_static_extension.availableBuffer(_b)) i];
    }
    static public function available(_b:Writer):StdTypes.Int {
        final _b = (_b : stdgo.Ref<stdgo._internal.bufio.Bufio_writer.Writer>);
        return stdgo._internal.bufio.Bufio_writer_static_extension.Writer_static_extension.available(_b);
    }
    static public function flush(_b:Writer):stdgo.Error {
        final _b = (_b : stdgo.Ref<stdgo._internal.bufio.Bufio_writer.Writer>);
        return stdgo._internal.bufio.Bufio_writer_static_extension.Writer_static_extension.flush(_b);
    }
    static public function reset(_b:Writer, _w:stdgo._internal.io.Io_writer.Writer):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.bufio.Bufio_writer.Writer>);
        stdgo._internal.bufio.Bufio_writer_static_extension.Writer_static_extension.reset(_b, _w);
    }
    static public function size(_b:Writer):StdTypes.Int {
        final _b = (_b : stdgo.Ref<stdgo._internal.bufio.Bufio_writer.Writer>);
        return stdgo._internal.bufio.Bufio_writer_static_extension.Writer_static_extension.size(_b);
    }
}
typedef ReadWriterPointer = stdgo._internal.bufio.Bufio_readwriterpointer.ReadWriterPointer;
class ReadWriter_static_extension {
    public static function _writeBuf(__self__:stdgo._internal.bufio.Bufio_readwriter.ReadWriter, _0:stdgo._internal.io.Io_writer.Writer):stdgo.Tuple<haxe.Int64, stdgo.Error> {
        return {
            final obj = stdgo._internal.bufio.Bufio_readwriter_static_extension.ReadWriter_static_extension._writeBuf(__self__, _0);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    public static function _reset(__self__:stdgo._internal.bufio.Bufio_readwriter.ReadWriter, _0:Array<std.UInt>, _1:stdgo._internal.io.Io_reader.Reader):Void {
        final _0 = ([for (i in _0) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        stdgo._internal.bufio.Bufio_readwriter_static_extension.ReadWriter_static_extension._reset(__self__, _0, _1);
    }
    public static function _readErr(__self__:stdgo._internal.bufio.Bufio_readwriter.ReadWriter):stdgo.Error {
        return stdgo._internal.bufio.Bufio_readwriter_static_extension.ReadWriter_static_extension._readErr(__self__);
    }
    public static function _fill(__self__:stdgo._internal.bufio.Bufio_readwriter.ReadWriter):Void {
        stdgo._internal.bufio.Bufio_readwriter_static_extension.ReadWriter_static_extension._fill(__self__);
    }
    public static function _collectFragments(__self__:stdgo._internal.bufio.Bufio_readwriter.ReadWriter, _0:std.UInt):stdgo.Tuple.Tuple4<Array<Array<std.UInt>>, Array<std.UInt>, StdTypes.Int, stdgo.Error> {
        final _0 = (_0 : stdgo.GoUInt8);
        return {
            final obj = stdgo._internal.bufio.Bufio_readwriter_static_extension.ReadWriter_static_extension._collectFragments(__self__, _0);
            { _0 : [for (i in obj._0) [for (i in i) i]], _1 : [for (i in obj._1) i], _2 : obj._2, _3 : obj._3 };
        };
    }
    public static function writeTo(__self__:stdgo._internal.bufio.Bufio_readwriter.ReadWriter, _0:stdgo._internal.io.Io_writer.Writer):stdgo.Tuple<haxe.Int64, stdgo.Error> {
        return {
            final obj = stdgo._internal.bufio.Bufio_readwriter_static_extension.ReadWriter_static_extension.writeTo(__self__, _0);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    public static function writeString(__self__:stdgo._internal.bufio.Bufio_readwriter.ReadWriter, _0:String):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _0 = (_0 : stdgo.GoString);
        return {
            final obj = stdgo._internal.bufio.Bufio_readwriter_static_extension.ReadWriter_static_extension.writeString(__self__, _0);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    public static function writeRune(__self__:stdgo._internal.bufio.Bufio_readwriter.ReadWriter, _0:StdTypes.Int):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _0 = (_0 : stdgo.GoInt32);
        return {
            final obj = stdgo._internal.bufio.Bufio_readwriter_static_extension.ReadWriter_static_extension.writeRune(__self__, _0);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    public static function writeByte(__self__:stdgo._internal.bufio.Bufio_readwriter.ReadWriter, _0:std.UInt):stdgo.Error {
        final _0 = (_0 : stdgo.GoUInt8);
        return stdgo._internal.bufio.Bufio_readwriter_static_extension.ReadWriter_static_extension.writeByte(__self__, _0);
    }
    public static function write(__self__:stdgo._internal.bufio.Bufio_readwriter.ReadWriter, _0:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _0 = ([for (i in _0) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.bufio.Bufio_readwriter_static_extension.ReadWriter_static_extension.write(__self__, _0);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    public static function unreadRune(__self__:stdgo._internal.bufio.Bufio_readwriter.ReadWriter):stdgo.Error {
        return stdgo._internal.bufio.Bufio_readwriter_static_extension.ReadWriter_static_extension.unreadRune(__self__);
    }
    public static function unreadByte(__self__:stdgo._internal.bufio.Bufio_readwriter.ReadWriter):stdgo.Error {
        return stdgo._internal.bufio.Bufio_readwriter_static_extension.ReadWriter_static_extension.unreadByte(__self__);
    }
    public static function readString(__self__:stdgo._internal.bufio.Bufio_readwriter.ReadWriter, _0:std.UInt):stdgo.Tuple<String, stdgo.Error> {
        final _0 = (_0 : stdgo.GoUInt8);
        return {
            final obj = stdgo._internal.bufio.Bufio_readwriter_static_extension.ReadWriter_static_extension.readString(__self__, _0);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    public static function readSlice(__self__:stdgo._internal.bufio.Bufio_readwriter.ReadWriter, _0:std.UInt):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        final _0 = (_0 : stdgo.GoUInt8);
        return {
            final obj = stdgo._internal.bufio.Bufio_readwriter_static_extension.ReadWriter_static_extension.readSlice(__self__, _0);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    public static function readRune(__self__:stdgo._internal.bufio.Bufio_readwriter.ReadWriter):stdgo.Tuple.Tuple3<StdTypes.Int, StdTypes.Int, stdgo.Error> {
        return {
            final obj = stdgo._internal.bufio.Bufio_readwriter_static_extension.ReadWriter_static_extension.readRune(__self__);
            { _0 : obj._0, _1 : obj._1, _2 : obj._2 };
        };
    }
    public static function readLine(__self__:stdgo._internal.bufio.Bufio_readwriter.ReadWriter):stdgo.Tuple.Tuple3<Array<std.UInt>, Bool, stdgo.Error> {
        return {
            final obj = stdgo._internal.bufio.Bufio_readwriter_static_extension.ReadWriter_static_extension.readLine(__self__);
            { _0 : [for (i in obj._0) i], _1 : obj._1, _2 : obj._2 };
        };
    }
    public static function readFrom(__self__:stdgo._internal.bufio.Bufio_readwriter.ReadWriter, _0:stdgo._internal.io.Io_reader.Reader):stdgo.Tuple<haxe.Int64, stdgo.Error> {
        return {
            final obj = stdgo._internal.bufio.Bufio_readwriter_static_extension.ReadWriter_static_extension.readFrom(__self__, _0);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    public static function readBytes(__self__:stdgo._internal.bufio.Bufio_readwriter.ReadWriter, _0:std.UInt):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        final _0 = (_0 : stdgo.GoUInt8);
        return {
            final obj = stdgo._internal.bufio.Bufio_readwriter_static_extension.ReadWriter_static_extension.readBytes(__self__, _0);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    public static function readByte(__self__:stdgo._internal.bufio.Bufio_readwriter.ReadWriter):stdgo.Tuple<std.UInt, stdgo.Error> {
        return {
            final obj = stdgo._internal.bufio.Bufio_readwriter_static_extension.ReadWriter_static_extension.readByte(__self__);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    public static function read(__self__:stdgo._internal.bufio.Bufio_readwriter.ReadWriter, _0:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _0 = ([for (i in _0) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.bufio.Bufio_readwriter_static_extension.ReadWriter_static_extension.read(__self__, _0);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    public static function peek(__self__:stdgo._internal.bufio.Bufio_readwriter.ReadWriter, _0:StdTypes.Int):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        final _0 = (_0 : stdgo.GoInt);
        return {
            final obj = stdgo._internal.bufio.Bufio_readwriter_static_extension.ReadWriter_static_extension.peek(__self__, _0);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    public static function flush(__self__:stdgo._internal.bufio.Bufio_readwriter.ReadWriter):stdgo.Error {
        return stdgo._internal.bufio.Bufio_readwriter_static_extension.ReadWriter_static_extension.flush(__self__);
    }
    public static function discard(__self__:stdgo._internal.bufio.Bufio_readwriter.ReadWriter, _0:StdTypes.Int):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _0 = (_0 : stdgo.GoInt);
        return {
            final obj = stdgo._internal.bufio.Bufio_readwriter_static_extension.ReadWriter_static_extension.discard(__self__, _0);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    public static function availableBuffer(__self__:stdgo._internal.bufio.Bufio_readwriter.ReadWriter):Array<std.UInt> {
        return [for (i in stdgo._internal.bufio.Bufio_readwriter_static_extension.ReadWriter_static_extension.availableBuffer(__self__)) i];
    }
    public static function available(__self__:stdgo._internal.bufio.Bufio_readwriter.ReadWriter):StdTypes.Int {
        return stdgo._internal.bufio.Bufio_readwriter_static_extension.ReadWriter_static_extension.available(__self__);
    }
}
typedef ScannerPointer = stdgo._internal.bufio.Bufio_scannerpointer.ScannerPointer;
class Scanner_static_extension {
    static public function split(_s:Scanner, _split:SplitFunc):Void {
        final _s = (_s : stdgo.Ref<stdgo._internal.bufio.Bufio_scanner.Scanner>);
        stdgo._internal.bufio.Bufio_scanner_static_extension.Scanner_static_extension.split(_s, _split);
    }
    static public function buffer(_s:Scanner, _buf:Array<std.UInt>, _max:StdTypes.Int):Void {
        final _s = (_s : stdgo.Ref<stdgo._internal.bufio.Bufio_scanner.Scanner>);
        final _buf = ([for (i in _buf) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _max = (_max : stdgo.GoInt);
        stdgo._internal.bufio.Bufio_scanner_static_extension.Scanner_static_extension.buffer(_s, _buf, _max);
    }
    static public function _setErr(_s:Scanner, _err:stdgo.Error):Void {
        final _s = (_s : stdgo.Ref<stdgo._internal.bufio.Bufio_scanner.Scanner>);
        final _err = (_err : stdgo.Error);
        stdgo._internal.bufio.Bufio_scanner_static_extension.Scanner_static_extension._setErr(_s, _err);
    }
    static public function _advance(_s:Scanner, _n:StdTypes.Int):Bool {
        final _s = (_s : stdgo.Ref<stdgo._internal.bufio.Bufio_scanner.Scanner>);
        final _n = (_n : stdgo.GoInt);
        return stdgo._internal.bufio.Bufio_scanner_static_extension.Scanner_static_extension._advance(_s, _n);
    }
    static public function scan(_s:Scanner):Bool {
        final _s = (_s : stdgo.Ref<stdgo._internal.bufio.Bufio_scanner.Scanner>);
        return stdgo._internal.bufio.Bufio_scanner_static_extension.Scanner_static_extension.scan(_s);
    }
    static public function text(_s:Scanner):String {
        final _s = (_s : stdgo.Ref<stdgo._internal.bufio.Bufio_scanner.Scanner>);
        return stdgo._internal.bufio.Bufio_scanner_static_extension.Scanner_static_extension.text(_s);
    }
    static public function bytes(_s:Scanner):Array<std.UInt> {
        final _s = (_s : stdgo.Ref<stdgo._internal.bufio.Bufio_scanner.Scanner>);
        return [for (i in stdgo._internal.bufio.Bufio_scanner_static_extension.Scanner_static_extension.bytes(_s)) i];
    }
    static public function err(_s:Scanner):stdgo.Error {
        final _s = (_s : stdgo.Ref<stdgo._internal.bufio.Bufio_scanner.Scanner>);
        return stdgo._internal.bufio.Bufio_scanner_static_extension.Scanner_static_extension.err(_s);
    }
    static public function errOrEOF(_s:Scanner):stdgo.Error {
        final _s = (_s : stdgo.Ref<stdgo._internal.bufio.Bufio_scanner.Scanner>);
        return stdgo._internal.bufio.Bufio_scanner_static_extension.Scanner_static_extension.errOrEOF(_s);
    }
    static public function maxTokenSize(_s:Scanner, _n:StdTypes.Int):Void {
        final _s = (_s : stdgo.Ref<stdgo._internal.bufio.Bufio_scanner.Scanner>);
        final _n = (_n : stdgo.GoInt);
        stdgo._internal.bufio.Bufio_scanner_static_extension.Scanner_static_extension.maxTokenSize(_s, _n);
    }
}
typedef SplitFuncPointer = stdgo._internal.bufio.Bufio_splitfuncpointer.SplitFuncPointer;
class SplitFunc_static_extension {

}
/**
    * Package bufio implements buffered I/O. It wraps an io.Reader or io.Writer
    * object, creating another object (Reader or Writer) that also implements
    * the interface but provides buffering and some help for textual I/O.
**/
class Bufio {
    /**
        * NewReaderSize returns a new Reader whose buffer has at least the specified
        * size. If the argument io.Reader is already a Reader with large enough
        * size, it returns the underlying Reader.
    **/
    static public inline function newReaderSize(_rd:stdgo._internal.io.Io_reader.Reader, _size:StdTypes.Int):Reader {
        final _size = (_size : stdgo.GoInt);
        return stdgo._internal.bufio.Bufio_newreadersize.newReaderSize(_rd, _size);
    }
    /**
        * NewReader returns a new Reader whose buffer has the default size.
    **/
    static public inline function newReader(_rd:stdgo._internal.io.Io_reader.Reader):Reader {
        return stdgo._internal.bufio.Bufio_newreader.newReader(_rd);
    }
    /**
        * NewWriterSize returns a new Writer whose buffer has at least the specified
        * size. If the argument io.Writer is already a Writer with large enough
        * size, it returns the underlying Writer.
    **/
    static public inline function newWriterSize(_w:stdgo._internal.io.Io_writer.Writer, _size:StdTypes.Int):Writer {
        final _size = (_size : stdgo.GoInt);
        return stdgo._internal.bufio.Bufio_newwritersize.newWriterSize(_w, _size);
    }
    /**
        * NewWriter returns a new Writer whose buffer has the default size.
        * If the argument io.Writer is already a Writer with large enough buffer size,
        * it returns the underlying Writer.
    **/
    static public inline function newWriter(_w:stdgo._internal.io.Io_writer.Writer):Writer {
        return stdgo._internal.bufio.Bufio_newwriter.newWriter(_w);
    }
    /**
        * NewReadWriter allocates a new ReadWriter that dispatches to r and w.
    **/
    static public inline function newReadWriter(_r:Reader, _w:Writer):ReadWriter {
        final _r = (_r : stdgo.Ref<stdgo._internal.bufio.Bufio_reader.Reader>);
        final _w = (_w : stdgo.Ref<stdgo._internal.bufio.Bufio_writer.Writer>);
        return stdgo._internal.bufio.Bufio_newreadwriter.newReadWriter(_r, _w);
    }
    /**
        * NewScanner returns a new Scanner to read from r.
        * The split function defaults to ScanLines.
    **/
    static public inline function newScanner(_r:stdgo._internal.io.Io_reader.Reader):Scanner {
        return stdgo._internal.bufio.Bufio_newscanner.newScanner(_r);
    }
    /**
        * ScanBytes is a split function for a Scanner that returns each byte as a token.
    **/
    static public inline function scanBytes(_data:Array<std.UInt>, _atEOF:Bool):stdgo.Tuple.Tuple3<StdTypes.Int, Array<std.UInt>, stdgo.Error> {
        final _data = ([for (i in _data) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.bufio.Bufio_scanbytes.scanBytes(_data, _atEOF);
            { _0 : obj._0, _1 : [for (i in obj._1) i], _2 : obj._2 };
        };
    }
    /**
        * ScanRunes is a split function for a Scanner that returns each
        * UTF-8-encoded rune as a token. The sequence of runes returned is
        * equivalent to that from a range loop over the input as a string, which
        * means that erroneous UTF-8 encodings translate to U+FFFD = "\xef\xbf\xbd".
        * Because of the Scan interface, this makes it impossible for the client to
        * distinguish correctly encoded replacement runes from encoding errors.
    **/
    static public inline function scanRunes(_data:Array<std.UInt>, _atEOF:Bool):stdgo.Tuple.Tuple3<StdTypes.Int, Array<std.UInt>, stdgo.Error> {
        final _data = ([for (i in _data) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.bufio.Bufio_scanrunes.scanRunes(_data, _atEOF);
            { _0 : obj._0, _1 : [for (i in obj._1) i], _2 : obj._2 };
        };
    }
    /**
        * ScanLines is a split function for a Scanner that returns each line of
        * text, stripped of any trailing end-of-line marker. The returned line may
        * be empty. The end-of-line marker is one optional carriage return followed
        * by one mandatory newline. In regular expression notation, it is `\r?\n`.
        * The last non-empty line of input will be returned even if it has no
        * newline.
    **/
    static public inline function scanLines(_data:Array<std.UInt>, _atEOF:Bool):stdgo.Tuple.Tuple3<StdTypes.Int, Array<std.UInt>, stdgo.Error> {
        final _data = ([for (i in _data) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.bufio.Bufio_scanlines.scanLines(_data, _atEOF);
            { _0 : obj._0, _1 : [for (i in obj._1) i], _2 : obj._2 };
        };
    }
    /**
        * ScanWords is a split function for a Scanner that returns each
        * space-separated word of text, with surrounding spaces deleted. It will
        * never return an empty string. The definition of space is set by
        * unicode.IsSpace.
    **/
    static public inline function scanWords(_data:Array<std.UInt>, _atEOF:Bool):stdgo.Tuple.Tuple3<StdTypes.Int, Array<std.UInt>, stdgo.Error> {
        final _data = ([for (i in _data) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.bufio.Bufio_scanwords.scanWords(_data, _atEOF);
            { _0 : obj._0, _1 : [for (i in obj._1) i], _2 : obj._2 };
        };
    }
}
