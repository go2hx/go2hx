package stdgo.bufio_test;

import stdgo.bufio.Bufio;
import stdgo.bufio.Bufio;
import stdgo.StdGoTypes;
import stdgo.Error;
import stdgo.Go;
import stdgo.GoString;
import stdgo.Pointer;
import stdgo.Slice;
import stdgo.GoArray;
import stdgo.GoMap;
import stdgo.Chan;

private var _readMakers:Slice<stdgo.bufio_test.Bufio_test.T_readMaker> = (new Slice<stdgo.bufio_test.Bufio_test.T_readMaker>(0, 0,
	(new stdgo.bufio_test.Bufio_test.T_readMaker(Go.str("full"),
		function(_r:stdgo.io.Io.Reader):stdgo.io.Io.Reader {
			return _r;
		}) : stdgo.bufio_test.Bufio_test.T_readMaker),
	(new stdgo.bufio_test.Bufio_test.T_readMaker(Go.str("byte"), stdgo.testing.iotest.Iotest.oneByteReader) : stdgo.bufio_test.Bufio_test.T_readMaker),
	(new stdgo.bufio_test.Bufio_test.T_readMaker(Go.str("half"), stdgo.testing.iotest.Iotest.halfReader) : stdgo.bufio_test.Bufio_test.T_readMaker),
	(new stdgo.bufio_test.Bufio_test.T_readMaker(Go.str("data+err"), stdgo.testing.iotest.Iotest.dataErrReader) : stdgo.bufio_test.Bufio_test.T_readMaker),
	(new stdgo.bufio_test.Bufio_test.T_readMaker(Go.str("timeout"),
		stdgo.testing.iotest.Iotest.timeoutReader) : stdgo.bufio_test.Bufio_test.T_readMaker)) : Slice<stdgo.bufio_test.Bufio_test.T_readMaker>);

private var _bufreaders:Slice<stdgo.bufio_test.Bufio_test.T_bufReader> = (new Slice<stdgo.bufio_test.Bufio_test.T_bufReader>(0, 0,
	(new stdgo.bufio_test.Bufio_test.T_bufReader(Go.str("1"),
		function(_b:Ref<Reader>):GoString {
			return _reads(_b, (1 : GoInt));
		}) : stdgo.bufio_test.Bufio_test.T_bufReader),
	(new stdgo.bufio_test.Bufio_test.T_bufReader(Go.str("2"),
		function(_b:Ref<Reader>):GoString {
			return _reads(_b, (2 : GoInt));
		}) : stdgo.bufio_test.Bufio_test.T_bufReader),
	(new stdgo.bufio_test.Bufio_test.T_bufReader(Go.str("3"),
		function(_b:Ref<Reader>):GoString {
			return _reads(_b, (3 : GoInt));
		}) : stdgo.bufio_test.Bufio_test.T_bufReader),
	(new stdgo.bufio_test.Bufio_test.T_bufReader(Go.str("4"),
		function(_b:Ref<Reader>):GoString {
			return _reads(_b, (4 : GoInt));
		}) : stdgo.bufio_test.Bufio_test.T_bufReader),
	(new stdgo.bufio_test.Bufio_test.T_bufReader(Go.str("5"),
		function(_b:Ref<Reader>):GoString {
			return _reads(_b, (5 : GoInt));
		}) : stdgo.bufio_test.Bufio_test.T_bufReader),
	(new stdgo.bufio_test.Bufio_test.T_bufReader(Go.str("7"),
		function(_b:Ref<Reader>):GoString {
			return _reads(_b, (7 : GoInt));
		}) : stdgo.bufio_test.Bufio_test.T_bufReader),
	(new stdgo.bufio_test.Bufio_test.T_bufReader(Go.str("bytes"), _readBytes) : stdgo.bufio_test.Bufio_test.T_bufReader),
	(new stdgo.bufio_test.Bufio_test.T_bufReader(Go.str("lines"),
		_readLines) : stdgo.bufio_test.Bufio_test.T_bufReader)) : Slice<stdgo.bufio_test.Bufio_test.T_bufReader>);

private var _bufsizes:Slice<GoInt> = (new Slice<GoInt>(0, 0, (0 : GoInt), (16 : GoInt), (23 : GoInt), (32 : GoInt), (46 : GoInt), (64 : GoInt), (93 : GoInt),
	(128 : GoInt), (1024 : GoInt), (4096 : GoInt)) : Slice<GoInt>);

private var _segmentList:Slice<Slice<GoString>> = (new Slice<Slice<GoString>>(0, 0, (new Slice<GoString>(0, 0) : Slice<GoString>),
	(new Slice<GoString>(0, 0, Go.str()) : Slice<GoString>), (new Slice<GoString>(0, 0, Go.str("日"), Go.str("本語")) : Slice<GoString>),
	(new Slice<GoString>(0, 0, Go.str("日"), Go.str("本"), Go.str("語")) : Slice<GoString>),
	(new Slice<GoString>(0, 0, Go.str("日"), Go.str("本"), Go.str("語")) : Slice<GoString>),
	(new Slice<GoString>(0, 0, Go.str(230), Go.str(151, 165, 230), Go.str(156, 172, "語")) : Slice<GoString>),
	(new Slice<GoString>(0, 0, Go.str("Hello"), Go.str(", "), Go.str("World"), Go.str("!")) : Slice<GoString>),
	(new Slice<GoString>(0, 0, Go.str("Hello"), Go.str(", "), Go.str(), Go.str("World"), Go.str("!")) : Slice<GoString>)) : Slice<Slice<GoString>>);

private var _errorWriterTests:Slice<stdgo.bufio_test.Bufio_test.T_errorWriterTest> = (new Slice<stdgo.bufio_test.Bufio_test.T_errorWriterTest>(0, 0,
	(new stdgo.bufio_test.Bufio_test.T_errorWriterTest((0 : GoInt), (1 : GoInt), (null : Error),
		stdgo.io.Io.errShortWrite) : stdgo.bufio_test.Bufio_test.T_errorWriterTest),
	(new stdgo.bufio_test.Bufio_test.T_errorWriterTest((1 : GoInt), (2 : GoInt), (null : Error),
		stdgo.io.Io.errShortWrite) : stdgo.bufio_test.Bufio_test.T_errorWriterTest),
	(new stdgo.bufio_test.Bufio_test.T_errorWriterTest((1 : GoInt), (1 : GoInt), (null : Error),
		(null : Error)) : stdgo.bufio_test.Bufio_test.T_errorWriterTest),
	(new stdgo.bufio_test.Bufio_test.T_errorWriterTest((0 : GoInt), (1 : GoInt), stdgo.io.Io.errClosedPipe,
		stdgo.io.Io.errClosedPipe) : stdgo.bufio_test.Bufio_test.T_errorWriterTest),
	(new stdgo.bufio_test.Bufio_test.T_errorWriterTest((1 : GoInt), (2 : GoInt), stdgo.io.Io.errClosedPipe,
		stdgo.io.Io.errClosedPipe) : stdgo.bufio_test.Bufio_test.T_errorWriterTest),
	(new stdgo.bufio_test.Bufio_test.T_errorWriterTest((1 : GoInt), (1 : GoInt), stdgo.io.Io.errClosedPipe,
		stdgo.io.Io.errClosedPipe) : stdgo.bufio_test.Bufio_test.T_errorWriterTest)) : Slice<stdgo.bufio_test.Bufio_test.T_errorWriterTest>);

private var _testOutput:Slice<GoUInt8> = (Go.str("0123456789abcdefghijklmnopqrstuvwxy") : Slice<GoByte>);
private var _testInput:Slice<GoUInt8> = (Go.str("012\n345\n678\n9ab\ncde\nfgh\nijk\nlmn\nopq\nrst\nuvw\nxy") : Slice<GoByte>);
private var _testInputrn:Slice<GoUInt8> = (Go.str("012\r\n345\r\n678\r\n9ab\r\ncde\r\nfgh\r\nijk\r\nlmn\r\nopq\r\nrst\r\nuvw\r\nxy\r\n\n\r\n") : Slice<GoByte>);

private var _readLineNewlinesTests:Slice<T__struct_0> = (new Slice<T__struct_0>(0, 0,
	({_input: Go.str("012345678901234\r\n012345678901234\r\n"), _expect: (new Slice<stdgo.bufio_test.Bufio_test.T_readLineResult>(0, 0,
		(new stdgo.bufio_test.Bufio_test.T_readLineResult((Go.str("012345678901234") : Slice<GoByte>), true,
			(null : Error)) : stdgo.bufio_test.Bufio_test.T_readLineResult),
		(new stdgo.bufio_test.Bufio_test.T_readLineResult((null : Slice<GoUInt8>), false, (null : Error)) : stdgo.bufio_test.Bufio_test.T_readLineResult),
		(new stdgo.bufio_test.Bufio_test.T_readLineResult((Go.str("012345678901234") : Slice<GoByte>), true,
			(null : Error)) : stdgo.bufio_test.Bufio_test.T_readLineResult),
		(new stdgo.bufio_test.Bufio_test.T_readLineResult((null : Slice<GoUInt8>), false, (null : Error)) : stdgo.bufio_test.Bufio_test.T_readLineResult),
		(new stdgo.bufio_test.Bufio_test.T_readLineResult((null : Slice<GoUInt8>), false,
			stdgo.io.Io.eof) : stdgo.bufio_test.Bufio_test.T_readLineResult)) : Slice<stdgo.bufio_test.Bufio_test.T_readLineResult>)} : T__struct_0),
	({_input: Go.str("0123456789012345\r012345678901234\r"), _expect: (new Slice<stdgo.bufio_test.Bufio_test.T_readLineResult>(0, 0,
		(new stdgo.bufio_test.Bufio_test.T_readLineResult((Go.str("0123456789012345") : Slice<GoByte>), true,
			(null : Error)) : stdgo.bufio_test.Bufio_test.T_readLineResult),
		(new stdgo.bufio_test.Bufio_test.T_readLineResult((Go.str("\r012345678901234") : Slice<GoByte>), true,
			(null : Error)) : stdgo.bufio_test.Bufio_test.T_readLineResult),
		(new stdgo.bufio_test.Bufio_test.T_readLineResult((Go.str("\r") : Slice<GoByte>), false,
			(null : Error)) : stdgo.bufio_test.Bufio_test.T_readLineResult),
		(new stdgo.bufio_test.Bufio_test.T_readLineResult((null : Slice<GoUInt8>), false,
			stdgo.io.Io.eof) : stdgo.bufio_test.Bufio_test.T_readLineResult)) : Slice<stdgo.bufio_test.Bufio_test.T_readLineResult>)} : T__struct_0)) : Slice<T__struct_0>);

private var _errorWriterToTests:Slice<stdgo.bufio_test.Bufio_test.T_errorWriterToTest> = (new Slice<stdgo.bufio_test.Bufio_test.T_errorWriterToTest>(0, 0,
	(new stdgo.bufio_test.Bufio_test.T_errorWriterToTest((1 : GoInt), (0 : GoInt), (null : Error), stdgo.io.Io.errClosedPipe,
		stdgo.io.Io.errClosedPipe) : stdgo.bufio_test.Bufio_test.T_errorWriterToTest),
	(new stdgo.bufio_test.Bufio_test.T_errorWriterToTest((0 : GoInt), (1 : GoInt), stdgo.io.Io.errClosedPipe, (null : Error),
		stdgo.io.Io.errClosedPipe) : stdgo.bufio_test.Bufio_test.T_errorWriterToTest),
	(new stdgo.bufio_test.Bufio_test.T_errorWriterToTest((0 : GoInt), (0 : GoInt), stdgo.io.Io.errUnexpectedEOF, stdgo.io.Io.errClosedPipe,
		stdgo.io.Io.errClosedPipe) : stdgo.bufio_test.Bufio_test.T_errorWriterToTest),
	(new stdgo.bufio_test.Bufio_test.T_errorWriterToTest((0 : GoInt), (1 : GoInt), stdgo.io.Io.eof, (null : Error),
		(null : Error)) : stdgo.bufio_test.Bufio_test.T_errorWriterToTest)) : Slice<stdgo.bufio_test.Bufio_test.T_errorWriterToTest>);

private var _errorReaderFromTests:Slice<stdgo.bufio_test.Bufio_test.T_errorReaderFromTest> = (new Slice<stdgo.bufio_test.Bufio_test.T_errorReaderFromTest>(0,
	0,
	(new stdgo.bufio_test.Bufio_test.T_errorReaderFromTest((0 : GoInt), (1 : GoInt), stdgo.io.Io.eof, (null : Error),
		(null : Error)) : stdgo.bufio_test.Bufio_test.T_errorReaderFromTest),
	(new stdgo.bufio_test.Bufio_test.T_errorReaderFromTest((1 : GoInt), (1 : GoInt), stdgo.io.Io.eof, (null : Error),
		(null : Error)) : stdgo.bufio_test.Bufio_test.T_errorReaderFromTest),
	(new stdgo.bufio_test.Bufio_test.T_errorReaderFromTest((0 : GoInt), (1 : GoInt), stdgo.io.Io.errClosedPipe, (null : Error),
		stdgo.io.Io.errClosedPipe) : stdgo.bufio_test.Bufio_test.T_errorReaderFromTest),
	(new stdgo.bufio_test.Bufio_test.T_errorReaderFromTest((0 : GoInt), (0 : GoInt), stdgo.io.Io.errClosedPipe, stdgo.io.Io.errShortWrite,
		stdgo.io.Io.errClosedPipe) : stdgo.bufio_test.Bufio_test.T_errorReaderFromTest),
	(new stdgo.bufio_test.Bufio_test.T_errorReaderFromTest((1 : GoInt), (0 : GoInt), (null : Error), stdgo.io.Io.errShortWrite,
		stdgo.io.Io.errShortWrite) : stdgo.bufio_test.Bufio_test.T_errorReaderFromTest)) : Slice<stdgo.bufio_test.Bufio_test.T_errorReaderFromTest>);

private var _errFake:Error = stdgo.errors.Errors.new_(Go.str("fake error"));

private var _scanTests:Slice<GoString> = (new Slice<GoString>(0, 0, Go.str(), Go.str("a"), Go.str("¼"), Go.str("☹"), Go.str(129), Go.str("�"),
	Go.str("abcdefgh"), Go.str("abc def\n\t\tgh    "), Go.str("abc¼☹", 129, "�日本語", 130, "abc")) : Slice<GoString>);

private var _wordScanTests:Slice<GoString> = (new Slice<GoString>(0, 0, Go.str(), Go.str(" "), Go.str("\n"), Go.str("a"), Go.str(" a "), Go.str("abc def"),
	Go.str(" abc def "), Go.str(" abc\tdef\nghi\rjkl\x0Cmno\x0Bpqr\u0085stu\u00a0\n")) : Slice<GoString>);

private var _testError:Error = stdgo.errors.Errors.new_(Go.str("testError"));
private final _minReadBufferSize:GoUInt64 = ("16" : GoUInt64);

/**
	// Much smaller for more efficient testing.
**/
private final _smallMaxTokenSize:GoUInt64 = ("256" : GoUInt64);

/**
	// Reads from a reader and rot13s the result.
**/
@:structInit @:using(stdgo.bufio_test.Bufio_test.T_rot13Reader_static_extension) private class T_rot13Reader {
	public var _r:stdgo.io.Io.Reader = (null : stdgo.io.Io.Reader);

	public function new(?_r:stdgo.io.Io.Reader) {
		if (_r != null)
			this._r = _r;
	}

	public function __underlying__()
		return Go.toInterface(this);

	public function __copy__() {
		return new T_rot13Reader(_r);
	}
}

@:structInit private class T_readMaker {
	public var _name:GoString = "";
	public var _fn:stdgo.io.Io.Reader->stdgo.io.Io.Reader = null;

	public function new(?_name:GoString, ?_fn:stdgo.io.Io.Reader->stdgo.io.Io.Reader) {
		if (_name != null)
			this._name = _name;
		if (_fn != null)
			this._fn = _fn;
	}

	public function __underlying__()
		return Go.toInterface(this);

	public function __copy__() {
		return new T_readMaker(_name, _fn);
	}
}

@:structInit private class T_bufReader {
	public var _name:GoString = "";
	public var _fn:Ref<Reader>->GoString = null;

	public function new(?_name:GoString, ?_fn:Ref<Reader>->GoString) {
		if (_name != null)
			this._name = _name;
		if (_fn != null)
			this._fn = _fn;
	}

	public function __underlying__()
		return Go.toInterface(this);

	public function __copy__() {
		return new T_bufReader(_name, _fn);
	}
}

@:structInit @:using(stdgo.bufio_test.Bufio_test.T_zeroReader_static_extension) private class T_zeroReader {
	public function new() {}

	public function __underlying__()
		return Go.toInterface(this);

	public function __copy__() {
		return new T_zeroReader();
	}
}

/**
	// A StringReader delivers its data one string segment at a time via Read.
**/
@:structInit @:using(stdgo.bufio_test.Bufio_test.StringReader_static_extension) class StringReader {
	public var _data:Slice<GoString> = (null : Slice<GoString>);
	public var _step:GoInt = 0;

	public function new(?_data:Slice<GoString>, ?_step:GoInt) {
		if (_data != null)
			this._data = _data;
		if (_step != null)
			this._step = _step;
	}

	public function __underlying__()
		return Go.toInterface(this);

	public function __copy__() {
		return new StringReader(_data, _step);
	}
}

@:structInit @:using(stdgo.bufio_test.Bufio_test.T_errorWriterTest_static_extension) private class T_errorWriterTest {
	public var _n:GoInt = 0;
	public var _m:GoInt = 0;
	public var _err:Error = (null : Error);
	public var _expect:Error = (null : Error);

	public function new(?_n:GoInt, ?_m:GoInt, ?_err:Error, ?_expect:Error) {
		if (_n != null)
			this._n = _n;
		if (_m != null)
			this._m = _m;
		if (_err != null)
			this._err = _err;
		if (_expect != null)
			this._expect = _expect;
	}

	public function __underlying__()
		return Go.toInterface(this);

	public function __copy__() {
		return new T_errorWriterTest(_n, _m, _err, _expect);
	}
}

@:structInit @:using(stdgo.bufio_test.Bufio_test.T_teststringwriter_static_extension) private class T_teststringwriter {
	public var _write:GoString = "";
	public var _writeString:GoString = "";

	public function new(?_write:GoString, ?_writeString:GoString) {
		if (_write != null)
			this._write = _write;
		if (_writeString != null)
			this._writeString = _writeString;
	}

	public function __underlying__()
		return Go.toInterface(this);

	public function __copy__() {
		return new T_teststringwriter(_write, _writeString);
	}
}

/**
	// TestReader wraps a []byte and returns reads of a specific length.
**/
@:structInit @:using(stdgo.bufio_test.Bufio_test.T_testReader_static_extension) private class T_testReader {
	public var _data:Slice<GoUInt8> = (null : Slice<GoUInt8>);
	public var _stride:GoInt = 0;

	public function new(?_data:Slice<GoUInt8>, ?_stride:GoInt) {
		if (_data != null)
			this._data = _data;
		if (_stride != null)
			this._stride = _stride;
	}

	public function __underlying__()
		return Go.toInterface(this);

	public function __copy__() {
		return new T_testReader(_data, _stride);
	}
}

@:structInit private class T_readLineResult {
	public var _line:Slice<GoUInt8> = (null : Slice<GoUInt8>);
	public var _isPrefix:Bool = false;
	public var _err:Error = (null : Error);

	public function new(?_line:Slice<GoUInt8>, ?_isPrefix:Bool, ?_err:Error) {
		if (_line != null)
			this._line = _line;
		if (_isPrefix != null)
			this._isPrefix = _isPrefix;
		if (_err != null)
			this._err = _err;
	}

	public function __underlying__()
		return Go.toInterface(this);

	public function __copy__() {
		return new T_readLineResult(_line, _isPrefix, _err);
	}
}

@:structInit @:using(stdgo.bufio_test.Bufio_test.T_errorWriterToTest_static_extension) private class T_errorWriterToTest {
	public var _rn:GoInt = 0;
	public var _wn:GoInt = 0;
	public var _rerr:Error = (null : Error);
	public var _werr:Error = (null : Error);
	public var _expected:Error = (null : Error);

	public function new(?_rn:GoInt, ?_wn:GoInt, ?_rerr:Error, ?_werr:Error, ?_expected:Error) {
		if (_rn != null)
			this._rn = _rn;
		if (_wn != null)
			this._wn = _wn;
		if (_rerr != null)
			this._rerr = _rerr;
		if (_werr != null)
			this._werr = _werr;
		if (_expected != null)
			this._expected = _expected;
	}

	public function __underlying__()
		return Go.toInterface(this);

	public function __copy__() {
		return new T_errorWriterToTest(_rn, _wn, _rerr, _werr, _expected);
	}
}

@:structInit @:using(stdgo.bufio_test.Bufio_test.T_errorReaderFromTest_static_extension) private class T_errorReaderFromTest {
	public var _rn:GoInt = 0;
	public var _wn:GoInt = 0;
	public var _rerr:Error = (null : Error);
	public var _werr:Error = (null : Error);
	public var _expected:Error = (null : Error);

	public function new(?_rn:GoInt, ?_wn:GoInt, ?_rerr:Error, ?_werr:Error, ?_expected:Error) {
		if (_rn != null)
			this._rn = _rn;
		if (_wn != null)
			this._wn = _wn;
		if (_rerr != null)
			this._rerr = _rerr;
		if (_werr != null)
			this._werr = _werr;
		if (_expected != null)
			this._expected = _expected;
	}

	public function __underlying__()
		return Go.toInterface(this);

	public function __copy__() {
		return new T_errorReaderFromTest(_rn, _wn, _rerr, _werr, _expected);
	}
}

@:structInit @:using(stdgo.bufio_test.Bufio_test.T_errorThenGoodReader_static_extension) private class T_errorThenGoodReader {
	public var _didErr:Bool = false;
	public var _nread:GoInt = 0;

	public function new(?_didErr:Bool, ?_nread:GoInt) {
		if (_didErr != null)
			this._didErr = _didErr;
		if (_nread != null)
			this._nread = _nread;
	}

	public function __underlying__()
		return Go.toInterface(this);

	public function __copy__() {
		return new T_errorThenGoodReader(_didErr, _nread);
	}
}

@:structInit @:using(stdgo.bufio_test.Bufio_test.T_emptyThenNonEmptyReader_static_extension) private class T_emptyThenNonEmptyReader {
	public var _r:stdgo.io.Io.Reader = (null : stdgo.io.Io.Reader);
	public var _n:GoInt = 0;

	public function new(?_r:stdgo.io.Io.Reader, ?_n:GoInt) {
		if (_r != null)
			this._r = _r;
		if (_n != null)
			this._n = _n;
	}

	public function __underlying__()
		return Go.toInterface(this);

	public function __copy__() {
		return new T_emptyThenNonEmptyReader(_r, _n);
	}
}

@:structInit @:using(stdgo.bufio_test.Bufio_test.T_readFromWriter_static_extension) private class T_readFromWriter {
	public var _buf:Slice<GoUInt8> = (null : Slice<GoUInt8>);
	public var _writeBytes:GoInt = 0;
	public var _readFromBytes:GoInt = 0;

	public function new(?_buf:Slice<GoUInt8>, ?_writeBytes:GoInt, ?_readFromBytes:GoInt) {
		if (_buf != null)
			this._buf = _buf;
		if (_writeBytes != null)
			this._writeBytes = _writeBytes;
		if (_readFromBytes != null)
			this._readFromBytes = _readFromBytes;
	}

	public function __underlying__()
		return Go.toInterface(this);

	public function __copy__() {
		return new T_readFromWriter(_buf, _writeBytes, _readFromBytes);
	}
}

/**
	// An onlyReader only implements io.Reader, no matter what other methods the underlying implementation may have.
**/
@:structInit @:using(stdgo.bufio_test.Bufio_test.T_onlyReader_static_extension) private class T_onlyReader {
	@:embedded
	public var reader:stdgo.io.Io.Reader = (null : stdgo.io.Io.Reader);

	public function new(?reader:stdgo.io.Io.Reader) {
		if (reader != null)
			this.reader = reader;
	}

	public function __underlying__()
		return Go.toInterface(this);

	@:embedded
	public function read(_p:Slice<GoUInt8>):{var _0:GoInt; var _1:Error;}
		return reader.read(_p);

	public function __copy__() {
		return new T_onlyReader(reader);
	}
}

/**
	// An onlyWriter only implements io.Writer, no matter what other methods the underlying implementation may have.
**/
@:structInit @:using(stdgo.bufio_test.Bufio_test.T_onlyWriter_static_extension) private class T_onlyWriter {
	@:embedded
	public var writer:stdgo.io.Io.Writer = (null : stdgo.io.Io.Writer);

	public function new(?writer:stdgo.io.Io.Writer) {
		if (writer != null)
			this.writer = writer;
	}

	public function __underlying__()
		return Go.toInterface(this);

	@:embedded
	public function write(_p:Slice<GoUInt8>):{var _0:GoInt; var _1:Error;}
		return writer.write(_p);

	public function __copy__() {
		return new T_onlyWriter(writer);
	}
}

/**
	// eofReader returns the number of bytes read and io.EOF for the read that consumes the last of the content.
**/
@:structInit @:using(stdgo.bufio_test.Bufio_test.T_eofReader_static_extension) private class T_eofReader {
	public var _buf:Slice<GoUInt8> = (null : Slice<GoUInt8>);

	public function new(?_buf:Slice<GoUInt8>) {
		if (_buf != null)
			this._buf = _buf;
	}

	public function __underlying__()
		return Go.toInterface(this);

	public function __copy__() {
		return new T_eofReader(_buf);
	}
}

@:structInit @:using(stdgo.bufio_test.Bufio_test.T_writerWithReadFromError_static_extension) private class T_writerWithReadFromError {
	public function new() {}

	public function __underlying__()
		return Go.toInterface(this);

	public function __copy__() {
		return new T_writerWithReadFromError();
	}
}

@:structInit @:using(stdgo.bufio_test.Bufio_test.T_writeErrorOnlyWriter_static_extension) private class T_writeErrorOnlyWriter {
	public function new() {}

	public function __underlying__()
		return Go.toInterface(this);

	public function __copy__() {
		return new T_writeErrorOnlyWriter();
	}
}

/**
	// slowReader is a reader that returns only a few bytes at a time, to test the incremental
	// reads in Scanner.Scan.
**/
@:structInit @:using(stdgo.bufio_test.Bufio_test.T_slowReader_static_extension) private class T_slowReader {
	public var _max:GoInt = 0;
	public var _buf:stdgo.io.Io.Reader = (null : stdgo.io.Io.Reader);

	public function new(?_max:GoInt, ?_buf:stdgo.io.Io.Reader) {
		if (_max != null)
			this._max = _max;
		if (_buf != null)
			this._buf = _buf;
	}

	public function __underlying__()
		return Go.toInterface(this);

	public function __copy__() {
		return new T_slowReader(_max, _buf);
	}
}

