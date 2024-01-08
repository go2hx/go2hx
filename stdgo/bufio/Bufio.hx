package stdgo.bufio;
/**
    // Package bufio implements buffered I/O. It wraps an io.Reader or io.Writer
    // object, creating another object (Reader or Writer) that also implements
    // the interface but provides buffering and some help for textual I/O.
**/
private var __go2hxdoc__package : Bool;
/**
    
    
    
**/
var errInvalidUnreadByte : stdgo.Error = stdgo.errors.Errors.new_(("bufio: invalid use of UnreadByte" : stdgo.GoString));
/**
    
    
    
**/
var errInvalidUnreadRune : stdgo.Error = stdgo.errors.Errors.new_(("bufio: invalid use of UnreadRune" : stdgo.GoString));
/**
    
    
    
**/
var errBufferFull : stdgo.Error = stdgo.errors.Errors.new_(("bufio: buffer full" : stdgo.GoString));
/**
    
    
    
**/
var errNegativeCount : stdgo.Error = stdgo.errors.Errors.new_(("bufio: negative count" : stdgo.GoString));
/**
    
    
    
**/
var _errNegativeRead : stdgo.Error = stdgo.errors.Errors.new_(("bufio: reader returned negative count from Read" : stdgo.GoString));
/**
    
    
    
**/
var _errNegativeWrite : stdgo.Error = stdgo.errors.Errors.new_(("bufio: writer returned negative count from Write" : stdgo.GoString));
/**
    // Errors returned by Scanner.
    
    
**/
var errTooLong : stdgo.Error = stdgo.errors.Errors.new_(("bufio.Scanner: token too long" : stdgo.GoString));
/**
    // Errors returned by Scanner.
    
    
**/
var errNegativeAdvance : stdgo.Error = stdgo.errors.Errors.new_(("bufio.Scanner: SplitFunc returns negative advance count" : stdgo.GoString));
/**
    // Errors returned by Scanner.
    
    
**/
var errAdvanceTooFar : stdgo.Error = stdgo.errors.Errors.new_(("bufio.Scanner: SplitFunc returns advance count beyond input" : stdgo.GoString));
/**
    // Errors returned by Scanner.
    
    
**/
var errBadReadCount : stdgo.Error = stdgo.errors.Errors.new_(("bufio.Scanner: Read returned impossible count" : stdgo.GoString));
/**
    // ErrFinalToken is a special sentinel error value. It is intended to be
    // returned by a Split function to indicate that the token being delivered
    // with the error is the last token and scanning should stop after this one.
    // After ErrFinalToken is received by Scan, scanning stops with no error.
    // The value is useful to stop processing early or when it is necessary to
    // deliver a final empty token. One could achieve the same behavior
    // with a custom error value but providing one here is tidier.
    // See the emptyFinalToken example for a use of this value.
    
    
**/
var errFinalToken : stdgo.Error = stdgo.errors.Errors.new_(("final token" : stdgo.GoString));
/**
    
    
    
**/
var _errorRune : stdgo.Slice<stdgo.StdGoTypes.GoUInt8> = (((65533 : stdgo.StdGoTypes.GoInt32) : stdgo.GoString) : stdgo.Slice<stdgo.StdGoTypes.GoByte>);
/**
    
    
    
**/
var isSpace : stdgo.StdGoTypes.GoInt32 -> Bool = _isSpace;
/**
    
    
    
**/
final _defaultBufSize : stdgo.StdGoTypes.GoUInt64 = (4096i64 : stdgo.StdGoTypes.GoUInt64);
/**
    
    
    
**/
final _minReadBufferSize : stdgo.StdGoTypes.GoUInt64 = (16i64 : stdgo.StdGoTypes.GoUInt64);
/**
    
    
    
**/
final _maxConsecutiveEmptyReads : stdgo.StdGoTypes.GoUInt64 = (100i64 : stdgo.StdGoTypes.GoUInt64);
/**
    
    
    
**/
final defaultBufSize : stdgo.StdGoTypes.GoUInt64 = (4096i64 : stdgo.StdGoTypes.GoUInt64);
/**
    // MaxScanTokenSize is the maximum size used to buffer a token
    // unless the user provides an explicit buffer with Scanner.Buffer.
    // The actual maximum token size may be smaller as the buffer
    // may need to include, for instance, a newline.
    
    
**/
final maxScanTokenSize : stdgo.StdGoTypes.GoUInt64 = (65536i64 : stdgo.StdGoTypes.GoUInt64);
/**
    
    
    // Size of initial allocation for buffer.
**/
final _startBufSize : stdgo.StdGoTypes.GoUInt64 = (4096i64 : stdgo.StdGoTypes.GoUInt64);
/**
    // Reader implements buffering for an io.Reader object.
    
    
**/
@:structInit @:using(stdgo.bufio.Bufio.Reader_static_extension) class Reader {
    public var _buf : stdgo.Slice<stdgo.StdGoTypes.GoUInt8> = (null : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>);
    public var _rd : stdgo.io.Io.Reader = (null : stdgo.io.Io.Reader);
    public var _r : stdgo.StdGoTypes.GoInt = 0;
    public var _w : stdgo.StdGoTypes.GoInt = 0;
    public var _err : stdgo.Error = (null : stdgo.Error);
    public var _lastByte : stdgo.StdGoTypes.GoInt = 0;
    public var _lastRuneSize : stdgo.StdGoTypes.GoInt = 0;
    public function new(?_buf:stdgo.Slice<stdgo.StdGoTypes.GoUInt8>, ?_rd:stdgo.io.Io.Reader, ?_r:stdgo.StdGoTypes.GoInt, ?_w:stdgo.StdGoTypes.GoInt, ?_err:stdgo.Error, ?_lastByte:stdgo.StdGoTypes.GoInt, ?_lastRuneSize:stdgo.StdGoTypes.GoInt) {
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
/**
    // Writer implements buffering for an io.Writer object.
    // If an error occurs writing to a Writer, no more data will be
    // accepted and all subsequent writes, and Flush, will return the error.
    // After all data has been written, the client should call the
    // Flush method to guarantee all data has been forwarded to
    // the underlying io.Writer.
    
    
**/
@:structInit @:using(stdgo.bufio.Bufio.Writer_static_extension) class Writer {
    public var _err : stdgo.Error = (null : stdgo.Error);
    public var _buf : stdgo.Slice<stdgo.StdGoTypes.GoUInt8> = (null : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>);
    public var _n : stdgo.StdGoTypes.GoInt = 0;
    public var _wr : stdgo.io.Io.Writer = (null : stdgo.io.Io.Writer);
    public function new(?_err:stdgo.Error, ?_buf:stdgo.Slice<stdgo.StdGoTypes.GoUInt8>, ?_n:stdgo.StdGoTypes.GoInt, ?_wr:stdgo.io.Io.Writer) {
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
/**
    // ReadWriter stores pointers to a Reader and a Writer.
    // It implements io.ReadWriter.
    
    
**/
@:structInit @:using(stdgo.bufio.Bufio.ReadWriter_static_extension) class ReadWriter {
    @:embedded
    public var reader : stdgo.StdGoTypes.Ref<stdgo.bufio.Bufio.Reader> = (null : stdgo.StdGoTypes.Ref<stdgo.bufio.Bufio.Reader>);
    @:embedded
    public var writer : stdgo.StdGoTypes.Ref<stdgo.bufio.Bufio.Writer> = (null : stdgo.StdGoTypes.Ref<stdgo.bufio.Bufio.Writer>);
    public function new(?reader:stdgo.StdGoTypes.Ref<stdgo.bufio.Bufio.Reader>, ?writer:stdgo.StdGoTypes.Ref<stdgo.bufio.Bufio.Writer>) {
        if (reader != null) this.reader = reader;
        if (writer != null) this.writer = writer;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    @:embedded
    public function available():stdgo.StdGoTypes.GoInt return writer.available();
    @:embedded
    public function availableBuffer():stdgo.Slice<stdgo.StdGoTypes.GoUInt8> return writer.availableBuffer();
    @:embedded
    public function discard(__0:stdgo.StdGoTypes.GoInt):{ var _0 : stdgo.StdGoTypes.GoInt; var _1 : stdgo.Error; } return reader.discard(__0);
    @:embedded
    public function flush():stdgo.Error return writer.flush();
    @:embedded
    public function peek(__0:stdgo.StdGoTypes.GoInt):{ var _0 : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>; var _1 : stdgo.Error; } return reader.peek(__0);
    @:embedded
    public function read(_p:stdgo.Slice<stdgo.StdGoTypes.GoUInt8>):{ var _0 : stdgo.StdGoTypes.GoInt; var _1 : stdgo.Error; } return reader.read(_p);
    @:embedded
    public function readByte():{ var _0 : stdgo.StdGoTypes.GoUInt8; var _1 : stdgo.Error; } return reader.readByte();
    @:embedded
    public function readBytes(_delim:stdgo.StdGoTypes.GoUInt8):{ var _0 : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>; var _1 : stdgo.Error; } return reader.readBytes(_delim);
    @:embedded
    public function readFrom(_r:stdgo.io.Io.Reader):{ var _0 : stdgo.StdGoTypes.GoInt64; var _1 : stdgo.Error; } return writer.readFrom(_r);
    @:embedded
    public function readLine():{ var _0 : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>; var _1 : Bool; var _2 : stdgo.Error; } return reader.readLine();
    @:embedded
    public function readRune():{ var _0 : stdgo.StdGoTypes.GoInt32; var _1 : stdgo.StdGoTypes.GoInt; var _2 : stdgo.Error; } return reader.readRune();
    @:embedded
    public function readSlice(_delim:stdgo.StdGoTypes.GoUInt8):{ var _0 : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>; var _1 : stdgo.Error; } return reader.readSlice(_delim);
    @:embedded
    public function readString(_delim:stdgo.StdGoTypes.GoUInt8):{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } return reader.readString(_delim);
    @:embedded
    public function unreadByte():stdgo.Error return reader.unreadByte();
    @:embedded
    public function unreadRune():stdgo.Error return reader.unreadRune();
    @:embedded
    public function write(_p:stdgo.Slice<stdgo.StdGoTypes.GoUInt8>):{ var _0 : stdgo.StdGoTypes.GoInt; var _1 : stdgo.Error; } return writer.write(_p);
    @:embedded
    public function writeByte(_delim:stdgo.StdGoTypes.GoUInt8):stdgo.Error return writer.writeByte(_delim);
    @:embedded
    public function writeRune(_r:stdgo.StdGoTypes.GoInt32):{ var _0 : stdgo.StdGoTypes.GoInt; var _1 : stdgo.Error; } return writer.writeRune(_r);
    @:embedded
    public function writeString(_text:stdgo.GoString):{ var _0 : stdgo.StdGoTypes.GoInt; var _1 : stdgo.Error; } return writer.writeString(_text);
    @:embedded
    public function writeTo(_w:stdgo.io.Io.Writer):{ var _0 : stdgo.StdGoTypes.GoInt64; var _1 : stdgo.Error; } return reader.writeTo(_w);
    @:embedded
    public function _collectFragments(_delim:stdgo.StdGoTypes.GoUInt8):{ var _0 : stdgo.Slice<stdgo.Slice<stdgo.StdGoTypes.GoUInt8>>; var _1 : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>; var _2 : stdgo.StdGoTypes.GoInt; var _3 : stdgo.Error; } return reader._collectFragments(_delim);
    @:embedded
    public function _fill() reader._fill();
    @:embedded
    public function _readErr():stdgo.Error return reader._readErr();
    @:embedded
    public function _reset(_buf:stdgo.Slice<stdgo.StdGoTypes.GoUInt8>, _r:stdgo.io.Io.Reader) reader._reset(_buf, _r);
    @:embedded
    public function _writeBuf(_w:stdgo.io.Io.Writer):{ var _0 : stdgo.StdGoTypes.GoInt64; var _1 : stdgo.Error; } return reader._writeBuf(_w);
    public function __copy__() {
        return new ReadWriter(reader, writer);
    }
}
/**
    // Scanner provides a convenient interface for reading data such as
    // a file of newline-delimited lines of text. Successive calls to
    // the Scan method will step through the 'tokens' of a file, skipping
    // the bytes between the tokens. The specification of a token is
    // defined by a split function of type SplitFunc; the default split
    // function breaks the input into lines with line termination stripped. Split
    // functions are defined in this package for scanning a file into
    // lines, bytes, UTF-8-encoded runes, and space-delimited words. The
    // client may instead provide a custom split function.
    //
    // Scanning stops unrecoverably at EOF, the first I/O error, or a token too
    // large to fit in the buffer. When a scan stops, the reader may have
    // advanced arbitrarily far past the last token. Programs that need more
    // control over error handling or large tokens, or must run sequential scans
    // on a reader, should use bufio.Reader instead.
    
    
**/
@:structInit @:using(stdgo.bufio.Bufio.Scanner_static_extension) class Scanner {
    public var _r : stdgo.io.Io.Reader = (null : stdgo.io.Io.Reader);
    public var _split : stdgo.bufio.Bufio.SplitFunc = (null : stdgo.bufio.Bufio.SplitFunc);
    public var _maxTokenSize : stdgo.StdGoTypes.GoInt = 0;
    public var _token : stdgo.Slice<stdgo.StdGoTypes.GoUInt8> = (null : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>);
    public var _buf : stdgo.Slice<stdgo.StdGoTypes.GoUInt8> = (null : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>);
    public var _start : stdgo.StdGoTypes.GoInt = 0;
    public var _end : stdgo.StdGoTypes.GoInt = 0;
    public var _err : stdgo.Error = (null : stdgo.Error);
    public var _empties : stdgo.StdGoTypes.GoInt = 0;
    public var _scanCalled : Bool = false;
    public var _done : Bool = false;
    public function new(?_r:stdgo.io.Io.Reader, ?_split:stdgo.bufio.Bufio.SplitFunc, ?_maxTokenSize:stdgo.StdGoTypes.GoInt, ?_token:stdgo.Slice<stdgo.StdGoTypes.GoUInt8>, ?_buf:stdgo.Slice<stdgo.StdGoTypes.GoUInt8>, ?_start:stdgo.StdGoTypes.GoInt, ?_end:stdgo.StdGoTypes.GoInt, ?_err:stdgo.Error, ?_empties:stdgo.StdGoTypes.GoInt, ?_scanCalled:Bool, ?_done:Bool) {
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
/**
    // SplitFunc is the signature of the split function used to tokenize the
    // input. The arguments are an initial substring of the remaining unprocessed
    // data and a flag, atEOF, that reports whether the Reader has no more data
    // to give. The return values are the number of bytes to advance the input
    // and the next token to return to the user, if any, plus an error, if any.
    //
    // Scanning stops if the function returns an error, in which case some of
    // the input may be discarded. If that error is ErrFinalToken, scanning
    // stops with no error.
    //
    // Otherwise, the Scanner advances the input. If the token is not nil,
    // the Scanner returns it to the user. If the token is nil, the
    // Scanner reads more data and continues scanning; if there is no more
    // data--if atEOF was true--the Scanner returns. If the data does not
    // yet hold a complete token, for instance if it has no newline while
    // scanning lines, a SplitFunc can return (0, nil, nil) to signal the
    // Scanner to read more data into the slice and try again with a
    // longer slice starting at the same point in the input.
    //
    // The function is never called with an empty data slice unless atEOF
    // is true. If atEOF is true, however, data may be non-empty and,
    // as always, holds unprocessed text.
**/
@:named typedef SplitFunc = (stdgo.Slice<stdgo.StdGoTypes.GoUInt8>, Bool) -> { var _0 : stdgo.StdGoTypes.GoInt; var _1 : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>; var _2 : stdgo.Error; };
/**
    // NewReaderSize returns a new Reader whose buffer has at least the specified
    // size. If the argument io.Reader is already a Reader with large enough
    // size, it returns the underlying Reader.
**/
function newReaderSize(_rd:stdgo.io.Io.Reader, _size:stdgo.StdGoTypes.GoInt):stdgo.StdGoTypes.Ref<Reader> {
        var __tmp__ = try {
            { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_rd) : stdgo.StdGoTypes.Ref<Reader>)) : stdgo.StdGoTypes.Ref<Reader>), _1 : true };
        } catch(_) {
            { _0 : (null : stdgo.StdGoTypes.Ref<stdgo.bufio.Bufio.Reader>), _1 : false };
        }, _b = __tmp__._0, _ok = __tmp__._1;
        if (_ok && (_b._buf.length >= _size)) {
            return _b;
        };
        if (_size < (16 : stdgo.StdGoTypes.GoInt)) {
            _size = (16 : stdgo.StdGoTypes.GoInt);
        };
        var _r = (stdgo.Go.setRef(({} : stdgo.bufio.Bufio.Reader)) : stdgo.StdGoTypes.Ref<stdgo.bufio.Bufio.Reader>);
        _r._reset(new stdgo.Slice<stdgo.StdGoTypes.GoUInt8>((_size : stdgo.StdGoTypes.GoInt).toBasic(), 0).__setNumber32__(), _rd);
        return _r;
    }
/**
    // NewReader returns a new Reader whose buffer has the default size.
**/
function newReader(_rd:stdgo.io.Io.Reader):stdgo.StdGoTypes.Ref<Reader> {
        return newReaderSize(_rd, (4096 : stdgo.StdGoTypes.GoInt));
    }
/**
    // NewWriterSize returns a new Writer whose buffer has at least the specified
    // size. If the argument io.Writer is already a Writer with large enough
    // size, it returns the underlying Writer.
**/
function newWriterSize(_w:stdgo.io.Io.Writer, _size:stdgo.StdGoTypes.GoInt):stdgo.StdGoTypes.Ref<Writer> {
        var __tmp__ = try {
            { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_w) : stdgo.StdGoTypes.Ref<Writer>)) : stdgo.StdGoTypes.Ref<Writer>), _1 : true };
        } catch(_) {
            { _0 : (null : stdgo.StdGoTypes.Ref<stdgo.bufio.Bufio.Writer>), _1 : false };
        }, _b = __tmp__._0, _ok = __tmp__._1;
        if (_ok && (_b._buf.length >= _size)) {
            return _b;
        };
        if (_size <= (0 : stdgo.StdGoTypes.GoInt)) {
            _size = (4096 : stdgo.StdGoTypes.GoInt);
        };
        return (stdgo.Go.setRef(({ _buf : new stdgo.Slice<stdgo.StdGoTypes.GoUInt8>((_size : stdgo.StdGoTypes.GoInt).toBasic(), 0).__setNumber32__(), _wr : _w } : stdgo.bufio.Bufio.Writer)) : stdgo.StdGoTypes.Ref<stdgo.bufio.Bufio.Writer>);
    }
