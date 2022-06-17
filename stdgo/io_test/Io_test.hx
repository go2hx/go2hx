package stdgo.io_test;
import stdgo.io.Io;
import stdgo.io.Io;
import stdgo.io.Io;
import stdgo.StdGoTypes;
import stdgo.Error;
import stdgo.Go;
import stdgo.GoString;
import stdgo.Pointer;
import stdgo.Slice;
import stdgo.GoArray;
import stdgo.GoMap;
import stdgo.Chan;
var _pipeTests : Slice<stdgo.io_test.Io_test.T_pipeTest> = ((new Slice<stdgo.io_test.Io_test.T_pipeTest>(((new stdgo.io_test.Io_test.T_pipeTest(true, ((null : stdgo.Error)), false) : stdgo.io_test.Io_test.T_pipeTest)), ((new stdgo.io_test.Io_test.T_pipeTest(true, ((null : stdgo.Error)), true) : stdgo.io_test.Io_test.T_pipeTest)), ((new stdgo.io_test.Io_test.T_pipeTest(true, errShortWrite, true) : stdgo.io_test.Io_test.T_pipeTest)), ((new stdgo.io_test.Io_test.T_pipeTest(false, ((null : stdgo.Error)), false) : stdgo.io_test.Io_test.T_pipeTest)), ((new stdgo.io_test.Io_test.T_pipeTest(false, ((null : stdgo.Error)), true) : stdgo.io_test.Io_test.T_pipeTest)), ((new stdgo.io_test.Io_test.T_pipeTest(false, errShortWrite, true) : stdgo.io_test.Io_test.T_pipeTest))) : Slice<stdgo.io_test.Io_test.T_pipeTest>));
typedef T_closer = StructType & {
    public function closeWithError(_0:Error):Error;
    public function close():Error;
};
@:local typedef T__interface_0 = StructType & {
    > Writer,
    > stdgo.fmt.Fmt.Stringer,
};
@:structInit class Buffer {
    @:embedded
    public var buffer : stdgo.bytes.Bytes.Buffer = new stdgo.bytes.Bytes.Buffer();
    @:embedded
    public var readerFrom : ReaderFrom = ((null : ReaderFrom));
    @:embedded
    public var writerTo : WriterTo = ((null : WriterTo));
    public function new(?buffer:stdgo.bytes.Bytes.Buffer, ?readerFrom:ReaderFrom, ?writerTo:WriterTo) {
        if (buffer != null) this.buffer = buffer;
        if (readerFrom != null) this.readerFrom = readerFrom;
        if (writerTo != null) this.writerTo = writerTo;
    }
    public function bytes():Slice<GoUInt8> return buffer.bytes();
    public function cap_():GoInt return buffer.cap_();
    public function grow(_n:GoInt) buffer.grow(_n);
    public function len():GoInt return buffer.len();
    public function next(_n:GoInt):Slice<GoUInt8> return buffer.next(_n);
    public function read(_p:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : stdgo.Error; } return buffer.read(_p);
    public function readByte():{ var _0 : GoUInt8; var _1 : stdgo.Error; } return buffer.readByte();
    public function readBytes(_delim:GoUInt8):{ var _0 : Slice<GoUInt8>; var _1 : stdgo.Error; } return buffer.readBytes(_delim);
    public function readRune():{ var _0 : GoInt32; var _1 : GoInt; var _2 : stdgo.Error; } return buffer.readRune();
    public function readString(_delim:GoUInt8):{ var _0 : GoString; var _1 : stdgo.Error; } return buffer.readString(_delim);
    public function reset() buffer.reset();
    public function toString():GoString return buffer.toString();
    public function truncate(_n:GoInt) buffer.truncate(_n);
    public function unreadByte():stdgo.Error return buffer.unreadByte();
    public function unreadRune():stdgo.Error return buffer.unreadRune();
    public function write(_p:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : stdgo.Error; } return buffer.write(_p);
    public function writeByte(_c:GoUInt8):stdgo.Error return buffer.writeByte(_c);
    public function writeRune(_r:GoInt32):{ var _0 : GoInt; var _1 : stdgo.Error; } return buffer.writeRune(_r);
    public function writeString(_s:GoString):{ var _0 : GoInt; var _1 : stdgo.Error; } return buffer.writeString(_s);
    public function _empty():Bool return buffer._empty();
    public function _grow(_n:GoInt):GoInt return buffer._grow(_n);
    public function _readSlice(_delim:GoUInt8):{ var _0 : Slice<GoUInt8>; var _1 : stdgo.Error; } return buffer._readSlice(_delim);
    public function _tryGrowByReslice(_n:GoInt):{ var _0 : GoInt; var _1 : Bool; } return buffer._tryGrowByReslice(_n);
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new Buffer(buffer, readerFrom, writerTo);
    }
}
@:structInit @:using(stdgo.io_test.Io_test.T_writeToChecker_static_extension) class T_writeToChecker {
    @:keep
    public function writeTo(_w:Writer):{ var _0 : GoInt64; var _1 : Error; } {
        var _wt = this;
        _wt;
        _wt._writeToCalled = true;
        return _wt.buffer.writeTo(_w);
    }
    @:embedded
    public var buffer : stdgo.bytes.Bytes.Buffer = new stdgo.bytes.Bytes.Buffer();
    public var _writeToCalled : Bool = false;
    public function new(?buffer:stdgo.bytes.Bytes.Buffer, ?_writeToCalled:Bool) {
        if (buffer != null) this.buffer = buffer;
        if (_writeToCalled != null) this._writeToCalled = _writeToCalled;
    }
    public function bytes():Slice<GoUInt8> return buffer.bytes();
    public function cap_():GoInt return buffer.cap_();
    public function grow(_n:GoInt) buffer.grow(_n);
    public function len():GoInt return buffer.len();
    public function next(_n:GoInt):Slice<GoUInt8> return buffer.next(_n);
    public function read(_p:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : stdgo.Error; } return buffer.read(_p);
    public function readByte():{ var _0 : GoUInt8; var _1 : stdgo.Error; } return buffer.readByte();
    public function readBytes(_delim:GoUInt8):{ var _0 : Slice<GoUInt8>; var _1 : stdgo.Error; } return buffer.readBytes(_delim);
    public function readFrom(_r:Reader):{ var _0 : GoInt64; var _1 : stdgo.Error; } return buffer.readFrom(_r);
    public function readRune():{ var _0 : GoInt32; var _1 : GoInt; var _2 : stdgo.Error; } return buffer.readRune();
    public function readString(_delim:GoUInt8):{ var _0 : GoString; var _1 : stdgo.Error; } return buffer.readString(_delim);
    public function reset() buffer.reset();
    public function toString():GoString return buffer.toString();
    public function truncate(_n:GoInt) buffer.truncate(_n);
    public function unreadByte():stdgo.Error return buffer.unreadByte();
    public function unreadRune():stdgo.Error return buffer.unreadRune();
    public function write(_p:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : stdgo.Error; } return buffer.write(_p);
    public function writeByte(_c:GoUInt8):stdgo.Error return buffer.writeByte(_c);
    public function writeRune(_r:GoInt32):{ var _0 : GoInt; var _1 : stdgo.Error; } return buffer.writeRune(_r);
    public function writeString(_s:GoString):{ var _0 : GoInt; var _1 : stdgo.Error; } return buffer.writeString(_s);
    public function _empty():Bool return buffer._empty();
    public function _grow(_n:GoInt):GoInt return buffer._grow(_n);
    public function _readSlice(_delim:GoUInt8):{ var _0 : Slice<GoUInt8>; var _1 : stdgo.Error; } return buffer._readSlice(_delim);
    public function _tryGrowByReslice(_n:GoInt):{ var _0 : GoInt; var _1 : Bool; } return buffer._tryGrowByReslice(_n);
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_writeToChecker(buffer, _writeToCalled);
    }
}
@:structInit @:using(stdgo.io_test.Io_test.T_zeroErrReader_static_extension) class T_zeroErrReader {
    @:keep
    public function read(_p:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } {
        var _r = this;
        (_r == null ? null : _r.__copy__());
        return { _0 : Go.copySlice(_p, ((new Slice<GoUInt8>(((0 : GoUInt8))) : Slice<GoUInt8>))), _1 : _r._err };
    }
    public var _err : stdgo.Error = ((null : stdgo.Error));
    public function new(?_err:stdgo.Error) {
        if (_err != null) this._err = _err;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_zeroErrReader(_err);
    }
}
@:structInit @:using(stdgo.io_test.Io_test.T_errWriter_static_extension) class T_errWriter {
    @:keep
    public function write(_0:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } {
        var _w = this;
        (_w == null ? null : _w.__copy__());
        return { _0 : ((0 : GoInt)), _1 : _w._err };
    }
    public var _err : stdgo.Error = ((null : stdgo.Error));
    public function new(?_err:stdgo.Error) {
        if (_err != null) this._err = _err;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_errWriter(_err);
    }
}
@:structInit @:using(stdgo.io_test.Io_test.T_noReadFrom_static_extension) class T_noReadFrom {
    @:keep
    public function write(_p:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } {
        var _w = this;
        _w;
        var _n:GoInt = ((0 : GoInt)), _err:Error = ((null : stdgo.Error));
        return _w._w.write(_p);
    }
    public var _w : Writer = ((null : Writer));
    public function new(?_w:Writer) {
        if (_w != null) this._w = _w;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_noReadFrom(_w);
    }
}
@:structInit @:using(stdgo.io_test.Io_test.T_wantedAndErrReader_static_extension) class T_wantedAndErrReader {
    @:keep
    public function read(_p:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } {
        var _ = this;
        return { _0 : (_p != null ? _p.length : ((0 : GoInt))), _1 : stdgo.errors.Errors.new_(((("wantedAndErrReader error" : GoString)))) };
    }
    public function new() {}
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_wantedAndErrReader();
    }
}
@:structInit @:using(stdgo.io_test.Io_test.T_dataAndErrorBuffer_static_extension) class T_dataAndErrorBuffer {
    @:keep
    public function read(_p:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } {
        var _r = this;
        _r;
        var _n:GoInt = ((0 : GoInt)), _err:Error = ((null : stdgo.Error));
        {
            var __tmp__ = _r.buffer.read(_p);
            _n = __tmp__._0;
            _err = __tmp__._1;
        };
        if (((_n > ((0 : GoInt))) && (_r.buffer.len() == ((0 : GoInt)))) && (_err == null)) {
            _err = _r._err;
        };
        return { _0 : _n, _1 : _err };
    }
    public var _err : stdgo.Error = ((null : stdgo.Error));
    @:embedded
    public var buffer : stdgo.bytes.Bytes.Buffer = new stdgo.bytes.Bytes.Buffer();
    public function new(?_err:stdgo.Error, ?buffer:stdgo.bytes.Bytes.Buffer) {
        if (_err != null) this._err = _err;
        if (buffer != null) this.buffer = buffer;
    }
    public function bytes():Slice<GoUInt8> return buffer.bytes();
    public function cap_():GoInt return buffer.cap_();
    public function grow(_n:GoInt) buffer.grow(_n);
    public function len():GoInt return buffer.len();
    public function next(_n:GoInt):Slice<GoUInt8> return buffer.next(_n);
    public function readByte():{ var _0 : GoUInt8; var _1 : stdgo.Error; } return buffer.readByte();
    public function readBytes(_delim:GoUInt8):{ var _0 : Slice<GoUInt8>; var _1 : stdgo.Error; } return buffer.readBytes(_delim);
    public function readFrom(_r:Reader):{ var _0 : GoInt64; var _1 : stdgo.Error; } return buffer.readFrom(_r);
    public function readRune():{ var _0 : GoInt32; var _1 : GoInt; var _2 : stdgo.Error; } return buffer.readRune();
    public function readString(_delim:GoUInt8):{ var _0 : GoString; var _1 : stdgo.Error; } return buffer.readString(_delim);
    public function reset() buffer.reset();
    public function toString():GoString return buffer.toString();
    public function truncate(_n:GoInt) buffer.truncate(_n);
    public function unreadByte():stdgo.Error return buffer.unreadByte();
    public function unreadRune():stdgo.Error return buffer.unreadRune();
    public function write(_p:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : stdgo.Error; } return buffer.write(_p);
    public function writeByte(_c:GoUInt8):stdgo.Error return buffer.writeByte(_c);
    public function writeRune(_r:GoInt32):{ var _0 : GoInt; var _1 : stdgo.Error; } return buffer.writeRune(_r);
    public function writeString(_s:GoString):{ var _0 : GoInt; var _1 : stdgo.Error; } return buffer.writeString(_s);
    public function writeTo(_w:Writer):{ var _0 : GoInt64; var _1 : stdgo.Error; } return buffer.writeTo(_w);
    public function _empty():Bool return buffer._empty();
    public function _grow(_n:GoInt):GoInt return buffer._grow(_n);
    public function _readSlice(_delim:GoUInt8):{ var _0 : Slice<GoUInt8>; var _1 : stdgo.Error; } return buffer._readSlice(_delim);
    public function _tryGrowByReslice(_n:GoInt):{ var _0 : GoInt; var _1 : Bool; } return buffer._tryGrowByReslice(_n);
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_dataAndErrorBuffer(_err, buffer);
    }
}
@:structInit @:using(stdgo.io_test.Io_test.T_largeWriter_static_extension) class T_largeWriter {
    @:keep
    public function write(_p:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } {
        var _w = this;
        (_w == null ? null : _w.__copy__());
        return { _0 : (_p != null ? _p.length : ((0 : GoInt))) + ((1 : GoInt)), _1 : _w._err };
    }
    public var _err : stdgo.Error = ((null : stdgo.Error));
    public function new(?_err:stdgo.Error) {
        if (_err != null) this._err = _err;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_largeWriter(_err);
    }
}
@:structInit @:using(stdgo.io_test.Io_test.T_writeStringChecker_static_extension) class T_writeStringChecker {
    @:keep
    public function write(_p:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } {
        var _c = this;
        _c;
        var _n:GoInt = ((0 : GoInt)), _err:Error = ((null : stdgo.Error));
        return { _0 : (_p != null ? _p.length : ((0 : GoInt))), _1 : ((null : stdgo.Error)) };
    }
    @:keep
    public function writeString(_s:GoString):{ var _0 : GoInt; var _1 : Error; } {
        var _c = this;
        _c;
        var _n:GoInt = ((0 : GoInt)), _err:Error = ((null : stdgo.Error));
        _c._called = true;
        return { _0 : (_s != null ? _s.length : ((0 : GoInt))), _1 : ((null : stdgo.Error)) };
    }
    public var _called : Bool = false;
    public function new(?_called:Bool) {
        if (_called != null) this._called = _called;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_writeStringChecker(_called);
    }
}
@:structInit class T_pipeReturn {
    public var _n : GoInt = ((0 : GoInt));
    public var _err : stdgo.Error = ((null : stdgo.Error));
    public function new(?_n:GoInt, ?_err:stdgo.Error) {
        if (_n != null) this._n = _n;
        if (_err != null) this._err = _err;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_pipeReturn(_n, _err);
    }
}
@:structInit @:using(stdgo.io_test.Io_test.T_pipeTest_static_extension) class T_pipeTest {
    @:keep
    public function toString():GoString {
        var _p = this;
        (_p == null ? null : _p.__copy__());
        return stdgo.fmt.Fmt.sprintf(((("async=%v err=%v closeWithError=%v" : GoString))), Go.toInterface(_p._async), Go.toInterface(_p._err), Go.toInterface(_p._closeWithError));
    }
    public var _async : Bool = false;
    public var _err : stdgo.Error = ((null : stdgo.Error));
    public var _closeWithError : Bool = false;
    public function new(?_async:Bool, ?_err:stdgo.Error, ?_closeWithError:Bool) {
        if (_async != null) this._async = _async;
        if (_err != null) this._err = _err;
        if (_closeWithError != null) this._closeWithError = _closeWithError;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_pipeTest(_async, _err, _closeWithError);
    }
}
@:structInit @:local class T__struct_1 {
    public var _data : GoString = (("" : GoString));
    public var _off : GoInt = ((0 : GoInt));
    public var _n : GoInt = ((0 : GoInt));
    public var _bufLen : GoInt = ((0 : GoInt));
    public var _at : GoInt = ((0 : GoInt));
    public var _exp : GoString = (("" : GoString));
    public var _err : stdgo.Error = ((null : stdgo.Error));
    public function toString():String return "{" + Go.string(_data) + " " + Go.string(_off) + " " + Go.string(_n) + " " + Go.string(_bufLen) + " " + Go.string(_at) + " " + Go.string(_exp) + " " + Go.string(_err) + "}";
    public function new(?_data:GoString, ?_off:GoInt, ?_n:GoInt, ?_bufLen:GoInt, ?_at:GoInt, ?_exp:GoString, ?_err:stdgo.Error, ?toString) {
        if (_data != null) this._data = _data;
        if (_off != null) this._off = _off;
        if (_n != null) this._n = _n;
        if (_bufLen != null) this._bufLen = _bufLen;
        if (_at != null) this._at = _at;
        if (_exp != null) this._exp = _exp;
        if (_err != null) this._err = _err;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T__struct_1(_data, _off, _n, _bufLen, _at, _exp, _err);
    }
}
@:structInit @:local class T__struct_2 {
    public var _data : GoString = (("" : GoString));
    public var _want : GoInt64 = ((0 : GoInt64));
    public function toString():String return "{" + Go.string(_data) + " " + Go.string(_want) + "}";
    public function new(?_data:GoString, ?_want:GoInt64, ?toString) {
        if (_data != null) this._data = _data;
        if (_want != null) this._want = _want;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T__struct_2(_data, _want);
    }
}
@:structInit @:local class T__struct_3 {
    @:embedded
    public var writer : Writer = ((null : Writer));
    @:embedded
    public var stringer : stdgo.fmt.Fmt.Stringer = ((null : stdgo.fmt.Fmt.Stringer));
    public function toString():String return "{" + Go.string(writer) + " " + Go.string(stringer) + "}";
    public function new(?writer:Writer, ?stringer:stdgo.fmt.Fmt.Stringer, ?toString) {
        if (writer != null) this.writer = writer;
        if (stringer != null) this.stringer = stringer;
    }
    public function toString():GoString return stringer.toString();
    public function write(_p:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : stdgo.Error; } return writer.write(_p);
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T__struct_3(writer, stringer);
    }
}
@:structInit @:local class T__struct_4 {
    public function toString():String return "{" + "}";
    public function new(?toString) {}
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T__struct_4();
    }
}
@:named @:using(stdgo.io_test.Io_test.T_writerFunc_static_extension) typedef T_writerFunc = Slice<GoUInt8> -> { var _0 : GoInt; var _1 : stdgo.Error; };
@:named @:using(stdgo.io_test.Io_test.T_readerFunc_static_extension) typedef T_readerFunc = Slice<GoUInt8> -> { var _0 : GoInt; var _1 : stdgo.Error; };
@:named @:using(stdgo.io_test.Io_test.T_byteAndEOFReader_static_extension) typedef T_byteAndEOFReader = GoUInt8;
function exampleCopy():Void {
        var _r:Ref<stdgo.strings.Strings.Reader> = stdgo.strings.Strings.newReader(((("some io.Reader stream to be read\n" : GoString))));
        {
            var __tmp__ = stdgo.io.Io.copy(stdgo.os.Os.stdout, _r), _0:GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                stdgo.log.Log.fatal(Go.toInterface(_err));
            };
        };
    }
