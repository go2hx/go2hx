package stdgo.bufio;
import stdgo.StdGoTypes;
import stdgo.Error;
import stdgo.Go;
import stdgo.GoString;
import stdgo.Pointer;
import stdgo.Slice;
import stdgo.GoArray;
import stdgo.GoMap;
import stdgo.Chan;
var errInvalidUnreadByte : stdgo.Error = stdgo.errors.Errors.new_(((("bufio: invalid use of UnreadByte" : GoString))));
var errInvalidUnreadRune : stdgo.Error = stdgo.errors.Errors.new_(((("bufio: invalid use of UnreadRune" : GoString))));
var errBufferFull : stdgo.Error = stdgo.errors.Errors.new_(((("bufio: buffer full" : GoString))));
var errNegativeCount : stdgo.Error = stdgo.errors.Errors.new_(((("bufio: negative count" : GoString))));
var _errNegativeRead : stdgo.Error = stdgo.errors.Errors.new_(((("bufio: reader returned negative count from Read" : GoString))));
var _errNegativeWrite : stdgo.Error = stdgo.errors.Errors.new_(((("bufio: writer returned negative count from Write" : GoString))));
var errTooLong : stdgo.Error = stdgo.errors.Errors.new_(((("bufio.Scanner: token too long" : GoString))));
var errNegativeAdvance : stdgo.Error = stdgo.errors.Errors.new_(((("bufio.Scanner: SplitFunc returns negative advance count" : GoString))));
var errAdvanceTooFar : stdgo.Error = stdgo.errors.Errors.new_(((("bufio.Scanner: SplitFunc returns advance count beyond input" : GoString))));
var errBadReadCount : stdgo.Error = stdgo.errors.Errors.new_(((("bufio.Scanner: Read returned impossible count" : GoString))));
var errFinalToken : stdgo.Error = stdgo.errors.Errors.new_(((("final token" : GoString))));
var _errorRune : Slice<GoUInt8> = ((((((65533 : GoInt32)) : GoString)) : Slice<GoByte>));
@:structInit @:using(Bufio.Reader_static_extension) class Reader {
    public var _buf : Slice<GoUInt8> = new Slice<GoUInt8>().nil();
    public var _rd : stdgo.io.Io.Reader = ((null : stdgo.io.Io.Reader));
    public var _r : GoInt = ((0 : GoInt));
    public var _w : GoInt = ((0 : GoInt));
    public var _err : stdgo.Error = ((null : stdgo.Error));
    public var _lastByte : GoInt = ((0 : GoInt));
    public var _lastRuneSize : GoInt = ((0 : GoInt));
    public function new(?_buf:Slice<GoUInt8>, ?_rd:stdgo.io.Io.Reader, ?_r:GoInt, ?_w:GoInt, ?_err:stdgo.Error, ?_lastByte:GoInt, ?_lastRuneSize:GoInt) {
        if (_buf != null) this._buf = _buf;
        if (_rd != null) this._rd = _rd;
        if (_r != null) this._r = _r;
        if (_w != null) this._w = _w;
        if (_err != null) this._err = _err;
        if (_lastByte != null) this._lastByte = _lastByte;
        if (_lastRuneSize != null) this._lastRuneSize = _lastRuneSize;
    }
    public function toString() {
        return "{" + Go.string(_buf) + " " + Go.string(_rd) + " " + Go.string(_r) + " " + Go.string(_w) + " " + Go.string(_err) + " " + Go.string(_lastByte) + " " + Go.string(_lastRuneSize) + "}";
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new Reader(_buf, _rd, _r, _w, _err, _lastByte, _lastRuneSize);
    }
    public function __set__(__tmp__) {
        this._buf = __tmp__._buf;
        this._rd = __tmp__._rd;
        this._r = __tmp__._r;
        this._w = __tmp__._w;
        this._err = __tmp__._err;
        this._lastByte = __tmp__._lastByte;
        this._lastRuneSize = __tmp__._lastRuneSize;
        return this;
    }
}
@:structInit @:using(Bufio.Writer_static_extension) class Writer {
    public var _err : stdgo.Error = ((null : stdgo.Error));
    public var _buf : Slice<GoUInt8> = new Slice<GoUInt8>().nil();
    public var _n : GoInt = ((0 : GoInt));
    public var _wr : stdgo.io.Io.Writer = ((null : stdgo.io.Io.Writer));
    public function new(?_err:stdgo.Error, ?_buf:Slice<GoUInt8>, ?_n:GoInt, ?_wr:stdgo.io.Io.Writer) {
        if (_err != null) this._err = _err;
        if (_buf != null) this._buf = _buf;
        if (_n != null) this._n = _n;
        if (_wr != null) this._wr = _wr;
    }
    public function toString() {
        return "{" + Go.string(_err) + " " + Go.string(_buf) + " " + Go.string(_n) + " " + Go.string(_wr) + "}";
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new Writer(_err, _buf, _n, _wr);
    }
    public function __set__(__tmp__) {
        this._err = __tmp__._err;
        this._buf = __tmp__._buf;
        this._n = __tmp__._n;
        this._wr = __tmp__._wr;
        return this;
    }
}
@:structInit class ReadWriter {
    @:embedded
    public var reader : Reader = ((null : Reader));
    @:embedded
    public var writer : Writer = ((null : Writer));
    public function new(?reader:Reader, ?writer:Writer) {
        if (reader != null) this.reader = reader;
        if (writer != null) this.writer = writer;
    }
    public function toString() {
        return "{" + Go.string(reader) + " " + Go.string(writer) + "}";
    }
    public function available():GoInt return writer.available();
    public function availableBuffer():Slice<GoUInt8> return writer.availableBuffer();
    public function discard(_n:GoInt):{ var _0 : GoInt; var _1 : stdgo.Error; } return reader.discard(_n);
    public function flush():stdgo.Error return writer.flush();
    public function peek(_n:GoInt):{ var _0 : Slice<GoUInt8>; var _1 : stdgo.Error; } return reader.peek(_n);
    public function read(_p:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : stdgo.Error; } return reader.read(_p);
    public function readByte():{ var _0 : GoUInt8; var _1 : stdgo.Error; } return reader.readByte();
    public function readBytes(_delim:GoUInt8):{ var _0 : Slice<GoUInt8>; var _1 : stdgo.Error; } return reader.readBytes(_delim);
    public function readFrom(_r:stdgo.io.Io.Reader):{ var _0 : GoInt64; var _1 : stdgo.Error; } return writer.readFrom(_r);
    public function readLine():{ var _0 : Slice<GoUInt8>; var _1 : Bool; var _2 : stdgo.Error; } return reader.readLine();
    public function readRune():{ var _0 : GoInt32; var _1 : GoInt; var _2 : stdgo.Error; } return reader.readRune();
    public function readSlice(_delim:GoUInt8):{ var _0 : Slice<GoUInt8>; var _1 : stdgo.Error; } return reader.readSlice(_delim);
    public function readString(_delim:GoUInt8):{ var _0 : GoString; var _1 : stdgo.Error; } return reader.readString(_delim);
    public function unreadByte():stdgo.Error return reader.unreadByte();
    public function unreadRune():stdgo.Error return reader.unreadRune();
    public function write(_p:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : stdgo.Error; } return writer.write(_p);
    public function writeByte(_c:GoUInt8):stdgo.Error return writer.writeByte(_c);
    public function writeRune(_r:GoInt32):{ var _0 : GoInt; var _1 : stdgo.Error; } return writer.writeRune(_r);
    public function writeString(_s:GoString):{ var _0 : GoInt; var _1 : stdgo.Error; } return writer.writeString(_s);
    public function writeTo(_w:stdgo.io.Io.Writer):{ var _0 : GoInt64; var _1 : stdgo.Error; } return reader.writeTo(_w);
    public function _collectFragments(_delim:GoUInt8):{ var _0 : Slice<Slice<GoUInt8>>; var _1 : Slice<GoUInt8>; var _2 : GoInt; var _3 : stdgo.Error; } return reader._collectFragments(_delim);
    public function _fill() reader._fill();
    public function _readErr():stdgo.Error return reader._readErr();
    public function _reset(_buf:Slice<GoUInt8>, _r:stdgo.io.Io.Reader) reader._reset(_buf, _r);
    public function _writeBuf(_w:stdgo.io.Io.Writer):{ var _0 : GoInt64; var _1 : stdgo.Error; } return reader._writeBuf(_w);
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new ReadWriter(reader, writer);
    }
    public function __set__(__tmp__) {
        this.reader = __tmp__.reader;
        this.writer = __tmp__.writer;
        return this;
    }
}
@:structInit @:using(Bufio.Scanner_static_extension) class Scanner {
    public var _r : stdgo.io.Io.Reader = ((null : stdgo.io.Io.Reader));
    public var _split : SplitFunc = new SplitFunc();
    public var _maxTokenSize : GoInt = ((0 : GoInt));
    public var _token : Slice<GoUInt8> = new Slice<GoUInt8>().nil();
    public var _buf : Slice<GoUInt8> = new Slice<GoUInt8>().nil();
    public var _start : GoInt = ((0 : GoInt));
    public var _end : GoInt = ((0 : GoInt));
    public var _err : stdgo.Error = ((null : stdgo.Error));
    public var _empties : GoInt = ((0 : GoInt));
    public var _scanCalled : Bool = false;
    public var _done : Bool = false;
    public function new(?_r:stdgo.io.Io.Reader, ?_split:SplitFunc, ?_maxTokenSize:GoInt, ?_token:Slice<GoUInt8>, ?_buf:Slice<GoUInt8>, ?_start:GoInt, ?_end:GoInt, ?_err:stdgo.Error, ?_empties:GoInt, ?_scanCalled:Bool, ?_done:Bool) {
        if (_r != null) this._r = _r;
        if (_split != null) this._split = _split;
        if (_maxTokenSize != null) this._maxTokenSize = _maxTokenSize;
        if (_token != null) this._token = _token;
        if (_buf != null) this._buf = _buf;
        if (_start != null) this._start = _start;
        if (_end != null) this._end = _end;
        if (_err != null) this._err = _err;
        if (_empties != null) this._empties = _empties;
        if (_scanCalled != null) this._scanCalled = _scanCalled;
        if (_done != null) this._done = _done;
    }
    public function toString() {
        return "{" + Go.string(_r) + " " + Go.string(_split) + " " + Go.string(_maxTokenSize) + " " + Go.string(_token) + " " + Go.string(_buf) + " " + Go.string(_start) + " " + Go.string(_end) + " " + Go.string(_err) + " " + Go.string(_empties) + " " + Go.string(_scanCalled) + " " + Go.string(_done) + "}";
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new Scanner(
_r,
_split,
_maxTokenSize,
_token,
_buf,
_start,
_end,
_err,
_empties,
_scanCalled,
_done);
    }
    public function __set__(__tmp__) {
        this._r = __tmp__._r;
        this._split = __tmp__._split;
        this._maxTokenSize = __tmp__._maxTokenSize;
        this._token = __tmp__._token;
        this._buf = __tmp__._buf;
        this._start = __tmp__._start;
        this._end = __tmp__._end;
        this._err = __tmp__._err;
        this._empties = __tmp__._empties;
        this._scanCalled = __tmp__._scanCalled;
        this._done = __tmp__._done;
        return this;
    }
}
@:named @:forward.variance @:forward abstract SplitFunc((Slice<GoUInt8>, Bool) -> { var _0 : GoInt; var _1 : Slice<GoUInt8>; var _2 : stdgo.Error; }) from (Slice<GoUInt8>, Bool) -> { var _0 : GoInt; var _1 : Slice<GoUInt8>; var _2 : stdgo.Error; } to (Slice<GoUInt8>, Bool) -> { var _0 : GoInt; var _1 : Slice<GoUInt8>; var _2 : stdgo.Error; } {
    public function new(?t:(Slice<GoUInt8>, Bool) -> { var _0 : GoInt; var _1 : Slice<GoUInt8>; var _2 : stdgo.Error; }) {
        this = t == null ? null : t;
    }
    public function __copy__() return new SplitFunc(this);
}
/**
    // NewReaderSize returns a new Reader whose buffer has at least the specified
    // size. If the argument io.Reader is already a Reader with large enough
    // size, it returns the underlying Reader.
**/
function newReaderSize(_rd:stdgo.io.Io.Reader, _size:GoInt):Reader {
        var __tmp__ = try {
            { value : ((((_rd.__underlying__().value : Dynamic)) : Reader)), ok : true };
        } catch(_) {
            { value : ((null : Reader)), ok : false };
        }, _b = __tmp__.value, _ok = __tmp__.ok;
        if (_ok && (_b._buf.length >= _size)) {
            return _b;
        };
        if (_size < ((16 : GoInt))) {
            _size = ((16 : GoInt));
        };
        var _r:Reader = new Reader();
        _r._reset(new Slice<GoUInt8>(...[for (i in 0 ... ((_size : GoInt)).toBasic()) ((0 : GoUInt8))]), _rd);
        return _r;
    }
