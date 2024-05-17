package stdgo._internal.bufio_test;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.bufio.Bufio;
final _minReadBufferSize : stdgo.GoUInt64 = (16i64 : stdgo.GoUInt64);
final _smallMaxTokenSize : stdgo.GoUInt64 = (256i64 : stdgo.GoUInt64);
var _readMakers : stdgo.Slice<stdgo._internal.bufio_test.Bufio_test.T_readMaker> = (new stdgo.Slice<stdgo._internal.bufio_test.Bufio_test.T_readMaker>(5, 5, ...[(new stdgo._internal.bufio_test.Bufio_test.T_readMaker(("full" : stdgo.GoString), function(_r:stdgo._internal.io.Io.Reader):stdgo._internal.io.Io.Reader {
        return _r;
    }) : stdgo._internal.bufio_test.Bufio_test.T_readMaker), (new stdgo._internal.bufio_test.Bufio_test.T_readMaker(("byte" : stdgo.GoString), stdgo._internal.testing.iotest.Iotest.oneByteReader) : stdgo._internal.bufio_test.Bufio_test.T_readMaker), (new stdgo._internal.bufio_test.Bufio_test.T_readMaker(("half" : stdgo.GoString), stdgo._internal.testing.iotest.Iotest.halfReader) : stdgo._internal.bufio_test.Bufio_test.T_readMaker), (new stdgo._internal.bufio_test.Bufio_test.T_readMaker(("data+err" : stdgo.GoString), stdgo._internal.testing.iotest.Iotest.dataErrReader) : stdgo._internal.bufio_test.Bufio_test.T_readMaker), (new stdgo._internal.bufio_test.Bufio_test.T_readMaker(("timeout" : stdgo.GoString), stdgo._internal.testing.iotest.Iotest.timeoutReader) : stdgo._internal.bufio_test.Bufio_test.T_readMaker)].concat([for (i in 5 ... (5 > 5 ? 5 : 5 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.bufio_test.Bufio_test.T_readMaker)])) : stdgo.Slice<stdgo._internal.bufio_test.Bufio_test.T_readMaker>);
var _bufreaders : stdgo.Slice<stdgo._internal.bufio_test.Bufio_test.T_bufReader> = (new stdgo.Slice<stdgo._internal.bufio_test.Bufio_test.T_bufReader>(8, 8, ...[(new stdgo._internal.bufio_test.Bufio_test.T_bufReader(("1" : stdgo.GoString), function(_b:stdgo.Ref<Reader>):stdgo.GoString {
        return _reads(_b, (1 : stdgo.GoInt))?.__copy__();
    }) : stdgo._internal.bufio_test.Bufio_test.T_bufReader), (new stdgo._internal.bufio_test.Bufio_test.T_bufReader(("2" : stdgo.GoString), function(_b:stdgo.Ref<Reader>):stdgo.GoString {
        return _reads(_b, (2 : stdgo.GoInt))?.__copy__();
    }) : stdgo._internal.bufio_test.Bufio_test.T_bufReader), (new stdgo._internal.bufio_test.Bufio_test.T_bufReader(("3" : stdgo.GoString), function(_b:stdgo.Ref<Reader>):stdgo.GoString {
        return _reads(_b, (3 : stdgo.GoInt))?.__copy__();
    }) : stdgo._internal.bufio_test.Bufio_test.T_bufReader), (new stdgo._internal.bufio_test.Bufio_test.T_bufReader(("4" : stdgo.GoString), function(_b:stdgo.Ref<Reader>):stdgo.GoString {
        return _reads(_b, (4 : stdgo.GoInt))?.__copy__();
    }) : stdgo._internal.bufio_test.Bufio_test.T_bufReader), (new stdgo._internal.bufio_test.Bufio_test.T_bufReader(("5" : stdgo.GoString), function(_b:stdgo.Ref<Reader>):stdgo.GoString {
        return _reads(_b, (5 : stdgo.GoInt))?.__copy__();
    }) : stdgo._internal.bufio_test.Bufio_test.T_bufReader), (new stdgo._internal.bufio_test.Bufio_test.T_bufReader(("7" : stdgo.GoString), function(_b:stdgo.Ref<Reader>):stdgo.GoString {
        return _reads(_b, (7 : stdgo.GoInt))?.__copy__();
    }) : stdgo._internal.bufio_test.Bufio_test.T_bufReader), (new stdgo._internal.bufio_test.Bufio_test.T_bufReader(("bytes" : stdgo.GoString), _readBytes) : stdgo._internal.bufio_test.Bufio_test.T_bufReader), (new stdgo._internal.bufio_test.Bufio_test.T_bufReader(("lines" : stdgo.GoString), _readLines) : stdgo._internal.bufio_test.Bufio_test.T_bufReader)].concat([for (i in 8 ... (8 > 8 ? 8 : 8 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.bufio_test.Bufio_test.T_bufReader)])) : stdgo.Slice<stdgo._internal.bufio_test.Bufio_test.T_bufReader>);
var _bufsizes : stdgo.Slice<stdgo.GoInt> = (new stdgo.Slice<stdgo.GoInt>(10, 10, ...[(0 : stdgo.GoInt), (16 : stdgo.GoInt), (23 : stdgo.GoInt), (32 : stdgo.GoInt), (46 : stdgo.GoInt), (64 : stdgo.GoInt), (93 : stdgo.GoInt), (128 : stdgo.GoInt), (1024 : stdgo.GoInt), (4096 : stdgo.GoInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
var _segmentList : stdgo.Slice<stdgo.Slice<stdgo.GoString>> = (new stdgo.Slice<stdgo.Slice<stdgo.GoString>>(8, 8, ...[(new stdgo.Slice<stdgo.GoString>(0, 0, ...[]).__setString__() : stdgo.Slice<stdgo.GoString>), (new stdgo.Slice<stdgo.GoString>(1, 1, ...[stdgo.Go.str()?.__copy__()]).__setString__() : stdgo.Slice<stdgo.GoString>), (new stdgo.Slice<stdgo.GoString>(2, 2, ...[("日" : stdgo.GoString), ("本語" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>), (new stdgo.Slice<stdgo.GoString>(3, 3, ...[("日" : stdgo.GoString), ("本" : stdgo.GoString), ("語" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>), (new stdgo.Slice<stdgo.GoString>(3, 3, ...[("日" : stdgo.GoString), ("本" : stdgo.GoString), ("語" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>), (new stdgo.Slice<stdgo.GoString>(3, 3, ...[stdgo.Go.str(230)?.__copy__(), stdgo.Go.str(151, 165, 230)?.__copy__(), stdgo.Go.str(156, 172, "語")?.__copy__()]).__setString__() : stdgo.Slice<stdgo.GoString>), (new stdgo.Slice<stdgo.GoString>(4, 4, ...[("Hello" : stdgo.GoString), (", " : stdgo.GoString), ("World" : stdgo.GoString), ("!" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>), (new stdgo.Slice<stdgo.GoString>(5, 5, ...[("Hello" : stdgo.GoString), (", " : stdgo.GoString), stdgo.Go.str()?.__copy__(), ("World" : stdgo.GoString), ("!" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>)]) : stdgo.Slice<stdgo.Slice<stdgo.GoString>>);
var _errorWriterTests : stdgo.Slice<stdgo._internal.bufio_test.Bufio_test.T_errorWriterTest> = (new stdgo.Slice<stdgo._internal.bufio_test.Bufio_test.T_errorWriterTest>(6, 6, ...[(new stdgo._internal.bufio_test.Bufio_test.T_errorWriterTest((0 : stdgo.GoInt), (1 : stdgo.GoInt), (null : stdgo.Error), stdgo._internal.io.Io.errShortWrite) : stdgo._internal.bufio_test.Bufio_test.T_errorWriterTest), (new stdgo._internal.bufio_test.Bufio_test.T_errorWriterTest((1 : stdgo.GoInt), (2 : stdgo.GoInt), (null : stdgo.Error), stdgo._internal.io.Io.errShortWrite) : stdgo._internal.bufio_test.Bufio_test.T_errorWriterTest), (new stdgo._internal.bufio_test.Bufio_test.T_errorWriterTest((1 : stdgo.GoInt), (1 : stdgo.GoInt), (null : stdgo.Error), (null : stdgo.Error)) : stdgo._internal.bufio_test.Bufio_test.T_errorWriterTest), (new stdgo._internal.bufio_test.Bufio_test.T_errorWriterTest((0 : stdgo.GoInt), (1 : stdgo.GoInt), stdgo._internal.io.Io.errClosedPipe, stdgo._internal.io.Io.errClosedPipe) : stdgo._internal.bufio_test.Bufio_test.T_errorWriterTest), (new stdgo._internal.bufio_test.Bufio_test.T_errorWriterTest((1 : stdgo.GoInt), (2 : stdgo.GoInt), stdgo._internal.io.Io.errClosedPipe, stdgo._internal.io.Io.errClosedPipe) : stdgo._internal.bufio_test.Bufio_test.T_errorWriterTest), (new stdgo._internal.bufio_test.Bufio_test.T_errorWriterTest((1 : stdgo.GoInt), (1 : stdgo.GoInt), stdgo._internal.io.Io.errClosedPipe, stdgo._internal.io.Io.errClosedPipe) : stdgo._internal.bufio_test.Bufio_test.T_errorWriterTest)].concat([for (i in 6 ... (6 > 6 ? 6 : 6 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.bufio_test.Bufio_test.T_errorWriterTest)])) : stdgo.Slice<stdgo._internal.bufio_test.Bufio_test.T_errorWriterTest>);
var _testOutput : stdgo.Slice<stdgo.GoUInt8> = (("0123456789abcdefghijklmnopqrstuvwxy" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>);
var _testInput : stdgo.Slice<stdgo.GoUInt8> = (("012\n345\n678\n9ab\ncde\nfgh\nijk\nlmn\nopq\nrst\nuvw\nxy" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>);
var _testInputrn : stdgo.Slice<stdgo.GoUInt8> = (("012\r\n345\r\n678\r\n9ab\r\ncde\r\nfgh\r\nijk\r\nlmn\r\nopq\r\nrst\r\nuvw\r\nxy\r\n\n\r\n" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>);
var _readLineNewlinesTests : stdgo.Slice<T__struct_0> = (new stdgo.Slice<T__struct_0>(2, 2, ...[({ _input : ("012345678901234\r\n012345678901234\r\n" : stdgo.GoString), _expect : (new stdgo.Slice<stdgo._internal.bufio_test.Bufio_test.T_readLineResult>(5, 5, ...[(new stdgo._internal.bufio_test.Bufio_test.T_readLineResult((("012345678901234" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>), true, (null : stdgo.Error)) : stdgo._internal.bufio_test.Bufio_test.T_readLineResult), (new stdgo._internal.bufio_test.Bufio_test.T_readLineResult((null : stdgo.Slice<stdgo.GoUInt8>), false, (null : stdgo.Error)) : stdgo._internal.bufio_test.Bufio_test.T_readLineResult), (new stdgo._internal.bufio_test.Bufio_test.T_readLineResult((("012345678901234" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>), true, (null : stdgo.Error)) : stdgo._internal.bufio_test.Bufio_test.T_readLineResult), (new stdgo._internal.bufio_test.Bufio_test.T_readLineResult((null : stdgo.Slice<stdgo.GoUInt8>), false, (null : stdgo.Error)) : stdgo._internal.bufio_test.Bufio_test.T_readLineResult), (new stdgo._internal.bufio_test.Bufio_test.T_readLineResult((null : stdgo.Slice<stdgo.GoUInt8>), false, stdgo._internal.io.Io.eof) : stdgo._internal.bufio_test.Bufio_test.T_readLineResult)].concat([for (i in 5 ... (5 > 5 ? 5 : 5 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.bufio_test.Bufio_test.T_readLineResult)])) : stdgo.Slice<stdgo._internal.bufio_test.Bufio_test.T_readLineResult>) } : T__struct_0), ({ _input : ("0123456789012345\r012345678901234\r" : stdgo.GoString), _expect : (new stdgo.Slice<stdgo._internal.bufio_test.Bufio_test.T_readLineResult>(4, 4, ...[(new stdgo._internal.bufio_test.Bufio_test.T_readLineResult((("0123456789012345" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>), true, (null : stdgo.Error)) : stdgo._internal.bufio_test.Bufio_test.T_readLineResult), (new stdgo._internal.bufio_test.Bufio_test.T_readLineResult((("\r012345678901234" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>), true, (null : stdgo.Error)) : stdgo._internal.bufio_test.Bufio_test.T_readLineResult), (new stdgo._internal.bufio_test.Bufio_test.T_readLineResult((("\r" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>), false, (null : stdgo.Error)) : stdgo._internal.bufio_test.Bufio_test.T_readLineResult), (new stdgo._internal.bufio_test.Bufio_test.T_readLineResult((null : stdgo.Slice<stdgo.GoUInt8>), false, stdgo._internal.io.Io.eof) : stdgo._internal.bufio_test.Bufio_test.T_readLineResult)].concat([for (i in 4 ... (4 > 4 ? 4 : 4 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.bufio_test.Bufio_test.T_readLineResult)])) : stdgo.Slice<stdgo._internal.bufio_test.Bufio_test.T_readLineResult>) } : T__struct_0)].concat([for (i in 2 ... (2 > 2 ? 2 : 2 : stdgo.GoInt).toBasic()) ({ _input : ("" : stdgo.GoString), _expect : (null : stdgo.Slice<stdgo._internal.bufio_test.Bufio_test.T_readLineResult>) } : T__struct_0)])) : stdgo.Slice<T__struct_0>);
var _errorWriterToTests : stdgo.Slice<stdgo._internal.bufio_test.Bufio_test.T_errorWriterToTest> = (new stdgo.Slice<stdgo._internal.bufio_test.Bufio_test.T_errorWriterToTest>(4, 4, ...[(new stdgo._internal.bufio_test.Bufio_test.T_errorWriterToTest((1 : stdgo.GoInt), (0 : stdgo.GoInt), (null : stdgo.Error), stdgo._internal.io.Io.errClosedPipe, stdgo._internal.io.Io.errClosedPipe) : stdgo._internal.bufio_test.Bufio_test.T_errorWriterToTest), (new stdgo._internal.bufio_test.Bufio_test.T_errorWriterToTest((0 : stdgo.GoInt), (1 : stdgo.GoInt), stdgo._internal.io.Io.errClosedPipe, (null : stdgo.Error), stdgo._internal.io.Io.errClosedPipe) : stdgo._internal.bufio_test.Bufio_test.T_errorWriterToTest), (new stdgo._internal.bufio_test.Bufio_test.T_errorWriterToTest((0 : stdgo.GoInt), (0 : stdgo.GoInt), stdgo._internal.io.Io.errUnexpectedEOF, stdgo._internal.io.Io.errClosedPipe, stdgo._internal.io.Io.errClosedPipe) : stdgo._internal.bufio_test.Bufio_test.T_errorWriterToTest), (new stdgo._internal.bufio_test.Bufio_test.T_errorWriterToTest((0 : stdgo.GoInt), (1 : stdgo.GoInt), stdgo._internal.io.Io.eof, (null : stdgo.Error), (null : stdgo.Error)) : stdgo._internal.bufio_test.Bufio_test.T_errorWriterToTest)].concat([for (i in 4 ... (4 > 4 ? 4 : 4 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.bufio_test.Bufio_test.T_errorWriterToTest)])) : stdgo.Slice<stdgo._internal.bufio_test.Bufio_test.T_errorWriterToTest>);
var _errorReaderFromTests : stdgo.Slice<stdgo._internal.bufio_test.Bufio_test.T_errorReaderFromTest> = (new stdgo.Slice<stdgo._internal.bufio_test.Bufio_test.T_errorReaderFromTest>(5, 5, ...[(new stdgo._internal.bufio_test.Bufio_test.T_errorReaderFromTest((0 : stdgo.GoInt), (1 : stdgo.GoInt), stdgo._internal.io.Io.eof, (null : stdgo.Error), (null : stdgo.Error)) : stdgo._internal.bufio_test.Bufio_test.T_errorReaderFromTest), (new stdgo._internal.bufio_test.Bufio_test.T_errorReaderFromTest((1 : stdgo.GoInt), (1 : stdgo.GoInt), stdgo._internal.io.Io.eof, (null : stdgo.Error), (null : stdgo.Error)) : stdgo._internal.bufio_test.Bufio_test.T_errorReaderFromTest), (new stdgo._internal.bufio_test.Bufio_test.T_errorReaderFromTest((0 : stdgo.GoInt), (1 : stdgo.GoInt), stdgo._internal.io.Io.errClosedPipe, (null : stdgo.Error), stdgo._internal.io.Io.errClosedPipe) : stdgo._internal.bufio_test.Bufio_test.T_errorReaderFromTest), (new stdgo._internal.bufio_test.Bufio_test.T_errorReaderFromTest((0 : stdgo.GoInt), (0 : stdgo.GoInt), stdgo._internal.io.Io.errClosedPipe, stdgo._internal.io.Io.errShortWrite, stdgo._internal.io.Io.errClosedPipe) : stdgo._internal.bufio_test.Bufio_test.T_errorReaderFromTest), (new stdgo._internal.bufio_test.Bufio_test.T_errorReaderFromTest((1 : stdgo.GoInt), (0 : stdgo.GoInt), (null : stdgo.Error), stdgo._internal.io.Io.errShortWrite, stdgo._internal.io.Io.errShortWrite) : stdgo._internal.bufio_test.Bufio_test.T_errorReaderFromTest)].concat([for (i in 5 ... (5 > 5 ? 5 : 5 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.bufio_test.Bufio_test.T_errorReaderFromTest)])) : stdgo.Slice<stdgo._internal.bufio_test.Bufio_test.T_errorReaderFromTest>);
var _errFake : stdgo.Error = stdgo._internal.errors.Errors.new_(("fake error" : stdgo.GoString));
var _scanTests : stdgo.Slice<stdgo.GoString> = (new stdgo.Slice<stdgo.GoString>(9, 9, ...[stdgo.Go.str()?.__copy__(), ("a" : stdgo.GoString), ("¼" : stdgo.GoString), ("☹" : stdgo.GoString), stdgo.Go.str(129)?.__copy__(), ("�" : stdgo.GoString), ("abcdefgh" : stdgo.GoString), ("abc def\n\t\tgh    " : stdgo.GoString), stdgo.Go.str("abc¼☹", 129, "�日本語", 130, "abc")?.__copy__()]).__setString__() : stdgo.Slice<stdgo.GoString>);
var _wordScanTests : stdgo.Slice<stdgo.GoString> = (new stdgo.Slice<stdgo.GoString>(8, 8, ...[stdgo.Go.str()?.__copy__(), (" " : stdgo.GoString), ("\n" : stdgo.GoString), ("a" : stdgo.GoString), (" a " : stdgo.GoString), ("abc def" : stdgo.GoString), (" abc def " : stdgo.GoString), (" abc\tdef\nghi\rjkl\x0Cmno\x0Bpqr\u0085stu\u00a0\n" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>);
var _testError : stdgo.Error = stdgo._internal.errors.Errors.new_(("testError" : stdgo.GoString));
@:structInit @:private @:using(stdgo._internal.bufio_test.Bufio_test.T_rot13Reader_static_extension) class T_rot13Reader {
    public var _r : stdgo._internal.io.Io.Reader = (null : stdgo._internal.io.Io.Reader);
    public function new(?_r:stdgo._internal.io.Io.Reader) {
        if (_r != null) this._r = _r;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_rot13Reader(_r);
    }
}
@:structInit @:private class T_readMaker {
    public var _name : stdgo.GoString = "";
    public var _fn : stdgo._internal.io.Io.Reader -> stdgo._internal.io.Io.Reader = null;
    public function new(?_name:stdgo.GoString, ?_fn:stdgo._internal.io.Io.Reader -> stdgo._internal.io.Io.Reader) {
        if (_name != null) this._name = _name;
        if (_fn != null) this._fn = _fn;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_readMaker(_name, _fn);
    }
}
@:structInit @:private class T_bufReader {
    public var _name : stdgo.GoString = "";
    public var _fn : stdgo.Ref<stdgo._internal.bufio.Bufio.Reader> -> stdgo.GoString = null;
    public function new(?_name:stdgo.GoString, ?_fn:stdgo.Ref<stdgo._internal.bufio.Bufio.Reader> -> stdgo.GoString) {
        if (_name != null) this._name = _name;
        if (_fn != null) this._fn = _fn;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_bufReader(_name, _fn);
    }
}
@:structInit @:private @:using(stdgo._internal.bufio_test.Bufio_test.T_zeroReader_static_extension) class T_zeroReader {
    public function new() {}
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_zeroReader();
    }
}
@:structInit @:using(stdgo._internal.bufio_test.Bufio_test.StringReader_static_extension) class StringReader {
    public var _data : stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
    public var _step : stdgo.GoInt = 0;
    public function new(?_data:stdgo.Slice<stdgo.GoString>, ?_step:stdgo.GoInt) {
        if (_data != null) this._data = _data;
        if (_step != null) this._step = _step;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new StringReader(_data, _step);
    }
}
@:structInit @:private @:using(stdgo._internal.bufio_test.Bufio_test.T_errorWriterTest_static_extension) class T_errorWriterTest {
    public var _n : stdgo.GoInt = 0;
    public var _m : stdgo.GoInt = 0;
    public var _err : stdgo.Error = (null : stdgo.Error);
    public var _expect : stdgo.Error = (null : stdgo.Error);
    public function new(?_n:stdgo.GoInt, ?_m:stdgo.GoInt, ?_err:stdgo.Error, ?_expect:stdgo.Error) {
        if (_n != null) this._n = _n;
        if (_m != null) this._m = _m;
        if (_err != null) this._err = _err;
        if (_expect != null) this._expect = _expect;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_errorWriterTest(_n, _m, _err, _expect);
    }
}
@:structInit @:private @:using(stdgo._internal.bufio_test.Bufio_test.T_teststringwriter_static_extension) class T_teststringwriter {
    public var _write : stdgo.GoString = "";
    public var _writeString : stdgo.GoString = "";
    public function new(?_write:stdgo.GoString, ?_writeString:stdgo.GoString) {
        if (_write != null) this._write = _write;
        if (_writeString != null) this._writeString = _writeString;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_teststringwriter(_write, _writeString);
    }
}
@:structInit @:private @:using(stdgo._internal.bufio_test.Bufio_test.T_testReader_static_extension) class T_testReader {
    public var _data : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public var _stride : stdgo.GoInt = 0;
    public function new(?_data:stdgo.Slice<stdgo.GoUInt8>, ?_stride:stdgo.GoInt) {
        if (_data != null) this._data = _data;
        if (_stride != null) this._stride = _stride;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_testReader(_data, _stride);
    }
}
@:structInit @:private class T_readLineResult {
    public var _line : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public var _isPrefix : Bool = false;
    public var _err : stdgo.Error = (null : stdgo.Error);
    public function new(?_line:stdgo.Slice<stdgo.GoUInt8>, ?_isPrefix:Bool, ?_err:stdgo.Error) {
        if (_line != null) this._line = _line;
        if (_isPrefix != null) this._isPrefix = _isPrefix;
        if (_err != null) this._err = _err;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_readLineResult(_line, _isPrefix, _err);
    }
}
@:structInit @:private @:using(stdgo._internal.bufio_test.Bufio_test.T_errorWriterToTest_static_extension) class T_errorWriterToTest {
    public var _rn : stdgo.GoInt = 0;
    public var _wn : stdgo.GoInt = 0;
    public var _rerr : stdgo.Error = (null : stdgo.Error);
    public var _werr : stdgo.Error = (null : stdgo.Error);
    public var _expected : stdgo.Error = (null : stdgo.Error);
    public function new(?_rn:stdgo.GoInt, ?_wn:stdgo.GoInt, ?_rerr:stdgo.Error, ?_werr:stdgo.Error, ?_expected:stdgo.Error) {
        if (_rn != null) this._rn = _rn;
        if (_wn != null) this._wn = _wn;
        if (_rerr != null) this._rerr = _rerr;
        if (_werr != null) this._werr = _werr;
        if (_expected != null) this._expected = _expected;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_errorWriterToTest(_rn, _wn, _rerr, _werr, _expected);
    }
}
@:structInit @:private @:using(stdgo._internal.bufio_test.Bufio_test.T_errorReaderFromTest_static_extension) class T_errorReaderFromTest {
    public var _rn : stdgo.GoInt = 0;
    public var _wn : stdgo.GoInt = 0;
    public var _rerr : stdgo.Error = (null : stdgo.Error);
    public var _werr : stdgo.Error = (null : stdgo.Error);
    public var _expected : stdgo.Error = (null : stdgo.Error);
    public function new(?_rn:stdgo.GoInt, ?_wn:stdgo.GoInt, ?_rerr:stdgo.Error, ?_werr:stdgo.Error, ?_expected:stdgo.Error) {
        if (_rn != null) this._rn = _rn;
        if (_wn != null) this._wn = _wn;
        if (_rerr != null) this._rerr = _rerr;
        if (_werr != null) this._werr = _werr;
        if (_expected != null) this._expected = _expected;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_errorReaderFromTest(_rn, _wn, _rerr, _werr, _expected);
    }
}
@:structInit @:private @:using(stdgo._internal.bufio_test.Bufio_test.T_errorThenGoodReader_static_extension) class T_errorThenGoodReader {
    public var _didErr : Bool = false;
    public var _nread : stdgo.GoInt = 0;
    public function new(?_didErr:Bool, ?_nread:stdgo.GoInt) {
        if (_didErr != null) this._didErr = _didErr;
        if (_nread != null) this._nread = _nread;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_errorThenGoodReader(_didErr, _nread);
    }
}
@:structInit @:private @:using(stdgo._internal.bufio_test.Bufio_test.T_emptyThenNonEmptyReader_static_extension) class T_emptyThenNonEmptyReader {
    public var _r : stdgo._internal.io.Io.Reader = (null : stdgo._internal.io.Io.Reader);
    public var _n : stdgo.GoInt = 0;
    public function new(?_r:stdgo._internal.io.Io.Reader, ?_n:stdgo.GoInt) {
        if (_r != null) this._r = _r;
        if (_n != null) this._n = _n;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_emptyThenNonEmptyReader(_r, _n);
    }
}
@:structInit @:private @:using(stdgo._internal.bufio_test.Bufio_test.T_readFromWriter_static_extension) class T_readFromWriter {
    public var _buf : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public var _writeBytes : stdgo.GoInt = 0;
    public var _readFromBytes : stdgo.GoInt = 0;
    public function new(?_buf:stdgo.Slice<stdgo.GoUInt8>, ?_writeBytes:stdgo.GoInt, ?_readFromBytes:stdgo.GoInt) {
        if (_buf != null) this._buf = _buf;
        if (_writeBytes != null) this._writeBytes = _writeBytes;
        if (_readFromBytes != null) this._readFromBytes = _readFromBytes;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_readFromWriter(_buf, _writeBytes, _readFromBytes);
    }
}
@:structInit @:private @:using(stdgo._internal.bufio_test.Bufio_test.T_onlyReader_static_extension) class T_onlyReader {
    @:embedded
    public var reader : stdgo._internal.io.Io.Reader = (null : stdgo._internal.io.Io.Reader);
    public function new(?reader:stdgo._internal.io.Io.Reader) {
        if (reader != null) this.reader = reader;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    @:embedded
    public function read(_p:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return reader.read(_p);
    public function __copy__() {
        return new T_onlyReader(reader);
    }
}
@:structInit @:private @:using(stdgo._internal.bufio_test.Bufio_test.T_onlyWriter_static_extension) class T_onlyWriter {
    @:embedded
    public var writer : stdgo._internal.io.Io.Writer = (null : stdgo._internal.io.Io.Writer);
    public function new(?writer:stdgo._internal.io.Io.Writer) {
        if (writer != null) this.writer = writer;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    @:embedded
    public function write(_p:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return writer.write(_p);
    public function __copy__() {
        return new T_onlyWriter(writer);
    }
}
@:structInit @:private @:using(stdgo._internal.bufio_test.Bufio_test.T_eofReader_static_extension) class T_eofReader {
    public var _buf : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public function new(?_buf:stdgo.Slice<stdgo.GoUInt8>) {
        if (_buf != null) this._buf = _buf;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_eofReader(_buf);
    }
}
@:structInit @:private @:using(stdgo._internal.bufio_test.Bufio_test.T_writerWithReadFromError_static_extension) class T_writerWithReadFromError {
    public function new() {}
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_writerWithReadFromError();
    }
}
@:structInit @:private @:using(stdgo._internal.bufio_test.Bufio_test.T_writeErrorOnlyWriter_static_extension) class T_writeErrorOnlyWriter {
    public function new() {}
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_writeErrorOnlyWriter();
    }
}
@:structInit @:private @:using(stdgo._internal.bufio_test.Bufio_test.T_slowReader_static_extension) class T_slowReader {
    public var _max : stdgo.GoInt = 0;
    public var _buf : stdgo._internal.io.Io.Reader = (null : stdgo._internal.io.Io.Reader);
    public function new(?_max:stdgo.GoInt, ?_buf:stdgo._internal.io.Io.Reader) {
        if (_max != null) this._max = _max;
        if (_buf != null) this._buf = _buf;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_slowReader(_max, _buf);
    }
}
@:structInit @:private @:using(stdgo._internal.bufio_test.Bufio_test.T_alwaysError_static_extension) class T_alwaysError {
    public function new() {}
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_alwaysError();
    }
}
@:structInit @:private @:using(stdgo._internal.bufio_test.Bufio_test.T_endlessZeros_static_extension) class T_endlessZeros {
    public function new() {}
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_endlessZeros();
    }
}
@:structInit @:private @:using(stdgo._internal.bufio_test.Bufio_test.T_largeReader_static_extension) class T_largeReader {
    public function new() {}
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_largeReader();
    }
}
class T__struct_0_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T__struct_0>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.bufio_test.Bufio_test.T__struct_0_asInterface) class T__struct_0_static_extension {

}
@:local @:using(stdgo._internal.bufio_test.Bufio_test.T__struct_0_static_extension) typedef T__struct_0 = {
    public var _input : stdgo.GoString;
    public var _expect : stdgo.Slice<stdgo._internal.bufio_test.Bufio_test.T_readLineResult>;
};
class T__struct_1_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T__struct_1>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.bufio_test.Bufio_test.T__struct_1_asInterface) class T__struct_1_static_extension {

}
@:local @:using(stdgo._internal.bufio_test.Bufio_test.T__struct_1_static_extension) typedef T__struct_1 = {
    public var _name : stdgo.GoString;
    public var _r : stdgo._internal.io.Io.Reader;
    public var _bufSize : stdgo.GoInt;
    public var _peekSize : stdgo.GoInt;
    public var _n : stdgo.GoInt;
    public var _want : stdgo.GoInt;
    public var _wantErr : stdgo.Error;
    public var _wantBuffered : stdgo.GoInt;
};
@:named @:using(stdgo._internal.bufio_test.Bufio_test.T_dataAndEOFReader_static_extension) typedef T_dataAndEOFReader = stdgo.GoString;
@:named @:using(stdgo._internal.bufio_test.Bufio_test.T_writeCountingDiscard_static_extension) typedef T_writeCountingDiscard = stdgo.GoInt;
@:named @:using(stdgo._internal.bufio_test.Bufio_test.T_negativeReader_static_extension) typedef T_negativeReader = stdgo.GoInt;
@:named @:using(stdgo._internal.bufio_test.Bufio_test.T_scriptedReader_static_extension) typedef T_scriptedReader = stdgo.Slice<stdgo.Slice<stdgo.GoUInt8> -> { var _0 : stdgo.GoInt; var _1 : stdgo.Error; }>;
@:named @:using(stdgo._internal.bufio_test.Bufio_test.T_countdown_static_extension) typedef T_countdown = stdgo.GoInt;
@:named @:using(stdgo._internal.bufio_test.Bufio_test.T_negativeEOFReader_static_extension) typedef T_negativeEOFReader = stdgo.GoInt;
function _newRot13Reader(_r:stdgo._internal.io.Io.Reader):stdgo.Ref<T_rot13Reader> {
        var _r13 = (stdgo.Go.setRef(({} : stdgo._internal.bufio_test.Bufio_test.T_rot13Reader)) : stdgo.Ref<stdgo._internal.bufio_test.Bufio_test.T_rot13Reader>);
        _r13._r = _r;
        return _r13;
    }
function _readBytes(_buf:stdgo.Ref<Reader>):stdgo.GoString {
        var _b:stdgo.GoArray<stdgo.GoByte> = new stdgo.GoArray<stdgo.GoUInt8>(1000, 1000, ...[for (i in 0 ... 1000) (0 : stdgo.GoUInt8)]);
        var _nb:stdgo.GoInt = (0 : stdgo.GoInt);
        while (true) {
            var __tmp__ = _buf.readByte(), _c:stdgo.GoUInt8 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (stdgo.Go.toInterface(_err) == (stdgo.Go.toInterface(stdgo._internal.io.Io.eof))) {
                break;
            };
            if (_err == null) {
                _b[(_nb : stdgo.GoInt)] = _c;
                _nb++;
            } else if (stdgo.Go.toInterface(_err) != (stdgo.Go.toInterface(stdgo._internal.testing.iotest.Iotest.errTimeout))) {
                throw stdgo.Go.toInterface((("Data: " : stdgo.GoString) + _err.error()?.__copy__() : stdgo.GoString));
            };
        };
        return ((_b.__slice__((0 : stdgo.GoInt), _nb) : stdgo.Slice<stdgo.GoUInt8>) : stdgo.GoString)?.__copy__();
    }
function testReaderSimple(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _data:stdgo.GoString = ("hello world" : stdgo.GoString);
        var _b = newReader(stdgo.Go.asInterface(stdgo._internal.strings.Strings.newReader(_data?.__copy__())));
        {
            var _s:stdgo.GoString = _readBytes(_b)?.__copy__();
            if (_s != (("hello world" : stdgo.GoString))) {
                _t.errorf(("simple hello world test failed: got %q" : stdgo.GoString), stdgo.Go.toInterface(_s));
            };
        };
        _b = newReader(stdgo.Go.asInterface(_newRot13Reader(stdgo.Go.asInterface(stdgo._internal.strings.Strings.newReader(_data?.__copy__())))));
        {
            var _s:stdgo.GoString = _readBytes(_b)?.__copy__();
            if (_s != (("uryyb jbeyq" : stdgo.GoString))) {
                _t.errorf(("rot13 hello world test failed: got %q" : stdgo.GoString), stdgo.Go.toInterface(_s));
            };
        };
    }
function _readLines(_b:stdgo.Ref<Reader>):stdgo.GoString {
        var _s:stdgo.GoString = stdgo.Go.str()?.__copy__();
        while (true) {
            var __tmp__ = _b.readString((10 : stdgo.GoUInt8)), _s1:stdgo.GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (stdgo.Go.toInterface(_err) == (stdgo.Go.toInterface(stdgo._internal.io.Io.eof))) {
                break;
            };
            if (((_err != null) && (stdgo.Go.toInterface(_err) != stdgo.Go.toInterface(stdgo._internal.testing.iotest.Iotest.errTimeout)) : Bool)) {
                throw stdgo.Go.toInterface((("GetLines: " : stdgo.GoString) + _err.error()?.__copy__() : stdgo.GoString));
            };
            _s = (_s + (_s1)?.__copy__() : stdgo.GoString);
        };
        return _s?.__copy__();
    }
function _reads(_buf:stdgo.Ref<Reader>, _m:stdgo.GoInt):stdgo.GoString {
        var _b:stdgo.GoArray<stdgo.GoByte> = new stdgo.GoArray<stdgo.GoUInt8>(1000, 1000, ...[for (i in 0 ... 1000) (0 : stdgo.GoUInt8)]);
        var _nb:stdgo.GoInt = (0 : stdgo.GoInt);
        while (true) {
            var __tmp__ = _buf.read((_b.__slice__(_nb, (_nb + _m : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)), _n:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            _nb = (_nb + (_n) : stdgo.GoInt);
            if (stdgo.Go.toInterface(_err) == (stdgo.Go.toInterface(stdgo._internal.io.Io.eof))) {
                break;
            };
        };
        return ((_b.__slice__((0 : stdgo.GoInt), _nb) : stdgo.Slice<stdgo.GoUInt8>) : stdgo.GoString)?.__copy__();
    }
function testReader(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _texts:stdgo.GoArray<stdgo.GoString> = new stdgo.GoArray<stdgo.GoString>(31, 31, ...[for (i in 0 ... 31) ("" : stdgo.GoString)]);
        var _str:stdgo.GoString = stdgo.Go.str()?.__copy__();
        var _all:stdgo.GoString = stdgo.Go.str()?.__copy__();
        {
            var _i:stdgo.GoInt = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (30 : stdgo.GoInt) : Bool), _i++, {
                _texts[(_i : stdgo.GoInt)] = (_str + ("\n" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__();
                _all = (_all + (_texts[(_i : stdgo.GoInt)])?.__copy__() : stdgo.GoString);
                _str = (_str + (((((_i % (26 : stdgo.GoInt) : stdgo.GoInt) + (97 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoRune) : stdgo.GoString))?.__copy__() : stdgo.GoString);
            });
        };
        _texts[(30 : stdgo.GoInt)] = _all?.__copy__();
        {
            var _h:stdgo.GoInt = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_h < (_texts.length) : Bool), _h++, {
                var _text:stdgo.GoString = _texts[(_h : stdgo.GoInt)]?.__copy__();
                {
                    var _i:stdgo.GoInt = (0 : stdgo.GoInt);
                    stdgo.Go.cfor((_i < (_readMakers.length) : Bool), _i++, {
                        {
                            var _j:stdgo.GoInt = (0 : stdgo.GoInt);
                            stdgo.Go.cfor((_j < (_bufreaders.length) : Bool), _j++, {
                                {
                                    var _k:stdgo.GoInt = (0 : stdgo.GoInt);
                                    stdgo.Go.cfor((_k < (_bufsizes.length) : Bool), _k++, {
                                        var _readmaker:stdgo._internal.bufio_test.Bufio_test.T_readMaker = _readMakers[(_i : stdgo.GoInt)];
                                        var _bufreader:stdgo._internal.bufio_test.Bufio_test.T_bufReader = _bufreaders[(_j : stdgo.GoInt)];
                                        var _bufsize:stdgo.GoInt = _bufsizes[(_k : stdgo.GoInt)];
                                        var _read:stdgo._internal.io.Io.Reader = _readmaker._fn(stdgo.Go.asInterface(stdgo._internal.strings.Strings.newReader(_text?.__copy__())));
                                        var _buf = newReaderSize(_read, _bufsize);
                                        var _s:stdgo.GoString = _bufreader._fn(_buf)?.__copy__();
                                        if (_s != (_text)) {
                                            _t.errorf(("reader=%s fn=%s bufsize=%d want=%q got=%q" : stdgo.GoString), stdgo.Go.toInterface(_readmaker._name), stdgo.Go.toInterface(_bufreader._name), stdgo.Go.toInterface(_bufsize), stdgo.Go.toInterface(_text), stdgo.Go.toInterface(_s));
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
function testZeroReader(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _z:T_zeroReader = ({} : stdgo._internal.bufio_test.Bufio_test.T_zeroReader);
        var _r = newReader(stdgo.Go.asInterface(_z));
        var _c = (new stdgo.Chan<stdgo.Error>(0, () -> (null : stdgo.Error)) : stdgo.Chan<stdgo.Error>);
        stdgo.Go.routine(() -> {
            var a = function():Void {
                var __tmp__ = _r.readByte(), __0:stdgo.GoUInt8 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                _c.__send__(_err);
            };
            a();
        });
        {
            var __select__ = true;
            while (__select__) {
                if (_c != null && _c.__isGet__()) {
                    __select__ = false;
                    {
                        var _err = _c.__get__();
                        {
                            if (_err == null) {
                                _t.error(stdgo.Go.toInterface(("error expected" : stdgo.GoString)));
                            } else if (stdgo.Go.toInterface(_err) != (stdgo.Go.toInterface(stdgo._internal.io.Io.errNoProgress))) {
                                _t.error(stdgo.Go.toInterface(("unexpected error:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
                            };
                        };
                    };
                } else if (stdgo._internal.time.Time.after((1000000000i64 : stdgo._internal.time.Time.Duration)) != null && stdgo._internal.time.Time.after((1000000000i64 : stdgo._internal.time.Time.Duration)).__isGet__()) {
                    __select__ = false;
                    {
                        stdgo._internal.time.Time.after((1000000000i64 : stdgo._internal.time.Time.Duration)).__get__();
                        {
                            _t.error(stdgo.Go.toInterface(("test timed out (endless loop in ReadByte?)" : stdgo.GoString)));
                        };
                    };
                };
                #if !js Sys.sleep(0.01) #else null #end;
                stdgo._internal.internal.Async.tick();
            };
        };
    }
function _readRuneSegments(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>, _segments:stdgo.Slice<stdgo.GoString>):Void {
        var _got:stdgo.GoString = stdgo.Go.str()?.__copy__();
        var _want:stdgo.GoString = stdgo._internal.strings.Strings.join(_segments, stdgo.Go.str()?.__copy__())?.__copy__();
        var _r = newReader(stdgo.Go.asInterface((stdgo.Go.setRef(({ _data : _segments } : stdgo._internal.bufio_test.Bufio_test.StringReader)) : stdgo.Ref<stdgo._internal.bufio_test.Bufio_test.StringReader>)));
        while (true) {
            var __tmp__ = _r.readRune(), _r:stdgo.GoInt32 = __tmp__._0, __0:stdgo.GoInt = __tmp__._1, _err:stdgo.Error = __tmp__._2;
            if (_err != null) {
                if (stdgo.Go.toInterface(_err) != (stdgo.Go.toInterface(stdgo._internal.io.Io.eof))) {
                    return;
                };
                break;
            };
            _got = (_got + ((_r : stdgo.GoString))?.__copy__() : stdgo.GoString);
        };
        if (_got != (_want)) {
            _t.errorf(("segments=%v got=%s want=%s" : stdgo.GoString), stdgo.Go.toInterface(_segments), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_want));
        };
    }
function testReadRune(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        for (__0 => _s in _segmentList) {
            _readRuneSegments(_t, _s);
        };
    }
function testUnreadRune(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _segments = (new stdgo.Slice<stdgo.GoString>(2, 2, ...[("Hello, world:" : stdgo.GoString), ("日本語" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>);
        var _r = newReader(stdgo.Go.asInterface((stdgo.Go.setRef(({ _data : _segments } : stdgo._internal.bufio_test.Bufio_test.StringReader)) : stdgo.Ref<stdgo._internal.bufio_test.Bufio_test.StringReader>)));
        var _got:stdgo.GoString = stdgo.Go.str()?.__copy__();
        var _want:stdgo.GoString = stdgo._internal.strings.Strings.join(_segments, stdgo.Go.str()?.__copy__())?.__copy__();
        while (true) {
            var __tmp__ = _r.readRune(), _r1:stdgo.GoInt32 = __tmp__._0, __0:stdgo.GoInt = __tmp__._1, _err:stdgo.Error = __tmp__._2;
            if (_err != null) {
                if (stdgo.Go.toInterface(_err) != (stdgo.Go.toInterface(stdgo._internal.io.Io.eof))) {
                    _t.error(stdgo.Go.toInterface(("unexpected error on ReadRune:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
                };
                break;
            };
            _got = (_got + ((_r1 : stdgo.GoString))?.__copy__() : stdgo.GoString);
            {
                _err = _r.unreadRune();
                if (_err != null) {
                    _t.fatal(stdgo.Go.toInterface(("unexpected error on UnreadRune:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
                };
            };
            var __tmp__ = _r.readRune(), _r2:stdgo.GoInt32 = __tmp__._0, __17:stdgo.GoInt = __tmp__._1, _err:stdgo.Error = __tmp__._2;
            if (_err != null) {
                _t.fatal(stdgo.Go.toInterface(("unexpected error reading after unreading:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
            };
            if (_r1 != (_r2)) {
                _t.fatalf(("incorrect rune after unread: got %c, want %c" : stdgo.GoString), stdgo.Go.toInterface(_r1), stdgo.Go.toInterface(_r2));
            };
        };
        if (_got != (_want)) {
            _t.errorf(("got %q, want %q" : stdgo.GoString), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_want));
        };
    }
function testNoUnreadRuneAfterPeek(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _br = newReader(stdgo.Go.asInterface(stdgo._internal.strings.Strings.newReader(("example" : stdgo.GoString))));
        _br.readRune();
        _br.peek((1 : stdgo.GoInt));
        {
            var _err:stdgo.Error = _br.unreadRune();
            if (_err == null) {
                _t.error(stdgo.Go.toInterface(("UnreadRune didn\'t fail after Peek" : stdgo.GoString)));
            };
        };
    }
function testNoUnreadByteAfterPeek(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _br = newReader(stdgo.Go.asInterface(stdgo._internal.strings.Strings.newReader(("example" : stdgo.GoString))));
        _br.readByte();
        _br.peek((1 : stdgo.GoInt));
        {
            var _err:stdgo.Error = _br.unreadByte();
            if (_err == null) {
                _t.error(stdgo.Go.toInterface(("UnreadByte didn\'t fail after Peek" : stdgo.GoString)));
            };
        };
    }
function testNoUnreadRuneAfterDiscard(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _br = newReader(stdgo.Go.asInterface(stdgo._internal.strings.Strings.newReader(("example" : stdgo.GoString))));
        _br.readRune();
        _br.discard((1 : stdgo.GoInt));
        {
            var _err:stdgo.Error = _br.unreadRune();
            if (_err == null) {
                _t.error(stdgo.Go.toInterface(("UnreadRune didn\'t fail after Discard" : stdgo.GoString)));
            };
        };
    }
function testNoUnreadByteAfterDiscard(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _br = newReader(stdgo.Go.asInterface(stdgo._internal.strings.Strings.newReader(("example" : stdgo.GoString))));
        _br.readByte();
        _br.discard((1 : stdgo.GoInt));
        {
            var _err:stdgo.Error = _br.unreadByte();
            if (_err == null) {
                _t.error(stdgo.Go.toInterface(("UnreadByte didn\'t fail after Discard" : stdgo.GoString)));
            };
        };
    }
function testNoUnreadRuneAfterWriteTo(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _br = newReader(stdgo.Go.asInterface(stdgo._internal.strings.Strings.newReader(("example" : stdgo.GoString))));
        _br.writeTo(stdgo._internal.io.Io.discard);
        {
            var _err:stdgo.Error = _br.unreadRune();
            if (_err == null) {
                _t.error(stdgo.Go.toInterface(("UnreadRune didn\'t fail after WriteTo" : stdgo.GoString)));
            };
        };
    }
function testNoUnreadByteAfterWriteTo(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _br = newReader(stdgo.Go.asInterface(stdgo._internal.strings.Strings.newReader(("example" : stdgo.GoString))));
        _br.writeTo(stdgo._internal.io.Io.discard);
        {
            var _err:stdgo.Error = _br.unreadByte();
            if (_err == null) {
                _t.error(stdgo.Go.toInterface(("UnreadByte didn\'t fail after WriteTo" : stdgo.GoString)));
            };
        };
    }
function testUnreadByte(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _segments = (new stdgo.Slice<stdgo.GoString>(2, 2, ...[("Hello, " : stdgo.GoString), ("world" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>);
        var _r = newReader(stdgo.Go.asInterface((stdgo.Go.setRef(({ _data : _segments } : stdgo._internal.bufio_test.Bufio_test.StringReader)) : stdgo.Ref<stdgo._internal.bufio_test.Bufio_test.StringReader>)));
        var _got:stdgo.GoString = stdgo.Go.str()?.__copy__();
        var _want:stdgo.GoString = stdgo._internal.strings.Strings.join(_segments, stdgo.Go.str()?.__copy__())?.__copy__();
        while (true) {
            var __tmp__ = _r.readByte(), _b1:stdgo.GoUInt8 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                if (stdgo.Go.toInterface(_err) != (stdgo.Go.toInterface(stdgo._internal.io.Io.eof))) {
                    _t.error(stdgo.Go.toInterface(("unexpected error on ReadByte:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
                };
                break;
            };
            _got = (_got + ((_b1 : stdgo.GoString))?.__copy__() : stdgo.GoString);
            {
                _err = _r.unreadByte();
                if (_err != null) {
                    _t.fatal(stdgo.Go.toInterface(("unexpected error on UnreadByte:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
                };
            };
            var __tmp__ = _r.readByte(), _b2:stdgo.GoUInt8 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _t.fatal(stdgo.Go.toInterface(("unexpected error reading after unreading:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
            };
            if (_b1 != (_b2)) {
                _t.fatalf(("incorrect byte after unread: got %q, want %q" : stdgo.GoString), stdgo.Go.toInterface(_b1), stdgo.Go.toInterface(_b2));
            };
        };
        if (_got != (_want)) {
            _t.errorf(("got %q, want %q" : stdgo.GoString), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_want));
        };
    }
function testUnreadByteMultiple(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _segments = (new stdgo.Slice<stdgo.GoString>(2, 2, ...[("Hello, " : stdgo.GoString), ("world" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>);
        var _data:stdgo.GoString = stdgo._internal.strings.Strings.join(_segments, stdgo.Go.str()?.__copy__())?.__copy__();
        {
            var _n:stdgo.GoInt = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_n <= (_data.length) : Bool), _n++, {
                var _r = newReader(stdgo.Go.asInterface((stdgo.Go.setRef(({ _data : _segments } : stdgo._internal.bufio_test.Bufio_test.StringReader)) : stdgo.Ref<stdgo._internal.bufio_test.Bufio_test.StringReader>)));
                {
                    var _i:stdgo.GoInt = (0 : stdgo.GoInt);
                    stdgo.Go.cfor((_i < _n : Bool), _i++, {
                        var __tmp__ = _r.readByte(), _b:stdgo.GoUInt8 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                        if (_err != null) {
                            _t.fatalf(("n = %d: unexpected error on ReadByte: %v" : stdgo.GoString), stdgo.Go.toInterface(_n), stdgo.Go.toInterface(_err));
                        };
                        if (_b != (_data[(_i : stdgo.GoInt)])) {
                            _t.fatalf(("n = %d: incorrect byte returned from ReadByte: got %q, want %q" : stdgo.GoString), stdgo.Go.toInterface(_n), stdgo.Go.toInterface(_b), stdgo.Go.toInterface(_data[(_i : stdgo.GoInt)]));
                        };
                    });
                };
                if ((_n > (0 : stdgo.GoInt) : Bool)) {
                    {
                        var _err:stdgo.Error = _r.unreadByte();
                        if (_err != null) {
                            _t.errorf(("n = %d: unexpected error on UnreadByte: %v" : stdgo.GoString), stdgo.Go.toInterface(_n), stdgo.Go.toInterface(_err));
                        };
                    };
                };
                {
                    var _err:stdgo.Error = _r.unreadByte();
                    if (_err == null) {
                        _t.errorf(("n = %d: expected error on UnreadByte" : stdgo.GoString), stdgo.Go.toInterface(_n));
                    };
                };
            });
        };
    }
function testUnreadByteOthers(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _readers:stdgo.Slice<(stdgo.Ref<stdgo._internal.bufio.Bufio.Reader>, stdgo.GoUInt8) -> { var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; }> = (new stdgo.Slice<(stdgo.Ref<stdgo._internal.bufio.Bufio.Reader>, stdgo.GoUInt8) -> { var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; }>(3, 3, ...[Reader_static_extension.readBytes, Reader_static_extension.readSlice, function(_r:stdgo.Ref<Reader>, _delim:stdgo.GoByte):{ var _0 : stdgo.Slice<stdgo.GoByte>; var _1 : stdgo.Error; } {
            var __tmp__ = _r.readString(_delim), _data:stdgo.GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            return { _0 : (_data : stdgo.Slice<stdgo.GoByte>), _1 : _err };
        }]) : stdgo.Slice<(stdgo.Ref<stdgo._internal.bufio.Bufio.Reader>, stdgo.GoUInt8) -> { var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; }>);
        for (_rno => _read in _readers) {
            {};
            var _buf:stdgo._internal.bytes.Bytes.Buffer = ({} : stdgo._internal.bytes.Bytes.Buffer);
            {
                var _i:stdgo.GoInt = (0 : stdgo.GoInt);
                stdgo.Go.cfor((_i < (10 : stdgo.GoInt) : Bool), _i++, {
                    _buf.writeString(("abcdefg" : stdgo.GoString));
                });
            };
            var _r = newReaderSize(stdgo.Go.asInterface((stdgo.Go.setRef(_buf) : stdgo.Ref<stdgo._internal.bytes.Bytes.Buffer>)), (16 : stdgo.GoInt));
            var _readTo:(stdgo.GoUInt8, stdgo.GoString) -> Void = function(_delim:stdgo.GoByte, _want:stdgo.GoString):Void {
                var __tmp__ = _read(_r, _delim), _data:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    _t.fatalf(("#%d: unexpected error reading to %c: %v" : stdgo.GoString), stdgo.Go.toInterface(_rno), stdgo.Go.toInterface(_delim), stdgo.Go.toInterface(_err));
                };
                {
                    var _got:stdgo.GoString = (_data : stdgo.GoString)?.__copy__();
                    if (_got != (_want)) {
                        _t.fatalf(("#%d: got %q, want %q" : stdgo.GoString), stdgo.Go.toInterface(_rno), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_want));
                    };
                };
            };
            {
                var _i:stdgo.GoInt = (0 : stdgo.GoInt);
                stdgo.Go.cfor((_i < (10 : stdgo.GoInt) : Bool), _i++, {
                    _readTo((100 : stdgo.GoUInt8), ("abcd" : stdgo.GoString));
                    {
                        var _j:stdgo.GoInt = (0 : stdgo.GoInt);
                        stdgo.Go.cfor((_j < (3 : stdgo.GoInt) : Bool), _j++, {
                            {
                                var _err:stdgo.Error = _r.unreadByte();
                                if (_err != null) {
                                    _t.fatalf(("#%d: unexpected error on UnreadByte: %v" : stdgo.GoString), stdgo.Go.toInterface(_rno), stdgo.Go.toInterface(_err));
                                };
                            };
                            _readTo((100 : stdgo.GoUInt8), ("d" : stdgo.GoString));
                        });
                    };
                    _readTo((103 : stdgo.GoUInt8), ("efg" : stdgo.GoString));
                });
            };
            var __tmp__ = _r.readByte(), __8:stdgo.GoUInt8 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (stdgo.Go.toInterface(_err) != (stdgo.Go.toInterface(stdgo._internal.io.Io.eof))) {
                _t.errorf(("#%d: got error %v; want EOF" : stdgo.GoString), stdgo.Go.toInterface(_rno), stdgo.Go.toInterface(_err));
            };
        };
    }
function testUnreadRuneError(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _buf = (new stdgo.Slice<stdgo.GoUInt8>((3 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        var _r = newReader(stdgo.Go.asInterface((stdgo.Go.setRef(({ _data : (new stdgo.Slice<stdgo.GoString>(1, 1, ...[("日本語日本語日本語" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>) } : stdgo._internal.bufio_test.Bufio_test.StringReader)) : stdgo.Ref<stdgo._internal.bufio_test.Bufio_test.StringReader>)));
        if (_r.unreadRune() == null) {
            _t.error(stdgo.Go.toInterface(("expected error on UnreadRune from fresh buffer" : stdgo.GoString)));
        };
        var __tmp__ = _r.readRune(), __8:stdgo.GoInt32 = __tmp__._0, __9:stdgo.GoInt = __tmp__._1, _err:stdgo.Error = __tmp__._2;
        if (_err != null) {
            _t.error(stdgo.Go.toInterface(("unexpected error on ReadRune (1):" : stdgo.GoString)), stdgo.Go.toInterface(_err));
        };
        {
            _err = _r.unreadRune();
            if (_err != null) {
                _t.error(stdgo.Go.toInterface(("unexpected error on UnreadRune (1):" : stdgo.GoString)), stdgo.Go.toInterface(_err));
            };
        };
        if (_r.unreadRune() == null) {
            _t.error(stdgo.Go.toInterface(("expected error after UnreadRune (1)" : stdgo.GoString)));
        };
        {
            var __tmp__ = _r.readRune();
            _err = __tmp__._2;
        };
        if (_err != null) {
            _t.error(stdgo.Go.toInterface(("unexpected error on ReadRune (2):" : stdgo.GoString)), stdgo.Go.toInterface(_err));
        };
        {
            var __tmp__ = _r.read(_buf);
            _err = __tmp__._1;
        };
        if (_err != null) {
            _t.error(stdgo.Go.toInterface(("unexpected error on Read (2):" : stdgo.GoString)), stdgo.Go.toInterface(_err));
        };
        if (_r.unreadRune() == null) {
            _t.error(stdgo.Go.toInterface(("expected error after Read (2)" : stdgo.GoString)));
        };
        {
            var __tmp__ = _r.readRune();
            _err = __tmp__._2;
        };
        if (_err != null) {
            _t.error(stdgo.Go.toInterface(("unexpected error on ReadRune (2):" : stdgo.GoString)), stdgo.Go.toInterface(_err));
        };
        for (_ => _ in _buf) {
            {
                var __tmp__ = _r.readByte();
                _err = __tmp__._1;
            };
            if (_err != null) {
                _t.error(stdgo.Go.toInterface(("unexpected error on ReadByte (2):" : stdgo.GoString)), stdgo.Go.toInterface(_err));
            };
        };
        if (_r.unreadRune() == null) {
            _t.error(stdgo.Go.toInterface(("expected error after ReadByte" : stdgo.GoString)));
        };
        {
            var __tmp__ = _r.readRune();
            _err = __tmp__._2;
        };
        if (_err != null) {
            _t.error(stdgo.Go.toInterface(("unexpected error on ReadRune (3):" : stdgo.GoString)), stdgo.Go.toInterface(_err));
        };
        {
            var __tmp__ = _r.readByte();
            _err = __tmp__._1;
        };
        if (_err != null) {
            _t.error(stdgo.Go.toInterface(("unexpected error on ReadByte (3):" : stdgo.GoString)), stdgo.Go.toInterface(_err));
        };
        _err = _r.unreadByte();
        if (_err != null) {
            _t.error(stdgo.Go.toInterface(("unexpected error on UnreadByte (3):" : stdgo.GoString)), stdgo.Go.toInterface(_err));
        };
        if (_r.unreadRune() == null) {
            _t.error(stdgo.Go.toInterface(("expected error after UnreadByte (3)" : stdgo.GoString)));
        };
        {
            var __tmp__ = _r.readRune();
            _err = __tmp__._2;
        };
        if (_err != null) {
            _t.error(stdgo.Go.toInterface(("unexpected error on ReadRune (4):" : stdgo.GoString)), stdgo.Go.toInterface(_err));
        };
        {
            var __tmp__ = _r.readSlice((0 : stdgo.GoUInt8));
            _err = __tmp__._1;
        };
        if (stdgo.Go.toInterface(_err) != (stdgo.Go.toInterface(stdgo._internal.io.Io.eof))) {
            _t.error(stdgo.Go.toInterface(("unexpected error on ReadSlice (4):" : stdgo.GoString)), stdgo.Go.toInterface(_err));
        };
        if (_r.unreadRune() == null) {
            _t.error(stdgo.Go.toInterface(("expected error after ReadSlice (4)" : stdgo.GoString)));
        };
    }
function testUnreadRuneAtEOF(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _r = newReader(stdgo.Go.asInterface(stdgo._internal.strings.Strings.newReader(("x" : stdgo.GoString))));
        _r.readRune();
        _r.readRune();
        _r.unreadRune();
        var __tmp__ = _r.readRune(), __0:stdgo.GoInt32 = __tmp__._0, __1:stdgo.GoInt = __tmp__._1, _err:stdgo.Error = __tmp__._2;
        if (_err == null) {
            _t.error(stdgo.Go.toInterface(("expected error at EOF" : stdgo.GoString)));
        } else if (stdgo.Go.toInterface(_err) != (stdgo.Go.toInterface(stdgo._internal.io.Io.eof))) {
            _t.error(stdgo.Go.toInterface(("expected EOF; got" : stdgo.GoString)), stdgo.Go.toInterface(_err));
        };
    }
function testReadWriteRune(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        {};
        var _byteBuf = (stdgo.Go.setRef(({} : stdgo._internal.bytes.Bytes.Buffer)) : stdgo.Ref<stdgo._internal.bytes.Bytes.Buffer>);
        var _w = newWriter(stdgo.Go.asInterface(_byteBuf));
        var _buf = (new stdgo.Slice<stdgo.GoUInt8>((4 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        {
            var _r:stdgo.GoInt32 = ((0 : stdgo.GoInt32) : stdgo.GoRune);
            stdgo.Go.cfor((_r < (1000 : stdgo.GoInt32) : Bool), _r++, {
                var _size:stdgo.GoInt = stdgo._internal.unicode.utf8.Utf8.encodeRune(_buf, _r);
                var __tmp__ = _w.writeRune(_r), _nbytes:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    _t.fatalf(("WriteRune(0x%x) error: %s" : stdgo.GoString), stdgo.Go.toInterface(_r), stdgo.Go.toInterface(_err));
                };
                if (_nbytes != (_size)) {
                    _t.fatalf(("WriteRune(0x%x) expected %d, got %d" : stdgo.GoString), stdgo.Go.toInterface(_r), stdgo.Go.toInterface(_size), stdgo.Go.toInterface(_nbytes));
                };
            });
        };
        _w.flush();
        var _r = newReader(stdgo.Go.asInterface(_byteBuf));
        {
            var _r1:stdgo.GoInt32 = ((0 : stdgo.GoInt32) : stdgo.GoRune);
            stdgo.Go.cfor((_r1 < (1000 : stdgo.GoInt32) : Bool), _r1++, {
                var _size:stdgo.GoInt = stdgo._internal.unicode.utf8.Utf8.encodeRune(_buf, _r1);
                var __tmp__ = _r.readRune(), _nr:stdgo.GoInt32 = __tmp__._0, _nbytes:stdgo.GoInt = __tmp__._1, _err:stdgo.Error = __tmp__._2;
                if (((_nr != (_r1) || _nbytes != (_size) : Bool) || (_err != null) : Bool)) {
                    _t.fatalf(("ReadRune(0x%x) got 0x%x,%d not 0x%x,%d (err=%s)" : stdgo.GoString), stdgo.Go.toInterface(_r1), stdgo.Go.toInterface(_nr), stdgo.Go.toInterface(_nbytes), stdgo.Go.toInterface(_r1), stdgo.Go.toInterface(_size), stdgo.Go.toInterface(_err));
                };
            });
        };
    }
function testWriteInvalidRune(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        for (__0 => _r in (new stdgo.Slice<stdgo.GoInt32>(2, 2, ...[(-1 : stdgo.GoInt32), (1114112 : stdgo.GoInt32)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>)) {
            var _buf:stdgo._internal.strings.Strings.Builder = ({} : stdgo._internal.strings.Strings.Builder);
            var _w = newWriter(stdgo.Go.asInterface((stdgo.Go.setRef(_buf) : stdgo.Ref<stdgo._internal.strings.Strings.Builder>)));
            _w.writeRune(_r);
            _w.flush();
            {
                var _s:stdgo.GoString = (_buf.string() : stdgo.GoString)?.__copy__();
                if (_s != (("�" : stdgo.GoString))) {
                    _t.errorf(("WriteRune(%d) wrote %q, not replacement character" : stdgo.GoString), stdgo.Go.toInterface(_r), stdgo.Go.toInterface(_s));
                };
            };
        };
    }
function testReadStringAllocs(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _r = stdgo._internal.strings.Strings.newReader(("       foo       foo        42        42        42        42        42        42        42        42       4.2       4.2       4.2       4.2\n" : stdgo.GoString));
        var _buf = newReader(stdgo.Go.asInterface(_r));
        var _allocs:stdgo.GoFloat64 = stdgo._internal.testing.Testing.allocsPerRun((100 : stdgo.GoInt), function():Void {
            _r.seek((0i64 : stdgo.GoInt64), (0 : stdgo.GoInt));
            _buf.reset(stdgo.Go.asInterface(_r));
            var __tmp__ = _buf.readString((10 : stdgo.GoUInt8)), __0:stdgo.GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _t.fatal(stdgo.Go.toInterface(_err));
            };
        });
        if (_allocs != (1 : stdgo.GoFloat64)) {
            _t.errorf(("Unexpected number of allocations, got %f, want 1" : stdgo.GoString), stdgo.Go.toInterface(_allocs));
        };
    }
function testWriter(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _data:stdgo.GoArray<stdgo.GoByte> = new stdgo.GoArray<stdgo.GoUInt8>(8192, 8192, ...[for (i in 0 ... 8192) (0 : stdgo.GoUInt8)]);
        {
            var _i:stdgo.GoInt = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (_data.length) : Bool), _i++, {
                _data[(_i : stdgo.GoInt)] = (((32 : stdgo.GoInt) + (_i % (94 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoByte);
            });
        };
        var _w = (stdgo.Go.setRef(({} : stdgo._internal.bytes.Bytes.Buffer)) : stdgo.Ref<stdgo._internal.bytes.Bytes.Buffer>);
        {
            var _i:stdgo.GoInt = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (_bufsizes.length) : Bool), _i++, {
                {
                    var _j:stdgo.GoInt = (0 : stdgo.GoInt);
                    stdgo.Go.cfor((_j < (_bufsizes.length) : Bool), _j++, {
                        var _nwrite:stdgo.GoInt = _bufsizes[(_i : stdgo.GoInt)];
                        var _bs:stdgo.GoInt = _bufsizes[(_j : stdgo.GoInt)];
                        _w.reset();
                        var _buf = newWriterSize(stdgo.Go.asInterface(_w), _bs);
                        var _context:stdgo.GoString = stdgo._internal.fmt.Fmt.sprintf(("nwrite=%d bufsize=%d" : stdgo.GoString), stdgo.Go.toInterface(_nwrite), stdgo.Go.toInterface(_bs))?.__copy__();
                        var __tmp__ = _buf.write((_data.__slice__((0 : stdgo.GoInt), _nwrite) : stdgo.Slice<stdgo.GoUInt8>)), _n:stdgo.GoInt = __tmp__._0, _e1:stdgo.Error = __tmp__._1;
                        if (((_e1 != null) || (_n != _nwrite) : Bool)) {
                            _t.errorf(("%s: buf.Write %d = %d, %v" : stdgo.GoString), stdgo.Go.toInterface(_context), stdgo.Go.toInterface(_nwrite), stdgo.Go.toInterface(_n), stdgo.Go.toInterface(_e1));
                            continue;
                        };
                        {
                            var _e:stdgo.Error = _buf.flush();
                            if (_e != null) {
                                _t.errorf(("%s: buf.Flush = %v" : stdgo.GoString), stdgo.Go.toInterface(_context), stdgo.Go.toInterface(_e));
                            };
                        };
                        var _written = _w.bytes();
                        if ((_written.length) != (_nwrite)) {
                            _t.errorf(("%s: %d bytes written" : stdgo.GoString), stdgo.Go.toInterface(_context), stdgo.Go.toInterface((_written.length)));
                        };
                        {
                            var _l:stdgo.GoInt = (0 : stdgo.GoInt);
                            stdgo.Go.cfor((_l < (_written.length) : Bool), _l++, {
                                if (_written[(_l : stdgo.GoInt)] != (_data[(_l : stdgo.GoInt)])) {
                                    _t.errorf(("wrong bytes written" : stdgo.GoString));
                                    _t.errorf(("want=%q" : stdgo.GoString), stdgo.Go.toInterface((_data.__slice__((0 : stdgo.GoInt), (_written.length)) : stdgo.Slice<stdgo.GoUInt8>)));
                                    _t.errorf(("have=%q" : stdgo.GoString), stdgo.Go.toInterface(_written));
                                };
                            });
                        };
                    });
                };
            });
        };
    }
function testWriterAppend(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _got = (stdgo.Go.setRef(({} : stdgo._internal.bytes.Bytes.Buffer)) : stdgo.Ref<stdgo._internal.bytes.Bytes.Buffer>);
        var _want:stdgo.Slice<stdgo.GoByte> = (null : stdgo.Slice<stdgo.GoUInt8>);
        var _rn = stdgo._internal.math.rand.Rand.new_(stdgo._internal.math.rand.Rand.newSource((0i64 : stdgo.GoInt64)));
        var _w = newWriterSize(stdgo.Go.asInterface(_got), (64 : stdgo.GoInt));
        {
            var _i:stdgo.GoInt = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (100 : stdgo.GoInt) : Bool), _i++, {
                var _b = _w.availableBuffer();
                if (_w.available() != (_b.capacity)) {
                    _t.fatalf(("Available() = %v, want %v" : stdgo.GoString), stdgo.Go.toInterface(_w.available()), stdgo.Go.toInterface(_b.capacity));
                };
                if (((_rn.intn((8 : stdgo.GoInt)) == (0 : stdgo.GoInt)) && (_b.capacity > (0 : stdgo.GoInt) : Bool) : Bool)) {
                    _b = (_b.__slice__((1 : stdgo.GoInt), (1 : stdgo.GoInt), _b.capacity) : stdgo.Slice<stdgo.GoUInt8>);
                };
                var _n:stdgo.GoInt64 = (_rn.intn(((1 : stdgo.GoInt) << _rn.intn((30 : stdgo.GoInt)) : stdgo.GoInt)) : stdgo.GoInt64);
                _want = (stdgo._internal.strconv.Strconv.appendInt(_want, _n, (10 : stdgo.GoInt)).__append__((32 : stdgo.GoUInt8)));
                _b = (stdgo._internal.strconv.Strconv.appendInt(_b, _n, (10 : stdgo.GoInt)).__append__((32 : stdgo.GoUInt8)));
                _w.write(_b);
            });
        };
        _w.flush();
        if (!stdgo._internal.bytes.Bytes.equal(_got.bytes(), _want)) {
            _t.errorf(("output mismatch:\ngot  %s\nwant %s" : stdgo.GoString), stdgo.Go.toInterface(_got.bytes()), stdgo.Go.toInterface(_want));
        };
    }
function testWriteErrors(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        for (__0 => _w in _errorWriterTests) {
            var _buf = newWriter(stdgo.Go.asInterface(_w));
            var __tmp__ = _buf.write((("hello world" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>)), __1:stdgo.GoInt = __tmp__._0, _e:stdgo.Error = __tmp__._1;
            if (_e != null) {
                _t.errorf(("Write hello to %v: %v" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_w)), stdgo.Go.toInterface(_e));
                continue;
            };
            {
                var _i:stdgo.GoInt = (0 : stdgo.GoInt);
                stdgo.Go.cfor((_i < (2 : stdgo.GoInt) : Bool), _i++, {
                    _e = _buf.flush();
                    if (stdgo.Go.toInterface(_e) != (stdgo.Go.toInterface(_w._expect))) {
                        _t.errorf(("Flush %d/2 %v: got %v, wanted %v" : stdgo.GoString), stdgo.Go.toInterface((_i + (1 : stdgo.GoInt) : stdgo.GoInt)), stdgo.Go.toInterface(stdgo.Go.asInterface(_w)), stdgo.Go.toInterface(_e), stdgo.Go.toInterface(_w._expect));
                    };
                });
            };
        };
    }
function testNewReaderSizeIdempotent(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        {};
        var _b = newReaderSize(stdgo.Go.asInterface(stdgo._internal.strings.Strings.newReader(("hello world" : stdgo.GoString))), (1000 : stdgo.GoInt));
        var _b1 = newReaderSize(stdgo.Go.asInterface(_b), (1000 : stdgo.GoInt));
        if (_b1 != (_b)) {
            _t.error(stdgo.Go.toInterface(("NewReaderSize did not detect underlying Reader" : stdgo.GoString)));
        };
        var _b2 = newReaderSize(stdgo.Go.asInterface(_b), (2000 : stdgo.GoInt));
        if (_b2 == (_b)) {
            _t.error(stdgo.Go.toInterface(("NewReaderSize did not enlarge buffer" : stdgo.GoString)));
        };
    }
function testNewWriterSizeIdempotent(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        {};
        var _b = newWriterSize(stdgo.Go.asInterface((stdgo.Go.setRef(({} : stdgo._internal.bytes.Bytes.Buffer)) : stdgo.Ref<stdgo._internal.bytes.Bytes.Buffer>)), (1000 : stdgo.GoInt));
        var _b1 = newWriterSize(stdgo.Go.asInterface(_b), (1000 : stdgo.GoInt));
        if (_b1 != (_b)) {
            _t.error(stdgo.Go.toInterface(("NewWriterSize did not detect underlying Writer" : stdgo.GoString)));
        };
        var _b2 = newWriterSize(stdgo.Go.asInterface(_b), (2000 : stdgo.GoInt));
        if (_b2 == (_b)) {
            _t.error(stdgo.Go.toInterface(("NewWriterSize did not enlarge buffer" : stdgo.GoString)));
        };
    }
function testWriteString(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        {};
        var _buf = (stdgo.Go.setRef(({} : stdgo._internal.strings.Strings.Builder)) : stdgo.Ref<stdgo._internal.strings.Strings.Builder>);
        var _b = newWriterSize(stdgo.Go.asInterface(_buf), (8 : stdgo.GoInt));
        _b.writeString(("0" : stdgo.GoString));
        _b.writeString(("123456" : stdgo.GoString));
        _b.writeString(("7890" : stdgo.GoString));
        _b.writeString(("abcdefghijklmnopqrstuvwxy" : stdgo.GoString));
        _b.writeString(("z" : stdgo.GoString));
        {
            var _err:stdgo.Error = _b.flush();
            if (_err != null) {
                _t.error(stdgo.Go.toInterface(("WriteString" : stdgo.GoString)), stdgo.Go.toInterface(_err));
            };
        };
        var _s:stdgo.GoString = ("01234567890abcdefghijklmnopqrstuvwxyz" : stdgo.GoString);
        if ((_buf.string() : stdgo.GoString) != (_s)) {
            _t.errorf(("WriteString wants %q gets %q" : stdgo.GoString), stdgo.Go.toInterface(_s), stdgo.Go.toInterface((_buf.string() : stdgo.GoString)));
        };
    }
function testWriteStringStringWriter(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        {};
        {
            var _tw = (stdgo.Go.setRef((new stdgo._internal.bufio_test.Bufio_test.T_teststringwriter() : stdgo._internal.bufio_test.Bufio_test.T_teststringwriter)) : stdgo.Ref<stdgo._internal.bufio_test.Bufio_test.T_teststringwriter>);
            var _b = newWriterSize(stdgo.Go.asInterface(_tw), (8 : stdgo.GoInt));
            _b.writeString(("1234" : stdgo.GoString));
            _tw._check(_t, stdgo.Go.str()?.__copy__(), stdgo.Go.str()?.__copy__());
            _b.writeString(("56789012" : stdgo.GoString));
            _tw._check(_t, ("12345678" : stdgo.GoString), stdgo.Go.str()?.__copy__());
            _b.flush();
            _tw._check(_t, ("123456789012" : stdgo.GoString), stdgo.Go.str()?.__copy__());
        };
        {
            var _tw = (stdgo.Go.setRef((new stdgo._internal.bufio_test.Bufio_test.T_teststringwriter() : stdgo._internal.bufio_test.Bufio_test.T_teststringwriter)) : stdgo.Ref<stdgo._internal.bufio_test.Bufio_test.T_teststringwriter>);
            var _b = newWriterSize(stdgo.Go.asInterface(_tw), (8 : stdgo.GoInt));
            _b.writeString(("123456789" : stdgo.GoString));
            _tw._check(_t, stdgo.Go.str()?.__copy__(), ("123456789" : stdgo.GoString));
        };
        {
            var _tw = (stdgo.Go.setRef((new stdgo._internal.bufio_test.Bufio_test.T_teststringwriter() : stdgo._internal.bufio_test.Bufio_test.T_teststringwriter)) : stdgo.Ref<stdgo._internal.bufio_test.Bufio_test.T_teststringwriter>);
            var _b = newWriterSize(stdgo.Go.asInterface(_tw), (8 : stdgo.GoInt));
            _b.writeString(("abc" : stdgo.GoString));
            _tw._check(_t, stdgo.Go.str()?.__copy__(), stdgo.Go.str()?.__copy__());
            _b.writeString(("123456789012345" : stdgo.GoString));
            _tw._check(_t, ("abc12345" : stdgo.GoString), ("6789012345" : stdgo.GoString));
        };
        {
            var _tw = (stdgo.Go.setRef((new stdgo._internal.bufio_test.Bufio_test.T_teststringwriter() : stdgo._internal.bufio_test.Bufio_test.T_teststringwriter)) : stdgo.Ref<stdgo._internal.bufio_test.Bufio_test.T_teststringwriter>);
            var _b = newWriterSize(stdgo.Go.asInterface(_tw), (8 : stdgo.GoInt));
            _b.write((("abc" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>));
            _tw._check(_t, stdgo.Go.str()?.__copy__(), stdgo.Go.str()?.__copy__());
            _b.writeString(("123456789012345" : stdgo.GoString));
            _tw._check(_t, ("abc12345" : stdgo.GoString), ("6789012345" : stdgo.GoString));
        };
    }
function testBufferFull(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        {};
        var _buf = newReaderSize(stdgo.Go.asInterface(stdgo._internal.strings.Strings.newReader(("And now, hello, world! It is the time for all good men to come to the aid of their party" : stdgo.GoString))), (16 : stdgo.GoInt));
        var __tmp__ = _buf.readSlice((33 : stdgo.GoUInt8)), _line:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if ((((_line : stdgo.GoString) != ("And now, hello, " : stdgo.GoString)) || (stdgo.Go.toInterface(_err) != stdgo.Go.toInterface(errBufferFull)) : Bool)) {
            _t.errorf(("first ReadSlice(,) = %q, %v" : stdgo.GoString), stdgo.Go.toInterface(_line), stdgo.Go.toInterface(_err));
        };
        {
            var __tmp__ = _buf.readSlice((33 : stdgo.GoUInt8));
            _line = __tmp__._0;
            _err = __tmp__._1;
        };
        if ((((_line : stdgo.GoString) != ("world!" : stdgo.GoString)) || (_err != null) : Bool)) {
            _t.errorf(("second ReadSlice(,) = %q, %v" : stdgo.GoString), stdgo.Go.toInterface(_line), stdgo.Go.toInterface(_err));
        };
    }
function testPeek(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _p = (new stdgo.Slice<stdgo.GoUInt8>((10 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        var _buf = newReaderSize(stdgo.Go.asInterface(stdgo._internal.strings.Strings.newReader(("abcdefghijklmnop" : stdgo.GoString))), (16 : stdgo.GoInt));
        {
            var __tmp__ = _buf.peek((1 : stdgo.GoInt)), _s:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if ((((_s : stdgo.GoString) != ("a" : stdgo.GoString)) || (_err != null) : Bool)) {
                _t.fatalf(("want %q got %q, err=%v" : stdgo.GoString), stdgo.Go.toInterface(("a" : stdgo.GoString)), stdgo.Go.toInterface((_s : stdgo.GoString)), stdgo.Go.toInterface(_err));
            };
        };
        {
            var __tmp__ = _buf.peek((4 : stdgo.GoInt)), _s:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if ((((_s : stdgo.GoString) != ("abcd" : stdgo.GoString)) || (_err != null) : Bool)) {
                _t.fatalf(("want %q got %q, err=%v" : stdgo.GoString), stdgo.Go.toInterface(("abcd" : stdgo.GoString)), stdgo.Go.toInterface((_s : stdgo.GoString)), stdgo.Go.toInterface(_err));
            };
        };
        {
            var __tmp__ = _buf.peek((-1 : stdgo.GoInt)), __16:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (stdgo.Go.toInterface(_err) != (stdgo.Go.toInterface(errNegativeCount))) {
                _t.fatalf(("want ErrNegativeCount got %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
            };
        };
        {
            var __tmp__ = _buf.peek((32 : stdgo.GoInt)), _s:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if ((((_s : stdgo.GoString) != ("abcdefghijklmnop" : stdgo.GoString)) || (stdgo.Go.toInterface(_err) != stdgo.Go.toInterface(errBufferFull)) : Bool)) {
                _t.fatalf(("want %q, ErrBufFull got %q, err=%v" : stdgo.GoString), stdgo.Go.toInterface(("abcdefghijklmnop" : stdgo.GoString)), stdgo.Go.toInterface((_s : stdgo.GoString)), stdgo.Go.toInterface(_err));
            };
        };
        {
            var __tmp__ = _buf.read((_p.__slice__((0 : stdgo.GoInt), (3 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)), __33:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (((((_p.__slice__((0 : stdgo.GoInt), (3 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>) : stdgo.GoString) != ("abc" : stdgo.GoString)) || (_err != null) : Bool)) {
                _t.fatalf(("want %q got %q, err=%v" : stdgo.GoString), stdgo.Go.toInterface(("abc" : stdgo.GoString)), stdgo.Go.toInterface(((_p.__slice__((0 : stdgo.GoInt), (3 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>) : stdgo.GoString)), stdgo.Go.toInterface(_err));
            };
        };
        {
            var __tmp__ = _buf.peek((1 : stdgo.GoInt)), _s:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if ((((_s : stdgo.GoString) != ("d" : stdgo.GoString)) || (_err != null) : Bool)) {
                _t.fatalf(("want %q got %q, err=%v" : stdgo.GoString), stdgo.Go.toInterface(("d" : stdgo.GoString)), stdgo.Go.toInterface((_s : stdgo.GoString)), stdgo.Go.toInterface(_err));
            };
        };
        {
            var __tmp__ = _buf.peek((2 : stdgo.GoInt)), _s:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if ((((_s : stdgo.GoString) != ("de" : stdgo.GoString)) || (_err != null) : Bool)) {
                _t.fatalf(("want %q got %q, err=%v" : stdgo.GoString), stdgo.Go.toInterface(("de" : stdgo.GoString)), stdgo.Go.toInterface((_s : stdgo.GoString)), stdgo.Go.toInterface(_err));
            };
        };
        {
            var __tmp__ = _buf.read((_p.__slice__((0 : stdgo.GoInt), (3 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)), __58:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (((((_p.__slice__((0 : stdgo.GoInt), (3 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>) : stdgo.GoString) != ("def" : stdgo.GoString)) || (_err != null) : Bool)) {
                _t.fatalf(("want %q got %q, err=%v" : stdgo.GoString), stdgo.Go.toInterface(("def" : stdgo.GoString)), stdgo.Go.toInterface(((_p.__slice__((0 : stdgo.GoInt), (3 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>) : stdgo.GoString)), stdgo.Go.toInterface(_err));
            };
        };
        {
            var __tmp__ = _buf.peek((4 : stdgo.GoInt)), _s:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if ((((_s : stdgo.GoString) != ("ghij" : stdgo.GoString)) || (_err != null) : Bool)) {
                _t.fatalf(("want %q got %q, err=%v" : stdgo.GoString), stdgo.Go.toInterface(("ghij" : stdgo.GoString)), stdgo.Go.toInterface((_s : stdgo.GoString)), stdgo.Go.toInterface(_err));
            };
        };
        {
            var __tmp__ = _buf.read((_p.__slice__((0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)), __75:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (((((_p.__slice__((0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>) : stdgo.GoString) != ("ghijklmnop" : stdgo.GoString)) || (_err != null) : Bool)) {
                _t.fatalf(("want %q got %q, err=%v" : stdgo.GoString), stdgo.Go.toInterface(("ghijklmnop" : stdgo.GoString)), stdgo.Go.toInterface(((_p.__slice__((0 : stdgo.GoInt), (16 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>) : stdgo.GoString)), stdgo.Go.toInterface(_err));
            };
        };
        {
            var __tmp__ = _buf.peek((0 : stdgo.GoInt)), _s:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if ((((_s : stdgo.GoString) != stdgo.Go.str()) || (_err != null) : Bool)) {
                _t.fatalf(("want %q got %q, err=%v" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.str()), stdgo.Go.toInterface((_s : stdgo.GoString)), stdgo.Go.toInterface(_err));
            };
        };
        {
            var __tmp__ = _buf.peek((1 : stdgo.GoInt)), __92:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (stdgo.Go.toInterface(_err) != (stdgo.Go.toInterface(stdgo._internal.io.Io.eof))) {
                _t.fatalf(("want EOF got %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
            };
        };
        _buf = newReaderSize(stdgo.Go.asInterface(((("abcd" : stdgo.GoString) : stdgo._internal.bufio_test.Bufio_test.T_dataAndEOFReader) : T_dataAndEOFReader)), (32 : stdgo.GoInt));
        {
            var __tmp__ = _buf.peek((2 : stdgo.GoInt)), _s:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if ((((_s : stdgo.GoString) != ("ab" : stdgo.GoString)) || (_err != null) : Bool)) {
                _t.errorf(("Peek(2) on \"abcd\", EOF = %q, %v; want \"ab\", nil" : stdgo.GoString), stdgo.Go.toInterface((_s : stdgo.GoString)), stdgo.Go.toInterface(_err));
            };
        };
        {
            var __tmp__ = _buf.peek((4 : stdgo.GoInt)), _s:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if ((((_s : stdgo.GoString) != ("abcd" : stdgo.GoString)) || (_err != null) : Bool)) {
                _t.errorf(("Peek(4) on \"abcd\", EOF = %q, %v; want \"abcd\", nil" : stdgo.GoString), stdgo.Go.toInterface((_s : stdgo.GoString)), stdgo.Go.toInterface(_err));
            };
        };
        {
            var __tmp__ = _buf.read((_p.__slice__((0 : stdgo.GoInt), (5 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)), _n:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (((((_p.__slice__((0 : stdgo.GoInt), _n) : stdgo.Slice<stdgo.GoUInt8>) : stdgo.GoString) != ("abcd" : stdgo.GoString)) || (_err != null) : Bool)) {
                _t.fatalf(("Read after peek = %q, %v; want abcd, EOF" : stdgo.GoString), stdgo.Go.toInterface((_p.__slice__((0 : stdgo.GoInt), _n) : stdgo.Slice<stdgo.GoUInt8>)), stdgo.Go.toInterface(_err));
            };
        };
        {
            var __tmp__ = _buf.read((_p.__slice__((0 : stdgo.GoInt), (1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)), _n:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (((((_p.__slice__((0 : stdgo.GoInt), _n) : stdgo.Slice<stdgo.GoUInt8>) : stdgo.GoString) != stdgo.Go.str()) || (stdgo.Go.toInterface(_err) != stdgo.Go.toInterface(stdgo._internal.io.Io.eof)) : Bool)) {
                _t.fatalf(("second Read after peek = %q, %v; want \"\", EOF" : stdgo.GoString), stdgo.Go.toInterface((_p.__slice__((0 : stdgo.GoInt), _n) : stdgo.Slice<stdgo.GoUInt8>)), stdgo.Go.toInterface(_err));
            };
        };
    }
function testPeekThenUnreadRune(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _r = newReader(stdgo.Go.asInterface(stdgo._internal.strings.Strings.newReader(("x" : stdgo.GoString))));
        _r.readRune();
        _r.peek((1 : stdgo.GoInt));
        _r.unreadRune();
        _r.readRune();
    }
function _testReadLine(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>, _input:stdgo.Slice<stdgo.GoByte>):Void {
        {
            var _stride:stdgo.GoInt = (1 : stdgo.GoInt);
            stdgo.Go.cfor((_stride < (2 : stdgo.GoInt) : Bool), _stride++, {
                var _done:stdgo.GoInt = (0 : stdgo.GoInt);
                var _reader:stdgo._internal.bufio_test.Bufio_test.T_testReader = (new stdgo._internal.bufio_test.Bufio_test.T_testReader(_input, _stride) : stdgo._internal.bufio_test.Bufio_test.T_testReader);
                var _l = newReaderSize(stdgo.Go.asInterface((stdgo.Go.setRef(_reader) : stdgo.Ref<stdgo._internal.bufio_test.Bufio_test.T_testReader>)), ((_input.length) + (1 : stdgo.GoInt) : stdgo.GoInt));
                while (true) {
                    var __tmp__ = _l.readLine(), _line:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _isPrefix:Bool = __tmp__._1, _err:stdgo.Error = __tmp__._2;
                    if ((((_line.length) > (0 : stdgo.GoInt) : Bool) && (_err != null) : Bool)) {
                        _t.errorf(("ReadLine returned both data and error: %s" : stdgo.GoString), stdgo.Go.toInterface(_err));
                    };
                    if (_isPrefix) {
                        _t.errorf(("ReadLine returned prefix" : stdgo.GoString));
                    };
                    if (_err != null) {
                        if (stdgo.Go.toInterface(_err) != (stdgo.Go.toInterface(stdgo._internal.io.Io.eof))) {
                            _t.fatalf(("Got unknown error: %s" : stdgo.GoString), stdgo.Go.toInterface(_err));
                        };
                        break;
                    };
                    {
                        var _want = (_testOutput.__slice__(_done, (_done + (_line.length) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                        if (!stdgo._internal.bytes.Bytes.equal(_want, _line)) {
                            _t.errorf(("Bad line at stride %d: want: %x got: %x" : stdgo.GoString), stdgo.Go.toInterface(_stride), stdgo.Go.toInterface(_want), stdgo.Go.toInterface(_line));
                        };
                    };
                    _done = (_done + ((_line.length)) : stdgo.GoInt);
                };
                if (_done != ((_testOutput.length))) {
                    _t.errorf(("ReadLine didn\'t return everything: got: %d, want: %d (stride: %d)" : stdgo.GoString), stdgo.Go.toInterface(_done), stdgo.Go.toInterface((_testOutput.length)), stdgo.Go.toInterface(_stride));
                };
            });
        };
    }
function testReadLine(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        _testReadLine(_t, _testInput);
        _testReadLine(_t, _testInputrn);
    }
function testLineTooLong(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _data = (new stdgo.Slice<stdgo.GoUInt8>((0 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        {
            var _i:stdgo.GoInt = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (40 : stdgo.GoInt) : Bool), _i++, {
                _data = (_data.__append__(((48 : stdgo.GoUInt8) + ((_i % (10 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoByte) : stdgo.GoUInt8)));
            });
        };
        var _buf = stdgo._internal.bytes.Bytes.newReader(_data);
        var _l = newReaderSize(stdgo.Go.asInterface(_buf), (16 : stdgo.GoInt));
        var __tmp__ = _l.readLine(), _line:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _isPrefix:Bool = __tmp__._1, _err:stdgo.Error = __tmp__._2;
        if (((!_isPrefix || !stdgo._internal.bytes.Bytes.equal(_line, (_data.__slice__(0, (16 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)) : Bool) || (_err != null) : Bool)) {
            _t.errorf(("bad result for first line: got %q want %q %v" : stdgo.GoString), stdgo.Go.toInterface(_line), stdgo.Go.toInterface((_data.__slice__(0, (16 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)), stdgo.Go.toInterface(_err));
        };
        _data = (_data.__slice__((_line.length)) : stdgo.Slice<stdgo.GoUInt8>);
        {
            var __tmp__ = _l.readLine();
            _line = __tmp__._0;
            _isPrefix = __tmp__._1;
            _err = __tmp__._2;
        };
        if (((!_isPrefix || !stdgo._internal.bytes.Bytes.equal(_line, (_data.__slice__(0, (16 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)) : Bool) || (_err != null) : Bool)) {
            _t.errorf(("bad result for second line: got %q want %q %v" : stdgo.GoString), stdgo.Go.toInterface(_line), stdgo.Go.toInterface((_data.__slice__(0, (16 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)), stdgo.Go.toInterface(_err));
        };
        _data = (_data.__slice__((_line.length)) : stdgo.Slice<stdgo.GoUInt8>);
        {
            var __tmp__ = _l.readLine();
            _line = __tmp__._0;
            _isPrefix = __tmp__._1;
            _err = __tmp__._2;
        };
        if (((_isPrefix || !stdgo._internal.bytes.Bytes.equal(_line, (_data.__slice__(0, (8 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)) : Bool) || (_err != null) : Bool)) {
            _t.errorf(("bad result for third line: got %q want %q %v" : stdgo.GoString), stdgo.Go.toInterface(_line), stdgo.Go.toInterface((_data.__slice__(0, (8 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)), stdgo.Go.toInterface(_err));
        };
        {
            var __tmp__ = _l.readLine();
            _line = __tmp__._0;
            _isPrefix = __tmp__._1;
            _err = __tmp__._2;
        };
        if ((_isPrefix || (_err == null) : Bool)) {
            _t.errorf(("expected no more lines: %x %s" : stdgo.GoString), stdgo.Go.toInterface(_line), stdgo.Go.toInterface(_err));
        };
    }
function testReadAfterLines(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _line1:stdgo.GoString = ("this is line1" : stdgo.GoString);
        var _restData:stdgo.GoString = ("this is line2\nthis is line 3\n" : stdgo.GoString);
        var _inbuf = stdgo._internal.bytes.Bytes.newReader((((_line1 + ("\n" : stdgo.GoString)?.__copy__() : stdgo.GoString) + _restData?.__copy__() : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>));
        var _outbuf = (stdgo.Go.setRef(({} : stdgo._internal.strings.Strings.Builder)) : stdgo.Ref<stdgo._internal.strings.Strings.Builder>);
        var _maxLineLength:stdgo.GoInt = ((_line1.length) + ((_restData.length) / (2 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoInt);
        var _l = newReaderSize(stdgo.Go.asInterface(_inbuf), _maxLineLength);
        var __tmp__ = _l.readLine(), _line:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _isPrefix:Bool = __tmp__._1, _err:stdgo.Error = __tmp__._2;
        if (((_isPrefix || _err != null : Bool) || ((_line : stdgo.GoString) != _line1) : Bool)) {
            _t.errorf(("bad result for first line: isPrefix=%v err=%v line=%q" : stdgo.GoString), stdgo.Go.toInterface(_isPrefix), stdgo.Go.toInterface(_err), stdgo.Go.toInterface((_line : stdgo.GoString)));
        };
        var __tmp__ = stdgo._internal.io.Io.copy(stdgo.Go.asInterface(_outbuf), stdgo.Go.asInterface(_l)), _n:stdgo.GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if ((((_n : stdgo.GoInt) != (_restData.length)) || (_err != null) : Bool)) {
            _t.errorf(("bad result for Read: n=%d err=%v" : stdgo.GoString), stdgo.Go.toInterface(_n), stdgo.Go.toInterface(_err));
        };
        if ((_outbuf.string() : stdgo.GoString) != (_restData)) {
            _t.errorf(("bad result for Read: got %q; expected %q" : stdgo.GoString), stdgo.Go.toInterface((_outbuf.string() : stdgo.GoString)), stdgo.Go.toInterface(_restData));
        };
    }
function testReadEmptyBuffer(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _l = newReaderSize(stdgo.Go.asInterface((stdgo.Go.setRef(({} : stdgo._internal.bytes.Bytes.Buffer)) : stdgo.Ref<stdgo._internal.bytes.Bytes.Buffer>)), (16 : stdgo.GoInt));
        var __tmp__ = _l.readLine(), _line:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _isPrefix:Bool = __tmp__._1, _err:stdgo.Error = __tmp__._2;
        if (stdgo.Go.toInterface(_err) != (stdgo.Go.toInterface(stdgo._internal.io.Io.eof))) {
            _t.errorf(("expected EOF from ReadLine, got \'%s\' %t %s" : stdgo.GoString), stdgo.Go.toInterface(_line), stdgo.Go.toInterface(_isPrefix), stdgo.Go.toInterface(_err));
        };
    }
function testLinesAfterRead(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _l = newReaderSize(stdgo.Go.asInterface(stdgo._internal.bytes.Bytes.newReader((("foo" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>))), (16 : stdgo.GoInt));
        var __tmp__ = stdgo._internal.io.Io.readAll(stdgo.Go.asInterface(_l)), __0:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.error(stdgo.Go.toInterface(_err));
            return;
        };
        var __tmp__ = _l.readLine(), _line:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _isPrefix:Bool = __tmp__._1, _err:stdgo.Error = __tmp__._2;
        if (stdgo.Go.toInterface(_err) != (stdgo.Go.toInterface(stdgo._internal.io.Io.eof))) {
            _t.errorf(("expected EOF from ReadLine, got \'%s\' %t %s" : stdgo.GoString), stdgo.Go.toInterface(_line), stdgo.Go.toInterface(_isPrefix), stdgo.Go.toInterface(_err));
        };
    }
function testReadLineNonNilLineOrError(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _r = newReader(stdgo.Go.asInterface(stdgo._internal.strings.Strings.newReader(("line 1\n" : stdgo.GoString))));
        {
            var _i:stdgo.GoInt = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (2 : stdgo.GoInt) : Bool), _i++, {
                var __tmp__ = _r.readLine(), _l:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, __0:Bool = __tmp__._1, _err:stdgo.Error = __tmp__._2;
                if (((_l != null) && (_err != null) : Bool)) {
                    _t.fatalf(("on line %d/2; ReadLine=%#v, %v; want non-nil line or Error, but not both" : stdgo.GoString), stdgo.Go.toInterface((_i + (1 : stdgo.GoInt) : stdgo.GoInt)), stdgo.Go.toInterface(_l), stdgo.Go.toInterface(_err));
                };
            });
        };
    }
function testReadLineNewlines(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        for (__0 => _e in _readLineNewlinesTests) {
            _testReadLineNewlines(_t, _e._input?.__copy__(), _e._expect);
        };
    }
function _testReadLineNewlines(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>, _input:stdgo.GoString, _expect:stdgo.Slice<T_readLineResult>):Void {
        var _b = newReaderSize(stdgo.Go.asInterface(stdgo._internal.strings.Strings.newReader(_input?.__copy__())), (16 : stdgo.GoInt));
        for (_i => _e in _expect) {
            var __tmp__ = _b.readLine(), _line:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _isPrefix:Bool = __tmp__._1, _err:stdgo.Error = __tmp__._2;
            if (!stdgo._internal.bytes.Bytes.equal(_line, _e._line)) {
                _t.errorf(("%q call %d, line == %q, want %q" : stdgo.GoString), stdgo.Go.toInterface(_input), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_line), stdgo.Go.toInterface(_e._line));
                return;
            };
            if (_isPrefix != (_e._isPrefix)) {
                _t.errorf(("%q call %d, isPrefix == %v, want %v" : stdgo.GoString), stdgo.Go.toInterface(_input), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_isPrefix), stdgo.Go.toInterface(_e._isPrefix));
                return;
            };
            if (stdgo.Go.toInterface(_err) != (stdgo.Go.toInterface(_e._err))) {
                _t.errorf(("%q call %d, err == %v, want %v" : stdgo.GoString), stdgo.Go.toInterface(_input), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_err), stdgo.Go.toInterface(_e._err));
                return;
            };
        };
    }
function _createTestInput(_n:stdgo.GoInt):stdgo.Slice<stdgo.GoByte> {
        var _input = (new stdgo.Slice<stdgo.GoUInt8>((_n : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        for (_i => _ in _input) {
            _input[(_i : stdgo.GoInt)] = ((_i % (251 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoByte);
            if ((_i % (101 : stdgo.GoInt) : stdgo.GoInt) == ((0 : stdgo.GoInt))) {
                _input[(_i : stdgo.GoInt)] = (_input[(_i : stdgo.GoInt)] ^ (((_i / (101 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoByte)) : stdgo.GoUInt8);
            };
        };
        return _input;
    }
function testReaderWriteTo(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _input = _createTestInput((8192 : stdgo.GoInt));
        var _r = newReader(stdgo.Go.asInterface((new stdgo._internal.bufio_test.Bufio_test.T_onlyReader(stdgo.Go.asInterface(stdgo._internal.bytes.Bytes.newReader(_input))) : stdgo._internal.bufio_test.Bufio_test.T_onlyReader)));
        var _w = (stdgo.Go.setRef(({} : stdgo._internal.bytes.Bytes.Buffer)) : stdgo.Ref<stdgo._internal.bytes.Bytes.Buffer>);
        {
            var __tmp__ = _r.writeTo(stdgo.Go.asInterface(_w)), _n:stdgo.GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (((_err != null) || (_n != (_input.length : stdgo.GoInt64)) : Bool)) {
                _t.fatalf(("r.WriteTo(w) = %d, %v, want %d, nil" : stdgo.GoString), stdgo.Go.toInterface(_n), stdgo.Go.toInterface(_err), stdgo.Go.toInterface((_input.length)));
            };
        };
        for (_i => _val in _w.bytes()) {
            if (_val != (_input[(_i : stdgo.GoInt)])) {
                _t.errorf(("after write: out[%d] = %#x, want %#x" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_val), stdgo.Go.toInterface(_input[(_i : stdgo.GoInt)]));
            };
        };
    }
function testReaderWriteToErrors(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        for (_i => _rw in _errorWriterToTests) {
            var _r = newReader(stdgo.Go.asInterface(_rw));
            {
                var __tmp__ = _r.writeTo(stdgo.Go.asInterface(_rw)), __0:stdgo.GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (stdgo.Go.toInterface(_err) != (stdgo.Go.toInterface(_rw._expected))) {
                    _t.errorf(("r.WriteTo(errorWriterToTests[%d]) = _, %v, want _,%v" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_err), stdgo.Go.toInterface(_rw._expected));
                };
            };
        };
    }
function testWriterReadFrom(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _ws = (new stdgo.Slice<stdgo._internal.io.Io.Writer -> stdgo._internal.io.Io.Writer>(2, 2, ...[function(_w:stdgo._internal.io.Io.Writer):stdgo._internal.io.Io.Writer {
            return stdgo.Go.asInterface((new stdgo._internal.bufio_test.Bufio_test.T_onlyWriter(_w) : stdgo._internal.bufio_test.Bufio_test.T_onlyWriter));
        }, function(_w:stdgo._internal.io.Io.Writer):stdgo._internal.io.Io.Writer {
            return _w;
        }]) : stdgo.Slice<stdgo._internal.io.Io.Writer -> stdgo._internal.io.Io.Writer>);
        var _rs = (new stdgo.Slice<stdgo._internal.io.Io.Reader -> stdgo._internal.io.Io.Reader>(2, 2, ...[stdgo._internal.testing.iotest.Iotest.dataErrReader, function(_r:stdgo._internal.io.Io.Reader):stdgo._internal.io.Io.Reader {
            return _r;
        }]) : stdgo.Slice<stdgo._internal.io.Io.Reader -> stdgo._internal.io.Io.Reader>);
        for (_ri => _rfunc in _rs) {
            for (_wi => _wfunc in _ws) {
                var _input = _createTestInput((8192 : stdgo.GoInt));
                var _b = (stdgo.Go.setRef(({} : stdgo._internal.strings.Strings.Builder)) : stdgo.Ref<stdgo._internal.strings.Strings.Builder>);
                var _w = newWriter(_wfunc(stdgo.Go.asInterface(_b)));
                var _r:stdgo._internal.io.Io.Reader = _rfunc(stdgo.Go.asInterface(stdgo._internal.bytes.Bytes.newReader(_input)));
                {
                    var __tmp__ = _w.readFrom(_r), _n:stdgo.GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                    if (((_err != null) || (_n != (_input.length : stdgo.GoInt64)) : Bool)) {
                        _t.errorf(("ws[%d],rs[%d]: w.ReadFrom(r) = %d, %v, want %d, nil" : stdgo.GoString), stdgo.Go.toInterface(_wi), stdgo.Go.toInterface(_ri), stdgo.Go.toInterface(_n), stdgo.Go.toInterface(_err), stdgo.Go.toInterface((_input.length)));
                        continue;
                    };
                };
                {
                    var _err:stdgo.Error = _w.flush();
                    if (_err != null) {
                        _t.errorf(("Flush returned %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
                        continue;
                    };
                };
                {
                    var __0:stdgo.GoString = (_b.string() : stdgo.GoString)?.__copy__(), __1:stdgo.GoString = (_input : stdgo.GoString)?.__copy__(), _want:stdgo.GoString = __1, _got:stdgo.GoString = __0;
                    if (_got != (_want)) {
                        _t.errorf(("ws[%d], rs[%d]:\ngot  %q\nwant %q\n" : stdgo.GoString), stdgo.Go.toInterface(_wi), stdgo.Go.toInterface(_ri), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_want));
                    };
                };
            };
        };
    }
function testWriterReadFromErrors(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        for (_i => _rw in _errorReaderFromTests) {
            var _w = newWriter(stdgo.Go.asInterface(_rw));
            {
                var __tmp__ = _w.readFrom(stdgo.Go.asInterface(_rw)), __0:stdgo.GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (stdgo.Go.toInterface(_err) != (stdgo.Go.toInterface(_rw._expected))) {
                    _t.errorf(("w.ReadFrom(errorReaderFromTests[%d]) = _, %v, want _,%v" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_err), stdgo.Go.toInterface(_rw._expected));
                };
            };
        };
    }
function testWriterReadFromCounts(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _w0:T_writeCountingDiscard = ((0 : stdgo.GoInt) : stdgo._internal.bufio_test.Bufio_test.T_writeCountingDiscard);
        var _b0 = newWriterSize(stdgo.Go.asInterface(stdgo.Go.pointer(_w0)), (1234 : stdgo.GoInt));
        _b0.writeString(stdgo._internal.strings.Strings.repeat(("x" : stdgo.GoString), (1000 : stdgo.GoInt))?.__copy__());
        if (_w0 != ((0 : stdgo._internal.bufio_test.Bufio_test.T_writeCountingDiscard))) {
            _t.fatalf(("write 1000 \'x\'s: got %d writes, want 0" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_w0)));
        };
        _b0.writeString(stdgo._internal.strings.Strings.repeat(("x" : stdgo.GoString), (200 : stdgo.GoInt))?.__copy__());
        if (_w0 != ((0 : stdgo._internal.bufio_test.Bufio_test.T_writeCountingDiscard))) {
            _t.fatalf(("write 1200 \'x\'s: got %d writes, want 0" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_w0)));
        };
        stdgo._internal.io.Io.copy(stdgo.Go.asInterface(_b0), stdgo.Go.asInterface((new stdgo._internal.bufio_test.Bufio_test.T_onlyReader(stdgo.Go.asInterface(stdgo._internal.strings.Strings.newReader(stdgo._internal.strings.Strings.repeat(("x" : stdgo.GoString), (30 : stdgo.GoInt))?.__copy__()))) : stdgo._internal.bufio_test.Bufio_test.T_onlyReader)));
        if (_w0 != ((0 : stdgo._internal.bufio_test.Bufio_test.T_writeCountingDiscard))) {
            _t.fatalf(("write 1230 \'x\'s: got %d writes, want 0" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_w0)));
        };
        stdgo._internal.io.Io.copy(stdgo.Go.asInterface(_b0), stdgo.Go.asInterface((new stdgo._internal.bufio_test.Bufio_test.T_onlyReader(stdgo.Go.asInterface(stdgo._internal.strings.Strings.newReader(stdgo._internal.strings.Strings.repeat(("x" : stdgo.GoString), (9 : stdgo.GoInt))?.__copy__()))) : stdgo._internal.bufio_test.Bufio_test.T_onlyReader)));
        if (_w0 != ((1 : stdgo._internal.bufio_test.Bufio_test.T_writeCountingDiscard))) {
            _t.fatalf(("write 1239 \'x\'s: got %d writes, want 1" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_w0)));
        };
        var _w1:T_writeCountingDiscard = ((0 : stdgo.GoInt) : stdgo._internal.bufio_test.Bufio_test.T_writeCountingDiscard);
        var _b1 = newWriterSize(stdgo.Go.asInterface(stdgo.Go.pointer(_w1)), (1234 : stdgo.GoInt));
        _b1.writeString(stdgo._internal.strings.Strings.repeat(("x" : stdgo.GoString), (1200 : stdgo.GoInt))?.__copy__());
        _b1.flush();
        if (_w1 != ((1 : stdgo._internal.bufio_test.Bufio_test.T_writeCountingDiscard))) {
            _t.fatalf(("flush 1200 \'x\'s: got %d writes, want 1" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_w1)));
        };
        _b1.writeString(stdgo._internal.strings.Strings.repeat(("x" : stdgo.GoString), (89 : stdgo.GoInt))?.__copy__());
        if (_w1 != ((1 : stdgo._internal.bufio_test.Bufio_test.T_writeCountingDiscard))) {
            _t.fatalf(("write 1200 + 89 \'x\'s: got %d writes, want 1" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_w1)));
        };
        stdgo._internal.io.Io.copy(stdgo.Go.asInterface(_b1), stdgo.Go.asInterface((new stdgo._internal.bufio_test.Bufio_test.T_onlyReader(stdgo.Go.asInterface(stdgo._internal.strings.Strings.newReader(stdgo._internal.strings.Strings.repeat(("x" : stdgo.GoString), (700 : stdgo.GoInt))?.__copy__()))) : stdgo._internal.bufio_test.Bufio_test.T_onlyReader)));
        if (_w1 != ((1 : stdgo._internal.bufio_test.Bufio_test.T_writeCountingDiscard))) {
            _t.fatalf(("write 1200 + 789 \'x\'s: got %d writes, want 1" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_w1)));
        };
        stdgo._internal.io.Io.copy(stdgo.Go.asInterface(_b1), stdgo.Go.asInterface((new stdgo._internal.bufio_test.Bufio_test.T_onlyReader(stdgo.Go.asInterface(stdgo._internal.strings.Strings.newReader(stdgo._internal.strings.Strings.repeat(("x" : stdgo.GoString), (600 : stdgo.GoInt))?.__copy__()))) : stdgo._internal.bufio_test.Bufio_test.T_onlyReader)));
        if (_w1 != ((2 : stdgo._internal.bufio_test.Bufio_test.T_writeCountingDiscard))) {
            _t.fatalf(("write 1200 + 1389 \'x\'s: got %d writes, want 2" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_w1)));
        };
        _b1.flush();
        if (_w1 != ((3 : stdgo._internal.bufio_test.Bufio_test.T_writeCountingDiscard))) {
            _t.fatalf(("flush 1200 + 1389 \'x\'s: got %d writes, want 3" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_w1)));
        };
    }
function testNegativeRead(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            var _b = newReader(stdgo.Go.asInterface(stdgo.Go.pointer(((0 : stdgo.GoInt) : stdgo._internal.bufio_test.Bufio_test.T_negativeReader))));
            __deferstack__.unshift(() -> {
                var a = function():Void {
                    {
                        final __type__ = ({
                            final r = stdgo.Go.recover_exception;
                            stdgo.Go.recover_exception = null;
                            r;
                        });
                        if (__type__ == null) {
                            var _err:stdgo.AnyInterface = __type__ == null ? (null : stdgo.AnyInterface) : __type__.__underlying__();
                            _t.fatal(stdgo.Go.toInterface(("read did not panic" : stdgo.GoString)));
                        } else if (stdgo.Go.typeEquals((__type__ : stdgo.Error))) {
                            var _err:stdgo.Error = __type__ == null ? (null : stdgo.Error) : __type__.__underlying__() == null ? (null : stdgo.Error) : __type__ == null ? (null : stdgo.Error) : __type__.__underlying__().value;
                            if (!stdgo._internal.strings.Strings.contains(_err.error()?.__copy__(), ("reader returned negative count from Read" : stdgo.GoString))) {
                                _t.fatalf(("wrong panic: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
                            };
                        } else {
                            var _err:stdgo.AnyInterface = __type__?.__underlying__();
                            _t.fatalf(("unexpected panic value: %T(%v)" : stdgo.GoString), _err, _err);
                        };
                    };
                };
                a();
            });
            _b.read((new stdgo.Slice<stdgo.GoUInt8>((100 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>));
            {
                for (defer in __deferstack__) {
                    defer();
                };
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                return;
            };
        } catch(__exception__) {
            var exe:Dynamic = __exception__.native;
            if ((exe is haxe.ValueException)) exe = exe.value;
            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                exe = stdgo.Go.toInterface(__exception__.message);
            };
            stdgo.Go.recover_exception = exe;
            for (defer in __deferstack__) {
                defer();
            };
            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
            return;
        };
    }
function testReaderClearError(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _r = (stdgo.Go.setRef((new stdgo._internal.bufio_test.Bufio_test.T_errorThenGoodReader() : stdgo._internal.bufio_test.Bufio_test.T_errorThenGoodReader)) : stdgo.Ref<stdgo._internal.bufio_test.Bufio_test.T_errorThenGoodReader>);
        var _b = newReader(stdgo.Go.asInterface(_r));
        var _buf = (new stdgo.Slice<stdgo.GoUInt8>((1 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        {
            var __tmp__ = _b.read((null : stdgo.Slice<stdgo.GoUInt8>)), __0:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _t.fatalf(("1st nil Read = %v; want nil" : stdgo.GoString), stdgo.Go.toInterface(_err));
            };
        };
        {
            var __tmp__ = _b.read(_buf), __9:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (stdgo.Go.toInterface(_err) != (stdgo.Go.toInterface(_errFake))) {
                _t.fatalf(("1st Read = %v; want errFake" : stdgo.GoString), stdgo.Go.toInterface(_err));
            };
        };
        {
            var __tmp__ = _b.read((null : stdgo.Slice<stdgo.GoUInt8>)), __18:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _t.fatalf(("2nd nil Read = %v; want nil" : stdgo.GoString), stdgo.Go.toInterface(_err));
            };
        };
        {
            var __tmp__ = _b.read(_buf), __27:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _t.fatalf(("3rd Read with buffer = %v; want nil" : stdgo.GoString), stdgo.Go.toInterface(_err));
            };
        };
        if (_r._nread != ((2 : stdgo.GoInt))) {
            _t.errorf(("num reads = %d; want 2" : stdgo.GoString), stdgo.Go.toInterface(_r._nread));
        };
    }
function testWriterReadFromWhileFull(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _buf = (stdgo.Go.setRef(({} : stdgo._internal.bytes.Bytes.Buffer)) : stdgo.Ref<stdgo._internal.bytes.Bytes.Buffer>);
        var _w = newWriterSize(stdgo.Go.asInterface(_buf), (10 : stdgo.GoInt));
        var __tmp__ = _w.write((("0123456789" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>)), _n:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (((_n != (10 : stdgo.GoInt)) || (_err != null) : Bool)) {
            _t.fatalf(("Write returned (%v, %v), want (10, nil)" : stdgo.GoString), stdgo.Go.toInterface(_n), stdgo.Go.toInterface(_err));
        };
        var __tmp__ = _w.readFrom(stdgo.Go.asInterface(stdgo._internal.strings.Strings.newReader(("abcdef" : stdgo.GoString)))), _n2:stdgo.GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (((_n2 != (6i64 : stdgo.GoInt64)) || (_err != null) : Bool)) {
            _t.fatalf(("ReadFrom returned (%v, %v), want (6, nil)" : stdgo.GoString), stdgo.Go.toInterface(_n2), stdgo.Go.toInterface(_err));
        };
    }
function testWriterReadFromUntilEOF(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _buf = (stdgo.Go.setRef(({} : stdgo._internal.bytes.Bytes.Buffer)) : stdgo.Ref<stdgo._internal.bytes.Bytes.Buffer>);
        var _w = newWriterSize(stdgo.Go.asInterface(_buf), (5 : stdgo.GoInt));
        var __tmp__ = _w.write((("0123" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>)), _n:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (((_n != (4 : stdgo.GoInt)) || (_err != null) : Bool)) {
            _t.fatalf(("Write returned (%v, %v), want (4, nil)" : stdgo.GoString), stdgo.Go.toInterface(_n), stdgo.Go.toInterface(_err));
        };
        var _r = (stdgo.Go.setRef(({ _r : stdgo.Go.asInterface(stdgo._internal.strings.Strings.newReader(("abcd" : stdgo.GoString))), _n : (3 : stdgo.GoInt) } : stdgo._internal.bufio_test.Bufio_test.T_emptyThenNonEmptyReader)) : stdgo.Ref<stdgo._internal.bufio_test.Bufio_test.T_emptyThenNonEmptyReader>);
        var __tmp__ = _w.readFrom(stdgo.Go.asInterface(_r)), _n2:stdgo.GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (((_n2 != (4i64 : stdgo.GoInt64)) || (_err != null) : Bool)) {
            _t.fatalf(("ReadFrom returned (%v, %v), want (4, nil)" : stdgo.GoString), stdgo.Go.toInterface(_n2), stdgo.Go.toInterface(_err));
        };
        _w.flush();
        {
            var __0:stdgo.GoString = (_buf.string() : stdgo.GoString)?.__copy__(), __1:stdgo.GoString = ("0123abcd" : stdgo.GoString), _want:stdgo.GoString = __1, _got:stdgo.GoString = __0;
            if (_got != (_want)) {
                _t.fatalf(("buf.Bytes() returned %q, want %q" : stdgo.GoString), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_want));
            };
        };
    }
function testWriterReadFromErrNoProgress(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _buf = (stdgo.Go.setRef(({} : stdgo._internal.bytes.Bytes.Buffer)) : stdgo.Ref<stdgo._internal.bytes.Bytes.Buffer>);
        var _w = newWriterSize(stdgo.Go.asInterface(_buf), (5 : stdgo.GoInt));
        var __tmp__ = _w.write((("0123" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>)), _n:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (((_n != (4 : stdgo.GoInt)) || (_err != null) : Bool)) {
            _t.fatalf(("Write returned (%v, %v), want (4, nil)" : stdgo.GoString), stdgo.Go.toInterface(_n), stdgo.Go.toInterface(_err));
        };
        var _r = (stdgo.Go.setRef(({ _r : stdgo.Go.asInterface(stdgo._internal.strings.Strings.newReader(("abcd" : stdgo.GoString))), _n : (100 : stdgo.GoInt) } : stdgo._internal.bufio_test.Bufio_test.T_emptyThenNonEmptyReader)) : stdgo.Ref<stdgo._internal.bufio_test.Bufio_test.T_emptyThenNonEmptyReader>);
        var __tmp__ = _w.readFrom(stdgo.Go.asInterface(_r)), _n2:stdgo.GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (((_n2 != (0i64 : stdgo.GoInt64)) || (stdgo.Go.toInterface(_err) != stdgo.Go.toInterface(stdgo._internal.io.Io.errNoProgress)) : Bool)) {
            _t.fatalf(("buf.Bytes() returned (%v, %v), want (0, io.ErrNoProgress)" : stdgo.GoString), stdgo.Go.toInterface(_n2), stdgo.Go.toInterface(_err));
        };
    }
function testWriterReadFromWithBufferedData(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        {};
        var _input = _createTestInput((64 : stdgo.GoInt));
        var _rfw = (stdgo.Go.setRef((new stdgo._internal.bufio_test.Bufio_test.T_readFromWriter() : stdgo._internal.bufio_test.Bufio_test.T_readFromWriter)) : stdgo.Ref<stdgo._internal.bufio_test.Bufio_test.T_readFromWriter>);
        var _w = newWriterSize(stdgo.Go.asInterface(_rfw), (16 : stdgo.GoInt));
        {};
        {
            var __tmp__ = _w.write((_input.__slice__(0, (8 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)), _n:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (((_n != (8 : stdgo.GoInt)) || (_err != null) : Bool)) {
                _t.errorf(("w.Write(%v bytes) = %v, %v; want %v, nil" : stdgo.GoString), stdgo.Go.toInterface((8 : stdgo.GoInt)), stdgo.Go.toInterface(_n), stdgo.Go.toInterface(_err), stdgo.Go.toInterface((8 : stdgo.GoInt)));
            };
        };
        var __tmp__ = _w.readFrom(stdgo.Go.asInterface(stdgo._internal.bytes.Bytes.newReader((_input.__slice__((8 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)))), _n:stdgo.GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        {
            var _wantn:stdgo.GoInt = ((_input.__slice__((8 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>).length);
            if ((((_n : stdgo.GoInt) != _wantn) || (_err != null) : Bool)) {
                _t.errorf(("io.Copy(w, %v bytes) = %v, %v; want %v, nil" : stdgo.GoString), stdgo.Go.toInterface(_wantn), stdgo.Go.toInterface(_n), stdgo.Go.toInterface(_err), stdgo.Go.toInterface(_wantn));
            };
        };
        {
            var _err:stdgo.Error = _w.flush();
            if (_err != null) {
                _t.errorf(("w.Flush() = %v, want nil" : stdgo.GoString), stdgo.Go.toInterface(_err));
            };
        };
        {
            var __0:stdgo.GoInt = _rfw._writeBytes, __1:stdgo.GoInt = (16 : stdgo.GoInt), _want:stdgo.GoInt = __1, _got:stdgo.GoInt = __0;
            if (_got != (_want)) {
                _t.errorf(("wrote %v bytes with Write, want %v" : stdgo.GoString), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_want));
            };
        };
        {
            var __0:stdgo.GoInt = _rfw._readFromBytes, __1:stdgo.GoInt = ((_input.length) - (16 : stdgo.GoInt) : stdgo.GoInt), _want:stdgo.GoInt = __1, _got:stdgo.GoInt = __0;
            if (_got != (_want)) {
                _t.errorf(("wrote %v bytes with ReadFrom, want %v" : stdgo.GoString), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_want));
            };
        };
    }
function testReadZero(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        for (__0 => _size in (new stdgo.Slice<stdgo.GoInt>(2, 2, ...[(100 : stdgo.GoInt), (2 : stdgo.GoInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>)) {
            _t.run(stdgo._internal.fmt.Fmt.sprintf(("bufsize=%d" : stdgo.GoString), stdgo.Go.toInterface(_size))?.__copy__(), function(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
                var _r:stdgo._internal.io.Io.Reader = stdgo._internal.io.Io.multiReader(stdgo.Go.asInterface(stdgo._internal.strings.Strings.newReader(("abc" : stdgo.GoString))), stdgo.Go.asInterface((stdgo.Go.setRef(({ _r : stdgo.Go.asInterface(stdgo._internal.strings.Strings.newReader(("def" : stdgo.GoString))), _n : (1 : stdgo.GoInt) } : stdgo._internal.bufio_test.Bufio_test.T_emptyThenNonEmptyReader)) : stdgo.Ref<stdgo._internal.bufio_test.Bufio_test.T_emptyThenNonEmptyReader>)));
                var _br = newReaderSize(_r, _size);
                var _want:(stdgo.GoString, stdgo.Error) -> Void = function(_s:stdgo.GoString, _wantErr:stdgo.Error):Void {
                    var _p = (new stdgo.Slice<stdgo.GoUInt8>((50 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
                    var __tmp__ = _br.read(_p), _n:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                    if (((stdgo.Go.toInterface(_err) != (stdgo.Go.toInterface(_wantErr)) || _n != ((_s.length)) : Bool) || (((_p.__slice__(0, _n) : stdgo.Slice<stdgo.GoUInt8>) : stdgo.GoString) != _s) : Bool)) {
                        _t.fatalf(("read(%d) = %q, %v, want %q, %v" : stdgo.GoString), stdgo.Go.toInterface((_p.length)), stdgo.Go.toInterface(((_p.__slice__(0, _n) : stdgo.Slice<stdgo.GoUInt8>) : stdgo.GoString)), stdgo.Go.toInterface(_err), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(_wantErr));
                    };
                    _t.logf(("read(%d) = %q, %v" : stdgo.GoString), stdgo.Go.toInterface((_p.length)), stdgo.Go.toInterface(((_p.__slice__(0, _n) : stdgo.Slice<stdgo.GoUInt8>) : stdgo.GoString)), stdgo.Go.toInterface(_err));
                };
                _want(("abc" : stdgo.GoString), (null : stdgo.Error));
                _want(stdgo.Go.str()?.__copy__(), (null : stdgo.Error));
                _want(("def" : stdgo.GoString), (null : stdgo.Error));
                _want(stdgo.Go.str()?.__copy__(), stdgo._internal.io.Io.eof);
            });
        };
    }
function testReaderReset(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _checkAll = function(_r:stdgo.Ref<Reader>, _want:stdgo.GoString):Void {
            _t.helper();
            var __tmp__ = stdgo._internal.io.Io.readAll(stdgo.Go.asInterface(_r)), _all:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _t.fatal(stdgo.Go.toInterface(_err));
            };
            if ((_all : stdgo.GoString) != (_want)) {
                _t.errorf(("ReadAll returned %q, want %q" : stdgo.GoString), stdgo.Go.toInterface(_all), stdgo.Go.toInterface(_want));
            };
        };
        var _r = newReader(stdgo.Go.asInterface(stdgo._internal.strings.Strings.newReader(("foo foo" : stdgo.GoString))));
        var _buf = (new stdgo.Slice<stdgo.GoUInt8>((3 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        _r.read(_buf);
        if ((_buf : stdgo.GoString) != (("foo" : stdgo.GoString))) {
            _t.errorf(("buf = %q; want foo" : stdgo.GoString), stdgo.Go.toInterface(_buf));
        };
        _r.reset(stdgo.Go.asInterface(stdgo._internal.strings.Strings.newReader(("bar bar" : stdgo.GoString))));
        _checkAll(_r, ("bar bar" : stdgo.GoString));
        {
            var __tmp__ = (new stdgo._internal.bufio.Bufio.Reader() : stdgo._internal.bufio.Bufio.Reader);
            _r._buf = __tmp__._buf;
            _r._rd = __tmp__._rd;
            _r._r = __tmp__._r;
            _r._w = __tmp__._w;
            _r._err = __tmp__._err;
            _r._lastByte = __tmp__._lastByte;
            _r._lastRuneSize = __tmp__._lastRuneSize;
        };
        _r.reset(stdgo.Go.asInterface(stdgo._internal.strings.Strings.newReader(("bar bar" : stdgo.GoString))));
        _checkAll(_r, ("bar bar" : stdgo.GoString));
        _r.reset(stdgo.Go.asInterface(stdgo._internal.strings.Strings.newReader(("recur" : stdgo.GoString))));
        var _r2 = newReader(stdgo.Go.asInterface(_r));
        _checkAll(_r2, ("recur" : stdgo.GoString));
        _r.reset(stdgo.Go.asInterface(stdgo._internal.strings.Strings.newReader(("recur2" : stdgo.GoString))));
        _r2.reset(stdgo.Go.asInterface(_r));
        _checkAll(_r2, ("recur2" : stdgo.GoString));
    }
function testWriterReset(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var __0:stdgo._internal.strings.Strings.Builder = ({} : stdgo._internal.strings.Strings.Builder), __1:stdgo._internal.strings.Strings.Builder = ({} : stdgo._internal.strings.Strings.Builder), __2:stdgo._internal.strings.Strings.Builder = ({} : stdgo._internal.strings.Strings.Builder), __3:stdgo._internal.strings.Strings.Builder = ({} : stdgo._internal.strings.Strings.Builder), __4:stdgo._internal.strings.Strings.Builder = ({} : stdgo._internal.strings.Strings.Builder), _buf5:stdgo._internal.strings.Strings.Builder = __4, _buf4:stdgo._internal.strings.Strings.Builder = __3, _buf3:stdgo._internal.strings.Strings.Builder = __2, _buf2:stdgo._internal.strings.Strings.Builder = __1, _buf1:stdgo._internal.strings.Strings.Builder = __0;
        var _w = newWriter(stdgo.Go.asInterface((stdgo.Go.setRef(_buf1) : stdgo.Ref<stdgo._internal.strings.Strings.Builder>)));
        _w.writeString(("foo" : stdgo.GoString));
        _w.reset(stdgo.Go.asInterface((stdgo.Go.setRef(_buf2) : stdgo.Ref<stdgo._internal.strings.Strings.Builder>)));
        _w.writeString(("bar" : stdgo.GoString));
        _w.flush();
        if ((_buf1.string() : stdgo.GoString) != (stdgo.Go.str())) {
            _t.errorf(("buf1 = %q; want empty" : stdgo.GoString), stdgo.Go.toInterface((_buf1.string() : stdgo.GoString)));
        };
        if ((_buf2.string() : stdgo.GoString) != (("bar" : stdgo.GoString))) {
            _t.errorf(("buf2 = %q; want bar" : stdgo.GoString), stdgo.Go.toInterface((_buf2.string() : stdgo.GoString)));
        };
        {
            var __tmp__ = (new stdgo._internal.bufio.Bufio.Writer() : stdgo._internal.bufio.Bufio.Writer);
            _w._err = __tmp__._err;
            _w._buf = __tmp__._buf;
            _w._n = __tmp__._n;
            _w._wr = __tmp__._wr;
        };
        _w.reset(stdgo.Go.asInterface((stdgo.Go.setRef(_buf3) : stdgo.Ref<stdgo._internal.strings.Strings.Builder>)));
        _w.writeString(("bar" : stdgo.GoString));
        _w.flush();
        if ((_buf1.string() : stdgo.GoString) != (stdgo.Go.str())) {
            _t.errorf(("buf1 = %q; want empty" : stdgo.GoString), stdgo.Go.toInterface((_buf1.string() : stdgo.GoString)));
        };
        if ((_buf3.string() : stdgo.GoString) != (("bar" : stdgo.GoString))) {
            _t.errorf(("buf3 = %q; want bar" : stdgo.GoString), stdgo.Go.toInterface((_buf3.string() : stdgo.GoString)));
        };
        _w.reset(stdgo.Go.asInterface((stdgo.Go.setRef(_buf4) : stdgo.Ref<stdgo._internal.strings.Strings.Builder>)));
        var _w2 = newWriter(stdgo.Go.asInterface(_w));
        _w2.writeString(("recur" : stdgo.GoString));
        _w2.flush();
        if ((_buf4.string() : stdgo.GoString) != (("recur" : stdgo.GoString))) {
            _t.errorf(("buf4 = %q, want %q" : stdgo.GoString), stdgo.Go.toInterface((_buf4.string() : stdgo.GoString)), stdgo.Go.toInterface(("recur" : stdgo.GoString)));
        };
        _w.reset(stdgo.Go.asInterface((stdgo.Go.setRef(_buf5) : stdgo.Ref<stdgo._internal.strings.Strings.Builder>)));
        _w2.reset(stdgo.Go.asInterface(_w));
        _w2.writeString(("recur2" : stdgo.GoString));
        _w2.flush();
        if ((_buf5.string() : stdgo.GoString) != (("recur2" : stdgo.GoString))) {
            _t.errorf(("buf5 = %q, want %q" : stdgo.GoString), stdgo.Go.toInterface((_buf5.string() : stdgo.GoString)), stdgo.Go.toInterface(("recur2" : stdgo.GoString)));
        };
    }
function testReaderDiscard(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _tests = (new stdgo.Slice<T__struct_1>(9, 9, ...[({ _name : ("normal case" : stdgo.GoString), _r : stdgo.Go.asInterface(stdgo._internal.strings.Strings.newReader(("abcdefghijklmnopqrstuvwxyz" : stdgo.GoString))), _peekSize : (16 : stdgo.GoInt), _n : (6 : stdgo.GoInt), _want : (6 : stdgo.GoInt), _wantBuffered : (10 : stdgo.GoInt), _bufSize : (0 : stdgo.GoInt), _wantErr : (null : stdgo.Error) } : T__struct_1), ({ _name : ("discard causing read" : stdgo.GoString), _r : stdgo.Go.asInterface(stdgo._internal.strings.Strings.newReader(("abcdefghijklmnopqrstuvwxyz" : stdgo.GoString))), _n : (6 : stdgo.GoInt), _want : (6 : stdgo.GoInt), _wantBuffered : (10 : stdgo.GoInt), _bufSize : (0 : stdgo.GoInt), _peekSize : (0 : stdgo.GoInt), _wantErr : (null : stdgo.Error) } : T__struct_1), ({ _name : ("discard all without peek" : stdgo.GoString), _r : stdgo.Go.asInterface(stdgo._internal.strings.Strings.newReader(("abcdefghijklmnopqrstuvwxyz" : stdgo.GoString))), _n : (26 : stdgo.GoInt), _want : (26 : stdgo.GoInt), _wantBuffered : (0 : stdgo.GoInt), _bufSize : (0 : stdgo.GoInt), _peekSize : (0 : stdgo.GoInt), _wantErr : (null : stdgo.Error) } : T__struct_1), ({ _name : ("discard more than end" : stdgo.GoString), _r : stdgo.Go.asInterface(stdgo._internal.strings.Strings.newReader(("abcdefghijklmnopqrstuvwxyz" : stdgo.GoString))), _n : (27 : stdgo.GoInt), _want : (26 : stdgo.GoInt), _wantErr : stdgo._internal.io.Io.eof, _wantBuffered : (0 : stdgo.GoInt), _bufSize : (0 : stdgo.GoInt), _peekSize : (0 : stdgo.GoInt) } : T__struct_1), ({ _name : ("fill error, discard less" : stdgo.GoString), _r : _newScriptedReader(function(_p:stdgo.Slice<stdgo.GoByte>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
            var _n:stdgo.GoInt = (0 : stdgo.GoInt), _err:stdgo.Error = (null : stdgo.Error);
            if (((_p.length) < (5 : stdgo.GoInt) : Bool)) {
                throw stdgo.Go.toInterface(("unexpected small read" : stdgo.GoString));
            };
            return { _0 : (5 : stdgo.GoInt), _1 : stdgo._internal.errors.Errors.new_(("5-then-error" : stdgo.GoString)) };
        }), _n : (4 : stdgo.GoInt), _want : (4 : stdgo.GoInt), _wantErr : (null : stdgo.Error), _wantBuffered : (1 : stdgo.GoInt), _bufSize : (0 : stdgo.GoInt), _peekSize : (0 : stdgo.GoInt) } : T__struct_1), ({ _name : ("fill error, discard equal" : stdgo.GoString), _r : _newScriptedReader(function(_p:stdgo.Slice<stdgo.GoByte>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
            var _n:stdgo.GoInt = (0 : stdgo.GoInt), _err:stdgo.Error = (null : stdgo.Error);
            if (((_p.length) < (5 : stdgo.GoInt) : Bool)) {
                throw stdgo.Go.toInterface(("unexpected small read" : stdgo.GoString));
            };
            return { _0 : (5 : stdgo.GoInt), _1 : stdgo._internal.errors.Errors.new_(("5-then-error" : stdgo.GoString)) };
        }), _n : (5 : stdgo.GoInt), _want : (5 : stdgo.GoInt), _wantErr : (null : stdgo.Error), _wantBuffered : (0 : stdgo.GoInt), _bufSize : (0 : stdgo.GoInt), _peekSize : (0 : stdgo.GoInt) } : T__struct_1), ({ _name : ("fill error, discard more" : stdgo.GoString), _r : _newScriptedReader(function(_p:stdgo.Slice<stdgo.GoByte>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
            var _n:stdgo.GoInt = (0 : stdgo.GoInt), _err:stdgo.Error = (null : stdgo.Error);
            if (((_p.length) < (5 : stdgo.GoInt) : Bool)) {
                throw stdgo.Go.toInterface(("unexpected small read" : stdgo.GoString));
            };
            return { _0 : (5 : stdgo.GoInt), _1 : stdgo._internal.errors.Errors.new_(("5-then-error" : stdgo.GoString)) };
        }), _n : (6 : stdgo.GoInt), _want : (5 : stdgo.GoInt), _wantErr : stdgo._internal.errors.Errors.new_(("5-then-error" : stdgo.GoString)), _wantBuffered : (0 : stdgo.GoInt), _bufSize : (0 : stdgo.GoInt), _peekSize : (0 : stdgo.GoInt) } : T__struct_1), ({ _name : ("discard zero" : stdgo.GoString), _r : _newScriptedReader(), _n : (0 : stdgo.GoInt), _want : (0 : stdgo.GoInt), _wantErr : (null : stdgo.Error), _wantBuffered : (0 : stdgo.GoInt), _bufSize : (0 : stdgo.GoInt), _peekSize : (0 : stdgo.GoInt) } : T__struct_1), ({ _name : ("discard negative" : stdgo.GoString), _r : _newScriptedReader(), _n : (-1 : stdgo.GoInt), _want : (0 : stdgo.GoInt), _wantErr : errNegativeCount, _wantBuffered : (0 : stdgo.GoInt), _bufSize : (0 : stdgo.GoInt), _peekSize : (0 : stdgo.GoInt) } : T__struct_1)].concat([for (i in 9 ... (9 > 9 ? 9 : 9 : stdgo.GoInt).toBasic()) ({ _name : ("" : stdgo.GoString), _r : (null : stdgo._internal.io.Io.Reader), _bufSize : (0 : stdgo.GoInt), _peekSize : (0 : stdgo.GoInt), _n : (0 : stdgo.GoInt), _want : (0 : stdgo.GoInt), _wantErr : (null : stdgo.Error), _wantBuffered : (0 : stdgo.GoInt) } : T__struct_1)])) : stdgo.Slice<T__struct_1>);
        for (__0 => _tt in _tests) {
            var _br = newReaderSize(_tt._r, _tt._bufSize);
            if ((_tt._peekSize > (0 : stdgo.GoInt) : Bool)) {
                var __tmp__ = _br.peek(_tt._peekSize), _peekBuf:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    _t.errorf(("%s: Peek(%d): %v" : stdgo.GoString), stdgo.Go.toInterface(_tt._name), stdgo.Go.toInterface(_tt._peekSize), stdgo.Go.toInterface(_err));
                    continue;
                };
                if ((_peekBuf.length) != (_tt._peekSize)) {
                    _t.errorf(("%s: len(Peek(%d)) = %v; want %v" : stdgo.GoString), stdgo.Go.toInterface(_tt._name), stdgo.Go.toInterface(_tt._peekSize), stdgo.Go.toInterface((_peekBuf.length)), stdgo.Go.toInterface(_tt._peekSize));
                    continue;
                };
            };
            var __tmp__ = _br.discard(_tt._n), _discarded:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            {
                var __0:stdgo.GoString = stdgo._internal.fmt.Fmt.sprint(stdgo.Go.toInterface(_err))?.__copy__(), __1:stdgo.GoString = stdgo._internal.fmt.Fmt.sprint(stdgo.Go.toInterface(_tt._wantErr))?.__copy__(), _we:stdgo.GoString = __1, _ge:stdgo.GoString = __0;
                if (((_discarded != _tt._want) || (_ge != _we) : Bool)) {
                    _t.errorf(("%s: Discard(%d) = (%v, %v); want (%v, %v)" : stdgo.GoString), stdgo.Go.toInterface(_tt._name), stdgo.Go.toInterface(_tt._n), stdgo.Go.toInterface(_discarded), stdgo.Go.toInterface(_ge), stdgo.Go.toInterface(_tt._want), stdgo.Go.toInterface(_we));
                    continue;
                };
            };
            {
                var _bn:stdgo.GoInt = _br.buffered();
                if (_bn != (_tt._wantBuffered)) {
                    _t.errorf(("%s: after Discard, Buffered = %d; want %d" : stdgo.GoString), stdgo.Go.toInterface(_tt._name), stdgo.Go.toInterface(_bn), stdgo.Go.toInterface(_tt._wantBuffered));
                };
            };
        };
    }
function testReaderSize(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        {
            var __0:stdgo.GoInt = newReader((null : stdgo._internal.io.Io.Reader)).size(), __1:stdgo.GoInt = (4096 : stdgo.GoInt), _want:stdgo.GoInt = __1, _got:stdgo.GoInt = __0;
            if (_got != (_want)) {
                _t.errorf(("NewReader\'s Reader.Size = %d; want %d" : stdgo.GoString), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_want));
            };
        };
        {
            var __0:stdgo.GoInt = newReaderSize((null : stdgo._internal.io.Io.Reader), (1234 : stdgo.GoInt)).size(), __1:stdgo.GoInt = (1234 : stdgo.GoInt), _want:stdgo.GoInt = __1, _got:stdgo.GoInt = __0;
            if (_got != (_want)) {
                _t.errorf(("NewReaderSize\'s Reader.Size = %d; want %d" : stdgo.GoString), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_want));
            };
        };
    }
function testWriterSize(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        {
            var __0:stdgo.GoInt = newWriter((null : stdgo._internal.io.Io.Writer)).size(), __1:stdgo.GoInt = (4096 : stdgo.GoInt), _want:stdgo.GoInt = __1, _got:stdgo.GoInt = __0;
            if (_got != (_want)) {
                _t.errorf(("NewWriter\'s Writer.Size = %d; want %d" : stdgo.GoString), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_want));
            };
        };
        {
            var __0:stdgo.GoInt = newWriterSize((null : stdgo._internal.io.Io.Writer), (1234 : stdgo.GoInt)).size(), __1:stdgo.GoInt = (1234 : stdgo.GoInt), _want:stdgo.GoInt = __1, _got:stdgo.GoInt = __0;
            if (_got != (_want)) {
                _t.errorf(("NewWriterSize\'s Writer.Size = %d; want %d" : stdgo.GoString), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_want));
            };
        };
    }
function _newScriptedReader(_steps:haxe.Rest<(_p:stdgo.Slice<stdgo.GoByte>) -> { var _0 : stdgo.GoInt; var _1 : stdgo.Error; }>):stdgo._internal.io.Io.Reader {
        var _steps = new stdgo.Slice<(_p:stdgo.Slice<stdgo.GoByte>) -> { var _0 : stdgo.GoInt; var _1 : stdgo.Error; }>(_steps.length, 0, ..._steps);
        var _sr:stdgo._internal.bufio_test.Bufio_test.T_scriptedReader = (_steps : T_scriptedReader);
        return stdgo.Go.asInterface((stdgo.Go.setRef(_sr) : stdgo.Ref<stdgo._internal.bufio_test.Bufio_test.T_scriptedReader>));
    }
function testPartialReadEOF(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _src = (new stdgo.Slice<stdgo.GoUInt8>((10 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        var _eofR = (stdgo.Go.setRef(({ _buf : _src } : stdgo._internal.bufio_test.Bufio_test.T_eofReader)) : stdgo.Ref<stdgo._internal.bufio_test.Bufio_test.T_eofReader>);
        var _r = newReader(stdgo.Go.asInterface(_eofR));
        var _dest = (new stdgo.Slice<stdgo.GoUInt8>((5 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        var __tmp__ = _r.read(_dest), _read:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.fatalf(("unexpected error: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
        };
        {
            var _n:stdgo.GoInt = (_dest.length);
            if (_read != (_n)) {
                _t.fatalf(("read %d bytes; wanted %d bytes" : stdgo.GoString), stdgo.Go.toInterface(_read), stdgo.Go.toInterface(_n));
            };
        };
        {
            var _n:stdgo.GoInt = (_eofR._buf.length);
            if (_n != ((0 : stdgo.GoInt))) {
                _t.fatalf(("got %d bytes left in bufio.Reader source; want 0 bytes" : stdgo.GoString), stdgo.Go.toInterface(_n));
            };
        };
        {
            var _n:stdgo.GoInt = _r.buffered();
            if (_n != ((5 : stdgo.GoInt))) {
                _t.fatalf(("got %d bytes buffered in bufio.Reader; want 5 bytes" : stdgo.GoString), stdgo.Go.toInterface(_n));
            };
        };
        {
            var __tmp__ = _r.read((new stdgo.Slice<stdgo.GoUInt8>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>));
            _read = __tmp__._0;
            _err = __tmp__._1;
        };
        if (_err != null) {
            _t.fatalf(("unexpected error: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
        };
        if (_read != ((0 : stdgo.GoInt))) {
            _t.fatalf(("read %d bytes; want 0 bytes" : stdgo.GoString), stdgo.Go.toInterface(_read));
        };
    }
function testWriterReadFromMustSetUnderlyingError(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _wr:stdgo.Ref<stdgo._internal.bufio.Bufio.Writer> = newWriter(stdgo.Go.asInterface((new stdgo._internal.bufio_test.Bufio_test.T_writerWithReadFromError() : stdgo._internal.bufio_test.Bufio_test.T_writerWithReadFromError)));
        {
            var __tmp__ = _wr.readFrom(stdgo.Go.asInterface(stdgo._internal.strings.Strings.newReader(("test2" : stdgo.GoString)))), __0:stdgo.GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err == null) {
                _t.fatal(stdgo.Go.toInterface(("expected ReadFrom returns error, got nil" : stdgo.GoString)));
            };
        };
        {
            var __tmp__ = _wr.write((("123" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>)), __9:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err == null) {
                _t.fatal(stdgo.Go.toInterface(("expected Write returns error, got nil" : stdgo.GoString)));
            };
        };
    }
function testWriterReadFromMustReturnUnderlyingError(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _wr:stdgo.Ref<stdgo._internal.bufio.Bufio.Writer> = newWriter(stdgo.Go.asInterface((new stdgo._internal.bufio_test.Bufio_test.T_writeErrorOnlyWriter() : stdgo._internal.bufio_test.Bufio_test.T_writeErrorOnlyWriter)));
        var _s:stdgo.GoString = ("test1" : stdgo.GoString);
        var _wantBuffered:stdgo.GoInt = (_s.length);
        {
            var __tmp__ = _wr.writeString(_s?.__copy__()), __0:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _t.fatalf(("unexpected error: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
            };
        };
        {
            var _err:stdgo.Error = _wr.flush();
            if (_err == null) {
                _t.error(stdgo.Go.toInterface(("expected flush error, got nil" : stdgo.GoString)));
            };
        };
        {
            var __tmp__ = _wr.readFrom(stdgo.Go.asInterface(stdgo._internal.strings.Strings.newReader(("test2" : stdgo.GoString)))), __17:stdgo.GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err == null) {
                _t.fatal(stdgo.Go.toInterface(("expected error, got nil" : stdgo.GoString)));
            };
        };
        {
            var _buffered:stdgo.GoInt = _wr.buffered();
            if (_buffered != (_wantBuffered)) {
                _t.fatalf(("Buffered = %v; want %v" : stdgo.GoString), stdgo.Go.toInterface(_buffered), stdgo.Go.toInterface(_wantBuffered));
            };
        };
    }
function benchmarkReaderCopyOptimal(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        var _srcBuf = stdgo._internal.bytes.Bytes.newBuffer((new stdgo.Slice<stdgo.GoUInt8>((8192 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>));
        var _src = newReader(stdgo.Go.asInterface(_srcBuf));
        var _dstBuf = (stdgo.Go.setRef(({} : stdgo._internal.bytes.Bytes.Buffer)) : stdgo.Ref<stdgo._internal.bytes.Bytes.Buffer>);
        var _dst:stdgo._internal.bufio_test.Bufio_test.T_onlyWriter = (new stdgo._internal.bufio_test.Bufio_test.T_onlyWriter(stdgo.Go.asInterface(_dstBuf)) : stdgo._internal.bufio_test.Bufio_test.T_onlyWriter);
        {
            var _i:stdgo.GoInt = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                _srcBuf.reset();
                _src.reset(stdgo.Go.asInterface(_srcBuf));
                _dstBuf.reset();
                stdgo._internal.io.Io.copy(stdgo.Go.asInterface(_dst), stdgo.Go.asInterface(_src));
            });
        };
    }
function benchmarkReaderCopyUnoptimal(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        var _srcBuf = stdgo._internal.bytes.Bytes.newBuffer((new stdgo.Slice<stdgo.GoUInt8>((8192 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>));
        var _src = newReader(stdgo.Go.asInterface((new stdgo._internal.bufio_test.Bufio_test.T_onlyReader(stdgo.Go.asInterface(_srcBuf)) : stdgo._internal.bufio_test.Bufio_test.T_onlyReader)));
        var _dstBuf = (stdgo.Go.setRef(({} : stdgo._internal.bytes.Bytes.Buffer)) : stdgo.Ref<stdgo._internal.bytes.Bytes.Buffer>);
        var _dst:stdgo._internal.bufio_test.Bufio_test.T_onlyWriter = (new stdgo._internal.bufio_test.Bufio_test.T_onlyWriter(stdgo.Go.asInterface(_dstBuf)) : stdgo._internal.bufio_test.Bufio_test.T_onlyWriter);
        {
            var _i:stdgo.GoInt = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                _srcBuf.reset();
                _src.reset(stdgo.Go.asInterface((new stdgo._internal.bufio_test.Bufio_test.T_onlyReader(stdgo.Go.asInterface(_srcBuf)) : stdgo._internal.bufio_test.Bufio_test.T_onlyReader)));
                _dstBuf.reset();
                stdgo._internal.io.Io.copy(stdgo.Go.asInterface(_dst), stdgo.Go.asInterface(_src));
            });
        };
    }
function benchmarkReaderCopyNoWriteTo(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        var _srcBuf = stdgo._internal.bytes.Bytes.newBuffer((new stdgo.Slice<stdgo.GoUInt8>((8192 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>));
        var _srcReader = newReader(stdgo.Go.asInterface(_srcBuf));
        var _src:stdgo._internal.bufio_test.Bufio_test.T_onlyReader = (new stdgo._internal.bufio_test.Bufio_test.T_onlyReader(stdgo.Go.asInterface(_srcReader)) : stdgo._internal.bufio_test.Bufio_test.T_onlyReader);
        var _dstBuf = (stdgo.Go.setRef(({} : stdgo._internal.bytes.Bytes.Buffer)) : stdgo.Ref<stdgo._internal.bytes.Bytes.Buffer>);
        var _dst:stdgo._internal.bufio_test.Bufio_test.T_onlyWriter = (new stdgo._internal.bufio_test.Bufio_test.T_onlyWriter(stdgo.Go.asInterface(_dstBuf)) : stdgo._internal.bufio_test.Bufio_test.T_onlyWriter);
        {
            var _i:stdgo.GoInt = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                _srcBuf.reset();
                _srcReader.reset(stdgo.Go.asInterface(_srcBuf));
                _dstBuf.reset();
                stdgo._internal.io.Io.copy(stdgo.Go.asInterface(_dst), stdgo.Go.asInterface(_src));
            });
        };
    }
function benchmarkReaderWriteToOptimal(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        {};
        var _buf = (new stdgo.Slice<stdgo.GoUInt8>((16384 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        var _r = stdgo._internal.bytes.Bytes.newReader(_buf);
        var _srcReader = newReaderSize(stdgo.Go.asInterface((new stdgo._internal.bufio_test.Bufio_test.T_onlyReader(stdgo.Go.asInterface(_r)) : stdgo._internal.bufio_test.Bufio_test.T_onlyReader)), (1024 : stdgo.GoInt));
        {
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(stdgo._internal.io.Io.discard) : stdgo._internal.io.Io.ReaderFrom)) : stdgo._internal.io.Io.ReaderFrom), _1 : true };
            } catch(_) {
                { _0 : (null : stdgo._internal.io.Io.ReaderFrom), _1 : false };
            }, __0 = __tmp__._0, _ok = __tmp__._1;
            if (!_ok) {
                _b.fatal(stdgo.Go.toInterface(("io.Discard doesn\'t support ReaderFrom" : stdgo.GoString)));
            };
        };
        {
            var _i:stdgo.GoInt = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                _r.seek((0i64 : stdgo.GoInt64), (0 : stdgo.GoInt));
                _srcReader.reset(stdgo.Go.asInterface((new stdgo._internal.bufio_test.Bufio_test.T_onlyReader(stdgo.Go.asInterface(_r)) : stdgo._internal.bufio_test.Bufio_test.T_onlyReader)));
                var __tmp__ = _srcReader.writeTo(stdgo._internal.io.Io.discard), _n:stdgo.GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    _b.fatal(stdgo.Go.toInterface(_err));
                };
                if (_n != ((16384i64 : stdgo.GoInt64))) {
                    _b.fatalf(("n = %d; want %d" : stdgo.GoString), stdgo.Go.toInterface(_n), stdgo.Go.toInterface((16384 : stdgo.GoInt)));
                };
            });
        };
    }
function benchmarkReaderReadString(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        var _r = stdgo._internal.strings.Strings.newReader(("       foo       foo        42        42        42        42        42        42        42        42       4.2       4.2       4.2       4.2\n" : stdgo.GoString));
        var _buf = newReader(stdgo.Go.asInterface(_r));
        _b.reportAllocs();
        {
            var _i:stdgo.GoInt = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                _r.seek((0i64 : stdgo.GoInt64), (0 : stdgo.GoInt));
                _buf.reset(stdgo.Go.asInterface(_r));
                var __tmp__ = _buf.readString((10 : stdgo.GoUInt8)), __16:stdgo.GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    _b.fatal(stdgo.Go.toInterface(_err));
                };
            });
        };
    }
function benchmarkWriterCopyOptimal(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        var _srcBuf = stdgo._internal.bytes.Bytes.newBuffer((new stdgo.Slice<stdgo.GoUInt8>((8192 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>));
        var _src:stdgo._internal.bufio_test.Bufio_test.T_onlyReader = (new stdgo._internal.bufio_test.Bufio_test.T_onlyReader(stdgo.Go.asInterface(_srcBuf)) : stdgo._internal.bufio_test.Bufio_test.T_onlyReader);
        var _dstBuf = (stdgo.Go.setRef(({} : stdgo._internal.bytes.Bytes.Buffer)) : stdgo.Ref<stdgo._internal.bytes.Bytes.Buffer>);
        var _dst = newWriter(stdgo.Go.asInterface(_dstBuf));
        {
            var _i:stdgo.GoInt = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                _srcBuf.reset();
                _dstBuf.reset();
                _dst.reset(stdgo.Go.asInterface(_dstBuf));
                stdgo._internal.io.Io.copy(stdgo.Go.asInterface(_dst), stdgo.Go.asInterface(_src));
            });
        };
    }
function benchmarkWriterCopyUnoptimal(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        var _srcBuf = stdgo._internal.bytes.Bytes.newBuffer((new stdgo.Slice<stdgo.GoUInt8>((8192 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>));
        var _src:stdgo._internal.bufio_test.Bufio_test.T_onlyReader = (new stdgo._internal.bufio_test.Bufio_test.T_onlyReader(stdgo.Go.asInterface(_srcBuf)) : stdgo._internal.bufio_test.Bufio_test.T_onlyReader);
        var _dstBuf = (stdgo.Go.setRef(({} : stdgo._internal.bytes.Bytes.Buffer)) : stdgo.Ref<stdgo._internal.bytes.Bytes.Buffer>);
        var _dst = newWriter(stdgo.Go.asInterface((new stdgo._internal.bufio_test.Bufio_test.T_onlyWriter(stdgo.Go.asInterface(_dstBuf)) : stdgo._internal.bufio_test.Bufio_test.T_onlyWriter)));
        {
            var _i:stdgo.GoInt = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                _srcBuf.reset();
                _dstBuf.reset();
                _dst.reset(stdgo.Go.asInterface((new stdgo._internal.bufio_test.Bufio_test.T_onlyWriter(stdgo.Go.asInterface(_dstBuf)) : stdgo._internal.bufio_test.Bufio_test.T_onlyWriter)));
                stdgo._internal.io.Io.copy(stdgo.Go.asInterface(_dst), stdgo.Go.asInterface(_src));
            });
        };
    }
function benchmarkWriterCopyNoReadFrom(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        var _srcBuf = stdgo._internal.bytes.Bytes.newBuffer((new stdgo.Slice<stdgo.GoUInt8>((8192 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>));
        var _src:stdgo._internal.bufio_test.Bufio_test.T_onlyReader = (new stdgo._internal.bufio_test.Bufio_test.T_onlyReader(stdgo.Go.asInterface(_srcBuf)) : stdgo._internal.bufio_test.Bufio_test.T_onlyReader);
        var _dstBuf = (stdgo.Go.setRef(({} : stdgo._internal.bytes.Bytes.Buffer)) : stdgo.Ref<stdgo._internal.bytes.Bytes.Buffer>);
        var _dstWriter = newWriter(stdgo.Go.asInterface(_dstBuf));
        var _dst:stdgo._internal.bufio_test.Bufio_test.T_onlyWriter = (new stdgo._internal.bufio_test.Bufio_test.T_onlyWriter(stdgo.Go.asInterface(_dstWriter)) : stdgo._internal.bufio_test.Bufio_test.T_onlyWriter);
        {
            var _i:stdgo.GoInt = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                _srcBuf.reset();
                _dstBuf.reset();
                _dstWriter.reset(stdgo.Go.asInterface(_dstBuf));
                stdgo._internal.io.Io.copy(stdgo.Go.asInterface(_dst), stdgo.Go.asInterface(_src));
            });
        };
    }
function benchmarkReaderEmpty(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        _b.reportAllocs();
        var _str:stdgo.GoString = stdgo._internal.strings.Strings.repeat(("x" : stdgo.GoString), (16384 : stdgo.GoInt))?.__copy__();
        {
            var _i:stdgo.GoInt = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                var _br = newReader(stdgo.Go.asInterface(stdgo._internal.strings.Strings.newReader(_str?.__copy__())));
                var __tmp__ = stdgo._internal.io.Io.copy(stdgo._internal.io.Io.discard, stdgo.Go.asInterface(_br)), _n:stdgo.GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    _b.fatal(stdgo.Go.toInterface(_err));
                };
                if (_n != ((_str.length : stdgo.GoInt64))) {
                    _b.fatal(stdgo.Go.toInterface(("wrong length" : stdgo.GoString)));
                };
            });
        };
    }
function benchmarkWriterEmpty(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        _b.reportAllocs();
        var _str:stdgo.GoString = stdgo._internal.strings.Strings.repeat(("x" : stdgo.GoString), (1024 : stdgo.GoInt))?.__copy__();
        var _bs = (_str : stdgo.Slice<stdgo.GoByte>);
        {
            var _i:stdgo.GoInt = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                var _bw = newWriter(stdgo._internal.io.Io.discard);
                _bw.flush();
                _bw.writeByte((97 : stdgo.GoUInt8));
                _bw.flush();
                _bw.writeRune((66 : stdgo.GoInt32));
                _bw.flush();
                _bw.write(_bs);
                _bw.flush();
                _bw.writeString(_str?.__copy__());
                _bw.flush();
            });
        };
    }
function benchmarkWriterFlush(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        _b.reportAllocs();
        var _bw = newWriter(stdgo._internal.io.Io.discard);
        var _str:stdgo.GoString = stdgo._internal.strings.Strings.repeat(("x" : stdgo.GoString), (50 : stdgo.GoInt))?.__copy__();
        {
            var _i:stdgo.GoInt = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                _bw.writeString(_str?.__copy__());
                _bw.flush();
            });
        };
    }
function exampleWriter():Void {
        var _w = stdgo._internal.bufio.Bufio.newWriter(stdgo.Go.asInterface(stdgo._internal.os.Os.stdout));
        stdgo._internal.fmt.Fmt.fprint(stdgo.Go.asInterface(_w), stdgo.Go.toInterface(("Hello, " : stdgo.GoString)));
        stdgo._internal.fmt.Fmt.fprint(stdgo.Go.asInterface(_w), stdgo.Go.toInterface(("world!" : stdgo.GoString)));
        _w.flush();
    }
function exampleWriter_AvailableBuffer():Void {
        var _w = stdgo._internal.bufio.Bufio.newWriter(stdgo.Go.asInterface(stdgo._internal.os.Os.stdout));
        for (__0 => _i in (new stdgo.Slice<stdgo.GoInt64>(4, 4, ...[(1i64 : stdgo.GoInt64), (2i64 : stdgo.GoInt64), (3i64 : stdgo.GoInt64), (4i64 : stdgo.GoInt64)]).__setNumber64__() : stdgo.Slice<stdgo.GoInt64>)) {
            var _b = _w.availableBuffer();
            _b = stdgo._internal.strconv.Strconv.appendInt(_b, _i, (10 : stdgo.GoInt));
            _b = (_b.__append__((32 : stdgo.GoUInt8)));
            _w.write(_b);
        };
        _w.flush();
    }
function exampleScanner_lines():Void {
        var _scanner = stdgo._internal.bufio.Bufio.newScanner(stdgo.Go.asInterface(stdgo._internal.os.Os.stdin));
        while (_scanner.scan()) {
            stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(_scanner.text()));
        };
        {
            var _err:stdgo.Error = _scanner.err();
            if (_err != null) {
                stdgo._internal.fmt.Fmt.fprintln(stdgo.Go.asInterface(stdgo._internal.os.Os.stderr), stdgo.Go.toInterface(("reading standard input:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
            };
        };
    }
function exampleScanner_Bytes():Void {
        var _scanner = stdgo._internal.bufio.Bufio.newScanner(stdgo.Go.asInterface(stdgo._internal.strings.Strings.newReader(("gopher" : stdgo.GoString))));
        while (_scanner.scan()) {
            stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface((_scanner.bytes().length) == ((6 : stdgo.GoInt))));
        };
        {
            var _err:stdgo.Error = _scanner.err();
            if (_err != null) {
                stdgo._internal.fmt.Fmt.fprintln(stdgo.Go.asInterface(stdgo._internal.os.Os.stderr), stdgo.Go.toInterface(("shouldn\'t see an error scanning a string" : stdgo.GoString)));
            };
        };
    }
function exampleScanner_words():Void {
        {};
        var _scanner = stdgo._internal.bufio.Bufio.newScanner(stdgo.Go.asInterface(stdgo._internal.strings.Strings.newReader(("Now is the winter of our discontent,\nMade glorious summer by this sun of York.\n" : stdgo.GoString))));
        _scanner.split(stdgo._internal.bufio.Bufio.scanWords);
        var _count:stdgo.GoInt = (0 : stdgo.GoInt);
        while (_scanner.scan()) {
            _count++;
        };
        {
            var _err:stdgo.Error = _scanner.err();
            if (_err != null) {
                stdgo._internal.fmt.Fmt.fprintln(stdgo.Go.asInterface(stdgo._internal.os.Os.stderr), stdgo.Go.toInterface(("reading input:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
            };
        };
        stdgo._internal.fmt.Fmt.printf(("%d\n" : stdgo.GoString), stdgo.Go.toInterface(_count));
    }
function exampleScanner_custom():Void {
        {};
        var _scanner = stdgo._internal.bufio.Bufio.newScanner(stdgo.Go.asInterface(stdgo._internal.strings.Strings.newReader(("1234 5678 1234567901234567890" : stdgo.GoString))));
        var _split = function(_data:stdgo.Slice<stdgo.GoByte>, _atEOF:Bool):{ var _0 : stdgo.GoInt; var _1 : stdgo.Slice<stdgo.GoByte>; var _2 : stdgo.Error; } {
            var _advance:stdgo.GoInt = (0 : stdgo.GoInt), _token:stdgo.Slice<stdgo.GoByte> = (null : stdgo.Slice<stdgo.GoUInt8>), _err:stdgo.Error = (null : stdgo.Error);
            {
                var __tmp__ = stdgo._internal.bufio.Bufio.scanWords(_data, _atEOF);
                _advance = __tmp__._0;
                _token = __tmp__._1;
                _err = __tmp__._2;
            };
            if (((_err == null) && (_token != null) : Bool)) {
                {
                    var __tmp__ = stdgo._internal.strconv.Strconv.parseInt((_token : stdgo.GoString)?.__copy__(), (10 : stdgo.GoInt), (32 : stdgo.GoInt));
                    _err = __tmp__._1;
                };
            };
            return { _0 : _advance, _1 : _token, _2 : _err };
        };
        _scanner.split(_split);
        while (_scanner.scan()) {
            stdgo._internal.fmt.Fmt.printf(("%s\n" : stdgo.GoString), stdgo.Go.toInterface(_scanner.text()));
        };
        {
            var _err:stdgo.Error = _scanner.err();
            if (_err != null) {
                stdgo._internal.fmt.Fmt.printf(("Invalid input: %s" : stdgo.GoString), stdgo.Go.toInterface(_err));
            };
        };
    }
function exampleScanner_emptyFinalToken():Void {
        {};
        var _scanner = stdgo._internal.bufio.Bufio.newScanner(stdgo.Go.asInterface(stdgo._internal.strings.Strings.newReader(("1,2,3,4," : stdgo.GoString))));
        var _onComma = function(_data:stdgo.Slice<stdgo.GoByte>, _atEOF:Bool):{ var _0 : stdgo.GoInt; var _1 : stdgo.Slice<stdgo.GoByte>; var _2 : stdgo.Error; } {
            var _advance:stdgo.GoInt = (0 : stdgo.GoInt), _token:stdgo.Slice<stdgo.GoByte> = (null : stdgo.Slice<stdgo.GoUInt8>), _err:stdgo.Error = (null : stdgo.Error);
            {
                var _i:stdgo.GoInt = (0 : stdgo.GoInt);
                stdgo.Go.cfor((_i < (_data.length) : Bool), _i++, {
                    if (_data[(_i : stdgo.GoInt)] == ((44 : stdgo.GoUInt8))) {
                        return { _0 : (_i + (1 : stdgo.GoInt) : stdgo.GoInt), _1 : (_data.__slice__(0, _i) : stdgo.Slice<stdgo.GoUInt8>), _2 : (null : stdgo.Error) };
                    };
                });
            };
            if (!_atEOF) {
                return { _0 : (0 : stdgo.GoInt), _1 : (null : stdgo.Slice<stdgo.GoUInt8>), _2 : (null : stdgo.Error) };
            };
            return { _0 : (0 : stdgo.GoInt), _1 : _data, _2 : stdgo._internal.bufio.Bufio.errFinalToken };
        };
        _scanner.split(_onComma);
        while (_scanner.scan()) {
            stdgo._internal.fmt.Fmt.printf(("%q " : stdgo.GoString), stdgo.Go.toInterface(_scanner.text()));
        };
        {
            var _err:stdgo.Error = _scanner.err();
            if (_err != null) {
                stdgo._internal.fmt.Fmt.fprintln(stdgo.Go.asInterface(stdgo._internal.os.Os.stderr), stdgo.Go.toInterface(("reading input:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
            };
        };
    }
function testSpace(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        {
            var _r:stdgo.GoInt32 = ((0 : stdgo.GoInt32) : stdgo.GoRune);
            stdgo.Go.cfor((_r <= (1114111 : stdgo.GoInt32) : Bool), _r++, {
                if (isSpace(_r) != (stdgo._internal.unicode.Unicode.isSpace(_r))) {
                    _t.fatalf(("white space property disagrees: %#U should be %t" : stdgo.GoString), stdgo.Go.toInterface(_r), stdgo.Go.toInterface(stdgo._internal.unicode.Unicode.isSpace(_r)));
                };
            });
        };
    }
function testScanByte(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        for (_n => _test in _scanTests) {
            var _buf = stdgo._internal.strings.Strings.newReader(_test?.__copy__());
            var _s = newScanner(stdgo.Go.asInterface(_buf));
            _s.split(scanBytes);
            var _i:stdgo.GoInt = (0 : stdgo.GoInt);
            {
                _i = (0 : stdgo.GoInt);
                stdgo.Go.cfor(_s.scan(), _i++, {
                    {
                        var _b = _s.bytes();
                        if (((_b.length != (1 : stdgo.GoInt)) || (_b[(0 : stdgo.GoInt)] != _test[(_i : stdgo.GoInt)]) : Bool)) {
                            _t.errorf(("#%d: %d: expected %q got %q" : stdgo.GoString), stdgo.Go.toInterface(_n), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_test), stdgo.Go.toInterface(_b));
                        };
                    };
                });
            };
            if (_i != ((_test.length))) {
                _t.errorf(("#%d: termination expected at %d; got %d" : stdgo.GoString), stdgo.Go.toInterface(_n), stdgo.Go.toInterface((_test.length)), stdgo.Go.toInterface(_i));
            };
            var _err:stdgo.Error = _s.err();
            if (_err != null) {
                _t.errorf(("#%d: %v" : stdgo.GoString), stdgo.Go.toInterface(_n), stdgo.Go.toInterface(_err));
            };
        };
    }
function testScanRune(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        for (_n => _test in _scanTests) {
            var _buf = stdgo._internal.strings.Strings.newReader(_test?.__copy__());
            var _s = newScanner(stdgo.Go.asInterface(_buf));
            _s.split(scanRunes);
            var __0:stdgo.GoInt = (0 : stdgo.GoInt), __1:stdgo.GoInt = (0 : stdgo.GoInt), _runeCount:stdgo.GoInt = __1, _i:stdgo.GoInt = __0;
            var _expect:stdgo.GoRune = (0 : stdgo.GoInt32);
            for (__key__ => __value__ in (_test : stdgo.GoString)) {
                _expect = __value__;
                _i = __key__;
                if (!_s.scan()) {
                    break;
                };
                _runeCount++;
                var __tmp__ = stdgo._internal.unicode.utf8.Utf8.decodeRune(_s.bytes()), _got:stdgo.GoInt32 = __tmp__._0, __0:stdgo.GoInt = __tmp__._1;
                if (_got != (_expect)) {
                    _t.errorf(("#%d: %d: expected %q got %q" : stdgo.GoString), stdgo.Go.toInterface(_n), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_expect), stdgo.Go.toInterface(_got));
                };
            };
            if (_s.scan()) {
                _t.errorf(("#%d: scan ran too long, got %q" : stdgo.GoString), stdgo.Go.toInterface(_n), stdgo.Go.toInterface(_s.text()));
            };
            var _testRuneCount:stdgo.GoInt = stdgo._internal.unicode.utf8.Utf8.runeCountInString(_test?.__copy__());
            if (_runeCount != (_testRuneCount)) {
                _t.errorf(("#%d: termination expected at %d; got %d" : stdgo.GoString), stdgo.Go.toInterface(_n), stdgo.Go.toInterface(_testRuneCount), stdgo.Go.toInterface(_runeCount));
            };
            var _err:stdgo.Error = _s.err();
            if (_err != null) {
                _t.errorf(("#%d: %v" : stdgo.GoString), stdgo.Go.toInterface(_n), stdgo.Go.toInterface(_err));
            };
        };
    }
function testScanWords(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        for (_n => _test in _wordScanTests) {
            var _buf = stdgo._internal.strings.Strings.newReader(_test?.__copy__());
            var _s = newScanner(stdgo.Go.asInterface(_buf));
            _s.split(scanWords);
            var _words = stdgo._internal.strings.Strings.fields(_test?.__copy__());
            var _wordCount:stdgo.GoInt = (0 : stdgo.GoInt);
            {
                _wordCount = (0 : stdgo.GoInt);
                stdgo.Go.cfor((_wordCount < (_words.length) : Bool), _wordCount++, {
                    if (!_s.scan()) {
                        break;
                    };
                    var _got:stdgo.GoString = _s.text()?.__copy__();
                    if (_got != (_words[(_wordCount : stdgo.GoInt)])) {
                        _t.errorf(("#%d: %d: expected %q got %q" : stdgo.GoString), stdgo.Go.toInterface(_n), stdgo.Go.toInterface(_wordCount), stdgo.Go.toInterface(_words[(_wordCount : stdgo.GoInt)]), stdgo.Go.toInterface(_got));
                    };
                });
            };
            if (_s.scan()) {
                _t.errorf(("#%d: scan ran too long, got %q" : stdgo.GoString), stdgo.Go.toInterface(_n), stdgo.Go.toInterface(_s.text()));
            };
            if (_wordCount != ((_words.length))) {
                _t.errorf(("#%d: termination expected at %d; got %d" : stdgo.GoString), stdgo.Go.toInterface(_n), stdgo.Go.toInterface((_words.length)), stdgo.Go.toInterface(_wordCount));
            };
            var _err:stdgo.Error = _s.err();
            if (_err != null) {
                _t.errorf(("#%d: %v" : stdgo.GoString), stdgo.Go.toInterface(_n), stdgo.Go.toInterface(_err));
            };
        };
    }
function _genLine(_buf:stdgo.Ref<stdgo._internal.bytes.Bytes.Buffer>, _lineNum:stdgo.GoInt, _n:stdgo.GoInt, _addNewline:Bool):Void {
        _buf.reset();
        var _doCR:Bool = (_lineNum % (5 : stdgo.GoInt) : stdgo.GoInt) == ((0 : stdgo.GoInt));
        if (_doCR) {
            _n--;
        };
        {
            var _i:stdgo.GoInt = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (_n - (1 : stdgo.GoInt) : stdgo.GoInt) : Bool), _i++, {
                var _c:stdgo.GoUInt8 = ((97 : stdgo.GoUInt8) + ((_lineNum + _i : stdgo.GoInt) : stdgo.GoByte) : stdgo.GoUInt8);
                if (((_c == (10 : stdgo.GoUInt8)) || (_c == (13 : stdgo.GoUInt8)) : Bool)) {
                    _c = (78 : stdgo.GoUInt8);
                };
                _buf.writeByte(_c);
            });
        };
        if (_addNewline) {
            if (_doCR) {
                _buf.writeByte((13 : stdgo.GoUInt8));
            };
            _buf.writeByte((10 : stdgo.GoUInt8));
        };
    }
function testScanLongLines(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _tmp = (stdgo.Go.setRef(({} : stdgo._internal.bytes.Bytes.Buffer)) : stdgo.Ref<stdgo._internal.bytes.Bytes.Buffer>);
        var _buf = (stdgo.Go.setRef(({} : stdgo._internal.bytes.Bytes.Buffer)) : stdgo.Ref<stdgo._internal.bytes.Bytes.Buffer>);
        var _lineNum:stdgo.GoInt = (0 : stdgo.GoInt);
        var _j:stdgo.GoInt = (0 : stdgo.GoInt);
        {
            var _i:stdgo.GoInt = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (512 : stdgo.GoInt) : Bool), _i++, {
                _genLine(_tmp, _lineNum, _j, true);
                if ((_j < (256 : stdgo.GoInt) : Bool)) {
                    _j++;
                } else {
                    _j--;
                };
                _buf.write(_tmp.bytes());
                _lineNum++;
            });
        };
        var _s = newScanner(stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.bufio_test.Bufio_test.T_slowReader((1 : stdgo.GoInt), stdgo.Go.asInterface(_buf)) : stdgo._internal.bufio_test.Bufio_test.T_slowReader)) : stdgo.Ref<stdgo._internal.bufio_test.Bufio_test.T_slowReader>)));
        _s.split(scanLines);
        _s.maxTokenSize((256 : stdgo.GoInt));
        _j = (0 : stdgo.GoInt);
        {
            var _lineNum:stdgo.GoInt = (0 : stdgo.GoInt);
            stdgo.Go.cfor(_s.scan(), _lineNum++, {
                _genLine(_tmp, _lineNum, _j, false);
                if ((_j < (256 : stdgo.GoInt) : Bool)) {
                    _j++;
                } else {
                    _j--;
                };
                var _line:stdgo.GoString = (_tmp.string() : stdgo.GoString)?.__copy__();
                if (_s.text() != (_line)) {
                    _t.errorf(("%d: bad line: %d %d\n%.100q\n%.100q\n" : stdgo.GoString), stdgo.Go.toInterface(_lineNum), stdgo.Go.toInterface((_s.bytes().length)), stdgo.Go.toInterface((_line.length)), stdgo.Go.toInterface(_s.text()), stdgo.Go.toInterface(_line));
                };
            });
        };
        var _err:stdgo.Error = _s.err();
        if (_err != null) {
            _t.fatal(stdgo.Go.toInterface(_err));
        };
    }
function testScanLineTooLong(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        {};
        var _tmp = (stdgo.Go.setRef(({} : stdgo._internal.bytes.Bytes.Buffer)) : stdgo.Ref<stdgo._internal.bytes.Bytes.Buffer>);
        var _buf = (stdgo.Go.setRef(({} : stdgo._internal.bytes.Bytes.Buffer)) : stdgo.Ref<stdgo._internal.bytes.Bytes.Buffer>);
        var _lineNum:stdgo.GoInt = (0 : stdgo.GoInt);
        var _j:stdgo.GoInt = (0 : stdgo.GoInt);
        {
            var _i:stdgo.GoInt = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (512 : stdgo.GoInt) : Bool), _i++, {
                _genLine(_tmp, _lineNum, _j, true);
                _j++;
                _buf.write(_tmp.bytes());
                _lineNum++;
            });
        };
        var _s = newScanner(stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.bufio_test.Bufio_test.T_slowReader((3 : stdgo.GoInt), stdgo.Go.asInterface(_buf)) : stdgo._internal.bufio_test.Bufio_test.T_slowReader)) : stdgo.Ref<stdgo._internal.bufio_test.Bufio_test.T_slowReader>)));
        _s.split(scanLines);
        _s.maxTokenSize((256 : stdgo.GoInt));
        _j = (0 : stdgo.GoInt);
        {
            var _lineNum:stdgo.GoInt = (0 : stdgo.GoInt);
            stdgo.Go.cfor(_s.scan(), _lineNum++, {
                _genLine(_tmp, _lineNum, _j, false);
                if ((_j < (256 : stdgo.GoInt) : Bool)) {
                    _j++;
                } else {
                    _j--;
                };
                var _line = _tmp.bytes();
                if (!stdgo._internal.bytes.Bytes.equal(_s.bytes(), _line)) {
                    _t.errorf(("%d: bad line: %d %d\n%.100q\n%.100q\n" : stdgo.GoString), stdgo.Go.toInterface(_lineNum), stdgo.Go.toInterface((_s.bytes().length)), stdgo.Go.toInterface((_line.length)), stdgo.Go.toInterface(_s.bytes()), stdgo.Go.toInterface(_line));
                };
            });
        };
        var _err:stdgo.Error = _s.err();
        if (stdgo.Go.toInterface(_err) != (stdgo.Go.toInterface(errTooLong))) {
            _t.fatalf(("expected ErrTooLong; got %s" : stdgo.GoString), stdgo.Go.toInterface(_err));
        };
    }
function _testNoNewline(_text:stdgo.GoString, _lines:stdgo.Slice<stdgo.GoString>, _t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _buf = stdgo._internal.strings.Strings.newReader(_text?.__copy__());
        var _s = newScanner(stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.bufio_test.Bufio_test.T_slowReader((7 : stdgo.GoInt), stdgo.Go.asInterface(_buf)) : stdgo._internal.bufio_test.Bufio_test.T_slowReader)) : stdgo.Ref<stdgo._internal.bufio_test.Bufio_test.T_slowReader>)));
        _s.split(scanLines);
        {
            var _lineNum:stdgo.GoInt = (0 : stdgo.GoInt);
            stdgo.Go.cfor(_s.scan(), _lineNum++, {
                var _line:stdgo.GoString = _lines[(_lineNum : stdgo.GoInt)]?.__copy__();
                if (_s.text() != (_line)) {
                    _t.errorf(("%d: bad line: %d %d\n%.100q\n%.100q\n" : stdgo.GoString), stdgo.Go.toInterface(_lineNum), stdgo.Go.toInterface((_s.bytes().length)), stdgo.Go.toInterface((_line.length)), stdgo.Go.toInterface(_s.bytes()), stdgo.Go.toInterface(_line));
                };
            });
        };
        var _err:stdgo.Error = _s.err();
        if (_err != null) {
            _t.fatal(stdgo.Go.toInterface(_err));
        };
    }
function testScanLineNoNewline(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        {};
        var _lines = (new stdgo.Slice<stdgo.GoString>(2, 2, ...[("abcdefghijklmn" : stdgo.GoString), ("opqrstuvwxyz" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>);
        _testNoNewline(("abcdefghijklmn\nopqrstuvwxyz" : stdgo.GoString), _lines, _t);
    }
function testScanLineReturnButNoNewline(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        {};
        var _lines = (new stdgo.Slice<stdgo.GoString>(2, 2, ...[("abcdefghijklmn" : stdgo.GoString), ("opqrstuvwxyz" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>);
        _testNoNewline(("abcdefghijklmn\nopqrstuvwxyz\r" : stdgo.GoString), _lines, _t);
    }
function testScanLineEmptyFinalLine(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        {};
        var _lines = (new stdgo.Slice<stdgo.GoString>(3, 3, ...[("abcdefghijklmn" : stdgo.GoString), ("opqrstuvwxyz" : stdgo.GoString), stdgo.Go.str()?.__copy__()]).__setString__() : stdgo.Slice<stdgo.GoString>);
        _testNoNewline(("abcdefghijklmn\nopqrstuvwxyz\n\n" : stdgo.GoString), _lines, _t);
    }
function testScanLineEmptyFinalLineWithCR(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        {};
        var _lines = (new stdgo.Slice<stdgo.GoString>(3, 3, ...[("abcdefghijklmn" : stdgo.GoString), ("opqrstuvwxyz" : stdgo.GoString), stdgo.Go.str()?.__copy__()]).__setString__() : stdgo.Slice<stdgo.GoString>);
        _testNoNewline(("abcdefghijklmn\nopqrstuvwxyz\n\r" : stdgo.GoString), _lines, _t);
    }
function testSplitError(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _numSplits:stdgo.GoInt = (0 : stdgo.GoInt);
        {};
        var _errorSplit = function(_data:stdgo.Slice<stdgo.GoByte>, _atEOF:Bool):{ var _0 : stdgo.GoInt; var _1 : stdgo.Slice<stdgo.GoByte>; var _2 : stdgo.Error; } {
            var _advance:stdgo.GoInt = (0 : stdgo.GoInt), _token:stdgo.Slice<stdgo.GoByte> = (null : stdgo.Slice<stdgo.GoUInt8>), _err:stdgo.Error = (null : stdgo.Error);
            if (_atEOF) {
                throw stdgo.Go.toInterface(("didn\'t get enough data" : stdgo.GoString));
            };
            if ((_numSplits >= (7 : stdgo.GoInt) : Bool)) {
                return { _0 : (0 : stdgo.GoInt), _1 : (null : stdgo.Slice<stdgo.GoUInt8>), _2 : _testError };
            };
            _numSplits++;
            return { _0 : (1 : stdgo.GoInt), _1 : (_data.__slice__((0 : stdgo.GoInt), (1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), _2 : (null : stdgo.Error) };
        };
        {};
        var _buf = stdgo._internal.strings.Strings.newReader(("abcdefghijklmnopqrstuvwxyz" : stdgo.GoString));
        var _s = newScanner(stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.bufio_test.Bufio_test.T_slowReader((1 : stdgo.GoInt), stdgo.Go.asInterface(_buf)) : stdgo._internal.bufio_test.Bufio_test.T_slowReader)) : stdgo.Ref<stdgo._internal.bufio_test.Bufio_test.T_slowReader>)));
        _s.split(_errorSplit);
        var _i:stdgo.GoInt = (0 : stdgo.GoInt);
        {
            _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor(_s.scan(), _i++, {
                if (((_s.bytes().length != (1 : stdgo.GoInt)) || (("abcdefghijklmnopqrstuvwxyz" : stdgo.GoString)[(_i : stdgo.GoInt)] != _s.bytes()[(0 : stdgo.GoInt)]) : Bool)) {
                    _t.errorf(("#%d: expected %q got %q" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(("abcdefghijklmnopqrstuvwxyz" : stdgo.GoString)[(_i : stdgo.GoInt)]), stdgo.Go.toInterface(_s.bytes()[(0 : stdgo.GoInt)]));
                };
            });
        };
        if (_i != ((7 : stdgo.GoInt))) {
            _t.errorf(("unexpected termination; expected %d tokens got %d" : stdgo.GoString), stdgo.Go.toInterface((7 : stdgo.GoInt)), stdgo.Go.toInterface(_i));
        };
        var _err:stdgo.Error = _s.err();
        if (stdgo.Go.toInterface(_err) != (stdgo.Go.toInterface(_testError))) {
            _t.fatalf(("expected %q got %v" : stdgo.GoString), stdgo.Go.toInterface(_testError), stdgo.Go.toInterface(_err));
        };
    }
function testErrAtEOF(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _s = newScanner(stdgo.Go.asInterface(stdgo._internal.strings.Strings.newReader(("1 2 33" : stdgo.GoString))));
        var _split = function(_data:stdgo.Slice<stdgo.GoByte>, _atEOF:Bool):{ var _0 : stdgo.GoInt; var _1 : stdgo.Slice<stdgo.GoByte>; var _2 : stdgo.Error; } {
            var _advance:stdgo.GoInt = (0 : stdgo.GoInt), _token:stdgo.Slice<stdgo.GoByte> = (null : stdgo.Slice<stdgo.GoUInt8>), _err:stdgo.Error = (null : stdgo.Error);
            {
                var __tmp__ = scanWords(_data, _atEOF);
                _advance = __tmp__._0;
                _token = __tmp__._1;
                _err = __tmp__._2;
            };
            if (((_token.length) > (1 : stdgo.GoInt) : Bool)) {
                if (stdgo.Go.toInterface(_s.errOrEOF()) != (stdgo.Go.toInterface(stdgo._internal.io.Io.eof))) {
                    _t.fatal(stdgo.Go.toInterface(("not testing EOF" : stdgo.GoString)));
                };
                _err = _testError;
            };
            return { _0 : _advance, _1 : _token, _2 : _err };
        };
        _s.split(_split);
        while (_s.scan()) {};
        if (stdgo.Go.toInterface(_s.err()) != (stdgo.Go.toInterface(_testError))) {
            _t.fatal(stdgo.Go.toInterface(("wrong error:" : stdgo.GoString)), stdgo.Go.toInterface(_s.err()));
        };
    }
function testNonEOFWithEmptyRead(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _scanner = newScanner(stdgo.Go.asInterface((new stdgo._internal.bufio_test.Bufio_test.T_alwaysError() : stdgo._internal.bufio_test.Bufio_test.T_alwaysError)));
        while (_scanner.scan()) {
            _t.fatal(stdgo.Go.toInterface(("read should fail" : stdgo.GoString)));
        };
        var _err:stdgo.Error = _scanner.err();
        if (stdgo.Go.toInterface(_err) != (stdgo.Go.toInterface(stdgo._internal.io.Io.errUnexpectedEOF))) {
            _t.errorf(("unexpected error: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
        };
    }
function testBadReader(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _scanner = newScanner(stdgo.Go.asInterface((new stdgo._internal.bufio_test.Bufio_test.T_endlessZeros() : stdgo._internal.bufio_test.Bufio_test.T_endlessZeros)));
        while (_scanner.scan()) {
            _t.fatal(stdgo.Go.toInterface(("read should fail" : stdgo.GoString)));
        };
        var _err:stdgo.Error = _scanner.err();
        if (stdgo.Go.toInterface(_err) != (stdgo.Go.toInterface(stdgo._internal.io.Io.errNoProgress))) {
            _t.errorf(("unexpected error: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
        };
    }
function testScanWordsExcessiveWhiteSpace(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        {};
        var _s:stdgo.GoString = (stdgo._internal.strings.Strings.repeat((" " : stdgo.GoString), (1024 : stdgo.GoInt)) + ("ipsum" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__();
        var _scanner = newScanner(stdgo.Go.asInterface(stdgo._internal.strings.Strings.newReader(_s?.__copy__())));
        _scanner.maxTokenSize((256 : stdgo.GoInt));
        _scanner.split(scanWords);
        if (!_scanner.scan()) {
            _t.fatalf(("scan failed: %v" : stdgo.GoString), stdgo.Go.toInterface(_scanner.err()));
        };
        {
            var _token:stdgo.GoString = _scanner.text()?.__copy__();
            if (_token != (("ipsum" : stdgo.GoString))) {
                _t.fatalf(("unexpected token: %v" : stdgo.GoString), stdgo.Go.toInterface(_token));
            };
        };
    }
function _commaSplit(_data:stdgo.Slice<stdgo.GoByte>, _atEOF:Bool):{ var _0 : stdgo.GoInt; var _1 : stdgo.Slice<stdgo.GoByte>; var _2 : stdgo.Error; } {
        var _advance:stdgo.GoInt = (0 : stdgo.GoInt), _token:stdgo.Slice<stdgo.GoByte> = (null : stdgo.Slice<stdgo.GoUInt8>), _err:stdgo.Error = (null : stdgo.Error);
        {
            var _i:stdgo.GoInt = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (_data.length) : Bool), _i++, {
                if (_data[(_i : stdgo.GoInt)] == ((44 : stdgo.GoUInt8))) {
                    return { _0 : (_i + (1 : stdgo.GoInt) : stdgo.GoInt), _1 : (_data.__slice__(0, _i) : stdgo.Slice<stdgo.GoUInt8>), _2 : (null : stdgo.Error) };
                };
            });
        };
        return { _0 : (0 : stdgo.GoInt), _1 : _data, _2 : errFinalToken };
    }
function _testEmptyTokens(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>, _text:stdgo.GoString, _values:stdgo.Slice<stdgo.GoString>):Void {
        var _s = newScanner(stdgo.Go.asInterface(stdgo._internal.strings.Strings.newReader(_text?.__copy__())));
        _s.split(_commaSplit);
        var _i:stdgo.GoInt = (0 : stdgo.GoInt);
        {
            _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor(_s.scan(), _i++, {
                if ((_i >= (_values.length) : Bool)) {
                    _t.fatalf(("got %d fields, expected %d" : stdgo.GoString), stdgo.Go.toInterface((_i + (1 : stdgo.GoInt) : stdgo.GoInt)), stdgo.Go.toInterface((_values.length)));
                };
                if (_s.text() != (_values[(_i : stdgo.GoInt)])) {
                    _t.errorf(("%d: expected %q got %q" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_values[(_i : stdgo.GoInt)]), stdgo.Go.toInterface(_s.text()));
                };
            });
        };
        if (_i != ((_values.length))) {
            _t.fatalf(("got %d fields, expected %d" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface((_values.length)));
        };
        {
            var _err:stdgo.Error = _s.err();
            if (_err != null) {
                _t.fatal(stdgo.Go.toInterface(_err));
            };
        };
    }
function testEmptyTokens(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        _testEmptyTokens(_t, ("1,2,3," : stdgo.GoString), (new stdgo.Slice<stdgo.GoString>(4, 4, ...[("1" : stdgo.GoString), ("2" : stdgo.GoString), ("3" : stdgo.GoString), stdgo.Go.str()?.__copy__()]).__setString__() : stdgo.Slice<stdgo.GoString>));
    }
function testWithNoEmptyTokens(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        _testEmptyTokens(_t, ("1,2,3" : stdgo.GoString), (new stdgo.Slice<stdgo.GoString>(3, 3, ...[("1" : stdgo.GoString), ("2" : stdgo.GoString), ("3" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>));
    }
function _loopAtEOFSplit(_data:stdgo.Slice<stdgo.GoByte>, _atEOF:Bool):{ var _0 : stdgo.GoInt; var _1 : stdgo.Slice<stdgo.GoByte>; var _2 : stdgo.Error; } {
        var _advance:stdgo.GoInt = (0 : stdgo.GoInt), _token:stdgo.Slice<stdgo.GoByte> = (null : stdgo.Slice<stdgo.GoUInt8>), _err:stdgo.Error = (null : stdgo.Error);
        if (((_data.length) > (0 : stdgo.GoInt) : Bool)) {
            return { _0 : (1 : stdgo.GoInt), _1 : (_data.__slice__(0, (1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), _2 : (null : stdgo.Error) };
        };
        return { _0 : (0 : stdgo.GoInt), _1 : _data, _2 : (null : stdgo.Error) };
    }
function testDontLoopForever(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            var _s = newScanner(stdgo.Go.asInterface(stdgo._internal.strings.Strings.newReader(("abc" : stdgo.GoString))));
            _s.split(_loopAtEOFSplit);
            __deferstack__.unshift(() -> {
                var a = function():Void {
                    var _err:stdgo.AnyInterface = ({
                        final r = stdgo.Go.recover_exception;
                        stdgo.Go.recover_exception = null;
                        r;
                    });
                    if (_err == null) {
                        _t.fatal(stdgo.Go.toInterface(("should have panicked" : stdgo.GoString)));
                    };
                    {
                        var __tmp__ = try {
                            { _0 : (stdgo.Go.typeAssert((_err : stdgo.GoString)) : stdgo.GoString), _1 : true };
                        } catch(_) {
                            { _0 : ("" : stdgo.GoString), _1 : false };
                        }, _msg = __tmp__._0, _ok = __tmp__._1;
                        if ((!_ok || !stdgo._internal.strings.Strings.contains(_msg?.__copy__(), ("empty tokens" : stdgo.GoString)) : Bool)) {
                            throw stdgo.Go.toInterface(_err);
                        };
                    };
                };
                a();
            });
            {
                var _count:stdgo.GoInt = (0 : stdgo.GoInt);
                stdgo.Go.cfor(_s.scan(), _count++, {
                    if ((_count > (1000 : stdgo.GoInt) : Bool)) {
                        _t.fatal(stdgo.Go.toInterface(("looping" : stdgo.GoString)));
                    };
                });
            };
            if (_s.err() != null) {
                _t.fatal(stdgo.Go.toInterface(("after scan:" : stdgo.GoString)), stdgo.Go.toInterface(_s.err()));
            };
            {
                for (defer in __deferstack__) {
                    defer();
                };
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                return;
            };
        } catch(__exception__) {
            var exe:Dynamic = __exception__.native;
            if ((exe is haxe.ValueException)) exe = exe.value;
            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                exe = stdgo.Go.toInterface(__exception__.message);
            };
            stdgo.Go.recover_exception = exe;
            for (defer in __deferstack__) {
                defer();
            };
            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
            return;
        };
    }
function testBlankLines(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _s = newScanner(stdgo.Go.asInterface(stdgo._internal.strings.Strings.newReader(stdgo._internal.strings.Strings.repeat(("\n" : stdgo.GoString), (1000 : stdgo.GoInt))?.__copy__())));
        {
            var _count:stdgo.GoInt = (0 : stdgo.GoInt);
            stdgo.Go.cfor(_s.scan(), _count++, {
                if ((_count > (2000 : stdgo.GoInt) : Bool)) {
                    _t.fatal(stdgo.Go.toInterface(("looping" : stdgo.GoString)));
                };
            });
        };
        if (_s.err() != null) {
            _t.fatal(stdgo.Go.toInterface(("after scan:" : stdgo.GoString)), stdgo.Go.toInterface(_s.err()));
        };
    }
function testEmptyLinesOK(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _c:stdgo._internal.bufio_test.Bufio_test.T_countdown = ((10000 : stdgo._internal.bufio_test.Bufio_test.T_countdown) : T_countdown);
        var _s = newScanner(stdgo.Go.asInterface(stdgo._internal.strings.Strings.newReader(stdgo._internal.strings.Strings.repeat(("\n" : stdgo.GoString), (10000 : stdgo.GoInt))?.__copy__())));
        _s.split(_c._split);
        while (_s.scan()) {};
        if (_s.err() != null) {
            _t.fatal(stdgo.Go.toInterface(("after scan:" : stdgo.GoString)), stdgo.Go.toInterface(_s.err()));
        };
        if (_c != ((0 : stdgo._internal.bufio_test.Bufio_test.T_countdown))) {
            _t.fatalf(("stopped with %d left to process" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_c)));
        };
    }
function testHugeBuffer(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _text:stdgo.GoString = stdgo._internal.strings.Strings.repeat(("x" : stdgo.GoString), (131072 : stdgo.GoInt))?.__copy__();
        var _s = newScanner(stdgo.Go.asInterface(stdgo._internal.strings.Strings.newReader((_text + ("\n" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__())));
        _s.buffer((new stdgo.Slice<stdgo.GoUInt8>((100 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>), (196608 : stdgo.GoInt));
        while (_s.scan()) {
            var _token:stdgo.GoString = _s.text()?.__copy__();
            if (_token != (_text)) {
                _t.errorf(("scan got incorrect token of length %d" : stdgo.GoString), stdgo.Go.toInterface((_token.length)));
            };
        };
        if (_s.err() != null) {
            _t.fatal(stdgo.Go.toInterface(("after scan:" : stdgo.GoString)), stdgo.Go.toInterface(_s.err()));
        };
    }
function testNegativeEOFReader(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _r:stdgo._internal.bufio_test.Bufio_test.T_negativeEOFReader = ((10 : stdgo._internal.bufio_test.Bufio_test.T_negativeEOFReader) : T_negativeEOFReader);
        var _scanner = newScanner(stdgo.Go.asInterface(stdgo.Go.pointer(_r)));
        var _c:stdgo.GoInt = (0 : stdgo.GoInt);
        while (_scanner.scan()) {
            _c++;
            if ((_c > (1 : stdgo.GoInt) : Bool)) {
                _t.error(stdgo.Go.toInterface(("read too many lines" : stdgo.GoString)));
                break;
            };
        };
        {
            var __0:stdgo.Error = _scanner.err(), __1:stdgo.Error = errBadReadCount, _want:stdgo.Error = __1, _got:stdgo.Error = __0;
            if (stdgo.Go.toInterface(_got) != (stdgo.Go.toInterface(_want))) {
                _t.errorf(("scanner.Err: got %v, want %v" : stdgo.GoString), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_want));
            };
        };
    }
function testLargeReader(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _scanner = newScanner(stdgo.Go.asInterface((new stdgo._internal.bufio_test.Bufio_test.T_largeReader() : stdgo._internal.bufio_test.Bufio_test.T_largeReader)));
        while (_scanner.scan()) {};
        {
            var __0:stdgo.Error = _scanner.err(), __1:stdgo.Error = errBadReadCount, _want:stdgo.Error = __1, _got:stdgo.Error = __0;
            if (stdgo.Go.toInterface(_got) != (stdgo.Go.toInterface(_want))) {
                _t.errorf(("scanner.Err: got %v, want %v" : stdgo.GoString), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_want));
            };
        };
    }
class T_rot13Reader_asInterface {
    @:keep
    public dynamic function read(_p:stdgo.Slice<stdgo.GoByte>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return __self__.value.read(_p);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_rot13Reader>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.bufio_test.Bufio_test.T_rot13Reader_asInterface) class T_rot13Reader_static_extension {
    @:keep
    static public function read( _r13:stdgo.Ref<T_rot13Reader>, _p:stdgo.Slice<stdgo.GoByte>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _r13:stdgo.Ref<T_rot13Reader> = _r13;
        var __tmp__ = _r13._r.read(_p), _n:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        {
            var _i:stdgo.GoInt = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _n : Bool), _i++, {
                var _c:stdgo.GoUInt8 = (_p[(_i : stdgo.GoInt)] | (32 : stdgo.GoUInt8) : stdgo.GoUInt8);
                if ((((97 : stdgo.GoUInt8) <= _c : Bool) && (_c <= (109 : stdgo.GoUInt8) : Bool) : Bool)) {
                    _p[(_i : stdgo.GoInt)] = (_p[(_i : stdgo.GoInt)] + ((13 : stdgo.GoUInt8)) : stdgo.GoUInt8);
                } else if ((((110 : stdgo.GoUInt8) <= _c : Bool) && (_c <= (122 : stdgo.GoUInt8) : Bool) : Bool)) {
                    _p[(_i : stdgo.GoInt)] = (_p[(_i : stdgo.GoInt)] - ((13 : stdgo.GoUInt8)) : stdgo.GoUInt8);
                };
            });
        };
        return { _0 : _n, _1 : _err };
    }
}
class T_zeroReader_asInterface {
    @:keep
    public dynamic function read(_p:stdgo.Slice<stdgo.GoByte>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return __self__.value.read(_p);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_zeroReader>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.bufio_test.Bufio_test.T_zeroReader_asInterface) class T_zeroReader_static_extension {
    @:keep
    static public function read( _:T_zeroReader, _p:stdgo.Slice<stdgo.GoByte>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _:T_zeroReader = _?.__copy__();
        return { _0 : (0 : stdgo.GoInt), _1 : (null : stdgo.Error) };
    }
}
class StringReader_asInterface {
    @:keep
    public dynamic function read(_p:stdgo.Slice<stdgo.GoByte>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return __self__.value.read(_p);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<StringReader>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.bufio_test.Bufio_test.StringReader_asInterface) class StringReader_static_extension {
    @:keep
    static public function read( _r:stdgo.Ref<StringReader>, _p:stdgo.Slice<stdgo.GoByte>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _r:stdgo.Ref<StringReader> = _r;
        var _n:stdgo.GoInt = (0 : stdgo.GoInt), _err:stdgo.Error = (null : stdgo.Error);
        if ((_r._step < (_r._data.length) : Bool)) {
            var _s:stdgo.GoString = _r._data[(_r._step : stdgo.GoInt)]?.__copy__();
            _n = stdgo.Go.copySlice(_p, _s);
            _r._step++;
        } else {
            _err = stdgo._internal.io.Io.eof;
        };
        return { _0 : _n, _1 : _err };
    }
}
class T_errorWriterTest_asInterface {
    @:keep
    public dynamic function write(_p:stdgo.Slice<stdgo.GoByte>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return __self__.value.write(_p);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_errorWriterTest>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.bufio_test.Bufio_test.T_errorWriterTest_asInterface) class T_errorWriterTest_static_extension {
    @:keep
    static public function write( _w:T_errorWriterTest, _p:stdgo.Slice<stdgo.GoByte>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _w:T_errorWriterTest = _w?.__copy__();
        return { _0 : (((_p.length) * _w._n : stdgo.GoInt) / _w._m : stdgo.GoInt), _1 : _w._err };
    }
}
class T_teststringwriter_asInterface {
    @:keep
    public dynamic function _check(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>, _write:stdgo.GoString, _writeString:stdgo.GoString):Void __self__.value._check(_t, _write, _writeString);
    @:keep
    public dynamic function writeString(_s:stdgo.GoString):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return __self__.value.writeString(_s);
    @:keep
    public dynamic function write(_b:stdgo.Slice<stdgo.GoByte>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return __self__.value.write(_b);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_teststringwriter>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.bufio_test.Bufio_test.T_teststringwriter_asInterface) class T_teststringwriter_static_extension {
    @:keep
    static public function _check( _w:stdgo.Ref<T_teststringwriter>, _t:stdgo.Ref<stdgo._internal.testing.Testing.T_>, _write:stdgo.GoString, _writeString:stdgo.GoString):Void {
        @:recv var _w:stdgo.Ref<T_teststringwriter> = _w;
        _t.helper();
        if (_w._write != (_write)) {
            _t.errorf(("write: expected %q, got %q" : stdgo.GoString), stdgo.Go.toInterface(_write), stdgo.Go.toInterface(_w._write));
        };
        if (_w._writeString != (_writeString)) {
            _t.errorf(("writeString: expected %q, got %q" : stdgo.GoString), stdgo.Go.toInterface(_writeString), stdgo.Go.toInterface(_w._writeString));
        };
    }
    @:keep
    static public function writeString( _w:stdgo.Ref<T_teststringwriter>, _s:stdgo.GoString):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _w:stdgo.Ref<T_teststringwriter> = _w;
        _w._writeString = (_w._writeString + (_s)?.__copy__() : stdgo.GoString);
        return { _0 : (_s.length), _1 : (null : stdgo.Error) };
    }
    @:keep
    static public function write( _w:stdgo.Ref<T_teststringwriter>, _b:stdgo.Slice<stdgo.GoByte>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _w:stdgo.Ref<T_teststringwriter> = _w;
        _w._write = (_w._write + ((_b : stdgo.GoString))?.__copy__() : stdgo.GoString);
        return { _0 : (_b.length), _1 : (null : stdgo.Error) };
    }
}
class T_testReader_asInterface {
    @:keep
    public dynamic function read(_buf:stdgo.Slice<stdgo.GoByte>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return __self__.value.read(_buf);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_testReader>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.bufio_test.Bufio_test.T_testReader_asInterface) class T_testReader_static_extension {
    @:keep
    static public function read( _t:stdgo.Ref<T_testReader>, _buf:stdgo.Slice<stdgo.GoByte>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _t:stdgo.Ref<T_testReader> = _t;
        var _n:stdgo.GoInt = (0 : stdgo.GoInt), _err:stdgo.Error = (null : stdgo.Error);
        _n = _t._stride;
        if ((_n > (_t._data.length) : Bool)) {
            _n = (_t._data.length);
        };
        if ((_n > (_buf.length) : Bool)) {
            _n = (_buf.length);
        };
        stdgo.Go.copySlice(_buf, _t._data);
        _t._data = (_t._data.__slice__(_n) : stdgo.Slice<stdgo.GoUInt8>);
        if ((_t._data.length) == ((0 : stdgo.GoInt))) {
            _err = stdgo._internal.io.Io.eof;
        };
        return { _0 : _n, _1 : _err };
    }
}
class T_errorWriterToTest_asInterface {
    @:keep
    public dynamic function write(_p:stdgo.Slice<stdgo.GoByte>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return __self__.value.write(_p);
    @:keep
    public dynamic function read(_p:stdgo.Slice<stdgo.GoByte>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return __self__.value.read(_p);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_errorWriterToTest>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.bufio_test.Bufio_test.T_errorWriterToTest_asInterface) class T_errorWriterToTest_static_extension {
    @:keep
    static public function write( _w:T_errorWriterToTest, _p:stdgo.Slice<stdgo.GoByte>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _w:T_errorWriterToTest = _w?.__copy__();
        return { _0 : ((_p.length) * _w._wn : stdgo.GoInt), _1 : _w._werr };
    }
    @:keep
    static public function read( _r:T_errorWriterToTest, _p:stdgo.Slice<stdgo.GoByte>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _r:T_errorWriterToTest = _r?.__copy__();
        return { _0 : ((_p.length) * _r._rn : stdgo.GoInt), _1 : _r._rerr };
    }
}
class T_errorReaderFromTest_asInterface {
    @:keep
    public dynamic function write(_p:stdgo.Slice<stdgo.GoByte>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return __self__.value.write(_p);
    @:keep
    public dynamic function read(_p:stdgo.Slice<stdgo.GoByte>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return __self__.value.read(_p);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_errorReaderFromTest>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.bufio_test.Bufio_test.T_errorReaderFromTest_asInterface) class T_errorReaderFromTest_static_extension {
    @:keep
    static public function write( _w:T_errorReaderFromTest, _p:stdgo.Slice<stdgo.GoByte>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _w:T_errorReaderFromTest = _w?.__copy__();
        return { _0 : ((_p.length) * _w._wn : stdgo.GoInt), _1 : _w._werr };
    }
    @:keep
    static public function read( _r:T_errorReaderFromTest, _p:stdgo.Slice<stdgo.GoByte>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _r:T_errorReaderFromTest = _r?.__copy__();
        return { _0 : ((_p.length) * _r._rn : stdgo.GoInt), _1 : _r._rerr };
    }
}
class T_errorThenGoodReader_asInterface {
    @:keep
    public dynamic function read(_p:stdgo.Slice<stdgo.GoByte>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return __self__.value.read(_p);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_errorThenGoodReader>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.bufio_test.Bufio_test.T_errorThenGoodReader_asInterface) class T_errorThenGoodReader_static_extension {
    @:keep
    static public function read( _r:stdgo.Ref<T_errorThenGoodReader>, _p:stdgo.Slice<stdgo.GoByte>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _r:stdgo.Ref<T_errorThenGoodReader> = _r;
        _r._nread++;
        if (!_r._didErr) {
            _r._didErr = true;
            return { _0 : (0 : stdgo.GoInt), _1 : _errFake };
        };
        return { _0 : (_p.length), _1 : (null : stdgo.Error) };
    }
}
class T_emptyThenNonEmptyReader_asInterface {
    @:keep
    public dynamic function read(_p:stdgo.Slice<stdgo.GoByte>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return __self__.value.read(_p);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_emptyThenNonEmptyReader>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.bufio_test.Bufio_test.T_emptyThenNonEmptyReader_asInterface) class T_emptyThenNonEmptyReader_static_extension {
    @:keep
    static public function read( _r:stdgo.Ref<T_emptyThenNonEmptyReader>, _p:stdgo.Slice<stdgo.GoByte>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _r:stdgo.Ref<T_emptyThenNonEmptyReader> = _r;
        if ((_r._n <= (0 : stdgo.GoInt) : Bool)) {
            return _r._r.read(_p);
        };
        _r._n--;
        return { _0 : (0 : stdgo.GoInt), _1 : (null : stdgo.Error) };
    }
}
class T_readFromWriter_asInterface {
    @:keep
    public dynamic function readFrom(_r:stdgo._internal.io.Io.Reader):{ var _0 : stdgo.GoInt64; var _1 : stdgo.Error; } return __self__.value.readFrom(_r);
    @:keep
    public dynamic function write(_p:stdgo.Slice<stdgo.GoByte>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return __self__.value.write(_p);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_readFromWriter>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.bufio_test.Bufio_test.T_readFromWriter_asInterface) class T_readFromWriter_static_extension {
    @:keep
    static public function readFrom( _w:stdgo.Ref<T_readFromWriter>, _r:stdgo._internal.io.Io.Reader):{ var _0 : stdgo.GoInt64; var _1 : stdgo.Error; } {
        @:recv var _w:stdgo.Ref<T_readFromWriter> = _w;
        var __tmp__ = stdgo._internal.io.Io.readAll(_r), _b:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        _w._buf = (_w._buf.__append__(...(_b : Array<stdgo.GoUInt8>)));
        _w._readFromBytes = (_w._readFromBytes + ((_b.length)) : stdgo.GoInt);
        return { _0 : (_b.length : stdgo.GoInt64), _1 : _err };
    }
    @:keep
    static public function write( _w:stdgo.Ref<T_readFromWriter>, _p:stdgo.Slice<stdgo.GoByte>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _w:stdgo.Ref<T_readFromWriter> = _w;
        _w._buf = (_w._buf.__append__(...(_p : Array<stdgo.GoUInt8>)));
        _w._writeBytes = (_w._writeBytes + ((_p.length)) : stdgo.GoInt);
        return { _0 : (_p.length), _1 : (null : stdgo.Error) };
    }
}
class T_onlyReader_asInterface {
    @:embedded
    public dynamic function read(_p:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return __self__.value.read(_p);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_onlyReader>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.bufio_test.Bufio_test.T_onlyReader_asInterface) class T_onlyReader_static_extension {
    @:embedded
    public static function read( __self__:T_onlyReader, _p:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return __self__.read(_p);
}
class T_onlyWriter_asInterface {
    @:embedded
    public dynamic function write(_p:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return __self__.value.write(_p);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_onlyWriter>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.bufio_test.Bufio_test.T_onlyWriter_asInterface) class T_onlyWriter_static_extension {
    @:embedded
    public static function write( __self__:T_onlyWriter, _p:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return __self__.write(_p);
}
class T_eofReader_asInterface {
    @:keep
    public dynamic function read(_p:stdgo.Slice<stdgo.GoByte>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return __self__.value.read(_p);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_eofReader>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.bufio_test.Bufio_test.T_eofReader_asInterface) class T_eofReader_static_extension {
    @:keep
    static public function read( _r:stdgo.Ref<T_eofReader>, _p:stdgo.Slice<stdgo.GoByte>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _r:stdgo.Ref<T_eofReader> = _r;
        var _read:stdgo.GoInt = stdgo.Go.copySlice(_p, _r._buf);
        _r._buf = (_r._buf.__slice__(_read) : stdgo.Slice<stdgo.GoUInt8>);
        {
            final __value__ = _read;
            if (__value__ == ((0 : stdgo.GoInt)) || __value__ == ((_r._buf.length))) {
                return { _0 : _read, _1 : stdgo._internal.io.Io.eof };
            };
        };
        return { _0 : _read, _1 : (null : stdgo.Error) };
    }
}
class T_writerWithReadFromError_asInterface {
    @:keep
    public dynamic function write(_b:stdgo.Slice<stdgo.GoByte>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return __self__.value.write(_b);
    @:keep
    public dynamic function readFrom(_r:stdgo._internal.io.Io.Reader):{ var _0 : stdgo.GoInt64; var _1 : stdgo.Error; } return __self__.value.readFrom(_r);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_writerWithReadFromError>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.bufio_test.Bufio_test.T_writerWithReadFromError_asInterface) class T_writerWithReadFromError_static_extension {
    @:keep
    static public function write( _w:T_writerWithReadFromError, _b:stdgo.Slice<stdgo.GoByte>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _w:T_writerWithReadFromError = _w?.__copy__();
        var _n:stdgo.GoInt = (0 : stdgo.GoInt), _err:stdgo.Error = (null : stdgo.Error);
        return { _0 : (10 : stdgo.GoInt), _1 : (null : stdgo.Error) };
    }
    @:keep
    static public function readFrom( _w:T_writerWithReadFromError, _r:stdgo._internal.io.Io.Reader):{ var _0 : stdgo.GoInt64; var _1 : stdgo.Error; } {
        @:recv var _w:T_writerWithReadFromError = _w?.__copy__();
        return { _0 : (0i64 : stdgo.GoInt64), _1 : stdgo._internal.errors.Errors.new_(("writerWithReadFromError error" : stdgo.GoString)) };
    }
}
class T_writeErrorOnlyWriter_asInterface {
    @:keep
    public dynamic function write(_p:stdgo.Slice<stdgo.GoByte>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return __self__.value.write(_p);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_writeErrorOnlyWriter>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.bufio_test.Bufio_test.T_writeErrorOnlyWriter_asInterface) class T_writeErrorOnlyWriter_static_extension {
    @:keep
    static public function write( _w:T_writeErrorOnlyWriter, _p:stdgo.Slice<stdgo.GoByte>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _w:T_writeErrorOnlyWriter = _w?.__copy__();
        var _n:stdgo.GoInt = (0 : stdgo.GoInt), _err:stdgo.Error = (null : stdgo.Error);
        return { _0 : (0 : stdgo.GoInt), _1 : stdgo._internal.errors.Errors.new_(("writeErrorOnlyWriter error" : stdgo.GoString)) };
    }
}
class T_slowReader_asInterface {
    @:keep
    public dynamic function read(_p:stdgo.Slice<stdgo.GoByte>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return __self__.value.read(_p);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_slowReader>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.bufio_test.Bufio_test.T_slowReader_asInterface) class T_slowReader_static_extension {
    @:keep
    static public function read( _sr:stdgo.Ref<T_slowReader>, _p:stdgo.Slice<stdgo.GoByte>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _sr:stdgo.Ref<T_slowReader> = _sr;
        var _n:stdgo.GoInt = (0 : stdgo.GoInt), _err:stdgo.Error = (null : stdgo.Error);
        if (((_p.length) > _sr._max : Bool)) {
            _p = (_p.__slice__((0 : stdgo.GoInt), _sr._max) : stdgo.Slice<stdgo.GoUInt8>);
        };
        return _sr._buf.read(_p);
    }
}
class T_alwaysError_asInterface {
    @:keep
    public dynamic function read(_p:stdgo.Slice<stdgo.GoByte>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return __self__.value.read(_p);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_alwaysError>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.bufio_test.Bufio_test.T_alwaysError_asInterface) class T_alwaysError_static_extension {
    @:keep
    static public function read( _:T_alwaysError, _p:stdgo.Slice<stdgo.GoByte>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _:T_alwaysError = _?.__copy__();
        return { _0 : (0 : stdgo.GoInt), _1 : stdgo._internal.io.Io.errUnexpectedEOF };
    }
}
class T_endlessZeros_asInterface {
    @:keep
    public dynamic function read(_p:stdgo.Slice<stdgo.GoByte>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return __self__.value.read(_p);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_endlessZeros>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.bufio_test.Bufio_test.T_endlessZeros_asInterface) class T_endlessZeros_static_extension {
    @:keep
    static public function read( _:T_endlessZeros, _p:stdgo.Slice<stdgo.GoByte>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _:T_endlessZeros = _?.__copy__();
        return { _0 : (0 : stdgo.GoInt), _1 : (null : stdgo.Error) };
    }
}
class T_largeReader_asInterface {
    @:keep
    public dynamic function read(_p:stdgo.Slice<stdgo.GoByte>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return __self__.value.read(_p);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_largeReader>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.bufio_test.Bufio_test.T_largeReader_asInterface) class T_largeReader_static_extension {
    @:keep
    static public function read( _:T_largeReader, _p:stdgo.Slice<stdgo.GoByte>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _:T_largeReader = _?.__copy__();
        return { _0 : ((_p.length) + (1 : stdgo.GoInt) : stdgo.GoInt), _1 : (null : stdgo.Error) };
    }
}
class T_dataAndEOFReader_asInterface {
    @:keep
    public dynamic function read(_p:stdgo.Slice<stdgo.GoByte>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return __self__.value.read(_p);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_dataAndEOFReader>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.bufio_test.Bufio_test.T_dataAndEOFReader_asInterface) class T_dataAndEOFReader_static_extension {
    @:keep
    static public function read( _r:T_dataAndEOFReader, _p:stdgo.Slice<stdgo.GoByte>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _r:T_dataAndEOFReader = _r;
        return { _0 : stdgo.Go.copySlice(_p, _r), _1 : stdgo._internal.io.Io.eof };
    }
}
class T_writeCountingDiscard_asInterface {
    @:keep
    @:pointer
    public dynamic function write(_p:stdgo.Slice<stdgo.GoByte>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return __self__.value.write(__self__, _p);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_writeCountingDiscard>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.bufio_test.Bufio_test.T_writeCountingDiscard_asInterface) class T_writeCountingDiscard_static_extension {
    @:keep
    @:pointer
    static public function write(____:T_writeCountingDiscard,  _w:stdgo.Pointer<T_writeCountingDiscard>, _p:stdgo.Slice<stdgo.GoByte>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        _w.value++;
        return { _0 : (_p.length), _1 : (null : stdgo.Error) };
    }
}
class T_negativeReader_asInterface {
    @:keep
    @:pointer
    public dynamic function read(_0:stdgo.Slice<stdgo.GoByte>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return __self__.value.read(__self__, _0);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_negativeReader>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.bufio_test.Bufio_test.T_negativeReader_asInterface) class T_negativeReader_static_extension {
    @:keep
    @:pointer
    static public function read(____:T_negativeReader,  _r:stdgo.Pointer<T_negativeReader>, _0:stdgo.Slice<stdgo.GoByte>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        return { _0 : (-1 : stdgo.GoInt), _1 : (null : stdgo.Error) };
    }
}
class T_scriptedReader_asInterface {
    @:keep
    public dynamic function read(_p:stdgo.Slice<stdgo.GoByte>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return __self__.value.read(_p);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_scriptedReader>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.bufio_test.Bufio_test.T_scriptedReader_asInterface) class T_scriptedReader_static_extension {
    @:keep
    static public function read( _sr:stdgo.Ref<T_scriptedReader>, _p:stdgo.Slice<stdgo.GoByte>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _sr:stdgo.Ref<T_scriptedReader> = _sr;
        var _n:stdgo.GoInt = (0 : stdgo.GoInt), _err:stdgo.Error = (null : stdgo.Error);
        if (((_sr : stdgo._internal.bufio_test.Bufio_test.T_scriptedReader).length) == ((0 : stdgo.GoInt))) {
            throw stdgo.Go.toInterface(("too many Read calls on scripted Reader. No steps remain." : stdgo.GoString));
        };
        var _step = ((_sr : stdgo._internal.bufio_test.Bufio_test.T_scriptedReader))[(0 : stdgo.GoInt)];
        _sr.__setData__((((_sr : stdgo._internal.bufio_test.Bufio_test.T_scriptedReader)).__slice__((1 : stdgo.GoInt)) : stdgo._internal.bufio_test.Bufio_test.T_scriptedReader));
        return _step(_p);
    }
}
class T_countdown_asInterface {
    @:keep
    @:pointer
    public dynamic function _split(_data:stdgo.Slice<stdgo.GoByte>, _atEOF:Bool):{ var _0 : stdgo.GoInt; var _1 : stdgo.Slice<stdgo.GoByte>; var _2 : stdgo.Error; } return __self__.value._split(__self__, _data, _atEOF);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_countdown>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.bufio_test.Bufio_test.T_countdown_asInterface) class T_countdown_static_extension {
    @:keep
    @:pointer
    static public function _split(____:T_countdown,  _c:stdgo.Pointer<T_countdown>, _data:stdgo.Slice<stdgo.GoByte>, _atEOF:Bool):{ var _0 : stdgo.GoInt; var _1 : stdgo.Slice<stdgo.GoByte>; var _2 : stdgo.Error; } {
        var _advance:stdgo.GoInt = (0 : stdgo.GoInt), _token:stdgo.Slice<stdgo.GoByte> = (null : stdgo.Slice<stdgo.GoUInt8>), _err:stdgo.Error = (null : stdgo.Error);
        if ((_c.value > (0 : stdgo._internal.bufio_test.Bufio_test.T_countdown) : Bool)) {
            _c.value--;
            return { _0 : (1 : stdgo.GoInt), _1 : (_data.__slice__(0, (1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), _2 : (null : stdgo.Error) };
        };
        return { _0 : (0 : stdgo.GoInt), _1 : (null : stdgo.Slice<stdgo.GoUInt8>), _2 : (null : stdgo.Error) };
    }
}
class T_negativeEOFReader_asInterface {
    @:keep
    @:pointer
    public dynamic function read(_p:stdgo.Slice<stdgo.GoByte>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return __self__.value.read(__self__, _p);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_negativeEOFReader>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.bufio_test.Bufio_test.T_negativeEOFReader_asInterface) class T_negativeEOFReader_static_extension {
    @:keep
    @:pointer
    static public function read(____:T_negativeEOFReader,  _r:stdgo.Pointer<T_negativeEOFReader>, _p:stdgo.Slice<stdgo.GoByte>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        if ((_r.value > (0 : stdgo._internal.bufio_test.Bufio_test.T_negativeEOFReader) : Bool)) {
            var _c:stdgo.GoInt = (_r.value : stdgo.GoInt);
            if ((_c > (_p.length) : Bool)) {
                _c = (_p.length);
            };
            {
                var _i:stdgo.GoInt = (0 : stdgo.GoInt);
                stdgo.Go.cfor((_i < _c : Bool), _i++, {
                    _p[(_i : stdgo.GoInt)] = (97 : stdgo.GoUInt8);
                });
            };
            _p[(_c - (1 : stdgo.GoInt) : stdgo.GoInt)] = (10 : stdgo.GoUInt8);
            _r.value = (_r.value - ((_c : T_negativeEOFReader)) : stdgo._internal.bufio_test.Bufio_test.T_negativeEOFReader);
            return { _0 : _c, _1 : (null : stdgo.Error) };
        };
        return { _0 : (-1 : stdgo.GoInt), _1 : stdgo._internal.io.Io.eof };
    }
}