function exampleCopyBuffer():Void {
        var _r1:Ref<stdgo.strings.Strings.Reader> = stdgo.strings.Strings.newReader(((("first reader\n" : GoString))));
        var _r2:Ref<stdgo.strings.Strings.Reader> = stdgo.strings.Strings.newReader(((("second reader\n" : GoString))));
        var _buf:Slice<GoUInt8> = new Slice<GoUInt8>(...[for (i in 0 ... ((((8 : GoInt)) : GoInt)).toBasic()) ((0 : GoUInt8))]);
        {
            var __tmp__ = stdgo.io.Io.copyBuffer(stdgo.os.Os.stdout, _r1, _buf), _0:GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                stdgo.log.Log.fatal(Go.toInterface(_err));
            };
        };
        {
            var __tmp__ = stdgo.io.Io.copyBuffer(stdgo.os.Os.stdout, _r2, _buf), _1:GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                stdgo.log.Log.fatal(Go.toInterface(_err));
            };
        };
    }
function exampleCopyN():Void {
        var _r:Ref<stdgo.strings.Strings.Reader> = stdgo.strings.Strings.newReader(((("some io.Reader stream to be read" : GoString))));
        {
            var __tmp__ = stdgo.io.Io.copyN(stdgo.os.Os.stdout, _r, ((4 : GoInt64))), _0:GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                stdgo.log.Log.fatal(Go.toInterface(_err));
            };
        };
    }
function exampleReadAtLeast():Void {
        var _r:Ref<stdgo.strings.Strings.Reader> = stdgo.strings.Strings.newReader(((("some io.Reader stream to be read\n" : GoString))));
        var _buf:Slice<GoUInt8> = new Slice<GoUInt8>(...[for (i in 0 ... ((((14 : GoInt)) : GoInt)).toBasic()) ((0 : GoUInt8))]);
        {
            var __tmp__ = stdgo.io.Io.readAtLeast(_r, _buf, ((4 : GoInt))), _0:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                stdgo.log.Log.fatal(Go.toInterface(_err));
            };
        };
        stdgo.fmt.Fmt.printf(((("%s\n" : GoString))), Go.toInterface(_buf));
        var _shortBuf:Slice<GoUInt8> = new Slice<GoUInt8>(...[for (i in 0 ... ((((3 : GoInt)) : GoInt)).toBasic()) ((0 : GoUInt8))]);
        {
            var __tmp__ = stdgo.io.Io.readAtLeast(_r, _shortBuf, ((4 : GoInt))), _1:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                stdgo.fmt.Fmt.println(((("error:" : GoString))), _err);
            };
        };
        var _longBuf:Slice<GoUInt8> = new Slice<GoUInt8>(...[for (i in 0 ... ((((64 : GoInt)) : GoInt)).toBasic()) ((0 : GoUInt8))]);
        {
            var __tmp__ = stdgo.io.Io.readAtLeast(_r, _longBuf, ((64 : GoInt))), _2:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                stdgo.fmt.Fmt.println(((("error:" : GoString))), _err);
            };
        };
    }
function exampleReadFull():Void {
        var _r:Ref<stdgo.strings.Strings.Reader> = stdgo.strings.Strings.newReader(((("some io.Reader stream to be read\n" : GoString))));
        var _buf:Slice<GoUInt8> = new Slice<GoUInt8>(...[for (i in 0 ... ((((4 : GoInt)) : GoInt)).toBasic()) ((0 : GoUInt8))]);
        {
            var __tmp__ = stdgo.io.Io.readFull(_r, _buf), _0:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                stdgo.log.Log.fatal(Go.toInterface(_err));
            };
        };
        stdgo.fmt.Fmt.printf(((("%s\n" : GoString))), Go.toInterface(_buf));
        var _longBuf:Slice<GoUInt8> = new Slice<GoUInt8>(...[for (i in 0 ... ((((64 : GoInt)) : GoInt)).toBasic()) ((0 : GoUInt8))]);
        {
            var __tmp__ = stdgo.io.Io.readFull(_r, _longBuf), _1:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                stdgo.fmt.Fmt.println(((("error:" : GoString))), _err);
            };
        };
    }
function exampleWriteString():Void {
        {
            var __tmp__ = stdgo.io.Io.writeString(stdgo.os.Os.stdout, ((("Hello World" : GoString)))), _0:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                stdgo.log.Log.fatal(Go.toInterface(_err));
            };
        };
    }
function exampleLimitReader():Void {
        var _r:Ref<stdgo.strings.Strings.Reader> = stdgo.strings.Strings.newReader(((("some io.Reader stream to be read\n" : GoString))));
        var _lr:Reader = stdgo.io.Io.limitReader(_r, ((4 : GoInt64)));
        {
            var __tmp__ = stdgo.io.Io.copy(stdgo.os.Os.stdout, _lr), _0:GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                stdgo.log.Log.fatal(Go.toInterface(_err));
            };
        };
    }
function exampleMultiReader():Void {
        var _r1:Ref<stdgo.strings.Strings.Reader> = stdgo.strings.Strings.newReader(((("first reader " : GoString))));
        var _r2:Ref<stdgo.strings.Strings.Reader> = stdgo.strings.Strings.newReader(((("second reader " : GoString))));
        var _r3:Ref<stdgo.strings.Strings.Reader> = stdgo.strings.Strings.newReader(((("third reader\n" : GoString))));
        var _r:Reader = stdgo.io.Io.multiReader(_r1, _r2, _r3);
        {
            var __tmp__ = stdgo.io.Io.copy(stdgo.os.Os.stdout, _r), _0:GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                stdgo.log.Log.fatal(Go.toInterface(_err));
            };
        };
    }
function exampleTeeReader():Void {
        var _r:Reader = stdgo.strings.Strings.newReader(((("some io.Reader stream to be read\n" : GoString))));
        _r = stdgo.io.Io.teeReader(_r, stdgo.os.Os.stdout);
        {
            var __tmp__ = stdgo.io.Io.readAll(_r), _0:Slice<GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                stdgo.log.Log.fatal(Go.toInterface(_err));
            };
        };
    }
function exampleSectionReader():Void {
        var _r:Ref<stdgo.strings.Strings.Reader> = stdgo.strings.Strings.newReader(((("some io.Reader stream to be read\n" : GoString))));
        var _s:Ref<SectionReader> = stdgo.io.Io.newSectionReader(_r, ((5 : GoInt64)), ((17 : GoInt64)));
        {
            var __tmp__ = stdgo.io.Io.copy(stdgo.os.Os.stdout, _s), _0:GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                stdgo.log.Log.fatal(Go.toInterface(_err));
            };
        };
    }
function exampleSectionReader_Read():Void {
        var _r:Ref<stdgo.strings.Strings.Reader> = stdgo.strings.Strings.newReader(((("some io.Reader stream to be read\n" : GoString))));
        var _s:Ref<SectionReader> = stdgo.io.Io.newSectionReader(_r, ((5 : GoInt64)), ((17 : GoInt64)));
        var _buf:Slice<GoUInt8> = new Slice<GoUInt8>(...[for (i in 0 ... ((((9 : GoInt)) : GoInt)).toBasic()) ((0 : GoUInt8))]);
        {
            var __tmp__ = _s.read(_buf), _0:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                stdgo.log.Log.fatal(Go.toInterface(_err));
            };
        };
        stdgo.fmt.Fmt.printf(((("%s\n" : GoString))), Go.toInterface(_buf));
    }
function exampleSectionReader_ReadAt():Void {
        var _r:Ref<stdgo.strings.Strings.Reader> = stdgo.strings.Strings.newReader(((("some io.Reader stream to be read\n" : GoString))));
        var _s:Ref<SectionReader> = stdgo.io.Io.newSectionReader(_r, ((5 : GoInt64)), ((17 : GoInt64)));
        var _buf:Slice<GoUInt8> = new Slice<GoUInt8>(...[for (i in 0 ... ((((6 : GoInt)) : GoInt)).toBasic()) ((0 : GoUInt8))]);
        {
            var __tmp__ = _s.readAt(_buf, ((10 : GoInt64))), _0:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                stdgo.log.Log.fatal(Go.toInterface(_err));
            };
        };
        stdgo.fmt.Fmt.printf(((("%s\n" : GoString))), Go.toInterface(_buf));
    }
function exampleSectionReader_Seek():Void {
        var _r:Ref<stdgo.strings.Strings.Reader> = stdgo.strings.Strings.newReader(((("some io.Reader stream to be read\n" : GoString))));
        var _s:Ref<SectionReader> = stdgo.io.Io.newSectionReader(_r, ((5 : GoInt64)), ((17 : GoInt64)));
        {
            var __tmp__ = _s.seek(((10 : GoInt64)), ((0 : GoInt))), _0:GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                stdgo.log.Log.fatal(Go.toInterface(_err));
            };
        };
        {
            var __tmp__ = stdgo.io.Io.copy(stdgo.os.Os.stdout, _s), _1:GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                stdgo.log.Log.fatal(Go.toInterface(_err));
            };
        };
    }
function exampleSectionReader_Size():Void {
        var _r:Ref<stdgo.strings.Strings.Reader> = stdgo.strings.Strings.newReader(((("some io.Reader stream to be read\n" : GoString))));
        var _s:Ref<SectionReader> = stdgo.io.Io.newSectionReader(_r, ((5 : GoInt64)), ((17 : GoInt64)));
        stdgo.fmt.Fmt.println(_s.size());
    }
function exampleSeeker_Seek():Void {
        var _r:Ref<stdgo.strings.Strings.Reader> = stdgo.strings.Strings.newReader(((("some io.Reader stream to be read\n" : GoString))));
        _r.seek(((5 : GoInt64)), ((0 : GoInt)));
        {
            var __tmp__ = stdgo.io.Io.copy(stdgo.os.Os.stdout, _r), _0:GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                stdgo.log.Log.fatal(Go.toInterface(_err));
            };
        };
        _r.seek(((-5 : GoInt64)), ((2 : GoInt)));
        {
            var __tmp__ = stdgo.io.Io.copy(stdgo.os.Os.stdout, _r), _1:GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                stdgo.log.Log.fatal(Go.toInterface(_err));
            };
        };
    }
function exampleMultiWriter():Void {
        var _r:Ref<stdgo.strings.Strings.Reader> = stdgo.strings.Strings.newReader(((("some io.Reader stream to be read\n" : GoString))));
        var _buf1:stdgo.bytes.Bytes.Buffer = new stdgo.bytes.Bytes.Buffer(), _buf2:stdgo.bytes.Bytes.Buffer = new stdgo.bytes.Bytes.Buffer();
        var _w:Writer = stdgo.io.Io.multiWriter(_buf1, _buf2);
        {
            var __tmp__ = stdgo.io.Io.copy(_w, _r), _0:GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                stdgo.log.Log.fatal(Go.toInterface(_err));
            };
        };
        stdgo.fmt.Fmt.print(((_buf1.toString() : GoString)));
        stdgo.fmt.Fmt.print(((_buf2.toString() : GoString)));
    }
function examplePipe():Void {
        var __tmp__ = stdgo.io.Io.pipe(), _r:Ref<PipeReader> = __tmp__._0, _w:Ref<PipeWriter> = __tmp__._1;
        Go.routine(() -> {
            var a = function():Void {
                stdgo.fmt.Fmt.fprint(_w, ((("some io.Reader stream to be read\n" : GoString))));
                _w.close();
            };
            a();
        });
        {
            var __tmp__ = stdgo.io.Io.copy(stdgo.os.Os.stdout, _r), _0:GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                stdgo.log.Log.fatal(Go.toInterface(_err));
            };
        };
    }
function exampleReadAll():Void {
        var _r:Ref<stdgo.strings.Strings.Reader> = stdgo.strings.Strings.newReader(((("Go is a general-purpose language designed with systems programming in mind." : GoString))));
        var __tmp__ = stdgo.io.Io.readAll(_r), _b:Slice<GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            stdgo.log.Log.fatal(Go.toInterface(_err));
        };
        stdgo.fmt.Fmt.printf(((("%s" : GoString))), Go.toInterface(_b));
    }
function testCopy(_t:stdgo.testing.Testing.T_):Void {
        var _rb:Ref<stdgo.io_test.Io_test.Buffer> = new stdgo.io_test.Io_test.Buffer();
        var _wb:Ref<stdgo.io_test.Io_test.Buffer> = new stdgo.io_test.Io_test.Buffer();
        _rb.writeString(((("hello, world." : GoString))));
        copy(_wb, _rb);
        if (((_wb.toString() : GoString)) != ((("hello, world." : GoString)))) {
            _t.errorf(((("Copy did not work properly" : GoString))));
        };
    }