/**
	// Test for issue 5268.
**/
@:structInit @:using(stdgo.bufio_test.Bufio_test.T_alwaysError_static_extension) private class T_alwaysError {
	public function new() {}

	public function __underlying__()
		return Go.toInterface(this);

	public function __copy__() {
		return new T_alwaysError();
	}
}

/**
	// Test that Scan finishes if we have endless empty reads.
**/
@:structInit @:using(stdgo.bufio_test.Bufio_test.T_endlessZeros_static_extension) private class T_endlessZeros {
	public function new() {}

	public function __underlying__()
		return Go.toInterface(this);

	public function __copy__() {
		return new T_endlessZeros();
	}
}

/**
	// largeReader returns an invalid count that is larger than the number
	// of bytes requested.
**/
@:structInit @:using(stdgo.bufio_test.Bufio_test.T_largeReader_static_extension) private class T_largeReader {
	public function new() {}

	public function __underlying__()
		return Go.toInterface(this);

	public function __copy__() {
		return new T_largeReader();
	}
}

class T__struct_0_asInterface {
	public function new(__self__, __type__) {
		this.__self__ = __self__;
		this.__type__ = __type__;
	}

	public function __underlying__()
		return new AnyInterface((__type__.kind() == stdgo.reflect.Reflect.ptr
			&& !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic),
			__type__);

	var __self__:Pointer<T__struct_0>;
	var __type__:stdgo.internal.reflect.Reflect._Type;
}

@:keep @:allow(stdgo.bufio_test.Bufio_test.T__struct_0_asInterface) class T__struct_0_static_extension {}

@:local @:using(stdgo.bufio_test.Bufio_test.T__struct_0_static_extension) private typedef T__struct_0 = {
	public var _input:GoString;
	public var _expect:Slice<stdgo.bufio_test.Bufio_test.T_readLineResult>;
};

class T__struct_1_asInterface {
	public function new(__self__, __type__) {
		this.__self__ = __self__;
		this.__type__ = __type__;
	}

	public function __underlying__()
		return new AnyInterface((__type__.kind() == stdgo.reflect.Reflect.ptr
			&& !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic),
			__type__);

	var __self__:Pointer<T__struct_1>;
	var __type__:stdgo.internal.reflect.Reflect._Type;
}

@:keep @:allow(stdgo.bufio_test.Bufio_test.T__struct_1_asInterface) class T__struct_1_static_extension {}

@:local @:using(stdgo.bufio_test.Bufio_test.T__struct_1_static_extension) private typedef T__struct_1 = {
	public var _name:GoString;
	public var _r:stdgo.io.Io.Reader;

	/**
		// 0 means 16
	**/
	public var _bufSize:GoInt;

	public var _peekSize:GoInt;

	/**
		// input to Discard
	**/
	public var _n:GoInt;

	/**
		// from Discard
	**/
	public var _want:GoInt;

	/**
		// from Discard
	**/
	public var _wantErr:Error;

	public var _wantBuffered:GoInt;
};

@:named @:using(stdgo.bufio_test.Bufio_test.T_dataAndEOFReader_static_extension) private typedef T_dataAndEOFReader = GoString;

/**
	// A writeCountingDiscard is like io.Discard and counts the number of times
	// Write is called on it.
**/
@:named @:using(stdgo.bufio_test.Bufio_test.T_writeCountingDiscard_static_extension) private typedef T_writeCountingDiscard = GoInt;

@:named @:using(stdgo.bufio_test.Bufio_test.T_negativeReader_static_extension) private typedef T_negativeReader = GoInt;

/**
	// A scriptedReader is an io.Reader that executes its steps sequentially.
**/
@:named @:using(stdgo.bufio_test.Bufio_test.T_scriptedReader_static_extension) private typedef T_scriptedReader = Slice<Slice<GoUInt8> -> {
	var _0:GoInt;
	var _1:Error;
}>;

@:named @:using(stdgo.bufio_test.Bufio_test.T_countdown_static_extension) private typedef T_countdown = GoInt;

/**
	// negativeEOFReader returns an invalid -1 at the end, as though it
	// were wrapping the read system call.
**/
@:named @:using(stdgo.bufio_test.Bufio_test.T_negativeEOFReader_static_extension) private typedef T_negativeEOFReader = GoInt;

function _newRot13Reader(_r:stdgo.io.Io.Reader):Ref<T_rot13Reader> {
	var _r13 = ({} : stdgo.bufio_test.Bufio_test.T_rot13Reader);
	_r13._r = _r;
	return _r13;
}

/**
	// Call ReadByte to accumulate the text of a file
**/
function _readBytes(_buf:Ref<Reader>):GoString {
	var _b:GoArray<GoByte> = new GoArray<GoUInt8>(...[for (i in 0...1000) (0 : GoUInt8)]);
	var _nb:GoInt = (0 : GoInt);
	while (true) {
		var __tmp__ = _buf.readByte(),
			_c:GoUInt8 = __tmp__._0,
			_err:Error = __tmp__._1;
		if (Go.toInterface(_err) == (Go.toInterface(stdgo.io.Io.eof))) {
			break;
		};
		if (_err == null) {
			_b[(_nb : GoInt)] = _c;
			_nb++;
		} else if (Go.toInterface(_err) != (Go.toInterface(stdgo.testing.iotest.Iotest.errTimeout))) {
			throw Go.toInterface(Go.str("Data: ") + _err.error());
		};
	};
	return ((_b.__slice__((0 : GoInt), _nb) : Slice<GoUInt8>) : GoString);
}

function testReaderSimple(_t:Ref<stdgo.testing.Testing.T>):Void {
	var _data:GoString = Go.str("hello world");
	var _b = newReader(Go.asInterface(stdgo.strings.Strings.newReader(_data)));
	{
		var _s:GoString = _readBytes(_b);
		if (_s != (Go.str("hello world"))) {
			_t.errorf(Go.str("simple hello world test failed: got %q"), Go.toInterface(_s));
		};
	};
	_b = newReader(Go.asInterface(_newRot13Reader(Go.asInterface(stdgo.strings.Strings.newReader(_data)))));
	{
		var _s:GoString = _readBytes(_b);
		if (_s != (Go.str("uryyb jbeyq"))) {
			_t.errorf(Go.str("rot13 hello world test failed: got %q"), Go.toInterface(_s));
		};
	};
}

/**
	// Call ReadString (which ends up calling everything else)
	// to accumulate the text of a file.
**/
function _readLines(_b:Ref<Reader>):GoString {
	var _s:GoString = Go.str();
	while (true) {
		var __tmp__ = _b.readString((10 : GoUInt8)),
			_s1:GoString = __tmp__._0,
			_err:Error = __tmp__._1;
		if (Go.toInterface(_err) == (Go.toInterface(stdgo.io.Io.eof))) {
			break;
		};
		if ((_err != null) && (Go.toInterface(_err) != Go.toInterface(stdgo.testing.iotest.Iotest.errTimeout))) {
			throw Go.toInterface(Go.str("GetLines: ") + _err.error());
		};
		_s = _s + (_s1);
	};
	return _s;
}

/**
	// Call Read to accumulate the text of a file
**/
function _reads(_buf:Ref<Reader>, _m:GoInt):GoString {
	var _b:GoArray<GoByte> = new GoArray<GoUInt8>(...[for (i in 0...1000) (0 : GoUInt8)]);
	var _nb:GoInt = (0 : GoInt);
	while (true) {
		var __tmp__ = _buf.read((_b.__slice__(_nb, _nb + _m) : Slice<GoUInt8>)),
			_n:GoInt = __tmp__._0,
			_err:Error = __tmp__._1;
		_nb = _nb + (_n);
		if (Go.toInterface(_err) == (Go.toInterface(stdgo.io.Io.eof))) {
			break;
		};
	};
	return ((_b.__slice__((0 : GoInt), _nb) : Slice<GoUInt8>) : GoString);
}

function testReader(_t:Ref<stdgo.testing.Testing.T>):Void {
	var _texts:GoArray<GoString> = new GoArray<GoString>(...[for (i in 0...31) ("" : GoString)]);
	var _str:GoString = Go.str();
	var _all:GoString = Go.str();
	{
		var _i:GoInt = (0 : GoInt);
		Go.cfor(_i < (30:GoInt), _i++, {
			_texts[(_i : GoInt)] = _str + Go.str("\n");
			_all = _all + (_texts[(_i : GoInt)]);
			_str = _str + ((((_i % (26 : GoInt)) + (97 : GoInt) : GoRune) : GoString));
		});
	};
	_texts[(30 : GoInt)] = _all;
	{
		var _h:GoInt = (0 : GoInt);
		Go.cfor(_h < (_texts.length), _h++, {
			var _text:GoString = _texts[(_h : GoInt)];
			{
				var _i:GoInt = (0 : GoInt);
				Go.cfor(_i < (_readMakers.length), _i++, {
					{
						var _j:GoInt = (0 : GoInt);
						Go.cfor(_j < (_bufreaders.length), _j++, {
							{
								var _k:GoInt = (0 : GoInt);
								Go.cfor(_k < (_bufsizes.length), _k++, {
									var _readmaker:stdgo.bufio_test.Bufio_test.T_readMaker = (_readMakers[(_i : GoInt)] == null ? null : _readMakers[(_i : GoInt)].__copy__());
									var _bufreader:stdgo.bufio_test.Bufio_test.T_bufReader = (_bufreaders[(_j : GoInt)] == null ? null : _bufreaders[(_j : GoInt)].__copy__());
									var _bufsize:GoInt = _bufsizes[(_k : GoInt)];
									var _read:stdgo.io.Io.Reader = _readmaker._fn(Go.asInterface(stdgo.strings.Strings.newReader(_text)));
									var _buf = newReaderSize(_read, _bufsize);
									var _s:GoString = _bufreader._fn(_buf);
									if (_s != (_text)) {
										_t.errorf(Go.str("reader=%s fn=%s bufsize=%d want=%q got=%q"), Go.toInterface(_readmaker._name),
											Go.toInterface(_bufreader._name), Go.toInterface(_bufsize), Go.toInterface(_text), Go.toInterface(_s));
									};
								});
							};
						});
					};
				});
			};
		});
	};
}

function testZeroReader(_t:Ref<stdgo.testing.Testing.T>):Void {
	var _z:T_zeroReader = ({} : stdgo.bufio_test.Bufio_test.T_zeroReader);
	var _r = newReader(Go.asInterface(_z));
	var _c = new Chan<Error>(0, () -> (null : Error));
	Go.routine(() -> {
		var a = function():Void {
			var __tmp__ = _r.readByte(), _0:GoUInt8 = __tmp__._0, _err:Error = __tmp__._1;
			_c.__send__(_err);
		};
		a();
	});
	Go.select([
		stdgo.time.Time.after((("1000000000" : GoInt64) : stdgo.time.Time.Duration)).__get__() => {
			_t.error(Go.toInterface(Go.str("test timed out (endless loop in ReadByte?)")));
		},
		var _err = _c.__get__() => {
			if (_err == null) {
				_t.error(Go.toInterface(Go.str("error expected")));
			} else if (Go.toInterface(_err) != (Go.toInterface(stdgo.io.Io.errNoProgress))) {
				_t.error(Go.toInterface(Go.str("unexpected error:")), Go.toInterface(_err));
			};
		}
	]);
}

function _readRuneSegments(_t:Ref<stdgo.testing.Testing.T>, _segments:Slice<GoString>):Void {
	var _got:GoString = Go.str();
	var _want:GoString = stdgo.strings.Strings.join(_segments, Go.str());
	var _r = newReader(Go.asInterface((({_data: _segments} : stdgo.bufio_test.Bufio_test.StringReader) : Ref<stdgo.bufio_test.Bufio_test.StringReader>)));
	while (true) {
		var __tmp__ = _r.readRune(),
			_r:GoInt32 = __tmp__._0,
			_0:GoInt = __tmp__._1,
			_err:Error = __tmp__._2;
		if (_err != null) {
			if (Go.toInterface(_err) != (Go.toInterface(stdgo.io.Io.eof))) {
				return;
			};
			break;
		};
		_got = _got + ((_r : GoString));
	};
	if (_got != (_want)) {
		_t.errorf(Go.str("segments=%v got=%s want=%s"), Go.toInterface(_segments), Go.toInterface(_got), Go.toInterface(_want));
	};
}

function testReadRune(_t:Ref<stdgo.testing.Testing.T>):Void {
	for (_0 => _s in _segmentList) {
		_readRuneSegments(_t, _s);
	};
}

function testUnreadRune(_t:Ref<stdgo.testing.Testing.T>):Void {
	var _segments = (new Slice<GoString>(0, 0, Go.str("Hello, world:"), Go.str("日本語")) : Slice<GoString>);
	var _r = newReader(Go.asInterface((({_data: _segments} : stdgo.bufio_test.Bufio_test.StringReader) : Ref<stdgo.bufio_test.Bufio_test.StringReader>)));
	var _got:GoString = Go.str();
	var _want:GoString = stdgo.strings.Strings.join(_segments, Go.str());
	while (true) {
		var __tmp__ = _r.readRune(),
			_r1:GoInt32 = __tmp__._0,
			_0:GoInt = __tmp__._1,
			_err:Error = __tmp__._2;
		if (_err != null) {
			if (Go.toInterface(_err) != (Go.toInterface(stdgo.io.Io.eof))) {
				_t.error(Go.toInterface(Go.str("unexpected error on ReadRune:")), Go.toInterface(_err));
			};
			break;
		};
		_got = _got + ((_r1 : GoString));
		{
			_err = _r.unreadRune();
			if (_err != null) {
				_t.fatal(Go.toInterface(Go.str("unexpected error on UnreadRune:")), Go.toInterface(_err));
			};
		};
		var __tmp__ = _r.readRune(),
			_r2:GoInt32 = __tmp__._0,
			_1:GoInt = __tmp__._1,
			_err:Error = __tmp__._2;
		if (_err != null) {
			_t.fatal(Go.toInterface(Go.str("unexpected error reading after unreading:")), Go.toInterface(_err));
		};
		if (_r1 != (_r2)) {
			_t.fatalf(Go.str("incorrect rune after unread: got %c, want %c"), Go.toInterface(_r1), Go.toInterface(_r2));
		};
	};
	if (_got != (_want)) {
		_t.errorf(Go.str("got %q, want %q"), Go.toInterface(_got), Go.toInterface(_want));
	};
}

function testNoUnreadRuneAfterPeek(_t:Ref<stdgo.testing.Testing.T>):Void {
	var _br = newReader(Go.asInterface(stdgo.strings.Strings.newReader(Go.str("example"))));
	_br.readRune();
	_br.peek((1 : GoInt));
	{
		var _err:Error = _br.unreadRune();
		if (_err == null) {
			_t.error(Go.toInterface(Go.str("UnreadRune didn\'t fail after Peek")));
		};
	};
}

function testNoUnreadByteAfterPeek(_t:Ref<stdgo.testing.Testing.T>):Void {
	var _br = newReader(Go.asInterface(stdgo.strings.Strings.newReader(Go.str("example"))));
	_br.readByte();
	_br.peek((1 : GoInt));
	{
		var _err:Error = _br.unreadByte();
		if (_err == null) {
			_t.error(Go.toInterface(Go.str("UnreadByte didn\'t fail after Peek")));
		};
	};
}

function testNoUnreadRuneAfterDiscard(_t:Ref<stdgo.testing.Testing.T>):Void {
	var _br = newReader(Go.asInterface(stdgo.strings.Strings.newReader(Go.str("example"))));
	_br.readRune();
	_br.discard((1 : GoInt));
	{
		var _err:Error = _br.unreadRune();
		if (_err == null) {
			_t.error(Go.toInterface(Go.str("UnreadRune didn\'t fail after Discard")));
		};
	};
}

function testNoUnreadByteAfterDiscard(_t:Ref<stdgo.testing.Testing.T>):Void {
	var _br = newReader(Go.asInterface(stdgo.strings.Strings.newReader(Go.str("example"))));
	_br.readByte();
	_br.discard((1 : GoInt));
	{
		var _err:Error = _br.unreadByte();
		if (_err == null) {
			_t.error(Go.toInterface(Go.str("UnreadByte didn\'t fail after Discard")));
		};
	};
}

function testNoUnreadRuneAfterWriteTo(_t:Ref<stdgo.testing.Testing.T>):Void {
	var _br = newReader(Go.asInterface(stdgo.strings.Strings.newReader(Go.str("example"))));
	_br.writeTo(stdgo.io.Io.discard);
	{
		var _err:Error = _br.unreadRune();
		if (_err == null) {
			_t.error(Go.toInterface(Go.str("UnreadRune didn\'t fail after WriteTo")));
		};
	};
}

function testNoUnreadByteAfterWriteTo(_t:Ref<stdgo.testing.Testing.T>):Void {
	var _br = newReader(Go.asInterface(stdgo.strings.Strings.newReader(Go.str("example"))));
	_br.writeTo(stdgo.io.Io.discard);
	{
		var _err:Error = _br.unreadByte();
		if (_err == null) {
			_t.error(Go.toInterface(Go.str("UnreadByte didn\'t fail after WriteTo")));
		};
	};
}

function testUnreadByte(_t:Ref<stdgo.testing.Testing.T>):Void {
	var _segments = (new Slice<GoString>(0, 0, Go.str("Hello, "), Go.str("world")) : Slice<GoString>);
	var _r = newReader(Go.asInterface((({_data: _segments} : stdgo.bufio_test.Bufio_test.StringReader) : Ref<stdgo.bufio_test.Bufio_test.StringReader>)));
	var _got:GoString = Go.str();
	var _want:GoString = stdgo.strings.Strings.join(_segments, Go.str());
	while (true) {
		var __tmp__ = _r.readByte(),
			_b1:GoUInt8 = __tmp__._0,
			_err:Error = __tmp__._1;
		if (_err != null) {
			if (Go.toInterface(_err) != (Go.toInterface(stdgo.io.Io.eof))) {
				_t.error(Go.toInterface(Go.str("unexpected error on ReadByte:")), Go.toInterface(_err));
			};
			break;
		};
		_got = _got + ((_b1 : GoString));
		{
			_err = _r.unreadByte();
			if (_err != null) {
				_t.fatal(Go.toInterface(Go.str("unexpected error on UnreadByte:")), Go.toInterface(_err));
			};
		};
		var __tmp__ = _r.readByte(),
			_b2:GoUInt8 = __tmp__._0,
			_err:Error = __tmp__._1;
		if (_err != null) {
			_t.fatal(Go.toInterface(Go.str("unexpected error reading after unreading:")), Go.toInterface(_err));
		};
		if (_b1 != (_b2)) {
			_t.fatalf(Go.str("incorrect byte after unread: got %q, want %q"), Go.toInterface(_b1), Go.toInterface(_b2));
		};
	};
	if (_got != (_want)) {
		_t.errorf(Go.str("got %q, want %q"), Go.toInterface(_got), Go.toInterface(_want));
	};
}

function testUnreadByteMultiple(_t:Ref<stdgo.testing.Testing.T>):Void {
	var _segments = (new Slice<GoString>(0, 0, Go.str("Hello, "), Go.str("world")) : Slice<GoString>);
	var _data:GoString = stdgo.strings.Strings.join(_segments, Go.str());
	{
		var _n:GoInt = (0 : GoInt);
		Go.cfor(_n <= (_data.length), _n++, {
			var _r = newReader(Go.asInterface((({_data: _segments} : stdgo.bufio_test.Bufio_test.StringReader) : Ref<stdgo.bufio_test.Bufio_test.StringReader>)));
			{
				var _i:GoInt = (0 : GoInt);
				Go.cfor(_i < _n, _i++, {
					var __tmp__ = _r.readByte(),
						_b:GoUInt8 = __tmp__._0,
						_err:Error = __tmp__._1;
					if (_err != null) {
						_t.fatalf(Go.str("n = %d: unexpected error on ReadByte: %v"), Go.toInterface(_n), Go.toInterface(_err));
					};
					if (_b != (_data[(_i : GoInt)])) {
						_t.fatalf(Go.str("n = %d: incorrect byte returned from ReadByte: got %q, want %q"), Go.toInterface(_n), Go.toInterface(_b),
							Go.toInterface(_data[(_i : GoInt)]));
					};
				});
			};
			if (_n > (0 : GoInt)) {
				{
					var _err:Error = _r.unreadByte();
					if (_err != null) {
						_t.errorf(Go.str("n = %d: unexpected error on UnreadByte: %v"), Go.toInterface(_n), Go.toInterface(_err));
					};
				};
			};
			{
				var _err:Error = _r.unreadByte();
				if (_err == null) {
					_t.errorf(Go.str("n = %d: expected error on UnreadByte"), Go.toInterface(_n));
				};
			};
		});
	};
}

function testUnreadByteOthers(_t:Ref<stdgo.testing.Testing.T>):Void {
	var _readers:Slice<(Ref<Reader>, GoUInt8) -> {
		var _0:Slice<GoUInt8>;
		var _1:Error;
	}> = (new Slice<(Ref<Reader>, GoUInt8) -> {
		var _0:Slice<GoUInt8>;
		var _1:Error;
	}>(0, 0, (reader).readBytes, (reader).readSlice, function(_r:Ref<Reader>, _delim:GoByte):{var _0:Slice<GoByte>; var _1:Error;} {
		var __tmp__ = _r.readString(_delim), _data:GoString = __tmp__._0, _err:Error = __tmp__._1;
		return {_0: (_data : Slice<GoByte>), _1: _err};
	}) : Slice<(Ref<Reader>, GoUInt8) -> {
		var _0:Slice<GoUInt8>;
		var _1:Error;
	}>);
	for (_rno => _read in _readers) {
		{};
		var _buf:stdgo.bytes.Bytes.Buffer = ({} : stdgo.bytes.Bytes.Buffer);
		{
			var _i:GoInt = (0 : GoInt);
			Go.cfor(_i < (10:GoInt), _i++, {
				_buf.writeString(Go.str("abcdefg"));
			});
		};
		var _r = newReaderSize(Go.asInterface((_buf : Ref<stdgo.bytes.Bytes.Buffer>)), (16 : GoInt));
		var _readTo:(GoUInt8, GoString) -> Void = function(_delim:GoByte, _want:GoString):Void {
			var __tmp__ = _read(_r, _delim), _data:Slice<GoUInt8> = __tmp__._0, _err:Error = __tmp__._1;
			if (_err != null) {
				_t.fatalf(Go.str("#%d: unexpected error reading to %c: %v"), Go.toInterface(_rno), Go.toInterface(_delim), Go.toInterface(_err));
			};
			{
				var _got:GoString = (_data : GoString);
				if (_got != (_want)) {
					_t.fatalf(Go.str("#%d: got %q, want %q"), Go.toInterface(_rno), Go.toInterface(_got), Go.toInterface(_want));
				};
			};
		};
		{
			var _i:GoInt = (0 : GoInt);
			Go.cfor(_i < (10:GoInt), _i++, {
				_readTo((100 : GoUInt8), Go.str("abcd"));
				{
					var _j:GoInt = (0 : GoInt);
					Go.cfor(_j < (3:GoInt), _j++, {
						{
							var _err:Error = _r.unreadByte();
							if (_err != null) {
								_t.fatalf(Go.str("#%d: unexpected error on UnreadByte: %v"), Go.toInterface(_rno), Go.toInterface(_err));
							};
						};
						_readTo((100 : GoUInt8), Go.str("d"));
					});
				};
				_readTo((103 : GoUInt8), Go.str("efg"));
			});
		};
		var __tmp__ = _r.readByte(),
			_0:GoUInt8 = __tmp__._0,
			_err:Error = __tmp__._1;
		if (Go.toInterface(_err) != (Go.toInterface(stdgo.io.Io.eof))) {
			_t.errorf(Go.str("#%d: got error %v; want EOF"), Go.toInterface(_rno), Go.toInterface(_err));
		};
	};
}

/**
	// Test that UnreadRune fails if the preceding operation was not a ReadRune.
**/
function testUnreadRuneError(_t:Ref<stdgo.testing.Testing.T>):Void {
	var _buf = new Slice<GoUInt8>((3 : GoInt).toBasic(), 0, ...[for (i in 0...(3 : GoInt).toBasic()) (0 : GoUInt8)]);
	var _r = newReader(Go.asInterface((({_data: (new Slice<GoString>(0, 0,
		Go.str("日本語日本語日本語")) : Slice<GoString>)} : stdgo.bufio_test.Bufio_test.StringReader) : Ref<stdgo.bufio_test.Bufio_test.StringReader>)));
	if (_r.unreadRune() == null) {
		_t.error(Go.toInterface(Go.str("expected error on UnreadRune from fresh buffer")));
	};
	var __tmp__ = _r.readRune(),
		_0:GoInt32 = __tmp__._0,
		_1:GoInt = __tmp__._1,
		_err:Error = __tmp__._2;
	if (_err != null) {
		_t.error(Go.toInterface(Go.str("unexpected error on ReadRune (1):")), Go.toInterface(_err));
	};
	{
		_err = _r.unreadRune();
		if (_err != null) {
			_t.error(Go.toInterface(Go.str("unexpected error on UnreadRune (1):")), Go.toInterface(_err));
		};
	};
	if (_r.unreadRune() == null) {
		_t.error(Go.toInterface(Go.str("expected error after UnreadRune (1)")));
	};
	{
		var __tmp__ = _r.readRune();
		_err = __tmp__._2;
	};
	if (_err != null) {
		_t.error(Go.toInterface(Go.str("unexpected error on ReadRune (2):")), Go.toInterface(_err));
	};
	{
		var __tmp__ = _r.read(_buf);
		_err = __tmp__._1;
	};
	if (_err != null) {
		_t.error(Go.toInterface(Go.str("unexpected error on Read (2):")), Go.toInterface(_err));
	};
	if (_r.unreadRune() == null) {
		_t.error(Go.toInterface(Go.str("expected error after Read (2)")));
	};
	{
		var __tmp__ = _r.readRune();
		_err = __tmp__._2;
	};
	if (_err != null) {
		_t.error(Go.toInterface(Go.str("unexpected error on ReadRune (2):")), Go.toInterface(_err));
	};
	for (_ in 0..._buf.length.toBasic()) {
		{
			var __tmp__ = _r.readByte();
			_err = __tmp__._1;
		};
		if (_err != null) {
			_t.error(Go.toInterface(Go.str("unexpected error on ReadByte (2):")), Go.toInterface(_err));
		};
	};
	if (_r.unreadRune() == null) {
		_t.error(Go.toInterface(Go.str("expected error after ReadByte")));
	};
	{
		var __tmp__ = _r.readRune();
		_err = __tmp__._2;
	};
	if (_err != null) {
		_t.error(Go.toInterface(Go.str("unexpected error on ReadRune (3):")), Go.toInterface(_err));
	};
	{
		var __tmp__ = _r.readByte();
		_err = __tmp__._1;
	};
	if (_err != null) {
		_t.error(Go.toInterface(Go.str("unexpected error on ReadByte (3):")), Go.toInterface(_err));
	};
	_err = _r.unreadByte();
	if (_err != null) {
		_t.error(Go.toInterface(Go.str("unexpected error on UnreadByte (3):")), Go.toInterface(_err));
	};
	if (_r.unreadRune() == null) {
		_t.error(Go.toInterface(Go.str("expected error after UnreadByte (3)")));
	};
	{
		var __tmp__ = _r.readRune();
		_err = __tmp__._2;
	};
	if (_err != null) {
		_t.error(Go.toInterface(Go.str("unexpected error on ReadRune (4):")), Go.toInterface(_err));
	};
	{
		var __tmp__ = _r.readSlice((0 : GoUInt8));
		_err = __tmp__._1;
	};
	if (Go.toInterface(_err) != (Go.toInterface(stdgo.io.Io.eof))) {
		_t.error(Go.toInterface(Go.str("unexpected error on ReadSlice (4):")), Go.toInterface(_err));
	};
	if (_r.unreadRune() == null) {
		_t.error(Go.toInterface(Go.str("expected error after ReadSlice (4)")));
	};
}

