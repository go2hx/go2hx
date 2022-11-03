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

/**
	// Package bufio implements buffered I/O. It wraps an io.Reader or io.Writer
	// object, creating another object (Reader or Writer) that also implements
	// the interface but provides buffering and some help for textual I/O.
**/
private var __go2hxdoc__package:Bool;

var errInvalidUnreadByte:Error = stdgo.errors.Errors.new_(Go.str("bufio: invalid use of UnreadByte"));
var errInvalidUnreadRune:Error = stdgo.errors.Errors.new_(Go.str("bufio: invalid use of UnreadRune"));
var errBufferFull:Error = stdgo.errors.Errors.new_(Go.str("bufio: buffer full"));
var errNegativeCount:Error = stdgo.errors.Errors.new_(Go.str("bufio: negative count"));
private var _errNegativeRead:Error = stdgo.errors.Errors.new_(Go.str("bufio: reader returned negative count from Read"));
private var _errNegativeWrite:Error = stdgo.errors.Errors.new_(Go.str("bufio: writer returned negative count from Write"));

/**
	// Errors returned by Scanner.
**/
var errTooLong:Error = stdgo.errors.Errors.new_(Go.str("bufio.Scanner: token too long"));

/**
	// Errors returned by Scanner.
**/
var errNegativeAdvance:Error = stdgo.errors.Errors.new_(Go.str("bufio.Scanner: SplitFunc returns negative advance count"));

/**
	// Errors returned by Scanner.
**/
var errAdvanceTooFar:Error = stdgo.errors.Errors.new_(Go.str("bufio.Scanner: SplitFunc returns advance count beyond input"));

/**
	// Errors returned by Scanner.
**/
var errBadReadCount:Error = stdgo.errors.Errors.new_(Go.str("bufio.Scanner: Read returned impossible count"));

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
var errFinalToken:Error = stdgo.errors.Errors.new_(Go.str("final token"));

private var _errorRune:Slice<GoUInt8> = (((65533 : GoInt32) : GoString) : Slice<GoByte>);
var isSpace:GoInt32->Bool = _isSpace;
private final _defaultBufSize:GoUInt64 = ("4096" : GoUInt64);
private final _minReadBufferSize:GoUInt64 = ("16" : GoUInt64);
private final _maxConsecutiveEmptyReads:GoUInt64 = ("100" : GoUInt64);
final defaultBufSize:GoUInt64 = ("4096" : GoUInt64);

/**
	// MaxScanTokenSize is the maximum size used to buffer a token
	// unless the user provides an explicit buffer with Scanner.Buffer.
	// The actual maximum token size may be smaller as the buffer
	// may need to include, for instance, a newline.
**/
final maxScanTokenSize:GoUInt64 = ("65536" : GoUInt64);

/**
	// Size of initial allocation for buffer.
**/
private final _startBufSize:GoUInt64 = ("4096" : GoUInt64);