function testCopyNegative(_t:stdgo.testing.Testing.T_):Void {
        var _rb:Ref<stdgo.io_test.Io_test.Buffer> = new stdgo.io_test.Io_test.Buffer();
        var _wb:Ref<stdgo.io_test.Io_test.Buffer> = new stdgo.io_test.Io_test.Buffer();
        _rb.writeString(((("hello" : GoString))));
        copy(_wb, (({ r : _rb, n : ((-1 : GoInt64)) } : LimitedReader)));
        if (((_wb.toString() : GoString)) != ((("" : GoString)))) {
            _t.errorf(((("Copy on LimitedReader with N<0 copied data" : GoString))));
        };
        copyN(_wb, _rb, ((-1 : GoInt64)));
        if (((_wb.toString() : GoString)) != ((("" : GoString)))) {
            _t.errorf(((("CopyN with N<0 copied data" : GoString))));
        };
    }
function testCopyBuffer(_t:stdgo.testing.Testing.T_):Void {
        var _rb:Ref<stdgo.io_test.Io_test.Buffer> = new stdgo.io_test.Io_test.Buffer();
        var _wb:Ref<stdgo.io_test.Io_test.Buffer> = new stdgo.io_test.Io_test.Buffer();
        _rb.writeString(((("hello, world." : GoString))));
        copyBuffer(_wb, _rb, new Slice<GoUInt8>(...[for (i in 0 ... ((((1 : GoInt)) : GoInt)).toBasic()) ((0 : GoUInt8))]));
        if (((_wb.toString() : GoString)) != ((("hello, world." : GoString)))) {
            _t.errorf(((("CopyBuffer did not work properly" : GoString))));
        };
    }
function testCopyBufferNil(_t:stdgo.testing.Testing.T_):Void {
        var _rb:Ref<stdgo.io_test.Io_test.Buffer> = new stdgo.io_test.Io_test.Buffer();
        var _wb:Ref<stdgo.io_test.Io_test.Buffer> = new stdgo.io_test.Io_test.Buffer();
        _rb.writeString(((("hello, world." : GoString))));
        copyBuffer(_wb, _rb, ((null : Slice<GoUInt8>)));
        if (((_wb.toString() : GoString)) != ((("hello, world." : GoString)))) {
            _t.errorf(((("CopyBuffer did not work properly" : GoString))));
        };
    }
function testCopyReadFrom(_t:stdgo.testing.Testing.T_):Void {
        var _rb:Ref<stdgo.io_test.Io_test.Buffer> = new stdgo.io_test.Io_test.Buffer();
        var _wb:Ref<stdgo.bytes.Bytes.Buffer> = new stdgo.bytes.Bytes.Buffer();
        _rb.writeString(((("hello, world." : GoString))));
        copy(_wb, _rb);
        if (((_wb.toString() : GoString)) != ((("hello, world." : GoString)))) {
            _t.errorf(((("Copy did not work properly" : GoString))));
        };
    }
function testCopyWriteTo(_t:stdgo.testing.Testing.T_):Void {
        var _rb:Ref<stdgo.bytes.Bytes.Buffer> = new stdgo.bytes.Bytes.Buffer();
        var _wb:Ref<stdgo.io_test.Io_test.Buffer> = new stdgo.io_test.Io_test.Buffer();
        _rb.writeString(((("hello, world." : GoString))));
        copy(_wb, _rb);
        if (((_wb.toString() : GoString)) != ((("hello, world." : GoString)))) {
            _t.errorf(((("Copy did not work properly" : GoString))));
        };
    }
function testCopyPriority(_t:stdgo.testing.Testing.T_):Void {
        var _rb:Ref<stdgo.io_test.Io_test.T_writeToChecker> = new stdgo.io_test.Io_test.T_writeToChecker();
        var _wb:Ref<stdgo.bytes.Bytes.Buffer> = new stdgo.bytes.Bytes.Buffer();
        _rb.writeString(((("hello, world." : GoString))));
        copy(_wb, _rb);
        if (((_wb.toString() : GoString)) != ((("hello, world." : GoString)))) {
            _t.errorf(((("Copy did not work properly" : GoString))));
        } else if (!_rb._writeToCalled) {
            _t.errorf(((("WriteTo was not prioritized over ReadFrom" : GoString))));
        };
    }
function testCopyReadErrWriteErr(_t:stdgo.testing.Testing.T_):Void {
        var _er:stdgo.Error = stdgo.errors.Errors.new_(((("readError" : GoString)))), _ew:stdgo.Error = stdgo.errors.Errors.new_(((("writeError" : GoString))));
        var _r:stdgo.io_test.Io_test.T_zeroErrReader = ((({ _err : _er } : stdgo.io_test.Io_test.T_zeroErrReader)) == null ? null : (({ _err : _er } : stdgo.io_test.Io_test.T_zeroErrReader)).__copy__()), _w:stdgo.io_test.Io_test.T_errWriter = ((({ _err : _ew } : stdgo.io_test.Io_test.T_errWriter)) == null ? null : (({ _err : _ew } : stdgo.io_test.Io_test.T_errWriter)).__copy__());
        var __tmp__ = copy(_w, _r), _n:GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if ((_n != ((0 : GoInt64))) || (_err != _ew)) {
            _t.errorf(((("Copy(zeroErrReader, errWriter) = %d, %v; want 0, writeError" : GoString))), Go.toInterface(_n), Go.toInterface(_err));
        };
    }
function testCopyN(_t:stdgo.testing.Testing.T_):Void {
        var _rb:Ref<stdgo.io_test.Io_test.Buffer> = new stdgo.io_test.Io_test.Buffer();
        var _wb:Ref<stdgo.io_test.Io_test.Buffer> = new stdgo.io_test.Io_test.Buffer();
        _rb.writeString(((("hello, world." : GoString))));
        copyN(_wb, _rb, ((5 : GoInt64)));
        if (((_wb.toString() : GoString)) != ((("hello" : GoString)))) {
            _t.errorf(((("CopyN did not work properly" : GoString))));
        };
    }
function testCopyNReadFrom(_t:stdgo.testing.Testing.T_):Void {
        var _rb:Ref<stdgo.io_test.Io_test.Buffer> = new stdgo.io_test.Io_test.Buffer();
        var _wb:Ref<stdgo.bytes.Bytes.Buffer> = new stdgo.bytes.Bytes.Buffer();
        _rb.writeString(((("hello" : GoString))));
        copyN(_wb, _rb, ((5 : GoInt64)));
        if (((_wb.toString() : GoString)) != ((("hello" : GoString)))) {
            _t.errorf(((("CopyN did not work properly" : GoString))));
        };
    }
function testCopyNWriteTo(_t:stdgo.testing.Testing.T_):Void {
        var _rb:Ref<stdgo.bytes.Bytes.Buffer> = new stdgo.bytes.Bytes.Buffer();
        var _wb:Ref<stdgo.io_test.Io_test.Buffer> = new stdgo.io_test.Io_test.Buffer();
        _rb.writeString(((("hello, world." : GoString))));
        copyN(_wb, _rb, ((5 : GoInt64)));
        if (((_wb.toString() : GoString)) != ((("hello" : GoString)))) {
            _t.errorf(((("CopyN did not work properly" : GoString))));
        };
    }
function benchmarkCopyNSmall(_b:stdgo.testing.Testing.B):Void {
        var _bs:Slice<GoUInt8> = stdgo.bytes.Bytes.repeat(((new Slice<GoUInt8>(((0 : GoUInt8))) : Slice<GoUInt8>)), ((513 : GoInt)));
        var _rd:Ref<stdgo.bytes.Bytes.Reader> = stdgo.bytes.Bytes.newReader(_bs);
        var _buf:Ref<stdgo.io_test.Io_test.Buffer> = new stdgo.io_test.Io_test.Buffer();
        _b.resetTimer();
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < _b.n, _i++, {
                copyN(_buf, _rd, ((512 : GoInt64)));
                _rd.reset(_bs);
            });
        };
    }
function benchmarkCopyNLarge(_b:stdgo.testing.Testing.B):Void {
        var _bs:Slice<GoUInt8> = stdgo.bytes.Bytes.repeat(((new Slice<GoUInt8>(((0 : GoUInt8))) : Slice<GoUInt8>)), ((32769 : GoInt)));
        var _rd:Ref<stdgo.bytes.Bytes.Reader> = stdgo.bytes.Bytes.newReader(_bs);
        var _buf:Ref<stdgo.io_test.Io_test.Buffer> = new stdgo.io_test.Io_test.Buffer();
        _b.resetTimer();
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < _b.n, _i++, {
                copyN(_buf, _rd, ((32768 : GoInt64)));
                _rd.reset(_bs);
            });
        };
    }
function testCopyNEOF(_t:stdgo.testing.Testing.T_):Void {
        var _b:Ref<stdgo.bytes.Bytes.Buffer> = new stdgo.bytes.Bytes.Buffer();
        var __tmp__ = copyN(((new stdgo.io_test.Io_test.T_noReadFrom(_b) : stdgo.io_test.Io_test.T_noReadFrom)), stdgo.strings.Strings.newReader(((("foo" : GoString)))), ((3 : GoInt64))), _n:GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if ((_n != ((3 : GoInt64))) || (_err != null)) {
            _t.errorf(((("CopyN(noReadFrom, foo, 3) = %d, %v; want 3, nil" : GoString))), Go.toInterface(_n), Go.toInterface(_err));
        };
        {
            var __tmp__ = copyN(((new stdgo.io_test.Io_test.T_noReadFrom(_b) : stdgo.io_test.Io_test.T_noReadFrom)), stdgo.strings.Strings.newReader(((("foo" : GoString)))), ((4 : GoInt64)));
            _n = __tmp__._0;
            _err = __tmp__._1;
        };
        if ((_n != ((3 : GoInt64))) || (_err != eof)) {
            _t.errorf(((("CopyN(noReadFrom, foo, 4) = %d, %v; want 3, EOF" : GoString))), Go.toInterface(_n), Go.toInterface(_err));
        };
        {
            var __tmp__ = copyN(_b, stdgo.strings.Strings.newReader(((("foo" : GoString)))), ((3 : GoInt64)));
            _n = __tmp__._0;
            _err = __tmp__._1;
        };
        if ((_n != ((3 : GoInt64))) || (_err != null)) {
            _t.errorf(((("CopyN(bytes.Buffer, foo, 3) = %d, %v; want 3, nil" : GoString))), Go.toInterface(_n), Go.toInterface(_err));
        };
        {
            var __tmp__ = copyN(_b, stdgo.strings.Strings.newReader(((("foo" : GoString)))), ((4 : GoInt64)));
            _n = __tmp__._0;
            _err = __tmp__._1;
        };
        if ((_n != ((3 : GoInt64))) || (_err != eof)) {
            _t.errorf(((("CopyN(bytes.Buffer, foo, 4) = %d, %v; want 3, EOF" : GoString))), Go.toInterface(_n), Go.toInterface(_err));
        };
        {
            var __tmp__ = copyN(_b, ((new stdgo.io_test.Io_test.T_wantedAndErrReader() : stdgo.io_test.Io_test.T_wantedAndErrReader)), ((5 : GoInt64)));
            _n = __tmp__._0;
            _err = __tmp__._1;
        };
        if ((_n != ((5 : GoInt64))) || (_err != null)) {
            _t.errorf(((("CopyN(bytes.Buffer, wantedAndErrReader, 5) = %d, %v; want 5, nil" : GoString))), Go.toInterface(_n), Go.toInterface(_err));
        };
        {
            var __tmp__ = copyN(((new stdgo.io_test.Io_test.T_noReadFrom(_b) : stdgo.io_test.Io_test.T_noReadFrom)), ((new stdgo.io_test.Io_test.T_wantedAndErrReader() : stdgo.io_test.Io_test.T_wantedAndErrReader)), ((5 : GoInt64)));
            _n = __tmp__._0;
            _err = __tmp__._1;
        };
        if ((_n != ((5 : GoInt64))) || (_err != null)) {
            _t.errorf(((("CopyN(noReadFrom, wantedAndErrReader, 5) = %d, %v; want 5, nil" : GoString))), Go.toInterface(_n), Go.toInterface(_err));
        };
    }
function testReadAtLeast(_t:stdgo.testing.Testing.T_):Void {
        var _rb:stdgo.bytes.Bytes.Buffer = new stdgo.bytes.Bytes.Buffer();
        _testReadAtLeast(_t, _rb);
    }
function testReadAtLeastWithDataAndEOF(_t:stdgo.testing.Testing.T_):Void {
        var _rb:T_dataAndErrorBuffer = new stdgo.io_test.Io_test.T_dataAndErrorBuffer();
        _rb._err = eof;
        _testReadAtLeast(_t, _rb);
    }
function testReadAtLeastWithDataAndError(_t:stdgo.testing.Testing.T_):Void {
        var _rb:T_dataAndErrorBuffer = new stdgo.io_test.Io_test.T_dataAndErrorBuffer();
        _rb._err = stdgo.fmt.Fmt.errorf(((("fake error" : GoString))));
        _testReadAtLeast(_t, _rb);
    }
function _testReadAtLeast(_t:stdgo.testing.Testing.T_, _rb:ReadWriter):Void {
        _rb.write(((((("0123" : GoString))) : Slice<GoByte>)));
        var _buf:Slice<GoUInt8> = new Slice<GoUInt8>(...[for (i in 0 ... ((((2 : GoInt)) : GoInt)).toBasic()) ((0 : GoUInt8))]);
        var __tmp__ = readAtLeast(_rb, _buf, ((2 : GoInt))), _n:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.error(Go.toInterface(_err));
        };
        if (_n != ((2 : GoInt))) {
            _t.errorf(((("expected to have read 2 bytes, got %v" : GoString))), Go.toInterface(_n));
        };
        {
            var __tmp__ = readAtLeast(_rb, _buf, ((4 : GoInt)));
            _n = __tmp__._0;
            _err = __tmp__._1;
        };
        if (_err != errShortBuffer) {
            _t.errorf(((("expected ErrShortBuffer got %v" : GoString))), Go.toInterface(_err));
        };
        if (_n != ((0 : GoInt))) {
            _t.errorf(((("expected to have read 0 bytes, got %v" : GoString))), Go.toInterface(_n));
        };
        {
            var __tmp__ = readAtLeast(_rb, _buf, ((1 : GoInt)));
            _n = __tmp__._0;
            _err = __tmp__._1;
        };
        if (_err != null) {
            _t.error(Go.toInterface(_err));
        };
        if (_n != ((2 : GoInt))) {
            _t.errorf(((("expected to have read 2 bytes, got %v" : GoString))), Go.toInterface(_n));
        };
        {
            var __tmp__ = readAtLeast(_rb, _buf, ((2 : GoInt)));
            _n = __tmp__._0;
            _err = __tmp__._1;
        };
        if (_err != eof) {
            _t.errorf(((("expected EOF, got %v" : GoString))), Go.toInterface(_err));
        };
        if (_n != ((0 : GoInt))) {
            _t.errorf(((("expected to have read 0 bytes, got %v" : GoString))), Go.toInterface(_n));
        };
        _rb.write(((((("4" : GoString))) : Slice<GoByte>)));
        {
            var __tmp__ = readAtLeast(_rb, _buf, ((2 : GoInt)));
            _n = __tmp__._0;
            _err = __tmp__._1;
        };
        var _want:stdgo.Error = errUnexpectedEOF;
        {
            var __tmp__ = try {
                { value : ((((_rb.__underlying__().value : Dynamic)) : T_dataAndErrorBuffer)), ok : true };
            } catch(_) {
                { value : ((null : Ref<stdgo.io_test.Io_test.T_dataAndErrorBuffer>)), ok : false };
            }, _rb = __tmp__.value, _ok = __tmp__.ok;
            if (_ok && (_rb._err != eof)) {
                _want = _rb._err;
            };
        };
        if (_err != _want) {
            _t.errorf(((("expected %v, got %v" : GoString))), Go.toInterface(_want), Go.toInterface(_err));
        };
        if (_n != ((1 : GoInt))) {
            _t.errorf(((("expected to have read 1 bytes, got %v" : GoString))), Go.toInterface(_n));
        };
    }