/**
    // NewWriter returns a new Writer whose buffer has the default size.
    // If the argument io.Writer is already a Writer with large enough buffer size,
    // it returns the underlying Writer.
**/
function newWriter(_w:stdgo.io.Io.Writer):stdgo.StdGoTypes.Ref<Writer> {
        return newWriterSize(_w, (4096 : stdgo.StdGoTypes.GoInt));
    }
/**
    // NewReadWriter allocates a new ReadWriter that dispatches to r and w.
**/
function newReadWriter(_r:stdgo.StdGoTypes.Ref<Reader>, _w:stdgo.StdGoTypes.Ref<Writer>):stdgo.StdGoTypes.Ref<ReadWriter> {
        return (stdgo.Go.setRef((new stdgo.bufio.Bufio.ReadWriter(_r, _w) : stdgo.bufio.Bufio.ReadWriter)) : stdgo.StdGoTypes.Ref<stdgo.bufio.Bufio.ReadWriter>);
    }
/**
    // NewScanner returns a new Scanner to read from r.
    // The split function defaults to ScanLines.
**/
function newScanner(_r:stdgo.io.Io.Reader):stdgo.StdGoTypes.Ref<Scanner> {
        return (stdgo.Go.setRef(({ _r : _r, _split : scanLines, _maxTokenSize : (65536 : stdgo.StdGoTypes.GoInt) } : stdgo.bufio.Bufio.Scanner)) : stdgo.StdGoTypes.Ref<stdgo.bufio.Bufio.Scanner>);
    }
/**
    // ScanBytes is a split function for a Scanner that returns each byte as a token.
**/
function scanBytes(_data:stdgo.Slice<stdgo.StdGoTypes.GoByte>, _atEOF:Bool):{ var _0 : stdgo.StdGoTypes.GoInt; var _1 : stdgo.Slice<stdgo.StdGoTypes.GoByte>; var _2 : stdgo.Error; } {
        var _advance:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt), _token:stdgo.Slice<stdgo.StdGoTypes.GoByte> = (null : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>), _err:stdgo.Error = (null : stdgo.Error);
        if (_atEOF && (_data.length == (0 : stdgo.StdGoTypes.GoInt))) {
            return { _0 : (0 : stdgo.StdGoTypes.GoInt), _1 : (null : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>), _2 : (null : stdgo.Error) };
        };
        return { _0 : (1 : stdgo.StdGoTypes.GoInt), _1 : (_data.__slice__((0 : stdgo.StdGoTypes.GoInt), (1 : stdgo.StdGoTypes.GoInt)) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>), _2 : (null : stdgo.Error) };
    }
/**
    // ScanRunes is a split function for a Scanner that returns each
    // UTF-8-encoded rune as a token. The sequence of runes returned is
    // equivalent to that from a range loop over the input as a string, which
    // means that erroneous UTF-8 encodings translate to U+FFFD = "\xef\xbf\xbd".
    // Because of the Scan interface, this makes it impossible for the client to
    // distinguish correctly encoded replacement runes from encoding errors.
**/
function scanRunes(_data:stdgo.Slice<stdgo.StdGoTypes.GoByte>, _atEOF:Bool):{ var _0 : stdgo.StdGoTypes.GoInt; var _1 : stdgo.Slice<stdgo.StdGoTypes.GoByte>; var _2 : stdgo.Error; } {
        var _advance:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt), _token:stdgo.Slice<stdgo.StdGoTypes.GoByte> = (null : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>), _err:stdgo.Error = (null : stdgo.Error);
        if (_atEOF && (_data.length == (0 : stdgo.StdGoTypes.GoInt))) {
            return { _0 : (0 : stdgo.StdGoTypes.GoInt), _1 : (null : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>), _2 : (null : stdgo.Error) };
        };
        if (_data[(0 : stdgo.StdGoTypes.GoInt)] < (128 : stdgo.StdGoTypes.GoUInt8)) {
            return { _0 : (1 : stdgo.StdGoTypes.GoInt), _1 : (_data.__slice__((0 : stdgo.StdGoTypes.GoInt), (1 : stdgo.StdGoTypes.GoInt)) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>), _2 : (null : stdgo.Error) };
        };
        var __tmp__ = stdgo.unicode.utf8.Utf8.decodeRune(_data), __0:stdgo.StdGoTypes.GoInt32 = __tmp__._0, _width:stdgo.StdGoTypes.GoInt = __tmp__._1;
        if (_width > (1 : stdgo.StdGoTypes.GoInt)) {
            return { _0 : _width, _1 : (_data.__slice__((0 : stdgo.StdGoTypes.GoInt), _width) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>), _2 : (null : stdgo.Error) };
        };
        if (!_atEOF && !stdgo.unicode.utf8.Utf8.fullRune(_data)) {
            return { _0 : (0 : stdgo.StdGoTypes.GoInt), _1 : (null : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>), _2 : (null : stdgo.Error) };
        };
        return { _0 : (1 : stdgo.StdGoTypes.GoInt), _1 : _errorRune, _2 : (null : stdgo.Error) };
    }
/**
    // dropCR drops a terminal \r from the data.
**/
function _dropCR(_data:stdgo.Slice<stdgo.StdGoTypes.GoByte>):stdgo.Slice<stdgo.StdGoTypes.GoByte> {
        if ((_data.length > (0 : stdgo.StdGoTypes.GoInt)) && (_data[((_data.length) - (1 : stdgo.StdGoTypes.GoInt) : stdgo.StdGoTypes.GoInt)] == (13 : stdgo.StdGoTypes.GoUInt8))) {
            return (_data.__slice__((0 : stdgo.StdGoTypes.GoInt), (_data.length) - (1 : stdgo.StdGoTypes.GoInt)) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>);
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
function scanLines(_data:stdgo.Slice<stdgo.StdGoTypes.GoByte>, _atEOF:Bool):{ var _0 : stdgo.StdGoTypes.GoInt; var _1 : stdgo.Slice<stdgo.StdGoTypes.GoByte>; var _2 : stdgo.Error; } {
        var _advance:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt), _token:stdgo.Slice<stdgo.StdGoTypes.GoByte> = (null : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>), _err:stdgo.Error = (null : stdgo.Error);
        if (_atEOF && (_data.length == (0 : stdgo.StdGoTypes.GoInt))) {
            return { _0 : (0 : stdgo.StdGoTypes.GoInt), _1 : (null : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>), _2 : (null : stdgo.Error) };
        };
        {
            var _i:stdgo.StdGoTypes.GoInt = stdgo.bytes.Bytes.indexByte(_data, (10 : stdgo.StdGoTypes.GoUInt8));
            if (_i >= (0 : stdgo.StdGoTypes.GoInt)) {
                return { _0 : _i + (1 : stdgo.StdGoTypes.GoInt), _1 : _dropCR((_data.__slice__((0 : stdgo.StdGoTypes.GoInt), _i) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>)), _2 : (null : stdgo.Error) };
            };
        };
        if (_atEOF) {
            return { _0 : (_data.length), _1 : _dropCR(_data), _2 : (null : stdgo.Error) };
        };
        return { _0 : (0 : stdgo.StdGoTypes.GoInt), _1 : (null : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>), _2 : (null : stdgo.Error) };
    }
/**
    // isSpace reports whether the character is a Unicode white space character.
    // We avoid dependency on the unicode package, but check validity of the implementation
    // in the tests.
**/
function _isSpace(_r:stdgo.StdGoTypes.GoRune):Bool {
        if (_r <= (255 : stdgo.StdGoTypes.GoInt32)) {
            {
                final __value__ = _r;
                if (__value__ == ((32 : stdgo.StdGoTypes.GoInt32)) || __value__ == ((9 : stdgo.StdGoTypes.GoInt32)) || __value__ == ((10 : stdgo.StdGoTypes.GoInt32)) || __value__ == ((11 : stdgo.StdGoTypes.GoInt32)) || __value__ == ((12 : stdgo.StdGoTypes.GoInt32)) || __value__ == ((13 : stdgo.StdGoTypes.GoInt32))) {
                    return true;
                } else if (__value__ == ((133 : stdgo.StdGoTypes.GoInt32)) || __value__ == ((160 : stdgo.StdGoTypes.GoInt32))) {
                    return true;
                };
            };
            return false;
        };
        if (((8192 : stdgo.StdGoTypes.GoInt32) <= _r) && (_r <= (8202 : stdgo.StdGoTypes.GoInt32))) {
            return true;
        };
        {
            final __value__ = _r;
            if (__value__ == ((5760 : stdgo.StdGoTypes.GoInt32)) || __value__ == ((8232 : stdgo.StdGoTypes.GoInt32)) || __value__ == ((8233 : stdgo.StdGoTypes.GoInt32)) || __value__ == ((8239 : stdgo.StdGoTypes.GoInt32)) || __value__ == ((8287 : stdgo.StdGoTypes.GoInt32)) || __value__ == ((12288 : stdgo.StdGoTypes.GoInt32))) {
                return true;
            };
        };
        return false;
    }
/**
    // ScanWords is a split function for a Scanner that returns each
    // space-separated word of text, with surrounding spaces deleted. It will
    // never return an empty string. The definition of space is set by
    // unicode.IsSpace.
**/
function scanWords(_data:stdgo.Slice<stdgo.StdGoTypes.GoByte>, _atEOF:Bool):{ var _0 : stdgo.StdGoTypes.GoInt; var _1 : stdgo.Slice<stdgo.StdGoTypes.GoByte>; var _2 : stdgo.Error; } {
        var _advance:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt), _token:stdgo.Slice<stdgo.StdGoTypes.GoByte> = (null : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>), _err:stdgo.Error = (null : stdgo.Error);
        var _start:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
        {
            var _width:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
            stdgo.Go.cfor(_start < (_data.length), _start = _start + (_width), {
                var _r:stdgo.StdGoTypes.GoRune = (0 : stdgo.StdGoTypes.GoInt32);
                {
                    var __tmp__ = stdgo.unicode.utf8.Utf8.decodeRune((_data.__slice__(_start) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>));
                    _r = __tmp__._0;
                    _width = __tmp__._1;
                };
                if (!_isSpace(_r)) {
                    break;
                };
            });
        };
        {
            var __0:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt), __1:stdgo.StdGoTypes.GoInt = _start, _i:stdgo.StdGoTypes.GoInt = __1, _width:stdgo.StdGoTypes.GoInt = __0;
            stdgo.Go.cfor(_i < (_data.length), _i = _i + (_width), {
                var _r:stdgo.StdGoTypes.GoRune = (0 : stdgo.StdGoTypes.GoInt32);
                {
                    var __tmp__ = stdgo.unicode.utf8.Utf8.decodeRune((_data.__slice__(_i) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>));
                    _r = __tmp__._0;
                    _width = __tmp__._1;
                };
                if (_isSpace(_r)) {
                    return { _0 : _i + _width, _1 : (_data.__slice__(_start, _i) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>), _2 : (null : stdgo.Error) };
                };
            });
        };
        if (_atEOF && (_data.length > _start)) {
            return { _0 : (_data.length), _1 : (_data.__slice__(_start) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>), _2 : (null : stdgo.Error) };
        };
        return { _0 : _start, _1 : (null : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>), _2 : (null : stdgo.Error) };
    }