function testUnreadRuneAtEOF(_t:Ref<stdgo.testing.Testing.T>):Void {
	var _r = newReader(Go.asInterface(stdgo.strings.Strings.newReader(Go.str("x"))));
	_r.readRune();
	_r.readRune();
	_r.unreadRune();
	var __tmp__ = _r.readRune(),
		_0:GoInt32 = __tmp__._0,
		_1:GoInt = __tmp__._1,
		_err:Error = __tmp__._2;
	if (_err == null) {
		_t.error(Go.toInterface(Go.str("expected error at EOF")));
	} else if (Go.toInterface(_err) != (Go.toInterface(stdgo.io.Io.eof))) {
		_t.error(Go.toInterface(Go.str("expected EOF; got")), Go.toInterface(_err));
	};
}

function testReadWriteRune(_t:Ref<stdgo.testing.Testing.T>):Void {
	{};
	var _byteBuf = ({} : stdgo.bytes.Bytes.Buffer);
	var _w = newWriter(Go.asInterface(_byteBuf));
	var _buf = new Slice<GoUInt8>((4 : GoInt).toBasic(), 0, ...[for (i in 0...(4 : GoInt).toBasic()) (0 : GoUInt8)]);
	{
		var _r:GoInt32 = ((0 : GoInt32) : GoRune);
		Go.cfor(_r < (1000:GoInt32), _r++, {
			var _size:GoInt = stdgo.unicode.utf8.Utf8.encodeRune(_buf, _r);
			var __tmp__ = _w.writeRune(_r),
				_nbytes:GoInt = __tmp__._0,
				_err:Error = __tmp__._1;
			if (_err != null) {
				_t.fatalf(Go.str("WriteRune(0x%x) error: %s"), Go.toInterface(_r), Go.toInterface(_err));
			};
			if (_nbytes != (_size)) {
				_t.fatalf(Go.str("WriteRune(0x%x) expected %d, got %d"), Go.toInterface(_r), Go.toInterface(_size), Go.toInterface(_nbytes));
			};
		});
	};
	_w.flush();
	var _r = newReader(Go.asInterface(_byteBuf));
	{
		var _r1:GoInt32 = ((0 : GoInt32) : GoRune);
		Go.cfor(_r1 < (1000:GoInt32), _r1++, {
			var _size:GoInt = stdgo.unicode.utf8.Utf8.encodeRune(_buf, _r1);
			var __tmp__ = _r.readRune(),
				_nr:GoInt32 = __tmp__._0,
				_nbytes:GoInt = __tmp__._1,
				_err:Error = __tmp__._2;
			if (((_nr != _r1) || (_nbytes != _size)) || (_err != null)) {
				_t.fatalf(Go.str("ReadRune(0x%x) got 0x%x,%d not 0x%x,%d (err=%s)"), Go.toInterface(_r1), Go.toInterface(_nr), Go.toInterface(_nbytes),
					Go.toInterface(_r1), Go.toInterface(_size), Go.toInterface(_err));
			};
		});
	};
}

function testWriteInvalidRune(_t:Ref<stdgo.testing.Testing.T>):Void {
	for (_0 => _r in (new Slice<GoInt32>(0, 0, (-1 : GoInt32), (1114112 : GoInt32)) : Slice<GoInt32>)) {
		var _buf:stdgo.bytes.Bytes.Buffer = ({} : stdgo.bytes.Bytes.Buffer);
		var _w = newWriter(Go.asInterface((_buf : Ref<stdgo.bytes.Bytes.Buffer>)));
		_w.writeRune(_r);
		_w.flush();
		{
			var _s:GoString = (_buf.string() : GoString);
			if (_s != (Go.str("�"))) {
				_t.errorf(Go.str("WriteRune(%d) wrote %q, not replacement character"), Go.toInterface(_r), Go.toInterface(_s));
			};
		};
	};
}

function testReadStringAllocs(_t:Ref<stdgo.testing.Testing.T>):Void {
	var _r = stdgo.strings.Strings.newReader(Go.str("       foo       foo        42        42        42        42        42        42        42        42       4.2       4.2       4.2       4.2\n"));
	var _buf = newReader(Go.asInterface(_r));
	var _allocs:GoFloat64 = stdgo.testing.Testing.allocsPerRun((100 : GoInt), function():Void {
		_r.seek(("0" : GoInt64), (0 : GoInt));
		_buf.reset(Go.asInterface(_r));
		var __tmp__ = _buf.readString((10 : GoUInt8)), _0:GoString = __tmp__._0, _err:Error = __tmp__._1;
		if (_err != null) {
			_t.fatal(Go.toInterface(_err));
		};
	});
	if (_allocs != (1 : GoFloat64)) {
		_t.errorf(Go.str("Unexpected number of allocations, got %f, want 1"), Go.toInterface(_allocs));
	};
}

function testWriter(_t:Ref<stdgo.testing.Testing.T>):Void {
	var _data:GoArray<GoByte> = new GoArray<GoUInt8>(...[for (i in 0...8192) (0 : GoUInt8)]);
	{
		var _i:GoInt = (0 : GoInt);
		Go.cfor(_i < (_data.length), _i++, {
			_data[(_i : GoInt)] = ((32 : GoInt) + (_i % (94 : GoInt)) : GoByte);
		});
	};
	var _w = ({} : stdgo.bytes.Bytes.Buffer);
	{
		var _i:GoInt = (0 : GoInt);
		Go.cfor(_i < (_bufsizes.length), _i++, {
			{
				var _j:GoInt = (0 : GoInt);
				Go.cfor(_j < (_bufsizes.length), _j++, {
					var _nwrite:GoInt = _bufsizes[(_i : GoInt)];
					var _bs:GoInt = _bufsizes[(_j : GoInt)];
					_w.reset();
					var _buf = newWriterSize(Go.asInterface(_w), _bs);
					var _context:GoString = stdgo.fmt.Fmt.sprintf(Go.str("nwrite=%d bufsize=%d"), Go.toInterface(_nwrite), Go.toInterface(_bs));
					var __tmp__ = _buf.write((_data.__slice__((0 : GoInt), _nwrite) : Slice<GoUInt8>)),
						_n:GoInt = __tmp__._0,
						_e1:Error = __tmp__._1;
					if ((_e1 != null) || (_n != _nwrite)) {
						_t.errorf(Go.str("%s: buf.Write %d = %d, %v"), Go.toInterface(_context), Go.toInterface(_nwrite), Go.toInterface(_n),
							Go.toInterface(_e1));
						continue;
					};
					{
						var _e:Error = _buf.flush();
						if (_e != null) {
							_t.errorf(Go.str("%s: buf.Flush = %v"), Go.toInterface(_context), Go.toInterface(_e));
						};
					};
					var _written = _w.bytes();
					if ((_written.length) != (_nwrite)) {
						_t.errorf(Go.str("%s: %d bytes written"), Go.toInterface(_context), Go.toInterface((_written.length)));
					};
					{
						var _l:GoInt = (0 : GoInt);
						Go.cfor(_l < (_written.length), _l++, {
							if (_written[(_l : GoInt)] != (_data[(_l : GoInt)])) {
								_t.errorf(Go.str("wrong bytes written"));
								_t.errorf(Go.str("want=%q"), Go.toInterface((_data.__slice__((0 : GoInt), (_written.length)) : Slice<GoUInt8>)));
								_t.errorf(Go.str("have=%q"), Go.toInterface(_written));
							};
						});
					};
				});
			};
		});
	};
}

function testWriterAppend(_t:Ref<stdgo.testing.Testing.T>):Void {
	var _got = ({} : stdgo.bytes.Bytes.Buffer);
	var _want:Slice<GoByte> = (null : Slice<GoUInt8>);
	var _rn = stdgo.math.rand.Rand.new_(stdgo.math.rand.Rand.newSource(("0" : GoInt64)));
	var _w = newWriterSize(Go.asInterface(_got), (64 : GoInt));
	{
		var _i:GoInt = (0 : GoInt);
		Go.cfor(_i < (100:GoInt), _i++, {
			var _b = _w.availableBuffer();
			if (_w.available() != (_b.capacity)) {
				_t.fatalf(Go.str("Available() = %v, want %v"), Go.toInterface(_w.available()), Go.toInterface(_b.capacity));
			};
			if ((_rn.intn((8 : GoInt)) == (0 : GoInt)) && (_b.capacity > (0 : GoInt))) {
				_b = (_b.__slice__((1 : GoInt), (1 : GoInt), _b.capacity) : Slice<GoUInt8>);
			};
			var _n:GoInt64 = (_rn.intn((1 : GoInt) << _rn.intn((30 : GoInt))) : GoInt64);
			_want = (stdgo.strconv.Strconv.appendInt(_want, _n, (10 : GoInt)).__append__((32 : GoUInt8)));
			_b = (stdgo.strconv.Strconv.appendInt(_b, _n, (10 : GoInt)).__append__((32 : GoUInt8)));
			_w.write(_b);
		});
	};
	_w.flush();
	if (!stdgo.bytes.Bytes.equal(_got.bytes(), _want)) {
		_t.errorf(Go.str("output mismatch:\ngot  %s\nwant %s"), Go.toInterface(_got.bytes()), Go.toInterface(_want));
	};
}

function testWriteErrors(_t:Ref<stdgo.testing.Testing.T>):Void {
	for (_0 => _w in _errorWriterTests) {
		var _buf = newWriter(Go.asInterface(_w));
		var __tmp__ = _buf.write((Go.str("hello world") : Slice<GoByte>)),
			_1:GoInt = __tmp__._0,
			_e:Error = __tmp__._1;
		if (_e != null) {
			_t.errorf(Go.str("Write hello to %v: %v"), Go.toInterface(Go.asInterface(_w)), Go.toInterface(_e));
			continue;
		};
		{
			var _i:GoInt = (0 : GoInt);
			Go.cfor(_i < (2:GoInt), _i++, {
				_e = _buf.flush();
				if (Go.toInterface(_e) != (Go.toInterface(_w._expect))) {
					_t.errorf(Go.str("Flush %d/2 %v: got %v, wanted %v"), Go.toInterface(_i + (1 : GoInt)), Go.toInterface(Go.asInterface(_w)),
						Go.toInterface(_e), Go.toInterface(_w._expect));
				};
			});
		};
	};
}

function testNewReaderSizeIdempotent(_t:Ref<stdgo.testing.Testing.T>):Void {
	{};
	var _b = newReaderSize(Go.asInterface(stdgo.strings.Strings.newReader(Go.str("hello world"))), (1000 : GoInt));
	var _b1 = newReaderSize(Go.asInterface(_b), (1000 : GoInt));
	if (_b1 != (_b)) {
		_t.error(Go.toInterface(Go.str("NewReaderSize did not detect underlying Reader")));
	};
	var _b2 = newReaderSize(Go.asInterface(_b), (2000 : GoInt));
	if (_b2 == (_b)) {
		_t.error(Go.toInterface(Go.str("NewReaderSize did not enlarge buffer")));
	};
}

function testNewWriterSizeIdempotent(_t:Ref<stdgo.testing.Testing.T>):Void {
	{};
	var _b = newWriterSize(Go.asInterface(({} : stdgo.bytes.Bytes.Buffer)), (1000 : GoInt));
	var _b1 = newWriterSize(Go.asInterface(_b), (1000 : GoInt));
	if (_b1 != (_b)) {
		_t.error(Go.toInterface(Go.str("NewWriterSize did not detect underlying Writer")));
	};
	var _b2 = newWriterSize(Go.asInterface(_b), (2000 : GoInt));
	if (_b2 == (_b)) {
		_t.error(Go.toInterface(Go.str("NewWriterSize did not enlarge buffer")));
	};
}

function testWriteString(_t:Ref<stdgo.testing.Testing.T>):Void {
	{};
	var _buf = ({} : stdgo.bytes.Bytes.Buffer);
	var _b = newWriterSize(Go.asInterface(_buf), (8 : GoInt));
	_b.writeString(Go.str("0"));
	_b.writeString(Go.str("123456"));
	_b.writeString(Go.str("7890"));
	_b.writeString(Go.str("abcdefghijklmnopqrstuvwxy"));
	_b.writeString(Go.str("z"));
	{
		var _err:Error = _b.flush();
		if (_err != null) {
			_t.error(Go.toInterface(Go.str("WriteString")), Go.toInterface(_err));
		};
	};
	var _s:GoString = Go.str("01234567890abcdefghijklmnopqrstuvwxyz");
	if ((_buf.bytes() : GoString) != (_s)) {
		_t.errorf(Go.str("WriteString wants %q gets %q"), Go.toInterface(_s), Go.toInterface((_buf.bytes() : GoString)));
	};
}

function testWriteStringStringWriter(_t:Ref<stdgo.testing.Testing.T>):Void {
	{};
	{
		var _tw = ((new stdgo.bufio_test.Bufio_test.T_teststringwriter() : stdgo.bufio_test.Bufio_test.T_teststringwriter) : Ref<stdgo.bufio_test.Bufio_test.T_teststringwriter>);
		var _b = newWriterSize(Go.asInterface(_tw), (8 : GoInt));
		_b.writeString(Go.str("1234"));
		_tw._check(_t, Go.str(), Go.str());
		_b.writeString(Go.str("56789012"));
		_tw._check(_t, Go.str("12345678"), Go.str());
		_b.flush();
		_tw._check(_t, Go.str("123456789012"), Go.str());
	};
	{
		var _tw = ((new stdgo.bufio_test.Bufio_test.T_teststringwriter() : stdgo.bufio_test.Bufio_test.T_teststringwriter) : Ref<stdgo.bufio_test.Bufio_test.T_teststringwriter>);
		var _b = newWriterSize(Go.asInterface(_tw), (8 : GoInt));
		_b.writeString(Go.str("123456789"));
		_tw._check(_t, Go.str(), Go.str("123456789"));
	};
	{
		var _tw = ((new stdgo.bufio_test.Bufio_test.T_teststringwriter() : stdgo.bufio_test.Bufio_test.T_teststringwriter) : Ref<stdgo.bufio_test.Bufio_test.T_teststringwriter>);
		var _b = newWriterSize(Go.asInterface(_tw), (8 : GoInt));
		_b.writeString(Go.str("abc"));
		_tw._check(_t, Go.str(), Go.str());
		_b.writeString(Go.str("123456789012345"));
		_tw._check(_t, Go.str("abc12345"), Go.str("6789012345"));
	};
	{
		var _tw = ((new stdgo.bufio_test.Bufio_test.T_teststringwriter() : stdgo.bufio_test.Bufio_test.T_teststringwriter) : Ref<stdgo.bufio_test.Bufio_test.T_teststringwriter>);
		var _b = newWriterSize(Go.asInterface(_tw), (8 : GoInt));
		_b.write((Go.str("abc") : Slice<GoByte>));
		_tw._check(_t, Go.str(), Go.str());
		_b.writeString(Go.str("123456789012345"));
		_tw._check(_t, Go.str("abc12345"), Go.str("6789012345"));
	};
}

function testBufferFull(_t:Ref<stdgo.testing.Testing.T>):Void {
	{};
	var _buf = newReaderSize(Go.asInterface(stdgo.strings.Strings.newReader(Go.str("And now, hello, world! It is the time for all good men to come to the aid of their party"))),
		(16 : GoInt));
	var __tmp__ = _buf.readSlice((33 : GoUInt8)),
		_line:Slice<GoUInt8> = __tmp__._0,
		_err:Error = __tmp__._1;
	if (((_line : GoString) != Go.str("And now, hello, ")) || (Go.toInterface(_err) != Go.toInterface(errBufferFull))) {
		_t.errorf(Go.str("first ReadSlice(,) = %q, %v"), Go.toInterface(_line), Go.toInterface(_err));
	};
	{
		var __tmp__ = _buf.readSlice((33 : GoUInt8));
		_line = __tmp__._0;
		_err = __tmp__._1;
	};
	if (((_line : GoString) != Go.str("world!")) || (_err != null)) {
		_t.errorf(Go.str("second ReadSlice(,) = %q, %v"), Go.toInterface(_line), Go.toInterface(_err));
	};
}

function testPeek(_t:Ref<stdgo.testing.Testing.T>):Void {
	var _p = new Slice<GoUInt8>((10 : GoInt).toBasic(), 0, ...[for (i in 0...(10 : GoInt).toBasic()) (0 : GoUInt8)]);
	var _buf = newReaderSize(Go.asInterface(stdgo.strings.Strings.newReader(Go.str("abcdefghijklmnop"))), (16 : GoInt));
	{
		var __tmp__ = _buf.peek((1 : GoInt)),
			_s:Slice<GoUInt8> = __tmp__._0,
			_err:Error = __tmp__._1;
		if (((_s : GoString) != Go.str("a")) || (_err != null)) {
			_t.fatalf(Go.str("want %q got %q, err=%v"), Go.toInterface(Go.str("a")), Go.toInterface((_s : GoString)), Go.toInterface(_err));
		};
	};
	{
		var __tmp__ = _buf.peek((4 : GoInt)),
			_s:Slice<GoUInt8> = __tmp__._0,
			_err:Error = __tmp__._1;
		if (((_s : GoString) != Go.str("abcd")) || (_err != null)) {
			_t.fatalf(Go.str("want %q got %q, err=%v"), Go.toInterface(Go.str("abcd")), Go.toInterface((_s : GoString)), Go.toInterface(_err));
		};
	};
	{
		var __tmp__ = _buf.peek((-1 : GoInt)),
			_0:Slice<GoUInt8> = __tmp__._0,
			_err:Error = __tmp__._1;
		if (Go.toInterface(_err) != (Go.toInterface(errNegativeCount))) {
			_t.fatalf(Go.str("want ErrNegativeCount got %v"), Go.toInterface(_err));
		};
	};
	{
		var __tmp__ = _buf.peek((32 : GoInt)),
			_s:Slice<GoUInt8> = __tmp__._0,
			_err:Error = __tmp__._1;
		if (((_s : GoString) != Go.str("abcdefghijklmnop")) || (Go.toInterface(_err) != Go.toInterface(errBufferFull))) {
			_t.fatalf(Go.str("want %q, ErrBufFull got %q, err=%v"), Go.toInterface(Go.str("abcdefghijklmnop")), Go.toInterface((_s : GoString)),
				Go.toInterface(_err));
		};
	};
	{
		var __tmp__ = _buf.read((_p.__slice__((0 : GoInt), (3 : GoInt)) : Slice<GoUInt8>)),
			_1:GoInt = __tmp__._0,
			_err:Error = __tmp__._1;
		if ((((_p.__slice__((0 : GoInt), (3 : GoInt)) : Slice<GoUInt8>) : GoString) != Go.str("abc")) || (_err != null)) {
			_t.fatalf(Go.str("want %q got %q, err=%v"), Go.toInterface(Go.str("abc")),
				Go.toInterface(((_p.__slice__((0 : GoInt), (3 : GoInt)) : Slice<GoUInt8>) : GoString)), Go.toInterface(_err));
		};
	};
	{
		var __tmp__ = _buf.peek((1 : GoInt)),
			_s:Slice<GoUInt8> = __tmp__._0,
			_err:Error = __tmp__._1;
		if (((_s : GoString) != Go.str("d")) || (_err != null)) {
			_t.fatalf(Go.str("want %q got %q, err=%v"), Go.toInterface(Go.str("d")), Go.toInterface((_s : GoString)), Go.toInterface(_err));
		};
	};
	{
		var __tmp__ = _buf.peek((2 : GoInt)),
			_s:Slice<GoUInt8> = __tmp__._0,
			_err:Error = __tmp__._1;
		if (((_s : GoString) != Go.str("de")) || (_err != null)) {
			_t.fatalf(Go.str("want %q got %q, err=%v"), Go.toInterface(Go.str("de")), Go.toInterface((_s : GoString)), Go.toInterface(_err));
		};
	};
	{
		var __tmp__ = _buf.read((_p.__slice__((0 : GoInt), (3 : GoInt)) : Slice<GoUInt8>)),
			_2:GoInt = __tmp__._0,
			_err:Error = __tmp__._1;
		if ((((_p.__slice__((0 : GoInt), (3 : GoInt)) : Slice<GoUInt8>) : GoString) != Go.str("def")) || (_err != null)) {
			_t.fatalf(Go.str("want %q got %q, err=%v"), Go.toInterface(Go.str("def")),
				Go.toInterface(((_p.__slice__((0 : GoInt), (3 : GoInt)) : Slice<GoUInt8>) : GoString)), Go.toInterface(_err));
		};
	};
	{
		var __tmp__ = _buf.peek((4 : GoInt)),
			_s:Slice<GoUInt8> = __tmp__._0,
			_err:Error = __tmp__._1;
		if (((_s : GoString) != Go.str("ghij")) || (_err != null)) {
			_t.fatalf(Go.str("want %q got %q, err=%v"), Go.toInterface(Go.str("ghij")), Go.toInterface((_s : GoString)), Go.toInterface(_err));
		};
	};
	{
		var __tmp__ = _buf.read((_p.__slice__((0 : GoInt)) : Slice<GoUInt8>)),
			_3:GoInt = __tmp__._0,
			_err:Error = __tmp__._1;
		if ((((_p.__slice__((0 : GoInt)) : Slice<GoUInt8>) : GoString) != Go.str("ghijklmnop")) || (_err != null)) {
			_t.fatalf(Go.str("want %q got %q, err=%v"), Go.toInterface(Go.str("ghijklmnop")),
				Go.toInterface(((_p.__slice__((0 : GoInt), (16 : GoInt)) : Slice<GoUInt8>) : GoString)), Go.toInterface(_err));
		};
	};
	{
		var __tmp__ = _buf.peek((0 : GoInt)),
			_s:Slice<GoUInt8> = __tmp__._0,
			_err:Error = __tmp__._1;
		if (((_s : GoString) != Go.str()) || (_err != null)) {
			_t.fatalf(Go.str("want %q got %q, err=%v"), Go.toInterface(Go.str()), Go.toInterface((_s : GoString)), Go.toInterface(_err));
		};
	};
	{
		var __tmp__ = _buf.peek((1 : GoInt)),
			_4:Slice<GoUInt8> = __tmp__._0,
			_err:Error = __tmp__._1;
		if (Go.toInterface(_err) != (Go.toInterface(stdgo.io.Io.eof))) {
			_t.fatalf(Go.str("want EOF got %v"), Go.toInterface(_err));
		};
	};
	_buf = newReaderSize(Go.asInterface((Go.str("abcd") : T_dataAndEOFReader)), (32 : GoInt));
	{
		var __tmp__ = _buf.peek((2 : GoInt)),
			_s:Slice<GoUInt8> = __tmp__._0,
			_err:Error = __tmp__._1;
		if (((_s : GoString) != Go.str("ab")) || (_err != null)) {
			_t.errorf(Go.str("Peek(2) on \"abcd\", EOF = %q, %v; want \"ab\", nil"), Go.toInterface((_s : GoString)), Go.toInterface(_err));
		};
	};
	{
		var __tmp__ = _buf.peek((4 : GoInt)),
			_s:Slice<GoUInt8> = __tmp__._0,
			_err:Error = __tmp__._1;
		if (((_s : GoString) != Go.str("abcd")) || (_err != null)) {
			_t.errorf(Go.str("Peek(4) on \"abcd\", EOF = %q, %v; want \"abcd\", nil"), Go.toInterface((_s : GoString)), Go.toInterface(_err));
		};
	};
	{
		var __tmp__ = _buf.read((_p.__slice__((0 : GoInt), (5 : GoInt)) : Slice<GoUInt8>)),
			_n:GoInt = __tmp__._0,
			_err:Error = __tmp__._1;
		if ((((_p.__slice__((0 : GoInt), _n) : Slice<GoUInt8>) : GoString) != Go.str("abcd")) || (_err != null)) {
			_t.fatalf(Go.str("Read after peek = %q, %v; want abcd, EOF"), Go.toInterface((_p.__slice__((0 : GoInt), _n) : Slice<GoUInt8>)),
				Go.toInterface(_err));
		};
	};
	{
		var __tmp__ = _buf.read((_p.__slice__((0 : GoInt), (1 : GoInt)) : Slice<GoUInt8>)),
			_n:GoInt = __tmp__._0,
			_err:Error = __tmp__._1;
		if ((((_p.__slice__((0 : GoInt), _n) : Slice<GoUInt8>) : GoString) != Go.str())
			|| (Go.toInterface(_err) != Go.toInterface(stdgo.io.Io.eof))) {
			_t.fatalf(Go.str("second Read after peek = %q, %v; want \"\", EOF"), Go.toInterface((_p.__slice__((0 : GoInt), _n) : Slice<GoUInt8>)),
				Go.toInterface(_err));
		};
	};
}

function testPeekThenUnreadRune(_t:Ref<stdgo.testing.Testing.T>):Void {
	var _r = newReader(Go.asInterface(stdgo.strings.Strings.newReader(Go.str("x"))));
	_r.readRune();
	_r.peek((1 : GoInt));
	_r.unreadRune();
	_r.readRune();
}

