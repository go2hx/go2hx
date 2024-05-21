package stdgo._internal.bufio;
private var __go2hxdoc__package : Bool;
final _defaultBufSize : stdgo.GoUInt64 = (4096i64 : stdgo.GoUInt64);
final _minReadBufferSize : stdgo.GoUInt64 = (16i64 : stdgo.GoUInt64);
final _maxConsecutiveEmptyReads : stdgo.GoUInt64 = (100i64 : stdgo.GoUInt64);
final defaultBufSize : stdgo.GoUInt64 = (4096i64 : stdgo.GoUInt64);
final maxScanTokenSize : stdgo.GoUInt64 = (65536i64 : stdgo.GoUInt64);
final _startBufSize : stdgo.GoUInt64 = (4096i64 : stdgo.GoUInt64);
var errInvalidUnreadByte : stdgo.Error = stdgo._internal.errors.Errors.new_(("bufio: invalid use of UnreadByte" : stdgo.GoString));
var errInvalidUnreadRune : stdgo.Error = stdgo._internal.errors.Errors.new_(("bufio: invalid use of UnreadRune" : stdgo.GoString));
var errBufferFull : stdgo.Error = stdgo._internal.errors.Errors.new_(("bufio: buffer full" : stdgo.GoString));
var errNegativeCount : stdgo.Error = stdgo._internal.errors.Errors.new_(("bufio: negative count" : stdgo.GoString));
var _errNegativeRead : stdgo.Error = stdgo._internal.errors.Errors.new_(("bufio: reader returned negative count from Read" : stdgo.GoString));
var _errNegativeWrite : stdgo.Error = stdgo._internal.errors.Errors.new_(("bufio: writer returned negative count from Write" : stdgo.GoString));
var errTooLong : stdgo.Error = stdgo._internal.errors.Errors.new_(("bufio.Scanner: token too long" : stdgo.GoString));
var errNegativeAdvance : stdgo.Error = stdgo._internal.errors.Errors.new_(("bufio.Scanner: SplitFunc returns negative advance count" : stdgo.GoString));
var errAdvanceTooFar : stdgo.Error = stdgo._internal.errors.Errors.new_(("bufio.Scanner: SplitFunc returns advance count beyond input" : stdgo.GoString));
var errBadReadCount : stdgo.Error = stdgo._internal.errors.Errors.new_(("bufio.Scanner: Read returned impossible count" : stdgo.GoString));
var errFinalToken : stdgo.Error = stdgo._internal.errors.Errors.new_(("final token" : stdgo.GoString));
var _errorRune : stdgo.Slice<stdgo.GoUInt8> = (((65533 : stdgo.GoInt32) : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>);
var isSpace : stdgo.GoInt32 -> Bool = _isSpace;
@:structInit @:using(stdgo._internal.bufio.Bufio.Reader_static_extension) class Reader {
    public var _buf : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public var _rd : stdgo._internal.io.Io.Reader = (null : stdgo._internal.io.Io.Reader);
    public var _r : stdgo.GoInt = 0;
    public var _w : stdgo.GoInt = 0;
    public var _err : stdgo.Error = (null : stdgo.Error);
    public var _lastByte : stdgo.GoInt = 0;
    public var _lastRuneSize : stdgo.GoInt = 0;
    public function new(?_buf:stdgo.Slice<stdgo.GoUInt8>, ?_rd:stdgo._internal.io.Io.Reader, ?_r:stdgo.GoInt, ?_w:stdgo.GoInt, ?_err:stdgo.Error, ?_lastByte:stdgo.GoInt, ?_lastRuneSize:stdgo.GoInt) {
        if (_buf != null) this._buf = _buf;
        if (_rd != null) this._rd = _rd;
        if (_r != null) this._r = _r;
        if (_w != null) this._w = _w;
        if (_err != null) this._err = _err;
        if (_lastByte != null) this._lastByte = _lastByte;
        if (_lastRuneSize != null) this._lastRuneSize = _lastRuneSize;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Reader(_buf, _rd, _r, _w, _err, _lastByte, _lastRuneSize);
    }
}
@:structInit @:using(stdgo._internal.bufio.Bufio.Writer_static_extension) class Writer {
    public var _err : stdgo.Error = (null : stdgo.Error);
    public var _buf : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public var _n : stdgo.GoInt = 0;
    public var _wr : stdgo._internal.io.Io.Writer = (null : stdgo._internal.io.Io.Writer);
    public function new(?_err:stdgo.Error, ?_buf:stdgo.Slice<stdgo.GoUInt8>, ?_n:stdgo.GoInt, ?_wr:stdgo._internal.io.Io.Writer) {
        if (_err != null) this._err = _err;
        if (_buf != null) this._buf = _buf;
        if (_n != null) this._n = _n;
        if (_wr != null) this._wr = _wr;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Writer(_err, _buf, _n, _wr);
    }
}
@:structInit @:using(stdgo._internal.bufio.Bufio.ReadWriter_static_extension) class ReadWriter {
    @:embedded
    public var reader : stdgo.Ref<stdgo._internal.bufio.Bufio.Reader> = (null : stdgo.Ref<stdgo._internal.bufio.Bufio.Reader>);
    @:embedded
    public var writer : stdgo.Ref<stdgo._internal.bufio.Bufio.Writer> = (null : stdgo.Ref<stdgo._internal.bufio.Bufio.Writer>);
    public function new(?reader:stdgo.Ref<stdgo._internal.bufio.Bufio.Reader>, ?writer:stdgo.Ref<stdgo._internal.bufio.Bufio.Writer>) {
        if (reader != null) this.reader = reader;
        if (writer != null) this.writer = writer;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    @:embedded
    public function available():stdgo.GoInt return writer.available();
    @:embedded
    public function availableBuffer():stdgo.Slice<stdgo.GoUInt8> return writer.availableBuffer();
    @:embedded
    public function discard(__0:stdgo.GoInt):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return reader.discard(__0);
    @:embedded
    public function flush():stdgo.Error return writer.flush();
    @:embedded
    public function peek(__0:stdgo.GoInt):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } return reader.peek(__0);
    @:embedded
    public function read(_p:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return reader.read(_p);
    @:embedded
    public function readByte():{ var _0 : stdgo.GoUInt8; var _1 : stdgo.Error; } return reader.readByte();
    @:embedded
    public function readBytes(_delim:stdgo.GoUInt8):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } return reader.readBytes(_delim);
    @:embedded
    public function readFrom(_r:stdgo._internal.io.Io.Reader):{ var _0 : stdgo.GoInt64; var _1 : stdgo.Error; } return writer.readFrom(_r);
    @:embedded
    public function readLine():{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : Bool; var _2 : stdgo.Error; } return reader.readLine();
    @:embedded
    public function readRune():{ var _0 : stdgo.GoInt32; var _1 : stdgo.GoInt; var _2 : stdgo.Error; } return reader.readRune();
    @:embedded
    public function readSlice(_delim:stdgo.GoUInt8):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } return reader.readSlice(_delim);
    @:embedded
    public function readString(_delim:stdgo.GoUInt8):{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } return reader.readString(_delim);
    @:embedded
    public function unreadByte():stdgo.Error return reader.unreadByte();
    @:embedded
    public function unreadRune():stdgo.Error return reader.unreadRune();
    @:embedded
    public function write(_p:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return writer.write(_p);
    @:embedded
    public function writeByte(_delim:stdgo.GoUInt8):stdgo.Error return writer.writeByte(_delim);
    @:embedded
    public function writeRune(_r:stdgo.GoInt32):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return writer.writeRune(_r);
    @:embedded
    public function writeString(_text:stdgo.GoString):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return writer.writeString(_text);
    @:embedded
    public function writeTo(_w:stdgo._internal.io.Io.Writer):{ var _0 : stdgo.GoInt64; var _1 : stdgo.Error; } return reader.writeTo(_w);
    @:embedded
    public function _collectFragments(_delim:stdgo.GoUInt8):{ var _0 : stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>>; var _1 : stdgo.Slice<stdgo.GoUInt8>; var _2 : stdgo.GoInt; var _3 : stdgo.Error; } return reader._collectFragments(_delim);
    @:embedded
    public function _fill() reader._fill();
    @:embedded
    public function _readErr():stdgo.Error return reader._readErr();
    @:embedded
    public function _reset(_buf:stdgo.Slice<stdgo.GoUInt8>, _r:stdgo._internal.io.Io.Reader) reader._reset(_buf, _r);
    @:embedded
    public function _writeBuf(_w:stdgo._internal.io.Io.Writer):{ var _0 : stdgo.GoInt64; var _1 : stdgo.Error; } return reader._writeBuf(_w);
    public function __copy__() {
        return new ReadWriter(reader, writer);
    }
}
@:structInit @:using(stdgo._internal.bufio.Bufio.Scanner_static_extension) class Scanner {
    public var _r : stdgo._internal.io.Io.Reader = (null : stdgo._internal.io.Io.Reader);
    public var _split : stdgo._internal.bufio.Bufio.SplitFunc = (null : stdgo._internal.bufio.Bufio.SplitFunc);
    public var _maxTokenSize : stdgo.GoInt = 0;
    public var _token : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public var _buf : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public var _start : stdgo.GoInt = 0;
    public var _end : stdgo.GoInt = 0;
    public var _err : stdgo.Error = (null : stdgo.Error);
    public var _empties : stdgo.GoInt = 0;
    public var _scanCalled : Bool = false;
    public var _done : Bool = false;
    public function new(?_r:stdgo._internal.io.Io.Reader, ?_split:stdgo._internal.bufio.Bufio.SplitFunc, ?_maxTokenSize:stdgo.GoInt, ?_token:stdgo.Slice<stdgo.GoUInt8>, ?_buf:stdgo.Slice<stdgo.GoUInt8>, ?_start:stdgo.GoInt, ?_end:stdgo.GoInt, ?_err:stdgo.Error, ?_empties:stdgo.GoInt, ?_scanCalled:Bool, ?_done:Bool) {
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
    public function __underlying__() return stdgo.Go.toInterface(this);
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
}
@:named typedef SplitFunc = (stdgo.Slice<stdgo.GoUInt8>, Bool) -> { var _0 : stdgo.GoInt; var _1 : stdgo.Slice<stdgo.GoUInt8>; var _2 : stdgo.Error; };
function newReaderSize(_rd:stdgo._internal.io.Io.Reader, _size:stdgo.GoInt):stdgo.Ref<Reader> {
        var __tmp__ = try {
            { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_rd) : stdgo.Ref<Reader>)) : stdgo.Ref<Reader>), _1 : true };
        } catch(_) {
            { _0 : (null : stdgo.Ref<stdgo._internal.bufio.Bufio.Reader>), _1 : false };
        }, _b = __tmp__._0, _ok = __tmp__._1;
        if ((_ok && ((_b._buf.length) >= _size : Bool) : Bool)) {
            return _b;
        };
        if ((_size < (16 : stdgo.GoInt) : Bool)) {
            _size = (16 : stdgo.GoInt);
        };
        var _r = (stdgo.Go.setRef(({} : stdgo._internal.bufio.Bufio.Reader)) : stdgo.Ref<stdgo._internal.bufio.Bufio.Reader>);
        _r._reset((new stdgo.Slice<stdgo.GoUInt8>((_size : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>), _rd);
        return _r;
    }
function newReader(_rd:stdgo._internal.io.Io.Reader):stdgo.Ref<Reader> {
        return newReaderSize(_rd, (4096 : stdgo.GoInt));
    }
function newWriterSize(_w:stdgo._internal.io.Io.Writer, _size:stdgo.GoInt):stdgo.Ref<Writer> {
        var __tmp__ = try {
            { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_w) : stdgo.Ref<Writer>)) : stdgo.Ref<Writer>), _1 : true };
        } catch(_) {
            { _0 : (null : stdgo.Ref<stdgo._internal.bufio.Bufio.Writer>), _1 : false };
        }, _b = __tmp__._0, _ok = __tmp__._1;
        if ((_ok && ((_b._buf.length) >= _size : Bool) : Bool)) {
            return _b;
        };
        if ((_size <= (0 : stdgo.GoInt) : Bool)) {
            _size = (4096 : stdgo.GoInt);
        };
        return (stdgo.Go.setRef(({ _buf : (new stdgo.Slice<stdgo.GoUInt8>((_size : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>), _wr : _w } : stdgo._internal.bufio.Bufio.Writer)) : stdgo.Ref<stdgo._internal.bufio.Bufio.Writer>);
    }
function newWriter(_w:stdgo._internal.io.Io.Writer):stdgo.Ref<Writer> {
        return newWriterSize(_w, (4096 : stdgo.GoInt));
    }
function newReadWriter(_r:stdgo.Ref<Reader>, _w:stdgo.Ref<Writer>):stdgo.Ref<ReadWriter> {
        return (stdgo.Go.setRef((new stdgo._internal.bufio.Bufio.ReadWriter(_r, _w) : stdgo._internal.bufio.Bufio.ReadWriter)) : stdgo.Ref<stdgo._internal.bufio.Bufio.ReadWriter>);
    }
function newScanner(_r:stdgo._internal.io.Io.Reader):stdgo.Ref<Scanner> {
        return (stdgo.Go.setRef(({ _r : _r, _split : scanLines, _maxTokenSize : (65536 : stdgo.GoInt) } : stdgo._internal.bufio.Bufio.Scanner)) : stdgo.Ref<stdgo._internal.bufio.Bufio.Scanner>);
    }
function scanBytes(_data:stdgo.Slice<stdgo.GoByte>, _atEOF:Bool):{ var _0 : stdgo.GoInt; var _1 : stdgo.Slice<stdgo.GoByte>; var _2 : stdgo.Error; } {
        var _advance:stdgo.GoInt = (0 : stdgo.GoInt), _token:stdgo.Slice<stdgo.GoByte> = (null : stdgo.Slice<stdgo.GoUInt8>), _err:stdgo.Error = (null : stdgo.Error);
        if ((_atEOF && (_data.length == (0 : stdgo.GoInt)) : Bool)) {
            return { _0 : (0 : stdgo.GoInt), _1 : (null : stdgo.Slice<stdgo.GoUInt8>), _2 : (null : stdgo.Error) };
        };
        return { _0 : (1 : stdgo.GoInt), _1 : (_data.__slice__((0 : stdgo.GoInt), (1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), _2 : (null : stdgo.Error) };
    }
function scanRunes(_data:stdgo.Slice<stdgo.GoByte>, _atEOF:Bool):{ var _0 : stdgo.GoInt; var _1 : stdgo.Slice<stdgo.GoByte>; var _2 : stdgo.Error; } {
        var _advance:stdgo.GoInt = (0 : stdgo.GoInt), _token:stdgo.Slice<stdgo.GoByte> = (null : stdgo.Slice<stdgo.GoUInt8>), _err:stdgo.Error = (null : stdgo.Error);
        if ((_atEOF && (_data.length == (0 : stdgo.GoInt)) : Bool)) {
            return { _0 : (0 : stdgo.GoInt), _1 : (null : stdgo.Slice<stdgo.GoUInt8>), _2 : (null : stdgo.Error) };
        };
        if ((_data[(0 : stdgo.GoInt)] < (128 : stdgo.GoUInt8) : Bool)) {
            return { _0 : (1 : stdgo.GoInt), _1 : (_data.__slice__((0 : stdgo.GoInt), (1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), _2 : (null : stdgo.Error) };
        };
        var __tmp__ = stdgo._internal.unicode.utf8.Utf8.decodeRune(_data), __0:stdgo.GoInt32 = __tmp__._0, _width:stdgo.GoInt = __tmp__._1;
        if ((_width > (1 : stdgo.GoInt) : Bool)) {
            return { _0 : _width, _1 : (_data.__slice__((0 : stdgo.GoInt), _width) : stdgo.Slice<stdgo.GoUInt8>), _2 : (null : stdgo.Error) };
        };
        if ((!_atEOF && !stdgo._internal.unicode.utf8.Utf8.fullRune(_data) : Bool)) {
            return { _0 : (0 : stdgo.GoInt), _1 : (null : stdgo.Slice<stdgo.GoUInt8>), _2 : (null : stdgo.Error) };
        };
        return { _0 : (1 : stdgo.GoInt), _1 : _errorRune, _2 : (null : stdgo.Error) };
    }
function _dropCR(_data:stdgo.Slice<stdgo.GoByte>):stdgo.Slice<stdgo.GoByte> {
        if ((((_data.length) > (0 : stdgo.GoInt) : Bool) && (_data[((_data.length) - (1 : stdgo.GoInt) : stdgo.GoInt)] == (13 : stdgo.GoUInt8)) : Bool)) {
            return (_data.__slice__((0 : stdgo.GoInt), ((_data.length) - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
        };
        return _data;
    }
function scanLines(_data:stdgo.Slice<stdgo.GoByte>, _atEOF:Bool):{ var _0 : stdgo.GoInt; var _1 : stdgo.Slice<stdgo.GoByte>; var _2 : stdgo.Error; } {
        var _advance:stdgo.GoInt = (0 : stdgo.GoInt), _token:stdgo.Slice<stdgo.GoByte> = (null : stdgo.Slice<stdgo.GoUInt8>), _err:stdgo.Error = (null : stdgo.Error);
        if ((_atEOF && (_data.length == (0 : stdgo.GoInt)) : Bool)) {
            return { _0 : (0 : stdgo.GoInt), _1 : (null : stdgo.Slice<stdgo.GoUInt8>), _2 : (null : stdgo.Error) };
        };
        {
            var _i:stdgo.GoInt = stdgo._internal.bytes.Bytes.indexByte(_data, (10 : stdgo.GoUInt8));
            if ((_i >= (0 : stdgo.GoInt) : Bool)) {
                return { _0 : (_i + (1 : stdgo.GoInt) : stdgo.GoInt), _1 : _dropCR((_data.__slice__((0 : stdgo.GoInt), _i) : stdgo.Slice<stdgo.GoUInt8>)), _2 : (null : stdgo.Error) };
            };
        };
        if (_atEOF) {
            return { _0 : (_data.length), _1 : _dropCR(_data), _2 : (null : stdgo.Error) };
        };
        return { _0 : (0 : stdgo.GoInt), _1 : (null : stdgo.Slice<stdgo.GoUInt8>), _2 : (null : stdgo.Error) };
    }
function _isSpace(_r:stdgo.GoRune):Bool {
        if ((_r <= (255 : stdgo.GoInt32) : Bool)) {
            {
                final __value__ = _r;
                if (__value__ == ((32 : stdgo.GoInt32)) || __value__ == ((9 : stdgo.GoInt32)) || __value__ == ((10 : stdgo.GoInt32)) || __value__ == ((11 : stdgo.GoInt32)) || __value__ == ((12 : stdgo.GoInt32)) || __value__ == ((13 : stdgo.GoInt32))) {
                    return true;
                } else if (__value__ == ((133 : stdgo.GoInt32)) || __value__ == ((160 : stdgo.GoInt32))) {
                    return true;
                };
            };
            return false;
        };
        if ((((8192 : stdgo.GoInt32) <= _r : Bool) && (_r <= (8202 : stdgo.GoInt32) : Bool) : Bool)) {
            return true;
        };
        {
            final __value__ = _r;
            if (__value__ == ((5760 : stdgo.GoInt32)) || __value__ == ((8232 : stdgo.GoInt32)) || __value__ == ((8233 : stdgo.GoInt32)) || __value__ == ((8239 : stdgo.GoInt32)) || __value__ == ((8287 : stdgo.GoInt32)) || __value__ == ((12288 : stdgo.GoInt32))) {
                return true;
            };
        };
        return false;
    }
function scanWords(_data:stdgo.Slice<stdgo.GoByte>, _atEOF:Bool):{ var _0 : stdgo.GoInt; var _1 : stdgo.Slice<stdgo.GoByte>; var _2 : stdgo.Error; } {
        var _advance:stdgo.GoInt = (0 : stdgo.GoInt), _token:stdgo.Slice<stdgo.GoByte> = (null : stdgo.Slice<stdgo.GoUInt8>), _err:stdgo.Error = (null : stdgo.Error);
        var _start:stdgo.GoInt = (0 : stdgo.GoInt);
        {
            var _width:stdgo.GoInt = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_start < (_data.length) : Bool), _start = (_start + (_width) : stdgo.GoInt), {
                var _r:stdgo.GoRune = (0 : stdgo.GoInt32);
                {
                    var __tmp__ = stdgo._internal.unicode.utf8.Utf8.decodeRune((_data.__slice__(_start) : stdgo.Slice<stdgo.GoUInt8>));
                    _r = __tmp__._0;
                    _width = __tmp__._1;
                };
                if (!_isSpace(_r)) {
                    break;
                };
            });
        };
        {
            var __0:stdgo.GoInt = (0 : stdgo.GoInt), __1:stdgo.GoInt = _start, _i:stdgo.GoInt = __1, _width:stdgo.GoInt = __0;
            stdgo.Go.cfor((_i < (_data.length) : Bool), _i = (_i + (_width) : stdgo.GoInt), {
                var _r:stdgo.GoRune = (0 : stdgo.GoInt32);
                {
                    var __tmp__ = stdgo._internal.unicode.utf8.Utf8.decodeRune((_data.__slice__(_i) : stdgo.Slice<stdgo.GoUInt8>));
                    _r = __tmp__._0;
                    _width = __tmp__._1;
                };
                if (_isSpace(_r)) {
                    return { _0 : (_i + _width : stdgo.GoInt), _1 : (_data.__slice__(_start, _i) : stdgo.Slice<stdgo.GoUInt8>), _2 : (null : stdgo.Error) };
                };
            });
        };
        if ((_atEOF && ((_data.length) > _start : Bool) : Bool)) {
            return { _0 : (_data.length), _1 : (_data.__slice__(_start) : stdgo.Slice<stdgo.GoUInt8>), _2 : (null : stdgo.Error) };
        };
        return { _0 : _start, _1 : (null : stdgo.Slice<stdgo.GoUInt8>), _2 : (null : stdgo.Error) };
    }
class Reader_asInterface {
    @:keep
    public dynamic function _writeBuf(_w:stdgo._internal.io.Io.Writer):{ var _0 : stdgo.GoInt64; var _1 : stdgo.Error; } return __self__.value._writeBuf(_w);
    @:keep
    public dynamic function writeTo(_w:stdgo._internal.io.Io.Writer):{ var _0 : stdgo.GoInt64; var _1 : stdgo.Error; } return __self__.value.writeTo(_w);
    @:keep
    public dynamic function readString(_delim:stdgo.GoByte):{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } return __self__.value.readString(_delim);
    @:keep
    public dynamic function readBytes(_delim:stdgo.GoByte):{ var _0 : stdgo.Slice<stdgo.GoByte>; var _1 : stdgo.Error; } return __self__.value.readBytes(_delim);
    @:keep
    public dynamic function _collectFragments(_delim:stdgo.GoByte):{ var _0 : stdgo.Slice<stdgo.Slice<stdgo.GoByte>>; var _1 : stdgo.Slice<stdgo.GoByte>; var _2 : stdgo.GoInt; var _3 : stdgo.Error; } return __self__.value._collectFragments(_delim);
    @:keep
    public dynamic function readLine():{ var _0 : stdgo.Slice<stdgo.GoByte>; var _1 : Bool; var _2 : stdgo.Error; } return __self__.value.readLine();
    @:keep
    public dynamic function readSlice(_delim:stdgo.GoByte):{ var _0 : stdgo.Slice<stdgo.GoByte>; var _1 : stdgo.Error; } return __self__.value.readSlice(_delim);
    @:keep
    public dynamic function buffered():stdgo.GoInt return __self__.value.buffered();
    @:keep
    public dynamic function unreadRune():stdgo.Error return __self__.value.unreadRune();
    @:keep
    public dynamic function readRune():{ var _0 : stdgo.GoRune; var _1 : stdgo.GoInt; var _2 : stdgo.Error; } return __self__.value.readRune();
    @:keep
    public dynamic function unreadByte():stdgo.Error return __self__.value.unreadByte();
    @:keep
    public dynamic function readByte():{ var _0 : stdgo.GoByte; var _1 : stdgo.Error; } return __self__.value.readByte();
    @:keep
    public dynamic function read(_p:stdgo.Slice<stdgo.GoByte>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return __self__.value.read(_p);
    @:keep
    public dynamic function discard(_n:stdgo.GoInt):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return __self__.value.discard(_n);
    @:keep
    public dynamic function peek(_n:stdgo.GoInt):{ var _0 : stdgo.Slice<stdgo.GoByte>; var _1 : stdgo.Error; } return __self__.value.peek(_n);
    @:keep
    public dynamic function _readErr():stdgo.Error return __self__.value._readErr();
    @:keep
    public dynamic function _fill():Void __self__.value._fill();
    @:keep
    public dynamic function _reset(_buf:stdgo.Slice<stdgo.GoByte>, _r:stdgo._internal.io.Io.Reader):Void __self__.value._reset(_buf, _r);
    @:keep
    public dynamic function reset(_r:stdgo._internal.io.Io.Reader):Void __self__.value.reset(_r);
    @:keep
    public dynamic function size():stdgo.GoInt return __self__.value.size();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<Reader>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.bufio.Bufio.Reader_asInterface) class Reader_static_extension {
    @:keep
    static public function _writeBuf( _b:stdgo.Ref<Reader>, _w:stdgo._internal.io.Io.Writer):{ var _0 : stdgo.GoInt64; var _1 : stdgo.Error; } {
        @:recv var _b:stdgo.Ref<Reader> = _b;
        var __tmp__ = _w.write((_b._buf.__slice__(_b._r, _b._w) : stdgo.Slice<stdgo.GoUInt8>)), _n:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if ((_n < (0 : stdgo.GoInt) : Bool)) {
            throw stdgo.Go.toInterface(_errNegativeWrite);
        };
        _b._r = (_b._r + (_n) : stdgo.GoInt);
        return { _0 : (_n : stdgo.GoInt64), _1 : _err };
    }
    @:keep
    static public function writeTo( _b:stdgo.Ref<Reader>, _w:stdgo._internal.io.Io.Writer):{ var _0 : stdgo.GoInt64; var _1 : stdgo.Error; } {
        @:recv var _b:stdgo.Ref<Reader> = _b;
        var _n:stdgo.GoInt64 = (0 : stdgo.GoInt64), _err:stdgo.Error = (null : stdgo.Error);
        _b._lastByte = (-1 : stdgo.GoInt);
        _b._lastRuneSize = (-1 : stdgo.GoInt);
        {
            var __tmp__ = _b._writeBuf(_w);
            _n = __tmp__._0;
            _err = __tmp__._1;
        };
        if (_err != null) {
            return { _0 : _n, _1 : _err };
        };
        {
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_b._rd) : stdgo._internal.io.Io.WriterTo)) : stdgo._internal.io.Io.WriterTo), _1 : true };
            } catch(_) {
                { _0 : (null : stdgo._internal.io.Io.WriterTo), _1 : false };
            }, _r = __tmp__._0, _ok = __tmp__._1;
            if (_ok) {
                var __tmp__ = _r.writeTo(_w), _m:stdgo.GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                _n = (_n + (_m) : stdgo.GoInt64);
                return { _0 : _n, _1 : _err };
            };
        };
        {
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_w) : stdgo._internal.io.Io.ReaderFrom)) : stdgo._internal.io.Io.ReaderFrom), _1 : true };
            } catch(_) {
                { _0 : (null : stdgo._internal.io.Io.ReaderFrom), _1 : false };
            }, _w = __tmp__._0, _ok = __tmp__._1;
            if (_ok) {
                var __tmp__ = _w.readFrom(_b._rd), _m:stdgo.GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                _n = (_n + (_m) : stdgo.GoInt64);
                return { _0 : _n, _1 : _err };
            };
        };
        if (((_b._w - _b._r : stdgo.GoInt) < (_b._buf.length) : Bool)) {
            _b._fill();
        };
        while ((_b._r < _b._w : Bool)) {
            var __tmp__ = _b._writeBuf(_w), _m:stdgo.GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            _n = (_n + (_m) : stdgo.GoInt64);
            if (_err != null) {
                return { _0 : _n, _1 : _err };
            };
            _b._fill();
        };
        if (stdgo.Go.toInterface(_b._err) == (stdgo.Go.toInterface(stdgo._internal.io.Io.eof))) {
            _b._err = (null : stdgo.Error);
        };
        return { _0 : _n, _1 : _b._readErr() };
    }
    @:keep
    static public function readString( _b:stdgo.Ref<Reader>, _delim:stdgo.GoByte):{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } {
        @:recv var _b:stdgo.Ref<Reader> = _b;
        var __tmp__ = _b._collectFragments(_delim), _full:stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>> = __tmp__._0, _frag:stdgo.Slice<stdgo.GoUInt8> = __tmp__._1, _n:stdgo.GoInt = __tmp__._2, _err:stdgo.Error = __tmp__._3;
        var _buf:stdgo._internal.strings.Strings.Builder = ({} : stdgo._internal.strings.Strings.Builder);
        _buf.grow(_n);
        for (__0 => _fb in _full) {
            _buf.write(_fb);
        };
        _buf.write(_frag);
        return { _0 : (_buf.string() : stdgo.GoString)?.__copy__(), _1 : _err };
    }
    @:keep
    static public function readBytes( _b:stdgo.Ref<Reader>, _delim:stdgo.GoByte):{ var _0 : stdgo.Slice<stdgo.GoByte>; var _1 : stdgo.Error; } {
        @:recv var _b:stdgo.Ref<Reader> = _b;
        var __tmp__ = _b._collectFragments(_delim), _full:stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>> = __tmp__._0, _frag:stdgo.Slice<stdgo.GoUInt8> = __tmp__._1, _n:stdgo.GoInt = __tmp__._2, _err:stdgo.Error = __tmp__._3;
        var _buf = (new stdgo.Slice<stdgo.GoUInt8>((_n : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        _n = (0 : stdgo.GoInt);
        for (_i => _ in _full) {
            _n = (_n + (stdgo.Go.copySlice((_buf.__slice__(_n) : stdgo.Slice<stdgo.GoUInt8>), _full[(_i : stdgo.GoInt)])) : stdgo.GoInt);
        };
        stdgo.Go.copySlice((_buf.__slice__(_n) : stdgo.Slice<stdgo.GoUInt8>), _frag);
        return { _0 : _buf, _1 : _err };
    }
    @:keep
    static public function _collectFragments( _b:stdgo.Ref<Reader>, _delim:stdgo.GoByte):{ var _0 : stdgo.Slice<stdgo.Slice<stdgo.GoByte>>; var _1 : stdgo.Slice<stdgo.GoByte>; var _2 : stdgo.GoInt; var _3 : stdgo.Error; } {
        @:recv var _b:stdgo.Ref<Reader> = _b;
        var _fullBuffers:stdgo.Slice<stdgo.Slice<stdgo.GoByte>> = (null : stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>>), _finalFragment:stdgo.Slice<stdgo.GoByte> = (null : stdgo.Slice<stdgo.GoUInt8>), _totalLen:stdgo.GoInt = (0 : stdgo.GoInt), _err:stdgo.Error = (null : stdgo.Error);
        var _frag:stdgo.Slice<stdgo.GoByte> = (null : stdgo.Slice<stdgo.GoUInt8>);
        while (true) {
            var _e:stdgo.Error = (null : stdgo.Error);
            {
                var __tmp__ = _b.readSlice(_delim);
                _frag = __tmp__._0;
                _e = __tmp__._1;
            };
            if (_e == null) {
                break;
            };
            if (stdgo.Go.toInterface(_e) != (stdgo.Go.toInterface(errBufferFull))) {
                _err = _e;
                break;
            };
            var _buf = stdgo._internal.bytes.Bytes.clone(_frag);
            _fullBuffers = (_fullBuffers.__append__(_buf));
            _totalLen = (_totalLen + ((_buf.length)) : stdgo.GoInt);
        };
        _totalLen = (_totalLen + ((_frag.length)) : stdgo.GoInt);
        return { _0 : _fullBuffers, _1 : _frag, _2 : _totalLen, _3 : _err };
    }
    @:keep
    static public function readLine( _b:stdgo.Ref<Reader>):{ var _0 : stdgo.Slice<stdgo.GoByte>; var _1 : Bool; var _2 : stdgo.Error; } {
        @:recv var _b:stdgo.Ref<Reader> = _b;
        var _line:stdgo.Slice<stdgo.GoByte> = (null : stdgo.Slice<stdgo.GoUInt8>), _isPrefix:Bool = false, _err:stdgo.Error = (null : stdgo.Error);
        {
            var __tmp__ = _b.readSlice((10 : stdgo.GoUInt8));
            _line = __tmp__._0;
            _err = __tmp__._1;
        };
        if (stdgo.Go.toInterface(_err) == (stdgo.Go.toInterface(errBufferFull))) {
            if ((((_line.length) > (0 : stdgo.GoInt) : Bool) && (_line[((_line.length) - (1 : stdgo.GoInt) : stdgo.GoInt)] == (13 : stdgo.GoUInt8)) : Bool)) {
                if (_b._r == ((0 : stdgo.GoInt))) {
                    throw stdgo.Go.toInterface(("bufio: tried to rewind past start of buffer" : stdgo.GoString));
                };
                _b._r--;
                _line = (_line.__slice__(0, ((_line.length) - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
            };
            return { _0 : _line, _1 : true, _2 : (null : stdgo.Error) };
        };
        if ((_line.length) == ((0 : stdgo.GoInt))) {
            if (_err != null) {
                _line = (null : stdgo.Slice<stdgo.GoUInt8>);
            };
            return { _0 : _line, _1 : _isPrefix, _2 : _err };
        };
        _err = (null : stdgo.Error);
        if (_line[((_line.length) - (1 : stdgo.GoInt) : stdgo.GoInt)] == ((10 : stdgo.GoUInt8))) {
            var _drop:stdgo.GoInt = (1 : stdgo.GoInt);
            if ((((_line.length) > (1 : stdgo.GoInt) : Bool) && (_line[((_line.length) - (2 : stdgo.GoInt) : stdgo.GoInt)] == (13 : stdgo.GoUInt8)) : Bool)) {
                _drop = (2 : stdgo.GoInt);
            };
            _line = (_line.__slice__(0, ((_line.length) - _drop : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
        };
        return { _0 : _line, _1 : _isPrefix, _2 : _err };
    }
    @:keep
    static public function readSlice( _b:stdgo.Ref<Reader>, _delim:stdgo.GoByte):{ var _0 : stdgo.Slice<stdgo.GoByte>; var _1 : stdgo.Error; } {
        @:recv var _b:stdgo.Ref<Reader> = _b;
        var _line:stdgo.Slice<stdgo.GoByte> = (null : stdgo.Slice<stdgo.GoUInt8>), _err:stdgo.Error = (null : stdgo.Error);
        var _s:stdgo.GoInt = (0 : stdgo.GoInt);
        while (true) {
            {
                var _i:stdgo.GoInt = stdgo._internal.bytes.Bytes.indexByte((_b._buf.__slice__((_b._r + _s : stdgo.GoInt), _b._w) : stdgo.Slice<stdgo.GoUInt8>), _delim);
                if ((_i >= (0 : stdgo.GoInt) : Bool)) {
                    _i = (_i + (_s) : stdgo.GoInt);
                    _line = (_b._buf.__slice__(_b._r, ((_b._r + _i : stdgo.GoInt) + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                    _b._r = (_b._r + ((_i + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoInt);
                    break;
                };
            };
            if (_b._err != null) {
                _line = (_b._buf.__slice__(_b._r, _b._w) : stdgo.Slice<stdgo.GoUInt8>);
                _b._r = _b._w;
                _err = _b._readErr();
                break;
            };
            if ((_b.buffered() >= (_b._buf.length) : Bool)) {
                _b._r = _b._w;
                _line = _b._buf;
                _err = errBufferFull;
                break;
            };
            _s = (_b._w - _b._r : stdgo.GoInt);
            _b._fill();
        };
        {
            var _i:stdgo.GoInt = ((_line.length) - (1 : stdgo.GoInt) : stdgo.GoInt);
            if ((_i >= (0 : stdgo.GoInt) : Bool)) {
                _b._lastByte = (_line[(_i : stdgo.GoInt)] : stdgo.GoInt);
                _b._lastRuneSize = (-1 : stdgo.GoInt);
            };
        };
        return { _0 : _line, _1 : _err };
    }
    @:keep
    static public function buffered( _b:stdgo.Ref<Reader>):stdgo.GoInt {
        @:recv var _b:stdgo.Ref<Reader> = _b;
        return (_b._w - _b._r : stdgo.GoInt);
    }
    @:keep
    static public function unreadRune( _b:stdgo.Ref<Reader>):stdgo.Error {
        @:recv var _b:stdgo.Ref<Reader> = _b;
        if (((_b._lastRuneSize < (0 : stdgo.GoInt) : Bool) || (_b._r < _b._lastRuneSize : Bool) : Bool)) {
            return errInvalidUnreadRune;
        };
        _b._r = (_b._r - (_b._lastRuneSize) : stdgo.GoInt);
        _b._lastByte = (-1 : stdgo.GoInt);
        _b._lastRuneSize = (-1 : stdgo.GoInt);
        return (null : stdgo.Error);
    }
    @:keep
    static public function readRune( _b:stdgo.Ref<Reader>):{ var _0 : stdgo.GoRune; var _1 : stdgo.GoInt; var _2 : stdgo.Error; } {
        @:recv var _b:stdgo.Ref<Reader> = _b;
        var _r:stdgo.GoRune = (0 : stdgo.GoInt32), _size:stdgo.GoInt = (0 : stdgo.GoInt), _err:stdgo.Error = (null : stdgo.Error);
        while ((((((_b._r + (4 : stdgo.GoInt) : stdgo.GoInt) > _b._w : Bool) && !stdgo._internal.unicode.utf8.Utf8.fullRune((_b._buf.__slice__(_b._r, _b._w) : stdgo.Slice<stdgo.GoUInt8>)) : Bool) && _b._err == null : Bool) && ((_b._w - _b._r : stdgo.GoInt) < (_b._buf.length) : Bool) : Bool)) {
            _b._fill();
        };
        _b._lastRuneSize = (-1 : stdgo.GoInt);
        if (_b._r == (_b._w)) {
            return { _0 : (0 : stdgo.GoInt32), _1 : (0 : stdgo.GoInt), _2 : _b._readErr() };
        };
        {
            final __tmp__0 = (_b._buf[(_b._r : stdgo.GoInt)] : stdgo.GoRune);
            final __tmp__1 = (1 : stdgo.GoInt);
            _r = __tmp__0;
            _size = __tmp__1;
        };
        if ((_r >= (128 : stdgo.GoInt32) : Bool)) {
            {
                var __tmp__ = stdgo._internal.unicode.utf8.Utf8.decodeRune((_b._buf.__slice__(_b._r, _b._w) : stdgo.Slice<stdgo.GoUInt8>));
                _r = __tmp__._0;
                _size = __tmp__._1;
            };
        };
        _b._r = (_b._r + (_size) : stdgo.GoInt);
        _b._lastByte = (_b._buf[(_b._r - (1 : stdgo.GoInt) : stdgo.GoInt)] : stdgo.GoInt);
        _b._lastRuneSize = _size;
        return { _0 : _r, _1 : _size, _2 : (null : stdgo.Error) };
    }
    @:keep
    static public function unreadByte( _b:stdgo.Ref<Reader>):stdgo.Error {
        @:recv var _b:stdgo.Ref<Reader> = _b;
        if (((_b._lastByte < (0 : stdgo.GoInt) : Bool) || (_b._r == ((0 : stdgo.GoInt)) && (_b._w > (0 : stdgo.GoInt) : Bool) : Bool) : Bool)) {
            return errInvalidUnreadByte;
        };
        if ((_b._r > (0 : stdgo.GoInt) : Bool)) {
            _b._r--;
        } else {
            _b._w = (1 : stdgo.GoInt);
        };
        _b._buf[(_b._r : stdgo.GoInt)] = (_b._lastByte : stdgo.GoByte);
        _b._lastByte = (-1 : stdgo.GoInt);
        _b._lastRuneSize = (-1 : stdgo.GoInt);
        return (null : stdgo.Error);
    }
    @:keep
    static public function readByte( _b:stdgo.Ref<Reader>):{ var _0 : stdgo.GoByte; var _1 : stdgo.Error; } {
        @:recv var _b:stdgo.Ref<Reader> = _b;
        _b._lastRuneSize = (-1 : stdgo.GoInt);
        while (_b._r == (_b._w)) {
            if (_b._err != null) {
                return { _0 : (0 : stdgo.GoUInt8), _1 : _b._readErr() };
            };
            _b._fill();
        };
        var _c:stdgo.GoUInt8 = _b._buf[(_b._r : stdgo.GoInt)];
        _b._r++;
        _b._lastByte = (_c : stdgo.GoInt);
        return { _0 : _c, _1 : (null : stdgo.Error) };
    }
    @:keep
    static public function read( _b:stdgo.Ref<Reader>, _p:stdgo.Slice<stdgo.GoByte>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _b:stdgo.Ref<Reader> = _b;
        var _n:stdgo.GoInt = (0 : stdgo.GoInt), _err:stdgo.Error = (null : stdgo.Error);
        _n = (_p.length);
        if (_n == ((0 : stdgo.GoInt))) {
            if ((_b.buffered() > (0 : stdgo.GoInt) : Bool)) {
                return { _0 : (0 : stdgo.GoInt), _1 : (null : stdgo.Error) };
            };
            return { _0 : (0 : stdgo.GoInt), _1 : _b._readErr() };
        };
        if (_b._r == (_b._w)) {
            if (_b._err != null) {
                return { _0 : (0 : stdgo.GoInt), _1 : _b._readErr() };
            };
            if (((_p.length) >= (_b._buf.length) : Bool)) {
                {
                    var __tmp__ = _b._rd.read(_p);
                    _n = __tmp__._0;
                    _b._err = __tmp__._1;
                };
                if ((_n < (0 : stdgo.GoInt) : Bool)) {
                    throw stdgo.Go.toInterface(_errNegativeRead);
                };
                if ((_n > (0 : stdgo.GoInt) : Bool)) {
                    _b._lastByte = (_p[(_n - (1 : stdgo.GoInt) : stdgo.GoInt)] : stdgo.GoInt);
                    _b._lastRuneSize = (-1 : stdgo.GoInt);
                };
                return { _0 : _n, _1 : _b._readErr() };
            };
            _b._r = (0 : stdgo.GoInt);
            _b._w = (0 : stdgo.GoInt);
            {
                var __tmp__ = _b._rd.read(_b._buf);
                _n = __tmp__._0;
                _b._err = __tmp__._1;
            };
            if ((_n < (0 : stdgo.GoInt) : Bool)) {
                throw stdgo.Go.toInterface(_errNegativeRead);
            };
            if (_n == ((0 : stdgo.GoInt))) {
                return { _0 : (0 : stdgo.GoInt), _1 : _b._readErr() };
            };
            _b._w = (_b._w + (_n) : stdgo.GoInt);
        };
        _n = stdgo.Go.copySlice(_p, (_b._buf.__slice__(_b._r, _b._w) : stdgo.Slice<stdgo.GoUInt8>));
        _b._r = (_b._r + (_n) : stdgo.GoInt);
        _b._lastByte = (_b._buf[(_b._r - (1 : stdgo.GoInt) : stdgo.GoInt)] : stdgo.GoInt);
        _b._lastRuneSize = (-1 : stdgo.GoInt);
        return { _0 : _n, _1 : (null : stdgo.Error) };
    }
    @:keep
    static public function discard( _b:stdgo.Ref<Reader>, _n:stdgo.GoInt):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _b:stdgo.Ref<Reader> = _b;
        var _discarded:stdgo.GoInt = (0 : stdgo.GoInt), _err:stdgo.Error = (null : stdgo.Error);
        if ((_n < (0 : stdgo.GoInt) : Bool)) {
            return { _0 : (0 : stdgo.GoInt), _1 : errNegativeCount };
        };
        if (_n == ((0 : stdgo.GoInt))) {
            return { _0 : _discarded, _1 : _err };
        };
        _b._lastByte = (-1 : stdgo.GoInt);
        _b._lastRuneSize = (-1 : stdgo.GoInt);
        var _remain:stdgo.GoInt = _n;
        while (true) {
            var _skip:stdgo.GoInt = _b.buffered();
            if (_skip == ((0 : stdgo.GoInt))) {
                _b._fill();
                _skip = _b.buffered();
            };
            if ((_skip > _remain : Bool)) {
                _skip = _remain;
            };
            _b._r = (_b._r + (_skip) : stdgo.GoInt);
            _remain = (_remain - (_skip) : stdgo.GoInt);
            if (_remain == ((0 : stdgo.GoInt))) {
                return { _0 : _n, _1 : (null : stdgo.Error) };
            };
            if (_b._err != null) {
                return { _0 : (_n - _remain : stdgo.GoInt), _1 : _b._readErr() };
            };
        };
    }
    @:keep
    static public function peek( _b:stdgo.Ref<Reader>, _n:stdgo.GoInt):{ var _0 : stdgo.Slice<stdgo.GoByte>; var _1 : stdgo.Error; } {
        @:recv var _b:stdgo.Ref<Reader> = _b;
        if ((_n < (0 : stdgo.GoInt) : Bool)) {
            return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : errNegativeCount };
        };
        _b._lastByte = (-1 : stdgo.GoInt);
        _b._lastRuneSize = (-1 : stdgo.GoInt);
        while (((((_b._w - _b._r : stdgo.GoInt) < _n : Bool) && ((_b._w - _b._r : stdgo.GoInt) < (_b._buf.length) : Bool) : Bool) && (_b._err == null) : Bool)) {
            _b._fill();
        };
        if ((_n > (_b._buf.length) : Bool)) {
            return { _0 : (_b._buf.__slice__(_b._r, _b._w) : stdgo.Slice<stdgo.GoUInt8>), _1 : errBufferFull };
        };
        var _err:stdgo.Error = (null : stdgo.Error);
        {
            var _avail:stdgo.GoInt = (_b._w - _b._r : stdgo.GoInt);
            if ((_avail < _n : Bool)) {
                _n = _avail;
                _err = _b._readErr();
                if (_err == null) {
                    _err = errBufferFull;
                };
            };
        };
        return { _0 : (_b._buf.__slice__(_b._r, (_b._r + _n : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), _1 : _err };
    }
    @:keep
    static public function _readErr( _b:stdgo.Ref<Reader>):stdgo.Error {
        @:recv var _b:stdgo.Ref<Reader> = _b;
        var _err:stdgo.Error = _b._err;
        _b._err = (null : stdgo.Error);
        return _err;
    }
    @:keep
    static public function _fill( _b:stdgo.Ref<Reader>):Void {
        @:recv var _b:stdgo.Ref<Reader> = _b;
        if ((_b._r > (0 : stdgo.GoInt) : Bool)) {
            stdgo.Go.copySlice(_b._buf, (_b._buf.__slice__(_b._r, _b._w) : stdgo.Slice<stdgo.GoUInt8>));
            _b._w = (_b._w - (_b._r) : stdgo.GoInt);
            _b._r = (0 : stdgo.GoInt);
        };
        if ((_b._w >= (_b._buf.length) : Bool)) {
            throw stdgo.Go.toInterface(("bufio: tried to fill full buffer" : stdgo.GoString));
        };
        {
            var _i:stdgo.GoInt = (100 : stdgo.GoInt);
            stdgo.Go.cfor((_i > (0 : stdgo.GoInt) : Bool), _i--, {
                var __tmp__ = _b._rd.read((_b._buf.__slice__(_b._w) : stdgo.Slice<stdgo.GoUInt8>)), _n:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if ((_n < (0 : stdgo.GoInt) : Bool)) {
                    throw stdgo.Go.toInterface(_errNegativeRead);
                };
                _b._w = (_b._w + (_n) : stdgo.GoInt);
                if (_err != null) {
                    _b._err = _err;
                    return;
                };
                if ((_n > (0 : stdgo.GoInt) : Bool)) {
                    return;
                };
            });
        };
        _b._err = stdgo._internal.io.Io.errNoProgress;
    }
    @:keep
    static public function _reset( _b:stdgo.Ref<Reader>, _buf:stdgo.Slice<stdgo.GoByte>, _r:stdgo._internal.io.Io.Reader):Void {
        @:recv var _b:stdgo.Ref<Reader> = _b;
        {
            var __tmp__ = ({ _buf : _buf, _rd : _r, _lastByte : (-1 : stdgo.GoInt), _lastRuneSize : (-1 : stdgo.GoInt) } : stdgo._internal.bufio.Bufio.Reader);
            _b._buf = __tmp__._buf;
            _b._rd = __tmp__._rd;
            _b._r = __tmp__._r;
            _b._w = __tmp__._w;
            _b._err = __tmp__._err;
            _b._lastByte = __tmp__._lastByte;
            _b._lastRuneSize = __tmp__._lastRuneSize;
        };
    }
    @:keep
    static public function reset( _b:stdgo.Ref<Reader>, _r:stdgo._internal.io.Io.Reader):Void {
        @:recv var _b:stdgo.Ref<Reader> = _b;
        if (stdgo.Go.toInterface(stdgo.Go.asInterface(_b)) == (stdgo.Go.toInterface(_r))) {
            return;
        };
        if (_b._buf == null) {
            _b._buf = (new stdgo.Slice<stdgo.GoUInt8>((4096 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        };
        _b._reset(_b._buf, _r);
    }
    @:keep
    static public function size( _b:stdgo.Ref<Reader>):stdgo.GoInt {
        @:recv var _b:stdgo.Ref<Reader> = _b;
        return (_b._buf.length);
    }
}
class Writer_asInterface {
    @:keep
    public dynamic function readFrom(_r:stdgo._internal.io.Io.Reader):{ var _0 : stdgo.GoInt64; var _1 : stdgo.Error; } return __self__.value.readFrom(_r);
    @:keep
    public dynamic function writeString(_s:stdgo.GoString):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return __self__.value.writeString(_s);
    @:keep
    public dynamic function writeRune(_r:stdgo.GoRune):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return __self__.value.writeRune(_r);
    @:keep
    public dynamic function writeByte(_c:stdgo.GoByte):stdgo.Error return __self__.value.writeByte(_c);
    @:keep
    public dynamic function write(_p:stdgo.Slice<stdgo.GoByte>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return __self__.value.write(_p);
    @:keep
    public dynamic function buffered():stdgo.GoInt return __self__.value.buffered();
    @:keep
    public dynamic function availableBuffer():stdgo.Slice<stdgo.GoByte> return __self__.value.availableBuffer();
    @:keep
    public dynamic function available():stdgo.GoInt return __self__.value.available();
    @:keep
    public dynamic function flush():stdgo.Error return __self__.value.flush();
    @:keep
    public dynamic function reset(_w:stdgo._internal.io.Io.Writer):Void __self__.value.reset(_w);
    @:keep
    public dynamic function size():stdgo.GoInt return __self__.value.size();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<Writer>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.bufio.Bufio.Writer_asInterface) class Writer_static_extension {
    @:keep
    static public function readFrom( _b:stdgo.Ref<Writer>, _r:stdgo._internal.io.Io.Reader):{ var _0 : stdgo.GoInt64; var _1 : stdgo.Error; } {
        @:recv var _b:stdgo.Ref<Writer> = _b;
        var _n:stdgo.GoInt64 = (0 : stdgo.GoInt64), _err:stdgo.Error = (null : stdgo.Error);
        if (_b._err != null) {
            return { _0 : (0i64 : stdgo.GoInt64), _1 : _b._err };
        };
        var __tmp__ = try {
            { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_b._wr) : stdgo._internal.io.Io.ReaderFrom)) : stdgo._internal.io.Io.ReaderFrom), _1 : true };
        } catch(_) {
            { _0 : (null : stdgo._internal.io.Io.ReaderFrom), _1 : false };
        }, _readerFrom = __tmp__._0, _readerFromOK = __tmp__._1;
        var _m:stdgo.GoInt = (0 : stdgo.GoInt);
        while (true) {
            if (_b.available() == ((0 : stdgo.GoInt))) {
                {
                    var _err1:stdgo.Error = _b.flush();
                    if (_err1 != null) {
                        return { _0 : _n, _1 : _err1 };
                    };
                };
            };
            if ((_readerFromOK && (_b.buffered() == (0 : stdgo.GoInt)) : Bool)) {
                var __tmp__ = _readerFrom.readFrom(_r), _nn:stdgo.GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                _b._err = _err;
                _n = (_n + (_nn) : stdgo.GoInt64);
                return { _0 : _n, _1 : _err };
            };
            var _nr:stdgo.GoInt = (0 : stdgo.GoInt);
            while ((_nr < (100 : stdgo.GoInt) : Bool)) {
                {
                    var __tmp__ = _r.read((_b._buf.__slice__(_b._n) : stdgo.Slice<stdgo.GoUInt8>));
                    _m = __tmp__._0;
                    _err = __tmp__._1;
                };
                if (((_m != (0 : stdgo.GoInt)) || (_err != null) : Bool)) {
                    break;
                };
                _nr++;
            };
            if (_nr == ((100 : stdgo.GoInt))) {
                return { _0 : _n, _1 : stdgo._internal.io.Io.errNoProgress };
            };
            _b._n = (_b._n + (_m) : stdgo.GoInt);
            _n = (_n + ((_m : stdgo.GoInt64)) : stdgo.GoInt64);
            if (_err != null) {
                break;
            };
        };
        if (stdgo.Go.toInterface(_err) == (stdgo.Go.toInterface(stdgo._internal.io.Io.eof))) {
            if (_b.available() == ((0 : stdgo.GoInt))) {
                _err = _b.flush();
            } else {
                _err = (null : stdgo.Error);
            };
        };
        return { _0 : _n, _1 : _err };
    }
    @:keep
    static public function writeString( _b:stdgo.Ref<Writer>, _s:stdgo.GoString):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _b:stdgo.Ref<Writer> = _b;
        var _sw:stdgo._internal.io.Io.StringWriter = (null : stdgo._internal.io.Io.StringWriter);
        var _tryStringWriter:Bool = true;
        var _nn:stdgo.GoInt = (0 : stdgo.GoInt);
        while ((((_s.length) > _b.available() : Bool) && (_b._err == null) : Bool)) {
            var _n:stdgo.GoInt = (0 : stdgo.GoInt);
            if (((_b.buffered() == ((0 : stdgo.GoInt)) && _sw == null : Bool) && _tryStringWriter : Bool)) {
                {
                    var __tmp__ = try {
                        { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_b._wr) : stdgo._internal.io.Io.StringWriter)) : stdgo._internal.io.Io.StringWriter), _1 : true };
                    } catch(_) {
                        { _0 : (null : stdgo._internal.io.Io.StringWriter), _1 : false };
                    };
                    _sw = __tmp__._0;
                    _tryStringWriter = __tmp__._1;
                };
            };
            if (((_b.buffered() == (0 : stdgo.GoInt)) && _tryStringWriter : Bool)) {
                {
                    var __tmp__ = _sw.writeString(_s?.__copy__());
                    _n = __tmp__._0;
                    _b._err = __tmp__._1;
                };
            } else {
                _n = stdgo.Go.copySlice((_b._buf.__slice__(_b._n) : stdgo.Slice<stdgo.GoUInt8>), _s);
                _b._n = (_b._n + (_n) : stdgo.GoInt);
                _b.flush();
            };
            _nn = (_nn + (_n) : stdgo.GoInt);
            _s = (_s.__slice__(_n) : stdgo.GoString)?.__copy__();
        };
        if (_b._err != null) {
            return { _0 : _nn, _1 : _b._err };
        };
        var _n:stdgo.GoInt = stdgo.Go.copySlice((_b._buf.__slice__(_b._n) : stdgo.Slice<stdgo.GoUInt8>), _s);
        _b._n = (_b._n + (_n) : stdgo.GoInt);
        _nn = (_nn + (_n) : stdgo.GoInt);
        return { _0 : _nn, _1 : (null : stdgo.Error) };
    }
    @:keep
    static public function writeRune( _b:stdgo.Ref<Writer>, _r:stdgo.GoRune):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _b:stdgo.Ref<Writer> = _b;
        var _size:stdgo.GoInt = (0 : stdgo.GoInt), _err:stdgo.Error = (null : stdgo.Error);
        if (((_r : stdgo.GoUInt32) < (128u32 : stdgo.GoUInt32) : Bool)) {
            _err = _b.writeByte((_r : stdgo.GoByte));
            if (_err != null) {
                return { _0 : (0 : stdgo.GoInt), _1 : _err };
            };
            return { _0 : (1 : stdgo.GoInt), _1 : (null : stdgo.Error) };
        };
        if (_b._err != null) {
            return { _0 : (0 : stdgo.GoInt), _1 : _b._err };
        };
        var _n:stdgo.GoInt = _b.available();
        if ((_n < (4 : stdgo.GoInt) : Bool)) {
            {
                _b.flush();
                if (_b._err != null) {
                    return { _0 : (0 : stdgo.GoInt), _1 : _b._err };
                };
            };
            _n = _b.available();
            if ((_n < (4 : stdgo.GoInt) : Bool)) {
                return _b.writeString((_r : stdgo.GoString)?.__copy__());
            };
        };
        _size = stdgo._internal.unicode.utf8.Utf8.encodeRune((_b._buf.__slice__(_b._n) : stdgo.Slice<stdgo.GoUInt8>), _r);
        _b._n = (_b._n + (_size) : stdgo.GoInt);
        return { _0 : _size, _1 : (null : stdgo.Error) };
    }
    @:keep
    static public function writeByte( _b:stdgo.Ref<Writer>, _c:stdgo.GoByte):stdgo.Error {
        @:recv var _b:stdgo.Ref<Writer> = _b;
        if (_b._err != null) {
            return _b._err;
        };
        if (((_b.available() <= (0 : stdgo.GoInt) : Bool) && (_b.flush() != null) : Bool)) {
            return _b._err;
        };
        _b._buf[(_b._n : stdgo.GoInt)] = _c;
        _b._n++;
        return (null : stdgo.Error);
    }
    @:keep
    static public function write( _b:stdgo.Ref<Writer>, _p:stdgo.Slice<stdgo.GoByte>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _b:stdgo.Ref<Writer> = _b;
        var _nn:stdgo.GoInt = (0 : stdgo.GoInt), _err:stdgo.Error = (null : stdgo.Error);
        while ((((_p.length) > _b.available() : Bool) && (_b._err == null) : Bool)) {
            var _n:stdgo.GoInt = (0 : stdgo.GoInt);
            if (_b.buffered() == ((0 : stdgo.GoInt))) {
                {
                    var __tmp__ = _b._wr.write(_p);
                    _n = __tmp__._0;
                    _b._err = __tmp__._1;
                };
            } else {
                _n = stdgo.Go.copySlice((_b._buf.__slice__(_b._n) : stdgo.Slice<stdgo.GoUInt8>), _p);
                _b._n = (_b._n + (_n) : stdgo.GoInt);
                _b.flush();
            };
            _nn = (_nn + (_n) : stdgo.GoInt);
            _p = (_p.__slice__(_n) : stdgo.Slice<stdgo.GoUInt8>);
        };
        if (_b._err != null) {
            return { _0 : _nn, _1 : _b._err };
        };
        var _n:stdgo.GoInt = stdgo.Go.copySlice((_b._buf.__slice__(_b._n) : stdgo.Slice<stdgo.GoUInt8>), _p);
        _b._n = (_b._n + (_n) : stdgo.GoInt);
        _nn = (_nn + (_n) : stdgo.GoInt);
        return { _0 : _nn, _1 : (null : stdgo.Error) };
    }
    @:keep
    static public function buffered( _b:stdgo.Ref<Writer>):stdgo.GoInt {
        @:recv var _b:stdgo.Ref<Writer> = _b;
        return _b._n;
    }
    @:keep
    static public function availableBuffer( _b:stdgo.Ref<Writer>):stdgo.Slice<stdgo.GoByte> {
        @:recv var _b:stdgo.Ref<Writer> = _b;
        return ((_b._buf.__slice__(_b._n) : stdgo.Slice<stdgo.GoUInt8>).__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
    }
    @:keep
    static public function available( _b:stdgo.Ref<Writer>):stdgo.GoInt {
        @:recv var _b:stdgo.Ref<Writer> = _b;
        return ((_b._buf.length) - _b._n : stdgo.GoInt);
    }
    @:keep
    static public function flush( _b:stdgo.Ref<Writer>):stdgo.Error {
        @:recv var _b:stdgo.Ref<Writer> = _b;
        if (_b._err != null) {
            return _b._err;
        };
        if (_b._n == ((0 : stdgo.GoInt))) {
            return (null : stdgo.Error);
        };
        var __tmp__ = _b._wr.write((_b._buf.__slice__((0 : stdgo.GoInt), _b._n) : stdgo.Slice<stdgo.GoUInt8>)), _n:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (((_n < _b._n : Bool) && (_err == null) : Bool)) {
            _err = stdgo._internal.io.Io.errShortWrite;
        };
        if (_err != null) {
            if (((_n > (0 : stdgo.GoInt) : Bool) && (_n < _b._n : Bool) : Bool)) {
                stdgo.Go.copySlice((_b._buf.__slice__((0 : stdgo.GoInt), (_b._n - _n : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), (_b._buf.__slice__(_n, _b._n) : stdgo.Slice<stdgo.GoUInt8>));
            };
            _b._n = (_b._n - (_n) : stdgo.GoInt);
            _b._err = _err;
            return _err;
        };
        _b._n = (0 : stdgo.GoInt);
        return (null : stdgo.Error);
    }
    @:keep
    static public function reset( _b:stdgo.Ref<Writer>, _w:stdgo._internal.io.Io.Writer):Void {
        @:recv var _b:stdgo.Ref<Writer> = _b;
        if (stdgo.Go.toInterface(stdgo.Go.asInterface(_b)) == (stdgo.Go.toInterface(_w))) {
            return;
        };
        if (_b._buf == null) {
            _b._buf = (new stdgo.Slice<stdgo.GoUInt8>((4096 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        };
        _b._err = (null : stdgo.Error);
        _b._n = (0 : stdgo.GoInt);
        _b._wr = _w;
    }
    @:keep
    static public function size( _b:stdgo.Ref<Writer>):stdgo.GoInt {
        @:recv var _b:stdgo.Ref<Writer> = _b;
        return (_b._buf.length);
    }
}
class ReadWriter_asInterface {
    @:embedded
    public dynamic function _writeBuf(_w:stdgo._internal.io.Io.Writer):{ var _0 : stdgo.GoInt64; var _1 : stdgo.Error; } return __self__.value._writeBuf(_w);
    @:embedded
    public dynamic function _reset(_buf:stdgo.Slice<stdgo.GoUInt8>, _r:stdgo._internal.io.Io.Reader):Void __self__.value._reset(_buf, _r);
    @:embedded
    public dynamic function _readErr():stdgo.Error return __self__.value._readErr();
    @:embedded
    public dynamic function _fill():Void __self__.value._fill();
    @:embedded
    public dynamic function _collectFragments(_delim:stdgo.GoUInt8):{ var _0 : stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>>; var _1 : stdgo.Slice<stdgo.GoUInt8>; var _2 : stdgo.GoInt; var _3 : stdgo.Error; } return __self__.value._collectFragments(_delim);
    @:embedded
    public dynamic function writeTo(_w:stdgo._internal.io.Io.Writer):{ var _0 : stdgo.GoInt64; var _1 : stdgo.Error; } return __self__.value.writeTo(_w);
    @:embedded
    public dynamic function writeString(_text:stdgo.GoString):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return __self__.value.writeString(_text);
    @:embedded
    public dynamic function writeRune(_r:stdgo.GoInt32):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return __self__.value.writeRune(_r);
    @:embedded
    public dynamic function writeByte(_delim:stdgo.GoUInt8):stdgo.Error return __self__.value.writeByte(_delim);
    @:embedded
    public dynamic function write(_p:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return __self__.value.write(_p);
    @:embedded
    public dynamic function unreadRune():stdgo.Error return __self__.value.unreadRune();
    @:embedded
    public dynamic function unreadByte():stdgo.Error return __self__.value.unreadByte();
    @:embedded
    public dynamic function readString(_delim:stdgo.GoUInt8):{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } return __self__.value.readString(_delim);
    @:embedded
    public dynamic function readSlice(_delim:stdgo.GoUInt8):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } return __self__.value.readSlice(_delim);
    @:embedded
    public dynamic function readRune():{ var _0 : stdgo.GoInt32; var _1 : stdgo.GoInt; var _2 : stdgo.Error; } return __self__.value.readRune();
    @:embedded
    public dynamic function readLine():{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : Bool; var _2 : stdgo.Error; } return __self__.value.readLine();
    @:embedded
    public dynamic function readFrom(_r:stdgo._internal.io.Io.Reader):{ var _0 : stdgo.GoInt64; var _1 : stdgo.Error; } return __self__.value.readFrom(_r);
    @:embedded
    public dynamic function readBytes(_delim:stdgo.GoUInt8):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } return __self__.value.readBytes(_delim);
    @:embedded
    public dynamic function readByte():{ var _0 : stdgo.GoUInt8; var _1 : stdgo.Error; } return __self__.value.readByte();
    @:embedded
    public dynamic function read(_p:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return __self__.value.read(_p);
    @:embedded
    public dynamic function peek(__0:stdgo.GoInt):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } return __self__.value.peek(__0);
    @:embedded
    public dynamic function flush():stdgo.Error return __self__.value.flush();
    @:embedded
    public dynamic function discard(__0:stdgo.GoInt):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return __self__.value.discard(__0);
    @:embedded
    public dynamic function availableBuffer():stdgo.Slice<stdgo.GoUInt8> return __self__.value.availableBuffer();
    @:embedded
    public dynamic function available():stdgo.GoInt return __self__.value.available();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<ReadWriter>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.bufio.Bufio.ReadWriter_asInterface) class ReadWriter_static_extension {
    @:embedded
    public static function _writeBuf( __self__:ReadWriter, _w:stdgo._internal.io.Io.Writer):{ var _0 : stdgo.GoInt64; var _1 : stdgo.Error; } return __self__._writeBuf(_w);
    @:embedded
    public static function _reset( __self__:ReadWriter, _buf:stdgo.Slice<stdgo.GoUInt8>, _r:stdgo._internal.io.Io.Reader) __self__._reset(_buf, _r);
    @:embedded
    public static function _readErr( __self__:ReadWriter):stdgo.Error return __self__._readErr();
    @:embedded
    public static function _fill( __self__:ReadWriter) __self__._fill();
    @:embedded
    public static function _collectFragments( __self__:ReadWriter, _delim:stdgo.GoUInt8):{ var _0 : stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>>; var _1 : stdgo.Slice<stdgo.GoUInt8>; var _2 : stdgo.GoInt; var _3 : stdgo.Error; } return __self__._collectFragments(_delim);
    @:embedded
    public static function writeTo( __self__:ReadWriter, _w:stdgo._internal.io.Io.Writer):{ var _0 : stdgo.GoInt64; var _1 : stdgo.Error; } return __self__.writeTo(_w);
    @:embedded
    public static function writeString( __self__:ReadWriter, _text:stdgo.GoString):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return __self__.writeString(_text);
    @:embedded
    public static function writeRune( __self__:ReadWriter, _r:stdgo.GoInt32):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return __self__.writeRune(_r);
    @:embedded
    public static function writeByte( __self__:ReadWriter, _delim:stdgo.GoUInt8):stdgo.Error return __self__.writeByte(_delim);
    @:embedded
    public static function write( __self__:ReadWriter, _p:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return __self__.write(_p);
    @:embedded
    public static function unreadRune( __self__:ReadWriter):stdgo.Error return __self__.unreadRune();
    @:embedded
    public static function unreadByte( __self__:ReadWriter):stdgo.Error return __self__.unreadByte();
    @:embedded
    public static function readString( __self__:ReadWriter, _delim:stdgo.GoUInt8):{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } return __self__.readString(_delim);
    @:embedded
    public static function readSlice( __self__:ReadWriter, _delim:stdgo.GoUInt8):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } return __self__.readSlice(_delim);
    @:embedded
    public static function readRune( __self__:ReadWriter):{ var _0 : stdgo.GoInt32; var _1 : stdgo.GoInt; var _2 : stdgo.Error; } return __self__.readRune();
    @:embedded
    public static function readLine( __self__:ReadWriter):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : Bool; var _2 : stdgo.Error; } return __self__.readLine();
    @:embedded
    public static function readFrom( __self__:ReadWriter, _r:stdgo._internal.io.Io.Reader):{ var _0 : stdgo.GoInt64; var _1 : stdgo.Error; } return __self__.readFrom(_r);
    @:embedded
    public static function readBytes( __self__:ReadWriter, _delim:stdgo.GoUInt8):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } return __self__.readBytes(_delim);
    @:embedded
    public static function readByte( __self__:ReadWriter):{ var _0 : stdgo.GoUInt8; var _1 : stdgo.Error; } return __self__.readByte();
    @:embedded
    public static function read( __self__:ReadWriter, _p:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return __self__.read(_p);
    @:embedded
    public static function peek( __self__:ReadWriter, __0:stdgo.GoInt):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } return __self__.peek(__0);
    @:embedded
    public static function flush( __self__:ReadWriter):stdgo.Error return __self__.flush();
    @:embedded
    public static function discard( __self__:ReadWriter, __0:stdgo.GoInt):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return __self__.discard(__0);
    @:embedded
    public static function availableBuffer( __self__:ReadWriter):stdgo.Slice<stdgo.GoUInt8> return __self__.availableBuffer();
    @:embedded
    public static function available( __self__:ReadWriter):stdgo.GoInt return __self__.available();
}
class Scanner_asInterface {
    @:keep
    public dynamic function split(_split:SplitFunc):Void __self__.value.split(_split);
    @:keep
    public dynamic function buffer(_buf:stdgo.Slice<stdgo.GoByte>, _max:stdgo.GoInt):Void __self__.value.buffer(_buf, _max);
    @:keep
    public dynamic function _setErr(_err:stdgo.Error):Void __self__.value._setErr(_err);
    @:keep
    public dynamic function _advance(_n:stdgo.GoInt):Bool return __self__.value._advance(_n);
    @:keep
    public dynamic function scan():Bool return __self__.value.scan();
    @:keep
    public dynamic function text():stdgo.GoString return __self__.value.text();
    @:keep
    public dynamic function bytes():stdgo.Slice<stdgo.GoByte> return __self__.value.bytes();
    @:keep
    public dynamic function err():stdgo.Error return __self__.value.err();
    @:keep
    public dynamic function errOrEOF():stdgo.Error return __self__.value.errOrEOF();
    @:keep
    public dynamic function maxTokenSize(_n:stdgo.GoInt):Void __self__.value.maxTokenSize(_n);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<Scanner>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.bufio.Bufio.Scanner_asInterface) class Scanner_static_extension {
    @:keep
    static public function split( _s:stdgo.Ref<Scanner>, _split:SplitFunc):Void {
        @:recv var _s:stdgo.Ref<Scanner> = _s;
        if (_s._scanCalled) {
            throw stdgo.Go.toInterface(("Split called after Scan" : stdgo.GoString));
        };
        _s._split = _split;
    }
    @:keep
    static public function buffer( _s:stdgo.Ref<Scanner>, _buf:stdgo.Slice<stdgo.GoByte>, _max:stdgo.GoInt):Void {
        @:recv var _s:stdgo.Ref<Scanner> = _s;
        if (_s._scanCalled) {
            throw stdgo.Go.toInterface(("Buffer called after Scan" : stdgo.GoString));
        };
        _s._buf = (_buf.__slice__((0 : stdgo.GoInt), _buf.capacity) : stdgo.Slice<stdgo.GoUInt8>);
        _s._maxTokenSize = _max;
    }
    @:keep
    static public function _setErr( _s:stdgo.Ref<Scanner>, _err:stdgo.Error):Void {
        @:recv var _s:stdgo.Ref<Scanner> = _s;
        if (((_s._err == null) || (stdgo.Go.toInterface(_s._err) == stdgo.Go.toInterface(stdgo._internal.io.Io.eof)) : Bool)) {
            _s._err = _err;
        };
    }
    @:keep
    static public function _advance( _s:stdgo.Ref<Scanner>, _n:stdgo.GoInt):Bool {
        @:recv var _s:stdgo.Ref<Scanner> = _s;
        if ((_n < (0 : stdgo.GoInt) : Bool)) {
            _s._setErr(errNegativeAdvance);
            return false;
        };
        if ((_n > (_s._end - _s._start : stdgo.GoInt) : Bool)) {
            _s._setErr(errAdvanceTooFar);
            return false;
        };
        _s._start = (_s._start + (_n) : stdgo.GoInt);
        return true;
    }
    @:keep
    static public function scan( _s:stdgo.Ref<Scanner>):Bool {
        @:recv var _s:stdgo.Ref<Scanner> = _s;
        if (_s._done) {
            return false;
        };
        _s._scanCalled = true;
        while (true) {
            if (((_s._end > _s._start : Bool) || (_s._err != null) : Bool)) {
                var __tmp__ = _s._split((_s._buf.__slice__(_s._start, _s._end) : stdgo.Slice<stdgo.GoUInt8>), _s._err != null), _advance:stdgo.GoInt = __tmp__._0, _token:stdgo.Slice<stdgo.GoUInt8> = __tmp__._1, _err:stdgo.Error = __tmp__._2;
                if (_err != null) {
                    if (stdgo.Go.toInterface(_err) == (stdgo.Go.toInterface(errFinalToken))) {
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
                    if (((_s._err == null) || (_advance > (0 : stdgo.GoInt) : Bool) : Bool)) {
                        _s._empties = (0 : stdgo.GoInt);
                    } else {
                        _s._empties++;
                        if ((_s._empties > (100 : stdgo.GoInt) : Bool)) {
                            throw stdgo.Go.toInterface(("bufio.Scan: too many empty tokens without progressing" : stdgo.GoString));
                        };
                    };
                    return true;
                };
            };
            if (_s._err != null) {
                _s._start = (0 : stdgo.GoInt);
                _s._end = (0 : stdgo.GoInt);
                return false;
            };
            if (((_s._start > (0 : stdgo.GoInt) : Bool) && (((_s._end == (_s._buf.length)) || (_s._start > ((_s._buf.length) / (2 : stdgo.GoInt) : stdgo.GoInt) : Bool) : Bool)) : Bool)) {
                stdgo.Go.copySlice(_s._buf, (_s._buf.__slice__(_s._start, _s._end) : stdgo.Slice<stdgo.GoUInt8>));
                _s._end = (_s._end - (_s._start) : stdgo.GoInt);
                _s._start = (0 : stdgo.GoInt);
            };
            if (_s._end == ((_s._buf.length))) {
                {};
                if ((((_s._buf.length) >= _s._maxTokenSize : Bool) || ((_s._buf.length) > (1073741823 : stdgo.GoInt) : Bool) : Bool)) {
                    _s._setErr(errTooLong);
                    return false;
                };
                var _newSize:stdgo.GoInt = ((_s._buf.length) * (2 : stdgo.GoInt) : stdgo.GoInt);
                if (_newSize == ((0 : stdgo.GoInt))) {
                    _newSize = (4096 : stdgo.GoInt);
                };
                if ((_newSize > _s._maxTokenSize : Bool)) {
                    _newSize = _s._maxTokenSize;
                };
                var _newBuf = (new stdgo.Slice<stdgo.GoUInt8>((_newSize : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
                stdgo.Go.copySlice(_newBuf, (_s._buf.__slice__(_s._start, _s._end) : stdgo.Slice<stdgo.GoUInt8>));
                _s._buf = _newBuf;
                _s._end = (_s._end - (_s._start) : stdgo.GoInt);
                _s._start = (0 : stdgo.GoInt);
            };
            {
                var _loop:stdgo.GoInt = (0 : stdgo.GoInt);
                while (true) {
                    var __tmp__ = _s._r.read((_s._buf.__slice__(_s._end, (_s._buf.length)) : stdgo.Slice<stdgo.GoUInt8>)), _n:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                    if (((_n < (0 : stdgo.GoInt) : Bool) || (((_s._buf.length) - _s._end : stdgo.GoInt) < _n : Bool) : Bool)) {
                        _s._setErr(errBadReadCount);
                        break;
                    };
                    _s._end = (_s._end + (_n) : stdgo.GoInt);
                    if (_err != null) {
                        _s._setErr(_err);
                        break;
                    };
                    if ((_n > (0 : stdgo.GoInt) : Bool)) {
                        _s._empties = (0 : stdgo.GoInt);
                        break;
                    };
                    _loop++;
                    if ((_loop > (100 : stdgo.GoInt) : Bool)) {
                        _s._setErr(stdgo._internal.io.Io.errNoProgress);
                        break;
                    };
                };
            };
        };
    }
    @:keep
    static public function text( _s:stdgo.Ref<Scanner>):stdgo.GoString {
        @:recv var _s:stdgo.Ref<Scanner> = _s;
        return (_s._token : stdgo.GoString)?.__copy__();
    }
    @:keep
    static public function bytes( _s:stdgo.Ref<Scanner>):stdgo.Slice<stdgo.GoByte> {
        @:recv var _s:stdgo.Ref<Scanner> = _s;
        return _s._token;
    }
    @:keep
    static public function err( _s:stdgo.Ref<Scanner>):stdgo.Error {
        @:recv var _s:stdgo.Ref<Scanner> = _s;
        if (stdgo.Go.toInterface(_s._err) == (stdgo.Go.toInterface(stdgo._internal.io.Io.eof))) {
            return (null : stdgo.Error);
        };
        return _s._err;
    }
    @:keep
    static public function errOrEOF( _s:stdgo.Ref<Scanner>):stdgo.Error {
        @:recv var _s:stdgo.Ref<Scanner> = _s;
        return _s._err;
    }
    @:keep
    static public function maxTokenSize( _s:stdgo.Ref<Scanner>, _n:stdgo.GoInt):Void {
        @:recv var _s:stdgo.Ref<Scanner> = _s;
        if (((_n < (4 : stdgo.GoInt) : Bool) || (_n > (1000000000 : stdgo.GoInt) : Bool) : Bool)) {
            throw stdgo.Go.toInterface(("bad max token size" : stdgo.GoString));
        };
        if ((_n < (_s._buf.length) : Bool)) {
            _s._buf = (new stdgo.Slice<stdgo.GoUInt8>((_n : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        };
        _s._maxTokenSize = _n;
    }
}