function testTeeReader(_t:stdgo.testing.Testing.T_):Void {
        var _src:Slice<GoUInt8> = ((((("hello, world" : GoString))) : Slice<GoByte>));
        var _dst:Slice<GoUInt8> = new Slice<GoUInt8>(...[for (i in 0 ... (((_src != null ? _src.length : ((0 : GoInt))) : GoInt)).toBasic()) ((0 : GoUInt8))]);
        var _rb:Ref<stdgo.bytes.Bytes.Buffer> = stdgo.bytes.Bytes.newBuffer(_src);
        var _wb:Ref<stdgo.bytes.Bytes.Buffer> = new stdgo.bytes.Bytes.Buffer();
        var _r:Reader = teeReader(_rb, _wb);
        {
            var __tmp__ = readFull(_r, _dst), _n:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if ((_err != null) || (_n != (_src != null ? _src.length : ((0 : GoInt))))) {
                _t.fatalf(((("ReadFull(r, dst) = %d, %v; want %d, nil" : GoString))), Go.toInterface(_n), Go.toInterface(_err), Go.toInterface((_src != null ? _src.length : ((0 : GoInt)))));
            };
        };
        if (!stdgo.bytes.Bytes.equal(_dst, _src)) {
            _t.errorf(((("bytes read = %q want %q" : GoString))), Go.toInterface(_dst), Go.toInterface(_src));
        };
        if (!stdgo.bytes.Bytes.equal(_wb.bytes(), _src)) {
            _t.errorf(((("bytes written = %q want %q" : GoString))), Go.toInterface(_wb.bytes()), Go.toInterface(_src));
        };
        {
            var __tmp__ = _r.read(_dst), _n:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if ((_n != ((0 : GoInt))) || (_err != eof)) {
                _t.errorf(((("r.Read at EOF = %d, %v want 0, EOF" : GoString))), Go.toInterface(_n), Go.toInterface(_err));
            };
        };
        _rb = stdgo.bytes.Bytes.newBuffer(_src);
        var __tmp__ = pipe(), _pr:Ref<PipeReader> = __tmp__._0, _pw:Ref<PipeWriter> = __tmp__._1;
        _pr.close();
        _r = teeReader(_rb, _pw);
        {
            var __tmp__ = readFull(_r, _dst), _n:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if ((_n != ((0 : GoInt))) || (_err != errClosedPipe)) {
                _t.errorf(((("closed tee: ReadFull(r, dst) = %d, %v; want 0, EPIPE" : GoString))), Go.toInterface(_n), Go.toInterface(_err));
            };
        };
    }
function testSectionReader_ReadAt(_t:stdgo.testing.Testing.T_):Void {
        var _dat:GoString = ((("a long sample data, 1234567890" : GoString)));
        var _tests:Slice<stdgo.io_test.Io_test.T__struct_1> = ((new Slice<stdgo.io_test.Io_test.T__struct_1>(
((({ _data : ((("" : GoString))), _off : ((0 : GoInt)), _n : ((10 : GoInt)), _bufLen : ((2 : GoInt)), _at : ((0 : GoInt)), _exp : ((("" : GoString))), _err : eof } : stdgo.io_test.Io_test.T__struct_1)) == null ? null : (({ _data : ((("" : GoString))), _off : ((0 : GoInt)), _n : ((10 : GoInt)), _bufLen : ((2 : GoInt)), _at : ((0 : GoInt)), _exp : ((("" : GoString))), _err : eof } : stdgo.io_test.Io_test.T__struct_1)).__copy__()),
((({ _data : _dat, _off : ((0 : GoInt)), _n : (_dat != null ? _dat.length : ((0 : GoInt))), _bufLen : ((0 : GoInt)), _at : ((0 : GoInt)), _exp : ((("" : GoString))), _err : ((null : stdgo.Error)) } : stdgo.io_test.Io_test.T__struct_1)) == null ? null : (({ _data : _dat, _off : ((0 : GoInt)), _n : (_dat != null ? _dat.length : ((0 : GoInt))), _bufLen : ((0 : GoInt)), _at : ((0 : GoInt)), _exp : ((("" : GoString))), _err : ((null : stdgo.Error)) } : stdgo.io_test.Io_test.T__struct_1)).__copy__()),
((({ _data : _dat, _off : (_dat != null ? _dat.length : ((0 : GoInt))), _n : ((1 : GoInt)), _bufLen : ((1 : GoInt)), _at : ((0 : GoInt)), _exp : ((("" : GoString))), _err : eof } : stdgo.io_test.Io_test.T__struct_1)) == null ? null : (({ _data : _dat, _off : (_dat != null ? _dat.length : ((0 : GoInt))), _n : ((1 : GoInt)), _bufLen : ((1 : GoInt)), _at : ((0 : GoInt)), _exp : ((("" : GoString))), _err : eof } : stdgo.io_test.Io_test.T__struct_1)).__copy__()),
((({ _data : _dat, _off : ((0 : GoInt)), _n : (_dat != null ? _dat.length : ((0 : GoInt))) + ((2 : GoInt)), _bufLen : (_dat != null ? _dat.length : ((0 : GoInt))), _at : ((0 : GoInt)), _exp : _dat, _err : ((null : stdgo.Error)) } : stdgo.io_test.Io_test.T__struct_1)) == null ? null : (({ _data : _dat, _off : ((0 : GoInt)), _n : (_dat != null ? _dat.length : ((0 : GoInt))) + ((2 : GoInt)), _bufLen : (_dat != null ? _dat.length : ((0 : GoInt))), _at : ((0 : GoInt)), _exp : _dat, _err : ((null : stdgo.Error)) } : stdgo.io_test.Io_test.T__struct_1)).__copy__()),
((({ _data : _dat, _off : ((0 : GoInt)), _n : (_dat != null ? _dat.length : ((0 : GoInt))), _bufLen : (_dat != null ? _dat.length : ((0 : GoInt))) / ((2 : GoInt)), _at : ((0 : GoInt)), _exp : ((_dat.__slice__(0, (_dat != null ? _dat.length : ((0 : GoInt))) / ((2 : GoInt))) : GoString)), _err : ((null : stdgo.Error)) } : stdgo.io_test.Io_test.T__struct_1)) == null ? null : (({ _data : _dat, _off : ((0 : GoInt)), _n : (_dat != null ? _dat.length : ((0 : GoInt))), _bufLen : (_dat != null ? _dat.length : ((0 : GoInt))) / ((2 : GoInt)), _at : ((0 : GoInt)), _exp : ((_dat.__slice__(0, (_dat != null ? _dat.length : ((0 : GoInt))) / ((2 : GoInt))) : GoString)), _err : ((null : stdgo.Error)) } : stdgo.io_test.Io_test.T__struct_1)).__copy__()),
((({ _data : _dat, _off : ((0 : GoInt)), _n : (_dat != null ? _dat.length : ((0 : GoInt))), _bufLen : (_dat != null ? _dat.length : ((0 : GoInt))), _at : ((0 : GoInt)), _exp : _dat, _err : ((null : stdgo.Error)) } : stdgo.io_test.Io_test.T__struct_1)) == null ? null : (({ _data : _dat, _off : ((0 : GoInt)), _n : (_dat != null ? _dat.length : ((0 : GoInt))), _bufLen : (_dat != null ? _dat.length : ((0 : GoInt))), _at : ((0 : GoInt)), _exp : _dat, _err : ((null : stdgo.Error)) } : stdgo.io_test.Io_test.T__struct_1)).__copy__()),
((({ _data : _dat, _off : ((0 : GoInt)), _n : (_dat != null ? _dat.length : ((0 : GoInt))), _bufLen : (_dat != null ? _dat.length : ((0 : GoInt))) / ((2 : GoInt)), _at : ((2 : GoInt)), _exp : ((_dat.__slice__(((2 : GoInt)), ((2 : GoInt)) + ((_dat != null ? _dat.length : ((0 : GoInt))) / ((2 : GoInt)))) : GoString)), _err : ((null : stdgo.Error)) } : stdgo.io_test.Io_test.T__struct_1)) == null ? null : (({ _data : _dat, _off : ((0 : GoInt)), _n : (_dat != null ? _dat.length : ((0 : GoInt))), _bufLen : (_dat != null ? _dat.length : ((0 : GoInt))) / ((2 : GoInt)), _at : ((2 : GoInt)), _exp : ((_dat.__slice__(((2 : GoInt)), ((2 : GoInt)) + ((_dat != null ? _dat.length : ((0 : GoInt))) / ((2 : GoInt)))) : GoString)), _err : ((null : stdgo.Error)) } : stdgo.io_test.Io_test.T__struct_1)).__copy__()),
((({ _data : _dat, _off : ((3 : GoInt)), _n : (_dat != null ? _dat.length : ((0 : GoInt))), _bufLen : (_dat != null ? _dat.length : ((0 : GoInt))) / ((2 : GoInt)), _at : ((2 : GoInt)), _exp : ((_dat.__slice__(((5 : GoInt)), ((5 : GoInt)) + ((_dat != null ? _dat.length : ((0 : GoInt))) / ((2 : GoInt)))) : GoString)), _err : ((null : stdgo.Error)) } : stdgo.io_test.Io_test.T__struct_1)) == null ? null : (({ _data : _dat, _off : ((3 : GoInt)), _n : (_dat != null ? _dat.length : ((0 : GoInt))), _bufLen : (_dat != null ? _dat.length : ((0 : GoInt))) / ((2 : GoInt)), _at : ((2 : GoInt)), _exp : ((_dat.__slice__(((5 : GoInt)), ((5 : GoInt)) + ((_dat != null ? _dat.length : ((0 : GoInt))) / ((2 : GoInt)))) : GoString)), _err : ((null : stdgo.Error)) } : stdgo.io_test.Io_test.T__struct_1)).__copy__()),
((({ _data : _dat, _off : ((3 : GoInt)), _n : (_dat != null ? _dat.length : ((0 : GoInt))) / ((2 : GoInt)), _bufLen : ((_dat != null ? _dat.length : ((0 : GoInt))) / ((2 : GoInt))) - ((2 : GoInt)), _at : ((2 : GoInt)), _exp : ((_dat.__slice__(((5 : GoInt)), (((5 : GoInt)) + ((_dat != null ? _dat.length : ((0 : GoInt))) / ((2 : GoInt)))) - ((2 : GoInt))) : GoString)), _err : ((null : stdgo.Error)) } : stdgo.io_test.Io_test.T__struct_1)) == null ? null : (({ _data : _dat, _off : ((3 : GoInt)), _n : (_dat != null ? _dat.length : ((0 : GoInt))) / ((2 : GoInt)), _bufLen : ((_dat != null ? _dat.length : ((0 : GoInt))) / ((2 : GoInt))) - ((2 : GoInt)), _at : ((2 : GoInt)), _exp : ((_dat.__slice__(((5 : GoInt)), (((5 : GoInt)) + ((_dat != null ? _dat.length : ((0 : GoInt))) / ((2 : GoInt)))) - ((2 : GoInt))) : GoString)), _err : ((null : stdgo.Error)) } : stdgo.io_test.Io_test.T__struct_1)).__copy__()),
((({ _data : _dat, _off : ((3 : GoInt)), _n : (_dat != null ? _dat.length : ((0 : GoInt))) / ((2 : GoInt)), _bufLen : ((_dat != null ? _dat.length : ((0 : GoInt))) / ((2 : GoInt))) + ((2 : GoInt)), _at : ((2 : GoInt)), _exp : ((_dat.__slice__(((5 : GoInt)), (((5 : GoInt)) + ((_dat != null ? _dat.length : ((0 : GoInt))) / ((2 : GoInt)))) - ((2 : GoInt))) : GoString)), _err : eof } : stdgo.io_test.Io_test.T__struct_1)) == null ? null : (({ _data : _dat, _off : ((3 : GoInt)), _n : (_dat != null ? _dat.length : ((0 : GoInt))) / ((2 : GoInt)), _bufLen : ((_dat != null ? _dat.length : ((0 : GoInt))) / ((2 : GoInt))) + ((2 : GoInt)), _at : ((2 : GoInt)), _exp : ((_dat.__slice__(((5 : GoInt)), (((5 : GoInt)) + ((_dat != null ? _dat.length : ((0 : GoInt))) / ((2 : GoInt)))) - ((2 : GoInt))) : GoString)), _err : eof } : stdgo.io_test.Io_test.T__struct_1)).__copy__()),
((({ _data : _dat, _off : ((0 : GoInt)), _n : ((0 : GoInt)), _bufLen : ((0 : GoInt)), _at : ((-1 : GoInt)), _exp : ((("" : GoString))), _err : eof } : stdgo.io_test.Io_test.T__struct_1)) == null ? null : (({ _data : _dat, _off : ((0 : GoInt)), _n : ((0 : GoInt)), _bufLen : ((0 : GoInt)), _at : ((-1 : GoInt)), _exp : ((("" : GoString))), _err : eof } : stdgo.io_test.Io_test.T__struct_1)).__copy__()),
((({ _data : _dat, _off : ((0 : GoInt)), _n : ((0 : GoInt)), _bufLen : ((0 : GoInt)), _at : ((1 : GoInt)), _exp : ((("" : GoString))), _err : eof } : stdgo.io_test.Io_test.T__struct_1)) == null ? null : (({ _data : _dat, _off : ((0 : GoInt)), _n : ((0 : GoInt)), _bufLen : ((0 : GoInt)), _at : ((1 : GoInt)), _exp : ((("" : GoString))), _err : eof } : stdgo.io_test.Io_test.T__struct_1)).__copy__())) : Slice<stdgo.io_test.Io_test.T__struct_1>));
        for (_i => _tt in _tests) {
            var _r:Ref<stdgo.strings.Strings.Reader> = stdgo.strings.Strings.newReader(_tt._data);
            var _s:Ref<SectionReader> = newSectionReader(_r, ((_tt._off : GoInt64)), ((_tt._n : GoInt64)));
            var _buf:Slice<GoUInt8> = new Slice<GoUInt8>(...[for (i in 0 ... ((_tt._bufLen : GoInt)).toBasic()) ((0 : GoUInt8))]);
            {
                var __tmp__ = _s.readAt(_buf, ((_tt._at : GoInt64))), _n:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (((_n != (_tt._exp != null ? _tt._exp.length : ((0 : GoInt)))) || (((((_buf.__slice__(0, _n) : Slice<GoUInt8>)) : GoString)) != _tt._exp)) || (_err != _tt._err)) {
                    _t.fatalf(((("%d: ReadAt(%d) = %q, %v; expected %q, %v" : GoString))), Go.toInterface(_i), Go.toInterface(_tt._at), Go.toInterface(((_buf.__slice__(0, _n) : Slice<GoUInt8>))), Go.toInterface(_err), Go.toInterface(_tt._exp), Go.toInterface(_tt._err));
                };
            };
        };
    }