class Reader_asInterface {
    /**
        // writeBuf writes the Reader's buffer to the writer.
    **/
    @:keep
    public dynamic function _writeBuf(_w:stdgo.io.Io.Writer):{ var _0 : stdgo.StdGoTypes.GoInt64; var _1 : stdgo.Error; } return __self__.value._writeBuf(_w);
    /**
        // WriteTo implements io.WriterTo.
        // This may make multiple calls to the Read method of the underlying Reader.
        // If the underlying reader supports the WriteTo method,
        // this calls the underlying WriteTo without buffering.
    **/
    @:keep
    public dynamic function writeTo(_w:stdgo.io.Io.Writer):{ var _0 : stdgo.StdGoTypes.GoInt64; var _1 : stdgo.Error; } return __self__.value.writeTo(_w);
    /**
        // ReadString reads until the first occurrence of delim in the input,
        // returning a string containing the data up to and including the delimiter.
        // If ReadString encounters an error before finding a delimiter,
        // it returns the data read before the error and the error itself (often io.EOF).
        // ReadString returns err != nil if and only if the returned data does not end in
        // delim.
        // For simple uses, a Scanner may be more convenient.
    **/
    @:keep
    public dynamic function readString(_delim:stdgo.StdGoTypes.GoByte):{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } return __self__.value.readString(_delim);
    /**
        // ReadBytes reads until the first occurrence of delim in the input,
        // returning a slice containing the data up to and including the delimiter.
        // If ReadBytes encounters an error before finding a delimiter,
        // it returns the data read before the error and the error itself (often io.EOF).
        // ReadBytes returns err != nil if and only if the returned data does not end in
        // delim.
        // For simple uses, a Scanner may be more convenient.
    **/
    @:keep
    public dynamic function readBytes(_delim:stdgo.StdGoTypes.GoByte):{ var _0 : stdgo.Slice<stdgo.StdGoTypes.GoByte>; var _1 : stdgo.Error; } return __self__.value.readBytes(_delim);
    /**
        // collectFragments reads until the first occurrence of delim in the input. It
        // returns (slice of full buffers, remaining bytes before delim, total number
        // of bytes in the combined first two elements, error).
        // The complete result is equal to
        // `bytes.Join(append(fullBuffers, finalFragment), nil)`, which has a
        // length of `totalLen`. The result is structured in this way to allow callers
        // to minimize allocations and copies.
    **/
    @:keep
    public dynamic function _collectFragments(_delim:stdgo.StdGoTypes.GoByte):{ var _0 : stdgo.Slice<stdgo.Slice<stdgo.StdGoTypes.GoByte>>; var _1 : stdgo.Slice<stdgo.StdGoTypes.GoByte>; var _2 : stdgo.StdGoTypes.GoInt; var _3 : stdgo.Error; } return __self__.value._collectFragments(_delim);
    /**
        // ReadLine is a low-level line-reading primitive. Most callers should use
        // ReadBytes('\n') or ReadString('\n') instead or use a Scanner.
        //
        // ReadLine tries to return a single line, not including the end-of-line bytes.
        // If the line was too long for the buffer then isPrefix is set and the
        // beginning of the line is returned. The rest of the line will be returned
        // from future calls. isPrefix will be false when returning the last fragment
        // of the line. The returned buffer is only valid until the next call to
        // ReadLine. ReadLine either returns a non-nil line or it returns an error,
        // never both.
        //
        // The text returned from ReadLine does not include the line end ("\r\n" or "\n").
        // No indication or error is given if the input ends without a final line end.
        // Calling UnreadByte after ReadLine will always unread the last byte read
        // (possibly a character belonging to the line end) even if that byte is not
        // part of the line returned by ReadLine.
    **/
    @:keep
    public dynamic function readLine():{ var _0 : stdgo.Slice<stdgo.StdGoTypes.GoByte>; var _1 : Bool; var _2 : stdgo.Error; } return __self__.value.readLine();
    /**
        // ReadSlice reads until the first occurrence of delim in the input,
        // returning a slice pointing at the bytes in the buffer.
        // The bytes stop being valid at the next read.
        // If ReadSlice encounters an error before finding a delimiter,
        // it returns all the data in the buffer and the error itself (often io.EOF).
        // ReadSlice fails with error ErrBufferFull if the buffer fills without a delim.
        // Because the data returned from ReadSlice will be overwritten
        // by the next I/O operation, most clients should use
        // ReadBytes or ReadString instead.
        // ReadSlice returns err != nil if and only if line does not end in delim.
    **/
    @:keep
    public dynamic function readSlice(_delim:stdgo.StdGoTypes.GoByte):{ var _0 : stdgo.Slice<stdgo.StdGoTypes.GoByte>; var _1 : stdgo.Error; } return __self__.value.readSlice(_delim);
    /**
        // Buffered returns the number of bytes that can be read from the current buffer.
    **/
    @:keep
    public dynamic function buffered():stdgo.StdGoTypes.GoInt return __self__.value.buffered();
    /**
        // UnreadRune unreads the last rune. If the most recent method called on
        // the Reader was not a ReadRune, UnreadRune returns an error. (In this
        // regard it is stricter than UnreadByte, which will unread the last byte
        // from any read operation.)
    **/
    @:keep
    public dynamic function unreadRune():stdgo.Error return __self__.value.unreadRune();
    /**
        // ReadRune reads a single UTF-8 encoded Unicode character and returns the
        // rune and its size in bytes. If the encoded rune is invalid, it consumes one byte
        // and returns unicode.ReplacementChar (U+FFFD) with a size of 1.
    **/
    @:keep
    public dynamic function readRune():{ var _0 : stdgo.StdGoTypes.GoRune; var _1 : stdgo.StdGoTypes.GoInt; var _2 : stdgo.Error; } return __self__.value.readRune();
    /**
        // UnreadByte unreads the last byte. Only the most recently read byte can be unread.
        //
        // UnreadByte returns an error if the most recent method called on the
        // Reader was not a read operation. Notably, Peek, Discard, and WriteTo are not
        // considered read operations.
    **/
    @:keep
    public dynamic function unreadByte():stdgo.Error return __self__.value.unreadByte();
    /**
        // ReadByte reads and returns a single byte.
        // If no byte is available, returns an error.
    **/
    @:keep
    public dynamic function readByte():{ var _0 : stdgo.StdGoTypes.GoByte; var _1 : stdgo.Error; } return __self__.value.readByte();
    /**
        // Read reads data into p.
        // It returns the number of bytes read into p.
        // The bytes are taken from at most one Read on the underlying Reader,
        // hence n may be less than len(p).
        // To read exactly len(p) bytes, use io.ReadFull(b, p).
        // If the underlying Reader can return a non-zero count with io.EOF,
        // then this Read method can do so as well; see the [io.Reader] docs.
    **/
    @:keep
    public dynamic function read(_p:stdgo.Slice<stdgo.StdGoTypes.GoByte>):{ var _0 : stdgo.StdGoTypes.GoInt; var _1 : stdgo.Error; } return __self__.value.read(_p);
    /**
        // Discard skips the next n bytes, returning the number of bytes discarded.
        //
        // If Discard skips fewer than n bytes, it also returns an error.
        // If 0 <= n <= b.Buffered(), Discard is guaranteed to succeed without
        // reading from the underlying io.Reader.
    **/
    @:keep
    public dynamic function discard(_n:stdgo.StdGoTypes.GoInt):{ var _0 : stdgo.StdGoTypes.GoInt; var _1 : stdgo.Error; } return __self__.value.discard(_n);
    /**
        // Peek returns the next n bytes without advancing the reader. The bytes stop
        // being valid at the next read call. If Peek returns fewer than n bytes, it
        // also returns an error explaining why the read is short. The error is
        // ErrBufferFull if n is larger than b's buffer size.
        //
        // Calling Peek prevents a UnreadByte or UnreadRune call from succeeding
        // until the next read operation.
    **/
    @:keep
    public dynamic function peek(_n:stdgo.StdGoTypes.GoInt):{ var _0 : stdgo.Slice<stdgo.StdGoTypes.GoByte>; var _1 : stdgo.Error; } return __self__.value.peek(_n);
    @:keep
    public dynamic function _readErr():stdgo.Error return __self__.value._readErr();
    /**
        // fill reads a new chunk into the buffer.
    **/
    @:keep
    public dynamic function _fill():Void __self__.value._fill();
    @:keep
    public dynamic function _reset(_buf:stdgo.Slice<stdgo.StdGoTypes.GoByte>, _r:stdgo.io.Io.Reader):Void __self__.value._reset(_buf, _r);
    /**
        // Reset discards any buffered data, resets all state, and switches
        // the buffered reader to read from r.
        // Calling Reset on the zero value of Reader initializes the internal buffer
        // to the default size.
        // Calling b.Reset(b) (that is, resetting a Reader to itself) does nothing.
    **/
    @:keep
    public dynamic function reset(_r:stdgo.io.Io.Reader):Void __self__.value.reset(_r);
    /**
        // Size returns the size of the underlying buffer in bytes.
    **/
    @:keep
    public dynamic function size():stdgo.StdGoTypes.GoInt return __self__.value.size();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<Reader>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.bufio.Bufio.Reader_asInterface) class Reader_static_extension {
    /**
        // writeBuf writes the Reader's buffer to the writer.
    **/
    @:keep
    static public function _writeBuf( _b:stdgo.StdGoTypes.Ref<Reader>, _w:stdgo.io.Io.Writer):{ var _0 : stdgo.StdGoTypes.GoInt64; var _1 : stdgo.Error; } {
        @:recv var _b:stdgo.StdGoTypes.Ref<Reader> = _b;
        var __tmp__ = _w.write((_b._buf.__slice__(_b._r, _b._w) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>)), _n:stdgo.StdGoTypes.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_n < (0 : stdgo.StdGoTypes.GoInt)) {
            throw stdgo.Go.toInterface(_errNegativeWrite);
        };
        _b._r = _b._r + (_n);
        return { _0 : (_n : stdgo.StdGoTypes.GoInt64), _1 : _err };
    }
    /**
        // WriteTo implements io.WriterTo.
        // This may make multiple calls to the Read method of the underlying Reader.
        // If the underlying reader supports the WriteTo method,
        // this calls the underlying WriteTo without buffering.
    **/
    @:keep
    static public function writeTo( _b:stdgo.StdGoTypes.Ref<Reader>, _w:stdgo.io.Io.Writer):{ var _0 : stdgo.StdGoTypes.GoInt64; var _1 : stdgo.Error; } {
        @:recv var _b:stdgo.StdGoTypes.Ref<Reader> = _b;
        var _n:stdgo.StdGoTypes.GoInt64 = (0 : stdgo.StdGoTypes.GoInt64), _err:stdgo.Error = (null : stdgo.Error);
        _b._lastByte = (-1 : stdgo.StdGoTypes.GoInt);
        _b._lastRuneSize = (-1 : stdgo.StdGoTypes.GoInt);
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
                { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_b._rd) : stdgo.io.Io.WriterTo)) : stdgo.io.Io.WriterTo), _1 : true };
            } catch(_) {
                { _0 : (null : stdgo.io.Io.WriterTo), _1 : false };
            }, _r = __tmp__._0, _ok = __tmp__._1;
            if (_ok) {
                var __tmp__ = _r.writeTo(_w), _m:stdgo.StdGoTypes.GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                _n = _n + (_m);
                return { _0 : _n, _1 : _err };
            };
        };
        {
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_w) : stdgo.io.Io.ReaderFrom)) : stdgo.io.Io.ReaderFrom), _1 : true };
            } catch(_) {
                { _0 : (null : stdgo.io.Io.ReaderFrom), _1 : false };
            }, _w = __tmp__._0, _ok = __tmp__._1;
            if (_ok) {
                var __tmp__ = _w.readFrom(_b._rd), _m:stdgo.StdGoTypes.GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                _n = _n + (_m);
                return { _0 : _n, _1 : _err };
            };
        };
        if ((_b._w - _b._r) < (_b._buf.length)) {
            _b._fill();
        };
        while (_b._r < _b._w) {
            var __tmp__ = _b._writeBuf(_w), _m:stdgo.StdGoTypes.GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            _n = _n + (_m);
            if (_err != null) {
                return { _0 : _n, _1 : _err };
            };
            _b._fill();
        };
        if (stdgo.Go.toInterface(_b._err) == (stdgo.Go.toInterface(stdgo.io.Io.eof))) {
            _b._err = (null : stdgo.Error);
        };
        return { _0 : _n, _1 : _b._readErr() };
    }
    /**
        // ReadString reads until the first occurrence of delim in the input,
        // returning a string containing the data up to and including the delimiter.
        // If ReadString encounters an error before finding a delimiter,
        // it returns the data read before the error and the error itself (often io.EOF).
        // ReadString returns err != nil if and only if the returned data does not end in
        // delim.
        // For simple uses, a Scanner may be more convenient.
    **/
    @:keep
    static public function readString( _b:stdgo.StdGoTypes.Ref<Reader>, _delim:stdgo.StdGoTypes.GoByte):{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } {
        @:recv var _b:stdgo.StdGoTypes.Ref<Reader> = _b;
        var __tmp__ = _b._collectFragments(_delim), _full:stdgo.Slice<stdgo.Slice<stdgo.StdGoTypes.GoUInt8>> = __tmp__._0, _frag:stdgo.Slice<stdgo.StdGoTypes.GoUInt8> = __tmp__._1, _n:stdgo.StdGoTypes.GoInt = __tmp__._2, _err:stdgo.Error = __tmp__._3;
        var _buf:stdgo.strings.Strings.Builder = ({} : stdgo.strings.Strings.Builder);
        _buf.grow(_n);
        for (__0 => _fb in _full) {
            _buf.write(_fb);
        };
        _buf.write(_frag);
        return { _0 : (_buf.string() : stdgo.GoString)?.__copy__(), _1 : _err };
    }
    /**
        // ReadBytes reads until the first occurrence of delim in the input,
        // returning a slice containing the data up to and including the delimiter.
        // If ReadBytes encounters an error before finding a delimiter,
        // it returns the data read before the error and the error itself (often io.EOF).
        // ReadBytes returns err != nil if and only if the returned data does not end in
        // delim.
        // For simple uses, a Scanner may be more convenient.
    **/
    @:keep
    static public function readBytes( _b:stdgo.StdGoTypes.Ref<Reader>, _delim:stdgo.StdGoTypes.GoByte):{ var _0 : stdgo.Slice<stdgo.StdGoTypes.GoByte>; var _1 : stdgo.Error; } {
        @:recv var _b:stdgo.StdGoTypes.Ref<Reader> = _b;
        var __tmp__ = _b._collectFragments(_delim), _full:stdgo.Slice<stdgo.Slice<stdgo.StdGoTypes.GoUInt8>> = __tmp__._0, _frag:stdgo.Slice<stdgo.StdGoTypes.GoUInt8> = __tmp__._1, _n:stdgo.StdGoTypes.GoInt = __tmp__._2, _err:stdgo.Error = __tmp__._3;
        var _buf = new stdgo.Slice<stdgo.StdGoTypes.GoUInt8>((_n : stdgo.StdGoTypes.GoInt).toBasic(), 0).__setNumber32__();
        _n = (0 : stdgo.StdGoTypes.GoInt);
        for (_i in 0 ... _full.length.toBasic()) {
            _n = _n + (stdgo.Go.copySlice((_buf.__slice__(_n) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>), _full[(_i : stdgo.StdGoTypes.GoInt)]));
        };
        stdgo.Go.copySlice((_buf.__slice__(_n) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>), _frag);
        return { _0 : _buf, _1 : _err };
    }
    /**
        // collectFragments reads until the first occurrence of delim in the input. It
        // returns (slice of full buffers, remaining bytes before delim, total number
        // of bytes in the combined first two elements, error).
        // The complete result is equal to
        // `bytes.Join(append(fullBuffers, finalFragment), nil)`, which has a
        // length of `totalLen`. The result is structured in this way to allow callers
        // to minimize allocations and copies.
    **/
    @:keep
    static public function _collectFragments( _b:stdgo.StdGoTypes.Ref<Reader>, _delim:stdgo.StdGoTypes.GoByte):{ var _0 : stdgo.Slice<stdgo.Slice<stdgo.StdGoTypes.GoByte>>; var _1 : stdgo.Slice<stdgo.StdGoTypes.GoByte>; var _2 : stdgo.StdGoTypes.GoInt; var _3 : stdgo.Error; } {
        @:recv var _b:stdgo.StdGoTypes.Ref<Reader> = _b;
        var _fullBuffers:stdgo.Slice<stdgo.Slice<stdgo.StdGoTypes.GoByte>> = (null : stdgo.Slice<stdgo.Slice<stdgo.StdGoTypes.GoUInt8>>), _finalFragment:stdgo.Slice<stdgo.StdGoTypes.GoByte> = (null : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>), _totalLen:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt), _err:stdgo.Error = (null : stdgo.Error);
        var _frag:stdgo.Slice<stdgo.StdGoTypes.GoByte> = (null : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>);
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
            var _buf = stdgo.bytes.Bytes.clone(_frag);
            _fullBuffers = (_fullBuffers.__append__(_buf));
            _totalLen = _totalLen + ((_buf.length));
        };
        _totalLen = _totalLen + ((_frag.length));
        return { _0 : _fullBuffers, _1 : _frag, _2 : _totalLen, _3 : _err };
    }
    /**
        // ReadLine is a low-level line-reading primitive. Most callers should use
        // ReadBytes('\n') or ReadString('\n') instead or use a Scanner.
        //
        // ReadLine tries to return a single line, not including the end-of-line bytes.
        // If the line was too long for the buffer then isPrefix is set and the
        // beginning of the line is returned. The rest of the line will be returned
        // from future calls. isPrefix will be false when returning the last fragment
        // of the line. The returned buffer is only valid until the next call to
        // ReadLine. ReadLine either returns a non-nil line or it returns an error,
        // never both.
        //
        // The text returned from ReadLine does not include the line end ("\r\n" or "\n").
        // No indication or error is given if the input ends without a final line end.
        // Calling UnreadByte after ReadLine will always unread the last byte read
        // (possibly a character belonging to the line end) even if that byte is not
        // part of the line returned by ReadLine.
    **/
    @:keep
    static public function readLine( _b:stdgo.StdGoTypes.Ref<Reader>):{ var _0 : stdgo.Slice<stdgo.StdGoTypes.GoByte>; var _1 : Bool; var _2 : stdgo.Error; } {
        @:recv var _b:stdgo.StdGoTypes.Ref<Reader> = _b;
        var _line:stdgo.Slice<stdgo.StdGoTypes.GoByte> = (null : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>), _isPrefix:Bool = false, _err:stdgo.Error = (null : stdgo.Error);
        {
            var __tmp__ = _b.readSlice((10 : stdgo.StdGoTypes.GoUInt8));
            _line = __tmp__._0;
            _err = __tmp__._1;
        };
        if (stdgo.Go.toInterface(_err) == (stdgo.Go.toInterface(errBufferFull))) {
            if ((_line.length > (0 : stdgo.StdGoTypes.GoInt)) && (_line[((_line.length) - (1 : stdgo.StdGoTypes.GoInt) : stdgo.StdGoTypes.GoInt)] == (13 : stdgo.StdGoTypes.GoUInt8))) {
                if (_b._r == ((0 : stdgo.StdGoTypes.GoInt))) {
                    throw stdgo.Go.toInterface(("bufio: tried to rewind past start of buffer" : stdgo.GoString));
                };
                _b._r--;
                _line = (_line.__slice__(0, (_line.length) - (1 : stdgo.StdGoTypes.GoInt)) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>);
            };
            return { _0 : _line, _1 : true, _2 : (null : stdgo.Error) };
        };
        if ((_line.length) == ((0 : stdgo.StdGoTypes.GoInt))) {
            if (_err != null) {
                _line = (null : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>);
            };
            return { _0 : _line, _1 : _isPrefix, _2 : _err };
        };
        _err = (null : stdgo.Error);
        if (_line[((_line.length) - (1 : stdgo.StdGoTypes.GoInt) : stdgo.StdGoTypes.GoInt)] == ((10 : stdgo.StdGoTypes.GoUInt8))) {
            var _drop:stdgo.StdGoTypes.GoInt = (1 : stdgo.StdGoTypes.GoInt);
            if ((_line.length > (1 : stdgo.StdGoTypes.GoInt)) && (_line[((_line.length) - (2 : stdgo.StdGoTypes.GoInt) : stdgo.StdGoTypes.GoInt)] == (13 : stdgo.StdGoTypes.GoUInt8))) {
                _drop = (2 : stdgo.StdGoTypes.GoInt);
            };
            _line = (_line.__slice__(0, (_line.length) - _drop) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>);
        };
        return { _0 : _line, _1 : _isPrefix, _2 : _err };
    }
    /**
        // ReadSlice reads until the first occurrence of delim in the input,
        // returning a slice pointing at the bytes in the buffer.
        // The bytes stop being valid at the next read.
        // If ReadSlice encounters an error before finding a delimiter,
        // it returns all the data in the buffer and the error itself (often io.EOF).
        // ReadSlice fails with error ErrBufferFull if the buffer fills without a delim.
        // Because the data returned from ReadSlice will be overwritten
        // by the next I/O operation, most clients should use
        // ReadBytes or ReadString instead.
        // ReadSlice returns err != nil if and only if line does not end in delim.
    **/
    @:keep
    static public function readSlice( _b:stdgo.StdGoTypes.Ref<Reader>, _delim:stdgo.StdGoTypes.GoByte):{ var _0 : stdgo.Slice<stdgo.StdGoTypes.GoByte>; var _1 : stdgo.Error; } {
        @:recv var _b:stdgo.StdGoTypes.Ref<Reader> = _b;
        var _line:stdgo.Slice<stdgo.StdGoTypes.GoByte> = (null : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>), _err:stdgo.Error = (null : stdgo.Error);
        var _s:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
        while (true) {
            {
                var _i:stdgo.StdGoTypes.GoInt = stdgo.bytes.Bytes.indexByte((_b._buf.__slice__(_b._r + _s, _b._w) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>), _delim);
                if (_i >= (0 : stdgo.StdGoTypes.GoInt)) {
                    _i = _i + (_s);
                    _line = (_b._buf.__slice__(_b._r, (_b._r + _i) + (1 : stdgo.StdGoTypes.GoInt)) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>);
                    _b._r = _b._r + (_i + (1 : stdgo.StdGoTypes.GoInt));
                    break;
                };
            };
            if (_b._err != null) {
                _line = (_b._buf.__slice__(_b._r, _b._w) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>);
                _b._r = _b._w;
                _err = _b._readErr();
                break;
            };
            if (_b.buffered() >= (_b._buf.length)) {
                _b._r = _b._w;
                _line = _b._buf;
                _err = errBufferFull;
                break;
            };
            _s = _b._w - _b._r;
            _b._fill();
        };
        {
            var _i:stdgo.StdGoTypes.GoInt = (_line.length) - (1 : stdgo.StdGoTypes.GoInt);
            if (_i >= (0 : stdgo.StdGoTypes.GoInt)) {
                _b._lastByte = (_line[(_i : stdgo.StdGoTypes.GoInt)] : stdgo.StdGoTypes.GoInt);
                _b._lastRuneSize = (-1 : stdgo.StdGoTypes.GoInt);
            };
        };
        return { _0 : _line, _1 : _err };
    }
    /**
        // Buffered returns the number of bytes that can be read from the current buffer.
    **/
    @:keep
    static public function buffered( _b:stdgo.StdGoTypes.Ref<Reader>):stdgo.StdGoTypes.GoInt {
        @:recv var _b:stdgo.StdGoTypes.Ref<Reader> = _b;
        return _b._w - _b._r;
    }
    /**
        // UnreadRune unreads the last rune. If the most recent method called on
        // the Reader was not a ReadRune, UnreadRune returns an error. (In this
        // regard it is stricter than UnreadByte, which will unread the last byte
        // from any read operation.)
    **/
    @:keep
    static public function unreadRune( _b:stdgo.StdGoTypes.Ref<Reader>):stdgo.Error {
        @:recv var _b:stdgo.StdGoTypes.Ref<Reader> = _b;
        if ((_b._lastRuneSize < (0 : stdgo.StdGoTypes.GoInt)) || (_b._r < _b._lastRuneSize)) {
            return errInvalidUnreadRune;
        };
        _b._r = _b._r - (_b._lastRuneSize);
        _b._lastByte = (-1 : stdgo.StdGoTypes.GoInt);
        _b._lastRuneSize = (-1 : stdgo.StdGoTypes.GoInt);
        return (null : stdgo.Error);
    }
    /**
        // ReadRune reads a single UTF-8 encoded Unicode character and returns the
        // rune and its size in bytes. If the encoded rune is invalid, it consumes one byte
        // and returns unicode.ReplacementChar (U+FFFD) with a size of 1.
    **/
    @:keep
    static public function readRune( _b:stdgo.StdGoTypes.Ref<Reader>):{ var _0 : stdgo.StdGoTypes.GoRune; var _1 : stdgo.StdGoTypes.GoInt; var _2 : stdgo.Error; } {
        @:recv var _b:stdgo.StdGoTypes.Ref<Reader> = _b;
        var _r:stdgo.StdGoTypes.GoRune = (0 : stdgo.StdGoTypes.GoInt32), _size:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt), _err:stdgo.Error = (null : stdgo.Error);
        while (((((_b._r + (4 : stdgo.StdGoTypes.GoInt)) > _b._w) && !stdgo.unicode.utf8.Utf8.fullRune((_b._buf.__slice__(_b._r, _b._w) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>))) && (_b._err == null)) && ((_b._w - _b._r) < _b._buf.length)) {
            _b._fill();
        };
        _b._lastRuneSize = (-1 : stdgo.StdGoTypes.GoInt);
        if (_b._r == (_b._w)) {
            return { _0 : (0 : stdgo.StdGoTypes.GoInt32), _1 : (0 : stdgo.StdGoTypes.GoInt), _2 : _b._readErr() };
        };
        {
            final __tmp__0 = (_b._buf[(_b._r : stdgo.StdGoTypes.GoInt)] : stdgo.StdGoTypes.GoRune);
            final __tmp__1 = (1 : stdgo.StdGoTypes.GoInt);
            _r = __tmp__0;
            _size = __tmp__1;
        };
        if (_r >= (128 : stdgo.StdGoTypes.GoInt32)) {
            {
                var __tmp__ = stdgo.unicode.utf8.Utf8.decodeRune((_b._buf.__slice__(_b._r, _b._w) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>));
                _r = __tmp__._0;
                _size = __tmp__._1;
            };
        };
        _b._r = _b._r + (_size);
        _b._lastByte = (_b._buf[(_b._r - (1 : stdgo.StdGoTypes.GoInt) : stdgo.StdGoTypes.GoInt)] : stdgo.StdGoTypes.GoInt);
        _b._lastRuneSize = _size;
        return { _0 : _r, _1 : _size, _2 : (null : stdgo.Error) };
    }
    /**
        // UnreadByte unreads the last byte. Only the most recently read byte can be unread.
        //
        // UnreadByte returns an error if the most recent method called on the
        // Reader was not a read operation. Notably, Peek, Discard, and WriteTo are not
        // considered read operations.
    **/
    @:keep
    static public function unreadByte( _b:stdgo.StdGoTypes.Ref<Reader>):stdgo.Error {
        @:recv var _b:stdgo.StdGoTypes.Ref<Reader> = _b;
        if ((_b._lastByte < (0 : stdgo.StdGoTypes.GoInt)) || ((_b._r == (0 : stdgo.StdGoTypes.GoInt)) && (_b._w > (0 : stdgo.StdGoTypes.GoInt)))) {
            return errInvalidUnreadByte;
        };
        if (_b._r > (0 : stdgo.StdGoTypes.GoInt)) {
            _b._r--;
        } else {
            _b._w = (1 : stdgo.StdGoTypes.GoInt);
        };
        _b._buf[(_b._r : stdgo.StdGoTypes.GoInt)] = (_b._lastByte : stdgo.StdGoTypes.GoByte);
        _b._lastByte = (-1 : stdgo.StdGoTypes.GoInt);
        _b._lastRuneSize = (-1 : stdgo.StdGoTypes.GoInt);
        return (null : stdgo.Error);
    }
    /**
        // ReadByte reads and returns a single byte.
        // If no byte is available, returns an error.
    **/
    @:keep
    static public function readByte( _b:stdgo.StdGoTypes.Ref<Reader>):{ var _0 : stdgo.StdGoTypes.GoByte; var _1 : stdgo.Error; } {
        @:recv var _b:stdgo.StdGoTypes.Ref<Reader> = _b;
        _b._lastRuneSize = (-1 : stdgo.StdGoTypes.GoInt);
        while (_b._r == (_b._w)) {
            if (_b._err != null) {
                return { _0 : (0 : stdgo.StdGoTypes.GoUInt8), _1 : _b._readErr() };
            };
            _b._fill();
        };
        var _c:stdgo.StdGoTypes.GoUInt8 = _b._buf[(_b._r : stdgo.StdGoTypes.GoInt)];
        _b._r++;
        _b._lastByte = (_c : stdgo.StdGoTypes.GoInt);
        return { _0 : _c, _1 : (null : stdgo.Error) };
    }
    /**
        // Read reads data into p.
        // It returns the number of bytes read into p.
        // The bytes are taken from at most one Read on the underlying Reader,
        // hence n may be less than len(p).
        // To read exactly len(p) bytes, use io.ReadFull(b, p).
        // If the underlying Reader can return a non-zero count with io.EOF,
        // then this Read method can do so as well; see the [io.Reader] docs.
    **/
    @:keep
    static public function read( _b:stdgo.StdGoTypes.Ref<Reader>, _p:stdgo.Slice<stdgo.StdGoTypes.GoByte>):{ var _0 : stdgo.StdGoTypes.GoInt; var _1 : stdgo.Error; } {
        @:recv var _b:stdgo.StdGoTypes.Ref<Reader> = _b;
        var _n:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt), _err:stdgo.Error = (null : stdgo.Error);
        _n = (_p.length);
        if (_n == ((0 : stdgo.StdGoTypes.GoInt))) {
            if (_b.buffered() > (0 : stdgo.StdGoTypes.GoInt)) {
                return { _0 : (0 : stdgo.StdGoTypes.GoInt), _1 : (null : stdgo.Error) };
            };
            return { _0 : (0 : stdgo.StdGoTypes.GoInt), _1 : _b._readErr() };
        };
        if (_b._r == (_b._w)) {
            if (_b._err != null) {
                return { _0 : (0 : stdgo.StdGoTypes.GoInt), _1 : _b._readErr() };
            };
            if ((_p.length) >= (_b._buf.length)) {
                {
                    var __tmp__ = _b._rd.read(_p);
                    _n = __tmp__._0;
                    _b._err = __tmp__._1;
                };
                if (_n < (0 : stdgo.StdGoTypes.GoInt)) {
                    throw stdgo.Go.toInterface(_errNegativeRead);
                };
                if (_n > (0 : stdgo.StdGoTypes.GoInt)) {
                    _b._lastByte = (_p[(_n - (1 : stdgo.StdGoTypes.GoInt) : stdgo.StdGoTypes.GoInt)] : stdgo.StdGoTypes.GoInt);
                    _b._lastRuneSize = (-1 : stdgo.StdGoTypes.GoInt);
                };
                return { _0 : _n, _1 : _b._readErr() };
            };
            _b._r = (0 : stdgo.StdGoTypes.GoInt);
            _b._w = (0 : stdgo.StdGoTypes.GoInt);
            {
                var __tmp__ = _b._rd.read(_b._buf);
                _n = __tmp__._0;
                _b._err = __tmp__._1;
            };
            if (_n < (0 : stdgo.StdGoTypes.GoInt)) {
                throw stdgo.Go.toInterface(_errNegativeRead);
            };
            if (_n == ((0 : stdgo.StdGoTypes.GoInt))) {
                return { _0 : (0 : stdgo.StdGoTypes.GoInt), _1 : _b._readErr() };
            };
            _b._w = _b._w + (_n);
        };
        _n = stdgo.Go.copySlice(_p, (_b._buf.__slice__(_b._r, _b._w) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>));
        _b._r = _b._r + (_n);
        _b._lastByte = (_b._buf[(_b._r - (1 : stdgo.StdGoTypes.GoInt) : stdgo.StdGoTypes.GoInt)] : stdgo.StdGoTypes.GoInt);
        _b._lastRuneSize = (-1 : stdgo.StdGoTypes.GoInt);
        return { _0 : _n, _1 : (null : stdgo.Error) };
    }
    /**
        // Discard skips the next n bytes, returning the number of bytes discarded.
        //
        // If Discard skips fewer than n bytes, it also returns an error.
        // If 0 <= n <= b.Buffered(), Discard is guaranteed to succeed without
        // reading from the underlying io.Reader.
    **/
    @:keep
    static public function discard( _b:stdgo.StdGoTypes.Ref<Reader>, _n:stdgo.StdGoTypes.GoInt):{ var _0 : stdgo.StdGoTypes.GoInt; var _1 : stdgo.Error; } {
        @:recv var _b:stdgo.StdGoTypes.Ref<Reader> = _b;
        var _discarded:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt), _err:stdgo.Error = (null : stdgo.Error);
        if (_n < (0 : stdgo.StdGoTypes.GoInt)) {
            return { _0 : (0 : stdgo.StdGoTypes.GoInt), _1 : errNegativeCount };
        };
        if (_n == ((0 : stdgo.StdGoTypes.GoInt))) {
            return { _0 : _discarded, _1 : _err };
        };
        _b._lastByte = (-1 : stdgo.StdGoTypes.GoInt);
        _b._lastRuneSize = (-1 : stdgo.StdGoTypes.GoInt);
        var _remain:stdgo.StdGoTypes.GoInt = _n;
        while (true) {
            var _skip:stdgo.StdGoTypes.GoInt = _b.buffered();
            if (_skip == ((0 : stdgo.StdGoTypes.GoInt))) {
                _b._fill();
                _skip = _b.buffered();
            };
            if (_skip > _remain) {
                _skip = _remain;
            };
            _b._r = _b._r + (_skip);
            _remain = _remain - (_skip);
            if (_remain == ((0 : stdgo.StdGoTypes.GoInt))) {
                return { _0 : _n, _1 : (null : stdgo.Error) };
            };
            if (_b._err != null) {
                return { _0 : _n - _remain, _1 : _b._readErr() };
            };
        };
    }
    /**
        // Peek returns the next n bytes without advancing the reader. The bytes stop
        // being valid at the next read call. If Peek returns fewer than n bytes, it
        // also returns an error explaining why the read is short. The error is
        // ErrBufferFull if n is larger than b's buffer size.
        //
        // Calling Peek prevents a UnreadByte or UnreadRune call from succeeding
        // until the next read operation.
    **/
    @:keep
    static public function peek( _b:stdgo.StdGoTypes.Ref<Reader>, _n:stdgo.StdGoTypes.GoInt):{ var _0 : stdgo.Slice<stdgo.StdGoTypes.GoByte>; var _1 : stdgo.Error; } {
        @:recv var _b:stdgo.StdGoTypes.Ref<Reader> = _b;
        if (_n < (0 : stdgo.StdGoTypes.GoInt)) {
            return { _0 : (null : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>), _1 : errNegativeCount };
        };
        _b._lastByte = (-1 : stdgo.StdGoTypes.GoInt);
        _b._lastRuneSize = (-1 : stdgo.StdGoTypes.GoInt);
        while ((((_b._w - _b._r) < _n) && ((_b._w - _b._r) < _b._buf.length)) && (_b._err == null)) {
            _b._fill();
        };
        if (_n > (_b._buf.length)) {
            return { _0 : (_b._buf.__slice__(_b._r, _b._w) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>), _1 : errBufferFull };
        };
        var _err:stdgo.Error = (null : stdgo.Error);
        {
            var _avail:stdgo.StdGoTypes.GoInt = _b._w - _b._r;
            if (_avail < _n) {
                _n = _avail;
                _err = _b._readErr();
                if (_err == null) {
                    _err = errBufferFull;
                };
            };
        };
        return { _0 : (_b._buf.__slice__(_b._r, _b._r + _n) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>), _1 : _err };
    }
    @:keep
    static public function _readErr( _b:stdgo.StdGoTypes.Ref<Reader>):stdgo.Error {
        @:recv var _b:stdgo.StdGoTypes.Ref<Reader> = _b;
        var _err:stdgo.Error = _b._err;
        _b._err = (null : stdgo.Error);
        return _err;
    }
    /**
        // fill reads a new chunk into the buffer.
    **/
    @:keep
    static public function _fill( _b:stdgo.StdGoTypes.Ref<Reader>):Void {
        @:recv var _b:stdgo.StdGoTypes.Ref<Reader> = _b;
        if (_b._r > (0 : stdgo.StdGoTypes.GoInt)) {
            stdgo.Go.copySlice(_b._buf, (_b._buf.__slice__(_b._r, _b._w) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>));
            _b._w = _b._w - (_b._r);
            _b._r = (0 : stdgo.StdGoTypes.GoInt);
        };
        if (_b._w >= (_b._buf.length)) {
            throw stdgo.Go.toInterface(("bufio: tried to fill full buffer" : stdgo.GoString));
        };
        {
            var _i:stdgo.StdGoTypes.GoInt = (100 : stdgo.StdGoTypes.GoInt);
            stdgo.Go.cfor(_i > (0 : stdgo.StdGoTypes.GoInt), _i--, {
                var __tmp__ = _b._rd.read((_b._buf.__slice__(_b._w) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>)), _n:stdgo.StdGoTypes.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_n < (0 : stdgo.StdGoTypes.GoInt)) {
                    throw stdgo.Go.toInterface(_errNegativeRead);
                };
                _b._w = _b._w + (_n);
                if (_err != null) {
                    _b._err = _err;
                    return;
                };
                if (_n > (0 : stdgo.StdGoTypes.GoInt)) {
                    return;
                };
            });
        };
        _b._err = stdgo.io.Io.errNoProgress;
    }
    @:keep
    static public function _reset( _b:stdgo.StdGoTypes.Ref<Reader>, _buf:stdgo.Slice<stdgo.StdGoTypes.GoByte>, _r:stdgo.io.Io.Reader):Void {
        @:recv var _b:stdgo.StdGoTypes.Ref<Reader> = _b;
        {
            var __tmp__ = ({ _buf : _buf, _rd : _r, _lastByte : (-1 : stdgo.StdGoTypes.GoInt), _lastRuneSize : (-1 : stdgo.StdGoTypes.GoInt) } : stdgo.bufio.Bufio.Reader);
            _b._buf = __tmp__._buf;
            _b._rd = __tmp__._rd;
            _b._r = __tmp__._r;
            _b._w = __tmp__._w;
            _b._err = __tmp__._err;
            _b._lastByte = __tmp__._lastByte;
            _b._lastRuneSize = __tmp__._lastRuneSize;
        };
    }
    /**
        // Reset discards any buffered data, resets all state, and switches
        // the buffered reader to read from r.
        // Calling Reset on the zero value of Reader initializes the internal buffer
        // to the default size.
        // Calling b.Reset(b) (that is, resetting a Reader to itself) does nothing.
    **/
    @:keep
    static public function reset( _b:stdgo.StdGoTypes.Ref<Reader>, _r:stdgo.io.Io.Reader):Void {
        @:recv var _b:stdgo.StdGoTypes.Ref<Reader> = _b;
        if (stdgo.Go.toInterface(stdgo.Go.asInterface(_b)) == (stdgo.Go.toInterface(_r))) {
            return;
        };
        if (_b._buf == null) {
            _b._buf = new stdgo.Slice<stdgo.StdGoTypes.GoUInt8>((4096 : stdgo.StdGoTypes.GoInt).toBasic(), 0).__setNumber32__();
        };
        _b._reset(_b._buf, _r);
    }
    /**
        // Size returns the size of the underlying buffer in bytes.
    **/
    @:keep
    static public function size( _b:stdgo.StdGoTypes.Ref<Reader>):stdgo.StdGoTypes.GoInt {
        @:recv var _b:stdgo.StdGoTypes.Ref<Reader> = _b;
        return (_b._buf.length);
    }
}
class Writer_asInterface {
    /**
        // ReadFrom implements io.ReaderFrom. If the underlying writer
        // supports the ReadFrom method, this calls the underlying ReadFrom.
        // If there is buffered data and an underlying ReadFrom, this fills
        // the buffer and writes it before calling ReadFrom.
    **/
    @:keep
    public dynamic function readFrom(_r:stdgo.io.Io.Reader):{ var _0 : stdgo.StdGoTypes.GoInt64; var _1 : stdgo.Error; } return __self__.value.readFrom(_r);
    /**
        // WriteString writes a string.
        // It returns the number of bytes written.
        // If the count is less than len(s), it also returns an error explaining
        // why the write is short.
    **/
    @:keep
    public dynamic function writeString(_s:stdgo.GoString):{ var _0 : stdgo.StdGoTypes.GoInt; var _1 : stdgo.Error; } return __self__.value.writeString(_s);
    /**
        // WriteRune writes a single Unicode code point, returning
        // the number of bytes written and any error.
    **/
    @:keep
    public dynamic function writeRune(_r:stdgo.StdGoTypes.GoRune):{ var _0 : stdgo.StdGoTypes.GoInt; var _1 : stdgo.Error; } return __self__.value.writeRune(_r);
    /**
        // WriteByte writes a single byte.
    **/
    @:keep
    public dynamic function writeByte(_c:stdgo.StdGoTypes.GoByte):stdgo.Error return __self__.value.writeByte(_c);
    /**
        // Write writes the contents of p into the buffer.
        // It returns the number of bytes written.
        // If nn < len(p), it also returns an error explaining
        // why the write is short.
    **/
    @:keep
    public dynamic function write(_p:stdgo.Slice<stdgo.StdGoTypes.GoByte>):{ var _0 : stdgo.StdGoTypes.GoInt; var _1 : stdgo.Error; } return __self__.value.write(_p);
    /**
        // Buffered returns the number of bytes that have been written into the current buffer.
    **/
    @:keep
    public dynamic function buffered():stdgo.StdGoTypes.GoInt return __self__.value.buffered();
    /**
        // AvailableBuffer returns an empty buffer with b.Available() capacity.
        // This buffer is intended to be appended to and
        // passed to an immediately succeeding Write call.
        // The buffer is only valid until the next write operation on b.
    **/
    @:keep
    public dynamic function availableBuffer():stdgo.Slice<stdgo.StdGoTypes.GoByte> return __self__.value.availableBuffer();
    /**
        // Available returns how many bytes are unused in the buffer.
    **/
    @:keep
    public dynamic function available():stdgo.StdGoTypes.GoInt return __self__.value.available();
    /**
        // Flush writes any buffered data to the underlying io.Writer.
    **/
    @:keep
    public dynamic function flush():stdgo.Error return __self__.value.flush();
    /**
        // Reset discards any unflushed buffered data, clears any error, and
        // resets b to write its output to w.
        // Calling Reset on the zero value of Writer initializes the internal buffer
        // to the default size.
        // Calling w.Reset(w) (that is, resetting a Writer to itself) does nothing.
    **/
    @:keep
    public dynamic function reset(_w:stdgo.io.Io.Writer):Void __self__.value.reset(_w);
    /**
        // Size returns the size of the underlying buffer in bytes.
    **/
    @:keep
    public dynamic function size():stdgo.StdGoTypes.GoInt return __self__.value.size();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<Writer>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.bufio.Bufio.Writer_asInterface) class Writer_static_extension {
    /**
        // ReadFrom implements io.ReaderFrom. If the underlying writer
        // supports the ReadFrom method, this calls the underlying ReadFrom.
        // If there is buffered data and an underlying ReadFrom, this fills
        // the buffer and writes it before calling ReadFrom.
    **/
    @:keep
    static public function readFrom( _b:stdgo.StdGoTypes.Ref<Writer>, _r:stdgo.io.Io.Reader):{ var _0 : stdgo.StdGoTypes.GoInt64; var _1 : stdgo.Error; } {
        @:recv var _b:stdgo.StdGoTypes.Ref<Writer> = _b;
        var _n:stdgo.StdGoTypes.GoInt64 = (0 : stdgo.StdGoTypes.GoInt64), _err:stdgo.Error = (null : stdgo.Error);
        if (_b._err != null) {
            return { _0 : (0i64 : stdgo.StdGoTypes.GoInt64), _1 : _b._err };
        };
        var __tmp__ = try {
            { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_b._wr) : stdgo.io.Io.ReaderFrom)) : stdgo.io.Io.ReaderFrom), _1 : true };
        } catch(_) {
            { _0 : (null : stdgo.io.Io.ReaderFrom), _1 : false };
        }, _readerFrom = __tmp__._0, _readerFromOK = __tmp__._1;
        var _m:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
        while (true) {
            if (_b.available() == ((0 : stdgo.StdGoTypes.GoInt))) {
                {
                    var _err1:stdgo.Error = _b.flush();
                    if (_err1 != null) {
                        return { _0 : _n, _1 : _err1 };
                    };
                };
            };
            if (_readerFromOK && (_b.buffered() == (0 : stdgo.StdGoTypes.GoInt))) {
                var __tmp__ = _readerFrom.readFrom(_r), _nn:stdgo.StdGoTypes.GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                _b._err = _err;
                _n = _n + (_nn);
                return { _0 : _n, _1 : _err };
            };
            var _nr:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
            while (_nr < (100 : stdgo.StdGoTypes.GoInt)) {
                {
                    var __tmp__ = _r.read((_b._buf.__slice__(_b._n) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>));
                    _m = __tmp__._0;
                    _err = __tmp__._1;
                };
                if ((_m != (0 : stdgo.StdGoTypes.GoInt)) || (_err != null)) {
                    break;
                };
                _nr++;
            };
            if (_nr == ((100 : stdgo.StdGoTypes.GoInt))) {
                return { _0 : _n, _1 : stdgo.io.Io.errNoProgress };
            };
            _b._n = _b._n + (_m);
            _n = _n + ((_m : stdgo.StdGoTypes.GoInt64));
            if (_err != null) {
                break;
            };
        };
        if (stdgo.Go.toInterface(_err) == (stdgo.Go.toInterface(stdgo.io.Io.eof))) {
            if (_b.available() == ((0 : stdgo.StdGoTypes.GoInt))) {
                _err = _b.flush();
            } else {
                _err = (null : stdgo.Error);
            };
        };
        return { _0 : _n, _1 : _err };
    }
    /**
        // WriteString writes a string.
        // It returns the number of bytes written.
        // If the count is less than len(s), it also returns an error explaining
        // why the write is short.
    **/
    @:keep
    static public function writeString( _b:stdgo.StdGoTypes.Ref<Writer>, _s:stdgo.GoString):{ var _0 : stdgo.StdGoTypes.GoInt; var _1 : stdgo.Error; } {
        @:recv var _b:stdgo.StdGoTypes.Ref<Writer> = _b;
        var _sw:stdgo.io.Io.StringWriter = (null : stdgo.io.Io.StringWriter);
        var _tryStringWriter:Bool = true;
        var _nn:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
        while ((_s.length > _b.available()) && (_b._err == null)) {
            var _n:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
            if (((_b.buffered() == (0 : stdgo.StdGoTypes.GoInt)) && (_sw == null)) && _tryStringWriter) {
                {
                    var __tmp__ = try {
                        { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_b._wr) : stdgo.io.Io.StringWriter)) : stdgo.io.Io.StringWriter), _1 : true };
                    } catch(_) {
                        { _0 : (null : stdgo.io.Io.StringWriter), _1 : false };
                    };
                    _sw = __tmp__._0;
                    _tryStringWriter = __tmp__._1;
                };
            };
            if ((_b.buffered() == (0 : stdgo.StdGoTypes.GoInt)) && _tryStringWriter) {
                {
                    var __tmp__ = _sw.writeString(_s?.__copy__());
                    _n = __tmp__._0;
                    _b._err = __tmp__._1;
                };
            } else {
                _n = stdgo.Go.copySlice((_b._buf.__slice__(_b._n) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>), _s);
                _b._n = _b._n + (_n);
                _b.flush();
            };
            _nn = _nn + (_n);
            _s = (_s.__slice__(_n) : stdgo.GoString)?.__copy__();
        };
        if (_b._err != null) {
            return { _0 : _nn, _1 : _b._err };
        };
        var _n:stdgo.StdGoTypes.GoInt = stdgo.Go.copySlice((_b._buf.__slice__(_b._n) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>), _s);
        _b._n = _b._n + (_n);
        _nn = _nn + (_n);
        return { _0 : _nn, _1 : (null : stdgo.Error) };
    }
    /**
        // WriteRune writes a single Unicode code point, returning
        // the number of bytes written and any error.
    **/
    @:keep
    static public function writeRune( _b:stdgo.StdGoTypes.Ref<Writer>, _r:stdgo.StdGoTypes.GoRune):{ var _0 : stdgo.StdGoTypes.GoInt; var _1 : stdgo.Error; } {
        @:recv var _b:stdgo.StdGoTypes.Ref<Writer> = _b;
        var _size:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt), _err:stdgo.Error = (null : stdgo.Error);
        if ((_r : stdgo.StdGoTypes.GoUInt32) < (128u32 : stdgo.StdGoTypes.GoUInt32)) {
            _err = _b.writeByte((_r : stdgo.StdGoTypes.GoByte));
            if (_err != null) {
                return { _0 : (0 : stdgo.StdGoTypes.GoInt), _1 : _err };
            };
            return { _0 : (1 : stdgo.StdGoTypes.GoInt), _1 : (null : stdgo.Error) };
        };
        if (_b._err != null) {
            return { _0 : (0 : stdgo.StdGoTypes.GoInt), _1 : _b._err };
        };
        var _n:stdgo.StdGoTypes.GoInt = _b.available();
        if (_n < (4 : stdgo.StdGoTypes.GoInt)) {
            {
                _b.flush();
                if (_b._err != null) {
                    return { _0 : (0 : stdgo.StdGoTypes.GoInt), _1 : _b._err };
                };
            };
            _n = _b.available();
            if (_n < (4 : stdgo.StdGoTypes.GoInt)) {
                return _b.writeString((_r : stdgo.GoString)?.__copy__());
            };
        };
        _size = stdgo.unicode.utf8.Utf8.encodeRune((_b._buf.__slice__(_b._n) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>), _r);
        _b._n = _b._n + (_size);
        return { _0 : _size, _1 : (null : stdgo.Error) };
    }
    /**
        // WriteByte writes a single byte.
    **/
    @:keep
    static public function writeByte( _b:stdgo.StdGoTypes.Ref<Writer>, _c:stdgo.StdGoTypes.GoByte):stdgo.Error {
        @:recv var _b:stdgo.StdGoTypes.Ref<Writer> = _b;
        if (_b._err != null) {
            return _b._err;
        };
        if ((_b.available() <= (0 : stdgo.StdGoTypes.GoInt)) && (_b.flush() != null)) {
            return _b._err;
        };
        _b._buf[(_b._n : stdgo.StdGoTypes.GoInt)] = _c;
        _b._n++;
        return (null : stdgo.Error);
    }
    /**
        // Write writes the contents of p into the buffer.
        // It returns the number of bytes written.
        // If nn < len(p), it also returns an error explaining
        // why the write is short.
    **/
    @:keep
    static public function write( _b:stdgo.StdGoTypes.Ref<Writer>, _p:stdgo.Slice<stdgo.StdGoTypes.GoByte>):{ var _0 : stdgo.StdGoTypes.GoInt; var _1 : stdgo.Error; } {
        @:recv var _b:stdgo.StdGoTypes.Ref<Writer> = _b;
        var _nn:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt), _err:stdgo.Error = (null : stdgo.Error);
        while ((_p.length > _b.available()) && (_b._err == null)) {
            var _n:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
            if (_b.buffered() == ((0 : stdgo.StdGoTypes.GoInt))) {
                {
                    var __tmp__ = _b._wr.write(_p);
                    _n = __tmp__._0;
                    _b._err = __tmp__._1;
                };
            } else {
                _n = stdgo.Go.copySlice((_b._buf.__slice__(_b._n) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>), _p);
                _b._n = _b._n + (_n);
                _b.flush();
            };
            _nn = _nn + (_n);
            _p = (_p.__slice__(_n) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>);
        };
        if (_b._err != null) {
            return { _0 : _nn, _1 : _b._err };
        };
        var _n:stdgo.StdGoTypes.GoInt = stdgo.Go.copySlice((_b._buf.__slice__(_b._n) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>), _p);
        _b._n = _b._n + (_n);
        _nn = _nn + (_n);
        return { _0 : _nn, _1 : (null : stdgo.Error) };
    }
    /**
        // Buffered returns the number of bytes that have been written into the current buffer.
    **/
    @:keep
    static public function buffered( _b:stdgo.StdGoTypes.Ref<Writer>):stdgo.StdGoTypes.GoInt {
        @:recv var _b:stdgo.StdGoTypes.Ref<Writer> = _b;
        return _b._n;
    }
    /**
        // AvailableBuffer returns an empty buffer with b.Available() capacity.
        // This buffer is intended to be appended to and
        // passed to an immediately succeeding Write call.
        // The buffer is only valid until the next write operation on b.
    **/
    @:keep
    static public function availableBuffer( _b:stdgo.StdGoTypes.Ref<Writer>):stdgo.Slice<stdgo.StdGoTypes.GoByte> {
        @:recv var _b:stdgo.StdGoTypes.Ref<Writer> = _b;
        return ((_b._buf.__slice__(_b._n) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>).__slice__(0, (0 : stdgo.StdGoTypes.GoInt)) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>);
    }
    /**
        // Available returns how many bytes are unused in the buffer.
    **/
    @:keep
    static public function available( _b:stdgo.StdGoTypes.Ref<Writer>):stdgo.StdGoTypes.GoInt {
        @:recv var _b:stdgo.StdGoTypes.Ref<Writer> = _b;
        return (_b._buf.length) - _b._n;
    }
    /**
        // Flush writes any buffered data to the underlying io.Writer.
    **/
    @:keep
    static public function flush( _b:stdgo.StdGoTypes.Ref<Writer>):stdgo.Error {
        @:recv var _b:stdgo.StdGoTypes.Ref<Writer> = _b;
        if (_b._err != null) {
            return _b._err;
        };
        if (_b._n == ((0 : stdgo.StdGoTypes.GoInt))) {
            return (null : stdgo.Error);
        };
        var __tmp__ = _b._wr.write((_b._buf.__slice__((0 : stdgo.StdGoTypes.GoInt), _b._n) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>)), _n:stdgo.StdGoTypes.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if ((_n < _b._n) && (_err == null)) {
            _err = stdgo.io.Io.errShortWrite;
        };
        if (_err != null) {
            if ((_n > (0 : stdgo.StdGoTypes.GoInt)) && (_n < _b._n)) {
                stdgo.Go.copySlice((_b._buf.__slice__((0 : stdgo.StdGoTypes.GoInt), _b._n - _n) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>), (_b._buf.__slice__(_n, _b._n) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>));
            };
            _b._n = _b._n - (_n);
            _b._err = _err;
            return _err;
        };
        _b._n = (0 : stdgo.StdGoTypes.GoInt);
        return (null : stdgo.Error);
    }
    /**
        // Reset discards any unflushed buffered data, clears any error, and
        // resets b to write its output to w.
        // Calling Reset on the zero value of Writer initializes the internal buffer
        // to the default size.
        // Calling w.Reset(w) (that is, resetting a Writer to itself) does nothing.
    **/
    @:keep
    static public function reset( _b:stdgo.StdGoTypes.Ref<Writer>, _w:stdgo.io.Io.Writer):Void {
        @:recv var _b:stdgo.StdGoTypes.Ref<Writer> = _b;
        if (stdgo.Go.toInterface(stdgo.Go.asInterface(_b)) == (stdgo.Go.toInterface(_w))) {
            return;
        };
        if (_b._buf == null) {
            _b._buf = new stdgo.Slice<stdgo.StdGoTypes.GoUInt8>((4096 : stdgo.StdGoTypes.GoInt).toBasic(), 0).__setNumber32__();
        };
        _b._err = (null : stdgo.Error);
        _b._n = (0 : stdgo.StdGoTypes.GoInt);
        _b._wr = _w;
    }
    /**
        // Size returns the size of the underlying buffer in bytes.
    **/
    @:keep
    static public function size( _b:stdgo.StdGoTypes.Ref<Writer>):stdgo.StdGoTypes.GoInt {
        @:recv var _b:stdgo.StdGoTypes.Ref<Writer> = _b;
        return (_b._buf.length);
    }
}
class ReadWriter_asInterface {
    @:embedded
    public dynamic function _writeBuf(_w:stdgo.io.Io.Writer):{ var _0 : stdgo.StdGoTypes.GoInt64; var _1 : stdgo.Error; } return __self__.value._writeBuf(_w);
    @:embedded
    public dynamic function _reset(_buf:stdgo.Slice<stdgo.StdGoTypes.GoUInt8>, _r:stdgo.io.Io.Reader):Void __self__.value._reset(_buf, _r);
    @:embedded
    public dynamic function _readErr():stdgo.Error return __self__.value._readErr();
    @:embedded
    public dynamic function _fill():Void __self__.value._fill();
    @:embedded
    public dynamic function _collectFragments(_delim:stdgo.StdGoTypes.GoUInt8):{ var _0 : stdgo.Slice<stdgo.Slice<stdgo.StdGoTypes.GoUInt8>>; var _1 : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>; var _2 : stdgo.StdGoTypes.GoInt; var _3 : stdgo.Error; } return __self__.value._collectFragments(_delim);
    @:embedded
    public dynamic function writeTo(_w:stdgo.io.Io.Writer):{ var _0 : stdgo.StdGoTypes.GoInt64; var _1 : stdgo.Error; } return __self__.value.writeTo(_w);
    @:embedded
    public dynamic function writeString(_text:stdgo.GoString):{ var _0 : stdgo.StdGoTypes.GoInt; var _1 : stdgo.Error; } return __self__.value.writeString(_text);
    @:embedded
    public dynamic function writeRune(_r:stdgo.StdGoTypes.GoInt32):{ var _0 : stdgo.StdGoTypes.GoInt; var _1 : stdgo.Error; } return __self__.value.writeRune(_r);
    @:embedded
    public dynamic function writeByte(_delim:stdgo.StdGoTypes.GoUInt8):stdgo.Error return __self__.value.writeByte(_delim);
    @:embedded
    public dynamic function write(_p:stdgo.Slice<stdgo.StdGoTypes.GoUInt8>):{ var _0 : stdgo.StdGoTypes.GoInt; var _1 : stdgo.Error; } return __self__.value.write(_p);
    @:embedded
    public dynamic function unreadRune():stdgo.Error return __self__.value.unreadRune();
    @:embedded
    public dynamic function unreadByte():stdgo.Error return __self__.value.unreadByte();
    @:embedded
    public dynamic function readString(_delim:stdgo.StdGoTypes.GoUInt8):{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } return __self__.value.readString(_delim);
    @:embedded
    public dynamic function readSlice(_delim:stdgo.StdGoTypes.GoUInt8):{ var _0 : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>; var _1 : stdgo.Error; } return __self__.value.readSlice(_delim);
    @:embedded
    public dynamic function readRune():{ var _0 : stdgo.StdGoTypes.GoInt32; var _1 : stdgo.StdGoTypes.GoInt; var _2 : stdgo.Error; } return __self__.value.readRune();
    @:embedded
    public dynamic function readLine():{ var _0 : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>; var _1 : Bool; var _2 : stdgo.Error; } return __self__.value.readLine();
    @:embedded
    public dynamic function readFrom(_r:stdgo.io.Io.Reader):{ var _0 : stdgo.StdGoTypes.GoInt64; var _1 : stdgo.Error; } return __self__.value.readFrom(_r);
    @:embedded
    public dynamic function readBytes(_delim:stdgo.StdGoTypes.GoUInt8):{ var _0 : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>; var _1 : stdgo.Error; } return __self__.value.readBytes(_delim);
    @:embedded
    public dynamic function readByte():{ var _0 : stdgo.StdGoTypes.GoUInt8; var _1 : stdgo.Error; } return __self__.value.readByte();
    @:embedded
    public dynamic function read(_p:stdgo.Slice<stdgo.StdGoTypes.GoUInt8>):{ var _0 : stdgo.StdGoTypes.GoInt; var _1 : stdgo.Error; } return __self__.value.read(_p);
    @:embedded
    public dynamic function peek(__0:stdgo.StdGoTypes.GoInt):{ var _0 : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>; var _1 : stdgo.Error; } return __self__.value.peek(__0);
    @:embedded
    public dynamic function flush():stdgo.Error return __self__.value.flush();
    @:embedded
    public dynamic function discard(__0:stdgo.StdGoTypes.GoInt):{ var _0 : stdgo.StdGoTypes.GoInt; var _1 : stdgo.Error; } return __self__.value.discard(__0);
    @:embedded
    public dynamic function availableBuffer():stdgo.Slice<stdgo.StdGoTypes.GoUInt8> return __self__.value.availableBuffer();
    @:embedded
    public dynamic function available():stdgo.StdGoTypes.GoInt return __self__.value.available();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<ReadWriter>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.bufio.Bufio.ReadWriter_asInterface) class ReadWriter_static_extension {
    @:embedded
    public static function _writeBuf( __self__:ReadWriter, _w:stdgo.io.Io.Writer):{ var _0 : stdgo.StdGoTypes.GoInt64; var _1 : stdgo.Error; } return __self__._writeBuf(_w);
    @:embedded
    public static function _reset( __self__:ReadWriter, _buf:stdgo.Slice<stdgo.StdGoTypes.GoUInt8>, _r:stdgo.io.Io.Reader) __self__._reset(_buf, _r);
    @:embedded
    public static function _readErr( __self__:ReadWriter):stdgo.Error return __self__._readErr();
    @:embedded
    public static function _fill( __self__:ReadWriter) __self__._fill();
    @:embedded
    public static function _collectFragments( __self__:ReadWriter, _delim:stdgo.StdGoTypes.GoUInt8):{ var _0 : stdgo.Slice<stdgo.Slice<stdgo.StdGoTypes.GoUInt8>>; var _1 : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>; var _2 : stdgo.StdGoTypes.GoInt; var _3 : stdgo.Error; } return __self__._collectFragments(_delim);
    @:embedded
    public static function writeTo( __self__:ReadWriter, _w:stdgo.io.Io.Writer):{ var _0 : stdgo.StdGoTypes.GoInt64; var _1 : stdgo.Error; } return __self__.writeTo(_w);
    @:embedded
    public static function writeString( __self__:ReadWriter, _text:stdgo.GoString):{ var _0 : stdgo.StdGoTypes.GoInt; var _1 : stdgo.Error; } return __self__.writeString(_text);
    @:embedded
    public static function writeRune( __self__:ReadWriter, _r:stdgo.StdGoTypes.GoInt32):{ var _0 : stdgo.StdGoTypes.GoInt; var _1 : stdgo.Error; } return __self__.writeRune(_r);
    @:embedded
    public static function writeByte( __self__:ReadWriter, _delim:stdgo.StdGoTypes.GoUInt8):stdgo.Error return __self__.writeByte(_delim);
    @:embedded
    public static function write( __self__:ReadWriter, _p:stdgo.Slice<stdgo.StdGoTypes.GoUInt8>):{ var _0 : stdgo.StdGoTypes.GoInt; var _1 : stdgo.Error; } return __self__.write(_p);
    @:embedded
    public static function unreadRune( __self__:ReadWriter):stdgo.Error return __self__.unreadRune();
    @:embedded
    public static function unreadByte( __self__:ReadWriter):stdgo.Error return __self__.unreadByte();
    @:embedded
    public static function readString( __self__:ReadWriter, _delim:stdgo.StdGoTypes.GoUInt8):{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } return __self__.readString(_delim);
    @:embedded
    public static function readSlice( __self__:ReadWriter, _delim:stdgo.StdGoTypes.GoUInt8):{ var _0 : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>; var _1 : stdgo.Error; } return __self__.readSlice(_delim);
    @:embedded
    public static function readRune( __self__:ReadWriter):{ var _0 : stdgo.StdGoTypes.GoInt32; var _1 : stdgo.StdGoTypes.GoInt; var _2 : stdgo.Error; } return __self__.readRune();
    @:embedded
    public static function readLine( __self__:ReadWriter):{ var _0 : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>; var _1 : Bool; var _2 : stdgo.Error; } return __self__.readLine();
    @:embedded
    public static function readFrom( __self__:ReadWriter, _r:stdgo.io.Io.Reader):{ var _0 : stdgo.StdGoTypes.GoInt64; var _1 : stdgo.Error; } return __self__.readFrom(_r);
    @:embedded
    public static function readBytes( __self__:ReadWriter, _delim:stdgo.StdGoTypes.GoUInt8):{ var _0 : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>; var _1 : stdgo.Error; } return __self__.readBytes(_delim);
    @:embedded
    public static function readByte( __self__:ReadWriter):{ var _0 : stdgo.StdGoTypes.GoUInt8; var _1 : stdgo.Error; } return __self__.readByte();
    @:embedded
    public static function read( __self__:ReadWriter, _p:stdgo.Slice<stdgo.StdGoTypes.GoUInt8>):{ var _0 : stdgo.StdGoTypes.GoInt; var _1 : stdgo.Error; } return __self__.read(_p);
    @:embedded
    public static function peek( __self__:ReadWriter, __0:stdgo.StdGoTypes.GoInt):{ var _0 : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>; var _1 : stdgo.Error; } return __self__.peek(__0);
    @:embedded
    public static function flush( __self__:ReadWriter):stdgo.Error return __self__.flush();
    @:embedded
    public static function discard( __self__:ReadWriter, __0:stdgo.StdGoTypes.GoInt):{ var _0 : stdgo.StdGoTypes.GoInt; var _1 : stdgo.Error; } return __self__.discard(__0);
    @:embedded
    public static function availableBuffer( __self__:ReadWriter):stdgo.Slice<stdgo.StdGoTypes.GoUInt8> return __self__.availableBuffer();
    @:embedded
    public static function available( __self__:ReadWriter):stdgo.StdGoTypes.GoInt return __self__.available();
}
class Scanner_asInterface {
    /**
        // Split sets the split function for the Scanner.
        // The default split function is ScanLines.
        //
        // Split panics if it is called after scanning has started.
    **/
    @:keep
    public dynamic function split(_split:SplitFunc):Void __self__.value.split(_split);
    /**
        // Buffer sets the initial buffer to use when scanning and the maximum
        // size of buffer that may be allocated during scanning. The maximum
        // token size is the larger of max and cap(buf). If max <= cap(buf),
        // Scan will use this buffer only and do no allocation.
        //
        // By default, Scan uses an internal buffer and sets the
        // maximum token size to MaxScanTokenSize.
        //
        // Buffer panics if it is called after scanning has started.
    **/
    @:keep
    public dynamic function buffer(_buf:stdgo.Slice<stdgo.StdGoTypes.GoByte>, _max:stdgo.StdGoTypes.GoInt):Void __self__.value.buffer(_buf, _max);
    /**
        // setErr records the first error encountered.
    **/
    @:keep
    public dynamic function _setErr(_err:stdgo.Error):Void __self__.value._setErr(_err);
    /**
        // advance consumes n bytes of the buffer. It reports whether the advance was legal.
    **/
    @:keep
    public dynamic function _advance(_n:stdgo.StdGoTypes.GoInt):Bool return __self__.value._advance(_n);
    /**
        // Scan advances the Scanner to the next token, which will then be
        // available through the Bytes or Text method. It returns false when the
        // scan stops, either by reaching the end of the input or an error.
        // After Scan returns false, the Err method will return any error that
        // occurred during scanning, except that if it was io.EOF, Err
        // will return nil.
        // Scan panics if the split function returns too many empty
        // tokens without advancing the input. This is a common error mode for
        // scanners.
    **/
    @:keep
    public dynamic function scan():Bool return __self__.value.scan();
    /**
        // Text returns the most recent token generated by a call to Scan
        // as a newly allocated string holding its bytes.
    **/
    @:keep
    public dynamic function text():stdgo.GoString return __self__.value.text();
    /**
        // Bytes returns the most recent token generated by a call to Scan.
        // The underlying array may point to data that will be overwritten
        // by a subsequent call to Scan. It does no allocation.
    **/
    @:keep
    public dynamic function bytes():stdgo.Slice<stdgo.StdGoTypes.GoByte> return __self__.value.bytes();
    /**
        // Err returns the first non-EOF error that was encountered by the Scanner.
    **/
    @:keep
    public dynamic function err():stdgo.Error return __self__.value.err();
    /**
        // ErrOrEOF is like Err, but returns EOF. Used to test a corner case.
    **/
    @:keep
    public dynamic function errOrEOF():stdgo.Error return __self__.value.errOrEOF();
    @:keep
    public dynamic function maxTokenSize(_n:stdgo.StdGoTypes.GoInt):Void __self__.value.maxTokenSize(_n);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<Scanner>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.bufio.Bufio.Scanner_asInterface) class Scanner_static_extension {
    /**
        // Split sets the split function for the Scanner.
        // The default split function is ScanLines.
        //
        // Split panics if it is called after scanning has started.
    **/
    @:keep
    static public function split( _s:stdgo.StdGoTypes.Ref<Scanner>, _split:SplitFunc):Void {
        @:recv var _s:stdgo.StdGoTypes.Ref<Scanner> = _s;
        if (_s._scanCalled) {
            throw stdgo.Go.toInterface(("Split called after Scan" : stdgo.GoString));
        };
        _s._split = _split;
    }
    /**
        // Buffer sets the initial buffer to use when scanning and the maximum
        // size of buffer that may be allocated during scanning. The maximum
        // token size is the larger of max and cap(buf). If max <= cap(buf),
        // Scan will use this buffer only and do no allocation.
        //
        // By default, Scan uses an internal buffer and sets the
        // maximum token size to MaxScanTokenSize.
        //
        // Buffer panics if it is called after scanning has started.
    **/
    @:keep
    static public function buffer( _s:stdgo.StdGoTypes.Ref<Scanner>, _buf:stdgo.Slice<stdgo.StdGoTypes.GoByte>, _max:stdgo.StdGoTypes.GoInt):Void {
        @:recv var _s:stdgo.StdGoTypes.Ref<Scanner> = _s;
        if (_s._scanCalled) {
            throw stdgo.Go.toInterface(("Buffer called after Scan" : stdgo.GoString));
        };
        _s._buf = (_buf.__slice__((0 : stdgo.StdGoTypes.GoInt), _buf.capacity) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>);
        _s._maxTokenSize = _max;
    }
    /**
        // setErr records the first error encountered.
    **/
    @:keep
    static public function _setErr( _s:stdgo.StdGoTypes.Ref<Scanner>, _err:stdgo.Error):Void {
        @:recv var _s:stdgo.StdGoTypes.Ref<Scanner> = _s;
        if ((_s._err == null) || (stdgo.Go.toInterface(_s._err) == stdgo.Go.toInterface(stdgo.io.Io.eof))) {
            _s._err = _err;
        };
    }
    /**
        // advance consumes n bytes of the buffer. It reports whether the advance was legal.
    **/
    @:keep
    static public function _advance( _s:stdgo.StdGoTypes.Ref<Scanner>, _n:stdgo.StdGoTypes.GoInt):Bool {
        @:recv var _s:stdgo.StdGoTypes.Ref<Scanner> = _s;
        if (_n < (0 : stdgo.StdGoTypes.GoInt)) {
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
    /**
        // Scan advances the Scanner to the next token, which will then be
        // available through the Bytes or Text method. It returns false when the
        // scan stops, either by reaching the end of the input or an error.
        // After Scan returns false, the Err method will return any error that
        // occurred during scanning, except that if it was io.EOF, Err
        // will return nil.
        // Scan panics if the split function returns too many empty
        // tokens without advancing the input. This is a common error mode for
        // scanners.
    **/
    @:keep
    static public function scan( _s:stdgo.StdGoTypes.Ref<Scanner>):Bool {
        @:recv var _s:stdgo.StdGoTypes.Ref<Scanner> = _s;
        if (_s._done) {
            return false;
        };
        _s._scanCalled = true;
        while (true) {
            if ((_s._end > _s._start) || (_s._err != null)) {
                var __tmp__ = _s._split((_s._buf.__slice__(_s._start, _s._end) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>), _s._err != null), _advance:stdgo.StdGoTypes.GoInt = __tmp__._0, _token:stdgo.Slice<stdgo.StdGoTypes.GoUInt8> = __tmp__._1, _err:stdgo.Error = __tmp__._2;
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
                    if ((_s._err == null) || (_advance > (0 : stdgo.StdGoTypes.GoInt))) {
                        _s._empties = (0 : stdgo.StdGoTypes.GoInt);
                    } else {
                        _s._empties++;
                        if (_s._empties > (100 : stdgo.StdGoTypes.GoInt)) {
                            throw stdgo.Go.toInterface(("bufio.Scan: too many empty tokens without progressing" : stdgo.GoString));
                        };
                    };
                    return true;
                };
            };
            if (_s._err != null) {
                _s._start = (0 : stdgo.StdGoTypes.GoInt);
                _s._end = (0 : stdgo.StdGoTypes.GoInt);
                return false;
            };
            if ((_s._start > (0 : stdgo.StdGoTypes.GoInt)) && ((_s._end == (_s._buf.length)) || (_s._start > (_s._buf.length / (2 : stdgo.StdGoTypes.GoInt))))) {
                stdgo.Go.copySlice(_s._buf, (_s._buf.__slice__(_s._start, _s._end) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>));
                _s._end = _s._end - (_s._start);
                _s._start = (0 : stdgo.StdGoTypes.GoInt);
            };
            if (_s._end == ((_s._buf.length))) {
                {};
                if ((_s._buf.length >= _s._maxTokenSize) || (_s._buf.length > (1073741823 : stdgo.StdGoTypes.GoInt))) {
                    _s._setErr(errTooLong);
                    return false;
                };
                var _newSize:stdgo.StdGoTypes.GoInt = (_s._buf.length) * (2 : stdgo.StdGoTypes.GoInt);
                if (_newSize == ((0 : stdgo.StdGoTypes.GoInt))) {
                    _newSize = (4096 : stdgo.StdGoTypes.GoInt);
                };
                if (_newSize > _s._maxTokenSize) {
                    _newSize = _s._maxTokenSize;
                };
                var _newBuf = new stdgo.Slice<stdgo.StdGoTypes.GoUInt8>((_newSize : stdgo.StdGoTypes.GoInt).toBasic(), 0).__setNumber32__();
                stdgo.Go.copySlice(_newBuf, (_s._buf.__slice__(_s._start, _s._end) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>));
                _s._buf = _newBuf;
                _s._end = _s._end - (_s._start);
                _s._start = (0 : stdgo.StdGoTypes.GoInt);
            };
            {
                var _loop:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
                while (true) {
                    var __tmp__ = _s._r.read((_s._buf.__slice__(_s._end, (_s._buf.length)) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>)), _n:stdgo.StdGoTypes.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                    if ((_n < (0 : stdgo.StdGoTypes.GoInt)) || ((_s._buf.length - _s._end) < _n)) {
                        _s._setErr(errBadReadCount);
                        break;
                    };
                    _s._end = _s._end + (_n);
                    if (_err != null) {
                        _s._setErr(_err);
                        break;
                    };
                    if (_n > (0 : stdgo.StdGoTypes.GoInt)) {
                        _s._empties = (0 : stdgo.StdGoTypes.GoInt);
                        break;
                    };
                    _loop++;
                    if (_loop > (100 : stdgo.StdGoTypes.GoInt)) {
                        _s._setErr(stdgo.io.Io.errNoProgress);
                        break;
                    };
                };
            };
        };
    }
    /**
        // Text returns the most recent token generated by a call to Scan
        // as a newly allocated string holding its bytes.
    **/
    @:keep
    static public function text( _s:stdgo.StdGoTypes.Ref<Scanner>):stdgo.GoString {
        @:recv var _s:stdgo.StdGoTypes.Ref<Scanner> = _s;
        return (_s._token : stdgo.GoString)?.__copy__();
    }
    /**
        // Bytes returns the most recent token generated by a call to Scan.
        // The underlying array may point to data that will be overwritten
        // by a subsequent call to Scan. It does no allocation.
    **/
    @:keep
    static public function bytes( _s:stdgo.StdGoTypes.Ref<Scanner>):stdgo.Slice<stdgo.StdGoTypes.GoByte> {
        @:recv var _s:stdgo.StdGoTypes.Ref<Scanner> = _s;
        return _s._token;
    }
    /**
        // Err returns the first non-EOF error that was encountered by the Scanner.
    **/
    @:keep
    static public function err( _s:stdgo.StdGoTypes.Ref<Scanner>):stdgo.Error {
        @:recv var _s:stdgo.StdGoTypes.Ref<Scanner> = _s;
        if (stdgo.Go.toInterface(_s._err) == (stdgo.Go.toInterface(stdgo.io.Io.eof))) {
            return (null : stdgo.Error);
        };
        return _s._err;
    }
    /**
        // ErrOrEOF is like Err, but returns EOF. Used to test a corner case.
    **/
    @:keep
    static public function errOrEOF( _s:stdgo.StdGoTypes.Ref<Scanner>):stdgo.Error {
        @:recv var _s:stdgo.StdGoTypes.Ref<Scanner> = _s;
        return _s._err;
    }
    @:keep
    static public function maxTokenSize( _s:stdgo.StdGoTypes.Ref<Scanner>, _n:stdgo.StdGoTypes.GoInt):Void {
        @:recv var _s:stdgo.StdGoTypes.Ref<Scanner> = _s;
        if ((_n < (4 : stdgo.StdGoTypes.GoInt)) || (_n > (1000000000 : stdgo.StdGoTypes.GoInt))) {
            throw stdgo.Go.toInterface(("bad max token size" : stdgo.GoString));
        };
        if (_n < (_s._buf.length)) {
            _s._buf = new stdgo.Slice<stdgo.StdGoTypes.GoUInt8>((_n : stdgo.StdGoTypes.GoInt).toBasic(), 0).__setNumber32__();
        };
        _s._maxTokenSize = _n;
    }
}