function _testReadLine(_t:Ref<stdgo.testing.Testing.T>, _input:Slice<GoByte>):Void {
	{
		var _stride:GoInt = (1 : GoInt);
		Go.cfor(_stride < (2:GoInt), _stride++, {
			var _done:GoInt = (0 : GoInt);
			var _reader:stdgo.bufio_test.Bufio_test.T_testReader = (new stdgo.bufio_test.Bufio_test.T_testReader(_input,
				_stride) : stdgo.bufio_test.Bufio_test.T_testReader);
			var _l = newReaderSize(Go.asInterface((_reader : Ref<stdgo.bufio_test.Bufio_test.T_testReader>)), (_input.length) + (1 : GoInt));
			while (true) {
				var __tmp__ = _l.readLine(),
					_line:Slice<GoUInt8> = __tmp__._0,
					_isPrefix:Bool = __tmp__._1,
					_err:Error = __tmp__._2;
				if ((_line.length > (0 : GoInt)) && (_err != null)) {
					_t.errorf(Go.str("ReadLine returned both data and error: %s"), Go.toInterface(_err));
				};
				if (_isPrefix) {
					_t.errorf(Go.str("ReadLine returned prefix"));
				};
				if (_err != null) {
					if (Go.toInterface(_err) != (Go.toInterface(stdgo.io.Io.eof))) {
						_t.fatalf(Go.str("Got unknown error: %s"), Go.toInterface(_err));
					};
					break;
				};
				{
					var _want = (_testOutput.__slice__(_done, _done + (_line.length)) : Slice<GoUInt8>);
					if (!stdgo.bytes.Bytes.equal(_want, _line)) {
						_t.errorf(Go.str("Bad line at stride %d: want: %x got: %x"), Go.toInterface(_stride), Go.toInterface(_want), Go.toInterface(_line));
					};
				};
				_done = _done + ((_line.length));
			};
			if (_done != ((_testOutput.length))) {
				_t.errorf(Go.str("ReadLine didn\'t return everything: got: %d, want: %d (stride: %d)"), Go.toInterface(_done),
					Go.toInterface((_testOutput.length)), Go.toInterface(_stride));
			};
		});
	};
}

function testReadLine(_t:Ref<stdgo.testing.Testing.T>):Void {
	_testReadLine(_t, _testInput);
	_testReadLine(_t, _testInputrn);
}

function testLineTooLong(_t:Ref<stdgo.testing.Testing.T>):Void {
	var _data = new Slice<GoUInt8>((0 : GoInt).toBasic(), 0, ...[for (i in 0...(0 : GoInt).toBasic()) (0 : GoUInt8)]);
	{
		var _i:GoInt = (0 : GoInt);
		Go.cfor(_i < (40:GoInt), _i++, {
			_data = _data.__appendref__((48 : GoUInt8) + (_i % (10 : GoInt) : GoByte));
		});
	};
	var _buf = stdgo.bytes.Bytes.newReader(_data);
	var _l = newReaderSize(Go.asInterface(_buf), (16 : GoInt));
	var __tmp__ = _l.readLine(),
		_line:Slice<GoUInt8> = __tmp__._0,
		_isPrefix:Bool = __tmp__._1,
		_err:Error = __tmp__._2;
	if ((!_isPrefix || !stdgo.bytes.Bytes.equal(_line, (_data.__slice__(0, (16 : GoInt)) : Slice<GoUInt8>))) || (_err != null)) {
		_t.errorf(Go.str("bad result for first line: got %q want %q %v"), Go.toInterface(_line),
			Go.toInterface((_data.__slice__(0, (16 : GoInt)) : Slice<GoUInt8>)), Go.toInterface(_err));
	};
	_data = (_data.__slice__((_line.length)) : Slice<GoUInt8>);
	{
		var __tmp__ = _l.readLine();
		_line = __tmp__._0;
		_isPrefix = __tmp__._1;
		_err = __tmp__._2;
	};
	if ((!_isPrefix || !stdgo.bytes.Bytes.equal(_line, (_data.__slice__(0, (16 : GoInt)) : Slice<GoUInt8>))) || (_err != null)) {
		_t.errorf(Go.str("bad result for second line: got %q want %q %v"), Go.toInterface(_line),
			Go.toInterface((_data.__slice__(0, (16 : GoInt)) : Slice<GoUInt8>)), Go.toInterface(_err));
	};
	_data = (_data.__slice__((_line.length)) : Slice<GoUInt8>);
	{
		var __tmp__ = _l.readLine();
		_line = __tmp__._0;
		_isPrefix = __tmp__._1;
		_err = __tmp__._2;
	};
	if ((_isPrefix || !stdgo.bytes.Bytes.equal(_line, (_data.__slice__(0, (8 : GoInt)) : Slice<GoUInt8>))) || (_err != null)) {
		_t.errorf(Go.str("bad result for third line: got %q want %q %v"), Go.toInterface(_line),
			Go.toInterface((_data.__slice__(0, (8 : GoInt)) : Slice<GoUInt8>)), Go.toInterface(_err));
	};
	{
		var __tmp__ = _l.readLine();
		_line = __tmp__._0;
		_isPrefix = __tmp__._1;
		_err = __tmp__._2;
	};
	if (_isPrefix || (_err == null)) {
		_t.errorf(Go.str("expected no more lines: %x %s"), Go.toInterface(_line), Go.toInterface(_err));
	};
}

function testReadAfterLines(_t:Ref<stdgo.testing.Testing.T>):Void {
	var _line1:GoString = Go.str("this is line1");
	var _restData:GoString = Go.str("this is line2\nthis is line 3\n");
	var _inbuf = stdgo.bytes.Bytes.newReader(((_line1 + Go.str("\n")) + _restData : Slice<GoByte>));
	var _outbuf = ({} : stdgo.bytes.Bytes.Buffer);
	var _maxLineLength:GoInt = (_line1.length) + (_restData.length / (2 : GoInt));
	var _l = newReaderSize(Go.asInterface(_inbuf), _maxLineLength);
	var __tmp__ = _l.readLine(),
		_line:Slice<GoUInt8> = __tmp__._0,
		_isPrefix:Bool = __tmp__._1,
		_err:Error = __tmp__._2;
	if ((_isPrefix || (_err != null)) || ((_line : GoString) != _line1)) {
		_t.errorf(Go.str("bad result for first line: isPrefix=%v err=%v line=%q"), Go.toInterface(_isPrefix), Go.toInterface(_err),
			Go.toInterface((_line : GoString)));
	};
	var __tmp__ = stdgo.io.Io.copy(Go.asInterface(_outbuf), Go.asInterface(_l)),
		_n:GoInt64 = __tmp__._0,
		_err:Error = __tmp__._1;
	if (((_n : GoInt) != (_restData.length)) || (_err != null)) {
		_t.errorf(Go.str("bad result for Read: n=%d err=%v"), Go.toInterface(_n), Go.toInterface(_err));
	};
	if ((_outbuf.string() : GoString) != (_restData)) {
		_t.errorf(Go.str("bad result for Read: got %q; expected %q"), Go.toInterface((_outbuf.string() : GoString)), Go.toInterface(_restData));
	};
}

function testReadEmptyBuffer(_t:Ref<stdgo.testing.Testing.T>):Void {
	var _l = newReaderSize(Go.asInterface(({} : stdgo.bytes.Bytes.Buffer)), (16 : GoInt));
	var __tmp__ = _l.readLine(),
		_line:Slice<GoUInt8> = __tmp__._0,
		_isPrefix:Bool = __tmp__._1,
		_err:Error = __tmp__._2;
	if (Go.toInterface(_err) != (Go.toInterface(stdgo.io.Io.eof))) {
		_t.errorf(Go.str("expected EOF from ReadLine, got \'%s\' %t %s"), Go.toInterface(_line), Go.toInterface(_isPrefix), Go.toInterface(_err));
	};
}

function testLinesAfterRead(_t:Ref<stdgo.testing.Testing.T>):Void {
	var _l = newReaderSize(Go.asInterface(stdgo.bytes.Bytes.newReader((Go.str("foo") : Slice<GoByte>))), (16 : GoInt));
	var __tmp__ = stdgo.io.Io.readAll(Go.asInterface(_l)),
		_0:Slice<GoUInt8> = __tmp__._0,
		_err:Error = __tmp__._1;
	if (_err != null) {
		_t.error(Go.toInterface(_err));
		return;
	};
	var __tmp__ = _l.readLine(),
		_line:Slice<GoUInt8> = __tmp__._0,
		_isPrefix:Bool = __tmp__._1,
		_err:Error = __tmp__._2;
	if (Go.toInterface(_err) != (Go.toInterface(stdgo.io.Io.eof))) {
		_t.errorf(Go.str("expected EOF from ReadLine, got \'%s\' %t %s"), Go.toInterface(_line), Go.toInterface(_isPrefix), Go.toInterface(_err));
	};
}

function testReadLineNonNilLineOrError(_t:Ref<stdgo.testing.Testing.T>):Void {
	var _r = newReader(Go.asInterface(stdgo.strings.Strings.newReader(Go.str("line 1\n"))));
	{
		var _i:GoInt = (0 : GoInt);
		Go.cfor(_i < (2:GoInt), _i++, {
			var __tmp__ = _r.readLine(),
				_l:Slice<GoUInt8> = __tmp__._0,
				_0:Bool = __tmp__._1,
				_err:Error = __tmp__._2;
			if ((_l != null) && (_err != null)) {
				_t.fatalf(Go.str("on line %d/2; ReadLine=%#v, %v; want non-nil line or Error, but not both"), Go.toInterface(_i + (1 : GoInt)),
					Go.toInterface(_l), Go.toInterface(_err));
			};
		});
	};
}

function testReadLineNewlines(_t:Ref<stdgo.testing.Testing.T>):Void {
	for (_0 => _e in _readLineNewlinesTests) {
		_testReadLineNewlines(_t, _e._input, _e._expect);
	};
}

function _testReadLineNewlines(_t:Ref<stdgo.testing.Testing.T>, _input:GoString, _expect:Slice<T_readLineResult>):Void {
	var _b = newReaderSize(Go.asInterface(stdgo.strings.Strings.newReader(_input)), (16 : GoInt));
	for (_i => _e in _expect) {
		var __tmp__ = _b.readLine(),
			_line:Slice<GoUInt8> = __tmp__._0,
			_isPrefix:Bool = __tmp__._1,
			_err:Error = __tmp__._2;
		if (!stdgo.bytes.Bytes.equal(_line, _e._line)) {
			_t.errorf(Go.str("%q call %d, line == %q, want %q"), Go.toInterface(_input), Go.toInterface(_i), Go.toInterface(_line), Go.toInterface(_e._line));
			return;
		};
		if (_isPrefix != (_e._isPrefix)) {
			_t.errorf(Go.str("%q call %d, isPrefix == %v, want %v"), Go.toInterface(_input), Go.toInterface(_i), Go.toInterface(_isPrefix),
				Go.toInterface(_e._isPrefix));
			return;
		};
		if (Go.toInterface(_err) != (Go.toInterface(_e._err))) {
			_t.errorf(Go.str("%q call %d, err == %v, want %v"), Go.toInterface(_input), Go.toInterface(_i), Go.toInterface(_err), Go.toInterface(_e._err));
			return;
		};
	};
}

function _createTestInput(_n:GoInt):Slice<GoByte> {
	var _input = new Slice<GoUInt8>((_n : GoInt).toBasic(), 0, ...[for (i in 0...(_n : GoInt).toBasic()) (0 : GoUInt8)]);
	for (_i in 0..._input.length.toBasic()) {
		_input[(_i : GoInt)] = (_i % (251 : GoInt) : GoByte);
		if (_i % (101 : GoInt) == ((0 : GoInt))) {
			_input[(_i : GoInt)] = _input[(_i : GoInt)] ^ ((_i / (101 : GoInt) : GoByte));
		};
	};
	return _input;
}

function testReaderWriteTo(_t:Ref<stdgo.testing.Testing.T>):Void {
	var _input = _createTestInput((8192 : GoInt));
	var _r = newReader(Go.asInterface((new stdgo.bufio_test.Bufio_test.T_onlyReader(Go.asInterface(stdgo.bytes.Bytes.newReader(_input))) : stdgo.bufio_test.Bufio_test.T_onlyReader)));
	var _w = ({} : stdgo.bytes.Bytes.Buffer);
	{
		var __tmp__ = _r.writeTo(Go.asInterface(_w)),
			_n:GoInt64 = __tmp__._0,
			_err:Error = __tmp__._1;
		if ((_err != null) || (_n != (_input.length : GoInt64))) {
			_t.fatalf(Go.str("r.WriteTo(w) = %d, %v, want %d, nil"), Go.toInterface(_n), Go.toInterface(_err), Go.toInterface((_input.length)));
		};
	};
	for (_i => _val in _w.bytes()) {
		if (_val != (_input[(_i : GoInt)])) {
			_t.errorf(Go.str("after write: out[%d] = %#x, want %#x"), Go.toInterface(_i), Go.toInterface(_val), Go.toInterface(_input[(_i : GoInt)]));
		};
	};
}

function testReaderWriteToErrors(_t:Ref<stdgo.testing.Testing.T>):Void {
	for (_i => _rw in _errorWriterToTests) {
		var _r = newReader(Go.asInterface(_rw));
		{
			var __tmp__ = _r.writeTo(Go.asInterface(_rw)),
				_0:GoInt64 = __tmp__._0,
				_err:Error = __tmp__._1;
			if (Go.toInterface(_err) != (Go.toInterface(_rw._expected))) {
				_t.errorf(Go.str("r.WriteTo(errorWriterToTests[%d]) = _, %v, want _,%v"), Go.toInterface(_i), Go.toInterface(_err),
					Go.toInterface(_rw._expected));
			};
		};
	};
}

function testWriterReadFrom(_t:Ref<stdgo.testing.Testing.T>):Void {
	var _ws = (new Slice<stdgo.io.Io.Writer->stdgo.io.Io.Writer>(0, 0, function(_w:stdgo.io.Io.Writer):stdgo.io.Io.Writer {
		return Go.asInterface((new stdgo.bufio_test.Bufio_test.T_onlyWriter(_w) : stdgo.bufio_test.Bufio_test.T_onlyWriter));
	}, function(_w:stdgo.io.Io.Writer):stdgo.io.Io.Writer {
		return _w;
	}) : Slice<stdgo.io.Io.Writer->stdgo.io.Io.Writer>);
	var _rs = (new Slice<stdgo.io.Io.Reader->stdgo.io.Io.Reader>(0, 0, stdgo.testing.iotest.Iotest.dataErrReader,
		function(_r:stdgo.io.Io.Reader):stdgo.io.Io.Reader {
			return _r;
		}) : Slice<stdgo.io.Io.Reader->stdgo.io.Io.Reader>);
	for (_ri => _rfunc in _rs) {
		for (_wi => _wfunc in _ws) {
			var _input = _createTestInput((8192 : GoInt));
			var _b = ({} : stdgo.bytes.Bytes.Buffer);
			var _w = newWriter(_wfunc(Go.asInterface(_b)));
			var _r:stdgo.io.Io.Reader = _rfunc(Go.asInterface(stdgo.bytes.Bytes.newReader(_input)));
			{
				var __tmp__ = _w.readFrom(_r),
					_n:GoInt64 = __tmp__._0,
					_err:Error = __tmp__._1;
				if ((_err != null) || (_n != (_input.length : GoInt64))) {
					_t.errorf(Go.str("ws[%d],rs[%d]: w.ReadFrom(r) = %d, %v, want %d, nil"), Go.toInterface(_wi), Go.toInterface(_ri), Go.toInterface(_n),
						Go.toInterface(_err), Go.toInterface((_input.length)));
					continue;
				};
			};
			{
				var _err:Error = _w.flush();
				if (_err != null) {
					_t.errorf(Go.str("Flush returned %v"), Go.toInterface(_err));
					continue;
				};
			};
			{
				var _0:GoString = (_b.string() : GoString),
					_1:GoString = (_input : GoString),
					_want:GoString = _1,
					_got:GoString = _0;
				if (_got != (_want)) {
					_t.errorf(Go.str("ws[%d], rs[%d]:\ngot  %q\nwant %q\n"), Go.toInterface(_wi), Go.toInterface(_ri), Go.toInterface(_got),
						Go.toInterface(_want));
				};
			};
		};
	};
}

function testWriterReadFromErrors(_t:Ref<stdgo.testing.Testing.T>):Void {
	for (_i => _rw in _errorReaderFromTests) {
		var _w = newWriter(Go.asInterface(_rw));
		{
			var __tmp__ = _w.readFrom(Go.asInterface(_rw)),
				_0:GoInt64 = __tmp__._0,
				_err:Error = __tmp__._1;
			if (Go.toInterface(_err) != (Go.toInterface(_rw._expected))) {
				_t.errorf(Go.str("w.ReadFrom(errorReaderFromTests[%d]) = _, %v, want _,%v"), Go.toInterface(_i), Go.toInterface(_err),
					Go.toInterface(_rw._expected));
			};
		};
	};
}

/**
	// TestWriterReadFromCounts tests that using io.Copy to copy into a
	// bufio.Writer does not prematurely flush the buffer. For example, when
	// buffering writes to a network socket, excessive network writes should be
	// avoided.
**/
function testWriterReadFromCounts(_t:Ref<stdgo.testing.Testing.T>):Void {
	var _w0:T_writeCountingDiscard = ((0 : GoInt) : stdgo.bufio_test.Bufio_test.T_writeCountingDiscard);
	var _b0 = newWriterSize(Go.asInterface(Go.pointer(_w0)), (1234 : GoInt));
	_b0.writeString(stdgo.strings.Strings.repeat(Go.str("x"), (1000 : GoInt)));
	if (_w0 != ((0 : stdgo.bufio_test.Bufio_test.T_writeCountingDiscard))) {
		_t.fatalf(Go.str("write 1000 \'x\'s: got %d writes, want 0"), Go.toInterface(Go.asInterface(_w0)));
	};
	_b0.writeString(stdgo.strings.Strings.repeat(Go.str("x"), (200 : GoInt)));
	if (_w0 != ((0 : stdgo.bufio_test.Bufio_test.T_writeCountingDiscard))) {
		_t.fatalf(Go.str("write 1200 \'x\'s: got %d writes, want 0"), Go.toInterface(Go.asInterface(_w0)));
	};
	stdgo.io.Io.copy(Go.asInterface(_b0),
		Go.asInterface((new stdgo.bufio_test.Bufio_test.T_onlyReader(Go.asInterface(stdgo.strings.Strings.newReader(stdgo.strings.Strings.repeat(Go.str("x"),
			(30 : GoInt))))) : stdgo.bufio_test.Bufio_test.T_onlyReader)));
	if (_w0 != ((0 : stdgo.bufio_test.Bufio_test.T_writeCountingDiscard))) {
		_t.fatalf(Go.str("write 1230 \'x\'s: got %d writes, want 0"), Go.toInterface(Go.asInterface(_w0)));
	};
	stdgo.io.Io.copy(Go.asInterface(_b0),
		Go.asInterface((new stdgo.bufio_test.Bufio_test.T_onlyReader(Go.asInterface(stdgo.strings.Strings.newReader(stdgo.strings.Strings.repeat(Go.str("x"),
			(9 : GoInt))))) : stdgo.bufio_test.Bufio_test.T_onlyReader)));
	if (_w0 != ((1 : stdgo.bufio_test.Bufio_test.T_writeCountingDiscard))) {
		_t.fatalf(Go.str("write 1239 \'x\'s: got %d writes, want 1"), Go.toInterface(Go.asInterface(_w0)));
	};
	var _w1:T_writeCountingDiscard = ((0 : GoInt) : stdgo.bufio_test.Bufio_test.T_writeCountingDiscard);
	var _b1 = newWriterSize(Go.asInterface(Go.pointer(_w1)), (1234 : GoInt));
	_b1.writeString(stdgo.strings.Strings.repeat(Go.str("x"), (1200 : GoInt)));
	_b1.flush();
	if (_w1 != ((1 : stdgo.bufio_test.Bufio_test.T_writeCountingDiscard))) {
		_t.fatalf(Go.str("flush 1200 \'x\'s: got %d writes, want 1"), Go.toInterface(Go.asInterface(_w1)));
	};
	_b1.writeString(stdgo.strings.Strings.repeat(Go.str("x"), (89 : GoInt)));
	if (_w1 != ((1 : stdgo.bufio_test.Bufio_test.T_writeCountingDiscard))) {
		_t.fatalf(Go.str("write 1200 + 89 \'x\'s: got %d writes, want 1"), Go.toInterface(Go.asInterface(_w1)));
	};
	stdgo.io.Io.copy(Go.asInterface(_b1),
		Go.asInterface((new stdgo.bufio_test.Bufio_test.T_onlyReader(Go.asInterface(stdgo.strings.Strings.newReader(stdgo.strings.Strings.repeat(Go.str("x"),
			(700 : GoInt))))) : stdgo.bufio_test.Bufio_test.T_onlyReader)));
	if (_w1 != ((1 : stdgo.bufio_test.Bufio_test.T_writeCountingDiscard))) {
		_t.fatalf(Go.str("write 1200 + 789 \'x\'s: got %d writes, want 1"), Go.toInterface(Go.asInterface(_w1)));
	};
	stdgo.io.Io.copy(Go.asInterface(_b1),
		Go.asInterface((new stdgo.bufio_test.Bufio_test.T_onlyReader(Go.asInterface(stdgo.strings.Strings.newReader(stdgo.strings.Strings.repeat(Go.str("x"),
			(600 : GoInt))))) : stdgo.bufio_test.Bufio_test.T_onlyReader)));
	if (_w1 != ((2 : stdgo.bufio_test.Bufio_test.T_writeCountingDiscard))) {
		_t.fatalf(Go.str("write 1200 + 1389 \'x\'s: got %d writes, want 2"), Go.toInterface(Go.asInterface(_w1)));
	};
	_b1.flush();
	if (_w1 != ((3 : stdgo.bufio_test.Bufio_test.T_writeCountingDiscard))) {
		_t.fatalf(Go.str("flush 1200 + 1389 \'x\'s: got %d writes, want 3"), Go.toInterface(Go.asInterface(_w1)));
	};
}

function testNegativeRead(_t:Ref<stdgo.testing.Testing.T>):Void {
	var __deferstack__:Array<Void->Void> = [];
	var _b = newReader(Go.asInterface(Go.pointer(((0 : GoInt) : stdgo.bufio_test.Bufio_test.T_negativeReader))));
	try {
		__deferstack__.unshift(() -> {
			var a = function():Void {
				{
					final __type__ = ({
						final r = Go.recover_exception;
						Go.recover_exception = null;
						r;
					});
					if (__type__ == null) {
						var _err:AnyInterface = __type__ == null ? (null : AnyInterface) : __type__.__underlying__();
						_t.fatal(Go.toInterface(Go.str("read did not panic")));
					} else if (Go.typeEquals((__type__ : Error))) {
						var _err:Error = __type__ == null ? (null : Error) : __type__.__underlying__() == null ? (null : Error) : __type__ == null ? (null : Error) : __type__.__underlying__()
							.value;
						if (!stdgo.strings.Strings.contains(_err.error(), Go.str("reader returned negative count from Read"))) {
							_t.fatalf(Go.str("wrong panic: %v"), Go.toInterface(_err));
						};
					} else {
						var _err:AnyInterface = __type__ == null ? null : __type__.__underlying__();
						_t.fatalf(Go.str("unexpected panic value: %T(%v)"), _err, _err);
					};
				};
			};
			a();
		});
		_b.read(new Slice<GoUInt8>((100 : GoInt).toBasic(), 0, ...[for (i in 0...(100 : GoInt).toBasic()) (0 : GoUInt8)]));
		for (defer in __deferstack__) {
			defer();
		};
		{
			for (defer in __deferstack__) {
				defer();
			};
			if (Go.recover_exception != null)
				throw Go.recover_exception;
			return;
		};
	} catch (__exception__) {
		if (!(__exception__.native is AnyInterfaceData))
			throw __exception__;
		Go.recover_exception = __exception__.native;
		for (defer in __deferstack__) {
			defer();
		};
		if (Go.recover_exception != null)
			throw Go.recover_exception;
		return;
	};
}

function testReaderClearError(_t:Ref<stdgo.testing.Testing.T>):Void {
	var _r = ((new stdgo.bufio_test.Bufio_test.T_errorThenGoodReader() : stdgo.bufio_test.Bufio_test.T_errorThenGoodReader) : Ref<stdgo.bufio_test.Bufio_test.T_errorThenGoodReader>);
	var _b = newReader(Go.asInterface(_r));
	var _buf = new Slice<GoUInt8>((1 : GoInt).toBasic(), 0, ...[for (i in 0...(1 : GoInt).toBasic()) (0 : GoUInt8)]);
	{
		var __tmp__ = _b.read((null : Slice<GoUInt8>)),
			_0:GoInt = __tmp__._0,
			_err:Error = __tmp__._1;
		if (_err != null) {
			_t.fatalf(Go.str("1st nil Read = %v; want nil"), Go.toInterface(_err));
		};
	};
	{
		var __tmp__ = _b.read(_buf),
			_1:GoInt = __tmp__._0,
			_err:Error = __tmp__._1;
		if (Go.toInterface(_err) != (Go.toInterface(_errFake))) {
			_t.fatalf(Go.str("1st Read = %v; want errFake"), Go.toInterface(_err));
		};
	};
	{
		var __tmp__ = _b.read((null : Slice<GoUInt8>)),
			_2:GoInt = __tmp__._0,
			_err:Error = __tmp__._1;
		if (_err != null) {
			_t.fatalf(Go.str("2nd nil Read = %v; want nil"), Go.toInterface(_err));
		};
	};
	{
		var __tmp__ = _b.read(_buf),
			_3:GoInt = __tmp__._0,
			_err:Error = __tmp__._1;
		if (_err != null) {
			_t.fatalf(Go.str("3rd Read with buffer = %v; want nil"), Go.toInterface(_err));
		};
	};
	if (_r._nread != ((2 : GoInt))) {
		_t.errorf(Go.str("num reads = %d; want 2"), Go.toInterface(_r._nread));
	};
}

/**
	// Test for golang.org/issue/5947
**/
function testWriterReadFromWhileFull(_t:Ref<stdgo.testing.Testing.T>):Void {
	var _buf = ({} : stdgo.bytes.Bytes.Buffer);
	var _w = newWriterSize(Go.asInterface(_buf), (10 : GoInt));
	var __tmp__ = _w.write((Go.str("0123456789") : Slice<GoByte>)),
		_n:GoInt = __tmp__._0,
		_err:Error = __tmp__._1;
	if ((_n != (10 : GoInt)) || (_err != null)) {
		_t.fatalf(Go.str("Write returned (%v, %v), want (10, nil)"), Go.toInterface(_n), Go.toInterface(_err));
	};
	var __tmp__ = _w.readFrom(Go.asInterface(stdgo.strings.Strings.newReader(Go.str("abcdef")))),
		_n2:GoInt64 = __tmp__._0,
		_err:Error = __tmp__._1;
	if ((_n2 != ("6" : GoInt64)) || (_err != null)) {
		_t.fatalf(Go.str("ReadFrom returned (%v, %v), want (6, nil)"), Go.toInterface(_n2), Go.toInterface(_err));
	};
}