/**
    // NewReader returns a new Reader whose buffer has the default size.
**/
function newReader(_rd:stdgo.io.Io.Reader):Reader {
        return newReaderSize(_rd, ((4096 : GoInt)));
    }
/**
    // NewWriterSize returns a new Writer whose buffer has at least the specified
    // size. If the argument io.Writer is already a Writer with large enough
    // size, it returns the underlying Writer.
**/
function newWriterSize(_w:stdgo.io.Io.Writer, _size:GoInt):Writer {
        var __tmp__ = try {
            { value : ((((_w.__underlying__().value : Dynamic)) : Writer)), ok : true };
        } catch(_) {
            { value : ((null : Writer)), ok : false };
        }, _b = __tmp__.value, _ok = __tmp__.ok;
        if (_ok && (_b._buf.length >= _size)) {
            return _b;
        };
        if (_size <= ((0 : GoInt))) {
            _size = ((4096 : GoInt));
        };
        return (({ _buf : new Slice<GoUInt8>(...[for (i in 0 ... ((_size : GoInt)).toBasic()) ((0 : GoUInt8))]), _wr : _w, _err : ((null : stdgo.Error)), _n : 0 } : Writer));
    }
/**
    // NewWriter returns a new Writer whose buffer has the default size.
    // If the argument io.Writer is already a Writer with large enough buffer size,
    // it returns the underlying Writer.
**/
function newWriter(_w:stdgo.io.Io.Writer):Writer {
        return newWriterSize(_w, ((4096 : GoInt)));
    }
/**
    // NewReadWriter allocates a new ReadWriter that dispatches to r and w.
**/
function newReadWriter(_r:Reader, _w:Writer):ReadWriter {
        return new ReadWriter(_r, _w);
    }
/**
    // NewScanner returns a new Scanner to read from r.
    // The split function defaults to ScanLines.
**/
function newScanner(_r:stdgo.io.Io.Reader):Scanner {
        return (({ _r : _r, _split : Go.copyValue(scanLines), _maxTokenSize : ((65536 : GoInt)), _token : new Slice<GoUInt8>().nil(), _buf : new Slice<GoUInt8>().nil(), _start : 0, _end : 0, _err : ((null : stdgo.Error)), _empties : 0, _scanCalled : false, _done : false } : Scanner));
    }
/**
    // ScanBytes is a split function for a Scanner that returns each byte as a token.
**/
function scanBytes(_data:Slice<GoByte>, _atEOF:Bool):{ var _0 : GoInt; var _1 : Slice<GoByte>; var _2 : Error; } {
        var _advance:GoInt = ((0 : GoInt)), _token:Slice<GoByte> = new Slice<GoUInt8>().nil(), _err:Error = ((null : stdgo.Error));
        if (_atEOF && (_data.length == ((0 : GoInt)))) {
            return { _0 : ((0 : GoInt)), _1 : new Slice<GoUInt8>().nil(), _2 : ((null : stdgo.Error)) };
        };
        return { _0 : ((1 : GoInt)), _1 : _data.__slice__(((0 : GoInt)), ((1 : GoInt))), _2 : ((null : stdgo.Error)) };
    }