function testSectionReader_Seek(_t:stdgo.testing.Testing.T_):Void {
        var _br:Ref<stdgo.bytes.Bytes.Reader> = stdgo.bytes.Bytes.newReader(((((("foo" : GoString))) : Slice<GoByte>)));
        var _sr:Ref<SectionReader> = newSectionReader(_br, ((0 : GoInt64)), (((((("foo" : GoString))) != null ? ((("foo" : GoString))).length : ((0 : GoInt))) : GoInt64)));
        for (_0 => _whence in ((new Slice<GoInt>(((0 : GoInt)), ((1 : GoInt)), ((2 : GoInt))) : Slice<GoInt>))) {
            {
                var _offset:GoInt64 = ((((-3 : GoInt64)) : GoInt64));
                Go.cfor(_offset <= ((4 : GoInt64)), _offset++, {
                    var __tmp__ = _br.seek(_offset, _whence), _brOff:GoInt64 = __tmp__._0, _brErr:stdgo.Error = __tmp__._1;
                    var __tmp__ = _sr.seek(_offset, _whence), _srOff:GoInt64 = __tmp__._0, _srErr:stdgo.Error = __tmp__._1;
                    if (((_brErr != null) != (_srErr != null)) || (_brOff != _srOff)) {
                        _t.errorf(((("For whence %d, offset %d: bytes.Reader.Seek = (%v, %v) != SectionReader.Seek = (%v, %v)" : GoString))), Go.toInterface(_whence), Go.toInterface(_offset), Go.toInterface(_brOff), Go.toInterface(_brErr), Go.toInterface(_srErr), Go.toInterface(_srOff));
                    };
                });
            };
        };
        var __tmp__ = _sr.seek(((100 : GoInt64)), ((0 : GoInt))), _got:GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if ((_err != null) || (_got != ((100 : GoInt64)))) {
            _t.errorf(((("Seek = %v, %v; want 100, nil" : GoString))), Go.toInterface(_got), Go.toInterface(_err));
        };
        var __tmp__ = _sr.read(new Slice<GoUInt8>(...[for (i in 0 ... ((((10 : GoInt)) : GoInt)).toBasic()) ((0 : GoUInt8))])), _n:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if ((_n != ((0 : GoInt))) || (_err != eof)) {
            _t.errorf(((("Read = %v, %v; want 0, EOF" : GoString))), Go.toInterface(_n), Go.toInterface(_err));
        };
    }
function testSectionReader_Size(_t:stdgo.testing.Testing.T_):Void {
        var _tests:Slice<stdgo.io_test.Io_test.T__struct_2> = ((new Slice<stdgo.io_test.Io_test.T__struct_2>(((new stdgo.io_test.Io_test.T__struct_2(((("a long sample data, 1234567890" : GoString))), ((30 : GoInt64))) : stdgo.io_test.Io_test.T__struct_2)), ((new stdgo.io_test.Io_test.T__struct_2(((("" : GoString))), ((0 : GoInt64))) : stdgo.io_test.Io_test.T__struct_2))) : Slice<stdgo.io_test.Io_test.T__struct_2>));
        for (_0 => _tt in _tests) {
            var _r:Ref<stdgo.strings.Strings.Reader> = stdgo.strings.Strings.newReader(_tt._data);
            var _sr:Ref<SectionReader> = newSectionReader(_r, ((0 : GoInt64)), (((_tt._data != null ? _tt._data.length : ((0 : GoInt))) : GoInt64)));
            {
                var _got:GoInt64 = _sr.size();
                if (_got != _tt._want) {
                    _t.errorf(((("Size = %v; want %v" : GoString))), Go.toInterface(_got), Go.toInterface(_tt._want));
                };
            };
        };
    }
function testSectionReader_Max(_t:stdgo.testing.Testing.T_):Void {
        var _r:Ref<stdgo.strings.Strings.Reader> = stdgo.strings.Strings.newReader(((("abcdef" : GoString))));
        {};
        var _sr:Ref<SectionReader> = newSectionReader(_r, ((3 : GoInt64)), (("9223372036854775807" : GoInt64)));
        var __tmp__ = _sr.read(new Slice<GoUInt8>(...[for (i in 0 ... ((((3 : GoInt)) : GoInt)).toBasic()) ((0 : GoUInt8))])), _n:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if ((_n != ((3 : GoInt))) || (_err != null)) {
            _t.errorf(((("Read = %v %v, want 3, nil" : GoString))), Go.toInterface(_n), Go.toInterface(_err));
        };
        {
            var __tmp__ = _sr.read(new Slice<GoUInt8>(...[for (i in 0 ... ((((3 : GoInt)) : GoInt)).toBasic()) ((0 : GoUInt8))]));
            _n = __tmp__._0;
            _err = __tmp__._1;
        };
        if ((_n != ((0 : GoInt))) || (_err != eof)) {
            _t.errorf(((("Read = %v, %v, want 0, EOF" : GoString))), Go.toInterface(_n), Go.toInterface(_err));
        };
    }
function testCopyLargeWriter(_t:stdgo.testing.Testing.T_):Void {
        var _want:stdgo.Error = errInvalidWrite;
        var _rb:Ref<stdgo.io_test.Io_test.Buffer> = new stdgo.io_test.Io_test.Buffer();
        var _wb:stdgo.io_test.Io_test.T_largeWriter = ((new stdgo.io_test.Io_test.T_largeWriter() : stdgo.io_test.Io_test.T_largeWriter));
        _rb.writeString(((("hello, world." : GoString))));
        {
            var __tmp__ = copy(_wb, _rb), _0:GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != _want) {
                _t.errorf(((("Copy error: got %v, want %v" : GoString))), Go.toInterface(_err), Go.toInterface(_want));
            };
        };
        _want = stdgo.errors.Errors.new_(((("largeWriterError" : GoString))));
        _rb = new stdgo.io_test.Io_test.Buffer();
        _wb = ((({ _err : _want } : stdgo.io_test.Io_test.T_largeWriter)) == null ? null : (({ _err : _want } : stdgo.io_test.Io_test.T_largeWriter)).__copy__());
        _rb.writeString(((("hello, world." : GoString))));
        {
            var __tmp__ = copy(_wb, _rb), _1:GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != _want) {
                _t.errorf(((("Copy error: got %v, want %v" : GoString))), Go.toInterface(_err), Go.toInterface(_want));
            };
        };
    }
function testMultiReader(_t:stdgo.testing.Testing.T_):Void {
        var _mr:Reader = ((null : Reader));
        var _buf:Slice<GoByte> = ((null : Slice<GoUInt8>));
        var _nread:GoInt = ((0 : GoInt));
        var _withFooBar:(() -> Void) -> Void = function(_tests:() -> Void):Void {
            var _r1:Ref<stdgo.strings.Strings.Reader> = stdgo.strings.Strings.newReader(((("foo " : GoString))));
            var _r2:Ref<stdgo.strings.Strings.Reader> = stdgo.strings.Strings.newReader(((("" : GoString))));
            var _r3:Ref<stdgo.strings.Strings.Reader> = stdgo.strings.Strings.newReader(((("bar" : GoString))));
            _mr = multiReader(_r1, _r2, _r3);
            _buf = new Slice<GoUInt8>(...[for (i in 0 ... ((((20 : GoInt)) : GoInt)).toBasic()) ((0 : GoUInt8))]);
            _tests();
        };
        var _expectRead:(GoInt, GoString, stdgo.Error) -> Void = function(_size:GoInt, _expected:GoString, _eerr:Error):Void {
            _nread++;
            var __tmp__ = _mr.read(((_buf.__slice__(((0 : GoInt)), _size) : Slice<GoUInt8>))), _n:GoInt = __tmp__._0, _gerr:stdgo.Error = __tmp__._1;
            if (_n != (_expected != null ? _expected.length : ((0 : GoInt)))) {
                _t.errorf(((("#%d, expected %d bytes; got %d" : GoString))), Go.toInterface(_nread), Go.toInterface((_expected != null ? _expected.length : ((0 : GoInt)))), Go.toInterface(_n));
            };
            var _got:GoString = ((((_buf.__slice__(((0 : GoInt)), _n) : Slice<GoUInt8>)) : GoString));
            if (_got != _expected) {
                _t.errorf(((("#%d, expected %q; got %q" : GoString))), Go.toInterface(_nread), Go.toInterface(_expected), Go.toInterface(_got));
            };
            if (_gerr != _eerr) {
                _t.errorf(((("#%d, expected error %v; got %v" : GoString))), Go.toInterface(_nread), Go.toInterface(_eerr), Go.toInterface(_gerr));
            };
            _buf = ((_buf.__slice__(_n) : Slice<GoUInt8>));
        };
        _withFooBar(function():Void {
            _expectRead(((2 : GoInt)), ((("fo" : GoString))), ((null : stdgo.Error)));
            _expectRead(((5 : GoInt)), ((("o " : GoString))), ((null : stdgo.Error)));
            _expectRead(((5 : GoInt)), ((("bar" : GoString))), ((null : stdgo.Error)));
            _expectRead(((5 : GoInt)), ((("" : GoString))), eof);
        });
        _withFooBar(function():Void {
            _expectRead(((4 : GoInt)), ((("foo " : GoString))), ((null : stdgo.Error)));
            _expectRead(((1 : GoInt)), ((("b" : GoString))), ((null : stdgo.Error)));
            _expectRead(((3 : GoInt)), ((("ar" : GoString))), ((null : stdgo.Error)));
            _expectRead(((1 : GoInt)), ((("" : GoString))), eof);
        });
        _withFooBar(function():Void {
            _expectRead(((5 : GoInt)), ((("foo " : GoString))), ((null : stdgo.Error)));
        });
    }
function testMultiWriter(_t:stdgo.testing.Testing.T_):Void {
        var _sink:Ref<stdgo.bytes.Bytes.Buffer> = new stdgo.bytes.Bytes.Buffer();
        _testMultiWriter(_t, ((new stdgo.io_test.Io_test.T__struct_3(_sink, _sink) : stdgo.io_test.Io_test.T__struct_3)));
    }
function testMultiWriter_String(_t:stdgo.testing.Testing.T_):Void {
        _testMultiWriter(_t, new stdgo.bytes.Bytes.Buffer());
    }
@:structInit class T_simpleWriter_testMultiWriter_WriteStringSingleAlloc_0 {
    @:embedded
    public var writer : Writer = ((null : Writer));
    public function new(?writer:Writer) {
        if (writer != null) this.writer = writer;
    }
    public function write(_p:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : stdgo.Error; } return writer.write(_p);
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_simpleWriter_testMultiWriter_WriteStringSingleAlloc_0(writer);
    }
}
function testMultiWriter_WriteStringSingleAlloc(_t:stdgo.testing.Testing.T_):Void {
        var _sink1:stdgo.bytes.Bytes.Buffer = new stdgo.bytes.Bytes.Buffer(), _sink2:stdgo.bytes.Bytes.Buffer = new stdgo.bytes.Bytes.Buffer();
        {};
        var _mw:Writer = multiWriter(((new stdgo.io_test.Io_test.T_simpleWriter_testMultiWriter_WriteStringSingleAlloc_0(_sink1) : stdgo.io_test.Io_test.T_simpleWriter_testMultiWriter_WriteStringSingleAlloc_0)), ((new stdgo.io_test.Io_test.T_simpleWriter_testMultiWriter_WriteStringSingleAlloc_0(_sink2) : stdgo.io_test.Io_test.T_simpleWriter_testMultiWriter_WriteStringSingleAlloc_0)));
        var _allocs:GoInt = ((stdgo.testing.Testing.allocsPerRun(((1000 : GoInt)), function():Void {
            writeString(_mw, ((("foo" : GoString))));
        }) : GoInt));
        if (_allocs != ((1 : GoInt))) {
            _t.errorf(((("num allocations = %d; want 1" : GoString))), Go.toInterface(_allocs));
        };
    }
function testMultiWriter_StringCheckCall(_t:stdgo.testing.Testing.T_):Void {
        var _c:T_writeStringChecker = new stdgo.io_test.Io_test.T_writeStringChecker();
        var _mw:Writer = multiWriter(_c);
        writeString(_mw, ((("foo" : GoString))));
        if (!_c._called) {
            _t.error(Go.toInterface(((("did not see WriteString call to writeStringChecker" : GoString)))));
        };
    }
function _testMultiWriter(_t:stdgo.testing.Testing.T_, _sink:T__interface_0):Void {
        var _sha1:stdgo.hash.Hash.Hash = _sha1.new_();
        var _mw:Writer = multiWriter(_sha1, _sink);
        var _sourceString:GoString = ((("My input text." : GoString)));
        var _source:Ref<stdgo.strings.Strings.Reader> = stdgo.strings.Strings.newReader(_sourceString);
        var __tmp__ = copy(_mw, _source), _written:GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_written != (((_sourceString != null ? _sourceString.length : ((0 : GoInt))) : GoInt64))) {
            _t.errorf(((("short write of %d, not %d" : GoString))), Go.toInterface(_written), Go.toInterface((_sourceString != null ? _sourceString.length : ((0 : GoInt)))));
        };
        if (_err != null) {
            _t.errorf(((("unexpected error: %v" : GoString))), Go.toInterface(_err));
        };
        var _sha1hex:GoString = stdgo.fmt.Fmt.sprintf(((("%x" : GoString))), Go.toInterface(_sha1.sum(((null : Slice<GoUInt8>)))));
        if (_sha1hex != ((("01cb303fa8c30a64123067c5aa6284ba7ec2d31b" : GoString)))) {
            _t.error(Go.toInterface(((("incorrect sha1 value" : GoString)))));
        };
        if (((_sink.toString() : GoString)) != _sourceString) {
            _t.errorf(((("expected %q; got %q" : GoString))), Go.toInterface(_sourceString), Go.toInterface(((_sink.toString() : GoString))));
        };
    }
function testMultiWriterSingleChainFlatten(_t:stdgo.testing.Testing.T_):Void {
        var _pc:Slice<GoUIntptr> = new Slice<GoUIntptr>(...[for (i in 0 ... ((((1000 : GoInt)) : GoInt)).toBasic()) ((0 : GoUIntptr))]);
        var _n:GoInt = stdgo.runtime.Runtime.callers(((0 : GoInt)), _pc);
        var _myDepth:GoInt = _callDepth(((_pc.__slice__(0, _n) : Slice<GoUIntptr>)));
        var _writeDepth:GoInt = ((0 : GoInt));
        var _w:Writer = multiWriter(new stdgo.io_test.Io_test.T_writerFunc_wrapper(T_writerFunc_static_extension(function(_p:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } {
            var _n:GoInt = stdgo.runtime.Runtime.callers(((1 : GoInt)), _pc);
            _writeDepth = _writeDepth + (_callDepth(((_pc.__slice__(0, _n) : Slice<GoUIntptr>))));
            return { _0 : ((0 : GoInt)), _1 : ((null : stdgo.Error)) };
        })));
        var _mw:Writer = _w;
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < ((100 : GoInt)), _i++, {
                _mw = multiWriter(_w);
            });
        };
        _mw = multiWriter(_w, _mw, _w, _mw);
        _mw.write(((null : Slice<GoUInt8>)));
        if (_writeDepth != (((4 : GoInt)) * (_myDepth + ((2 : GoInt))))) {
            _t.errorf(((("multiWriter did not flatten chained multiWriters: expected writeDepth %d, got %d" : GoString))), Go.toInterface(((4 : GoInt)) * (_myDepth + ((2 : GoInt)))), Go.toInterface(_writeDepth));
        };
    }
function testMultiWriterError(_t:stdgo.testing.Testing.T_):Void {
        var _f1:stdgo.io_test.Io_test.T_writerFunc = T_writerFunc_static_extension(function(_p:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } {
            return { _0 : (_p != null ? _p.length : ((0 : GoInt))) / ((2 : GoInt)), _1 : errShortWrite };
        });
        var _f2:stdgo.io_test.Io_test.T_writerFunc = T_writerFunc_static_extension(function(_p:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } {
            _t.errorf(((("MultiWriter called f2.Write" : GoString))));
            return { _0 : (_p != null ? _p.length : ((0 : GoInt))), _1 : ((null : stdgo.Error)) };
        });
        var _w:Writer = multiWriter(new stdgo.io_test.Io_test.T_writerFunc_wrapper(_f1), new stdgo.io_test.Io_test.T_writerFunc_wrapper(_f2));
        var __tmp__ = _w.write(new Slice<GoUInt8>(...[for (i in 0 ... ((((100 : GoInt)) : GoInt)).toBasic()) ((0 : GoUInt8))])), _n:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if ((_n != ((50 : GoInt))) || (_err != errShortWrite)) {
            _t.errorf(((("Write = %d, %v, want 50, ErrShortWrite" : GoString))), Go.toInterface(_n), Go.toInterface(_err));
        };
    }