/**
	// Test for golang.org/issue/7611
**/
function testWriterReadFromUntilEOF(_t:Ref<stdgo.testing.Testing.T>):Void {
	var _buf = ({} : stdgo.bytes.Bytes.Buffer);
	var _w = newWriterSize(Go.asInterface(_buf), (5 : GoInt));
	var __tmp__ = _w.write((Go.str("0123") : Slice<GoByte>)),
		_n:GoInt = __tmp__._0,
		_err:Error = __tmp__._1;
	if ((_n != (4 : GoInt)) || (_err != null)) {
		_t.fatalf(Go.str("Write returned (%v, %v), want (4, nil)"), Go.toInterface(_n), Go.toInterface(_err));
	};
	var _r = (({_r: Go.asInterface(stdgo.strings.Strings.newReader(Go.str("abcd"))),
		_n: (3 : GoInt)} : stdgo.bufio_test.Bufio_test.T_emptyThenNonEmptyReader) : Ref<stdgo.bufio_test.Bufio_test.T_emptyThenNonEmptyReader>);
	var __tmp__ = _w.readFrom(Go.asInterface(_r)),
		_n2:GoInt64 = __tmp__._0,
		_err:Error = __tmp__._1;
	if ((_n2 != ("4" : GoInt64)) || (_err != null)) {
		_t.fatalf(Go.str("ReadFrom returned (%v, %v), want (4, nil)"), Go.toInterface(_n2), Go.toInterface(_err));
	};
	_w.flush();
	{
		var _0:GoString = (_buf.bytes() : GoString),
			_1:GoString = Go.str("0123abcd"),
			_want:GoString = _1,
			_got:GoString = _0;
		if (_got != (_want)) {
			_t.fatalf(Go.str("buf.Bytes() returned %q, want %q"), Go.toInterface(_got), Go.toInterface(_want));
		};
	};
}

function testWriterReadFromErrNoProgress(_t:Ref<stdgo.testing.Testing.T>):Void {
	var _buf = ({} : stdgo.bytes.Bytes.Buffer);
	var _w = newWriterSize(Go.asInterface(_buf), (5 : GoInt));
	var __tmp__ = _w.write((Go.str("0123") : Slice<GoByte>)),
		_n:GoInt = __tmp__._0,
		_err:Error = __tmp__._1;
	if ((_n != (4 : GoInt)) || (_err != null)) {
		_t.fatalf(Go.str("Write returned (%v, %v), want (4, nil)"), Go.toInterface(_n), Go.toInterface(_err));
	};
	var _r = (({_r: Go.asInterface(stdgo.strings.Strings.newReader(Go.str("abcd"))),
		_n: (100 : GoInt)} : stdgo.bufio_test.Bufio_test.T_emptyThenNonEmptyReader) : Ref<stdgo.bufio_test.Bufio_test.T_emptyThenNonEmptyReader>);
	var __tmp__ = _w.readFrom(Go.asInterface(_r)),
		_n2:GoInt64 = __tmp__._0,
		_err:Error = __tmp__._1;
	if ((_n2 != ("0" : GoInt64)) || (Go.toInterface(_err) != Go.toInterface(stdgo.io.Io.errNoProgress))) {
		_t.fatalf(Go.str("buf.Bytes() returned (%v, %v), want (0, io.ErrNoProgress)"), Go.toInterface(_n2), Go.toInterface(_err));
	};
}

/**
	// Test that calling (*Writer).ReadFrom with a partially-filled buffer
	// fills the buffer before switching over to ReadFrom.
**/
function testWriterReadFromWithBufferedData(_t:Ref<stdgo.testing.Testing.T>):Void {
	{};
	var _input = _createTestInput((64 : GoInt));
	var _rfw = ((new stdgo.bufio_test.Bufio_test.T_readFromWriter() : stdgo.bufio_test.Bufio_test.T_readFromWriter) : Ref<stdgo.bufio_test.Bufio_test.T_readFromWriter>);
	var _w = newWriterSize(Go.asInterface(_rfw), (16 : GoInt));
	{};
	{
		var __tmp__ = _w.write((_input.__slice__(0, (8 : GoInt)) : Slice<GoUInt8>)),
			_n:GoInt = __tmp__._0,
			_err:Error = __tmp__._1;
		if ((_n != (8 : GoInt)) || (_err != null)) {
			_t.errorf(Go.str("w.Write(%v bytes) = %v, %v; want %v, nil"), Go.toInterface((8 : GoInt)), Go.toInterface(_n), Go.toInterface(_err),
				Go.toInterface((8 : GoInt)));
		};
	};
	var __tmp__ = _w.readFrom(Go.asInterface(stdgo.bytes.Bytes.newReader((_input.__slice__((8 : GoInt)) : Slice<GoUInt8>)))),
		_n:GoInt64 = __tmp__._0,
		_err:Error = __tmp__._1;
	{
		var _wantn:GoInt = ((_input.__slice__((8 : GoInt)) : Slice<GoUInt8>).length);
		if (((_n : GoInt) != _wantn) || (_err != null)) {
			_t.errorf(Go.str("io.Copy(w, %v bytes) = %v, %v; want %v, nil"), Go.toInterface(_wantn), Go.toInterface(_n), Go.toInterface(_err),
				Go.toInterface(_wantn));
		};
	};
	{
		var _err:Error = _w.flush();
		if (_err != null) {
			_t.errorf(Go.str("w.Flush() = %v, want nil"), Go.toInterface(_err));
		};
	};
	{
		var _0:GoInt = _rfw._writeBytes,
			_1:GoInt = (16 : GoInt),
			_want:GoInt = _1,
			_got:GoInt = _0;
		if (_got != (_want)) {
			_t.errorf(Go.str("wrote %v bytes with Write, want %v"), Go.toInterface(_got), Go.toInterface(_want));
		};
	};
	{
		var _0:GoInt = _rfw._readFromBytes,
			_1:GoInt = (_input.length) - (16 : GoInt),
			_want:GoInt = _1,
			_got:GoInt = _0;
		if (_got != (_want)) {
			_t.errorf(Go.str("wrote %v bytes with ReadFrom, want %v"), Go.toInterface(_got), Go.toInterface(_want));
		};
	};
}

function testReadZero(_t:Ref<stdgo.testing.Testing.T>):Void {
	for (_0 => _size in (new Slice<GoInt>(0, 0, (100 : GoInt), (2 : GoInt)) : Slice<GoInt>)) {
		_t.run(stdgo.fmt.Fmt.sprintf(Go.str("bufsize=%d"), Go.toInterface(_size)), function(_t:Ref<stdgo.testing.Testing.T>):Void {
			var _r:stdgo.io.Io.Reader = stdgo.io.Io.multiReader(Go.asInterface(stdgo.strings.Strings.newReader(Go.str("abc"))),
				Go.asInterface((({_r: Go.asInterface(stdgo.strings.Strings.newReader(Go.str("def"))),
					_n: (1 : GoInt)} : stdgo.bufio_test.Bufio_test.T_emptyThenNonEmptyReader) : Ref<stdgo.bufio_test.Bufio_test.T_emptyThenNonEmptyReader>)));
			var _br = newReaderSize(_r, _size);
			var _want:(GoString, Error) -> Void = function(_s:GoString, _wantErr:Error):Void {
				var _p = new Slice<GoUInt8>((50 : GoInt).toBasic(), 0, ...[for (i in 0...(50 : GoInt).toBasic()) (0 : GoUInt8)]);
				var __tmp__ = _br.read(_p), _n:GoInt = __tmp__._0, _err:Error = __tmp__._1;
				if (((Go.toInterface(_err) != Go.toInterface(_wantErr)) || (_n != (_s.length)))
					|| (((_p.__slice__(0, _n) : Slice<GoUInt8>) : GoString) != _s)) {
					_t.fatalf(Go.str("read(%d) = %q, %v, want %q, %v"), Go.toInterface((_p.length)),
						Go.toInterface(((_p.__slice__(0, _n) : Slice<GoUInt8>) : GoString)), Go.toInterface(_err), Go.toInterface(_s),
						Go.toInterface(_wantErr));
				};
				_t.logf(Go.str("read(%d) = %q, %v"), Go.toInterface((_p.length)), Go.toInterface(((_p.__slice__(0, _n) : Slice<GoUInt8>) : GoString)),
					Go.toInterface(_err));
			};
			_want(Go.str("abc"), (null : Error));
			_want(Go.str(), (null : Error));
			_want(Go.str("def"), (null : Error));
			_want(Go.str(), stdgo.io.Io.eof);
		});
	};
}

function testReaderReset(_t:Ref<stdgo.testing.Testing.T>):Void {
	var _r = newReader(Go.asInterface(stdgo.strings.Strings.newReader(Go.str("foo foo"))));
	var _buf = new Slice<GoUInt8>((3 : GoInt).toBasic(), 0, ...[for (i in 0...(3 : GoInt).toBasic()) (0 : GoUInt8)]);
	_r.read(_buf);
	if ((_buf : GoString) != (Go.str("foo"))) {
		_t.errorf(Go.str("buf = %q; want foo"), Go.toInterface(_buf));
	};
	_r.reset(Go.asInterface(stdgo.strings.Strings.newReader(Go.str("bar bar"))));
	var __tmp__ = stdgo.io.Io.readAll(Go.asInterface(_r)),
		_all:Slice<GoUInt8> = __tmp__._0,
		_err:Error = __tmp__._1;
	if (_err != null) {
		_t.fatal(Go.toInterface(_err));
	};
	if ((_all : GoString) != (Go.str("bar bar"))) {
		_t.errorf(Go.str("ReadAll = %q; want bar bar"), Go.toInterface(_all));
	};
	{
		var __tmp__ = (new Reader() : Reader);
		_r._buf = __tmp__._buf;
		_r._rd = __tmp__._rd;
		_r._r = __tmp__._r;
		_r._w = __tmp__._w;
		_r._err = __tmp__._err;
		_r._lastByte = __tmp__._lastByte;
		_r._lastRuneSize = __tmp__._lastRuneSize;
	};
	_r.reset(Go.asInterface(stdgo.strings.Strings.newReader(Go.str("bar bar"))));
	{
		var __tmp__ = stdgo.io.Io.readAll(Go.asInterface(_r));
		_all = __tmp__._0;
		_err = __tmp__._1;
	};
	if (_err != null) {
		_t.fatal(Go.toInterface(_err));
	};
	if ((_all : GoString) != (Go.str("bar bar"))) {
		_t.errorf(Go.str("ReadAll = %q; want bar bar"), Go.toInterface(_all));
	};
}

function testWriterReset(_t:Ref<stdgo.testing.Testing.T>):Void {
	var _0:stdgo.bytes.Bytes.Buffer = ({} : stdgo.bytes.Bytes.Buffer),
		_1:stdgo.bytes.Bytes.Buffer = ({} : stdgo.bytes.Bytes.Buffer),
		_2:stdgo.bytes.Bytes.Buffer = ({} : stdgo.bytes.Bytes.Buffer),
		_buf3:stdgo.bytes.Bytes.Buffer = _2,
		_buf2:stdgo.bytes.Bytes.Buffer = _1,
		_buf1:stdgo.bytes.Bytes.Buffer = _0;
	var _w = newWriter(Go.asInterface((_buf1 : Ref<stdgo.bytes.Bytes.Buffer>)));
	_w.writeString(Go.str("foo"));
	_w.reset(Go.asInterface((_buf2 : Ref<stdgo.bytes.Bytes.Buffer>)));
	_w.writeString(Go.str("bar"));
	_w.flush();
	if ((_buf1.string() : GoString) != (Go.str())) {
		_t.errorf(Go.str("buf1 = %q; want empty"), Go.toInterface((_buf1.string() : GoString)));
	};
	if ((_buf2.string() : GoString) != (Go.str("bar"))) {
		_t.errorf(Go.str("buf2 = %q; want bar"), Go.toInterface((_buf2.string() : GoString)));
	};
	{
		var __tmp__ = (new Writer() : Writer);
		_w._err = __tmp__._err;
		_w._buf = __tmp__._buf;
		_w._n = __tmp__._n;
		_w._wr = __tmp__._wr;
	};
	_w.reset(Go.asInterface((_buf3 : Ref<stdgo.bytes.Bytes.Buffer>)));
	_w.writeString(Go.str("bar"));
	_w.flush();
	if ((_buf1.string() : GoString) != (Go.str())) {
		_t.errorf(Go.str("buf1 = %q; want empty"), Go.toInterface((_buf1.string() : GoString)));
	};
	if ((_buf3.string() : GoString) != (Go.str("bar"))) {
		_t.errorf(Go.str("buf3 = %q; want bar"), Go.toInterface((_buf3.string() : GoString)));
	};
}

function testReaderDiscard(_t:Ref<stdgo.testing.Testing.T>):Void {
	var _tests = (new Slice<T__struct_1>(0, 0, ({
		_name: Go.str("normal case"),
		_r: Go.asInterface(stdgo.strings.Strings.newReader(Go.str("abcdefghijklmnopqrstuvwxyz"))),
		_bufSize: (0 : GoInt),
		_peekSize: (16 : GoInt),
		_n: (6 : GoInt),
		_want: (6 : GoInt),
		_wantErr: (null : Error),
		_wantBuffered: (10 : GoInt)
	} : T__struct_1), ({
		_name: Go.str("discard causing read"),
		_r: Go.asInterface(stdgo.strings.Strings.newReader(Go.str("abcdefghijklmnopqrstuvwxyz"))),
		_bufSize: (0 : GoInt),
		_peekSize: (0 : GoInt),
		_n: (6 : GoInt),
		_want: (6 : GoInt),
		_wantErr: (null : Error),
		_wantBuffered: (10 : GoInt)
		} : T__struct_1), ({
		_name: Go.str("discard all without peek"),
		_r: Go.asInterface(stdgo.strings.Strings.newReader(Go.str("abcdefghijklmnopqrstuvwxyz"))),
		_bufSize: (0 : GoInt),
		_peekSize: (0 : GoInt),
		_n: (26 : GoInt),
		_want: (26 : GoInt),
		_wantErr: (null : Error),
		_wantBuffered: (0 : GoInt)
		} : T__struct_1), ({
		_name: Go.str("discard more than end"),
		_r: Go.asInterface(stdgo.strings.Strings.newReader(Go.str("abcdefghijklmnopqrstuvwxyz"))),
		_bufSize: (0 : GoInt),
		_peekSize: (0 : GoInt),
		_n: (27 : GoInt),
		_want: (26 : GoInt),
		_wantErr: stdgo.io.Io.eof,
		_wantBuffered: (0 : GoInt)
		} : T__struct_1), ({
		_name: Go.str("fill error, discard less"),
		_r: _newScriptedReader(function(_p:Slice<GoByte>):{var _0:GoInt; var _1:Error;} {
			var _n:GoInt = (0 : GoInt), _err:Error = (null : Error);
			if ((_p.length) < (5 : GoInt)) {
				throw Go.toInterface(Go.str("unexpected small read"));
			};
			return {_0: (5 : GoInt), _1: stdgo.errors.Errors.new_(Go.str("5-then-error"))};
		}),
		_bufSize: (0 : GoInt),
		_peekSize: (0 : GoInt),
		_n: (4 : GoInt),
		_want: (4 : GoInt),
		_wantErr: (null : Error),
		_wantBuffered: (1 : GoInt)
		} : T__struct_1), ({
		_name: Go.str("fill error, discard equal"),
		_r: _newScriptedReader(function(_p:Slice<GoByte>):{var _0:GoInt; var _1:Error;} {
			var _n:GoInt = (0 : GoInt), _err:Error = (null : Error);
			if ((_p.length) < (5 : GoInt)) {
				throw Go.toInterface(Go.str("unexpected small read"));
			};
			return {_0: (5 : GoInt), _1: stdgo.errors.Errors.new_(Go.str("5-then-error"))};
		}),
		_bufSize: (0 : GoInt),
		_peekSize: (0 : GoInt),
		_n: (5 : GoInt),
		_want: (5 : GoInt),
		_wantErr: (null : Error),
		_wantBuffered: (0 : GoInt)
		} : T__struct_1), ({
		_name: Go.str("fill error, discard more"),
		_r: _newScriptedReader(function(_p:Slice<GoByte>):{var _0:GoInt; var _1:Error;} {
			var _n:GoInt = (0 : GoInt), _err:Error = (null : Error);
			if ((_p.length) < (5 : GoInt)) {
				throw Go.toInterface(Go.str("unexpected small read"));
			};
			return {_0: (5 : GoInt), _1: stdgo.errors.Errors.new_(Go.str("5-then-error"))};
		}),
		_bufSize: (0 : GoInt),
		_peekSize: (0 : GoInt),
		_n: (6 : GoInt),
		_want: (5 : GoInt),
		_wantErr: stdgo.errors.Errors.new_(Go.str("5-then-error")),
		_wantBuffered: (0 : GoInt)
		} : T__struct_1), ({
		_name: Go.str("discard zero"),
		_r: _newScriptedReader(),
		_bufSize: (0 : GoInt),
		_peekSize: (0 : GoInt),
		_n: (0 : GoInt),
		_want: (0 : GoInt),
		_wantErr: (null : Error),
		_wantBuffered: (0 : GoInt)
		} : T__struct_1), ({
		_name: Go.str("discard negative"),
		_r: _newScriptedReader(),
		_bufSize: (0 : GoInt),
		_peekSize: (0 : GoInt),
		_n: (-1 : GoInt),
		_want: (0 : GoInt),
		_wantErr: errNegativeCount,
		_wantBuffered: (0 : GoInt)
		} : T__struct_1)) : Slice<T__struct_1>);
	for (_0 => _tt in _tests) {
		var _br = newReaderSize(_tt._r, _tt._bufSize);
		if (_tt._peekSize > (0 : GoInt)) {
			var __tmp__ = _br.peek(_tt._peekSize),
				_peekBuf:Slice<GoUInt8> = __tmp__._0,
				_err:Error = __tmp__._1;
			if (_err != null) {
				_t.errorf(Go.str("%s: Peek(%d): %v"), Go.toInterface(_tt._name), Go.toInterface(_tt._peekSize), Go.toInterface(_err));
				continue;
			};
			if ((_peekBuf.length) != (_tt._peekSize)) {
				_t.errorf(Go.str("%s: len(Peek(%d)) = %v; want %v"), Go.toInterface(_tt._name), Go.toInterface(_tt._peekSize),
					Go.toInterface((_peekBuf.length)), Go.toInterface(_tt._peekSize));
				continue;
			};
		};
		var __tmp__ = _br.discard(_tt._n),
			_discarded:GoInt = __tmp__._0,
			_err:Error = __tmp__._1;
		{
			var _0:GoString = stdgo.fmt.Fmt.sprint(Go.toInterface(_err)),
				_1:GoString = stdgo.fmt.Fmt.sprint(Go.toInterface(_tt._wantErr)),
				_we:GoString = _1,
				_ge:GoString = _0;
			if ((_discarded != _tt._want) || (_ge != _we)) {
				_t.errorf(Go.str("%s: Discard(%d) = (%v, %v); want (%v, %v)"), Go.toInterface(_tt._name), Go.toInterface(_tt._n), Go.toInterface(_discarded),
					Go.toInterface(_ge), Go.toInterface(_tt._want), Go.toInterface(_we));
				continue;
			};
		};
		{
			var _bn:GoInt = _br.buffered();
			if (_bn != (_tt._wantBuffered)) {
				_t.errorf(Go.str("%s: after Discard, Buffered = %d; want %d"), Go.toInterface(_tt._name), Go.toInterface(_bn),
					Go.toInterface(_tt._wantBuffered));
			};
		};
	};
}

function testReaderSize(_t:Ref<stdgo.testing.Testing.T>):Void {
	{
		var _0:GoInt = newReader((null : stdgo.io.Io.Reader)).size(),
			_1:GoInt = (4096 : GoInt),
			_want:GoInt = _1,
			_got:GoInt = _0;
		if (_got != (_want)) {
			_t.errorf(Go.str("NewReader\'s Reader.Size = %d; want %d"), Go.toInterface(_got), Go.toInterface(_want));
		};
	};
	{
		var _0:GoInt = newReaderSize((null : stdgo.io.Io.Reader), (1234 : GoInt)).size(),
			_1:GoInt = (1234 : GoInt),
			_want:GoInt = _1,
			_got:GoInt = _0;
		if (_got != (_want)) {
			_t.errorf(Go.str("NewReaderSize\'s Reader.Size = %d; want %d"), Go.toInterface(_got), Go.toInterface(_want));
		};
	};
}

function testWriterSize(_t:Ref<stdgo.testing.Testing.T>):Void {
	{
		var _0:GoInt = newWriter((null : stdgo.io.Io.Writer)).size(),
			_1:GoInt = (4096 : GoInt),
			_want:GoInt = _1,
			_got:GoInt = _0;
		if (_got != (_want)) {
			_t.errorf(Go.str("NewWriter\'s Writer.Size = %d; want %d"), Go.toInterface(_got), Go.toInterface(_want));
		};
	};
	{
		var _0:GoInt = newWriterSize((null : stdgo.io.Io.Writer), (1234 : GoInt)).size(),
			_1:GoInt = (1234 : GoInt),
			_want:GoInt = _1,
			_got:GoInt = _0;
		if (_got != (_want)) {
			_t.errorf(Go.str("NewWriterSize\'s Writer.Size = %d; want %d"), Go.toInterface(_got), Go.toInterface(_want));
		};
	};
}

function _newScriptedReader(_steps:haxe.Rest<(_p:Slice<GoByte>) -> {
	var _0:GoInt;
	var _1:Error;
}>):stdgo.io.Io.Reader {
	var _steps = new Slice<(_p:Slice<GoByte>) -> {
		var _0:GoInt;
		var _1:Error;
	}>(0, 0, ..._steps);
	var _sr:stdgo.bufio_test.Bufio_test.T_scriptedReader = (_steps : T_scriptedReader);
	return Go.asInterface((_sr : Ref<stdgo.bufio_test.Bufio_test.T_scriptedReader>));
}

function testPartialReadEOF(_t:Ref<stdgo.testing.Testing.T>):Void {
	var _src = new Slice<GoUInt8>((10 : GoInt).toBasic(), 0, ...[for (i in 0...(10 : GoInt).toBasic()) (0 : GoUInt8)]);
	var _eofR = (({_buf: _src} : stdgo.bufio_test.Bufio_test.T_eofReader) : Ref<stdgo.bufio_test.Bufio_test.T_eofReader>);
	var _r = newReader(Go.asInterface(_eofR));
	var _dest = new Slice<GoUInt8>((5 : GoInt).toBasic(), 0, ...[for (i in 0...(5 : GoInt).toBasic()) (0 : GoUInt8)]);
	var __tmp__ = _r.read(_dest),
		_read:GoInt = __tmp__._0,
		_err:Error = __tmp__._1;
	if (_err != null) {
		_t.fatalf(Go.str("unexpected error: %v"), Go.toInterface(_err));
	};
	{
		var _n:GoInt = (_dest.length);
		if (_read != (_n)) {
			_t.fatalf(Go.str("read %d bytes; wanted %d bytes"), Go.toInterface(_read), Go.toInterface(_n));
		};
	};
	{
		var _n:GoInt = (_eofR._buf.length);
		if (_n != ((0 : GoInt))) {
			_t.fatalf(Go.str("got %d bytes left in bufio.Reader source; want 0 bytes"), Go.toInterface(_n));
		};
	};
	{
		var _n:GoInt = _r.buffered();
		if (_n != ((5 : GoInt))) {
			_t.fatalf(Go.str("got %d bytes buffered in bufio.Reader; want 5 bytes"), Go.toInterface(_n));
		};
	};
	{
		var __tmp__ = _r.read((new Slice<GoUInt8>(0, 0) : Slice<GoUInt8>));
		_read = __tmp__._0;
		_err = __tmp__._1;
	};
	if (_err != null) {
		_t.fatalf(Go.str("unexpected error: %v"), Go.toInterface(_err));
	};
	if (_read != ((0 : GoInt))) {
		_t.fatalf(Go.str("read %d bytes; want 0 bytes"), Go.toInterface(_read));
	};
}

function testWriterReadFromMustSetUnderlyingError(_t:Ref<stdgo.testing.Testing.T>):Void {
	var _wr:Ref<Writer> = newWriter(Go.asInterface((new stdgo.bufio_test.Bufio_test.T_writerWithReadFromError() : stdgo.bufio_test.Bufio_test.T_writerWithReadFromError)));
	{
		var __tmp__ = _wr.readFrom(Go.asInterface(stdgo.strings.Strings.newReader(Go.str("test2")))),
			_0:GoInt64 = __tmp__._0,
			_err:Error = __tmp__._1;
		if (_err == null) {
			_t.fatal(Go.toInterface(Go.str("expected ReadFrom returns error, got nil")));
		};
	};
	{
		var __tmp__ = _wr.write((Go.str("123") : Slice<GoByte>)),
			_1:GoInt = __tmp__._0,
			_err:Error = __tmp__._1;
		if (_err == null) {
			_t.fatal(Go.toInterface(Go.str("expected Write returns error, got nil")));
		};
	};
}

/**
	// Ensure that previous Write errors are immediately returned
	// on any ReadFrom. See golang.org/issue/35194.
**/
function testWriterReadFromMustReturnUnderlyingError(_t:Ref<stdgo.testing.Testing.T>):Void {
	var _wr:Ref<Writer> = newWriter(Go.asInterface((new stdgo.bufio_test.Bufio_test.T_writeErrorOnlyWriter() : stdgo.bufio_test.Bufio_test.T_writeErrorOnlyWriter)));
	var _s:GoString = Go.str("test1");
	var _wantBuffered:GoInt = (_s.length);
	{
		var __tmp__ = _wr.writeString(_s),
			_0:GoInt = __tmp__._0,
			_err:Error = __tmp__._1;
		if (_err != null) {
			_t.fatalf(Go.str("unexpected error: %v"), Go.toInterface(_err));
		};
	};
	{
		var _err:Error = _wr.flush();
		if (_err == null) {
			_t.error(Go.toInterface(Go.str("expected flush error, got nil")));
		};
	};
	{
		var __tmp__ = _wr.readFrom(Go.asInterface(stdgo.strings.Strings.newReader(Go.str("test2")))),
			_1:GoInt64 = __tmp__._0,
			_err:Error = __tmp__._1;
		if (_err == null) {
			_t.fatal(Go.toInterface(Go.str("expected error, got nil")));
		};
	};
	{
		var _buffered:GoInt = _wr.buffered();
		if (_buffered != (_wantBuffered)) {
			_t.fatalf(Go.str("Buffered = %v; want %v"), Go.toInterface(_buffered), Go.toInterface(_wantBuffered));
		};
	};
}