/**
    // ScanRunes is a split function for a Scanner that returns each
    // UTF-8-encoded rune as a token. The sequence of runes returned is
    // equivalent to that from a range loop over the input as a string, which
    // means that erroneous UTF-8 encodings translate to U+FFFD = "\xef\xbf\xbd".
    // Because of the Scan interface, this makes it impossible for the client to
    // distinguish correctly encoded replacement runes from encoding errors.
**/
function scanRunes(_data:Slice<GoByte>, _atEOF:Bool):{ var _0 : GoInt; var _1 : Slice<GoByte>; var _2 : Error; } {
        var _advance:GoInt = ((0 : GoInt)), _token:Slice<GoByte> = new Slice<GoUInt8>().nil(), _err:Error = ((null : stdgo.Error));
        if (_atEOF && (_data.length == ((0 : GoInt)))) {
            return { _0 : ((0 : GoInt)), _1 : new Slice<GoUInt8>().nil(), _2 : ((null : stdgo.Error)) };
        };
        if (_data[((0 : GoInt))] < ((128 : GoUInt8))) {
            return { _0 : ((1 : GoInt)), _1 : _data.__slice__(((0 : GoInt)), ((1 : GoInt))), _2 : ((null : stdgo.Error)) };
        };
        var __tmp__ = stdgo.unicode.utf8.Utf8.decodeRune(_data), _:GoInt32 = __tmp__._0, _width:GoInt = __tmp__._1;
        if (_width > ((1 : GoInt))) {
            return { _0 : _width, _1 : _data.__slice__(((0 : GoInt)), _width), _2 : ((null : stdgo.Error)) };
        };
        if (!_atEOF && !stdgo.unicode.utf8.Utf8.fullRune(_data)) {
            return { _0 : ((0 : GoInt)), _1 : new Slice<GoUInt8>().nil(), _2 : ((null : stdgo.Error)) };
        };
        return { _0 : ((1 : GoInt)), _1 : _errorRune, _2 : ((null : stdgo.Error)) };
    }
/**
    // dropCR drops a terminal \r from the data.
**/
function _dropCR(_data:Slice<GoByte>):Slice<GoByte> {
        if ((_data.length > ((0 : GoInt))) && (_data[_data.length - ((1 : GoInt))] == ((((("\r" : GoString))).code : GoRune)))) {
            return _data.__slice__(((0 : GoInt)), _data.length - ((1 : GoInt)));
        };
        return _data;
    }
/**
    // ScanLines is a split function for a Scanner that returns each line of
    // text, stripped of any trailing end-of-line marker. The returned line may
    // be empty. The end-of-line marker is one optional carriage return followed
    // by one mandatory newline. In regular expression notation, it is `\r?\n`.
    // The last non-empty line of input will be returned even if it has no
    // newline.
**/
function scanLines(_data:Slice<GoByte>, _atEOF:Bool):{ var _0 : GoInt; var _1 : Slice<GoByte>; var _2 : Error; } {
        var _advance:GoInt = ((0 : GoInt)), _token:Slice<GoByte> = new Slice<GoUInt8>().nil(), _err:Error = ((null : stdgo.Error));
        if (_atEOF && (_data.length == ((0 : GoInt)))) {
            return { _0 : ((0 : GoInt)), _1 : new Slice<GoUInt8>().nil(), _2 : ((null : stdgo.Error)) };
        };
        {
            var _i:GoInt = stdgo.bytes.Bytes.indexByte(_data, ((((("\n" : GoString))).code : GoRune)));
            if (_i >= ((0 : GoInt))) {
                return { _0 : _i + ((1 : GoInt)), _1 : _dropCR(_data.__slice__(((0 : GoInt)), _i)), _2 : ((null : stdgo.Error)) };
            };
        };
        if (_atEOF) {
            return { _0 : _data.length, _1 : _dropCR(_data), _2 : ((null : stdgo.Error)) };
        };
        return { _0 : ((0 : GoInt)), _1 : new Slice<GoUInt8>().nil(), _2 : ((null : stdgo.Error)) };
    }
/**
    // isSpace reports whether the character is a Unicode white space character.
    // We avoid dependency on the unicode package, but check validity of the implementation
    // in the tests.
**/
function _isSpace(_r:GoRune):Bool {
        if (_r <= ((((("\u00FF" : GoString))).code : GoRune))) {
            if (_r == (((((" " : GoString))).code : GoRune)) || _r == ((((("\t" : GoString))).code : GoRune)) || _r == ((((("\n" : GoString))).code : GoRune)) || _r == ((((("\x0B" : GoString))).code : GoRune)) || _r == ((((("\x0C" : GoString))).code : GoRune)) || _r == ((((("\r" : GoString))).code : GoRune))) {
                return true;
            } else if (_r == ((((("\u0085" : GoString))).code : GoRune)) || _r == ((((("\u00A0" : GoString))).code : GoRune))) {
                return true;
            };
            return false;
        };
        if ((((((("\u2000" : GoString))).code : GoRune)) <= _r) && (_r <= ((((("\u200a" : GoString))).code : GoRune)))) {
            return true;
        };
        if (_r == ((((("\u1680" : GoString))).code : GoRune)) || _r == ((((("\u2028" : GoString))).code : GoRune)) || _r == ((((("\u2029" : GoString))).code : GoRune)) || _r == ((((("\u202f" : GoString))).code : GoRune)) || _r == ((((("\u205f" : GoString))).code : GoRune)) || _r == ((((("\u3000" : GoString))).code : GoRune))) {
            return true;
        };
        return false;
    }
/**
    // ScanWords is a split function for a Scanner that returns each
    // space-separated word of text, with surrounding spaces deleted. It will
    // never return an empty string. The definition of space is set by
    // unicode.IsSpace.
**/
function scanWords(_data:Slice<GoByte>, _atEOF:Bool):{ var _0 : GoInt; var _1 : Slice<GoByte>; var _2 : Error; } {
        var _advance:GoInt = ((0 : GoInt)), _token:Slice<GoByte> = new Slice<GoUInt8>().nil(), _err:Error = ((null : stdgo.Error));
        var _start:GoInt = ((0 : GoInt));
        {
            var _width:GoInt = ((0 : GoInt));
            Go.cfor(_start < _data.length, _start = _start + (_width), {
                var _r:GoRune = ((0 : GoInt32));
                {
                    var __tmp__ = stdgo.unicode.utf8.Utf8.decodeRune(_data.__slice__(_start));
                    _r = __tmp__._0;
                    _width = __tmp__._1;
                };
                if (!_isSpace(_r)) {
                    break;
                };
            });
        };
        {
            var _width:GoInt = ((0 : GoInt)), _i:GoInt = _start;
            Go.cfor(_i < _data.length, _i = _i + (_width), {
                var _r:GoRune = ((0 : GoInt32));
                {
                    var __tmp__ = stdgo.unicode.utf8.Utf8.decodeRune(_data.__slice__(_i));
                    _r = __tmp__._0;
                    _width = __tmp__._1;
                };
                if (_isSpace(_r)) {
                    return { _0 : _i + _width, _1 : _data.__slice__(_start, _i), _2 : ((null : stdgo.Error)) };
                };
            });
        };
        if (_atEOF && (_data.length > _start)) {
            return { _0 : _data.length, _1 : _data.__slice__(_start), _2 : ((null : stdgo.Error)) };
        };
        return { _0 : _start, _1 : new Slice<GoUInt8>().nil(), _2 : ((null : stdgo.Error)) };
    }