function testMultiReaderCopy(_t:stdgo.testing.Testing.T_):Void {
        var _slice:Slice<Reader> = ((new Slice<Reader>(stdgo.strings.Strings.newReader(((("hello world" : GoString))))) : Slice<Reader>));
        var _r:Reader = multiReader(..._slice.__toArray__());
        if (_slice != null) _slice[((0 : GoInt))] = ((null : Reader));
        var __tmp__ = readAll(_r), _data:Slice<GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if ((_err != null) || (((_data : GoString)) != ((("hello world" : GoString))))) {
            _t.errorf(((("ReadAll() = %q, %v, want %q, nil" : GoString))), Go.toInterface(_data), Go.toInterface(_err), Go.toInterface(((("hello world" : GoString)))));
        };
    }
function testMultiWriterCopy(_t:stdgo.testing.Testing.T_):Void {
        var _buf:stdgo.bytes.Bytes.Buffer = new stdgo.bytes.Bytes.Buffer();
        var _slice:Slice<Writer> = ((new Slice<Writer>(_buf) : Slice<Writer>));
        var _w:Writer = multiWriter(..._slice.__toArray__());
        if (_slice != null) _slice[((0 : GoInt))] = ((null : Writer));
        var __tmp__ = _w.write(((((("hello world" : GoString))) : Slice<GoByte>))), _n:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if ((_err != null) || (_n != ((11 : GoInt)))) {
            _t.errorf(((("Write(`hello world`) = %d, %v, want 11, nil" : GoString))), Go.toInterface(_n), Go.toInterface(_err));
        };
        if (((_buf.toString() : GoString)) != ((("hello world" : GoString)))) {
            _t.errorf(((("buf.String() = %q, want %q" : GoString))), Go.toInterface(((_buf.toString() : GoString))), Go.toInterface(((("hello world" : GoString)))));
        };
    }
function _callDepth(_callers:Slice<GoUIntptr>):GoInt {
        var _depth:GoInt = ((0 : GoInt));
        var _frames:Ref<stdgo.runtime.Runtime.Frames> = stdgo.runtime.Runtime.callersFrames(_callers);
        var _more:Bool = true;
        while (_more) {
            {
                var __tmp__ = _frames.next();
                _more = __tmp__._1;
            };
            _depth++;
        };
        return _depth;
    }
function testMultiReaderFlatten(_t:stdgo.testing.Testing.T_):Void {
        var _pc:Slice<GoUIntptr> = new Slice<GoUIntptr>(...[for (i in 0 ... ((((1000 : GoInt)) : GoInt)).toBasic()) ((0 : GoUIntptr))]);
        var _n:GoInt = stdgo.runtime.Runtime.callers(((0 : GoInt)), _pc);
        var _myDepth:GoInt = _callDepth(((_pc.__slice__(0, _n) : Slice<GoUIntptr>)));
        var _readDepth:GoInt = ((0 : GoInt));
        var _r:Reader = multiReader(new stdgo.io_test.Io_test.T_readerFunc_wrapper(T_readerFunc_static_extension(function(_p:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } {
            var _n:GoInt = stdgo.runtime.Runtime.callers(((1 : GoInt)), _pc);
            _readDepth = _callDepth(((_pc.__slice__(0, _n) : Slice<GoUIntptr>)));
            return { _0 : ((0 : GoInt)), _1 : stdgo.errors.Errors.new_(((("irrelevant" : GoString)))) };
        })));
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < ((100 : GoInt)), _i++, {
                _r = multiReader(_r);
            });
        };
        _r.read(((null : Slice<GoUInt8>)));
        if (_readDepth != (_myDepth + ((2 : GoInt)))) {
            _t.errorf(((("multiReader did not flatten chained multiReaders: expected readDepth %d, got %d" : GoString))), Go.toInterface(_myDepth + ((2 : GoInt))), Go.toInterface(_readDepth));
        };
    }
function testMultiReaderSingleByteWithEOF(_t:stdgo.testing.Testing.T_):Void {
        var __tmp__ = readAll(limitReader(multiReader(new stdgo.io_test.Io_test.T_byteAndEOFReader_wrapper(Go.pointer(((((((("a" : GoString))).code : GoRune)) : T_byteAndEOFReader)))), new stdgo.io_test.Io_test.T_byteAndEOFReader_wrapper(Go.pointer(((((((("b" : GoString))).code : GoRune)) : T_byteAndEOFReader))))), ((10 : GoInt64)))), _got:Slice<GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.fatal(Go.toInterface(_err));
        };
        {};
        if (((_got : GoString)) != ((("ab" : GoString)))) {
            _t.errorf(((("got %q; want %q" : GoString))), Go.toInterface(_got), Go.toInterface(((("ab" : GoString)))));
        };
    }
function testMultiReaderFinalEOF(_t:stdgo.testing.Testing.T_):Void {
        var _r:Reader = multiReader(stdgo.bytes.Bytes.newReader(((null : Slice<GoUInt8>))), new stdgo.io_test.Io_test.T_byteAndEOFReader_wrapper(Go.pointer(((((((("a" : GoString))).code : GoRune)) : T_byteAndEOFReader)))));
        var _buf:Slice<GoUInt8> = new Slice<GoUInt8>(...[for (i in 0 ... ((((2 : GoInt)) : GoInt)).toBasic()) ((0 : GoUInt8))]);
        var __tmp__ = _r.read(_buf), _n:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if ((_n != ((1 : GoInt))) || (_err != eof)) {
            _t.errorf(((("got %v, %v; want 1, EOF" : GoString))), Go.toInterface(_n), Go.toInterface(_err));
        };
    }
function testMultiReaderFreesExhaustedReaders(_t:stdgo.testing.Testing.T_):Void {
        var _mr:Reader = ((null : Reader));
        var _closed:Chan<stdgo.io_test.Io_test.T_wantedAndErrReader> = new Chan<stdgo.io_test.Io_test.T_wantedAndErrReader>(0, () -> new stdgo.io_test.Io_test.T_wantedAndErrReader());
        {
            var a = function():Void {
                var _buf1:Ref<stdgo.bytes.Bytes.Reader> = stdgo.bytes.Bytes.newReader(((((("foo" : GoString))) : Slice<GoByte>)));
                var _buf2:Ref<stdgo.bytes.Bytes.Reader> = stdgo.bytes.Bytes.newReader(((((("bar" : GoString))) : Slice<GoByte>)));
                _mr = multiReader(_buf1, _buf2);
                stdgo.runtime.Runtime.setFinalizer(Go.toInterface(_buf1), Go.toInterface(function(_0:stdgo.bytes.Bytes.Reader):Void {
                    if (_closed != null) _closed.__close__();
                }));
            };
            a();
        };
        var _buf:Slice<GoUInt8> = new Slice<GoUInt8>(...[for (i in 0 ... ((((4 : GoInt)) : GoInt)).toBasic()) ((0 : GoUInt8))]);
        {
            var __tmp__ = readFull(_mr, _buf), _n:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if ((_err != null) || (((_buf : GoString)) != ((("foob" : GoString))))) {
                _t.fatalf("ReadFull = %d (%q), %v; want 3, \"foo\", nil", Go.toInterface(_n), Go.toInterface(((_buf.__slice__(0, _n) : Slice<GoUInt8>))), Go.toInterface(_err));
            };
        };
        stdgo.runtime.Runtime.gc();
        Go.select([stdgo.time.Time.after((("5000000000" : GoInt64))).__get__() => {
            _t.fatal(Go.toInterface(((("timeout waiting for collection of buf1" : GoString)))));
        }, _closed.__get__() => {}]);
        {
            var __tmp__ = readFull(_mr, ((_buf.__slice__(0, ((2 : GoInt))) : Slice<GoUInt8>))), _n:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if ((_err != null) || (((((_buf.__slice__(0, ((2 : GoInt))) : Slice<GoUInt8>)) : GoString)) != ((("ar" : GoString))))) {
                _t.fatalf("ReadFull = %d (%q), %v; want 2, \"ar\", nil", Go.toInterface(_n), Go.toInterface(((_buf.__slice__(0, _n) : Slice<GoUInt8>))), Go.toInterface(_err));
            };
        };
    }
function testInterleavedMultiReader(_t:stdgo.testing.Testing.T_):Void {
        var _r1:Ref<stdgo.strings.Strings.Reader> = stdgo.strings.Strings.newReader(((("123" : GoString))));
        var _r2:Ref<stdgo.strings.Strings.Reader> = stdgo.strings.Strings.newReader(((("45678" : GoString))));
        var _mr1:Reader = multiReader(_r1, _r2);
        var _mr2:Reader = multiReader(_mr1);
        var _buf:Slice<GoUInt8> = new Slice<GoUInt8>(...[for (i in 0 ... ((((4 : GoInt)) : GoInt)).toBasic()) ((0 : GoUInt8))]);
        var __tmp__ = readFull(_mr2, _buf), _n:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        {
            var _got:GoString = ((((_buf.__slice__(0, _n) : Slice<GoUInt8>)) : GoString));
            if ((_got != ((("1234" : GoString)))) || (_err != null)) {
                _t.errorf("ReadFull(mr2) = (%q, %v), want (\"1234\", nil)", Go.toInterface(_got), Go.toInterface(_err));
            };
        };
        {
            var __tmp__ = readFull(_mr1, _buf);
            _n = __tmp__._0;
            _err = __tmp__._1;
        };
        {
            var _got:GoString = ((((_buf.__slice__(0, _n) : Slice<GoUInt8>)) : GoString));
            if ((_got != ((("5678" : GoString)))) || (_err != null)) {
                _t.errorf("ReadFull(mr1) = (%q, %v), want (\"5678\", nil)", Go.toInterface(_got), Go.toInterface(_err));
            };
        };
    }
function _checkWrite(_t:stdgo.testing.Testing.T_, _w:Writer, _data:Slice<GoByte>, _c:Chan<GoInt>):Void {
        var __tmp__ = _w.write(_data), _n:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.errorf(((("write: %v" : GoString))), Go.toInterface(_err));
        };
        if (_n != (_data != null ? _data.length : ((0 : GoInt)))) {
            _t.errorf(((("short write: %d != %d" : GoString))), Go.toInterface(_n), Go.toInterface((_data != null ? _data.length : ((0 : GoInt)))));
        };
        _c.__send__(((0 : GoInt)));
    }
function testPipe1(_t:stdgo.testing.Testing.T_):Void {
        var _c:Chan<GoInt> = new Chan<GoInt>(0, () -> ((0 : GoInt)));
        var __tmp__ = pipe(), _r:Ref<PipeReader> = __tmp__._0, _w:Ref<PipeWriter> = __tmp__._1;
        var _buf:Slice<GoUInt8> = new Slice<GoUInt8>(...[for (i in 0 ... ((((64 : GoInt)) : GoInt)).toBasic()) ((0 : GoUInt8))]);
        Go.routine(() -> _checkWrite(_t, _w, ((((("hello, world" : GoString))) : Slice<GoByte>)), _c));
        var __tmp__ = _r.read(_buf), _n:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.errorf(((("read: %v" : GoString))), Go.toInterface(_err));
        } else if ((_n != ((12 : GoInt))) || (((((_buf.__slice__(((0 : GoInt)), ((12 : GoInt))) : Slice<GoUInt8>)) : GoString)) != ((("hello, world" : GoString))))) {
            _t.errorf(((("bad read: got %q" : GoString))), Go.toInterface(((_buf.__slice__(((0 : GoInt)), _n) : Slice<GoUInt8>))));
        };
        _c.__get__();
        _r.close();
        _w.close();
    }
function _reader(_t:stdgo.testing.Testing.T_, _r:Reader, _c:Chan<GoInt>):Void {
        var _buf:Slice<GoUInt8> = new Slice<GoUInt8>(...[for (i in 0 ... ((((64 : GoInt)) : GoInt)).toBasic()) ((0 : GoUInt8))]);
        while (true) {
            var __tmp__ = _r.read(_buf), _n:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err == eof) {
                _c.__send__(((0 : GoInt)));
                break;
            };
            if (_err != null) {
                _t.errorf(((("read: %v" : GoString))), Go.toInterface(_err));
            };
            _c.__send__(_n);
        };
    }
function testPipe2(_t:stdgo.testing.Testing.T_):Void {
        var _c:Chan<GoInt> = new Chan<GoInt>(0, () -> ((0 : GoInt)));
        var __tmp__ = pipe(), _r:Ref<PipeReader> = __tmp__._0, _w:Ref<PipeWriter> = __tmp__._1;
        Go.routine(() -> _reader(_t, _r, _c));
        var _buf:Slice<GoUInt8> = new Slice<GoUInt8>(...[for (i in 0 ... ((((64 : GoInt)) : GoInt)).toBasic()) ((0 : GoUInt8))]);
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < ((5 : GoInt)), _i++, {
                var _p:Slice<GoUInt8> = ((_buf.__slice__(((0 : GoInt)), ((5 : GoInt)) + (_i * ((10 : GoInt)))) : Slice<GoUInt8>));
                var __tmp__ = _w.write(_p), _n:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_n != (_p != null ? _p.length : ((0 : GoInt)))) {
                    _t.errorf(((("wrote %d, got %d" : GoString))), Go.toInterface((_p != null ? _p.length : ((0 : GoInt)))), Go.toInterface(_n));
                };
                if (_err != null) {
                    _t.errorf(((("write: %v" : GoString))), Go.toInterface(_err));
                };
                var _nn:GoInt = _c.__get__();
                if (_nn != _n) {
                    _t.errorf(((("wrote %d, read got %d" : GoString))), Go.toInterface(_n), Go.toInterface(_nn));
                };
            });
        };
        _w.close();
        var _nn:GoInt = _c.__get__();
        if (_nn != ((0 : GoInt))) {
            _t.errorf(((("final read got %d" : GoString))), Go.toInterface(_nn));
        };
    }
function _writer(_w:WriteCloser, _buf:Slice<GoByte>, _c:Chan<T_pipeReturn>):Void {
        var __tmp__ = _w.write(_buf), _n:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        _w.close();
        _c.__send__(((new stdgo.io_test.Io_test.T_pipeReturn(_n, _err) : stdgo.io_test.Io_test.T_pipeReturn)));
    }
function testPipe3(_t:stdgo.testing.Testing.T_):Void {
        var _c:Chan<stdgo.io_test.Io_test.T_pipeReturn> = new Chan<stdgo.io_test.Io_test.T_pipeReturn>(0, () -> new stdgo.io_test.Io_test.T_pipeReturn());
        var __tmp__ = pipe(), _r:Ref<PipeReader> = __tmp__._0, _w:Ref<PipeWriter> = __tmp__._1;
        var _wdat:Slice<GoUInt8> = new Slice<GoUInt8>(...[for (i in 0 ... ((((128 : GoInt)) : GoInt)).toBasic()) ((0 : GoUInt8))]);
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < (_wdat != null ? _wdat.length : ((0 : GoInt))), _i++, {
                if (_wdat != null) _wdat[_i] = ((_i : GoByte));
            });
        };
        Go.routine(() -> _writer(_w, _wdat, _c));
        var _rdat:Slice<GoUInt8> = new Slice<GoUInt8>(...[for (i in 0 ... ((((1024 : GoInt)) : GoInt)).toBasic()) ((0 : GoUInt8))]);
        var _tot:GoInt = ((0 : GoInt));
        {
            var _n:GoInt = ((1 : GoInt));
            Go.cfor(_n <= ((256 : GoInt)), _n = _n * (((2 : GoInt))), {
                var __tmp__ = _r.read(((_rdat.__slice__(_tot, _tot + _n) : Slice<GoUInt8>))), _nn:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if ((_err != null) && (_err != eof)) {
                    _t.fatalf(((("read: %v" : GoString))), Go.toInterface(_err));
                };
                var _expect:GoInt = _n;
                if (_n == ((128 : GoInt))) {
                    _expect = ((1 : GoInt));
                } else if (_n == ((256 : GoInt))) {
                    _expect = ((0 : GoInt));
                    if (_err != eof) {
                        _t.fatalf(((("read at end: %v" : GoString))), Go.toInterface(_err));
                    };
                };
                if (_nn != _expect) {
                    _t.fatalf(((("read %d, expected %d, got %d" : GoString))), Go.toInterface(_n), Go.toInterface(_expect), Go.toInterface(_nn));
                };
                _tot = _tot + (_nn);
            });
        };
        var _pr:stdgo.io_test.Io_test.T_pipeReturn = (_c.__get__() == null ? null : _c.__get__().__copy__());
        if ((_pr._n != ((128 : GoInt))) || (_pr._err != null)) {
            _t.fatalf(((("write 128: %d, %v" : GoString))), Go.toInterface(_pr._n), Go.toInterface(_pr._err));
        };
        if (_tot != ((128 : GoInt))) {
            _t.fatalf(((("total read %d != 128" : GoString))), Go.toInterface(_tot));
        };
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < ((128 : GoInt)), _i++, {
                if ((_rdat != null ? _rdat[_i] : ((0 : GoUInt8))) != ((_i : GoByte))) {
                    _t.fatalf(((("rdat[%d] = %d" : GoString))), Go.toInterface(_i), Go.toInterface((_rdat != null ? _rdat[_i] : ((0 : GoUInt8)))));
                };
            });
        };
    }