function benchmarkReaderCopyOptimal(_b:Ref<stdgo.testing.Testing.B>):Void {
	var _srcBuf = stdgo.bytes.Bytes.newBuffer(new Slice<GoUInt8>((8192 : GoInt).toBasic(), 0, ...[for (i in 0...(8192 : GoInt).toBasic()) (0 : GoUInt8)]));
	var _src = newReader(Go.asInterface(_srcBuf));
	var _dstBuf = ({} : stdgo.bytes.Bytes.Buffer);
	var _dst:stdgo.bufio_test.Bufio_test.T_onlyWriter = (new stdgo.bufio_test.Bufio_test.T_onlyWriter(Go.asInterface(_dstBuf)) : stdgo.bufio_test.Bufio_test.T_onlyWriter);
	{
		var _i:GoInt = (0 : GoInt);
		Go.cfor(_i < _b.n, _i++, {
			_srcBuf.reset();
			_src.reset(Go.asInterface(_srcBuf));
			_dstBuf.reset();
			stdgo.io.Io.copy(Go.asInterface(_dst), Go.asInterface(_src));
		});
	};
}

function benchmarkReaderCopyUnoptimal(_b:Ref<stdgo.testing.Testing.B>):Void {
	var _srcBuf = stdgo.bytes.Bytes.newBuffer(new Slice<GoUInt8>((8192 : GoInt).toBasic(), 0, ...[for (i in 0...(8192 : GoInt).toBasic()) (0 : GoUInt8)]));
	var _src = newReader(Go.asInterface((new stdgo.bufio_test.Bufio_test.T_onlyReader(Go.asInterface(_srcBuf)) : stdgo.bufio_test.Bufio_test.T_onlyReader)));
	var _dstBuf = ({} : stdgo.bytes.Bytes.Buffer);
	var _dst:stdgo.bufio_test.Bufio_test.T_onlyWriter = (new stdgo.bufio_test.Bufio_test.T_onlyWriter(Go.asInterface(_dstBuf)) : stdgo.bufio_test.Bufio_test.T_onlyWriter);
	{
		var _i:GoInt = (0 : GoInt);
		Go.cfor(_i < _b.n, _i++, {
			_srcBuf.reset();
			_src.reset(Go.asInterface((new stdgo.bufio_test.Bufio_test.T_onlyReader(Go.asInterface(_srcBuf)) : stdgo.bufio_test.Bufio_test.T_onlyReader)));
			_dstBuf.reset();
			stdgo.io.Io.copy(Go.asInterface(_dst), Go.asInterface(_src));
		});
	};
}

function benchmarkReaderCopyNoWriteTo(_b:Ref<stdgo.testing.Testing.B>):Void {
	var _srcBuf = stdgo.bytes.Bytes.newBuffer(new Slice<GoUInt8>((8192 : GoInt).toBasic(), 0, ...[for (i in 0...(8192 : GoInt).toBasic()) (0 : GoUInt8)]));
	var _srcReader = newReader(Go.asInterface(_srcBuf));
	var _src:stdgo.bufio_test.Bufio_test.T_onlyReader = (new stdgo.bufio_test.Bufio_test.T_onlyReader(Go.asInterface(_srcReader)) : stdgo.bufio_test.Bufio_test.T_onlyReader);
	var _dstBuf = ({} : stdgo.bytes.Bytes.Buffer);
	var _dst:stdgo.bufio_test.Bufio_test.T_onlyWriter = (new stdgo.bufio_test.Bufio_test.T_onlyWriter(Go.asInterface(_dstBuf)) : stdgo.bufio_test.Bufio_test.T_onlyWriter);
	{
		var _i:GoInt = (0 : GoInt);
		Go.cfor(_i < _b.n, _i++, {
			_srcBuf.reset();
			_srcReader.reset(Go.asInterface(_srcBuf));
			_dstBuf.reset();
			stdgo.io.Io.copy(Go.asInterface(_dst), Go.asInterface(_src));
		});
	};
}

function benchmarkReaderWriteToOptimal(_b:Ref<stdgo.testing.Testing.B>):Void {
	{};
	var _buf = new Slice<GoUInt8>((16384 : GoInt).toBasic(), 0, ...[for (i in 0...(16384 : GoInt).toBasic()) (0 : GoUInt8)]);
	var _r = stdgo.bytes.Bytes.newReader(_buf);
	var _srcReader = newReaderSize(Go.asInterface((new stdgo.bufio_test.Bufio_test.T_onlyReader(Go.asInterface(_r)) : stdgo.bufio_test.Bufio_test.T_onlyReader)),
		(1024 : GoInt));
	{
		var __tmp__ = try {
			{value: (Go.typeAssert((Go.toInterface(stdgo.io.Io.discard) : stdgo.io.Io.ReaderFrom)) : stdgo.io.Io.ReaderFrom), ok: true};
		} catch (_) {
			{value: (null : stdgo.io.Io.ReaderFrom), ok: false};
		}, _0 = __tmp__.value, _ok = __tmp__.ok;
		if (!_ok) {
			_b.fatal(Go.toInterface(Go.str("io.Discard doesn\'t support ReaderFrom")));
		};
	};
	{
		var _i:GoInt = (0 : GoInt);
		Go.cfor(_i < _b.n, _i++, {
			_r.seek(("0" : GoInt64), (0 : GoInt));
			_srcReader.reset(Go.asInterface((new stdgo.bufio_test.Bufio_test.T_onlyReader(Go.asInterface(_r)) : stdgo.bufio_test.Bufio_test.T_onlyReader)));
			var __tmp__ = _srcReader.writeTo(stdgo.io.Io.discard),
				_n:GoInt64 = __tmp__._0,
				_err:Error = __tmp__._1;
			if (_err != null) {
				_b.fatal(Go.toInterface(_err));
			};
			if (_n != (("16384" : GoInt64))) {
				_b.fatalf(Go.str("n = %d; want %d"), Go.toInterface(_n), Go.toInterface((16384 : GoInt)));
			};
		});
	};
}

function benchmarkReaderReadString(_b:Ref<stdgo.testing.Testing.B>):Void {
	var _r = stdgo.strings.Strings.newReader(Go.str("       foo       foo        42        42        42        42        42        42        42        42       4.2       4.2       4.2       4.2\n"));
	var _buf = newReader(Go.asInterface(_r));
	_b.reportAllocs();
	{
		var _i:GoInt = (0 : GoInt);
		Go.cfor(_i < _b.n, _i++, {
			_r.seek(("0" : GoInt64), (0 : GoInt));
			_buf.reset(Go.asInterface(_r));
			var __tmp__ = _buf.readString((10 : GoUInt8)),
				_0:GoString = __tmp__._0,
				_err:Error = __tmp__._1;
			if (_err != null) {
				_b.fatal(Go.toInterface(_err));
			};
		});
	};
}

function benchmarkWriterCopyOptimal(_b:Ref<stdgo.testing.Testing.B>):Void {
	var _srcBuf = stdgo.bytes.Bytes.newBuffer(new Slice<GoUInt8>((8192 : GoInt).toBasic(), 0, ...[for (i in 0...(8192 : GoInt).toBasic()) (0 : GoUInt8)]));
	var _src:stdgo.bufio_test.Bufio_test.T_onlyReader = (new stdgo.bufio_test.Bufio_test.T_onlyReader(Go.asInterface(_srcBuf)) : stdgo.bufio_test.Bufio_test.T_onlyReader);
	var _dstBuf = ({} : stdgo.bytes.Bytes.Buffer);
	var _dst = newWriter(Go.asInterface(_dstBuf));
	{
		var _i:GoInt = (0 : GoInt);
		Go.cfor(_i < _b.n, _i++, {
			_srcBuf.reset();
			_dstBuf.reset();
			_dst.reset(Go.asInterface(_dstBuf));
			stdgo.io.Io.copy(Go.asInterface(_dst), Go.asInterface(_src));
		});
	};
}

function benchmarkWriterCopyUnoptimal(_b:Ref<stdgo.testing.Testing.B>):Void {
	var _srcBuf = stdgo.bytes.Bytes.newBuffer(new Slice<GoUInt8>((8192 : GoInt).toBasic(), 0, ...[for (i in 0...(8192 : GoInt).toBasic()) (0 : GoUInt8)]));
	var _src:stdgo.bufio_test.Bufio_test.T_onlyReader = (new stdgo.bufio_test.Bufio_test.T_onlyReader(Go.asInterface(_srcBuf)) : stdgo.bufio_test.Bufio_test.T_onlyReader);
	var _dstBuf = ({} : stdgo.bytes.Bytes.Buffer);
	var _dst = newWriter(Go.asInterface((new stdgo.bufio_test.Bufio_test.T_onlyWriter(Go.asInterface(_dstBuf)) : stdgo.bufio_test.Bufio_test.T_onlyWriter)));
	{
		var _i:GoInt = (0 : GoInt);
		Go.cfor(_i < _b.n, _i++, {
			_srcBuf.reset();
			_dstBuf.reset();
			_dst.reset(Go.asInterface((new stdgo.bufio_test.Bufio_test.T_onlyWriter(Go.asInterface(_dstBuf)) : stdgo.bufio_test.Bufio_test.T_onlyWriter)));
			stdgo.io.Io.copy(Go.asInterface(_dst), Go.asInterface(_src));
		});
	};
}

function benchmarkWriterCopyNoReadFrom(_b:Ref<stdgo.testing.Testing.B>):Void {
	var _srcBuf = stdgo.bytes.Bytes.newBuffer(new Slice<GoUInt8>((8192 : GoInt).toBasic(), 0, ...[for (i in 0...(8192 : GoInt).toBasic()) (0 : GoUInt8)]));
	var _src:stdgo.bufio_test.Bufio_test.T_onlyReader = (new stdgo.bufio_test.Bufio_test.T_onlyReader(Go.asInterface(_srcBuf)) : stdgo.bufio_test.Bufio_test.T_onlyReader);
	var _dstBuf = ({} : stdgo.bytes.Bytes.Buffer);
	var _dstWriter = newWriter(Go.asInterface(_dstBuf));
	var _dst:stdgo.bufio_test.Bufio_test.T_onlyWriter = (new stdgo.bufio_test.Bufio_test.T_onlyWriter(Go.asInterface(_dstWriter)) : stdgo.bufio_test.Bufio_test.T_onlyWriter);
	{
		var _i:GoInt = (0 : GoInt);
		Go.cfor(_i < _b.n, _i++, {
			_srcBuf.reset();
			_dstBuf.reset();
			_dstWriter.reset(Go.asInterface(_dstBuf));
			stdgo.io.Io.copy(Go.asInterface(_dst), Go.asInterface(_src));
		});
	};
}

function benchmarkReaderEmpty(_b:Ref<stdgo.testing.Testing.B>):Void {
	_b.reportAllocs();
	var _str:GoString = stdgo.strings.Strings.repeat(Go.str("x"), (16384 : GoInt));
	{
		var _i:GoInt = (0 : GoInt);
		Go.cfor(_i < _b.n, _i++, {
			var _br = newReader(Go.asInterface(stdgo.strings.Strings.newReader(_str)));
			var __tmp__ = stdgo.io.Io.copy(stdgo.io.Io.discard, Go.asInterface(_br)),
				_n:GoInt64 = __tmp__._0,
				_err:Error = __tmp__._1;
			if (_err != null) {
				_b.fatal(Go.toInterface(_err));
			};
			if (_n != ((_str.length : GoInt64))) {
				_b.fatal(Go.toInterface(Go.str("wrong length")));
			};
		});
	};
}

function benchmarkWriterEmpty(_b:Ref<stdgo.testing.Testing.B>):Void {
	_b.reportAllocs();
	var _str:GoString = stdgo.strings.Strings.repeat(Go.str("x"), (1024 : GoInt));
	var _bs = (_str : Slice<GoByte>);
	{
		var _i:GoInt = (0 : GoInt);
		Go.cfor(_i < _b.n, _i++, {
			var _bw = newWriter(stdgo.io.Io.discard);
			_bw.flush();
			_bw.writeByte((97 : GoUInt8));
			_bw.flush();
			_bw.writeRune((66 : GoInt32));
			_bw.flush();
			_bw.write(_bs);
			_bw.flush();
			_bw.writeString(_str);
			_bw.flush();
		});
	};
}

function benchmarkWriterFlush(_b:Ref<stdgo.testing.Testing.B>):Void {
	_b.reportAllocs();
	var _bw = newWriter(stdgo.io.Io.discard);
	var _str:GoString = stdgo.strings.Strings.repeat(Go.str("x"), (50 : GoInt));
	{
		var _i:GoInt = (0 : GoInt);
		Go.cfor(_i < _b.n, _i++, {
			_bw.writeString(_str);
			_bw.flush();
		});
	};
}

function exampleWriter():Void {
	var _w = stdgo.bufio.Bufio.newWriter(Go.asInterface(stdgo.os.Os.stdout));
	stdgo.fmt.Fmt.fprint(Go.asInterface(_w), Go.toInterface(Go.str("Hello, ")));
	stdgo.fmt.Fmt.fprint(Go.asInterface(_w), Go.toInterface(Go.str("world!")));
	_w.flush();
}

function exampleWriter_AvailableBuffer():Void {
	var _w = stdgo.bufio.Bufio.newWriter(Go.asInterface(stdgo.os.Os.stdout));
	for (_0 => _i in (new Slice<GoInt64>(0, 0, ("1" : GoInt64), ("2" : GoInt64), ("3" : GoInt64), ("4" : GoInt64)) : Slice<GoInt64>)) {
		var _b = _w.availableBuffer();
		_b = stdgo.strconv.Strconv.appendInt(_b, _i, (10 : GoInt));
		_b = _b.__appendref__((32 : GoUInt8));
		_w.write(_b);
	};
	_w.flush();
}

/**
	// The simplest use of a Scanner, to read standard input as a set of lines.
**/
function exampleScanner_lines():Void {
	var _scanner = stdgo.bufio.Bufio.newScanner(Go.asInterface(stdgo.os.Os.stdin));
	while (_scanner.scan()) {
		stdgo.fmt.Fmt.println(Go.toInterface(_scanner.text()));
	};
	{
		var _err:Error = _scanner.err();
		if (_err != null) {
			stdgo.fmt.Fmt.fprintln(Go.asInterface(stdgo.os.Os.stderr), Go.toInterface(Go.str("reading standard input:")), Go.toInterface(_err));
		};
	};
}

/**
	// Return the most recent call to Scan as a []byte.
**/
function exampleScanner_Bytes():Void {
	var _scanner = stdgo.bufio.Bufio.newScanner(Go.asInterface(stdgo.strings.Strings.newReader(Go.str("gopher"))));
	while (_scanner.scan()) {
		stdgo.fmt.Fmt.println(Go.toInterface((_scanner.bytes().length) == ((6 : GoInt))));
	};
	{
		var _err:Error = _scanner.err();
		if (_err != null) {
			stdgo.fmt.Fmt.fprintln(Go.asInterface(stdgo.os.Os.stderr), Go.toInterface(Go.str("shouldn\'t see an error scanning a string")));
		};
	};
}

/**
	// Use a Scanner to implement a simple word-count utility by scanning the
	// input as a sequence of space-delimited tokens.
**/
function exampleScanner_words():Void {
	{};
	var _scanner = stdgo.bufio.Bufio.newScanner(Go.asInterface(stdgo.strings.Strings.newReader(Go.str("Now is the winter of our discontent,\nMade glorious summer by this sun of York.\n"))));
	_scanner.split(stdgo.bufio.Bufio.scanWords);
	var _count:GoInt = (0 : GoInt);
	while (_scanner.scan()) {
		_count++;
	};
	{
		var _err:Error = _scanner.err();
		if (_err != null) {
			stdgo.fmt.Fmt.fprintln(Go.asInterface(stdgo.os.Os.stderr), Go.toInterface(Go.str("reading input:")), Go.toInterface(_err));
		};
	};
	stdgo.fmt.Fmt.printf(Go.str("%d\n"), Go.toInterface(_count));
}

/**
	// Use a Scanner with a custom split function (built by wrapping ScanWords) to validate
	// 32-bit decimal input.
**/
function exampleScanner_custom():Void {
	{};
	var _scanner = stdgo.bufio.Bufio.newScanner(Go.asInterface(stdgo.strings.Strings.newReader(Go.str("1234 5678 1234567901234567890"))));
	var _split = function(_data:Slice<GoByte>, _atEOF:Bool):{var _0:GoInt; var _1:Slice<GoByte>; var _2:Error;} {
		var _advance:GoInt = (0 : GoInt), _token:Slice<GoByte> = (null : Slice<GoUInt8>), _err:Error = (null : Error);
		{
			var __tmp__ = stdgo.bufio.Bufio.scanWords(_data, _atEOF);
			_advance = __tmp__._0;
			_token = __tmp__._1;
			_err = __tmp__._2;
		};
		if ((_err == null) && (_token != null)) {
			{
				var __tmp__ = stdgo.strconv.Strconv.parseInt((_token : GoString), (10 : GoInt), (32 : GoInt));
				_err = __tmp__._1;
			};
		};
		return {_0: _advance, _1: _token, _2: _err};
	};
	_scanner.split(_split);
	while (_scanner.scan()) {
		stdgo.fmt.Fmt.printf(Go.str("%s\n"), Go.toInterface(_scanner.text()));
	};
	{
		var _err:Error = _scanner.err();
		if (_err != null) {
			stdgo.fmt.Fmt.printf(Go.str("Invalid input: %s"), Go.toInterface(_err));
		};
	};
}

/**
	// Use a Scanner with a custom split function to parse a comma-separated
	// list with an empty final value.
**/
function exampleScanner_emptyFinalToken():Void {
	{};
	var _scanner = stdgo.bufio.Bufio.newScanner(Go.asInterface(stdgo.strings.Strings.newReader(Go.str("1,2,3,4,"))));
	var _onComma = function(_data:Slice<GoByte>, _atEOF:Bool):{var _0:GoInt; var _1:Slice<GoByte>; var _2:Error;} {
		var _advance:GoInt = (0 : GoInt), _token:Slice<GoByte> = (null : Slice<GoUInt8>), _err:Error = (null : Error);
		{
			var _i:GoInt = (0 : GoInt);
			Go.cfor(_i < (_data.length), _i++, {
				if (_data[(_i : GoInt)] == ((44 : GoUInt8))) {
					return {_0: _i + (1 : GoInt), _1: (_data.__slice__(0, _i) : Slice<GoUInt8>), _2: (null : Error)};
				};
			});
		};
		if (!_atEOF) {
			return {_0: (0 : GoInt), _1: (null : Slice<GoUInt8>), _2: (null : Error)};
		};
		return {_0: (0 : GoInt), _1: _data, _2: stdgo.bufio.Bufio.errFinalToken};
	};
	_scanner.split(_onComma);
	while (_scanner.scan()) {
		stdgo.fmt.Fmt.printf(Go.str("%q "), Go.toInterface(_scanner.text()));
	};
	{
		var _err:Error = _scanner.err();
		if (_err != null) {
			stdgo.fmt.Fmt.fprintln(Go.asInterface(stdgo.os.Os.stderr), Go.toInterface(Go.str("reading input:")), Go.toInterface(_err));
		};
	};
}

/**
	// Test white space table matches the Unicode definition.
**/
function testSpace(_t:Ref<stdgo.testing.Testing.T>):Void {
	{
		var _r:GoInt32 = ((0 : GoInt32) : GoRune);
		Go.cfor(_r <= (1114111 : GoInt32), _r++, {
			if (isSpace(_r) != (stdgo.unicode.Unicode.isSpace(_r))) {
				_t.fatalf(Go.str("white space property disagrees: %#U should be %t"), Go.toInterface(_r), Go.toInterface(stdgo.unicode.Unicode.isSpace(_r)));
			};
		});
	};
}

function testScanByte(_t:Ref<stdgo.testing.Testing.T>):Void {
	for (_n => _test in _scanTests) {
		var _buf = stdgo.strings.Strings.newReader(_test);
		var _s = newScanner(Go.asInterface(_buf));
		_s.split(scanBytes);
		var _i:GoInt = (0 : GoInt);
		{
			_i = (0 : GoInt);
			Go.cfor(_s.scan(), _i++, {
				{
					var _b = _s.bytes();
					if ((_b.length != (1 : GoInt)) || (_b[(0 : GoInt)] != _test[(_i : GoInt)])) {
						_t.errorf(Go.str("#%d: %d: expected %q got %q"), Go.toInterface(_n), Go.toInterface(_i), Go.toInterface(_test), Go.toInterface(_b));
					};
				};
			});
		};
		if (_i != ((_test.length))) {
			_t.errorf(Go.str("#%d: termination expected at %d; got %d"), Go.toInterface(_n), Go.toInterface((_test.length)), Go.toInterface(_i));
		};
		var _err:Error = _s.err();
		if (_err != null) {
			_t.errorf(Go.str("#%d: %v"), Go.toInterface(_n), Go.toInterface(_err));
		};
	};
}

/**
	// Test that the rune splitter returns same sequence of runes (not bytes) as for range string.
**/
function testScanRune(_t:Ref<stdgo.testing.Testing.T>):Void {
	for (_n => _test in _scanTests) {
		var _buf = stdgo.strings.Strings.newReader(_test);
		var _s = newScanner(Go.asInterface(_buf));
		_s.split(scanRunes);
		var _0:GoInt = (0 : GoInt),
			_1:GoInt = (0 : GoInt),
			_runeCount:GoInt = _1,
			_i:GoInt = _0;
		var _expect:GoRune = (0 : GoInt32);
		for (__key__ => __value__ in (_test : GoString)) {
			_expect = __value__;
			_i = __key__;
			if (!_s.scan()) {
				break;
			};
			_runeCount++;
			var __tmp__ = stdgo.unicode.utf8.Utf8.decodeRune(_s.bytes()),
				_got:GoInt32 = __tmp__._0,
				_0:GoInt = __tmp__._1;
			if (_got != (_expect)) {
				_t.errorf(Go.str("#%d: %d: expected %q got %q"), Go.toInterface(_n), Go.toInterface(_i), Go.toInterface(_expect), Go.toInterface(_got));
			};
		};
		if (_s.scan()) {
			_t.errorf(Go.str("#%d: scan ran too long, got %q"), Go.toInterface(_n), Go.toInterface(_s.text()));
		};
		var _testRuneCount:GoInt = stdgo.unicode.utf8.Utf8.runeCountInString(_test);
		if (_runeCount != (_testRuneCount)) {
			_t.errorf(Go.str("#%d: termination expected at %d; got %d"), Go.toInterface(_n), Go.toInterface(_testRuneCount), Go.toInterface(_runeCount));
		};
		var _err:Error = _s.err();
		if (_err != null) {
			_t.errorf(Go.str("#%d: %v"), Go.toInterface(_n), Go.toInterface(_err));
		};
	};
}

/**
	// Test that the word splitter returns the same data as strings.Fields.
**/
function testScanWords(_t:Ref<stdgo.testing.Testing.T>):Void {
	for (_n => _test in _wordScanTests) {
		var _buf = stdgo.strings.Strings.newReader(_test);
		var _s = newScanner(Go.asInterface(_buf));
		_s.split(scanWords);
		var _words = stdgo.strings.Strings.fields(_test);
		var _wordCount:GoInt = (0 : GoInt);
		{
			_wordCount = (0 : GoInt);
			Go.cfor(_wordCount < (_words.length), _wordCount++, {
				if (!_s.scan()) {
					break;
				};
				var _got:GoString = _s.text();
				if (_got != (_words[(_wordCount : GoInt)])) {
					_t.errorf(Go.str("#%d: %d: expected %q got %q"), Go.toInterface(_n), Go.toInterface(_wordCount),
						Go.toInterface(_words[(_wordCount : GoInt)]), Go.toInterface(_got));
				};
			});
		};
		if (_s.scan()) {
			_t.errorf(Go.str("#%d: scan ran too long, got %q"), Go.toInterface(_n), Go.toInterface(_s.text()));
		};
		if (_wordCount != ((_words.length))) {
			_t.errorf(Go.str("#%d: termination expected at %d; got %d"), Go.toInterface(_n), Go.toInterface((_words.length)), Go.toInterface(_wordCount));
		};
		var _err:Error = _s.err();
		if (_err != null) {
			_t.errorf(Go.str("#%d: %v"), Go.toInterface(_n), Go.toInterface(_err));
		};
	};
}

/**
	// genLine writes to buf a predictable but non-trivial line of text of length
	// n, including the terminal newline and an occasional carriage return.
	// If addNewline is false, the \r and \n are not emitted.
**/
function _genLine(_buf:Ref<stdgo.bytes.Bytes.Buffer>, _lineNum:GoInt, _n:GoInt, _addNewline:Bool):Void {
	_buf.reset();
	var _doCR:Bool = _lineNum % (5 : GoInt) == ((0 : GoInt));
	if (_doCR) {
		_n--;
	};
	{
		var _i:GoInt = (0 : GoInt);
		Go.cfor(_i < (_n - (1 : GoInt)), _i++, {
			var _c:GoUInt8 = (97 : GoUInt8) + (_lineNum + _i : GoByte);
			if ((_c == (10 : GoUInt8)) || (_c == (13 : GoUInt8))) {
				_c = (78 : GoUInt8);
			};
			_buf.writeByte(_c);
		});
	};
	if (_addNewline) {
		if (_doCR) {
			_buf.writeByte((13 : GoUInt8));
		};
		_buf.writeByte((10 : GoUInt8));
	};
}