class Reader_wrapper {
    public function _writeBuf(_w:stdgo.io.Io.Writer):{ var _0 : GoInt64; var _1 : Error; } return Reader_static_extension._writeBuf(__t__, _w);
    public function writeTo(_w:stdgo.io.Io.Writer):{ var _0 : GoInt64; var _1 : Error; } return Reader_static_extension.writeTo(__t__, _w);
    public function readString(_delim:GoByte):{ var _0 : GoString; var _1 : Error; } return Reader_static_extension.readString(__t__, _delim);
    public function readBytes(_delim:GoByte):{ var _0 : Slice<GoByte>; var _1 : Error; } return Reader_static_extension.readBytes(__t__, _delim);
    public function _collectFragments(_delim:GoByte):{ var _0 : Slice<Slice<GoByte>>; var _1 : Slice<GoByte>; var _2 : GoInt; var _3 : Error; } return Reader_static_extension._collectFragments(__t__, _delim);
    public function readLine():{ var _0 : Slice<GoByte>; var _1 : Bool; var _2 : Error; } return Reader_static_extension.readLine(__t__);
    public function readSlice(_delim:GoByte):{ var _0 : Slice<GoByte>; var _1 : Error; } return Reader_static_extension.readSlice(__t__, _delim);
    public function buffered():GoInt return Reader_static_extension.buffered(__t__);
    public function unreadRune():Error return Reader_static_extension.unreadRune(__t__);
    public function readRune():{ var _0 : GoRune; var _1 : GoInt; var _2 : Error; } return Reader_static_extension.readRune(__t__);
    public function unreadByte():Error return Reader_static_extension.unreadByte(__t__);
    public function readByte():{ var _0 : GoByte; var _1 : Error; } return Reader_static_extension.readByte(__t__);
    public function read(_p:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } return Reader_static_extension.read(__t__, _p);
    public function discard(_n:GoInt):{ var _0 : GoInt; var _1 : Error; } return Reader_static_extension.discard(__t__, _n);
    public function peek(_n:GoInt):{ var _0 : Slice<GoByte>; var _1 : Error; } return Reader_static_extension.peek(__t__, _n);
    public function _readErr():Error return Reader_static_extension._readErr(__t__);
    public function _fill():Void Reader_static_extension._fill(__t__);
    public function _reset(_buf:Slice<GoByte>, _r:stdgo.io.Io.Reader):Void Reader_static_extension._reset(__t__, _buf, _r);
    public function reset(_r:stdgo.io.Io.Reader):Void Reader_static_extension.reset(__t__, _r);
    public function size():GoInt return Reader_static_extension.size(__t__);
    public var __t__ : Reader;
    public inline function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
    function toString():String return __t__ == null ? "null" : Go.string(__t__);
}
@:access(Reader) class Reader_static_extension {
    public static function _writeBuf(_b:Reader, _w:stdgo.io.Io.Writer):{ var _0 : GoInt64; var _1 : Error; } {
        var __tmp__ = _w.write(_b._buf.__slice__(_b._r, _b._w)), _n:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_n < ((0 : GoInt))) {
            throw Go.toInterface(_errNegativeWrite);
        };
        _b._r = _b._r + (_n);
        return { _0 : ((_n : GoInt64)), _1 : _err };
    }
    public static function writeTo(_b:Reader, _w:stdgo.io.Io.Writer):{ var _0 : GoInt64; var _1 : Error; } {
        var _n:GoInt64 = ((0 : GoInt64)), _err:Error = ((null : stdgo.Error));
        _b._lastByte = ((-1 : GoInt));
        _b._lastRuneSize = ((-1 : GoInt));
        {
            var __tmp__ = _b._writeBuf(_w);
            _n = __tmp__._0;
            _err = __tmp__._1;
        };
        if (Go.toInterface(_err) != Go.toInterface(null)) {
            return { _0 : _n, _1 : _err };
        };
        {
            var __tmp__ = try {
                { value : ((((_b._rd.__underlying__().value : Dynamic)) : stdgo.io.Io.WriterTo)), ok : true };
            } catch(_) {
                { value : ((null : stdgo.io.Io.WriterTo)), ok : false };
            }, _r = __tmp__.value, _ok = __tmp__.ok;
            if (_ok) {
                var __tmp__ = _r.writeTo(_w), _m:GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                _n = _n + (_m);
                return { _0 : _n, _1 : _err };
            };
        };
        {
            var __tmp__ = try {
                { value : ((((_w.__underlying__().value : Dynamic)) : stdgo.io.Io.ReaderFrom)), ok : true };
            } catch(_) {
                { value : ((null : stdgo.io.Io.ReaderFrom)), ok : false };
            }, _w = __tmp__.value, _ok = __tmp__.ok;
            if (_ok) {
                var __tmp__ = _w.readFrom(_b._rd), _m:GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                _n = _n + (_m);
                return { _0 : _n, _1 : _err };
            };
        };
        if ((_b._w - _b._r) < _b._buf.length) {
            _b._fill();
        };
        while (_b._r < _b._w) {
            var __tmp__ = _b._writeBuf(_w), _m:GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            _n = _n + (_m);
            if (Go.toInterface(_err) != Go.toInterface(null)) {
                return { _0 : _n, _1 : _err };
            };
            _b._fill();
        };
        if (Go.toInterface(_b._err) == Go.toInterface(stdgo.io.Io.eof)) {
            _b._err = ((null : stdgo.Error));
        };
        return { _0 : _n, _1 : _b._readErr() };
    }
    public static function readString(_b:Reader, _delim:GoByte):{ var _0 : GoString; var _1 : Error; } {
        var __tmp__ = _b._collectFragments(_delim), _full:Slice<Slice<GoUInt8>> = __tmp__._0, _frag:Slice<GoUInt8> = __tmp__._1, _n:GoInt = __tmp__._2, _err:stdgo.Error = __tmp__._3;
        var _buf:stdgo.strings.Strings.Builder = new stdgo.strings.Strings.Builder();
        _buf.__grow__(_n);
        for (_ => _fb in _full) {
            _buf.write(_fb);
        };
        _buf.write(_frag);
        return { _0 : ((_buf.toString() : GoString)), _1 : _err };
    }
    public static function readBytes(_b:Reader, _delim:GoByte):{ var _0 : Slice<GoByte>; var _1 : Error; } {
        var __tmp__ = _b._collectFragments(_delim), _full:Slice<Slice<GoUInt8>> = __tmp__._0, _frag:Slice<GoUInt8> = __tmp__._1, _n:GoInt = __tmp__._2, _err:stdgo.Error = __tmp__._3;
        var _buf:Slice<GoUInt8> = new Slice<GoUInt8>(...[for (i in 0 ... ((_n : GoInt)).toBasic()) ((0 : GoUInt8))]);
        _n = ((0 : GoInt));
        for (_i => _ in _full) {
            _n = _n + (Go.copy(_buf.__slice__(_n), _full[_i]));
        };
        Go.copy(_buf.__slice__(_n), _frag);
        return { _0 : _buf, _1 : _err };
    }
    public static function _collectFragments(_b:Reader, _delim:GoByte):{ var _0 : Slice<Slice<GoByte>>; var _1 : Slice<GoByte>; var _2 : GoInt; var _3 : Error; } {
        var _fullBuffers:Slice<Slice<GoByte>> = new Slice<Slice<GoUInt8>>().nil(), _finalFragment:Slice<GoByte> = new Slice<GoUInt8>().nil(), _totalLen:GoInt = ((0 : GoInt)), _err:Error = ((null : stdgo.Error));
        var _frag:Slice<GoByte> = new Slice<GoUInt8>().nil();
        while (true) {
            var _e:Error = ((null : stdgo.Error));
            {
                var __tmp__ = _b.readSlice(_delim);
                _frag = __tmp__._0;
                _e = __tmp__._1;
            };
            if (Go.toInterface(_e) == Go.toInterface(null)) {
                break;
            };
            if (Go.toInterface(_e) != Go.toInterface(errBufferFull)) {
                _err = _e;
                break;
            };
            var _buf:Slice<GoUInt8> = new Slice<GoUInt8>(...[for (i in 0 ... ((_frag.length : GoInt)).toBasic()) ((0 : GoUInt8))]);
            Go.copy(_buf, _frag);
            _fullBuffers = _fullBuffers.__append__(_buf);
            _totalLen = _totalLen + (_buf.length);
        };
        _totalLen = _totalLen + (_frag.length);
        return { _0 : _fullBuffers, _1 : _frag, _2 : _totalLen, _3 : _err };
    }
    public static function readLine(_b:Reader):{ var _0 : Slice<GoByte>; var _1 : Bool; var _2 : Error; } {
        var _line:Slice<GoByte> = new Slice<GoUInt8>().nil(), _isPrefix:Bool = false, _err:Error = ((null : stdgo.Error));
        {
            var __tmp__ = _b.readSlice(((((("\n" : GoString))).code : GoRune)));
            _line = __tmp__._0;
            _err = __tmp__._1;
        };
        if (Go.toInterface(_err) == Go.toInterface(errBufferFull)) {
            if ((_line.length > ((0 : GoInt))) && (_line[_line.length - ((1 : GoInt))] == ((((("\r" : GoString))).code : GoRune)))) {
                if (_b._r == ((0 : GoInt))) {
                    throw Go.toInterface(((("bufio: tried to rewind past start of buffer" : GoString))));
                };
                _b._r--;
                _line = _line.__slice__(0, _line.length - ((1 : GoInt)));
            };
            return { _0 : _line, _1 : true, _2 : ((null : stdgo.Error)) };
        };
        if (_line.length == ((0 : GoInt))) {
            if (Go.toInterface(_err) != Go.toInterface(null)) {
                _line = new Slice<GoUInt8>().nil();
            };
            return { _0 : _line, _1 : _isPrefix, _2 : _err };
        };
        _err = ((null : stdgo.Error));
        if (_line[_line.length - ((1 : GoInt))] == ((((("\n" : GoString))).code : GoRune))) {
            var _drop:GoInt = ((1 : GoInt));
            if ((_line.length > ((1 : GoInt))) && (_line[_line.length - ((2 : GoInt))] == ((((("\r" : GoString))).code : GoRune)))) {
                _drop = ((2 : GoInt));
            };
            _line = _line.__slice__(0, _line.length - _drop);
        };
        return { _0 : _line, _1 : _isPrefix, _2 : _err };
    }
    public static function readSlice(_b:Reader, _delim:GoByte):{ var _0 : Slice<GoByte>; var _1 : Error; } {
        var _line:Slice<GoByte> = new Slice<GoUInt8>().nil(), _err:Error = ((null : stdgo.Error));
        var _s:GoInt = ((0 : GoInt));
        while (true) {
            {
                var _i:GoInt = stdgo.bytes.Bytes.indexByte(_b._buf.__slice__(_b._r + _s, _b._w), _delim);
                if (_i >= ((0 : GoInt))) {
                    _i = _i + (_s);
                    _line = _b._buf.__slice__(_b._r, (_b._r + _i) + ((1 : GoInt)));
                    _b._r = _b._r + (_i + ((1 : GoInt)));
                    break;
                };
            };
            if (Go.toInterface(_b._err) != Go.toInterface(null)) {
                _line = _b._buf.__slice__(_b._r, _b._w);
                _b._r = _b._w;
                _err = _b._readErr();
                break;
            };
            if (_b.buffered() >= _b._buf.length) {
                _b._r = _b._w;
                _line = _b._buf;
                _err = errBufferFull;
                break;
            };
            _s = _b._w - _b._r;
            _b._fill();
        };
        {
            var _i:GoInt = _line.length - ((1 : GoInt));
            if (_i >= ((0 : GoInt))) {
                _b._lastByte = ((_line[_i] : GoInt));
                _b._lastRuneSize = ((-1 : GoInt));
            };
        };
        return { _0 : _line, _1 : _err };
    }
    public static function buffered(_b:Reader):GoInt {
        return _b._w - _b._r;
    }
    public static function unreadRune(_b:Reader):Error {
        if ((_b._lastRuneSize < ((0 : GoInt))) || (_b._r < _b._lastRuneSize)) {
            return errInvalidUnreadRune;
        };
        _b._r = _b._r - (_b._lastRuneSize);
        _b._lastByte = ((-1 : GoInt));
        _b._lastRuneSize = ((-1 : GoInt));
        return ((null : stdgo.Error));
    }
    public static function readRune(_b:Reader):{ var _0 : GoRune; var _1 : GoInt; var _2 : Error; } {
        var _r:GoRune = ((0 : GoInt32)), _size:GoInt = ((0 : GoInt)), _err:Error = ((null : stdgo.Error));
        while (((((_b._r + ((4 : GoInt))) > _b._w) && !stdgo.unicode.utf8.Utf8.fullRune(_b._buf.__slice__(_b._r, _b._w))) && (Go.toInterface(_b._err) == Go.toInterface(null))) && ((_b._w - _b._r) < _b._buf.length)) {
            _b._fill();
        };
        _b._lastRuneSize = ((-1 : GoInt));
        if (_b._r == _b._w) {
            return { _0 : ((0 : GoInt32)), _1 : ((0 : GoInt)), _2 : _b._readErr() };
        };
        {
            final __tmp__0 = ((_b._buf[_b._r] : GoRune));
            final __tmp__1 = ((1 : GoInt));
            _r = __tmp__0;
            _size = __tmp__1;
        };
        if (_r >= ((128 : GoInt32))) {
            {
                var __tmp__ = stdgo.unicode.utf8.Utf8.decodeRune(_b._buf.__slice__(_b._r, _b._w));
                _r = __tmp__._0;
                _size = __tmp__._1;
            };
        };
        _b._r = _b._r + (_size);
        _b._lastByte = ((_b._buf[_b._r - ((1 : GoInt))] : GoInt));
        _b._lastRuneSize = _size;
        return { _0 : _r, _1 : _size, _2 : ((null : stdgo.Error)) };
    }
    public static function unreadByte(_b:Reader):Error {
        if ((_b._lastByte < ((0 : GoInt))) || ((_b._r == ((0 : GoInt))) && (_b._w > ((0 : GoInt))))) {
            return errInvalidUnreadByte;
        };
        if (_b._r > ((0 : GoInt))) {
            _b._r--;
        } else {
            _b._w = ((1 : GoInt));
        };
        _b._buf[_b._r] = ((_b._lastByte : GoByte));
        _b._lastByte = ((-1 : GoInt));
        _b._lastRuneSize = ((-1 : GoInt));
        return ((null : stdgo.Error));
    }
    public static function readByte(_b:Reader):{ var _0 : GoByte; var _1 : Error; } {
        _b._lastRuneSize = ((-1 : GoInt));
        while (_b._r == _b._w) {
            if (Go.toInterface(_b._err) != Go.toInterface(null)) {
                return { _0 : ((0 : GoUInt8)), _1 : _b._readErr() };
            };
            _b._fill();
        };
        var _c:GoUInt8 = _b._buf[_b._r];
        _b._r++;
        _b._lastByte = ((_c : GoInt));
        return { _0 : _c, _1 : ((null : stdgo.Error)) };
    }
    public static function read(_b:Reader, _p:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } {
        var _n:GoInt = ((0 : GoInt)), _err:Error = ((null : stdgo.Error));
        _n = _p.length;
        if (_n == ((0 : GoInt))) {
            if (_b.buffered() > ((0 : GoInt))) {
                return { _0 : ((0 : GoInt)), _1 : ((null : stdgo.Error)) };
            };
            return { _0 : ((0 : GoInt)), _1 : _b._readErr() };
        };
        if (_b._r == _b._w) {
            if (Go.toInterface(_b._err) != Go.toInterface(null)) {
                return { _0 : ((0 : GoInt)), _1 : _b._readErr() };
            };
            if (_p.length >= _b._buf.length) {
                {
                    var __tmp__ = _b._rd.read(_p);
                    _n = __tmp__._0;
                    _b._err = __tmp__._1;
                };
                if (_n < ((0 : GoInt))) {
                    throw Go.toInterface(_errNegativeRead);
                };
                if (_n > ((0 : GoInt))) {
                    _b._lastByte = ((_p[_n - ((1 : GoInt))] : GoInt));
                    _b._lastRuneSize = ((-1 : GoInt));
                };
                return { _0 : _n, _1 : _b._readErr() };
            };
            _b._r = ((0 : GoInt));
            _b._w = ((0 : GoInt));
            {
                var __tmp__ = _b._rd.read(_b._buf);
                _n = __tmp__._0;
                _b._err = __tmp__._1;
            };
            if (_n < ((0 : GoInt))) {
                throw Go.toInterface(_errNegativeRead);
            };
            if (_n == ((0 : GoInt))) {
                return { _0 : ((0 : GoInt)), _1 : _b._readErr() };
            };
            _b._w = _b._w + (_n);
        };
        _n = Go.copy(_p, _b._buf.__slice__(_b._r, _b._w));
        _b._r = _b._r + (_n);
        _b._lastByte = ((_b._buf[_b._r - ((1 : GoInt))] : GoInt));
        _b._lastRuneSize = ((-1 : GoInt));
        return { _0 : _n, _1 : ((null : stdgo.Error)) };
    }
    public static function discard(_b:Reader, _n:GoInt):{ var _0 : GoInt; var _1 : Error; } {
        var _discarded:GoInt = ((0 : GoInt)), _err:Error = ((null : stdgo.Error));
        if (_n < ((0 : GoInt))) {
            return { _0 : ((0 : GoInt)), _1 : errNegativeCount };
        };
        if (_n == ((0 : GoInt))) {
            return { _0 : _discarded, _1 : _err };
        };
        _b._lastByte = ((-1 : GoInt));
        _b._lastRuneSize = ((-1 : GoInt));
        var _remain:GoInt = _n;
        while (true) {
            var _skip:GoInt = _b.buffered();
            if (_skip == ((0 : GoInt))) {
                _b._fill();
                _skip = _b.buffered();
            };
            if (_skip > _remain) {
                _skip = _remain;
            };
            _b._r = _b._r + (_skip);
            _remain = _remain - (_skip);
            if (_remain == ((0 : GoInt))) {
                return { _0 : _n, _1 : ((null : stdgo.Error)) };
            };
            if (Go.toInterface(_b._err) != Go.toInterface(null)) {
                return { _0 : _n - _remain, _1 : _b._readErr() };
            };
        };
    }
    public static function peek(_b:Reader, _n:GoInt):{ var _0 : Slice<GoByte>; var _1 : Error; } {
        if (_n < ((0 : GoInt))) {
            return { _0 : new Slice<GoUInt8>().nil(), _1 : errNegativeCount };
        };
        _b._lastByte = ((-1 : GoInt));
        _b._lastRuneSize = ((-1 : GoInt));
        while ((((_b._w - _b._r) < _n) && ((_b._w - _b._r) < _b._buf.length)) && (Go.toInterface(_b._err) == Go.toInterface(null))) {
            _b._fill();
        };
        if (_n > _b._buf.length) {
            return { _0 : _b._buf.__slice__(_b._r, _b._w), _1 : errBufferFull };
        };
        var _err:Error = ((null : stdgo.Error));
        {
            var _avail:GoInt = _b._w - _b._r;
            if (_avail < _n) {
                _n = _avail;
                _err = _b._readErr();
                if (Go.toInterface(_err) == Go.toInterface(null)) {
                    _err = errBufferFull;
                };
            };
        };
        return { _0 : _b._buf.__slice__(_b._r, _b._r + _n), _1 : _err };
    }
    public static function _readErr(_b:Reader):Error {
        var _err:stdgo.Error = _b._err;
        _b._err = ((null : stdgo.Error));
        return _err;
    }
    public static function _fill(_b:Reader):Void {
        if (_b._r > ((0 : GoInt))) {
            Go.copy(_b._buf, _b._buf.__slice__(_b._r, _b._w));
            _b._w = _b._w - (_b._r);
            _b._r = ((0 : GoInt));
        };
        if (_b._w >= _b._buf.length) {
            throw Go.toInterface(((("bufio: tried to fill full buffer" : GoString))));
        };
        {
            var _i:GoInt = ((100 : GoInt));
            Go.cfor(_i > ((0 : GoInt)), _i--, {
                var __tmp__ = _b._rd.read(_b._buf.__slice__(_b._w)), _n:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_n < ((0 : GoInt))) {
                    throw Go.toInterface(_errNegativeRead);
                };
                _b._w = _b._w + (_n);
                if (Go.toInterface(_err) != Go.toInterface(null)) {
                    _b._err = _err;
                    return;
                };
                if (_n > ((0 : GoInt))) {
                    return;
                };
            });
        };
        _b._err = stdgo.io.Io.errNoProgress;
    }
    public static function _reset(_b:Reader, _buf:Slice<GoByte>, _r:stdgo.io.Io.Reader):Void {
        {
            var __tmp__ = Go.copyValue((({ _buf : _buf, _rd : _r, _lastByte : ((-1 : GoInt)), _lastRuneSize : ((-1 : GoInt)), _r : 0, _w : 0, _err : ((null : stdgo.Error)) } : Reader)));
            _b._buf = __tmp__._buf;
            _b._rd = __tmp__._rd;
            _b._r = __tmp__._r;
            _b._w = __tmp__._w;
            _b._err = __tmp__._err;
            _b._lastByte = __tmp__._lastByte;
            _b._lastRuneSize = __tmp__._lastRuneSize;
        };
    }
    public static function reset(_b:Reader, _r:stdgo.io.Io.Reader):Void {
        if (_b._buf == null) {
            _b._buf = new Slice<GoUInt8>(...[for (i in 0 ... ((((4096 : GoInt)) : GoInt)).toBasic()) ((0 : GoUInt8))]);
        };
        _b._reset(_b._buf, _r);
    }
    public static function size(_b:Reader):GoInt {
        return _b._buf.length;
    }
}
class Writer_wrapper {
    public function readFrom(_r:stdgo.io.Io.Reader):{ var _0 : GoInt64; var _1 : Error; } return Writer_static_extension.readFrom(__t__, _r);
    public function writeString(_s:GoString):{ var _0 : GoInt; var _1 : Error; } return Writer_static_extension.writeString(__t__, _s);
    public function writeRune(_r:GoRune):{ var _0 : GoInt; var _1 : Error; } return Writer_static_extension.writeRune(__t__, _r);
    public function writeByte(_c:GoByte):Error return Writer_static_extension.writeByte(__t__, _c);
    public function write(_p:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } return Writer_static_extension.write(__t__, _p);
    public function buffered():GoInt return Writer_static_extension.buffered(__t__);
    public function availableBuffer():Slice<GoByte> return Writer_static_extension.availableBuffer(__t__);
    public function available():GoInt return Writer_static_extension.available(__t__);
    public function flush():Error return Writer_static_extension.flush(__t__);
    public function reset(_w:stdgo.io.Io.Writer):Void Writer_static_extension.reset(__t__, _w);
    public function size():GoInt return Writer_static_extension.size(__t__);
    public var __t__ : Writer;
    public inline function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
    function toString():String return __t__ == null ? "null" : Go.string(__t__);
}
@:access(Writer) class Writer_static_extension {
    public static function readFrom(_b:Writer, _r:stdgo.io.Io.Reader):{ var _0 : GoInt64; var _1 : Error; } {
        var _n:GoInt64 = ((0 : GoInt64)), _err:Error = ((null : stdgo.Error));
        if (Go.toInterface(_b._err) != Go.toInterface(null)) {
            return { _0 : ((0 : GoInt64)), _1 : _b._err };
        };
        var __tmp__ = try {
            { value : ((((_b._wr.__underlying__().value : Dynamic)) : stdgo.io.Io.ReaderFrom)), ok : true };
        } catch(_) {
            { value : ((null : stdgo.io.Io.ReaderFrom)), ok : false };
        }, _readerFrom = __tmp__.value, _readerFromOK = __tmp__.ok;
        var _m:GoInt = ((0 : GoInt));
        while (true) {
            if (_b.available() == ((0 : GoInt))) {
                {
                    var _err1:stdgo.Error = _b.flush();
                    if (Go.toInterface(_err1) != Go.toInterface(null)) {
                        return { _0 : _n, _1 : _err1 };
                    };
                };
            };
            if (_readerFromOK && (_b.buffered() == ((0 : GoInt)))) {
                var __tmp__ = _readerFrom.readFrom(_r), _nn:GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                _b._err = _err;
                _n = _n + (_nn);
                return { _0 : _n, _1 : _err };
            };
            var _nr:GoInt = ((0 : GoInt));
            while (_nr < ((100 : GoInt))) {
                {
                    var __tmp__ = _r.read(_b._buf.__slice__(_b._n));
                    _m = __tmp__._0;
                    _err = __tmp__._1;
                };
                if ((_m != ((0 : GoInt))) || (Go.toInterface(_err) != Go.toInterface(null))) {
                    break;
                };
                _nr++;
            };
            if (_nr == ((100 : GoInt))) {
                return { _0 : _n, _1 : stdgo.io.Io.errNoProgress };
            };
            _b._n = _b._n + (_m);
            _n = _n + (((_m : GoInt64)));
            if (Go.toInterface(_err) != Go.toInterface(null)) {
                break;
            };
        };
        if (Go.toInterface(_err) == Go.toInterface(stdgo.io.Io.eof)) {
            if (_b.available() == ((0 : GoInt))) {
                _err = _b.flush();
            } else {
                _err = ((null : stdgo.Error));
            };
        };
        return { _0 : _n, _1 : _err };
    }
    public static function writeString(_b:Writer, _s:GoString):{ var _0 : GoInt; var _1 : Error; } {
        var _nn:GoInt = ((0 : GoInt));
        while ((_s.length > _b.available()) && (Go.toInterface(_b._err) == Go.toInterface(null))) {
            var _n:GoInt = Go.copy(_b._buf.__slice__(_b._n), _s);
            _b._n = _b._n + (_n);
            _nn = _nn + (_n);
            _s = _s.__slice__(_n);
            _b.flush();
        };
        if (Go.toInterface(_b._err) != Go.toInterface(null)) {
            return { _0 : _nn, _1 : _b._err };
        };
        var _n:GoInt = Go.copy(_b._buf.__slice__(_b._n), _s);
        _b._n = _b._n + (_n);
        _nn = _nn + (_n);
        return { _0 : _nn, _1 : ((null : stdgo.Error)) };
    }
    public static function writeRune(_b:Writer, _r:GoRune):{ var _0 : GoInt; var _1 : Error; } {
        var _size:GoInt = ((0 : GoInt)), _err:Error = ((null : stdgo.Error));
        if (((_r : GoUInt32)) < ((128 : GoUInt32))) {
            _err = _b.writeByte(((_r : GoByte)));
            if (Go.toInterface(_err) != Go.toInterface(null)) {
                return { _0 : ((0 : GoInt)), _1 : _err };
            };
            return { _0 : ((1 : GoInt)), _1 : ((null : stdgo.Error)) };
        };
        if (Go.toInterface(_b._err) != Go.toInterface(null)) {
            return { _0 : ((0 : GoInt)), _1 : _b._err };
        };
        var _n:GoInt = _b.available();
        if (_n < ((4 : GoInt))) {
            {
                _b.flush();
                if (Go.toInterface(_b._err) != Go.toInterface(null)) {
                    return { _0 : ((0 : GoInt)), _1 : _b._err };
                };
            };
            _n = _b.available();
            if (_n < ((4 : GoInt))) {
                return _b.writeString(((_r : GoString)));
            };
        };
        _size = stdgo.unicode.utf8.Utf8.encodeRune(_b._buf.__slice__(_b._n), _r);
        _b._n = _b._n + (_size);
        return { _0 : _size, _1 : ((null : stdgo.Error)) };
    }
    public static function writeByte(_b:Writer, _c:GoByte):Error {
        if (Go.toInterface(_b._err) != Go.toInterface(null)) {
            return _b._err;
        };
        if ((_b.available() <= ((0 : GoInt))) && (Go.toInterface(_b.flush()) != Go.toInterface(null))) {
            return _b._err;
        };
        _b._buf[_b._n] = _c;
        _b._n++;
        return ((null : stdgo.Error));
    }
    public static function write(_b:Writer, _p:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } {
        var _nn:GoInt = ((0 : GoInt)), _err:Error = ((null : stdgo.Error));
        while ((_p.length > _b.available()) && (Go.toInterface(_b._err) == Go.toInterface(null))) {
            var _n:GoInt = ((0 : GoInt));
            if (_b.buffered() == ((0 : GoInt))) {
                {
                    var __tmp__ = _b._wr.write(_p);
                    _n = __tmp__._0;
                    _b._err = __tmp__._1;
                };
            } else {
                _n = Go.copy(_b._buf.__slice__(_b._n), _p);
                _b._n = _b._n + (_n);
                _b.flush();
            };
            _nn = _nn + (_n);
            _p = _p.__slice__(_n);
        };
        if (Go.toInterface(_b._err) != Go.toInterface(null)) {
            return { _0 : _nn, _1 : _b._err };
        };
        var _n:GoInt = Go.copy(_b._buf.__slice__(_b._n), _p);
        _b._n = _b._n + (_n);
        _nn = _nn + (_n);
        return { _0 : _nn, _1 : ((null : stdgo.Error)) };
    }
    public static function buffered(_b:Writer):GoInt {
        return _b._n;
    }
    public static function availableBuffer(_b:Writer):Slice<GoByte> {
        return _b._buf.__slice__(_b._n).__slice__(0, ((0 : GoInt)));
    }
    public static function available(_b:Writer):GoInt {
        return _b._buf.length - _b._n;
    }
    public static function flush(_b:Writer):Error {
        if (Go.toInterface(_b._err) != Go.toInterface(null)) {
            return _b._err;
        };
        if (_b._n == ((0 : GoInt))) {
            return ((null : stdgo.Error));
        };
        var __tmp__ = _b._wr.write(_b._buf.__slice__(((0 : GoInt)), _b._n)), _n:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if ((_n < _b._n) && (Go.toInterface(_err) == Go.toInterface(null))) {
            _err = stdgo.io.Io.errShortWrite;
        };
        if (Go.toInterface(_err) != Go.toInterface(null)) {
            if ((_n > ((0 : GoInt))) && (_n < _b._n)) {
                Go.copy(_b._buf.__slice__(((0 : GoInt)), _b._n - _n), _b._buf.__slice__(_n, _b._n));
            };
            _b._n = _b._n - (_n);
            _b._err = _err;
            return _err;
        };
        _b._n = ((0 : GoInt));
        return ((null : stdgo.Error));
    }
    public static function reset(_b:Writer, _w:stdgo.io.Io.Writer):Void {
        if (_b._buf == null) {
            _b._buf = new Slice<GoUInt8>(...[for (i in 0 ... ((((4096 : GoInt)) : GoInt)).toBasic()) ((0 : GoUInt8))]);
        };
        _b._err = ((null : stdgo.Error));
        _b._n = ((0 : GoInt));
        _b._wr = _w;
    }
    public static function size(_b:Writer):GoInt {
        return _b._buf.length;
    }
}
class ReadWriter_wrapper {
    public var __t__ : ReadWriter;
    public inline function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function available():GoInt return __t__.writer.available();
    public function availableBuffer():Slice<GoUInt8> return __t__.writer.availableBuffer();
    public function discard(_n:GoInt):{ var _0 : GoInt; var _1 : stdgo.Error; } return __t__.reader.discard(_n);
    public function flush():stdgo.Error return __t__.writer.flush();
    public function peek(_n:GoInt):{ var _0 : Slice<GoUInt8>; var _1 : stdgo.Error; } return __t__.reader.peek(_n);
    public function read(_p:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : stdgo.Error; } return __t__.reader.read(_p);
    public function readByte():{ var _0 : GoUInt8; var _1 : stdgo.Error; } return __t__.reader.readByte();
    public function readBytes(_delim:GoUInt8):{ var _0 : Slice<GoUInt8>; var _1 : stdgo.Error; } return __t__.reader.readBytes(_delim);
    public function readFrom(_r:stdgo.io.Io.Reader):{ var _0 : GoInt64; var _1 : stdgo.Error; } return __t__.writer.readFrom(_r);
    public function readLine():{ var _0 : Slice<GoUInt8>; var _1 : Bool; var _2 : stdgo.Error; } return __t__.reader.readLine();
    public function readRune():{ var _0 : GoInt32; var _1 : GoInt; var _2 : stdgo.Error; } return __t__.reader.readRune();
    public function readSlice(_delim:GoUInt8):{ var _0 : Slice<GoUInt8>; var _1 : stdgo.Error; } return __t__.reader.readSlice(_delim);
    public function readString(_delim:GoUInt8):{ var _0 : GoString; var _1 : stdgo.Error; } return __t__.reader.readString(_delim);
    public function unreadByte():stdgo.Error return __t__.reader.unreadByte();
    public function unreadRune():stdgo.Error return __t__.reader.unreadRune();
    public function write(_p:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : stdgo.Error; } return __t__.writer.write(_p);
    public function writeByte(_c:GoUInt8):stdgo.Error return __t__.writer.writeByte(_c);
    public function writeRune(_r:GoInt32):{ var _0 : GoInt; var _1 : stdgo.Error; } return __t__.writer.writeRune(_r);
    public function writeString(_s:GoString):{ var _0 : GoInt; var _1 : stdgo.Error; } return __t__.writer.writeString(_s);
    public function writeTo(_w:stdgo.io.Io.Writer):{ var _0 : GoInt64; var _1 : stdgo.Error; } return __t__.reader.writeTo(_w);
    public function _collectFragments(_delim:GoUInt8):{ var _0 : Slice<Slice<GoUInt8>>; var _1 : Slice<GoUInt8>; var _2 : GoInt; var _3 : stdgo.Error; } return __t__.reader._collectFragments(_delim);
    public function _fill() __t__.reader._fill();
    public function _readErr():stdgo.Error return __t__.reader._readErr();
    public function _reset(_buf:Slice<GoUInt8>, _r:stdgo.io.Io.Reader) __t__.reader._reset(_buf, _r);
    public function _writeBuf(_w:stdgo.io.Io.Writer):{ var _0 : GoInt64; var _1 : stdgo.Error; } return __t__.reader._writeBuf(_w);
}
class Scanner_wrapper {
    public function split(_split:SplitFunc):Void Scanner_static_extension.split(__t__, _split);
    public function buffer(_buf:Slice<GoByte>, _max:GoInt):Void Scanner_static_extension.buffer(__t__, _buf, _max);
    public function _setErr(_err:Error):Void Scanner_static_extension._setErr(__t__, _err);
    public function _advance(_n:GoInt):Bool return Scanner_static_extension._advance(__t__, _n);
    public function scan():Bool return Scanner_static_extension.scan(__t__);
    public function text():GoString return Scanner_static_extension.text(__t__);
    public function bytes():Slice<GoByte> return Scanner_static_extension.bytes(__t__);
    public function err():Error return Scanner_static_extension.err(__t__);
    public var __t__ : Scanner;
    public inline function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
    function toString():String return __t__ == null ? "null" : Go.string(__t__);
}
@:access(Scanner) class Scanner_static_extension {
    public static function split(_s:Scanner, _split:SplitFunc):Void {
        if (_s._scanCalled) {
            throw Go.toInterface(((("Split called after Scan" : GoString))));
        };
        _s._split = Go.copyValue(_split);
    }
    public static function buffer(_s:Scanner, _buf:Slice<GoByte>, _max:GoInt):Void {
        if (_s._scanCalled) {
            throw Go.toInterface(((("Buffer called after Scan" : GoString))));
        };
        _s._buf = _buf.__slice__(((0 : GoInt)), _buf.cap());
        _s._maxTokenSize = _max;
    }
    public static function _setErr(_s:Scanner, _err:Error):Void {
        if ((Go.toInterface(_s._err) == Go.toInterface(null)) || (Go.toInterface(_s._err) == Go.toInterface(stdgo.io.Io.eof))) {
            _s._err = _err;
        };
    }
    public static function _advance(_s:Scanner, _n:GoInt):Bool {
        if (_n < ((0 : GoInt))) {
            _s._setErr(errNegativeAdvance);
            return false;
        };
        if (_n > (_s._end - _s._start)) {
            _s._setErr(errAdvanceTooFar);
            return false;
        };
        _s._start = _s._start + (_n);
        return true;
    }
    public static function scan(_s:Scanner):Bool {
        if (_s._done) {
            return false;
        };
        _s._scanCalled = true;
        while (true) {
            if ((_s._end > _s._start) || (Go.toInterface(_s._err) != Go.toInterface(null))) {
                var __tmp__ = _s._split(_s._buf.__slice__(_s._start, _s._end), Go.toInterface(_s._err) != Go.toInterface(null)), _advance:GoInt = __tmp__._0, _token:Slice<GoUInt8> = __tmp__._1, _err:stdgo.Error = __tmp__._2;
                if (Go.toInterface(_err) != Go.toInterface(null)) {
                    if (Go.toInterface(_err) == Go.toInterface(errFinalToken)) {
                        _s._token = _token;
                        _s._done = true;
                        return true;
                    };
                    _s._setErr(_err);
                    return false;
                };
                if (!_s._advance(_advance)) {
                    return false;
                };
                _s._token = _token;
                if (_token != null) {
                    if ((Go.toInterface(_s._err) == Go.toInterface(null)) || (_advance > ((0 : GoInt)))) {
                        _s._empties = ((0 : GoInt));
                    } else {
                        _s._empties++;
                        if (_s._empties > ((100 : GoInt))) {
                            throw Go.toInterface(((("bufio.Scan: too many empty tokens without progressing" : GoString))));
                        };
                    };
                    return true;
                };
            };
            if (Go.toInterface(_s._err) != Go.toInterface(null)) {
                _s._start = ((0 : GoInt));
                _s._end = ((0 : GoInt));
                return false;
            };
            if ((_s._start > ((0 : GoInt))) && ((_s._end == _s._buf.length) || (_s._start > (_s._buf.length / ((2 : GoInt)))))) {
                Go.copy(_s._buf, _s._buf.__slice__(_s._start, _s._end));
                _s._end = _s._end - (_s._start);
                _s._start = ((0 : GoInt));
            };
            if (_s._end == _s._buf.length) {
                {};
                if ((_s._buf.length >= _s._maxTokenSize) || (_s._buf.length > ((1073741823 : GoInt)))) {
                    _s._setErr(errTooLong);
                    return false;
                };
                var _newSize:GoInt = _s._buf.length * ((2 : GoInt));
                if (_newSize == ((0 : GoInt))) {
                    _newSize = ((4096 : GoInt));
                };
                if (_newSize > _s._maxTokenSize) {
                    _newSize = _s._maxTokenSize;
                };
                var _newBuf:Slice<GoUInt8> = new Slice<GoUInt8>(...[for (i in 0 ... ((_newSize : GoInt)).toBasic()) ((0 : GoUInt8))]);
                Go.copy(_newBuf, _s._buf.__slice__(_s._start, _s._end));
                _s._buf = _newBuf;
                _s._end = _s._end - (_s._start);
                _s._start = ((0 : GoInt));
            };
            {
                var _loop:GoInt = ((0 : GoInt));
                while (true) {
                    var __tmp__ = _s._r.read(_s._buf.__slice__(_s._end, _s._buf.length)), _n:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                    if ((_n < ((0 : GoInt))) || ((_s._buf.length - _s._end) < _n)) {
                        _s._setErr(errBadReadCount);
                        break;
                    };
                    _s._end = _s._end + (_n);
                    if (Go.toInterface(_err) != Go.toInterface(null)) {
                        _s._setErr(_err);
                        break;
                    };
                    if (_n > ((0 : GoInt))) {
                        _s._empties = ((0 : GoInt));
                        break;
                    };
                    _loop++;
                    if (_loop > ((100 : GoInt))) {
                        _s._setErr(stdgo.io.Io.errNoProgress);
                        break;
                    };
                };
            };
        };
    }
    public static function text(_s:Scanner):GoString {
        return ((_s._token : GoString));
    }
    public static function bytes(_s:Scanner):Slice<GoByte> {
        return _s._token;
    }
    public static function err(_s:Scanner):Error {
        if (Go.toInterface(_s._err) == Go.toInterface(stdgo.io.Io.eof)) {
            return ((null : stdgo.Error));
        };
        return _s._err;
    }
}
class SplitFunc_wrapper {
    public var __t__ : SplitFunc;
    public inline function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
}