function _delayClose(_t:stdgo.testing.Testing.T_, _cl:T_closer, _ch:Chan<GoInt>, _tt:T_pipeTest):Void {
        stdgo.time.Time.sleep(((1000000 : GoInt64)));
        var _err:Error = ((null : stdgo.Error));
        if (_tt._closeWithError) {
            _err = _cl.closeWithError(_tt._err);
        } else {
            _err = _cl.close();
        };
        if (_err != null) {
            _t.errorf(((("delayClose: %v" : GoString))), Go.toInterface(_err));
        };
        _ch.__send__(((0 : GoInt)));
    }
function testPipeReadClose(_t:stdgo.testing.Testing.T_):Void {
        for (_0 => _tt in _pipeTests) {
            var _c:Chan<GoInt> = new Chan<GoInt>(((((1 : GoInt)) : GoInt)).toBasic(), () -> ((0 : GoInt)));
            var __tmp__ = pipe(), _r:Ref<PipeReader> = __tmp__._0, _w:Ref<PipeWriter> = __tmp__._1;
            if (_tt._async) {
                Go.routine(() -> _delayClose(_t, _w, _c, (_tt == null ? null : _tt.__copy__())));
            } else {
                _delayClose(_t, _w, _c, (_tt == null ? null : _tt.__copy__()));
            };
            var _buf:Slice<GoUInt8> = new Slice<GoUInt8>(...[for (i in 0 ... ((((64 : GoInt)) : GoInt)).toBasic()) ((0 : GoUInt8))]);
            var __tmp__ = _r.read(_buf), _n:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            _c.__get__();
            var _want:stdgo.Error = _tt._err;
            if (_want == null) {
                _want = eof;
            };
            if (_err != _want) {
                _t.errorf(((("read from closed pipe: %v want %v" : GoString))), Go.toInterface(_err), Go.toInterface(_want));
            };
            if (_n != ((0 : GoInt))) {
                _t.errorf(((("read on closed pipe returned %d" : GoString))), Go.toInterface(_n));
            };
            {
                _err = _r.close();
                if (_err != null) {
                    _t.errorf(((("r.Close: %v" : GoString))), Go.toInterface(_err));
                };
            };
        };
    }
function testPipeReadClose2(_t:stdgo.testing.Testing.T_):Void {
        var _c:Chan<GoInt> = new Chan<GoInt>(((((1 : GoInt)) : GoInt)).toBasic(), () -> ((0 : GoInt)));
        var __tmp__ = pipe(), _r:Ref<PipeReader> = __tmp__._0, _0:Ref<PipeWriter> = __tmp__._1;
        Go.routine(() -> _delayClose(_t, _r, _c, ((new stdgo.io_test.Io_test.T_pipeTest() : stdgo.io_test.Io_test.T_pipeTest))));
        var __tmp__ = _r.read(new Slice<GoUInt8>(...[for (i in 0 ... ((((64 : GoInt)) : GoInt)).toBasic()) ((0 : GoUInt8))])), _n:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        _c.__get__();
        if ((_n != ((0 : GoInt))) || (_err != errClosedPipe)) {
            _t.errorf(((("read from closed pipe: %v, %v want %v, %v" : GoString))), Go.toInterface(_n), Go.toInterface(_err), Go.toInterface(((0 : GoInt))), Go.toInterface(errClosedPipe));
        };
    }
function testPipeWriteClose(_t:stdgo.testing.Testing.T_):Void {
        for (_0 => _tt in _pipeTests) {
            var _c:Chan<GoInt> = new Chan<GoInt>(((((1 : GoInt)) : GoInt)).toBasic(), () -> ((0 : GoInt)));
            var __tmp__ = pipe(), _r:Ref<PipeReader> = __tmp__._0, _w:Ref<PipeWriter> = __tmp__._1;
            if (_tt._async) {
                Go.routine(() -> _delayClose(_t, _r, _c, (_tt == null ? null : _tt.__copy__())));
            } else {
                _delayClose(_t, _r, _c, (_tt == null ? null : _tt.__copy__()));
            };
            var __tmp__ = writeString(_w, ((("hello, world" : GoString)))), _n:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            _c.__get__();
            var _expect:stdgo.Error = _tt._err;
            if (_expect == null) {
                _expect = errClosedPipe;
            };
            if (_err != _expect) {
                _t.errorf(((("write on closed pipe: %v want %v" : GoString))), Go.toInterface(_err), Go.toInterface(_expect));
            };
            if (_n != ((0 : GoInt))) {
                _t.errorf(((("write on closed pipe returned %d" : GoString))), Go.toInterface(_n));
            };
            {
                _err = _w.close();
                if (_err != null) {
                    _t.errorf(((("w.Close: %v" : GoString))), Go.toInterface(_err));
                };
            };
        };
    }
function testPipeWriteClose2(_t:stdgo.testing.Testing.T_):Void {
        var _c:Chan<GoInt> = new Chan<GoInt>(((((1 : GoInt)) : GoInt)).toBasic(), () -> ((0 : GoInt)));
        var __tmp__ = pipe(), _0:Ref<PipeReader> = __tmp__._0, _w:Ref<PipeWriter> = __tmp__._1;
        Go.routine(() -> _delayClose(_t, _w, _c, ((new stdgo.io_test.Io_test.T_pipeTest() : stdgo.io_test.Io_test.T_pipeTest))));
        var __tmp__ = _w.write(new Slice<GoUInt8>(...[for (i in 0 ... ((((64 : GoInt)) : GoInt)).toBasic()) ((0 : GoUInt8))])), _n:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        _c.__get__();
        if ((_n != ((0 : GoInt))) || (_err != errClosedPipe)) {
            _t.errorf(((("write to closed pipe: %v, %v want %v, %v" : GoString))), Go.toInterface(_n), Go.toInterface(_err), Go.toInterface(((0 : GoInt))), Go.toInterface(errClosedPipe));
        };
    }
function testWriteEmpty(_t:stdgo.testing.Testing.T_):Void {
        var __tmp__ = pipe(), _r:Ref<PipeReader> = __tmp__._0, _w:Ref<PipeWriter> = __tmp__._1;
        Go.routine(() -> {
            var a = function():Void {
                _w.write(((new Slice<GoUInt8>() : Slice<GoUInt8>)));
                _w.close();
            };
            a();
        });
        var _b:GoArray<GoByte> = new GoArray<GoUInt8>(...[for (i in 0 ... 2) ((0 : GoUInt8))]);
        readFull(_r, ((_b.__slice__(((0 : GoInt)), ((2 : GoInt))) : Slice<GoUInt8>)));
        _r.close();
    }
function testWriteNil(_t:stdgo.testing.Testing.T_):Void {
        var __tmp__ = pipe(), _r:Ref<PipeReader> = __tmp__._0, _w:Ref<PipeWriter> = __tmp__._1;
        Go.routine(() -> {
            var a = function():Void {
                _w.write(((null : Slice<GoUInt8>)));
                _w.close();
            };
            a();
        });
        var _b:GoArray<GoByte> = new GoArray<GoUInt8>(...[for (i in 0 ... 2) ((0 : GoUInt8))]);
        readFull(_r, ((_b.__slice__(((0 : GoInt)), ((2 : GoInt))) : Slice<GoUInt8>)));
        _r.close();
    }
function testWriteAfterWriterClose(_t:stdgo.testing.Testing.T_):Void {
        var __tmp__ = pipe(), _r:Ref<PipeReader> = __tmp__._0, _w:Ref<PipeWriter> = __tmp__._1;
        var _done:Chan<Bool> = new Chan<Bool>(0, () -> false);
        var _writeErr:Error = ((null : stdgo.Error));
        Go.routine(() -> {
            var a = function():Void {
                var __tmp__ = _w.write(((((("hello" : GoString))) : Slice<GoByte>))), _0:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    _t.errorf(((("got error: %q; expected none" : GoString))), Go.toInterface(_err));
                };
                _w.close();
                {
                    var __tmp__ = _w.write(((((("world" : GoString))) : Slice<GoByte>)));
                    _writeErr = __tmp__._1;
                };
                _done.__send__(true);
            };
            a();
        });
        var _buf:Slice<GoUInt8> = new Slice<GoUInt8>(...[for (i in 0 ... ((((100 : GoInt)) : GoInt)).toBasic()) ((0 : GoUInt8))]);
        var _result:GoString = (("" : GoString));
        var __tmp__ = readFull(_r, _buf), _n:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if ((_err != null) && (_err != errUnexpectedEOF)) {
            _t.fatalf(((("got: %q; want: %q" : GoString))), Go.toInterface(_err), Go.toInterface(errUnexpectedEOF));
        };
        _result = ((((_buf.__slice__(((0 : GoInt)), _n) : Slice<GoUInt8>)) : GoString));
        _done.__get__();
        if (_result != ((("hello" : GoString)))) {
            _t.errorf(((("got: %q; want: %q" : GoString))), Go.toInterface(_result), Go.toInterface(((("hello" : GoString)))));
        };
        if (_writeErr != errClosedPipe) {
            _t.errorf(((("got: %q; want: %q" : GoString))), Go.toInterface(_writeErr), Go.toInterface(errClosedPipe));
        };
    }
@:structInit class T_testError1_testPipeCloseError_0 {
    @:embedded
    public var _error : stdgo.Error = ((null : stdgo.Error));
    public function new(?_error:stdgo.Error) {
        if (_error != null) this._error = _error;
    }
    public function error():GoString return _error.error();
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_testError1_testPipeCloseError_0(_error);
    }
}
@:structInit class T_testError2_testPipeCloseError_1 {
    @:embedded
    public var _error : stdgo.Error = ((null : stdgo.Error));
    public function new(?_error:stdgo.Error) {
        if (_error != null) this._error = _error;
    }
    public function error():GoString return _error.error();
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_testError2_testPipeCloseError_1(_error);
    }
}
function testPipeCloseError(_t:stdgo.testing.Testing.T_):Void {
        {};
        {};
        var __tmp__ = pipe(), _r:Ref<PipeReader> = __tmp__._0, _w:Ref<PipeWriter> = __tmp__._1;
        _r.closeWithError(((new stdgo.io_test.Io_test.T_testError1_testPipeCloseError_0() : stdgo.io_test.Io_test.T_testError1_testPipeCloseError_0)));
        {
            var __tmp__ = _w.write(((null : Slice<GoUInt8>))), _0:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != (((new stdgo.io_test.Io_test.T_testError1_testPipeCloseError_0() : stdgo.io_test.Io_test.T_testError1_testPipeCloseError_0)))) {
                _t.errorf(((("Write error: got %T, want testError1" : GoString))), Go.toInterface(_err));
            };
        };
        _r.closeWithError(((new stdgo.io_test.Io_test.T_testError2_testPipeCloseError_1() : stdgo.io_test.Io_test.T_testError2_testPipeCloseError_1)));
        {
            var __tmp__ = _w.write(((null : Slice<GoUInt8>))), _1:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != (((new stdgo.io_test.Io_test.T_testError1_testPipeCloseError_0() : stdgo.io_test.Io_test.T_testError1_testPipeCloseError_0)))) {
                _t.errorf(((("Write error: got %T, want testError1" : GoString))), Go.toInterface(_err));
            };
        };
        {
            var __tmp__ = pipe();
            _r = __tmp__._0;
            _w = __tmp__._1;
        };
        _w.closeWithError(((new stdgo.io_test.Io_test.T_testError1_testPipeCloseError_0() : stdgo.io_test.Io_test.T_testError1_testPipeCloseError_0)));
        {
            var __tmp__ = _r.read(((null : Slice<GoUInt8>))), _2:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != (((new stdgo.io_test.Io_test.T_testError1_testPipeCloseError_0() : stdgo.io_test.Io_test.T_testError1_testPipeCloseError_0)))) {
                _t.errorf(((("Read error: got %T, want testError1" : GoString))), Go.toInterface(_err));
            };
        };
        _w.closeWithError(((new stdgo.io_test.Io_test.T_testError2_testPipeCloseError_1() : stdgo.io_test.Io_test.T_testError2_testPipeCloseError_1)));
        {
            var __tmp__ = _r.read(((null : Slice<GoUInt8>))), _3:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != (((new stdgo.io_test.Io_test.T_testError1_testPipeCloseError_0() : stdgo.io_test.Io_test.T_testError1_testPipeCloseError_0)))) {
                _t.errorf(((("Read error: got %T, want testError1" : GoString))), Go.toInterface(_err));
            };
        };
    }