/**
	// Test the line splitter, including some carriage returns but no long lines.
**/
function testScanLongLines(_t:Ref<stdgo.testing.Testing.T>):Void {
	var _tmp = ({} : stdgo.bytes.Bytes.Buffer);
	var _buf = ({} : stdgo.bytes.Bytes.Buffer);
	var _lineNum:GoInt = (0 : GoInt);
	var _j:GoInt = (0 : GoInt);
	{
		var _i:GoInt = (0 : GoInt);
		Go.cfor(_i < (512:GoInt), _i++, {
			_genLine(_tmp, _lineNum, _j, true);
			if (_j < (256:GoInt)) {
				_j++;
			} else {
				_j--;
			};
			_buf.write(_tmp.bytes());
			_lineNum++;
		});
	};
	var _s = newScanner(Go.asInterface(((new stdgo.bufio_test.Bufio_test.T_slowReader((1 : GoInt),
		Go.asInterface(_buf)) : stdgo.bufio_test.Bufio_test.T_slowReader) : Ref<stdgo.bufio_test.Bufio_test.T_slowReader>)));
	_s.split(scanLines);
	_s.maxTokenSize((256 : GoInt));
	_j = (0 : GoInt);
	{
		var _lineNum:GoInt = (0 : GoInt);
		Go.cfor(_s.scan(), _lineNum++, {
			_genLine(_tmp, _lineNum, _j, false);
			if (_j < (256:GoInt)) {
				_j++;
			} else {
				_j--;
			};
			var _line:GoString = (_tmp.string() : GoString);
			if (_s.text() != (_line)) {
				_t.errorf(Go.str("%d: bad line: %d %d\n%.100q\n%.100q\n"), Go.toInterface(_lineNum), Go.toInterface((_s.bytes().length)),
					Go.toInterface((_line.length)), Go.toInterface(_s.text()), Go.toInterface(_line));
			};
		});
	};
	var _err:Error = _s.err();
	if (_err != null) {
		_t.fatal(Go.toInterface(_err));
	};
}

/**
	// Test that the line splitter errors out on a long line.
**/
function testScanLineTooLong(_t:Ref<stdgo.testing.Testing.T>):Void {
	{};
	var _tmp = ({} : stdgo.bytes.Bytes.Buffer);
	var _buf = ({} : stdgo.bytes.Bytes.Buffer);
	var _lineNum:GoInt = (0 : GoInt);
	var _j:GoInt = (0 : GoInt);
	{
		var _i:GoInt = (0 : GoInt);
		Go.cfor(_i < (512:GoInt), _i++, {
			_genLine(_tmp, _lineNum, _j, true);
			_j++;
			_buf.write(_tmp.bytes());
			_lineNum++;
		});
	};
	var _s = newScanner(Go.asInterface(((new stdgo.bufio_test.Bufio_test.T_slowReader((3 : GoInt),
		Go.asInterface(_buf)) : stdgo.bufio_test.Bufio_test.T_slowReader) : Ref<stdgo.bufio_test.Bufio_test.T_slowReader>)));
	_s.split(scanLines);
	_s.maxTokenSize((256 : GoInt));
	_j = (0 : GoInt);
	{
		var _lineNum:GoInt = (0 : GoInt);
		Go.cfor(_s.scan(), _lineNum++, {
			_genLine(_tmp, _lineNum, _j, false);
			if (_j < (256:GoInt)) {
				_j++;
			} else {
				_j--;
			};
			var _line = _tmp.bytes();
			if (!stdgo.bytes.Bytes.equal(_s.bytes(), _line)) {
				_t.errorf(Go.str("%d: bad line: %d %d\n%.100q\n%.100q\n"), Go.toInterface(_lineNum), Go.toInterface((_s.bytes().length)),
					Go.toInterface((_line.length)), Go.toInterface(_s.bytes()), Go.toInterface(_line));
			};
		});
	};
	var _err:Error = _s.err();
	if (Go.toInterface(_err) != (Go.toInterface(errTooLong))) {
		_t.fatalf(Go.str("expected ErrTooLong; got %s"), Go.toInterface(_err));
	};
}

/**
	// Test that the line splitter handles a final line without a newline.
**/
function _testNoNewline(_text:GoString, _lines:Slice<GoString>, _t:Ref<stdgo.testing.Testing.T>):Void {
	var _buf = stdgo.strings.Strings.newReader(_text);
	var _s = newScanner(Go.asInterface(((new stdgo.bufio_test.Bufio_test.T_slowReader((7 : GoInt),
		Go.asInterface(_buf)) : stdgo.bufio_test.Bufio_test.T_slowReader) : Ref<stdgo.bufio_test.Bufio_test.T_slowReader>)));
	_s.split(scanLines);
	{
		var _lineNum:GoInt = (0 : GoInt);
		Go.cfor(_s.scan(), _lineNum++, {
			var _line:GoString = _lines[(_lineNum : GoInt)];
			if (_s.text() != (_line)) {
				_t.errorf(Go.str("%d: bad line: %d %d\n%.100q\n%.100q\n"), Go.toInterface(_lineNum), Go.toInterface((_s.bytes().length)),
					Go.toInterface((_line.length)), Go.toInterface(_s.bytes()), Go.toInterface(_line));
			};
		});
	};
	var _err:Error = _s.err();
	if (_err != null) {
		_t.fatal(Go.toInterface(_err));
	};
}

/**
	// Test that the line splitter handles a final line without a newline.
**/
function testScanLineNoNewline(_t:Ref<stdgo.testing.Testing.T>):Void {
	{};
	var _lines = (new Slice<GoString>(0, 0, Go.str("abcdefghijklmn"), Go.str("opqrstuvwxyz")) : Slice<GoString>);
	_testNoNewline(Go.str("abcdefghijklmn\nopqrstuvwxyz"), _lines, _t);
}

/**
	// Test that the line splitter handles a final line with a carriage return but no newline.
**/
function testScanLineReturnButNoNewline(_t:Ref<stdgo.testing.Testing.T>):Void {
	{};
	var _lines = (new Slice<GoString>(0, 0, Go.str("abcdefghijklmn"), Go.str("opqrstuvwxyz")) : Slice<GoString>);
	_testNoNewline(Go.str("abcdefghijklmn\nopqrstuvwxyz\r"), _lines, _t);
}

/**
	// Test that the line splitter handles a final empty line.
**/
function testScanLineEmptyFinalLine(_t:Ref<stdgo.testing.Testing.T>):Void {
	{};
	var _lines = (new Slice<GoString>(0, 0, Go.str("abcdefghijklmn"), Go.str("opqrstuvwxyz"), Go.str()) : Slice<GoString>);
	_testNoNewline(Go.str("abcdefghijklmn\nopqrstuvwxyz\n\n"), _lines, _t);
}

/**
	// Test that the line splitter handles a final empty line with a carriage return but no newline.
**/
function testScanLineEmptyFinalLineWithCR(_t:Ref<stdgo.testing.Testing.T>):Void {
	{};
	var _lines = (new Slice<GoString>(0, 0, Go.str("abcdefghijklmn"), Go.str("opqrstuvwxyz"), Go.str()) : Slice<GoString>);
	_testNoNewline(Go.str("abcdefghijklmn\nopqrstuvwxyz\n\r"), _lines, _t);
}

/**
	// Test the correct error is returned when the split function errors out.
**/
function testSplitError(_t:Ref<stdgo.testing.Testing.T>):Void {
	var _numSplits:GoInt = (0 : GoInt);
	{};
	var _errorSplit = function(_data:Slice<GoByte>, _atEOF:Bool):{var _0:GoInt; var _1:Slice<GoByte>; var _2:Error;} {
		var _advance:GoInt = (0 : GoInt), _token:Slice<GoByte> = (null : Slice<GoUInt8>), _err:Error = (null : Error);
		if (_atEOF) {
			throw Go.toInterface(Go.str("didn\'t get enough data"));
		};
		if (_numSplits >= (7 : GoInt)) {
			return {_0: (0 : GoInt), _1: (null : Slice<GoUInt8>), _2: _testError};
		};
		_numSplits++;
		return {_0: (1 : GoInt), _1: (_data.__slice__((0 : GoInt), (1 : GoInt)) : Slice<GoUInt8>), _2: (null : Error)};
	};
	{};
	var _buf = stdgo.strings.Strings.newReader(Go.str("abcdefghijklmnopqrstuvwxyz"));
	var _s = newScanner(Go.asInterface(((new stdgo.bufio_test.Bufio_test.T_slowReader((1 : GoInt),
		Go.asInterface(_buf)) : stdgo.bufio_test.Bufio_test.T_slowReader) : Ref<stdgo.bufio_test.Bufio_test.T_slowReader>)));
	_s.split(_errorSplit);
	var _i:GoInt = (0 : GoInt);
	{
		_i = (0 : GoInt);
		Go.cfor(_s.scan(), _i++, {
			if ((_s.bytes().length != (1 : GoInt)) || (Go.str("abcdefghijklmnopqrstuvwxyz")[(_i : GoInt)] != _s.bytes()[(0 : GoInt)])) {
				_t.errorf(Go.str("#%d: expected %q got %q"), Go.toInterface(_i), Go.toInterface(Go.str("abcdefghijklmnopqrstuvwxyz")[(_i : GoInt)]),
					Go.toInterface(_s.bytes()[(0 : GoInt)]));
			};
		});
	};
	if (_i != ((7 : GoInt))) {
		_t.errorf(Go.str("unexpected termination; expected %d tokens got %d"), Go.toInterface((7 : GoInt)), Go.toInterface(_i));
	};
	var _err:Error = _s.err();
	if (Go.toInterface(_err) != (Go.toInterface(_testError))) {
		_t.fatalf(Go.str("expected %q got %v"), Go.toInterface(_testError), Go.toInterface(_err));
	};
}

/**
	// Test that an EOF is overridden by a user-generated scan error.
**/
function testErrAtEOF(_t:Ref<stdgo.testing.Testing.T>):Void {
	var _s = newScanner(Go.asInterface(stdgo.strings.Strings.newReader(Go.str("1 2 33"))));
	var _split = function(_data:Slice<GoByte>, _atEOF:Bool):{var _0:GoInt; var _1:Slice<GoByte>; var _2:Error;} {
		var _advance:GoInt = (0 : GoInt), _token:Slice<GoByte> = (null : Slice<GoUInt8>), _err:Error = (null : Error);
		{
			var __tmp__ = scanWords(_data, _atEOF);
			_advance = __tmp__._0;
			_token = __tmp__._1;
			_err = __tmp__._2;
		};
		if ((_token.length) > (1 : GoInt)) {
			if (Go.toInterface(_s.errOrEOF()) != (Go.toInterface(stdgo.io.Io.eof))) {
				_t.fatal(Go.toInterface(Go.str("not testing EOF")));
			};
			_err = _testError;
		};
		return {_0: _advance, _1: _token, _2: _err};
	};
	_s.split(_split);
	while (_s.scan()) {};
	if (Go.toInterface(_s.err()) != (Go.toInterface(_testError))) {
		_t.fatal(Go.toInterface(Go.str("wrong error:")), Go.toInterface(_s.err()));
	};
}

function testNonEOFWithEmptyRead(_t:Ref<stdgo.testing.Testing.T>):Void {
	var _scanner = newScanner(Go.asInterface((new stdgo.bufio_test.Bufio_test.T_alwaysError() : stdgo.bufio_test.Bufio_test.T_alwaysError)));
	while (_scanner.scan()) {
		_t.fatal(Go.toInterface(Go.str("read should fail")));
	};
	var _err:Error = _scanner.err();
	if (Go.toInterface(_err) != (Go.toInterface(stdgo.io.Io.errUnexpectedEOF))) {
		_t.errorf(Go.str("unexpected error: %v"), Go.toInterface(_err));
	};
}

function testBadReader(_t:Ref<stdgo.testing.Testing.T>):Void {
	var _scanner = newScanner(Go.asInterface((new stdgo.bufio_test.Bufio_test.T_endlessZeros() : stdgo.bufio_test.Bufio_test.T_endlessZeros)));
	while (_scanner.scan()) {
		_t.fatal(Go.toInterface(Go.str("read should fail")));
	};
	var _err:Error = _scanner.err();
	if (Go.toInterface(_err) != (Go.toInterface(stdgo.io.Io.errNoProgress))) {
		_t.errorf(Go.str("unexpected error: %v"), Go.toInterface(_err));
	};
}

function testScanWordsExcessiveWhiteSpace(_t:Ref<stdgo.testing.Testing.T>):Void {
	{};
	var _s:GoString = stdgo.strings.Strings.repeat(Go.str(" "), (1024 : GoInt)) + Go.str("ipsum");
	var _scanner = newScanner(Go.asInterface(stdgo.strings.Strings.newReader(_s)));
	_scanner.maxTokenSize((256 : GoInt));
	_scanner.split(scanWords);
	if (!_scanner.scan()) {
		_t.fatalf(Go.str("scan failed: %v"), Go.toInterface(_scanner.err()));
	};
	{
		var _token:GoString = _scanner.text();
		if (_token != (Go.str("ipsum"))) {
			_t.fatalf(Go.str("unexpected token: %v"), Go.toInterface(_token));
		};
	};
}

function _commaSplit(_data:Slice<GoByte>, _atEOF:Bool):{var _0:GoInt; var _1:Slice<GoByte>; var _2:Error;} {
	var _advance:GoInt = (0 : GoInt),
		_token:Slice<GoByte> = (null : Slice<GoUInt8>),
		_err:Error = (null : Error);
	{
		var _i:GoInt = (0 : GoInt);
		Go.cfor(_i < (_data.length), _i++, {
			if (_data[(_i : GoInt)] == ((44 : GoUInt8))) {
				return {_0: _i + (1 : GoInt), _1: (_data.__slice__(0, _i) : Slice<GoUInt8>), _2: (null : Error)};
			};
		});
	};
	return {_0: (0 : GoInt), _1: _data, _2: errFinalToken};
}

function _testEmptyTokens(_t:Ref<stdgo.testing.Testing.T>, _text:GoString, _values:Slice<GoString>):Void {
	var _s = newScanner(Go.asInterface(stdgo.strings.Strings.newReader(_text)));
	_s.split(_commaSplit);
	var _i:GoInt = (0 : GoInt);
	{
		_i = (0 : GoInt);
		Go.cfor(_s.scan(), _i++, {
			if (_i >= (_values.length)) {
				_t.fatalf(Go.str("got %d fields, expected %d"), Go.toInterface(_i + (1 : GoInt)), Go.toInterface((_values.length)));
			};
			if (_s.text() != (_values[(_i : GoInt)])) {
				_t.errorf(Go.str("%d: expected %q got %q"), Go.toInterface(_i), Go.toInterface(_values[(_i : GoInt)]), Go.toInterface(_s.text()));
			};
		});
	};
	if (_i != ((_values.length))) {
		_t.fatalf(Go.str("got %d fields, expected %d"), Go.toInterface(_i), Go.toInterface((_values.length)));
	};
	{
		var _err:Error = _s.err();
		if (_err != null) {
			_t.fatal(Go.toInterface(_err));
		};
	};
}

function testEmptyTokens(_t:Ref<stdgo.testing.Testing.T>):Void {
	_testEmptyTokens(_t, Go.str("1,2,3,"), (new Slice<GoString>(0, 0, Go.str("1"), Go.str("2"), Go.str("3"), Go.str()) : Slice<GoString>));
}

function testWithNoEmptyTokens(_t:Ref<stdgo.testing.Testing.T>):Void {
	_testEmptyTokens(_t, Go.str("1,2,3"), (new Slice<GoString>(0, 0, Go.str("1"), Go.str("2"), Go.str("3")) : Slice<GoString>));
}

function _loopAtEOFSplit(_data:Slice<GoByte>, _atEOF:Bool):{var _0:GoInt; var _1:Slice<GoByte>; var _2:Error;} {
	var _advance:GoInt = (0 : GoInt),
		_token:Slice<GoByte> = (null : Slice<GoUInt8>),
		_err:Error = (null : Error);
	if ((_data.length) > (0 : GoInt)) {
		return {_0: (1 : GoInt), _1: (_data.__slice__(0, (1 : GoInt)) : Slice<GoUInt8>), _2: (null : Error)};
	};
	return {_0: (0 : GoInt), _1: _data, _2: (null : Error)};
}

function testDontLoopForever(_t:Ref<stdgo.testing.Testing.T>):Void {
	var __deferstack__:Array<Void->Void> = [];
	var _s = newScanner(Go.asInterface(stdgo.strings.Strings.newReader(Go.str("abc"))));
	try {
		_s.split(_loopAtEOFSplit);
		__deferstack__.unshift(() -> {
			var a = function():Void {
				var _err:AnyInterface = ({
					final r = Go.recover_exception;
					Go.recover_exception = null;
					r;
				});
				if (_err == null) {
					_t.fatal(Go.toInterface(Go.str("should have panicked")));
				};
				{
					var __tmp__ = try {
						{value: (Go.typeAssert((_err : GoString)) : GoString), ok: true};
					} catch (_) {
						{value: ("" : GoString), ok: false};
					}, _msg = __tmp__.value, _ok = __tmp__.ok;
					if (!_ok || !stdgo.strings.Strings.contains(_msg, Go.str("empty tokens"))) {
						throw Go.toInterface(_err);
					};
				};
			};
			a();
		});
		{
			var _count:GoInt = (0 : GoInt);
			Go.cfor(_s.scan(), _count++, {
				if (_count > (1000 : GoInt)) {
					_t.fatal(Go.toInterface(Go.str("looping")));
				};
			});
		};
		if (_s.err() != null) {
			_t.fatal(Go.toInterface(Go.str("after scan:")), Go.toInterface(_s.err()));
		};
		for (defer in __deferstack__) {
			defer();
		};
		{
			for (defer in __deferstack__) {
				defer();
			};
			if (Go.recover_exception != null)
				throw Go.recover_exception;
			return;
		};
	} catch (__exception__) {
		if (!(__exception__.native is AnyInterfaceData))
			throw __exception__;
		Go.recover_exception = __exception__.native;
		for (defer in __deferstack__) {
			defer();
		};
		if (Go.recover_exception != null)
			throw Go.recover_exception;
		return;
	};
}

function testBlankLines(_t:Ref<stdgo.testing.Testing.T>):Void {
	var _s = newScanner(Go.asInterface(stdgo.strings.Strings.newReader(stdgo.strings.Strings.repeat(Go.str("\n"), (1000 : GoInt)))));
	{
		var _count:GoInt = (0 : GoInt);
		Go.cfor(_s.scan(), _count++, {
			if (_count > (2000 : GoInt)) {
				_t.fatal(Go.toInterface(Go.str("looping")));
			};
		});
	};
	if (_s.err() != null) {
		_t.fatal(Go.toInterface(Go.str("after scan:")), Go.toInterface(_s.err()));
	};
}

/**
	// Check that the looping-at-EOF check doesn't trigger for merely empty tokens.
**/
function testEmptyLinesOK(_t:Ref<stdgo.testing.Testing.T>):Void {
	var _c:stdgo.bufio_test.Bufio_test.T_countdown = ((10000 : stdgo.bufio_test.Bufio_test.T_countdown) : T_countdown);
	var _s = newScanner(Go.asInterface(stdgo.strings.Strings.newReader(stdgo.strings.Strings.repeat(Go.str("\n"), (10000 : GoInt)))));
	_s.split(_c._split);
	while (_s.scan()) {};
	if (_s.err() != null) {
		_t.fatal(Go.toInterface(Go.str("after scan:")), Go.toInterface(_s.err()));
	};
	if (_c != ((0 : stdgo.bufio_test.Bufio_test.T_countdown))) {
		_t.fatalf(Go.str("stopped with %d left to process"), Go.toInterface(Go.asInterface(_c)));
	};
}

/**
	// Make sure we can read a huge token if a big enough buffer is provided.
**/
function testHugeBuffer(_t:Ref<stdgo.testing.Testing.T>):Void {
	var _text:GoString = stdgo.strings.Strings.repeat(Go.str("x"), (131072 : GoInt));
	var _s = newScanner(Go.asInterface(stdgo.strings.Strings.newReader(_text + Go.str("\n"))));
	_s.buffer(new Slice<GoUInt8>((100 : GoInt).toBasic(), 0, ...[for (i in 0...(100 : GoInt).toBasic()) (0 : GoUInt8)]), (196608 : GoInt));
	while (_s.scan()) {
		var _token:GoString = _s.text();
		if (_token != (_text)) {
			_t.errorf(Go.str("scan got incorrect token of length %d"), Go.toInterface((_token.length)));
		};
	};
	if (_s.err() != null) {
		_t.fatal(Go.toInterface(Go.str("after scan:")), Go.toInterface(_s.err()));
	};
}

/**
	// Test that the scanner doesn't panic and returns ErrBadReadCount
	// on a reader that returns a negative count of bytes read (issue 38053).
**/
function testNegativeEOFReader(_t:Ref<stdgo.testing.Testing.T>):Void {
	var _r:stdgo.bufio_test.Bufio_test.T_negativeEOFReader = ((10 : stdgo.bufio_test.Bufio_test.T_negativeEOFReader) : T_negativeEOFReader);
	var _scanner = newScanner(Go.asInterface(Go.pointer(_r)));
	var _c:GoInt = (0 : GoInt);
	while (_scanner.scan()) {
		_c++;
		if (_c > (1 : GoInt)) {
			_t.error(Go.toInterface(Go.str("read too many lines")));
			break;
		};
	};
	{
		var _0:Error = _scanner.err(),
			_1:Error = errBadReadCount,
			_want:Error = _1,
			_got:Error = _0;
		if (Go.toInterface(_got) != (Go.toInterface(_want))) {
			_t.errorf(Go.str("scanner.Err: got %v, want %v"), Go.toInterface(_got), Go.toInterface(_want));
		};
	};
}

/**
	// Test that the scanner doesn't panic and returns ErrBadReadCount
	// on a reader that returns an impossibly large count of bytes read (issue 38053).
**/
function testLargeReader(_t:Ref<stdgo.testing.Testing.T>):Void {
	var _scanner = newScanner(Go.asInterface((new stdgo.bufio_test.Bufio_test.T_largeReader() : stdgo.bufio_test.Bufio_test.T_largeReader)));
	while (_scanner.scan()) {};
	{
		var _0:Error = _scanner.err(),
			_1:Error = errBadReadCount,
			_want:Error = _1,
			_got:Error = _0;
		if (Go.toInterface(_got) != (Go.toInterface(_want))) {
			_t.errorf(Go.str("scanner.Err: got %v, want %v"), Go.toInterface(_got), Go.toInterface(_want));
		};
	};
}

class T_rot13Reader_asInterface {
	@:keep
	public function read(_p:Slice<GoByte>):{var _0:GoInt; var _1:Error;}
		return __self__.value.read(_p);

	public function new(__self__, __type__) {
		this.__self__ = __self__;
		this.__type__ = __type__;
	}

	public function __underlying__()
		return new AnyInterface((__type__.kind() == stdgo.reflect.Reflect.ptr
			&& !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic),
			__type__);

	var __self__:Pointer<T_rot13Reader>;
	var __type__:stdgo.internal.reflect.Reflect._Type;
}

@:keep @:allow(stdgo.bufio_test.Bufio_test.T_rot13Reader_asInterface) class T_rot13Reader_static_extension {
	@:keep
	static public function read(_r13:Ref<T_rot13Reader>, _p:Slice<GoByte>):{var _0:GoInt; var _1:Error;} {
		var __tmp__ = _r13._r.read(_p),
			_n:GoInt = __tmp__._0,
			_err:Error = __tmp__._1;
		{
			var _i:GoInt = (0 : GoInt);
			Go.cfor(_i < _n, _i++, {
				var _c:GoUInt8 = _p[(_i : GoInt)] | (32 : GoUInt8);
				if (((97 : GoUInt8) <= _c) && (_c <= (109 : GoUInt8))) {
					_p[(_i : GoInt)] = _p[(_i : GoInt)] + ((13 : GoUInt8));
				} else if (((110 : GoUInt8) <= _c) && (_c <= (122 : GoUInt8))) {
					_p[(_i : GoInt)] = _p[(_i : GoInt)] - ((13 : GoUInt8));
				};
			});
		};
		return {_0: _n, _1: _err};
	}
}

class T_zeroReader_asInterface {
	@:keep
	public function read(_p:Slice<GoByte>):{var _0:GoInt; var _1:Error;}
		return __self__.value.read(_p);

	public function new(__self__, __type__) {
		this.__self__ = __self__;
		this.__type__ = __type__;
	}

	public function __underlying__()
		return new AnyInterface((__type__.kind() == stdgo.reflect.Reflect.ptr
			&& !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic),
			__type__);

	var __self__:Pointer<T_zeroReader>;
	var __type__:stdgo.internal.reflect.Reflect._Type;
}

@:keep @:allow(stdgo.bufio_test.Bufio_test.T_zeroReader_asInterface) class T_zeroReader_static_extension {
	@:keep
	static public function read(_:T_zeroReader, _p:Slice<GoByte>):{var _0:GoInt; var _1:Error;} {
		return {_0: (0 : GoInt), _1: (null : Error)};
	}
}

class StringReader_asInterface {
	@:keep
	public function read(_p:Slice<GoByte>):{var _0:GoInt; var _1:Error;}
		return __self__.value.read(_p);

	public function new(__self__, __type__) {
		this.__self__ = __self__;
		this.__type__ = __type__;
	}

	public function __underlying__()
		return new AnyInterface((__type__.kind() == stdgo.reflect.Reflect.ptr
			&& !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic),
			__type__);

	var __self__:Pointer<StringReader>;
	var __type__:stdgo.internal.reflect.Reflect._Type;
}

@:keep @:allow(stdgo.bufio_test.Bufio_test.StringReader_asInterface) class StringReader_static_extension {
	@:keep
	static public function read(_r:Ref<StringReader>, _p:Slice<GoByte>):{var _0:GoInt; var _1:Error;} {
		var _n:GoInt = (0 : GoInt), _err:Error = (null : Error);
		if (_r._step < (_r._data.length)) {
			var _s:GoString = _r._data[(_r._step : GoInt)];
			_n = Go.copySlice(_p, _s);
			_r._step++;
		} else {
			_err = stdgo.io.Io.eof;
		};
		return {_0: _n, _1: _err};
	}
}

class T_errorWriterTest_asInterface {
	@:keep
	public function write(_p:Slice<GoByte>):{var _0:GoInt; var _1:Error;}
		return __self__.value.write(_p);

	public function new(__self__, __type__) {
		this.__self__ = __self__;
		this.__type__ = __type__;
	}

	public function __underlying__()
		return new AnyInterface((__type__.kind() == stdgo.reflect.Reflect.ptr
			&& !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic),
			__type__);

	var __self__:Pointer<T_errorWriterTest>;
	var __type__:stdgo.internal.reflect.Reflect._Type;
}

@:keep @:allow(stdgo.bufio_test.Bufio_test.T_errorWriterTest_asInterface) class T_errorWriterTest_static_extension {
	@:keep
	static public function write(_w:T_errorWriterTest, _p:Slice<GoByte>):{var _0:GoInt; var _1:Error;} {
		return {_0: (_p.length * _w._n) / _w._m, _1: _w._err};
	}
}

class T_teststringwriter_asInterface {
	@:keep
	public function _check(_t:Ref<stdgo.testing.Testing.T>, _write:GoString, _writeString:GoString):Void
		__self__.value._check(_t, _write, _writeString);

	@:keep
	public function writeString(_s:GoString):{var _0:GoInt; var _1:Error;}
		return __self__.value.writeString(_s);