/**
	// Reader implements buffering for an io.Reader object.
**/
@:structInit @:using(stdgo.bufio.Bufio.Reader_static_extension) class Reader {
	public var _buf:Slice<GoUInt8> = (null : Slice<GoUInt8>);

	/**
		// reader provided by the client
	**/
	public var _rd:stdgo.io.Io.Reader = (null : stdgo.io.Io.Reader);

	/**
		// buf read and write positions
	**/
	public var _r:GoInt = 0;

	public var _w:GoInt = 0;

	/**
		// last byte read for UnreadByte; -1 means invalid
	**/
	public var _err:Error = (null : Error);

	/**
		// size of last rune read for UnreadRune; -1 means invalid
	**/
	public var _lastByte:GoInt = 0;

	public var _lastRuneSize:GoInt = 0;

	public function new(?_buf:Slice<GoUInt8>, ?_rd:stdgo.io.Io.Reader, ?_r:GoInt, ?_w:GoInt, ?_err:Error, ?_lastByte:GoInt, ?_lastRuneSize:GoInt) {
		if (_buf != null)
			this._buf = _buf;
		if (_rd != null)
			this._rd = _rd;
		if (_r != null)
			this._r = _r;
		if (_w != null)
			this._w = _w;
		if (_err != null)
			this._err = _err;
		if (_lastByte != null)
			this._lastByte = _lastByte;
		if (_lastRuneSize != null)
			this._lastRuneSize = _lastRuneSize;
	}

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
	public var _err:Error = (null : Error);
	public var _buf:Slice<GoUInt8> = (null : Slice<GoUInt8>);
	public var _n:GoInt = 0;
	public var _wr:stdgo.io.Io.Writer = (null : stdgo.io.Io.Writer);

	public function new(?_err:Error, ?_buf:Slice<GoUInt8>, ?_n:GoInt, ?_wr:stdgo.io.Io.Writer) {
		if (_err != null)
			this._err = _err;
		if (_buf != null)
			this._buf = _buf;
		if (_n != null)
			this._n = _n;
		if (_wr != null)
			this._wr = _wr;
	}

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
	public var reader:Ref<Reader> = (null : Reader);
	@:embedded
	public var writer:Ref<Writer> = (null : Writer);

	public function new(?reader:Ref<Reader>, ?writer:Ref<Writer>) {
		if (reader != null)
			this.reader = reader;
		if (writer != null)
			this.writer = writer;
	}

	@:embedded
	public function available():GoInt
		return writer.available();

	@:embedded
	public function availableBuffer():Slice<GoUInt8>
		return writer.availableBuffer();

	@:embedded
	public function discard(__0:GoInt):{var _0:GoInt; var _1:Error;}
		return reader.discard(__0);

	@:embedded
	public function flush():Error
		return writer.flush();

	@:embedded
	public function peek(__0:GoInt):{var _0:Slice<GoUInt8>; var _1:Error;}
		return reader.peek(__0);

	@:embedded
	public function read(_p:Slice<GoUInt8>):{var _0:GoInt; var _1:Error;}
		return reader.read(_p);

	@:embedded
	public function readByte():{var _0:GoUInt8; var _1:Error;}
		return reader.readByte();

	@:embedded
	public function readBytes(_delim:GoUInt8):{var _0:Slice<GoUInt8>; var _1:Error;}
		return reader.readBytes(_delim);

	@:embedded
	public function readFrom(_r:stdgo.io.Io.Reader):{var _0:GoInt64; var _1:Error;}
		return writer.readFrom(_r);

	@:embedded
	public function readLine():{var _0:Slice<GoUInt8>; var _1:Bool; var _2:Error;}
		return reader.readLine();

	@:embedded
	public function readRune():{var _0:GoInt32; var _1:GoInt; var _2:Error;}
		return reader.readRune();

	@:embedded
	public function readSlice(_delim:GoUInt8):{var _0:Slice<GoUInt8>; var _1:Error;}
		return reader.readSlice(_delim);

	@:embedded
	public function readString(_delim:GoUInt8):{var _0:GoString; var _1:Error;}
		return reader.readString(_delim);

	@:embedded
	public function unreadByte():Error
		return reader.unreadByte();

	@:embedded
	public function unreadRune():Error
		return reader.unreadRune();

	@:embedded
	public function write(_p:Slice<GoUInt8>):{var _0:GoInt; var _1:Error;}
		return writer.write(_p);

	@:embedded
	public function writeByte(_delim:GoUInt8):Error
		return writer.writeByte(_delim);

	@:embedded
	public function writeRune(_r:GoInt32):{var _0:GoInt; var _1:Error;}
		return writer.writeRune(_r);

	@:embedded
	public function writeString(_text:GoString):{var _0:GoInt; var _1:Error;}
		return writer.writeString(_text);

	@:embedded
	public function writeTo(_w:stdgo.io.Io.Writer):{var _0:GoInt64; var _1:Error;}
		return reader.writeTo(_w);

	@:embedded
	public function _collectFragments(_delim:GoUInt8):{
		var _0:Slice<Slice<GoUInt8>>;
		var _1:Slice<GoUInt8>;
		var _2:GoInt;
		var _3:Error;
	}
		return reader._collectFragments(_delim);

	@:embedded
	public function _fill()
		reader._fill();

	@:embedded
	public function _readErr():Error
		return reader._readErr();

	@:embedded
	public function _reset(_buf:Slice<GoUInt8>, _r:stdgo.io.Io.Reader)
		reader._reset(_buf, _r);

	@:embedded
	public function _writeBuf(_w:stdgo.io.Io.Writer):{var _0:GoInt64; var _1:Error;}
		return reader._writeBuf(_w);

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
	/**
		// The reader provided by the client.
	**/
	public var _r:stdgo.io.Io.Reader = (null : stdgo.io.Io.Reader);

	/**
		// The function to split the tokens.
	**/
	public var _split:SplitFunc = (null : SplitFunc);

	/**
		// Maximum size of a token; modified by tests.
	**/
	public var _maxTokenSize:GoInt = 0;

	/**
		// Last token returned by split.
	**/
	public var _token:Slice<GoUInt8> = (null : Slice<GoUInt8>);

	/**
		// Buffer used as argument to split.
	**/
	public var _buf:Slice<GoUInt8> = (null : Slice<GoUInt8>);

	/**
		// First non-processed byte in buf.
	**/
	public var _start:GoInt = 0;

	/**
		// End of data in buf.
	**/
	public var _end:GoInt = 0;

	/**
		// Sticky error.
	**/
	public var _err:Error = (null : Error);

	/**
		// Count of successive empty tokens.
	**/
	public var _empties:GoInt = 0;

	/**
		// Scan has been called; buffer is in use.
	**/
	public var _scanCalled:Bool = false;

	/**
		// Scan has finished.
	**/
	public var _done:Bool = false;

	public function new(?_r:stdgo.io.Io.Reader, ?_split:SplitFunc, ?_maxTokenSize:GoInt, ?_token:Slice<GoUInt8>, ?_buf:Slice<GoUInt8>, ?_start:GoInt,
			?_end:GoInt, ?_err:Error, ?_empties:GoInt, ?_scanCalled:Bool, ?_done:Bool) {
		if (_r != null)
			this._r = _r;
		if (_split != null)
			this._split = _split;
		if (_maxTokenSize != null)
			this._maxTokenSize = _maxTokenSize;
		if (_token != null)
			this._token = _token;
		if (_buf != null)
			this._buf = _buf;
		if (_start != null)
			this._start = _start;
		if (_end != null)
			this._end = _end;
		if (_err != null)
			this._err = _err;
		if (_empties != null)
			this._empties = _empties;
		if (_scanCalled != null)
			this._scanCalled = _scanCalled;
		if (_done != null)
			this._done = _done;
	}

	public function __copy__() {
		return new Scanner(_r, _split, _maxTokenSize, _token, _buf, _start, _end, _err, _empties, _scanCalled, _done);
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
@:named typedef SplitFunc = (Slice<GoUInt8>, Bool) -> {
	var _0:GoInt;
	var _1:Slice<GoUInt8>;
	var _2:Error;
};

/**
	// NewReaderSize returns a new Reader whose buffer has at least the specified
	// size. If the argument io.Reader is already a Reader with large enough
	// size, it returns the underlying Reader.
**/
function newReaderSize(_rd:stdgo.io.Io.Reader, _size:GoInt):Ref<Reader> {
	var __tmp__ = try {
		{value: Go.typeAssert((Go.toInterface(_rd) : Ref<Reader>)), ok: true};
	} catch (_) {
		{value: (null : Reader), ok: false};
	}, _b = __tmp__.value, _ok = __tmp__.ok;
	if (_ok && (_b._buf.length >= _size)) {
		return _b;
	};
	if (_size < (16:GoInt)) {
		_size = (16 : GoInt);
	};
	var _r = ({} : Reader);
	_r._reset(new Slice<GoUInt8>((_size : GoInt).toBasic(), 0, ...[for (i in 0...(_size : GoInt).toBasic()) (0 : GoUInt8)]), _rd);
	return _r;
}

/**
	// NewReader returns a new Reader whose buffer has the default size.
**/
function newReader(_rd:stdgo.io.Io.Reader):Ref<Reader> {
	return newReaderSize(_rd, (4096 : GoInt));
}

/**
	// NewWriterSize returns a new Writer whose buffer has at least the specified
	// size. If the argument io.Writer is already a Writer with large enough
	// size, it returns the underlying Writer.
**/
function newWriterSize(_w:stdgo.io.Io.Writer, _size:GoInt):Ref<Writer> {
	var __tmp__ = try {
		{value: Go.typeAssert((Go.toInterface(_w) : Ref<Writer>)), ok: true};
	} catch (_) {
		{value: (null : Writer), ok: false};
	}, _b = __tmp__.value, _ok = __tmp__.ok;
	if (_ok && (_b._buf.length >= _size)) {
		return _b;
	};
	if (_size <= (0 : GoInt)) {
		_size = (4096 : GoInt);
	};
	return (({_buf: new Slice<GoUInt8>((_size : GoInt).toBasic(), 0,
		...[for (i in 0...(_size : GoInt).toBasic()) (0 : GoUInt8)]), _wr: _w} : Writer) : Ref<Writer>);
}

/**
	// NewWriter returns a new Writer whose buffer has the default size.
	// If the argument io.Writer is already a Writer with large enough buffer size,
	// it returns the underlying Writer.
**/
function newWriter(_w:stdgo.io.Io.Writer):Ref<Writer> {
	return newWriterSize(_w, (4096 : GoInt));
}

/**
	// NewReadWriter allocates a new ReadWriter that dispatches to r and w.
**/
function newReadWriter(_r:Ref<Reader>, _w:Ref<Writer>):Ref<ReadWriter> {
	return ((new ReadWriter(_r, _w) : ReadWriter) : Ref<ReadWriter>);
}

/**
	// NewScanner returns a new Scanner to read from r.
	// The split function defaults to ScanLines.
**/
function newScanner(_r:stdgo.io.Io.Reader):Ref<Scanner> {
	return (({_r: _r, _split: scanLines, _maxTokenSize: (65536 : GoInt)} : Scanner) : Ref<Scanner>);
}

/**
	// ScanBytes is a split function for a Scanner that returns each byte as a token.
**/
function scanBytes(_data:Slice<GoByte>, _atEOF:Bool):{var _0:GoInt; var _1:Slice<GoByte>; var _2:Error;} {
	var _advance:GoInt = (0 : GoInt),
		_token:Slice<GoByte> = (null : Slice<GoUInt8>),
		_err:Error = (null : Error);
	if (_atEOF && (_data.length == (0 : GoInt))) {
		return {_0: (0 : GoInt), _1: (null : Slice<GoUInt8>), _2: (null : Error)};
	};
	return {_0: (1 : GoInt), _1: (_data.__slice__((0 : GoInt), (1 : GoInt)) : Slice<GoUInt8>), _2: (null : Error)};
}

/**
	// ScanRunes is a split function for a Scanner that returns each
	// UTF-8-encoded rune as a token. The sequence of runes returned is
	// equivalent to that from a range loop over the input as a string, which
	// means that erroneous UTF-8 encodings translate to U+FFFD = "\xef\xbf\xbd".
	// Because of the Scan interface, this makes it impossible for the client to
	// distinguish correctly encoded replacement runes from encoding errors.
**/
function scanRunes(_data:Slice<GoByte>, _atEOF:Bool):{var _0:GoInt; var _1:Slice<GoByte>; var _2:Error;} {
	var _advance:GoInt = (0 : GoInt),
		_token:Slice<GoByte> = (null : Slice<GoUInt8>),
		_err:Error = (null : Error);
	if (_atEOF && (_data.length == (0 : GoInt))) {
		return {_0: (0 : GoInt), _1: (null : Slice<GoUInt8>), _2: (null : Error)};
	};
	if (_data[(0 : GoInt)] < (128 : GoUInt8)) {
		return {_0: (1 : GoInt), _1: (_data.__slice__((0 : GoInt), (1 : GoInt)) : Slice<GoUInt8>), _2: (null : Error)};
	};
	var __tmp__ = stdgo.unicode.utf8.Utf8.decodeRune(_data),
		_0:GoInt32 = __tmp__._0,
		_width:GoInt = __tmp__._1;
	if (_width > (1 : GoInt)) {
		return {_0: _width, _1: (_data.__slice__((0 : GoInt), _width) : Slice<GoUInt8>), _2: (null : Error)};
	};
	if (!_atEOF && !stdgo.unicode.utf8.Utf8.fullRune(_data)) {
		return {_0: (0 : GoInt), _1: (null : Slice<GoUInt8>), _2: (null : Error)};
	};
	return {_0: (1 : GoInt), _1: _errorRune, _2: (null : Error)};
}

/**
	// dropCR drops a terminal \r from the data.
**/
function _dropCR(_data:Slice<GoByte>):Slice<GoByte> {
	if ((_data.length > (0 : GoInt)) && (_data[(_data.length) - (1 : GoInt)] == ("\r".code : GoRune))) {
		return (_data.__slice__((0 : GoInt), (_data.length) - (1 : GoInt)) : Slice<GoUInt8>);
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
function scanLines(_data:Slice<GoByte>, _atEOF:Bool):{var _0:GoInt; var _1:Slice<GoByte>; var _2:Error;} {
	var _advance:GoInt = (0 : GoInt),
		_token:Slice<GoByte> = (null : Slice<GoUInt8>),
		_err:Error = (null : Error);
	if (_atEOF && (_data.length == (0 : GoInt))) {
		return {_0: (0 : GoInt), _1: (null : Slice<GoUInt8>), _2: (null : Error)};
	};
	{
		var _i:GoInt = stdgo.bytes.Bytes.indexByte(_data, ("\n".code : GoRune));
		if (_i >= (0 : GoInt)) {
			return {_0: _i + (1 : GoInt), _1: _dropCR((_data.__slice__((0 : GoInt), _i) : Slice<GoUInt8>)), _2: (null : Error)};
		};
	};
	if (_atEOF) {
		return {_0: (_data.length), _1: _dropCR(_data), _2: (null : Error)};
	};
	return {_0: (0 : GoInt), _1: (null : Slice<GoUInt8>), _2: (null : Error)};
}

/**
	// isSpace reports whether the character is a Unicode white space character.
	// We avoid dependency on the unicode package, but check validity of the implementation
	// in the tests.
**/
function _isSpace(_r:GoRune):Bool {
	if (_r <= ("\u00FF".code : GoRune)) {
		if (_r == ((" ".code : GoRune)) || _r == (("\t".code : GoRune)) || _r == (("\n".code : GoRune)) || _r == (("\x0B".code : GoRune))
			|| _r == (("\x0C".code : GoRune)) || _r == (("\r".code : GoRune))) {
			return true;
		} else if (_r == (("\u0085".code : GoRune)) || _r == (("\u00A0".code : GoRune))) {
			return true;
		};
		return false;
	};
	if ((("\u2000".code : GoRune) <= _r) && (_r <= ("\u200a".code : GoRune))) {
		return true;
	};
	if (_r == (("\u1680".code : GoRune)) || _r == (("\u2028".code : GoRune)) || _r == (("\u2029".code : GoRune)) || _r == (("\u202f".code : GoRune))
		|| _r == (("\u205f".code : GoRune)) || _r == (("\u3000".code : GoRune))) {
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
function scanWords(_data:Slice<GoByte>, _atEOF:Bool):{var _0:GoInt; var _1:Slice<GoByte>; var _2:Error;} {
	var _advance:GoInt = (0 : GoInt),
		_token:Slice<GoByte> = (null : Slice<GoUInt8>),
		_err:Error = (null : Error);
	var _start:GoInt = (0 : GoInt);
	{
		var _width:GoInt = (0 : GoInt);
		Go.cfor(_start < (_data.length), _start = _start + (_width), {
			var _r:GoRune = (0 : GoInt32);
			{
				var __tmp__ = stdgo.unicode.utf8.Utf8.decodeRune((_data.__slice__(_start) : Slice<GoUInt8>));
				_r = __tmp__._0;
				_width = __tmp__._1;
			};
			if (!_isSpace(_r)) {
				break;
			};
		});
	};
	{
		var _width:GoInt = (0 : GoInt), _i:GoInt = _start;
		Go.cfor(_i < (_data.length), _i = _i + (_width), {
			var _r:GoRune = (0 : GoInt32);
			{
				var __tmp__ = stdgo.unicode.utf8.Utf8.decodeRune((_data.__slice__(_i) : Slice<GoUInt8>));
				_r = __tmp__._0;
				_width = __tmp__._1;
			};
			if (_isSpace(_r)) {
				return {_0: _i + _width, _1: (_data.__slice__(_start, _i) : Slice<GoUInt8>), _2: (null : Error)};
			};
		});
	};
	if (_atEOF && (_data.length > _start)) {
		return {_0: (_data.length), _1: (_data.__slice__(_start) : Slice<GoUInt8>), _2: (null : Error)};
	};
	return {_0: _start, _1: (null : Slice<GoUInt8>), _2: (null : Error)};
}

class Reader_asInterface {
	/**
		// writeBuf writes the Reader's buffer to the writer.
	**/
	@:keep
	public function _writeBuf(_w:stdgo.io.Io.Writer):{var _0:GoInt64; var _1:Error;}
		return __self__.value._writeBuf(_w);

	/**
		// WriteTo implements io.WriterTo.
		// This may make multiple calls to the Read method of the underlying Reader.
		// If the underlying reader supports the WriteTo method,
		// this calls the underlying WriteTo without buffering.
	**/
	@:keep
	public function writeTo(_w:stdgo.io.Io.Writer):{var _0:GoInt64; var _1:Error;}
		return __self__.value.writeTo(_w);

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
	public function readString(_delim:GoByte):{var _0:GoString; var _1:Error;}
		return __self__.value.readString(_delim);

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
	public function readBytes(_delim:GoByte):{var _0:Slice<GoByte>; var _1:Error;}
		return __self__.value.readBytes(_delim);

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
	public function _collectFragments(_delim:GoByte):{
		var _0:Slice<Slice<GoByte>>;
		var _1:Slice<GoByte>;
		var _2:GoInt;
		var _3:Error;
	}
		return __self__.value._collectFragments(_delim);

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
	public function readLine():{var _0:Slice<GoByte>; var _1:Bool; var _2:Error;}
		return __self__.value.readLine();

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
	public function readSlice(_delim:GoByte):{var _0:Slice<GoByte>; var _1:Error;}
		return __self__.value.readSlice(_delim);

	/**
		// Buffered returns the number of bytes that can be read from the current buffer.
	**/
	@:keep
	public function buffered():GoInt
		return __self__.value.buffered();

	/**
		// UnreadRune unreads the last rune. If the most recent method called on
		// the Reader was not a ReadRune, UnreadRune returns an error. (In this
		// regard it is stricter than UnreadByte, which will unread the last byte
		// from any read operation.)
	**/
	@:keep
	public function unreadRune():Error
		return __self__.value.unreadRune();

	/**
		// ReadRune reads a single UTF-8 encoded Unicode character and returns the
		// rune and its size in bytes. If the encoded rune is invalid, it consumes one byte
		// and returns unicode.ReplacementChar (U+FFFD) with a size of 1.
	**/
	@:keep
	public function readRune():{var _0:GoRune; var _1:GoInt; var _2:Error;}
		return __self__.value.readRune();

	/**
		// UnreadByte unreads the last byte. Only the most recently read byte can be unread.
		//
		// UnreadByte returns an error if the most recent method called on the
		// Reader was not a read operation. Notably, Peek, Discard, and WriteTo are not
		// considered read operations.
	**/
	@:keep
	public function unreadByte():Error
		return __self__.value.unreadByte();

	/**
		// ReadByte reads and returns a single byte.
		// If no byte is available, returns an error.
	**/
	@:keep
	public function readByte():{var _0:GoByte; var _1:Error;}
		return __self__.value.readByte();

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
	public function read(_p:Slice<GoByte>):{var _0:GoInt; var _1:Error;}
		return __self__.value.read(_p);

	/**
		// Discard skips the next n bytes, returning the number of bytes discarded.
		//
		// If Discard skips fewer than n bytes, it also returns an error.
		// If 0 <= n <= b.Buffered(), Discard is guaranteed to succeed without
		// reading from the underlying io.Reader.
	**/
	@:keep
	public function discard(_n:GoInt):{var _0:GoInt; var _1:Error;}
		return __self__.value.discard(_n);

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
	public function peek(_n:GoInt):{var _0:Slice<GoByte>; var _1:Error;}
		return __self__.value.peek(_n);

	@:keep
	public function _readErr():Error
		return __self__.value._readErr();

	/**
		// fill reads a new chunk into the buffer.
	**/
	@:keep
	public function _fill():Void
		__self__.value._fill();

	@:keep
	public function _reset(_buf:Slice<GoByte>, _r:stdgo.io.Io.Reader):Void
		__self__.value._reset(_buf, _r);

	/**
		// Reset discards any buffered data, resets all state, and switches
		// the buffered reader to read from r.
		// Calling Reset on the zero value of Reader initializes the internal buffer
		// to the default size.
	**/
	@:keep
	public function reset(_r:stdgo.io.Io.Reader):Void
		__self__.value.reset(_r);

	/**
		// Size returns the size of the underlying buffer in bytes.
	**/
	@:keep
	public function size():GoInt
		return __self__.value.size();

	public function new(__self__, __type__) {
		this.__self__ = __self__;
		this.__type__ = __type__;
	}

	public function __underlying__()
		return new AnyInterface((__type__.kind() == stdgo.reflect.Reflect.ptr
			&& !stdgo.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic),
			__type__);

	var __self__:Pointer<Reader>;
	var __type__:stdgo.reflect.Reflect.Type;
}

@:keep @:allow(stdgo.bufio.Bufio.Reader_asInterface) class Reader_static_extension {
	/**
		// writeBuf writes the Reader's buffer to the writer.
	**/
	@:keep
	static public function _writeBuf(_b:Ref<Reader>, _w:stdgo.io.Io.Writer):{var _0:GoInt64; var _1:Error;} {
		var __tmp__ = _w.write((_b._buf.__slice__(_b._r, _b._w) : Slice<GoUInt8>)),
			_n:GoInt = __tmp__._0,
			_err:Error = __tmp__._1;
		if (_n < (0:GoInt)) {
			throw Go.toInterface(_errNegativeWrite);
		};
		_b._r = _b._r + (_n);
		return {_0: (_n : GoInt64), _1: _err};
	}

	/**
		// WriteTo implements io.WriterTo.
		// This may make multiple calls to the Read method of the underlying Reader.
		// If the underlying reader supports the WriteTo method,
		// this calls the underlying WriteTo without buffering.
	**/
	@:keep
	static public function writeTo(_b:Ref<Reader>, _w:stdgo.io.Io.Writer):{var _0:GoInt64; var _1:Error;} {
		var _n:GoInt64 = (0 : GoInt64), _err:Error = (null : Error);
		_b._lastByte = (-1 : GoInt);
		_b._lastRuneSize = (-1 : GoInt);
		{
			var __tmp__ = _b._writeBuf(_w);
			_n = __tmp__._0;
			_err = __tmp__._1;
		};
		if (_err != null) {
			return {_0: _n, _1: _err};
		};
		{
			var __tmp__ = try {
				{value: Go.typeAssert((Go.toInterface(_b._rd) : stdgo.io.Io.WriterTo)), ok: true};
			} catch (_) {
				{value: (null : stdgo.io.Io.WriterTo), ok: false};
			}, _r = __tmp__.value, _ok = __tmp__.ok;
			if (_ok) {
				var __tmp__ = _r.writeTo(_w),
					_m:GoInt64 = __tmp__._0,
					_err:Error = __tmp__._1;
				_n = _n + (_m);
				return {_0: _n, _1: _err};
			};
		};
		{
			var __tmp__ = try {
				{value: Go.typeAssert((Go.toInterface(_w) : stdgo.io.Io.ReaderFrom)), ok: true};
			} catch (_) {
				{value: (null : stdgo.io.Io.ReaderFrom), ok: false};
			}, _w = __tmp__.value, _ok = __tmp__.ok;
			if (_ok) {
				var __tmp__ = _w.readFrom(_b._rd),
					_m:GoInt64 = __tmp__._0,
					_err:Error = __tmp__._1;
				_n = _n + (_m);
				return {_0: _n, _1: _err};
			};
		};
		if ((_b._w - _b._r) < (_b._buf.length)) {
			_b._fill();
		};
		while (_b._r < _b._w) {
			var __tmp__ = _b._writeBuf(_w),
				_m:GoInt64 = __tmp__._0,
				_err:Error = __tmp__._1;
			_n = _n + (_m);
			if (_err != null) {
				return {_0: _n, _1: _err};
			};
			_b._fill();
		};
		if (Go.toInterface(_b._err) == (Go.toInterface(stdgo.io.Io.eof))) {
			_b._err = (null : Error);
		};
		return {_0: _n, _1: _b._readErr()};
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
	static public function readString(_b:Ref<Reader>, _delim:GoByte):{var _0:GoString; var _1:Error;} {
		var __tmp__ = _b._collectFragments(_delim),
			_full:Slice<Slice<GoUInt8>> = __tmp__._0,
			_frag:Slice<GoUInt8> = __tmp__._1,
			_n:GoInt = __tmp__._2,
			_err:Error = __tmp__._3;
		var _buf:stdgo.strings.Strings.Builder = ({} : stdgo.strings.Strings.Builder);
		_buf.grow(_n);
		for (_0 => _fb in _full) {
			_buf.write(_fb);
		};
		_buf.write(_frag);
		return {_0: (_buf.string() : GoString), _1: _err};
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
	static public function readBytes(_b:Ref<Reader>, _delim:GoByte):{var _0:Slice<GoByte>; var _1:Error;} {
		var __tmp__ = _b._collectFragments(_delim),
			_full:Slice<Slice<GoUInt8>> = __tmp__._0,
			_frag:Slice<GoUInt8> = __tmp__._1,
			_n:GoInt = __tmp__._2,
			_err:Error = __tmp__._3;
		var _buf = new Slice<GoUInt8>((_n : GoInt).toBasic(), 0, ...[for (i in 0...(_n : GoInt).toBasic()) (0 : GoUInt8)]);
		_n = (0 : GoInt);
		for (_i => _ in _full) {
			_n = _n + (Go.copySlice((_buf.__slice__(_n) : Slice<GoUInt8>), _full[_i]));
		};
		Go.copySlice((_buf.__slice__(_n) : Slice<GoUInt8>), _frag);
		return {_0: _buf, _1: _err};
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
	static public function _collectFragments(_b:Ref<Reader>, _delim:GoByte):{
		var _0:Slice<Slice<GoByte>>;
		var _1:Slice<GoByte>;
		var _2:GoInt;
		var _3:Error;
	} {
		var _fullBuffers:Slice<Slice<GoByte>> = (null : Slice<Slice<GoUInt8>>),
			_finalFragment:Slice<GoByte> = (null : Slice<GoUInt8>),
			_totalLen:GoInt = (0 : GoInt),
			_err:Error = (null : Error);
		var _frag:Slice<GoByte> = (null : Slice<GoUInt8>);
		while (true) {
			var _e:Error = (null : Error);
			{
				var __tmp__ = _b.readSlice(_delim);
				_frag = __tmp__._0;
				_e = __tmp__._1;
			};
			if (_e == null) {
				break;
			};
			if (Go.toInterface(_e) != (Go.toInterface(errBufferFull))) {
				_err = _e;
				break;
			};
			var _buf = new Slice<GoUInt8>((_frag.length : GoInt).toBasic(), 0, ...[for (i in 0...(_frag.length : GoInt).toBasic()) (0 : GoUInt8)]);
			Go.copySlice(_buf, _frag);
			_fullBuffers = _fullBuffers.__appendref__(_buf);
			_totalLen = _totalLen + ((_buf.length));
		};
		_totalLen = _totalLen + ((_frag.length));
		return {
			_0: _fullBuffers,
			_1: _frag,
			_2: _totalLen,
			_3: _err
		};
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
	static public function readLine(_b:Ref<Reader>):{var _0:Slice<GoByte>; var _1:Bool; var _2:Error;} {
		var _line:Slice<GoByte> = (null : Slice<GoUInt8>),
			_isPrefix:Bool = false,
			_err:Error = (null : Error);
		{
			var __tmp__ = _b.readSlice(("\n".code : GoRune));
			_line = __tmp__._0;
			_err = __tmp__._1;
		};
		if (Go.toInterface(_err) == (Go.toInterface(errBufferFull))) {
			if ((_line.length > (0 : GoInt)) && (_line[(_line.length) - (1 : GoInt)] == ("\r".code : GoRune))) {
				if (_b._r == ((0 : GoInt))) {
					throw Go.toInterface(Go.str("bufio: tried to rewind past start of buffer"));
				};
				_b._r--;
				_line = (_line.__slice__(0, (_line.length) - (1 : GoInt)) : Slice<GoUInt8>);
			};
			return {_0: _line, _1: true, _2: (null : Error)};
		};
		if ((_line.length) == ((0 : GoInt))) {
			if (_err != null) {
				_line = (null : Slice<GoUInt8>);
			};
			return {_0: _line, _1: _isPrefix, _2: _err};
		};
		_err = (null : Error);
		if (_line[(_line.length) - (1 : GoInt)] == (("\n".code : GoRune))) {
			var _drop:GoInt = (1 : GoInt);
			if ((_line.length > (1 : GoInt)) && (_line[(_line.length) - (2 : GoInt)] == ("\r".code : GoRune))) {
				_drop = (2 : GoInt);
			};
			_line = (_line.__slice__(0, (_line.length) - _drop) : Slice<GoUInt8>);
		};
		return {_0: _line, _1: _isPrefix, _2: _err};
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
	static public function readSlice(_b:Ref<Reader>, _delim:GoByte):{var _0:Slice<GoByte>; var _1:Error;} {
		var _line:Slice<GoByte> = (null : Slice<GoUInt8>),
			_err:Error = (null : Error);
		var _s:GoInt = (0 : GoInt);
		while (true) {
			{
				var _i:GoInt = stdgo.bytes.Bytes.indexByte((_b._buf.__slice__(_b._r + _s, _b._w) : Slice<GoUInt8>), _delim);
				if (_i >= (0 : GoInt)) {
					_i = _i + (_s);
					_line = (_b._buf.__slice__(_b._r, (_b._r + _i) + (1 : GoInt)) : Slice<GoUInt8>);
					_b._r = _b._r + (_i + (1 : GoInt));
					break;
				};
			};
			if (_b._err != null) {
				_line = (_b._buf.__slice__(_b._r, _b._w) : Slice<GoUInt8>);
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
			var _i:GoInt = (_line.length) - (1 : GoInt);
			if (_i >= (0 : GoInt)) {
				_b._lastByte = (_line[_i] : GoInt);
				_b._lastRuneSize = (-1 : GoInt);
			};
		};
		return {_0: _line, _1: _err};
	}

	/**
		// Buffered returns the number of bytes that can be read from the current buffer.
	**/
	@:keep
	static public function buffered(_b:Ref<Reader>):GoInt {
		return _b._w - _b._r;
	}

	/**
		// UnreadRune unreads the last rune. If the most recent method called on
		// the Reader was not a ReadRune, UnreadRune returns an error. (In this
		// regard it is stricter than UnreadByte, which will unread the last byte
		// from any read operation.)
	**/
	@:keep
	static public function unreadRune(_b:Ref<Reader>):Error {
		if ((_b._lastRuneSize < (0:GoInt)) || (_b._r < _b._lastRuneSize)) {
			return errInvalidUnreadRune;
		};
		_b._r = _b._r - (_b._lastRuneSize);
		_b._lastByte = (-1 : GoInt);
		_b._lastRuneSize = (-1 : GoInt);
		return (null : Error);
	}

	/**
		// ReadRune reads a single UTF-8 encoded Unicode character and returns the
		// rune and its size in bytes. If the encoded rune is invalid, it consumes one byte
		// and returns unicode.ReplacementChar (U+FFFD) with a size of 1.
	**/
	@:keep
	static public function readRune(_b:Ref<Reader>):{var _0:GoRune; var _1:GoInt; var _2:Error;} {
		var _r:GoRune = (0 : GoInt32),
			_size:GoInt = (0 : GoInt),
			_err:Error = (null : Error);
		while (((((_b._r + (4 : GoInt)) > _b._w) && !stdgo.unicode.utf8.Utf8.fullRune((_b._buf.__slice__(_b._r, _b._w) : Slice<GoUInt8>)))
			&& (_b._err == null))
			&& ((_b._w - _b._r) < _b._buf.length)) {
			_b._fill();
		};
		_b._lastRuneSize = (-1 : GoInt);
		if (_b._r == (_b._w)) {
			return {_0: (0 : GoInt32), _1: (0 : GoInt), _2: _b._readErr()};
		};
		{
			final __tmp__0 = (_b._buf[_b._r] : GoRune);
			final __tmp__1 = (1 : GoInt);
			_r = __tmp__0;
			_size = __tmp__1;
		};
		if (_r >= (128 : GoInt32)) {
			{
				var __tmp__ = stdgo.unicode.utf8.Utf8.decodeRune((_b._buf.__slice__(_b._r, _b._w) : Slice<GoUInt8>));
				_r = __tmp__._0;
				_size = __tmp__._1;
			};
		};
		_b._r = _b._r + (_size);
		_b._lastByte = (_b._buf[_b._r - (1 : GoInt)] : GoInt);
		_b._lastRuneSize = _size;
		return {_0: _r, _1: _size, _2: (null : Error)};
	}

	/**
		// UnreadByte unreads the last byte. Only the most recently read byte can be unread.
		//
		// UnreadByte returns an error if the most recent method called on the
		// Reader was not a read operation. Notably, Peek, Discard, and WriteTo are not
		// considered read operations.
	**/
	@:keep
	static public function unreadByte(_b:Ref<Reader>):Error {
		if ((_b._lastByte < (0:GoInt)) || ((_b._r == (0 : GoInt)) && (_b._w > (0 : GoInt)))) {
			return errInvalidUnreadByte;
		};
		if (_b._r > (0 : GoInt)) {
			_b._r--;
		} else {
			_b._w = (1 : GoInt);
		};
		_b._buf[_b._r] = (_b._lastByte : GoByte);
		_b._lastByte = (-1 : GoInt);
		_b._lastRuneSize = (-1 : GoInt);
		return (null : Error);
	}

	/**
		// ReadByte reads and returns a single byte.
		// If no byte is available, returns an error.
	**/
	@:keep
	static public function readByte(_b:Ref<Reader>):{var _0:GoByte; var _1:Error;} {
		_b._lastRuneSize = (-1 : GoInt);
		while (_b._r == (_b._w)) {
			if (_b._err != null) {
				return {_0: (0 : GoUInt8), _1: _b._readErr()};
			};
			_b._fill();
		};
		var _c:GoUInt8 = _b._buf[_b._r];
		_b._r++;
		_b._lastByte = (_c : GoInt);
		return {_0: _c, _1: (null : Error)};
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
	static public function read(_b:Ref<Reader>, _p:Slice<GoByte>):{var _0:GoInt; var _1:Error;} {
		var _n:GoInt = (0 : GoInt), _err:Error = (null : Error);
		_n = (_p.length);
		if (_n == ((0 : GoInt))) {
			if (_b.buffered() > (0 : GoInt)) {
				return {_0: (0 : GoInt), _1: (null : Error)};
			};
			return {_0: (0 : GoInt), _1: _b._readErr()};
		};
		if (_b._r == (_b._w)) {
			if (_b._err != null) {
				return {_0: (0 : GoInt), _1: _b._readErr()};
			};
			if ((_p.length) >= (_b._buf.length)) {
				{
					var __tmp__ = _b._rd.read(_p);
					_n = __tmp__._0;
					_b._err = __tmp__._1;
				};
				if (_n < (0:GoInt)) {
					throw Go.toInterface(_errNegativeRead);
				};
				if (_n > (0 : GoInt)) {
					_b._lastByte = (_p[_n - (1 : GoInt)] : GoInt);
					_b._lastRuneSize = (-1 : GoInt);
				};
				return {_0: _n, _1: _b._readErr()};
			};
			_b._r = (0 : GoInt);
			_b._w = (0 : GoInt);
			{
				var __tmp__ = _b._rd.read(_b._buf);
				_n = __tmp__._0;
				_b._err = __tmp__._1;
			};
			if (_n < (0:GoInt)) {
				throw Go.toInterface(_errNegativeRead);
			};
			if (_n == ((0 : GoInt))) {
				return {_0: (0 : GoInt), _1: _b._readErr()};
			};
			_b._w = _b._w + (_n);
		};
		_n = Go.copySlice(_p, (_b._buf.__slice__(_b._r, _b._w) : Slice<GoUInt8>));
		_b._r = _b._r + (_n);
		_b._lastByte = (_b._buf[_b._r - (1 : GoInt)] : GoInt);
		_b._lastRuneSize = (-1 : GoInt);
		return {_0: _n, _1: (null : Error)};
	}

	/**
		// Discard skips the next n bytes, returning the number of bytes discarded.
		//
		// If Discard skips fewer than n bytes, it also returns an error.
		// If 0 <= n <= b.Buffered(), Discard is guaranteed to succeed without
		// reading from the underlying io.Reader.
	**/
	@:keep
	static public function discard(_b:Ref<Reader>, _n:GoInt):{var _0:GoInt; var _1:Error;} {
		var _discarded:GoInt = (0 : GoInt), _err:Error = (null : Error);
		if (_n < (0:GoInt)) {
			return {_0: (0 : GoInt), _1: errNegativeCount};
		};
		if (_n == ((0 : GoInt))) {
			return {_0: _discarded, _1: _err};
		};
		_b._lastByte = (-1 : GoInt);
		_b._lastRuneSize = (-1 : GoInt);
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
				return {_0: _n, _1: (null : Error)};
			};
			if (_b._err != null) {
				return {_0: _n - _remain, _1: _b._readErr()};
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
	static public function peek(_b:Ref<Reader>, _n:GoInt):{var _0:Slice<GoByte>; var _1:Error;} {
		if (_n < (0:GoInt)) {
			return {_0: (null : Slice<GoUInt8>), _1: errNegativeCount};
		};
		_b._lastByte = (-1 : GoInt);
		_b._lastRuneSize = (-1 : GoInt);
		while ((((_b._w - _b._r) < _n) && ((_b._w - _b._r) < _b._buf.length)) && (_b._err == null)) {
			_b._fill();
		};
		if (_n > (_b._buf.length)) {
			return {_0: (_b._buf.__slice__(_b._r, _b._w) : Slice<GoUInt8>), _1: errBufferFull};
		};
		var _err:Error = (null : Error);
		{
			var _avail:GoInt = _b._w - _b._r;
			if (_avail < _n) {
				_n = _avail;
				_err = _b._readErr();
				if (_err == null) {
					_err = errBufferFull;
				};
			};
		};
		return {_0: (_b._buf.__slice__(_b._r, _b._r + _n) : Slice<GoUInt8>), _1: _err};
	}

	@:keep
	static public function _readErr(_b:Ref<Reader>):Error {
		var _err:Error = _b._err;
		_b._err = (null : Error);
		return _err;
	}

	/**
		// fill reads a new chunk into the buffer.
	**/
	@:keep
	static public function _fill(_b:Ref<Reader>):Void {
		if (_b._r > (0 : GoInt)) {
			Go.copySlice(_b._buf, (_b._buf.__slice__(_b._r, _b._w) : Slice<GoUInt8>));
			_b._w = _b._w - (_b._r);
			_b._r = (0 : GoInt);
		};
		if (_b._w >= (_b._buf.length)) {
			throw Go.toInterface(Go.str("bufio: tried to fill full buffer"));
		};
		{
			var _i:GoInt = (100 : GoInt);
			Go.cfor(_i > (0 : GoInt), _i--, {
				var __tmp__ = _b._rd.read((_b._buf.__slice__(_b._w) : Slice<GoUInt8>)),
					_n:GoInt = __tmp__._0,
					_err:Error = __tmp__._1;
				if (_n < (0:GoInt)) {
					throw Go.toInterface(_errNegativeRead);
				};
				_b._w = _b._w + (_n);
				if (_err != null) {
					_b._err = _err;
					return;
				};
				if (_n > (0 : GoInt)) {
					return;
				};
			});
		};
		_b._err = stdgo.io.Io.errNoProgress;
	}

	@:keep
	static public function _reset(_b:Ref<Reader>, _buf:Slice<GoByte>, _r:stdgo.io.Io.Reader):Void {
		{
			var __tmp__ = ({
				_buf: _buf,
				_rd: _r,
				_lastByte: (-1 : GoInt),
				_lastRuneSize: (-1 : GoInt)
			} : Reader);
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
	**/
	@:keep
	static public function reset(_b:Ref<Reader>, _r:stdgo.io.Io.Reader):Void {
		if (_b._buf == null) {
			_b._buf = new Slice<GoUInt8>((4096 : GoInt).toBasic(), 0, ...[for (i in 0...(4096 : GoInt).toBasic()) (0 : GoUInt8)]);
		};
		_b._reset(_b._buf, _r);
	}

	/**
		// Size returns the size of the underlying buffer in bytes.
	**/
	@:keep
	static public function size(_b:Ref<Reader>):GoInt {
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
	public function readFrom(_r:stdgo.io.Io.Reader):{var _0:GoInt64; var _1:Error;}
		return __self__.value.readFrom(_r);

	/**
		// WriteString writes a string.
		// It returns the number of bytes written.
		// If the count is less than len(s), it also returns an error explaining
		// why the write is short.
	**/
	@:keep
	public function writeString(_s:GoString):{var _0:GoInt; var _1:Error;}
		return __self__.value.writeString(_s);

	/**
		// WriteRune writes a single Unicode code point, returning
		// the number of bytes written and any error.
	**/
	@:keep
	public function writeRune(_r:GoRune):{var _0:GoInt; var _1:Error;}
		return __self__.value.writeRune(_r);

	/**
		// WriteByte writes a single byte.
	**/
	@:keep
	public function writeByte(_c:GoByte):Error
		return __self__.value.writeByte(_c);

	/**
		// Write writes the contents of p into the buffer.
		// It returns the number of bytes written.
		// If nn < len(p), it also returns an error explaining
		// why the write is short.
	**/
	@:keep
	public function write(_p:Slice<GoByte>):{var _0:GoInt; var _1:Error;}
		return __self__.value.write(_p);

	/**
		// Buffered returns the number of bytes that have been written into the current buffer.
	**/
	@:keep
	public function buffered():GoInt
		return __self__.value.buffered();

	/**
		// AvailableBuffer returns an empty buffer with b.Available() capacity.
		// This buffer is intended to be appended to and
		// passed to an immediately succeeding Write call.
		// The buffer is only valid until the next write operation on b.
	**/
	@:keep
	public function availableBuffer():Slice<GoByte>
		return __self__.value.availableBuffer();

	/**
		// Available returns how many bytes are unused in the buffer.
	**/
	@:keep
	public function available():GoInt
		return __self__.value.available();

	/**
		// Flush writes any buffered data to the underlying io.Writer.
	**/
	@:keep
	public function flush():Error
		return __self__.value.flush();

	/**
		// Reset discards any unflushed buffered data, clears any error, and
		// resets b to write its output to w.
		// Calling Reset on the zero value of Writer initializes the internal buffer
		// to the default size.
	**/
	@:keep
	public function reset(_w:stdgo.io.Io.Writer):Void
		__self__.value.reset(_w);

	/**
		// Size returns the size of the underlying buffer in bytes.
	**/
	@:keep
	public function size():GoInt
		return __self__.value.size();

	public function new(__self__, __type__) {
		this.__self__ = __self__;
		this.__type__ = __type__;
	}

	public function __underlying__()
		return new AnyInterface((__type__.kind() == stdgo.reflect.Reflect.ptr
			&& !stdgo.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic),
			__type__);

	var __self__:Pointer<Writer>;
	var __type__:stdgo.reflect.Reflect.Type;
}

@:keep @:allow(stdgo.bufio.Bufio.Writer_asInterface) class Writer_static_extension {
	/**
		// ReadFrom implements io.ReaderFrom. If the underlying writer
		// supports the ReadFrom method, this calls the underlying ReadFrom.
		// If there is buffered data and an underlying ReadFrom, this fills
		// the buffer and writes it before calling ReadFrom.
	**/
	@:keep
	static public function readFrom(_b:Ref<Writer>, _r:stdgo.io.Io.Reader):{var _0:GoInt64; var _1:Error;} {
		var _n:GoInt64 = (0 : GoInt64), _err:Error = (null : Error);
		if (_b._err != null) {
			return {_0: ("0" : GoInt64), _1: _b._err};
		};
		var __tmp__ = try {
			{value: Go.typeAssert((Go.toInterface(_b._wr) : stdgo.io.Io.ReaderFrom)), ok: true};
		} catch (_) {
			{value: (null : stdgo.io.Io.ReaderFrom), ok: false};
		}, _readerFrom = __tmp__.value, _readerFromOK = __tmp__.ok;
		var _m:GoInt = (0 : GoInt);
		while (true) {
			if (_b.available() == ((0 : GoInt))) {
				{
					var _err1:Error = _b.flush();
					if (_err1 != null) {
						return {_0: _n, _1: _err1};
					};
				};
			};
			if (_readerFromOK && (_b.buffered() == (0 : GoInt))) {
				var __tmp__ = _readerFrom.readFrom(_r),
					_nn:GoInt64 = __tmp__._0,
					_err:Error = __tmp__._1;
				_b._err = _err;
				_n = _n + (_nn);
				return {_0: _n, _1: _err};
			};
			var _nr:GoInt = (0 : GoInt);
			while (_nr < (100:GoInt)) {
				{
					var __tmp__ = _r.read((_b._buf.__slice__(_b._n) : Slice<GoUInt8>));
					_m = __tmp__._0;
					_err = __tmp__._1;
				};
				if ((_m != (0 : GoInt)) || (_err != null)) {
					break;
				};
				_nr++;
			};
			if (_nr == ((100 : GoInt))) {
				return {_0: _n, _1: stdgo.io.Io.errNoProgress};
			};
			_b._n = _b._n + (_m);
			_n = _n + ((_m : GoInt64));
			if (_err != null) {
				break;
			};
		};
		if (Go.toInterface(_err) == (Go.toInterface(stdgo.io.Io.eof))) {
			if (_b.available() == ((0 : GoInt))) {
				_err = _b.flush();
			} else {
				_err = (null : Error);
			};
		};
		return {_0: _n, _1: _err};
	}

	/**
		// WriteString writes a string.
		// It returns the number of bytes written.
		// If the count is less than len(s), it also returns an error explaining
		// why the write is short.
	**/
	@:keep
	static public function writeString(_b:Ref<Writer>, _s:GoString):{var _0:GoInt; var _1:Error;} {
		var _sw:stdgo.io.Io.StringWriter = (null : stdgo.io.Io.StringWriter);
		var _tryStringWriter:Bool = true;
		var _nn:GoInt = (0 : GoInt);
		while ((_s.length > _b.available()) && (_b._err == null)) {
			var _n:GoInt = (0 : GoInt);
			if (((_b.buffered() == (0 : GoInt)) && (_sw == null)) && _tryStringWriter) {
				{
					var __tmp__ = try {
						{value: Go.typeAssert((Go.toInterface(_b._wr) : stdgo.io.Io.StringWriter)), ok: true};
					} catch (_) {
						{value: (null : stdgo.io.Io.StringWriter), ok: false};
					};
					_sw = __tmp__.value;
					_tryStringWriter = __tmp__.ok;
				};
			};
			if ((_b.buffered() == (0 : GoInt)) && _tryStringWriter) {
				{
					var __tmp__ = _sw.writeString(_s);
					_n = __tmp__._0;
					_b._err = __tmp__._1;
				};
			} else {
				_n = Go.copySlice((_b._buf.__slice__(_b._n) : Slice<GoUInt8>), _s);
				_b._n = _b._n + (_n);
				_b.flush();
			};
			_nn = _nn + (_n);
			_s = (_s.__slice__(_n) : GoString);
		};
		if (_b._err != null) {
			return {_0: _nn, _1: _b._err};
		};
		var _n:GoInt = Go.copySlice((_b._buf.__slice__(_b._n) : Slice<GoUInt8>), _s);
		_b._n = _b._n + (_n);
		_nn = _nn + (_n);
		return {_0: _nn, _1: (null : Error)};
	}

	/**
		// WriteRune writes a single Unicode code point, returning
		// the number of bytes written and any error.
	**/
	@:keep
	static public function writeRune(_b:Ref<Writer>, _r:GoRune):{var _0:GoInt; var _1:Error;} {
		var _size:GoInt = (0 : GoInt), _err:Error = (null : Error);
		if ((_r : GoUInt32) < ("128" : GoUInt32)) {
			_err = _b.writeByte((_r : GoByte));
			if (_err != null) {
				return {_0: (0 : GoInt), _1: _err};
			};
			return {_0: (1 : GoInt), _1: (null : Error)};
		};
		if (_b._err != null) {
			return {_0: (0 : GoInt), _1: _b._err};
		};
		var _n:GoInt = _b.available();
		if (_n < (4:GoInt)) {
			{
				_b.flush();
				if (_b._err != null) {
					return {_0: (0 : GoInt), _1: _b._err};
				};
			};
			_n = _b.available();
			if (_n < (4:GoInt)) {
				return _b.writeString((_r : GoString));
			};
		};
		_size = stdgo.unicode.utf8.Utf8.encodeRune((_b._buf.__slice__(_b._n) : Slice<GoUInt8>), _r);
		_b._n = _b._n + (_size);
		return {_0: _size, _1: (null : Error)};
	}

	/**
		// WriteByte writes a single byte.
	**/
	@:keep
	static public function writeByte(_b:Ref<Writer>, _c:GoByte):Error {
		if (_b._err != null) {
			return _b._err;
		};
		if ((_b.available() <= (0 : GoInt)) && (_b.flush() != null)) {
			return _b._err;
		};
		_b._buf[_b._n] = _c;
		_b._n++;
		return (null : Error);
	}

	/**
		// Write writes the contents of p into the buffer.
		// It returns the number of bytes written.
		// If nn < len(p), it also returns an error explaining
		// why the write is short.
	**/
	@:keep
	static public function write(_b:Ref<Writer>, _p:Slice<GoByte>):{var _0:GoInt; var _1:Error;} {
		var _nn:GoInt = (0 : GoInt), _err:Error = (null : Error);
		while ((_p.length > _b.available()) && (_b._err == null)) {
			var _n:GoInt = (0 : GoInt);
			if (_b.buffered() == ((0 : GoInt))) {
				{
					var __tmp__ = _b._wr.write(_p);
					_n = __tmp__._0;
					_b._err = __tmp__._1;
				};
			} else {
				_n = Go.copySlice((_b._buf.__slice__(_b._n) : Slice<GoUInt8>), _p);
				_b._n = _b._n + (_n);
				_b.flush();
			};
			_nn = _nn + (_n);
			_p = (_p.__slice__(_n) : Slice<GoUInt8>);
		};
		if (_b._err != null) {
			return {_0: _nn, _1: _b._err};
		};
		var _n:GoInt = Go.copySlice((_b._buf.__slice__(_b._n) : Slice<GoUInt8>), _p);
		_b._n = _b._n + (_n);
		_nn = _nn + (_n);
		return {_0: _nn, _1: (null : Error)};
	}

	/**
		// Buffered returns the number of bytes that have been written into the current buffer.
	**/
	@:keep
	static public function buffered(_b:Ref<Writer>):GoInt {
		return _b._n;
	}

	/**
		// AvailableBuffer returns an empty buffer with b.Available() capacity.
		// This buffer is intended to be appended to and
		// passed to an immediately succeeding Write call.
		// The buffer is only valid until the next write operation on b.
	**/
	@:keep
	static public function availableBuffer(_b:Ref<Writer>):Slice<GoByte> {
		return ((_b._buf.__slice__(_b._n) : Slice<GoUInt8>).__slice__(0, (0 : GoInt)) : Slice<GoUInt8>);
	}

	/**
		// Available returns how many bytes are unused in the buffer.
	**/
	@:keep
	static public function available(_b:Ref<Writer>):GoInt {
		return (_b._buf.length) - _b._n;
	}

	/**
		// Flush writes any buffered data to the underlying io.Writer.
	**/
	@:keep
	static public function flush(_b:Ref<Writer>):Error {
		if (_b._err != null) {
			return _b._err;
		};
		if (_b._n == ((0 : GoInt))) {
			return (null : Error);
		};
		var __tmp__ = _b._wr.write((_b._buf.__slice__((0 : GoInt), _b._n) : Slice<GoUInt8>)),
			_n:GoInt = __tmp__._0,
			_err:Error = __tmp__._1;
		if ((_n < _b._n) && (_err == null)) {
			_err = stdgo.io.Io.errShortWrite;
		};
		if (_err != null) {
			if ((_n > (0 : GoInt)) && (_n < _b._n)) {
				Go.copySlice((_b._buf.__slice__((0 : GoInt), _b._n - _n) : Slice<GoUInt8>), (_b._buf.__slice__(_n, _b._n) : Slice<GoUInt8>));
			};
			_b._n = _b._n - (_n);
			_b._err = _err;
			return _err;
		};
		_b._n = (0 : GoInt);
		return (null : Error);
	}

	/**
		// Reset discards any unflushed buffered data, clears any error, and
		// resets b to write its output to w.
		// Calling Reset on the zero value of Writer initializes the internal buffer
		// to the default size.
	**/
	@:keep
	static public function reset(_b:Ref<Writer>, _w:stdgo.io.Io.Writer):Void {
		if (_b._buf == null) {
			_b._buf = new Slice<GoUInt8>((4096 : GoInt).toBasic(), 0, ...[for (i in 0...(4096 : GoInt).toBasic()) (0 : GoUInt8)]);
		};
		_b._err = (null : Error);
		_b._n = (0 : GoInt);
		_b._wr = _w;
	}

	/**
		// Size returns the size of the underlying buffer in bytes.
	**/
	@:keep
	static public function size(_b:Ref<Writer>):GoInt {
		return (_b._buf.length);
	}
}

class ReadWriter_asInterface {
	@:embedded
	public function _writeBuf(_w:stdgo.io.Io.Writer):{var _0:GoInt64; var _1:Error;}
		return __self__.value._writeBuf(_w);

	@:embedded
	public function _reset(_buf:Slice<GoUInt8>, _r:stdgo.io.Io.Reader):Void
		__self__.value._reset(_buf, _r);

	@:embedded
	public function _readErr():Error
		return __self__.value._readErr();

	@:embedded
	public function _fill():Void
		__self__.value._fill();

	@:embedded
	public function _collectFragments(_delim:GoUInt8):{
		var _0:Slice<Slice<GoUInt8>>;
		var _1:Slice<GoUInt8>;
		var _2:GoInt;
		var _3:Error;
	}
		return __self__.value._collectFragments(_delim);

	@:embedded
	public function writeTo(_w:stdgo.io.Io.Writer):{var _0:GoInt64; var _1:Error;}
		return __self__.value.writeTo(_w);

	@:embedded
	public function writeString(_text:GoString):{var _0:GoInt; var _1:Error;}
		return __self__.value.writeString(_text);

	@:embedded
	public function writeRune(_r:GoInt32):{var _0:GoInt; var _1:Error;}
		return __self__.value.writeRune(_r);

	@:embedded
	public function writeByte(_delim:GoUInt8):Error
		return __self__.value.writeByte(_delim);

	@:embedded
	public function write(_p:Slice<GoUInt8>):{var _0:GoInt; var _1:Error;}
		return __self__.value.write(_p);

	@:embedded
	public function unreadRune():Error
		return __self__.value.unreadRune();

	@:embedded
	public function unreadByte():Error
		return __self__.value.unreadByte();

	@:embedded
	public function readString(_delim:GoUInt8):{var _0:GoString; var _1:Error;}
		return __self__.value.readString(_delim);

	@:embedded
	public function readSlice(_delim:GoUInt8):{var _0:Slice<GoUInt8>; var _1:Error;}
		return __self__.value.readSlice(_delim);

	@:embedded
	public function readRune():{var _0:GoInt32; var _1:GoInt; var _2:Error;}
		return __self__.value.readRune();

	@:embedded
	public function readLine():{var _0:Slice<GoUInt8>; var _1:Bool; var _2:Error;}
		return __self__.value.readLine();

	@:embedded
	public function readFrom(_r:stdgo.io.Io.Reader):{var _0:GoInt64; var _1:Error;}
		return __self__.value.readFrom(_r);

	@:embedded
	public function readBytes(_delim:GoUInt8):{var _0:Slice<GoUInt8>; var _1:Error;}
		return __self__.value.readBytes(_delim);

	@:embedded
	public function readByte():{var _0:GoUInt8; var _1:Error;}
		return __self__.value.readByte();

	@:embedded
	public function read(_p:Slice<GoUInt8>):{var _0:GoInt; var _1:Error;}
		return __self__.value.read(_p);

	@:embedded
	public function peek(__0:GoInt):{var _0:Slice<GoUInt8>; var _1:Error;}
		return __self__.value.peek(__0);

	@:embedded
	public function flush():Error
		return __self__.value.flush();

	@:embedded
	public function discard(__0:GoInt):{var _0:GoInt; var _1:Error;}
		return __self__.value.discard(__0);

	@:embedded
	public function availableBuffer():Slice<GoUInt8>
		return __self__.value.availableBuffer();

	@:embedded
	public function available():GoInt
		return __self__.value.available();

	public function new(__self__, __type__) {
		this.__self__ = __self__;
		this.__type__ = __type__;
	}

	public function __underlying__()
		return new AnyInterface((__type__.kind() == stdgo.reflect.Reflect.ptr
			&& !stdgo.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic),
			__type__);

	var __self__:Pointer<ReadWriter>;
	var __type__:stdgo.reflect.Reflect.Type;
}

@:keep @:allow(stdgo.bufio.Bufio.ReadWriter_asInterface) class ReadWriter_static_extension {
	@:embedded
	public static function _writeBuf(__self__:ReadWriter, _w:stdgo.io.Io.Writer):{var _0:GoInt64; var _1:Error;}
		return __self__._writeBuf(_w);

	@:embedded
	public static function _reset(__self__:ReadWriter, _buf:Slice<GoUInt8>, _r:stdgo.io.Io.Reader)
		__self__._reset(_buf, _r);

	@:embedded
	public static function _readErr(__self__:ReadWriter):Error
		return __self__._readErr();

	@:embedded
	public static function _fill(__self__:ReadWriter)
		__self__._fill();

	@:embedded
	public static function _collectFragments(__self__:ReadWriter, _delim:GoUInt8):{
		var _0:Slice<Slice<GoUInt8>>;
		var _1:Slice<GoUInt8>;
		var _2:GoInt;
		var _3:Error;
	}
		return __self__._collectFragments(_delim);

	@:embedded
	public static function writeTo(__self__:ReadWriter, _w:stdgo.io.Io.Writer):{var _0:GoInt64; var _1:Error;}
		return __self__.writeTo(_w);

	@:embedded
	public static function writeString(__self__:ReadWriter, _text:GoString):{var _0:GoInt; var _1:Error;}
		return __self__.writeString(_text);

	@:embedded
	public static function writeRune(__self__:ReadWriter, _r:GoInt32):{var _0:GoInt; var _1:Error;}
		return __self__.writeRune(_r);

	@:embedded
	public static function writeByte(__self__:ReadWriter, _delim:GoUInt8):Error
		return __self__.writeByte(_delim);

	@:embedded
	public static function write(__self__:ReadWriter, _p:Slice<GoUInt8>):{var _0:GoInt; var _1:Error;}
		return __self__.write(_p);

	@:embedded
	public static function unreadRune(__self__:ReadWriter):Error
		return __self__.unreadRune();

	@:embedded
	public static function unreadByte(__self__:ReadWriter):Error
		return __self__.unreadByte();

	@:embedded
	public static function readString(__self__:ReadWriter, _delim:GoUInt8):{var _0:GoString; var _1:Error;}
		return __self__.readString(_delim);

	@:embedded
	public static function readSlice(__self__:ReadWriter, _delim:GoUInt8):{var _0:Slice<GoUInt8>; var _1:Error;}
		return __self__.readSlice(_delim);

	@:embedded
	public static function readRune(__self__:ReadWriter):{var _0:GoInt32; var _1:GoInt; var _2:Error;}
		return __self__.readRune();

	@:embedded
	public static function readLine(__self__:ReadWriter):{var _0:Slice<GoUInt8>; var _1:Bool; var _2:Error;}
		return __self__.readLine();

	@:embedded
	public static function readFrom(__self__:ReadWriter, _r:stdgo.io.Io.Reader):{var _0:GoInt64; var _1:Error;}
		return __self__.readFrom(_r);

	@:embedded
	public static function readBytes(__self__:ReadWriter, _delim:GoUInt8):{var _0:Slice<GoUInt8>; var _1:Error;}
		return __self__.readBytes(_delim);

	@:embedded
	public static function readByte(__self__:ReadWriter):{var _0:GoUInt8; var _1:Error;}
		return __self__.readByte();

	@:embedded
	public static function read(__self__:ReadWriter, _p:Slice<GoUInt8>):{var _0:GoInt; var _1:Error;}
		return __self__.read(_p);

	@:embedded
	public static function peek(__self__:ReadWriter, __0:GoInt):{var _0:Slice<GoUInt8>; var _1:Error;}
		return __self__.peek(__0);

	@:embedded
	public static function flush(__self__:ReadWriter):Error
		return __self__.flush();

	@:embedded
	public static function discard(__self__:ReadWriter, __0:GoInt):{var _0:GoInt; var _1:Error;}
		return __self__.discard(__0);

	@:embedded
	public static function availableBuffer(__self__:ReadWriter):Slice<GoUInt8>
		return __self__.availableBuffer();

	@:embedded
	public static function available(__self__:ReadWriter):GoInt
		return __self__.available();
}

class Scanner_asInterface {
	/**
		// Split sets the split function for the Scanner.
		// The default split function is ScanLines.
		//
		// Split panics if it is called after scanning has started.
	**/
	@:keep
	public function split(_split:SplitFunc):Void
		__self__.value.split(_split);

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
	public function buffer(_buf:Slice<GoByte>, _max:GoInt):Void
		__self__.value.buffer(_buf, _max);

	/**
		// setErr records the first error encountered.
	**/
	@:keep
	public function _setErr(_err:Error):Void
		__self__.value._setErr(_err);

	/**
		// advance consumes n bytes of the buffer. It reports whether the advance was legal.
	**/
	@:keep
	public function _advance(_n:GoInt):Bool
		return __self__.value._advance(_n);

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
	public function scan():Bool
		return __self__.value.scan();

	/**
		// Text returns the most recent token generated by a call to Scan
		// as a newly allocated string holding its bytes.
	**/
	@:keep
	public function text():GoString
		return __self__.value.text();

	/**
		// Bytes returns the most recent token generated by a call to Scan.
		// The underlying array may point to data that will be overwritten
		// by a subsequent call to Scan. It does no allocation.
	**/
	@:keep
	public function bytes():Slice<GoByte>
		return __self__.value.bytes();

	/**
		// Err returns the first non-EOF error that was encountered by the Scanner.
	**/
	@:keep
	public function err():Error
		return __self__.value.err();

	/**
		// ErrOrEOF is like Err, but returns EOF. Used to test a corner case.
	**/
	@:keep
	public function errOrEOF():Error
		return __self__.value.errOrEOF();

	@:keep
	public function maxTokenSize(_n:GoInt):Void
		__self__.value.maxTokenSize(_n);

	public function new(__self__, __type__) {
		this.__self__ = __self__;
		this.__type__ = __type__;
	}

	public function __underlying__()
		return new AnyInterface((__type__.kind() == stdgo.reflect.Reflect.ptr
			&& !stdgo.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic),
			__type__);

	var __self__:Pointer<Scanner>;
	var __type__:stdgo.reflect.Reflect.Type;
}

@:keep @:allow(stdgo.bufio.Bufio.Scanner_asInterface) class Scanner_static_extension {
	/**
		// Split sets the split function for the Scanner.
		// The default split function is ScanLines.
		//
		// Split panics if it is called after scanning has started.
	**/
	@:keep
	static public function split(_s:Ref<Scanner>, _split:SplitFunc):Void {
		if (_s._scanCalled) {
			throw Go.toInterface(Go.str("Split called after Scan"));
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
	static public function buffer(_s:Ref<Scanner>, _buf:Slice<GoByte>, _max:GoInt):Void {
		if (_s._scanCalled) {
			throw Go.toInterface(Go.str("Buffer called after Scan"));
		};
		_s._buf = (_buf.__slice__((0 : GoInt), _buf.capacity) : Slice<GoUInt8>);
		_s._maxTokenSize = _max;
	}

	/**
		// setErr records the first error encountered.
	**/
	@:keep
	static public function _setErr(_s:Ref<Scanner>, _err:Error):Void {
		if ((_s._err == null) || (Go.toInterface(_s._err) == Go.toInterface(stdgo.io.Io.eof))) {
			_s._err = _err;
		};
	}

	/**
		// advance consumes n bytes of the buffer. It reports whether the advance was legal.
	**/
	@:keep
	static public function _advance(_s:Ref<Scanner>, _n:GoInt):Bool {
		if (_n < (0:GoInt)) {
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
	static public function scan(_s:Ref<Scanner>):Bool {
		if (_s._done) {
			return false;
		};
		_s._scanCalled = true;
		while (true) {
			if ((_s._end > _s._start) || (_s._err != null)) {
				var __tmp__ = _s._split((_s._buf.__slice__(_s._start, _s._end) : Slice<GoUInt8>), _s._err != null),
					_advance:GoInt = __tmp__._0,
					_token:Slice<GoUInt8> = __tmp__._1,
					_err:Error = __tmp__._2;
				if (_err != null) {
					if (Go.toInterface(_err) == (Go.toInterface(errFinalToken))) {
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
					if ((_s._err == null) || (_advance > (0 : GoInt))) {
						_s._empties = (0 : GoInt);
					} else {
						_s._empties++;
						if (_s._empties > (100 : GoInt)) {
							throw Go.toInterface(Go.str("bufio.Scan: too many empty tokens without progressing"));
						};
					};
					return true;
				};
			};
			if (_s._err != null) {
				_s._start = (0 : GoInt);
				_s._end = (0 : GoInt);
				return false;
			};
			if ((_s._start > (0 : GoInt)) && ((_s._end == (_s._buf.length)) || (_s._start > (_s._buf.length / (2 : GoInt))))) {
				Go.copySlice(_s._buf, (_s._buf.__slice__(_s._start, _s._end) : Slice<GoUInt8>));
				_s._end = _s._end - (_s._start);
				_s._start = (0 : GoInt);
			};
			if (_s._end == ((_s._buf.length))) {
				{};
				if ((_s._buf.length >= _s._maxTokenSize) || (_s._buf.length > (1073741823 : GoInt))) {
					_s._setErr(errTooLong);
					return false;
				};
				var _newSize:GoInt = (_s._buf.length) * (2 : GoInt);
				if (_newSize == ((0 : GoInt))) {
					_newSize = (4096 : GoInt);
				};
				if (_newSize > _s._maxTokenSize) {
					_newSize = _s._maxTokenSize;
				};
				var _newBuf = new Slice<GoUInt8>((_newSize : GoInt).toBasic(), 0, ...[for (i in 0...(_newSize : GoInt).toBasic()) (0 : GoUInt8)]);
				Go.copySlice(_newBuf, (_s._buf.__slice__(_s._start, _s._end) : Slice<GoUInt8>));
				_s._buf = _newBuf;
				_s._end = _s._end - (_s._start);
				_s._start = (0 : GoInt);
			};
			{
				var _loop:GoInt = (0 : GoInt);
				while (true) {
					var __tmp__ = _s._r.read((_s._buf.__slice__(_s._end, (_s._buf.length)) : Slice<GoUInt8>)),
						_n:GoInt = __tmp__._0,
						_err:Error = __tmp__._1;
					if ((_n < (0:GoInt)) || ((_s._buf.length - _s._end) < _n)) {
						_s._setErr(errBadReadCount);
						break;
					};
					_s._end = _s._end + (_n);
					if (_err != null) {
						_s._setErr(_err);
						break;
					};
					if (_n > (0 : GoInt)) {
						_s._empties = (0 : GoInt);
						break;
					};
					_loop++;
					if (_loop > (100 : GoInt)) {
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
	static public function text(_s:Ref<Scanner>):GoString {
		return (_s._token : GoString);
	}

	/**
		// Bytes returns the most recent token generated by a call to Scan.
		// The underlying array may point to data that will be overwritten
		// by a subsequent call to Scan. It does no allocation.
	**/
	@:keep
	static public function bytes(_s:Ref<Scanner>):Slice<GoByte> {
		return _s._token;
	}

	/**
		// Err returns the first non-EOF error that was encountered by the Scanner.
	**/
	@:keep
	static public function err(_s:Ref<Scanner>):Error {
		if (Go.toInterface(_s._err) == (Go.toInterface(stdgo.io.Io.eof))) {
			return (null : Error);
		};
		return _s._err;
	}

	/**
		// ErrOrEOF is like Err, but returns EOF. Used to test a corner case.
	**/
	@:keep
	static public function errOrEOF(_s:Ref<Scanner>):Error {
		return _s._err;
	}

	@:keep
	static public function maxTokenSize(_s:Ref<Scanner>, _n:GoInt):Void {
		if ((_n < (4:GoInt)) || (_n > (1000000000 : GoInt))) {
			throw Go.toInterface(Go.str("bad max token size"));
		};
		if (_n < (_s._buf.length)) {
			_s._buf = new Slice<GoUInt8>((_n : GoInt).toBasic(), 0, ...[for (i in 0...(_n : GoInt).toBasic()) (0 : GoUInt8)]);
		};
		_s._maxTokenSize = _n;
	}
}