function testPipeConcurrent(_t:stdgo.testing.Testing.T_):Void {
        {};
        _t.run(((("Write" : GoString))), function(_t:stdgo.testing.Testing.T_):Void {
            var __tmp__ = pipe(), _r:Ref<PipeReader> = __tmp__._0, _w:Ref<PipeWriter> = __tmp__._1;
            {
                var _i:GoInt = ((0 : GoInt));
                Go.cfor(_i < ((8 : GoInt)), _i++, {
                    Go.routine(() -> {
                        var a = function():Void {
                            stdgo.time.Time.sleep(((1000000 : GoInt64)));
                            {
                                var __tmp__ = _w.write(((((("0123456789abcdef" : GoString))) : Slice<GoByte>))), _n:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                                if ((_n != (((("0123456789abcdef" : GoString))) != null ? ((("0123456789abcdef" : GoString))).length : ((0 : GoInt)))) || (_err != null)) {
                                    _t.errorf(((("Write() = (%d, %v); want (%d, nil)" : GoString))), Go.toInterface(_n), Go.toInterface(_err), Go.toInterface((((("0123456789abcdef" : GoString))) != null ? ((("0123456789abcdef" : GoString))).length : ((0 : GoInt)))));
                                };
                            };
                        };
                        a();
                    });
                });
            };
            var _buf:Slice<GoUInt8> = new Slice<GoUInt8>(...[for (i in 0 ... ((((128 : GoInt)) : GoInt)).toBasic()) ((0 : GoUInt8))]);
            {
                var _i:GoInt = ((0 : GoInt));
                Go.cfor(_i < (_buf != null ? _buf.length : ((0 : GoInt))), _i = _i + (((2 : GoInt))), {
                    {
                        var __tmp__ = _r.read(((_buf.__slice__(_i, _i + ((2 : GoInt))) : Slice<GoUInt8>))), _n:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                        if ((_n != ((2 : GoInt))) || (_err != null)) {
                            _t.errorf(((("Read() = (%d, %v); want (%d, nil)" : GoString))), Go.toInterface(_n), Go.toInterface(_err), Go.toInterface(((2 : GoInt))));
                        };
                    };
                });
            };
            var _got:GoString = ((_buf : GoString));
            var _want:GoString = stdgo.strings.Strings.repeat(((("0123456789abcdef" : GoString))), ((8 : GoInt)));
            if (_got != _want) {
                _t.errorf(((("got: %q; want: %q" : GoString))), Go.toInterface(_got), Go.toInterface(_want));
            };
        });
        _t.run(((("Read" : GoString))), function(_t:stdgo.testing.Testing.T_):Void {
            var __tmp__ = pipe(), _r:Ref<PipeReader> = __tmp__._0, _w:Ref<PipeWriter> = __tmp__._1;
            var _c:Chan<Slice<GoUInt8>> = new Chan<Slice<GoUInt8>>(((((64 : GoInt)) : GoInt)).toBasic(), () -> ((null : Slice<GoUInt8>)));
            {
                var _i:GoInt = ((0 : GoInt));
                Go.cfor(_i < (_c != null ? _c.cap() : ((0 : GoInt))), _i++, {
                    Go.routine(() -> {
                        var a = function():Void {
                            stdgo.time.Time.sleep(((1000000 : GoInt64)));
                            var _buf:Slice<GoUInt8> = new Slice<GoUInt8>(...[for (i in 0 ... ((((2 : GoInt)) : GoInt)).toBasic()) ((0 : GoUInt8))]);
                            {
                                var __tmp__ = _r.read(_buf), _n:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                                if ((_n != ((2 : GoInt))) || (_err != null)) {
                                    _t.errorf(((("Read() = (%d, %v); want (%d, nil)" : GoString))), Go.toInterface(_n), Go.toInterface(_err), Go.toInterface(((2 : GoInt))));
                                };
                            };
                            _c.__send__(_buf);
                        };
                        a();
                    });
                });
            };
            {
                var _i:GoInt = ((0 : GoInt));
                Go.cfor(_i < ((8 : GoInt)), _i++, {
                    {
                        var __tmp__ = _w.write(((((("0123456789abcdef" : GoString))) : Slice<GoByte>))), _n:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                        if ((_n != (((("0123456789abcdef" : GoString))) != null ? ((("0123456789abcdef" : GoString))).length : ((0 : GoInt)))) || (_err != null)) {
                            _t.errorf(((("Write() = (%d, %v); want (%d, nil)" : GoString))), Go.toInterface(_n), Go.toInterface(_err), Go.toInterface((((("0123456789abcdef" : GoString))) != null ? ((("0123456789abcdef" : GoString))).length : ((0 : GoInt)))));
                        };
                    };
                });
            };
            var _got:Slice<GoUInt8> = new Slice<GoUInt8>(...[for (i in 0 ... ((((0 : GoInt)) : GoInt)).toBasic()) ((0 : GoUInt8))]).__setCap__(((((128 : GoInt)) : GoInt)).toBasic());
            {
                var _i:GoInt = ((0 : GoInt));
                Go.cfor(_i < (_c != null ? _c.cap() : ((0 : GoInt))), _i++, {
                    _got = (_got != null ? _got.__append__(...(_c.__get__()).__toArray__()) : new Slice<GoUInt8>(...(_c.__get__()).__toArray__()));
                });
            };
            _got = _sortBytesInGroups(_got, ((2 : GoInt)));
            var _want:Slice<GoUInt8> = stdgo.bytes.Bytes.repeat(((((("0123456789abcdef" : GoString))) : Slice<GoByte>)), ((8 : GoInt)));
            _want = _sortBytesInGroups(_want, ((2 : GoInt)));
            if (((_got : GoString)) != ((_want : GoString))) {
                _t.errorf(((("got: %q; want: %q" : GoString))), Go.toInterface(_got), Go.toInterface(_want));
            };
        });
    }
function _sortBytesInGroups(_b:Slice<GoByte>, _n:GoInt):Slice<GoByte> {
        var _groups:Slice<Slice<GoByte>> = ((null : Slice<Slice<GoUInt8>>));
        while ((_b != null ? _b.length : ((0 : GoInt))) > ((0 : GoInt))) {
            _groups = (_groups != null ? _groups.__append__(((_b.__slice__(0, _n) : Slice<GoUInt8>))) : new Slice<Slice<GoUInt8>>(((_b.__slice__(0, _n) : Slice<GoUInt8>))));
            _b = ((_b.__slice__(_n) : Slice<GoUInt8>));
        };
        stdgo.sort.Sort.slice(Go.toInterface(_groups), function(_i:GoInt, _j:GoInt):Bool {
            return stdgo.bytes.Bytes.compare((_groups != null ? _groups[_i] : ((null : Slice<GoUInt8>))), (_groups != null ? _groups[_j] : ((null : Slice<GoUInt8>)))) < ((0 : GoInt));
        });
        return stdgo.bytes.Bytes.join(_groups, ((null : Slice<GoUInt8>)));
    }
class T_closer_wrapper {
    public var __t__ : T_closer;
    public function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
}
class T__interface_0_wrapper {
    public var __t__ : T__interface_0;
    public function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
}
class Buffer_wrapper {
    public var __t__ : Buffer;
    public function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
}
class T_writeToChecker_wrapper {
    @:keep
    public function writeTo(_w:Writer):{ var _0 : GoInt64; var _1 : Error; } {
        var _wt = __t__;
        _wt;
        _wt._writeToCalled = true;
        return _wt.buffer.writeTo(_w);
    }
    public var __t__ : T_writeToChecker;
    public function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
}
@:keep class T_writeToChecker_static_extension {
    @:keep
    public static function writeTo(_wt:Ref<stdgo.io_test.Io_test.T_writeToChecker>, _w:Writer):{ var _0 : GoInt64; var _1 : Error; } {
        _wt;
        _wt._writeToCalled = true;
        return _wt.buffer.writeTo(_w);
    }
}
class T_zeroErrReader_wrapper {
    @:keep
    public function read(_p:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } {
        var _r = __t__;
        (_r == null ? null : _r.__copy__());
        return { _0 : Go.copySlice(_p, ((new Slice<GoUInt8>(((0 : GoUInt8))) : Slice<GoUInt8>))), _1 : _r._err };
    }
    public var __t__ : T_zeroErrReader;
    public function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
}
@:keep class T_zeroErrReader_static_extension {
    @:keep
    public static function read(_r:stdgo.io_test.Io_test.T_zeroErrReader, _p:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } {
        (_r == null ? null : _r.__copy__());
        return { _0 : Go.copySlice(_p, ((new Slice<GoUInt8>(((0 : GoUInt8))) : Slice<GoUInt8>))), _1 : _r._err };
    }
}
class T_errWriter_wrapper {
    @:keep
    public function write(_0:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } {
        var _w = __t__;
        (_w == null ? null : _w.__copy__());
        return { _0 : ((0 : GoInt)), _1 : _w._err };
    }
    public var __t__ : T_errWriter;
    public function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
}
@:keep class T_errWriter_static_extension {
    @:keep
    public static function write(_w:stdgo.io_test.Io_test.T_errWriter, _0:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } {
        (_w == null ? null : _w.__copy__());
        return { _0 : ((0 : GoInt)), _1 : _w._err };
    }
}
class T_noReadFrom_wrapper {
    @:keep
    public function write(_p:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } {
        var _w = __t__;
        _w;
        var _n:GoInt = ((0 : GoInt)), _err:Error = ((null : stdgo.Error));
        return _w._w.write(_p);
    }
    public var __t__ : T_noReadFrom;
    public function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
}
@:keep class T_noReadFrom_static_extension {
    @:keep
    public static function write(_w:Ref<stdgo.io_test.Io_test.T_noReadFrom>, _p:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } {
        _w;
        var _n:GoInt = ((0 : GoInt)), _err:Error = ((null : stdgo.Error));
        return _w._w.write(_p);
    }
}
class T_wantedAndErrReader_wrapper {
    @:keep
    public function read(_p:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } {
        var _ = __t__;
        return { _0 : (_p != null ? _p.length : ((0 : GoInt))), _1 : stdgo.errors.Errors.new_(((("wantedAndErrReader error" : GoString)))) };
    }
    public var __t__ : T_wantedAndErrReader;
    public function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
}
@:keep class T_wantedAndErrReader_static_extension {
    @:keep
    public static function read(_:stdgo.io_test.Io_test.T_wantedAndErrReader, _p:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } {
        return { _0 : (_p != null ? _p.length : ((0 : GoInt))), _1 : stdgo.errors.Errors.new_(((("wantedAndErrReader error" : GoString)))) };
    }
}
class T_dataAndErrorBuffer_wrapper {
    @:keep
    public function read(_p:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } {
        var _r = __t__;
        _r;
        var _n:GoInt = ((0 : GoInt)), _err:Error = ((null : stdgo.Error));
        {
            var __tmp__ = _r.buffer.read(_p);
            _n = __tmp__._0;
            _err = __tmp__._1;
        };
        if (((_n > ((0 : GoInt))) && (_r.buffer.len() == ((0 : GoInt)))) && (_err == null)) {
            _err = _r._err;
        };
        return { _0 : _n, _1 : _err };
    }
    public var __t__ : T_dataAndErrorBuffer;
    public function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
}
@:keep class T_dataAndErrorBuffer_static_extension {
    @:keep
    public static function read(_r:Ref<stdgo.io_test.Io_test.T_dataAndErrorBuffer>, _p:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } {
        _r;
        var _n:GoInt = ((0 : GoInt)), _err:Error = ((null : stdgo.Error));
        {
            var __tmp__ = _r.buffer.read(_p);
            _n = __tmp__._0;
            _err = __tmp__._1;
        };
        if (((_n > ((0 : GoInt))) && (_r.buffer.len() == ((0 : GoInt)))) && (_err == null)) {
            _err = _r._err;
        };
        return { _0 : _n, _1 : _err };
    }
}
class T_largeWriter_wrapper {
    @:keep
    public function write(_p:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } {
        var _w = __t__;
        (_w == null ? null : _w.__copy__());
        return { _0 : (_p != null ? _p.length : ((0 : GoInt))) + ((1 : GoInt)), _1 : _w._err };
    }
    public var __t__ : T_largeWriter;
    public function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
}
@:keep class T_largeWriter_static_extension {
    @:keep
    public static function write(_w:stdgo.io_test.Io_test.T_largeWriter, _p:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } {
        (_w == null ? null : _w.__copy__());
        return { _0 : (_p != null ? _p.length : ((0 : GoInt))) + ((1 : GoInt)), _1 : _w._err };
    }
}
class T_writeStringChecker_wrapper {
    @:keep
    public function write(_p:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } {
        var _c = __t__;
        _c;
        var _n:GoInt = ((0 : GoInt)), _err:Error = ((null : stdgo.Error));
        return { _0 : (_p != null ? _p.length : ((0 : GoInt))), _1 : ((null : stdgo.Error)) };
    }
    @:keep
    public function writeString(_s:GoString):{ var _0 : GoInt; var _1 : Error; } {
        var _c = __t__;
        _c;
        var _n:GoInt = ((0 : GoInt)), _err:Error = ((null : stdgo.Error));
        _c._called = true;
        return { _0 : (_s != null ? _s.length : ((0 : GoInt))), _1 : ((null : stdgo.Error)) };
    }
    public var __t__ : T_writeStringChecker;
    public function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
}
@:keep class T_writeStringChecker_static_extension {
    @:keep
    public static function write(_c:Ref<stdgo.io_test.Io_test.T_writeStringChecker>, _p:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } {
        _c;
        var _n:GoInt = ((0 : GoInt)), _err:Error = ((null : stdgo.Error));
        return { _0 : (_p != null ? _p.length : ((0 : GoInt))), _1 : ((null : stdgo.Error)) };
    }
    @:keep
    public static function writeString(_c:Ref<stdgo.io_test.Io_test.T_writeStringChecker>, _s:GoString):{ var _0 : GoInt; var _1 : Error; } {
        _c;
        var _n:GoInt = ((0 : GoInt)), _err:Error = ((null : stdgo.Error));
        _c._called = true;
        return { _0 : (_s != null ? _s.length : ((0 : GoInt))), _1 : ((null : stdgo.Error)) };
    }
}
class T_pipeReturn_wrapper {
    public var __t__ : T_pipeReturn;
    public function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
}
class T_pipeTest_wrapper {
    @:keep
    public function toString():GoString {
        var _p = __t__;
        (_p == null ? null : _p.__copy__());
        return stdgo.fmt.Fmt.sprintf(((("async=%v err=%v closeWithError=%v" : GoString))), Go.toInterface(_p._async), Go.toInterface(_p._err), Go.toInterface(_p._closeWithError));
    }
    public var __t__ : T_pipeTest;
    public function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
}
@:keep class T_pipeTest_static_extension {
    @:keep
    public static function toString(_p:stdgo.io_test.Io_test.T_pipeTest):GoString {
        (_p == null ? null : _p.__copy__());
        return stdgo.fmt.Fmt.sprintf(((("async=%v err=%v closeWithError=%v" : GoString))), Go.toInterface(_p._async), Go.toInterface(_p._err), Go.toInterface(_p._closeWithError));
    }
}
class T__struct_1_wrapper {
    public var __t__ : T__struct_1;
    public function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
}
class T__struct_2_wrapper {
    public var __t__ : T__struct_2;
    public function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
}
class T__struct_3_wrapper {
    public var __t__ : T__struct_3;
    public function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
}
class T__struct_4_wrapper {
    public var __t__ : T__struct_4;
    public function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
}
class T_writerFunc_wrapper {
    @:keep
    public function write(_p:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } {
        var _f = __t__;
        _f;
        return _f(_p);
    }
    public var __t__ : T_writerFunc;
    public function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
}
@:keep class T_writerFunc_static_extension {
    @:keep
    public static function write(_f:stdgo.io_test.Io_test.T_writerFunc, _p:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } {
        _f;
        return _f(_p);
    }
}
class T_readerFunc_wrapper {
    @:keep
    public function read(_p:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } {
        var _f = __t__;
        _f;
        return _f(_p);
    }
    public var __t__ : T_readerFunc;
    public function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
}
@:keep class T_readerFunc_static_extension {
    @:keep
    public static function read(_f:stdgo.io_test.Io_test.T_readerFunc, _p:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } {
        _f;
        return _f(_p);
    }
}
class T_byteAndEOFReader_wrapper {
    @:keep
    public function read(_p:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } {
        var _b = __t__;
        _b;
        var _n:GoInt = ((0 : GoInt)), _err:Error = ((null : stdgo.Error));
        if ((_p != null ? _p.length : ((0 : GoInt))) == ((0 : GoInt))) {
            throw Go.toInterface(((("unexpected call" : GoString))));
        };
        if (_p != null) _p[((0 : GoInt))] = ((_b : GoByte));
        return { _0 : ((1 : GoInt)), _1 : eof };
    }
    public var __t__ : T_byteAndEOFReader;
    public function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
}
@:keep class T_byteAndEOFReader_static_extension {
    @:keep
    public static function read(_b:stdgo.io_test.Io_test.T_byteAndEOFReader, _p:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } {
        _b;
        var _n:GoInt = ((0 : GoInt)), _err:Error = ((null : stdgo.Error));
        if ((_p != null ? _p.length : ((0 : GoInt))) == ((0 : GoInt))) {
            throw Go.toInterface(((("unexpected call" : GoString))));
        };
        if (_p != null) _p[((0 : GoInt))] = ((_b : GoByte));
        return { _0 : ((1 : GoInt)), _1 : eof };
    }
}
class T_simpleWriter_testMultiWriter_WriteStringSingleAlloc_0_wrapper {
    public var __t__ : T_simpleWriter_testMultiWriter_WriteStringSingleAlloc_0;
    public function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
}
class T_testError1_testPipeCloseError_0_wrapper {
    public var __t__ : T_testError1_testPipeCloseError_0;
    public function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
}
class T_testError2_testPipeCloseError_1_wrapper {
    public var __t__ : T_testError2_testPipeCloseError_1;
    public function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
}