	@:keep
	public function write(_b:Slice<GoByte>):{var _0:GoInt; var _1:Error;}
		return __self__.value.write(_b);

	public function new(__self__, __type__) {
		this.__self__ = __self__;
		this.__type__ = __type__;
	}

	public function __underlying__()
		return new AnyInterface((__type__.kind() == stdgo.reflect.Reflect.ptr
			&& !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic),
			__type__);

	var __self__:Pointer<T_teststringwriter>;
	var __type__:stdgo.internal.reflect.Reflect._Type;
}

@:keep @:allow(stdgo.bufio_test.Bufio_test.T_teststringwriter_asInterface) class T_teststringwriter_static_extension {
	@:keep
	static public function _check(_w:Ref<T_teststringwriter>, _t:Ref<stdgo.testing.Testing.T>, _write:GoString, _writeString:GoString):Void {
		_t.helper();
		if (_w._write != (_write)) {
			_t.errorf(Go.str("write: expected %q, got %q"), Go.toInterface(_write), Go.toInterface(_w._write));
		};
		if (_w._writeString != (_writeString)) {
			_t.errorf(Go.str("writeString: expected %q, got %q"), Go.toInterface(_writeString), Go.toInterface(_w._writeString));
		};
	}

	@:keep
	static public function writeString(_w:Ref<T_teststringwriter>, _s:GoString):{var _0:GoInt; var _1:Error;} {
		_w._writeString = _w._writeString + (_s);
		return {_0: (_s.length), _1: (null : Error)};
	}

	@:keep
	static public function write(_w:Ref<T_teststringwriter>, _b:Slice<GoByte>):{var _0:GoInt; var _1:Error;} {
		_w._write = _w._write + ((_b : GoString));
		return {_0: (_b.length), _1: (null : Error)};
	}
}

class T_testReader_asInterface {
	@:keep
	public function read(_buf:Slice<GoByte>):{var _0:GoInt; var _1:Error;}
		return __self__.value.read(_buf);

	public function new(__self__, __type__) {
		this.__self__ = __self__;
		this.__type__ = __type__;
	}

	public function __underlying__()
		return new AnyInterface((__type__.kind() == stdgo.reflect.Reflect.ptr
			&& !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic),
			__type__);

	var __self__:Pointer<T_testReader>;
	var __type__:stdgo.internal.reflect.Reflect._Type;
}

@:keep @:allow(stdgo.bufio_test.Bufio_test.T_testReader_asInterface) class T_testReader_static_extension {
	@:keep
	static public function read(_t:Ref<T_testReader>, _buf:Slice<GoByte>):{var _0:GoInt; var _1:Error;} {
		var _n:GoInt = (0 : GoInt), _err:Error = (null : Error);
		_n = _t._stride;
		if (_n > (_t._data.length)) {
			_n = (_t._data.length);
		};
		if (_n > (_buf.length)) {
			_n = (_buf.length);
		};
		Go.copySlice(_buf, _t._data);
		_t._data = (_t._data.__slice__(_n) : Slice<GoUInt8>);
		if ((_t._data.length) == ((0 : GoInt))) {
			_err = stdgo.io.Io.eof;
		};
		return {_0: _n, _1: _err};
	}
}

class T_errorWriterToTest_asInterface {
	@:keep
	public function write(_p:Slice<GoByte>):{var _0:GoInt; var _1:Error;}
		return __self__.value.write(_p);

	@:keep
	public function read(_p:Slice<GoByte>):{var _0:GoInt; var _1:Error;}
		return __self__.value.read(_p);

	public function new(__self__, __type__) {
		this.__self__ = __self__;
		this.__type__ = __type__;
	}

	public function __underlying__()
		return new AnyInterface((__type__.kind() == stdgo.reflect.Reflect.ptr
			&& !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic),
			__type__);

	var __self__:Pointer<T_errorWriterToTest>;
	var __type__:stdgo.internal.reflect.Reflect._Type;
}

@:keep @:allow(stdgo.bufio_test.Bufio_test.T_errorWriterToTest_asInterface) class T_errorWriterToTest_static_extension {
	@:keep
	static public function write(_w:T_errorWriterToTest, _p:Slice<GoByte>):{var _0:GoInt; var _1:Error;} {
		return {_0: (_p.length) * _w._wn, _1: _w._werr};
	}

	@:keep
	static public function read(_r:T_errorWriterToTest, _p:Slice<GoByte>):{var _0:GoInt; var _1:Error;} {
		return {_0: (_p.length) * _r._rn, _1: _r._rerr};
	}
}

class T_errorReaderFromTest_asInterface {
	@:keep
	public function write(_p:Slice<GoByte>):{var _0:GoInt; var _1:Error;}
		return __self__.value.write(_p);

	@:keep
	public function read(_p:Slice<GoByte>):{var _0:GoInt; var _1:Error;}
		return __self__.value.read(_p);

	public function new(__self__, __type__) {
		this.__self__ = __self__;
		this.__type__ = __type__;
	}

	public function __underlying__()
		return new AnyInterface((__type__.kind() == stdgo.reflect.Reflect.ptr
			&& !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic),
			__type__);

	var __self__:Pointer<T_errorReaderFromTest>;
	var __type__:stdgo.internal.reflect.Reflect._Type;
}

@:keep @:allow(stdgo.bufio_test.Bufio_test.T_errorReaderFromTest_asInterface) class T_errorReaderFromTest_static_extension {
	@:keep
	static public function write(_w:T_errorReaderFromTest, _p:Slice<GoByte>):{var _0:GoInt; var _1:Error;} {
		return {_0: (_p.length) * _w._wn, _1: _w._werr};
	}

	@:keep
	static public function read(_r:T_errorReaderFromTest, _p:Slice<GoByte>):{var _0:GoInt; var _1:Error;} {
		return {_0: (_p.length) * _r._rn, _1: _r._rerr};
	}
}

class T_errorThenGoodReader_asInterface {
	@:keep
	public function read(_p:Slice<GoByte>):{var _0:GoInt; var _1:Error;}
		return __self__.value.read(_p);

	public function new(__self__, __type__) {
		this.__self__ = __self__;
		this.__type__ = __type__;
	}

	public function __underlying__()
		return new AnyInterface((__type__.kind() == stdgo.reflect.Reflect.ptr
			&& !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic),
			__type__);

	var __self__:Pointer<T_errorThenGoodReader>;
	var __type__:stdgo.internal.reflect.Reflect._Type;
}

@:keep @:allow(stdgo.bufio_test.Bufio_test.T_errorThenGoodReader_asInterface) class T_errorThenGoodReader_static_extension {
	@:keep
	static public function read(_r:Ref<T_errorThenGoodReader>, _p:Slice<GoByte>):{var _0:GoInt; var _1:Error;} {
		_r._nread++;
		if (!_r._didErr) {
			_r._didErr = true;
			return {_0: (0 : GoInt), _1: _errFake};
		};
		return {_0: (_p.length), _1: (null : Error)};
	}
}

class T_emptyThenNonEmptyReader_asInterface {
	@:keep
	public function read(_p:Slice<GoByte>):{var _0:GoInt; var _1:Error;}
		return __self__.value.read(_p);

	public function new(__self__, __type__) {
		this.__self__ = __self__;
		this.__type__ = __type__;
	}

	public function __underlying__()
		return new AnyInterface((__type__.kind() == stdgo.reflect.Reflect.ptr
			&& !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic),
			__type__);

	var __self__:Pointer<T_emptyThenNonEmptyReader>;
	var __type__:stdgo.internal.reflect.Reflect._Type;
}

@:keep @:allow(stdgo.bufio_test.Bufio_test.T_emptyThenNonEmptyReader_asInterface) class T_emptyThenNonEmptyReader_static_extension {
	@:keep
	static public function read(_r:Ref<T_emptyThenNonEmptyReader>, _p:Slice<GoByte>):{var _0:GoInt; var _1:Error;} {
		if (_r._n <= (0 : GoInt)) {
			return _r._r.read(_p);
		};
		_r._n--;
		return {_0: (0 : GoInt), _1: (null : Error)};
	}
}

class T_readFromWriter_asInterface {
	@:keep
	public function readFrom(_r:stdgo.io.Io.Reader):{var _0:GoInt64; var _1:Error;}
		return __self__.value.readFrom(_r);

	@:keep
	public function write(_p:Slice<GoByte>):{var _0:GoInt; var _1:Error;}
		return __self__.value.write(_p);

	public function new(__self__, __type__) {
		this.__self__ = __self__;
		this.__type__ = __type__;
	}

	public function __underlying__()
		return new AnyInterface((__type__.kind() == stdgo.reflect.Reflect.ptr
			&& !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic),
			__type__);

	var __self__:Pointer<T_readFromWriter>;
	var __type__:stdgo.internal.reflect.Reflect._Type;
}

@:keep @:allow(stdgo.bufio_test.Bufio_test.T_readFromWriter_asInterface) class T_readFromWriter_static_extension {
	@:keep
	static public function readFrom(_w:Ref<T_readFromWriter>, _r:stdgo.io.Io.Reader):{var _0:GoInt64; var _1:Error;} {
		var __tmp__ = stdgo.io.Io.readAll(_r),
			_b:Slice<GoUInt8> = __tmp__._0,
			_err:Error = __tmp__._1;
		_w._buf = _w._buf.__appendref__(..._b.__toArray__());
		_w._readFromBytes = _w._readFromBytes + ((_b.length));
		return {_0: (_b.length : GoInt64), _1: _err};
	}

	@:keep
	static public function write(_w:Ref<T_readFromWriter>, _p:Slice<GoByte>):{var _0:GoInt; var _1:Error;} {
		_w._buf = _w._buf.__appendref__(..._p.__toArray__());
		_w._writeBytes = _w._writeBytes + ((_p.length));
		return {_0: (_p.length), _1: (null : Error)};
	}
}

class T_onlyReader_asInterface {
	@:embedded
	public function read(_p:Slice<GoUInt8>):{var _0:GoInt; var _1:Error;}
		return __self__.value.read(_p);

	public function new(__self__, __type__) {
		this.__self__ = __self__;
		this.__type__ = __type__;
	}

	public function __underlying__()
		return new AnyInterface((__type__.kind() == stdgo.reflect.Reflect.ptr
			&& !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic),
			__type__);

	var __self__:Pointer<T_onlyReader>;
	var __type__:stdgo.internal.reflect.Reflect._Type;
}

@:keep @:allow(stdgo.bufio_test.Bufio_test.T_onlyReader_asInterface) class T_onlyReader_static_extension {
	@:embedded
	public static function read(__self__:T_onlyReader, _p:Slice<GoUInt8>):{var _0:GoInt; var _1:Error;}
		return __self__.read(_p);
}

class T_onlyWriter_asInterface {
	@:embedded
	public function write(_p:Slice<GoUInt8>):{var _0:GoInt; var _1:Error;}
		return __self__.value.write(_p);

	public function new(__self__, __type__) {
		this.__self__ = __self__;
		this.__type__ = __type__;
	}

	public function __underlying__()
		return new AnyInterface((__type__.kind() == stdgo.reflect.Reflect.ptr
			&& !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic),
			__type__);

	var __self__:Pointer<T_onlyWriter>;
	var __type__:stdgo.internal.reflect.Reflect._Type;
}

@:keep @:allow(stdgo.bufio_test.Bufio_test.T_onlyWriter_asInterface) class T_onlyWriter_static_extension {
	@:embedded
	public static function write(__self__:T_onlyWriter, _p:Slice<GoUInt8>):{var _0:GoInt; var _1:Error;}
		return __self__.write(_p);
}

class T_eofReader_asInterface {
	@:keep
	public function read(_p:Slice<GoByte>):{var _0:GoInt; var _1:Error;}
		return __self__.value.read(_p);

	public function new(__self__, __type__) {
		this.__self__ = __self__;
		this.__type__ = __type__;
	}

	public function __underlying__()
		return new AnyInterface((__type__.kind() == stdgo.reflect.Reflect.ptr
			&& !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic),
			__type__);

	var __self__:Pointer<T_eofReader>;
	var __type__:stdgo.internal.reflect.Reflect._Type;
}

@:keep @:allow(stdgo.bufio_test.Bufio_test.T_eofReader_asInterface) class T_eofReader_static_extension {
	@:keep
	static public function read(_r:Ref<T_eofReader>, _p:Slice<GoByte>):{var _0:GoInt; var _1:Error;} {
		var _read:GoInt = Go.copySlice(_p, _r._buf);
		_r._buf = (_r._buf.__slice__(_read) : Slice<GoUInt8>);
		if (_read == ((0 : GoInt)) || _read == ((_r._buf.length))) {
			return {_0: _read, _1: stdgo.io.Io.eof};
		};
		return {_0: _read, _1: (null : Error)};
	}
}

class T_writerWithReadFromError_asInterface {
	@:keep
	public function write(_b:Slice<GoByte>):{var _0:GoInt; var _1:Error;}
		return __self__.value.write(_b);

	@:keep
	public function readFrom(_r:stdgo.io.Io.Reader):{var _0:GoInt64; var _1:Error;}
		return __self__.value.readFrom(_r);

	public function new(__self__, __type__) {
		this.__self__ = __self__;
		this.__type__ = __type__;
	}

	public function __underlying__()
		return new AnyInterface((__type__.kind() == stdgo.reflect.Reflect.ptr
			&& !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic),
			__type__);

	var __self__:Pointer<T_writerWithReadFromError>;
	var __type__:stdgo.internal.reflect.Reflect._Type;
}

@:keep @:allow(stdgo.bufio_test.Bufio_test.T_writerWithReadFromError_asInterface) class T_writerWithReadFromError_static_extension {
	@:keep
	static public function write(_w:T_writerWithReadFromError, _b:Slice<GoByte>):{var _0:GoInt; var _1:Error;} {
		var _n:GoInt = (0 : GoInt), _err:Error = (null : Error);
		return {_0: (10 : GoInt), _1: (null : Error)};
	}

	@:keep
	static public function readFrom(_w:T_writerWithReadFromError, _r:stdgo.io.Io.Reader):{var _0:GoInt64; var _1:Error;} {
		return {_0: ("0" : GoInt64), _1: stdgo.errors.Errors.new_(Go.str("writerWithReadFromError error"))};
	}
}

class T_writeErrorOnlyWriter_asInterface {
	@:keep
	public function write(_p:Slice<GoByte>):{var _0:GoInt; var _1:Error;}
		return __self__.value.write(_p);

	public function new(__self__, __type__) {
		this.__self__ = __self__;
		this.__type__ = __type__;
	}

	public function __underlying__()
		return new AnyInterface((__type__.kind() == stdgo.reflect.Reflect.ptr
			&& !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic),
			__type__);

	var __self__:Pointer<T_writeErrorOnlyWriter>;
	var __type__:stdgo.internal.reflect.Reflect._Type;
}

@:keep @:allow(stdgo.bufio_test.Bufio_test.T_writeErrorOnlyWriter_asInterface) class T_writeErrorOnlyWriter_static_extension {
	@:keep
	static public function write(_w:T_writeErrorOnlyWriter, _p:Slice<GoByte>):{var _0:GoInt; var _1:Error;} {
		var _n:GoInt = (0 : GoInt), _err:Error = (null : Error);
		return {_0: (0 : GoInt), _1: stdgo.errors.Errors.new_(Go.str("writeErrorOnlyWriter error"))};
	}
}

class T_slowReader_asInterface {
	@:keep
	public function read(_p:Slice<GoByte>):{var _0:GoInt; var _1:Error;}
		return __self__.value.read(_p);

	public function new(__self__, __type__) {
		this.__self__ = __self__;
		this.__type__ = __type__;
	}

	public function __underlying__()
		return new AnyInterface((__type__.kind() == stdgo.reflect.Reflect.ptr
			&& !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic),
			__type__);

	var __self__:Pointer<T_slowReader>;
	var __type__:stdgo.internal.reflect.Reflect._Type;
}

@:keep @:allow(stdgo.bufio_test.Bufio_test.T_slowReader_asInterface) class T_slowReader_static_extension {
	@:keep
	static public function read(_sr:Ref<T_slowReader>, _p:Slice<GoByte>):{var _0:GoInt; var _1:Error;} {
		var _n:GoInt = (0 : GoInt), _err:Error = (null : Error);
		if ((_p.length) > _sr._max) {
			_p = (_p.__slice__((0 : GoInt), _sr._max) : Slice<GoUInt8>);
		};
		return _sr._buf.read(_p);
	}
}

class T_alwaysError_asInterface {
	@:keep
	public function read(_p:Slice<GoByte>):{var _0:GoInt; var _1:Error;}
		return __self__.value.read(_p);

	public function new(__self__, __type__) {
		this.__self__ = __self__;
		this.__type__ = __type__;
	}

	public function __underlying__()
		return new AnyInterface((__type__.kind() == stdgo.reflect.Reflect.ptr
			&& !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic),
			__type__);

	var __self__:Pointer<T_alwaysError>;
	var __type__:stdgo.internal.reflect.Reflect._Type;
}

@:keep @:allow(stdgo.bufio_test.Bufio_test.T_alwaysError_asInterface) class T_alwaysError_static_extension {
	@:keep
	static public function read(_:T_alwaysError, _p:Slice<GoByte>):{var _0:GoInt; var _1:Error;} {
		return {_0: (0 : GoInt), _1: stdgo.io.Io.errUnexpectedEOF};
	}
}

class T_endlessZeros_asInterface {
	@:keep
	public function read(_p:Slice<GoByte>):{var _0:GoInt; var _1:Error;}
		return __self__.value.read(_p);

	public function new(__self__, __type__) {
		this.__self__ = __self__;
		this.__type__ = __type__;
	}

	public function __underlying__()
		return new AnyInterface((__type__.kind() == stdgo.reflect.Reflect.ptr
			&& !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic),
			__type__);

	var __self__:Pointer<T_endlessZeros>;
	var __type__:stdgo.internal.reflect.Reflect._Type;
}

@:keep @:allow(stdgo.bufio_test.Bufio_test.T_endlessZeros_asInterface) class T_endlessZeros_static_extension {
	@:keep
	static public function read(_:T_endlessZeros, _p:Slice<GoByte>):{var _0:GoInt; var _1:Error;} {
		return {_0: (0 : GoInt), _1: (null : Error)};
	}
}

class T_largeReader_asInterface {
	@:keep
	public function read(_p:Slice<GoByte>):{var _0:GoInt; var _1:Error;}
		return __self__.value.read(_p);

	public function new(__self__, __type__) {
		this.__self__ = __self__;
		this.__type__ = __type__;
	}

	public function __underlying__()
		return new AnyInterface((__type__.kind() == stdgo.reflect.Reflect.ptr
			&& !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic),
			__type__);

	var __self__:Pointer<T_largeReader>;
	var __type__:stdgo.internal.reflect.Reflect._Type;
}

@:keep @:allow(stdgo.bufio_test.Bufio_test.T_largeReader_asInterface) class T_largeReader_static_extension {
	@:keep
	static public function read(_:T_largeReader, _p:Slice<GoByte>):{var _0:GoInt; var _1:Error;} {
		return {_0: (_p.length) + (1 : GoInt), _1: (null : Error)};
	}
}

class T_dataAndEOFReader_asInterface {
	@:keep
	public function read(_p:Slice<GoByte>):{var _0:GoInt; var _1:Error;}
		return __self__.value.read(_p);

	public function new(__self__, __type__) {
		this.__self__ = __self__;
		this.__type__ = __type__;
	}

	public function __underlying__()
		return new AnyInterface((__type__.kind() == stdgo.reflect.Reflect.ptr
			&& !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic),
			__type__);

	var __self__:Pointer<T_dataAndEOFReader>;
	var __type__:stdgo.internal.reflect.Reflect._Type;
}

@:keep @:allow(stdgo.bufio_test.Bufio_test.T_dataAndEOFReader_asInterface) class T_dataAndEOFReader_static_extension {
	@:keep
	static public function read(_r:T_dataAndEOFReader, _p:Slice<GoByte>):{var _0:GoInt; var _1:Error;} {
		return {_0: Go.copySlice(_p, _r), _1: stdgo.io.Io.eof};
	}
}

class T_writeCountingDiscard_asInterface {
	@:keep
	@:pointer
	public function write(_p:Slice<GoByte>):{var _0:GoInt; var _1:Error;}
		return __self__.value.write(__self__, _p);

	public function new(__self__, __type__) {
		this.__self__ = __self__;
		this.__type__ = __type__;
	}

	public function __underlying__()
		return new AnyInterface((__type__.kind() == stdgo.reflect.Reflect.ptr
			&& !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic),
			__type__);

	var __self__:Pointer<T_writeCountingDiscard>;
	var __type__:stdgo.internal.reflect.Reflect._Type;
}

@:keep @:allow(stdgo.bufio_test.Bufio_test.T_writeCountingDiscard_asInterface) class T_writeCountingDiscard_static_extension {
	@:keep
	@:pointer
	static public function write(____:T_writeCountingDiscard, _w:Pointer<T_writeCountingDiscard>, _p:Slice<GoByte>):{var _0:GoInt; var _1:Error;} {
		_w.value++;
		return {_0: (_p.length), _1: (null : Error)};
	}
}

class T_negativeReader_asInterface {
	@:keep
	@:pointer
	public function read(_0:Slice<GoByte>):{var _0:GoInt; var _1:Error;}
		return __self__.value.read(__self__, _0);

	public function new(__self__, __type__) {
		this.__self__ = __self__;
		this.__type__ = __type__;
	}

	public function __underlying__()
		return new AnyInterface((__type__.kind() == stdgo.reflect.Reflect.ptr
			&& !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic),
			__type__);

	var __self__:Pointer<T_negativeReader>;
	var __type__:stdgo.internal.reflect.Reflect._Type;
}

@:keep @:allow(stdgo.bufio_test.Bufio_test.T_negativeReader_asInterface) class T_negativeReader_static_extension {
	@:keep
	@:pointer
	static public function read(____:T_negativeReader, _r:Pointer<T_negativeReader>, _0:Slice<GoByte>):{var _0:GoInt; var _1:Error;} {
		return {_0: (-1 : GoInt), _1: (null : Error)};
	}
}

class T_scriptedReader_asInterface {
	@:keep
	public function read(_p:Slice<GoByte>):{var _0:GoInt; var _1:Error;}
		return __self__.value.read(_p);

	public function new(__self__, __type__) {
		this.__self__ = __self__;
		this.__type__ = __type__;
	}

	public function __underlying__()
		return new AnyInterface((__type__.kind() == stdgo.reflect.Reflect.ptr
			&& !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic),
			__type__);

	var __self__:Pointer<T_scriptedReader>;
	var __type__:stdgo.internal.reflect.Reflect._Type;
}

@:keep @:allow(stdgo.bufio_test.Bufio_test.T_scriptedReader_asInterface) class T_scriptedReader_static_extension {
	@:keep
	static public function read(_sr:Ref<T_scriptedReader>, _p:Slice<GoByte>):{var _0:GoInt; var _1:Error;} {
		var _n:GoInt = (0 : GoInt), _err:Error = (null : Error);
		if ((_sr.length) == ((0 : GoInt))) {
			throw Go.toInterface(Go.str("too many Read calls on scripted Reader. No steps remain."));
		};
		var _step = (_sr)[(0 : GoInt)];
		_sr = ((_sr).__slice__((1 : GoInt)) : stdgo.bufio_test.Bufio_test.T_scriptedReader);
		return _step(_p);
	}
}

class T_countdown_asInterface {
	@:keep
	@:pointer
	public function _split(_data:Slice<GoByte>, _atEOF:Bool):{var _0:GoInt; var _1:Slice<GoByte>; var _2:Error;}
		return __self__.value._split(__self__, _data, _atEOF);

	public function new(__self__, __type__) {
		this.__self__ = __self__;
		this.__type__ = __type__;
	}

	public function __underlying__()
		return new AnyInterface((__type__.kind() == stdgo.reflect.Reflect.ptr
			&& !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic),
			__type__);

	var __self__:Pointer<T_countdown>;
	var __type__:stdgo.internal.reflect.Reflect._Type;
}

@:keep @:allow(stdgo.bufio_test.Bufio_test.T_countdown_asInterface) class T_countdown_static_extension {
	@:keep
	@:pointer
	static public function _split(____:T_countdown, _c:Pointer<T_countdown>, _data:Slice<GoByte>,
			_atEOF:Bool):{var _0:GoInt; var _1:Slice<GoByte>; var _2:Error;} {
		var _advance:GoInt = (0 : GoInt),
			_token:Slice<GoByte> = (null : Slice<GoUInt8>),
			_err:Error = (null : Error);
		if (_c.value > (0 : stdgo.bufio_test.Bufio_test.T_countdown)) {
			_c.value--;
			return {_0: (1 : GoInt), _1: (_data.__slice__(0, (1 : GoInt)) : Slice<GoUInt8>), _2: (null : Error)};
		};
		return {_0: (0 : GoInt), _1: (null : Slice<GoUInt8>), _2: (null : Error)};
	}
}

class T_negativeEOFReader_asInterface {
	@:keep
	@:pointer
	public function read(_p:Slice<GoByte>):{var _0:GoInt; var _1:Error;}
		return __self__.value.read(__self__, _p);

	public function new(__self__, __type__) {
		this.__self__ = __self__;
		this.__type__ = __type__;
	}

	public function __underlying__()
		return new AnyInterface((__type__.kind() == stdgo.reflect.Reflect.ptr
			&& !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic),
			__type__);

	var __self__:Pointer<T_negativeEOFReader>;
	var __type__:stdgo.internal.reflect.Reflect._Type;
}

@:keep @:allow(stdgo.bufio_test.Bufio_test.T_negativeEOFReader_asInterface) class T_negativeEOFReader_static_extension {
	@:keep
	@:pointer
	static public function read(____:T_negativeEOFReader, _r:Pointer<T_negativeEOFReader>, _p:Slice<GoByte>):{var _0:GoInt; var _1:Error;} {
		if (_r.value > (0 : stdgo.bufio_test.Bufio_test.T_negativeEOFReader)) {
			var _c:GoInt = (_r.value : GoInt);
			if (_c > (_p.length)) {
				_c = (_p.length);
			};
			{
				var _i:GoInt = (0 : GoInt);
				Go.cfor(_i < _c, _i++, {
					_p[(_i : GoInt)] = (97 : GoUInt8);
				});
			};
			_p[(_c - (1 : GoInt) : GoInt)] = (10 : GoUInt8);
			_r.value = _r.value - ((_c : T_negativeEOFReader));
			return {_0: _c, _1: (null : Error)};
		};
		return {_0: (-1 : GoInt), _1: stdgo.io.Io.eof};
	}
}
