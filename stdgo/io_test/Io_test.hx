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
var _pipeTests : Slice<stdgo.io_test.Io_test.T_pipeTest> = ((new Slice<stdgo.io_test.Io_test.T_pipeTest>(0, 0, ((new stdgo.io_test.Io_test.T_pipeTest(true, ((null : stdgo.Error)), false) : stdgo.io_test.Io_test.T_pipeTest)), ((new stdgo.io_test.Io_test.T_pipeTest(true, ((null : stdgo.Error)), true) : stdgo.io_test.Io_test.T_pipeTest)), ((new stdgo.io_test.Io_test.T_pipeTest(true, errShortWrite, true) : stdgo.io_test.Io_test.T_pipeTest)), ((new stdgo.io_test.Io_test.T_pipeTest(false, ((null : stdgo.Error)), false) : stdgo.io_test.Io_test.T_pipeTest)), ((new stdgo.io_test.Io_test.T_pipeTest(false, ((null : stdgo.Error)), true) : stdgo.io_test.Io_test.T_pipeTest)), ((new stdgo.io_test.Io_test.T_pipeTest(false, errShortWrite, true) : stdgo.io_test.Io_test.T_pipeTest))) : Slice<stdgo.io_test.Io_test.T_pipeTest>));
typedef T_closer = StructType & {
    public function closeWithError(_0:Error):Error;
    public function close():Error;
};
@:local typedef T__interface_0 = StructType & {
    > Writer,
    > stdgo.fmt.Fmt.Stringer,
};
@:structInit @:using(stdgo.io_test.Io_test.Buffer_static_extension) class Buffer {
    @:embedded
    public var buffer : stdgo.bytes.Bytes.Buffer = (({  } : stdgo.bytes.Bytes.Buffer));
    @:embedded
    public var readerFrom : ReaderFrom = ((null : ReaderFrom));
    @:embedded
    public var writerTo : WriterTo = ((null : WriterTo));
    public function new(?buffer:stdgo.bytes.Bytes.Buffer, ?readerFrom:ReaderFrom, ?writerTo:WriterTo) {
        if (buffer != null) this.buffer = buffer;
        if (readerFrom != null) this.readerFrom = readerFrom;
        if (writerTo != null) this.writerTo = writerTo;
    }
    @:embedded
    public function bytes():Slice<GoUInt8> return buffer.bytes();
    @:embedded
    public function cap_():GoInt return buffer.cap_();
    @:embedded
    public function grow(_pid:GoInt) buffer.grow(_pid);
    @:embedded
    public function len():GoInt return buffer.len();
    @:embedded
    public function next(_pid:GoInt):Slice<GoUInt8> return buffer.next(_pid);
    @:embedded
    public function read(_p:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : stdgo.Error; } return buffer.read(_p);
    @:embedded
    public function readByte():{ var _0 : GoUInt8; var _1 : stdgo.Error; } return buffer.readByte();
    @:embedded
    public function readBytes(_c:GoUInt8):{ var _0 : Slice<GoUInt8>; var _1 : stdgo.Error; } return buffer.readBytes(_c);
    @:embedded
    public function readRune():{ var _0 : GoInt32; var _1 : GoInt; var _2 : stdgo.Error; } return buffer.readRune();
    @:embedded
    public function readString(_c:GoUInt8):{ var _0 : GoString; var _1 : stdgo.Error; } return buffer.readString(_c);
    @:embedded
    public function reset() buffer.reset();
    @:embedded
    public function string():GoString return buffer.string();
    @:embedded
    public function truncate(_pid:GoInt) buffer.truncate(_pid);
    @:embedded
    public function unreadByte():stdgo.Error return buffer.unreadByte();
    @:embedded
    public function unreadRune():stdgo.Error return buffer.unreadRune();
    @:embedded
    public function write(_p:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : stdgo.Error; } return buffer.write(_p);
    @:embedded
    public function writeByte(_c:GoUInt8):stdgo.Error return buffer.writeByte(_c);
    @:embedded
    public function writeRune(_new:GoInt32):{ var _0 : GoInt; var _1 : stdgo.Error; } return buffer.writeRune(_new);
    @:embedded
    public function writeString(__0:GoString):{ var _0 : GoInt; var _1 : stdgo.Error; } return buffer.writeString(__0);
    @:embedded
    public function _empty():Bool return buffer._empty();
    @:embedded
    public function _grow(_pid:GoInt):GoInt return buffer._grow(_pid);
    @:embedded
    public function _readSlice(_c:GoUInt8):{ var _0 : Slice<GoUInt8>; var _1 : stdgo.Error; } return buffer._readSlice(_c);
    @:embedded
    public function _tryGrowByReslice(_pid:GoInt):{ var _0 : GoInt; var _1 : Bool; } return buffer._tryGrowByReslice(_pid);
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new Buffer(buffer, readerFrom, writerTo);
    }
}
@:structInit @:using(stdgo.io_test.Io_test.T_writeToChecker_static_extension) class T_writeToChecker {
    @:embedded
    public var buffer : stdgo.bytes.Bytes.Buffer = (({  } : stdgo.bytes.Bytes.Buffer));
    public var _writeToCalled : Bool = false;
    public function new(?buffer:stdgo.bytes.Bytes.Buffer, ?_writeToCalled:Bool) {
        if (buffer != null) this.buffer = buffer;
        if (_writeToCalled != null) this._writeToCalled = _writeToCalled;
    }
    @:embedded
    public function bytes():Slice<GoUInt8> return buffer.bytes();
    @:embedded
    public function cap_():GoInt return buffer.cap_();
    @:embedded
    public function grow(_pid:GoInt) buffer.grow(_pid);
    @:embedded
    public function len():GoInt return buffer.len();
    @:embedded
    public function next(_pid:GoInt):Slice<GoUInt8> return buffer.next(_pid);
    @:embedded
    public function read(_p:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : stdgo.Error; } return buffer.read(_p);
    @:embedded
    public function readByte():{ var _0 : GoUInt8; var _1 : stdgo.Error; } return buffer.readByte();
    @:embedded
    public function readBytes(_c:GoUInt8):{ var _0 : Slice<GoUInt8>; var _1 : stdgo.Error; } return buffer.readBytes(_c);
    @:embedded
    public function readFrom(_r:Reader):{ var _0 : GoInt64; var _1 : stdgo.Error; } return buffer.readFrom(_r);
    @:embedded
    public function readRune():{ var _0 : GoInt32; var _1 : GoInt; var _2 : stdgo.Error; } return buffer.readRune();
    @:embedded
    public function readString(_c:GoUInt8):{ var _0 : GoString; var _1 : stdgo.Error; } return buffer.readString(_c);
    @:embedded
    public function reset() buffer.reset();
    @:embedded
    public function string():GoString return buffer.string();
    @:embedded
    public function truncate(_pid:GoInt) buffer.truncate(_pid);
    @:embedded
    public function unreadByte():stdgo.Error return buffer.unreadByte();
    @:embedded
    public function unreadRune():stdgo.Error return buffer.unreadRune();
    @:embedded
    public function write(_p:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : stdgo.Error; } return buffer.write(_p);
    @:embedded
    public function writeByte(_c:GoUInt8):stdgo.Error return buffer.writeByte(_c);
    @:embedded
    public function writeRune(_new:GoInt32):{ var _0 : GoInt; var _1 : stdgo.Error; } return buffer.writeRune(_new);
    @:embedded
    public function writeString(__0:GoString):{ var _0 : GoInt; var _1 : stdgo.Error; } return buffer.writeString(__0);
    @:embedded
    public function _empty():Bool return buffer._empty();
    @:embedded
    public function _grow(_pid:GoInt):GoInt return buffer._grow(_pid);
    @:embedded
    public function _readSlice(_c:GoUInt8):{ var _0 : Slice<GoUInt8>; var _1 : stdgo.Error; } return buffer._readSlice(_c);
    @:embedded
    public function _tryGrowByReslice(_pid:GoInt):{ var _0 : GoInt; var _1 : Bool; } return buffer._tryGrowByReslice(_pid);
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_writeToChecker(buffer, _writeToCalled);
    }
}
@:structInit @:using(stdgo.io_test.Io_test.T_zeroErrReader_static_extension) class T_zeroErrReader {
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
    public function new() {}
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_wantedAndErrReader();
    }
}
@:structInit @:using(stdgo.io_test.Io_test.T_dataAndErrorBuffer_static_extension) class T_dataAndErrorBuffer {
    public var _err : stdgo.Error = ((null : stdgo.Error));
    @:embedded
    public var buffer : stdgo.bytes.Bytes.Buffer = (({  } : stdgo.bytes.Bytes.Buffer));
    public function new(?_err:stdgo.Error, ?buffer:stdgo.bytes.Bytes.Buffer) {
        if (_err != null) this._err = _err;
        if (buffer != null) this.buffer = buffer;
    }
    @:embedded
    public function bytes():Slice<GoUInt8> return buffer.bytes();
    @:embedded
    public function cap_():GoInt return buffer.cap_();
    @:embedded
    public function grow(_pid:GoInt) buffer.grow(_pid);
    @:embedded
    public function len():GoInt return buffer.len();
    @:embedded
    public function next(_pid:GoInt):Slice<GoUInt8> return buffer.next(_pid);
    @:embedded
    public function readByte():{ var _0 : GoUInt8; var _1 : stdgo.Error; } return buffer.readByte();
    @:embedded
    public function readBytes(_c:GoUInt8):{ var _0 : Slice<GoUInt8>; var _1 : stdgo.Error; } return buffer.readBytes(_c);
    @:embedded
    public function readFrom(_r:Reader):{ var _0 : GoInt64; var _1 : stdgo.Error; } return buffer.readFrom(_r);
    @:embedded
    public function readRune():{ var _0 : GoInt32; var _1 : GoInt; var _2 : stdgo.Error; } return buffer.readRune();
    @:embedded
    public function readString(_c:GoUInt8):{ var _0 : GoString; var _1 : stdgo.Error; } return buffer.readString(_c);
    @:embedded
    public function reset() buffer.reset();
    @:embedded
    public function string():GoString return buffer.string();
    @:embedded
    public function truncate(_pid:GoInt) buffer.truncate(_pid);
    @:embedded
    public function unreadByte():stdgo.Error return buffer.unreadByte();
    @:embedded
    public function unreadRune():stdgo.Error return buffer.unreadRune();
    @:embedded
    public function write(_p:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : stdgo.Error; } return buffer.write(_p);
    @:embedded
    public function writeByte(_c:GoUInt8):stdgo.Error return buffer.writeByte(_c);
    @:embedded
    public function writeRune(_new:GoInt32):{ var _0 : GoInt; var _1 : stdgo.Error; } return buffer.writeRune(_new);
    @:embedded
    public function writeString(__0:GoString):{ var _0 : GoInt; var _1 : stdgo.Error; } return buffer.writeString(__0);
    @:embedded
    public function writeTo(_w:Writer):{ var _0 : GoInt64; var _1 : stdgo.Error; } return buffer.writeTo(_w);
    @:embedded
    public function _empty():Bool return buffer._empty();
    @:embedded
    public function _grow(_pid:GoInt):GoInt return buffer._grow(_pid);
    @:embedded
    public function _readSlice(_c:GoUInt8):{ var _0 : Slice<GoUInt8>; var _1 : stdgo.Error; } return buffer._readSlice(_c);
    @:embedded
    public function _tryGrowByReslice(_pid:GoInt):{ var _0 : GoInt; var _1 : Bool; } return buffer._tryGrowByReslice(_pid);
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_dataAndErrorBuffer(_err, buffer);
    }
}
@:structInit @:using(stdgo.io_test.Io_test.T_largeWriter_static_extension) class T_largeWriter {
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
    public var _n : GoInt = 0;
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
@:local typedef T__struct_1 = {
    public var _data : GoString;
    public var _off : GoInt;
    public var _n : GoInt;
    public var _bufLen : GoInt;
    public var _at : GoInt;
    public var _exp : GoString;
    public var _err : stdgo.Error;
};
@:local typedef T__struct_2 = {
    public var _data : GoString;
    public var _want : GoInt64;
};
@:local typedef T__struct_3 = {
    public var name : GoString;
    public var _r : Reader;
};
@:local typedef T__struct_4 = {
    @:embedded
    public var reader : Reader;
    @:embedded
    public var writerTo : WriterTo;
};
@:local typedef T__struct_5 = {
    @:embedded
    public var writer : Writer;
    @:embedded
    public var stringer : stdgo.fmt.Fmt.Stringer;
};
@:local typedef T__struct_6 = {};
@:named @:using(stdgo.io_test.Io_test.T_writerFunc_static_extension) typedef T_writerFunc = Slice<GoUInt8> -> { var _0 : GoInt; var _1 : stdgo.Error; };
@:named @:using(stdgo.io_test.Io_test.T_readerFunc_static_extension) typedef T_readerFunc = Slice<GoUInt8> -> { var _0 : GoInt; var _1 : stdgo.Error; };
@:named @:using(stdgo.io_test.Io_test.T_byteAndEOFReader_static_extension) typedef T_byteAndEOFReader = GoUInt8;
function exampleCopy():Void {
        var _r = stdgo.strings.Strings.newReader(((Go.str("some io.Reader stream to be read\n") : GoString)));
        {
            var __tmp__ = stdgo.io.Io.copy({
                final __self__ = new stdgo.os.Os.File_wrapper(stdgo.os.Os.stdout);
                __self__.chdir = #if !macro function():stdgo.Error return stdgo.os.Os.stdout.chdir() #else null #end;
                __self__.chmod = #if !macro function(_mode:stdgo.io.fs.Fs.FileMode):stdgo.Error return stdgo.os.Os.stdout.chmod(_mode) #else null #end;
                __self__.chown = #if !macro function(_uid:GoInt, _gid:GoInt):stdgo.Error return stdgo.os.Os.stdout.chown(_uid, _gid) #else null #end;
                __self__.close = #if !macro function():stdgo.Error return stdgo.os.Os.stdout.close() #else null #end;
                __self__.fd = #if !macro function():GoUIntptr return stdgo.os.Os.stdout.fd() #else null #end;
                __self__.name = #if !macro function():GoString return stdgo.os.Os.stdout.name() #else null #end;
                __self__.read = #if !macro function(_p:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : stdgo.Error; } return stdgo.os.Os.stdout.read(_p) #else null #end;
                __self__.readAt = #if !macro function(_p:Slice<GoUInt8>, _off:GoInt64):{ var _0 : GoInt; var _1 : stdgo.Error; } return stdgo.os.Os.stdout.readAt(_p, _off) #else null #end;
                __self__.readDir = #if !macro function(_pid:GoInt):{ var _0 : Slice<stdgo.io.fs.Fs.DirEntry>; var _1 : stdgo.Error; } return stdgo.os.Os.stdout.readDir(_pid) #else null #end;
                __self__.readFrom = #if !macro function(_r_:Reader):{ var _0 : GoInt64; var _1 : stdgo.Error; } return stdgo.os.Os.stdout.readFrom(_r_) #else null #end;
                __self__.readdir = #if !macro function(_pid:GoInt):{ var _0 : Slice<stdgo.io.fs.Fs.FileInfo>; var _1 : stdgo.Error; } return stdgo.os.Os.stdout.readdir(_pid) #else null #end;
                __self__.readdirnames = #if !macro function(_pid:GoInt):{ var _0 : Slice<GoString>; var _1 : stdgo.Error; } return stdgo.os.Os.stdout.readdirnames(_pid) #else null #end;
                __self__.seek = #if !macro function(_offset:GoInt64, _whence:GoInt):{ var _0 : GoInt64; var _1 : stdgo.Error; } return stdgo.os.Os.stdout.seek(_offset, _whence) #else null #end;
                __self__.setDeadline = #if !macro function(__0:stdgo.time.Time.Time):stdgo.Error return stdgo.os.Os.stdout.setDeadline(__0) #else null #end;
                __self__.setReadDeadline = #if !macro function(__0:stdgo.time.Time.Time):stdgo.Error return stdgo.os.Os.stdout.setReadDeadline(__0) #else null #end;
                __self__.setWriteDeadline = #if !macro function(__0:stdgo.time.Time.Time):stdgo.Error return stdgo.os.Os.stdout.setWriteDeadline(__0) #else null #end;
                __self__.stat = #if !macro function():{ var _0 : stdgo.io.fs.Fs.FileInfo; var _1 : stdgo.Error; } return stdgo.os.Os.stdout.stat() #else null #end;
                __self__.sync = #if !macro function():stdgo.Error return stdgo.os.Os.stdout.sync() #else null #end;
                __self__.syscallConn = #if !macro function():{ var _0 : stdgo.syscall.Syscall.RawConn; var _1 : stdgo.Error; } return stdgo.os.Os.stdout.syscallConn() #else null #end;
                __self__.truncate = #if !macro function(__0:GoInt64):stdgo.Error return stdgo.os.Os.stdout.truncate(__0) #else null #end;
                __self__.write = #if !macro function(_p:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : stdgo.Error; } return stdgo.os.Os.stdout.write(_p) #else null #end;
                __self__.writeAt = #if !macro function(_p:Slice<GoUInt8>, _off:GoInt64):{ var _0 : GoInt; var _1 : stdgo.Error; } return stdgo.os.Os.stdout.writeAt(_p, _off) #else null #end;
                __self__.writeString = #if !macro function(__0:GoString):{ var _0 : GoInt; var _1 : stdgo.Error; } return stdgo.os.Os.stdout.writeString(__0) #else null #end;
                __self__._checkValid = #if !macro function(__0:GoString):stdgo.Error return stdgo.os.Os.stdout._checkValid(__0) #else null #end;
                __self__._chmod = #if !macro function(_mode:stdgo.io.fs.Fs.FileMode):stdgo.Error return stdgo.os.Os.stdout._chmod(_mode) #else null #end;
                __self__._close = #if !macro function():stdgo.Error return stdgo.os.Os.stdout._close() #else null #end;
                __self__._pread = #if !macro function(_p:Slice<GoUInt8>, _off:GoInt64):{ var _0 : GoInt; var _1 : stdgo.Error; } return stdgo.os.Os.stdout._pread(_p, _off) #else null #end;
                __self__._pwrite = #if !macro function(_p:Slice<GoUInt8>, _off:GoInt64):{ var _0 : GoInt; var _1 : stdgo.Error; } return stdgo.os.Os.stdout._pwrite(_p, _off) #else null #end;
                __self__._read = #if !macro function(_p:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : stdgo.Error; } return stdgo.os.Os.stdout._read(_p) #else null #end;
                __self__._readFrom = #if !macro function(_r__:Reader):{ var _0 : GoInt64; var _1 : Bool; var _2 : stdgo.Error; } return stdgo.os.Os.stdout._readFrom(_r__) #else null #end;
                __self__._readdir = #if !macro function(_n:GoInt, _mode:stdgo.os.Os.T_readdirMode):{ var _0 : Slice<GoString>; var _1 : Slice<stdgo.io.fs.Fs.DirEntry>; var _2 : Slice<stdgo.io.fs.Fs.FileInfo>; var _3 : stdgo.Error; } return stdgo.os.Os.stdout._readdir(_n, _mode) #else null #end;
                __self__._seek = #if !macro function(_offset:GoInt64, _whence:GoInt):{ var _0 : GoInt64; var _1 : stdgo.Error; } return stdgo.os.Os.stdout._seek(_offset, _whence) #else null #end;
                __self__._setDeadline = #if !macro function(__0:stdgo.time.Time.Time):stdgo.Error return stdgo.os.Os.stdout._setDeadline(__0) #else null #end;
                __self__._setReadDeadline = #if !macro function(__0:stdgo.time.Time.Time):stdgo.Error return stdgo.os.Os.stdout._setReadDeadline(__0) #else null #end;
                __self__._setWriteDeadline = #if !macro function(__0:stdgo.time.Time.Time):stdgo.Error return stdgo.os.Os.stdout._setWriteDeadline(__0) #else null #end;
                __self__._wrapErr = #if !macro function(_op:GoString, _err:stdgo.Error):stdgo.Error return stdgo.os.Os.stdout._wrapErr(_op, _err) #else null #end;
                __self__._write = #if !macro function(_p:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : stdgo.Error; } return stdgo.os.Os.stdout._write(_p) #else null #end;
                __self__;
            }, {
                final __self__ = new stdgo.strings.Strings.Reader_wrapper(_r);
                __self__.len = #if !macro function():GoInt return _r.len() #else null #end;
                __self__.read = #if !macro function(_p:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : stdgo.Error; } return _r.read(_p) #else null #end;
                __self__.readAt = #if !macro function(_p:Slice<GoUInt8>, _off:GoInt64):{ var _0 : GoInt; var _1 : stdgo.Error; } return _r.readAt(_p, _off) #else null #end;
                __self__.readByte = #if !macro function():{ var _0 : GoUInt8; var _1 : stdgo.Error; } return _r.readByte() #else null #end;
                __self__.readRune = #if !macro function():{ var _0 : GoInt32; var _1 : GoInt; var _2 : stdgo.Error; } return _r.readRune() #else null #end;
                __self__.reset = #if !macro function(__0:GoString):Void _r.reset(__0) #else null #end;
                __self__.seek = #if !macro function(_offset:GoInt64, _whence:GoInt):{ var _0 : GoInt64; var _1 : stdgo.Error; } return _r.seek(_offset, _whence) #else null #end;
                __self__.size = #if !macro function():GoInt64 return _r.size() #else null #end;
                __self__.unreadByte = #if !macro function():stdgo.Error return _r.unreadByte() #else null #end;
                __self__.unreadRune = #if !macro function():stdgo.Error return _r.unreadRune() #else null #end;
                __self__.writeTo = #if !macro function(_w:Writer):{ var _0 : GoInt64; var _1 : stdgo.Error; } return _r.writeTo(_w) #else null #end;
                __self__;
            }), _0:GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                stdgo.log.Log.fatal(Go.toInterface(_err));
            };
        };
    }
function exampleCopyBuffer():Void {
        var _r1 = stdgo.strings.Strings.newReader(((Go.str("first reader\n") : GoString)));
        var _r2 = stdgo.strings.Strings.newReader(((Go.str("second reader\n") : GoString)));
        var _buf = new Slice<GoUInt8>(((((8 : GoInt)) : GoInt)).toBasic(), 0, ...[for (i in 0 ... ((((8 : GoInt)) : GoInt)).toBasic()) ((0 : GoUInt8))]);
        {
            var __tmp__ = stdgo.io.Io.copyBuffer({
                final __self__ = new stdgo.os.Os.File_wrapper(stdgo.os.Os.stdout);
                __self__.chdir = #if !macro function():stdgo.Error return stdgo.os.Os.stdout.chdir() #else null #end;
                __self__.chmod = #if !macro function(_mode:stdgo.io.fs.Fs.FileMode):stdgo.Error return stdgo.os.Os.stdout.chmod(_mode) #else null #end;
                __self__.chown = #if !macro function(_uid:GoInt, _gid:GoInt):stdgo.Error return stdgo.os.Os.stdout.chown(_uid, _gid) #else null #end;
                __self__.close = #if !macro function():stdgo.Error return stdgo.os.Os.stdout.close() #else null #end;
                __self__.fd = #if !macro function():GoUIntptr return stdgo.os.Os.stdout.fd() #else null #end;
                __self__.name = #if !macro function():GoString return stdgo.os.Os.stdout.name() #else null #end;
                __self__.read = #if !macro function(_p:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : stdgo.Error; } return stdgo.os.Os.stdout.read(_p) #else null #end;
                __self__.readAt = #if !macro function(_p:Slice<GoUInt8>, _off:GoInt64):{ var _0 : GoInt; var _1 : stdgo.Error; } return stdgo.os.Os.stdout.readAt(_p, _off) #else null #end;
                __self__.readDir = #if !macro function(_pid:GoInt):{ var _0 : Slice<stdgo.io.fs.Fs.DirEntry>; var _1 : stdgo.Error; } return stdgo.os.Os.stdout.readDir(_pid) #else null #end;
                __self__.readFrom = #if !macro function(_r:Reader):{ var _0 : GoInt64; var _1 : stdgo.Error; } return stdgo.os.Os.stdout.readFrom(_r) #else null #end;
                __self__.readdir = #if !macro function(_pid:GoInt):{ var _0 : Slice<stdgo.io.fs.Fs.FileInfo>; var _1 : stdgo.Error; } return stdgo.os.Os.stdout.readdir(_pid) #else null #end;
                __self__.readdirnames = #if !macro function(_pid:GoInt):{ var _0 : Slice<GoString>; var _1 : stdgo.Error; } return stdgo.os.Os.stdout.readdirnames(_pid) #else null #end;
                __self__.seek = #if !macro function(_offset:GoInt64, _whence:GoInt):{ var _0 : GoInt64; var _1 : stdgo.Error; } return stdgo.os.Os.stdout.seek(_offset, _whence) #else null #end;
                __self__.setDeadline = #if !macro function(__0:stdgo.time.Time.Time):stdgo.Error return stdgo.os.Os.stdout.setDeadline(__0) #else null #end;
                __self__.setReadDeadline = #if !macro function(__0:stdgo.time.Time.Time):stdgo.Error return stdgo.os.Os.stdout.setReadDeadline(__0) #else null #end;
                __self__.setWriteDeadline = #if !macro function(__0:stdgo.time.Time.Time):stdgo.Error return stdgo.os.Os.stdout.setWriteDeadline(__0) #else null #end;
                __self__.stat = #if !macro function():{ var _0 : stdgo.io.fs.Fs.FileInfo; var _1 : stdgo.Error; } return stdgo.os.Os.stdout.stat() #else null #end;
                __self__.sync = #if !macro function():stdgo.Error return stdgo.os.Os.stdout.sync() #else null #end;
                __self__.syscallConn = #if !macro function():{ var _0 : stdgo.syscall.Syscall.RawConn; var _1 : stdgo.Error; } return stdgo.os.Os.stdout.syscallConn() #else null #end;
                __self__.truncate = #if !macro function(__0:GoInt64):stdgo.Error return stdgo.os.Os.stdout.truncate(__0) #else null #end;
                __self__.write = #if !macro function(_p:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : stdgo.Error; } return stdgo.os.Os.stdout.write(_p) #else null #end;
                __self__.writeAt = #if !macro function(_p:Slice<GoUInt8>, _off:GoInt64):{ var _0 : GoInt; var _1 : stdgo.Error; } return stdgo.os.Os.stdout.writeAt(_p, _off) #else null #end;
                __self__.writeString = #if !macro function(__0:GoString):{ var _0 : GoInt; var _1 : stdgo.Error; } return stdgo.os.Os.stdout.writeString(__0) #else null #end;
                __self__._checkValid = #if !macro function(__0:GoString):stdgo.Error return stdgo.os.Os.stdout._checkValid(__0) #else null #end;
                __self__._chmod = #if !macro function(_mode:stdgo.io.fs.Fs.FileMode):stdgo.Error return stdgo.os.Os.stdout._chmod(_mode) #else null #end;
                __self__._close = #if !macro function():stdgo.Error return stdgo.os.Os.stdout._close() #else null #end;
                __self__._pread = #if !macro function(_p:Slice<GoUInt8>, _off:GoInt64):{ var _0 : GoInt; var _1 : stdgo.Error; } return stdgo.os.Os.stdout._pread(_p, _off) #else null #end;
                __self__._pwrite = #if !macro function(_p:Slice<GoUInt8>, _off:GoInt64):{ var _0 : GoInt; var _1 : stdgo.Error; } return stdgo.os.Os.stdout._pwrite(_p, _off) #else null #end;
                __self__._read = #if !macro function(_p:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : stdgo.Error; } return stdgo.os.Os.stdout._read(_p) #else null #end;
                __self__._readFrom = #if !macro function(_r:Reader):{ var _0 : GoInt64; var _1 : Bool; var _2 : stdgo.Error; } return stdgo.os.Os.stdout._readFrom(_r) #else null #end;
                __self__._readdir = #if !macro function(_n:GoInt, _mode:stdgo.os.Os.T_readdirMode):{ var _0 : Slice<GoString>; var _1 : Slice<stdgo.io.fs.Fs.DirEntry>; var _2 : Slice<stdgo.io.fs.Fs.FileInfo>; var _3 : stdgo.Error; } return stdgo.os.Os.stdout._readdir(_n, _mode) #else null #end;
                __self__._seek = #if !macro function(_offset:GoInt64, _whence:GoInt):{ var _0 : GoInt64; var _1 : stdgo.Error; } return stdgo.os.Os.stdout._seek(_offset, _whence) #else null #end;
                __self__._setDeadline = #if !macro function(__0:stdgo.time.Time.Time):stdgo.Error return stdgo.os.Os.stdout._setDeadline(__0) #else null #end;
                __self__._setReadDeadline = #if !macro function(__0:stdgo.time.Time.Time):stdgo.Error return stdgo.os.Os.stdout._setReadDeadline(__0) #else null #end;
                __self__._setWriteDeadline = #if !macro function(__0:stdgo.time.Time.Time):stdgo.Error return stdgo.os.Os.stdout._setWriteDeadline(__0) #else null #end;
                __self__._wrapErr = #if !macro function(_op:GoString, _err:stdgo.Error):stdgo.Error return stdgo.os.Os.stdout._wrapErr(_op, _err) #else null #end;
                __self__._write = #if !macro function(_p:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : stdgo.Error; } return stdgo.os.Os.stdout._write(_p) #else null #end;
                __self__;
            }, {
                final __self__ = new stdgo.strings.Strings.Reader_wrapper(_r1);
                __self__.len = #if !macro function():GoInt return _r1.len() #else null #end;
                __self__.read = #if !macro function(_p:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : stdgo.Error; } return _r1.read(_p) #else null #end;
                __self__.readAt = #if !macro function(_p:Slice<GoUInt8>, _off:GoInt64):{ var _0 : GoInt; var _1 : stdgo.Error; } return _r1.readAt(_p, _off) #else null #end;
                __self__.readByte = #if !macro function():{ var _0 : GoUInt8; var _1 : stdgo.Error; } return _r1.readByte() #else null #end;
                __self__.readRune = #if !macro function():{ var _0 : GoInt32; var _1 : GoInt; var _2 : stdgo.Error; } return _r1.readRune() #else null #end;
                __self__.reset = #if !macro function(__0:GoString):Void _r1.reset(__0) #else null #end;
                __self__.seek = #if !macro function(_offset:GoInt64, _whence:GoInt):{ var _0 : GoInt64; var _1 : stdgo.Error; } return _r1.seek(_offset, _whence) #else null #end;
                __self__.size = #if !macro function():GoInt64 return _r1.size() #else null #end;
                __self__.unreadByte = #if !macro function():stdgo.Error return _r1.unreadByte() #else null #end;
                __self__.unreadRune = #if !macro function():stdgo.Error return _r1.unreadRune() #else null #end;
                __self__.writeTo = #if !macro function(_w:Writer):{ var _0 : GoInt64; var _1 : stdgo.Error; } return _r1.writeTo(_w) #else null #end;
                __self__;
            }, _buf), _0:GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                stdgo.log.Log.fatal(Go.toInterface(_err));
            };
        };
        {
            var __tmp__ = stdgo.io.Io.copyBuffer({
                final __self__ = new stdgo.os.Os.File_wrapper(stdgo.os.Os.stdout);
                __self__.chdir = #if !macro function():stdgo.Error return stdgo.os.Os.stdout.chdir() #else null #end;
                __self__.chmod = #if !macro function(_mode:stdgo.io.fs.Fs.FileMode):stdgo.Error return stdgo.os.Os.stdout.chmod(_mode) #else null #end;
                __self__.chown = #if !macro function(_uid:GoInt, _gid:GoInt):stdgo.Error return stdgo.os.Os.stdout.chown(_uid, _gid) #else null #end;
                __self__.close = #if !macro function():stdgo.Error return stdgo.os.Os.stdout.close() #else null #end;
                __self__.fd = #if !macro function():GoUIntptr return stdgo.os.Os.stdout.fd() #else null #end;
                __self__.name = #if !macro function():GoString return stdgo.os.Os.stdout.name() #else null #end;
                __self__.read = #if !macro function(_p:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : stdgo.Error; } return stdgo.os.Os.stdout.read(_p) #else null #end;
                __self__.readAt = #if !macro function(_p:Slice<GoUInt8>, _off:GoInt64):{ var _0 : GoInt; var _1 : stdgo.Error; } return stdgo.os.Os.stdout.readAt(_p, _off) #else null #end;
                __self__.readDir = #if !macro function(_pid:GoInt):{ var _0 : Slice<stdgo.io.fs.Fs.DirEntry>; var _1 : stdgo.Error; } return stdgo.os.Os.stdout.readDir(_pid) #else null #end;
                __self__.readFrom = #if !macro function(_r:Reader):{ var _0 : GoInt64; var _1 : stdgo.Error; } return stdgo.os.Os.stdout.readFrom(_r) #else null #end;
                __self__.readdir = #if !macro function(_pid:GoInt):{ var _0 : Slice<stdgo.io.fs.Fs.FileInfo>; var _1 : stdgo.Error; } return stdgo.os.Os.stdout.readdir(_pid) #else null #end;
                __self__.readdirnames = #if !macro function(_pid:GoInt):{ var _0 : Slice<GoString>; var _1 : stdgo.Error; } return stdgo.os.Os.stdout.readdirnames(_pid) #else null #end;
                __self__.seek = #if !macro function(_offset:GoInt64, _whence:GoInt):{ var _0 : GoInt64; var _1 : stdgo.Error; } return stdgo.os.Os.stdout.seek(_offset, _whence) #else null #end;
                __self__.setDeadline = #if !macro function(__0:stdgo.time.Time.Time):stdgo.Error return stdgo.os.Os.stdout.setDeadline(__0) #else null #end;
                __self__.setReadDeadline = #if !macro function(__0:stdgo.time.Time.Time):stdgo.Error return stdgo.os.Os.stdout.setReadDeadline(__0) #else null #end;
                __self__.setWriteDeadline = #if !macro function(__0:stdgo.time.Time.Time):stdgo.Error return stdgo.os.Os.stdout.setWriteDeadline(__0) #else null #end;
                __self__.stat = #if !macro function():{ var _0 : stdgo.io.fs.Fs.FileInfo; var _1 : stdgo.Error; } return stdgo.os.Os.stdout.stat() #else null #end;
                __self__.sync = #if !macro function():stdgo.Error return stdgo.os.Os.stdout.sync() #else null #end;
                __self__.syscallConn = #if !macro function():{ var _0 : stdgo.syscall.Syscall.RawConn; var _1 : stdgo.Error; } return stdgo.os.Os.stdout.syscallConn() #else null #end;
                __self__.truncate = #if !macro function(__0:GoInt64):stdgo.Error return stdgo.os.Os.stdout.truncate(__0) #else null #end;
                __self__.write = #if !macro function(_p:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : stdgo.Error; } return stdgo.os.Os.stdout.write(_p) #else null #end;
                __self__.writeAt = #if !macro function(_p:Slice<GoUInt8>, _off:GoInt64):{ var _0 : GoInt; var _1 : stdgo.Error; } return stdgo.os.Os.stdout.writeAt(_p, _off) #else null #end;
                __self__.writeString = #if !macro function(__0:GoString):{ var _0 : GoInt; var _1 : stdgo.Error; } return stdgo.os.Os.stdout.writeString(__0) #else null #end;
                __self__._checkValid = #if !macro function(__0:GoString):stdgo.Error return stdgo.os.Os.stdout._checkValid(__0) #else null #end;
                __self__._chmod = #if !macro function(_mode:stdgo.io.fs.Fs.FileMode):stdgo.Error return stdgo.os.Os.stdout._chmod(_mode) #else null #end;
                __self__._close = #if !macro function():stdgo.Error return stdgo.os.Os.stdout._close() #else null #end;
                __self__._pread = #if !macro function(_p:Slice<GoUInt8>, _off:GoInt64):{ var _0 : GoInt; var _1 : stdgo.Error; } return stdgo.os.Os.stdout._pread(_p, _off) #else null #end;
                __self__._pwrite = #if !macro function(_p:Slice<GoUInt8>, _off:GoInt64):{ var _0 : GoInt; var _1 : stdgo.Error; } return stdgo.os.Os.stdout._pwrite(_p, _off) #else null #end;
                __self__._read = #if !macro function(_p:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : stdgo.Error; } return stdgo.os.Os.stdout._read(_p) #else null #end;
                __self__._readFrom = #if !macro function(_r:Reader):{ var _0 : GoInt64; var _1 : Bool; var _2 : stdgo.Error; } return stdgo.os.Os.stdout._readFrom(_r) #else null #end;
                __self__._readdir = #if !macro function(_n:GoInt, _mode:stdgo.os.Os.T_readdirMode):{ var _0 : Slice<GoString>; var _1 : Slice<stdgo.io.fs.Fs.DirEntry>; var _2 : Slice<stdgo.io.fs.Fs.FileInfo>; var _3 : stdgo.Error; } return stdgo.os.Os.stdout._readdir(_n, _mode) #else null #end;
                __self__._seek = #if !macro function(_offset:GoInt64, _whence:GoInt):{ var _0 : GoInt64; var _1 : stdgo.Error; } return stdgo.os.Os.stdout._seek(_offset, _whence) #else null #end;
                __self__._setDeadline = #if !macro function(__0:stdgo.time.Time.Time):stdgo.Error return stdgo.os.Os.stdout._setDeadline(__0) #else null #end;
                __self__._setReadDeadline = #if !macro function(__0:stdgo.time.Time.Time):stdgo.Error return stdgo.os.Os.stdout._setReadDeadline(__0) #else null #end;
                __self__._setWriteDeadline = #if !macro function(__0:stdgo.time.Time.Time):stdgo.Error return stdgo.os.Os.stdout._setWriteDeadline(__0) #else null #end;
                __self__._wrapErr = #if !macro function(_op:GoString, _err_:stdgo.Error):stdgo.Error return stdgo.os.Os.stdout._wrapErr(_op, _err_) #else null #end;
                __self__._write = #if !macro function(_p:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : stdgo.Error; } return stdgo.os.Os.stdout._write(_p) #else null #end;
                __self__;
            }, {
                final __self__ = new stdgo.strings.Strings.Reader_wrapper(_r2);
                __self__.len = #if !macro function():GoInt return _r2.len() #else null #end;
                __self__.read = #if !macro function(_p:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : stdgo.Error; } return _r2.read(_p) #else null #end;
                __self__.readAt = #if !macro function(_p:Slice<GoUInt8>, _off:GoInt64):{ var _0 : GoInt; var _1 : stdgo.Error; } return _r2.readAt(_p, _off) #else null #end;
                __self__.readByte = #if !macro function():{ var _0 : GoUInt8; var _1 : stdgo.Error; } return _r2.readByte() #else null #end;
                __self__.readRune = #if !macro function():{ var _0 : GoInt32; var _1 : GoInt; var _2 : stdgo.Error; } return _r2.readRune() #else null #end;
                __self__.reset = #if !macro function(__0:GoString):Void _r2.reset(__0) #else null #end;
                __self__.seek = #if !macro function(_offset:GoInt64, _whence:GoInt):{ var _0 : GoInt64; var _1 : stdgo.Error; } return _r2.seek(_offset, _whence) #else null #end;
                __self__.size = #if !macro function():GoInt64 return _r2.size() #else null #end;
                __self__.unreadByte = #if !macro function():stdgo.Error return _r2.unreadByte() #else null #end;
                __self__.unreadRune = #if !macro function():stdgo.Error return _r2.unreadRune() #else null #end;
                __self__.writeTo = #if !macro function(_w:Writer):{ var _0 : GoInt64; var _1 : stdgo.Error; } return _r2.writeTo(_w) #else null #end;
                __self__;
            }, _buf), _1:GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                stdgo.log.Log.fatal(Go.toInterface(_err));
            };
        };
    }
function exampleCopyN():Void {
        var _r = stdgo.strings.Strings.newReader(((Go.str("some io.Reader stream to be read") : GoString)));
        {
            var __tmp__ = stdgo.io.Io.copyN({
                final __self__ = new stdgo.os.Os.File_wrapper(stdgo.os.Os.stdout);
                __self__.chdir = #if !macro function():stdgo.Error return stdgo.os.Os.stdout.chdir() #else null #end;
                __self__.chmod = #if !macro function(_mode:stdgo.io.fs.Fs.FileMode):stdgo.Error return stdgo.os.Os.stdout.chmod(_mode) #else null #end;
                __self__.chown = #if !macro function(_uid:GoInt, _gid:GoInt):stdgo.Error return stdgo.os.Os.stdout.chown(_uid, _gid) #else null #end;
                __self__.close = #if !macro function():stdgo.Error return stdgo.os.Os.stdout.close() #else null #end;
                __self__.fd = #if !macro function():GoUIntptr return stdgo.os.Os.stdout.fd() #else null #end;
                __self__.name = #if !macro function():GoString return stdgo.os.Os.stdout.name() #else null #end;
                __self__.read = #if !macro function(_p:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : stdgo.Error; } return stdgo.os.Os.stdout.read(_p) #else null #end;
                __self__.readAt = #if !macro function(_p:Slice<GoUInt8>, _off:GoInt64):{ var _0 : GoInt; var _1 : stdgo.Error; } return stdgo.os.Os.stdout.readAt(_p, _off) #else null #end;
                __self__.readDir = #if !macro function(_pid:GoInt):{ var _0 : Slice<stdgo.io.fs.Fs.DirEntry>; var _1 : stdgo.Error; } return stdgo.os.Os.stdout.readDir(_pid) #else null #end;
                __self__.readFrom = #if !macro function(_r_:Reader):{ var _0 : GoInt64; var _1 : stdgo.Error; } return stdgo.os.Os.stdout.readFrom(_r_) #else null #end;
                __self__.readdir = #if !macro function(_pid:GoInt):{ var _0 : Slice<stdgo.io.fs.Fs.FileInfo>; var _1 : stdgo.Error; } return stdgo.os.Os.stdout.readdir(_pid) #else null #end;
                __self__.readdirnames = #if !macro function(_pid:GoInt):{ var _0 : Slice<GoString>; var _1 : stdgo.Error; } return stdgo.os.Os.stdout.readdirnames(_pid) #else null #end;
                __self__.seek = #if !macro function(_offset:GoInt64, _whence:GoInt):{ var _0 : GoInt64; var _1 : stdgo.Error; } return stdgo.os.Os.stdout.seek(_offset, _whence) #else null #end;
                __self__.setDeadline = #if !macro function(__0:stdgo.time.Time.Time):stdgo.Error return stdgo.os.Os.stdout.setDeadline(__0) #else null #end;
                __self__.setReadDeadline = #if !macro function(__0:stdgo.time.Time.Time):stdgo.Error return stdgo.os.Os.stdout.setReadDeadline(__0) #else null #end;
                __self__.setWriteDeadline = #if !macro function(__0:stdgo.time.Time.Time):stdgo.Error return stdgo.os.Os.stdout.setWriteDeadline(__0) #else null #end;
                __self__.stat = #if !macro function():{ var _0 : stdgo.io.fs.Fs.FileInfo; var _1 : stdgo.Error; } return stdgo.os.Os.stdout.stat() #else null #end;
                __self__.sync = #if !macro function():stdgo.Error return stdgo.os.Os.stdout.sync() #else null #end;
                __self__.syscallConn = #if !macro function():{ var _0 : stdgo.syscall.Syscall.RawConn; var _1 : stdgo.Error; } return stdgo.os.Os.stdout.syscallConn() #else null #end;
                __self__.truncate = #if !macro function(__0:GoInt64):stdgo.Error return stdgo.os.Os.stdout.truncate(__0) #else null #end;
                __self__.write = #if !macro function(_p:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : stdgo.Error; } return stdgo.os.Os.stdout.write(_p) #else null #end;
                __self__.writeAt = #if !macro function(_p:Slice<GoUInt8>, _off:GoInt64):{ var _0 : GoInt; var _1 : stdgo.Error; } return stdgo.os.Os.stdout.writeAt(_p, _off) #else null #end;
                __self__.writeString = #if !macro function(__0:GoString):{ var _0 : GoInt; var _1 : stdgo.Error; } return stdgo.os.Os.stdout.writeString(__0) #else null #end;
                __self__._checkValid = #if !macro function(__0:GoString):stdgo.Error return stdgo.os.Os.stdout._checkValid(__0) #else null #end;
                __self__._chmod = #if !macro function(_mode:stdgo.io.fs.Fs.FileMode):stdgo.Error return stdgo.os.Os.stdout._chmod(_mode) #else null #end;
                __self__._close = #if !macro function():stdgo.Error return stdgo.os.Os.stdout._close() #else null #end;
                __self__._pread = #if !macro function(_p:Slice<GoUInt8>, _off:GoInt64):{ var _0 : GoInt; var _1 : stdgo.Error; } return stdgo.os.Os.stdout._pread(_p, _off) #else null #end;
                __self__._pwrite = #if !macro function(_p:Slice<GoUInt8>, _off:GoInt64):{ var _0 : GoInt; var _1 : stdgo.Error; } return stdgo.os.Os.stdout._pwrite(_p, _off) #else null #end;
                __self__._read = #if !macro function(_p:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : stdgo.Error; } return stdgo.os.Os.stdout._read(_p) #else null #end;
                __self__._readFrom = #if !macro function(_r__:Reader):{ var _0 : GoInt64; var _1 : Bool; var _2 : stdgo.Error; } return stdgo.os.Os.stdout._readFrom(_r__) #else null #end;
                __self__._readdir = #if !macro function(_n:GoInt, _mode:stdgo.os.Os.T_readdirMode):{ var _0 : Slice<GoString>; var _1 : Slice<stdgo.io.fs.Fs.DirEntry>; var _2 : Slice<stdgo.io.fs.Fs.FileInfo>; var _3 : stdgo.Error; } return stdgo.os.Os.stdout._readdir(_n, _mode) #else null #end;
                __self__._seek = #if !macro function(_offset:GoInt64, _whence:GoInt):{ var _0 : GoInt64; var _1 : stdgo.Error; } return stdgo.os.Os.stdout._seek(_offset, _whence) #else null #end;
                __self__._setDeadline = #if !macro function(__0:stdgo.time.Time.Time):stdgo.Error return stdgo.os.Os.stdout._setDeadline(__0) #else null #end;
                __self__._setReadDeadline = #if !macro function(__0:stdgo.time.Time.Time):stdgo.Error return stdgo.os.Os.stdout._setReadDeadline(__0) #else null #end;
                __self__._setWriteDeadline = #if !macro function(__0:stdgo.time.Time.Time):stdgo.Error return stdgo.os.Os.stdout._setWriteDeadline(__0) #else null #end;
                __self__._wrapErr = #if !macro function(_op:GoString, _err:stdgo.Error):stdgo.Error return stdgo.os.Os.stdout._wrapErr(_op, _err) #else null #end;
                __self__._write = #if !macro function(_p:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : stdgo.Error; } return stdgo.os.Os.stdout._write(_p) #else null #end;
                __self__;
            }, {
                final __self__ = new stdgo.strings.Strings.Reader_wrapper(_r);
                __self__.len = #if !macro function():GoInt return _r.len() #else null #end;
                __self__.read = #if !macro function(_p:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : stdgo.Error; } return _r.read(_p) #else null #end;
                __self__.readAt = #if !macro function(_p:Slice<GoUInt8>, _off:GoInt64):{ var _0 : GoInt; var _1 : stdgo.Error; } return _r.readAt(_p, _off) #else null #end;
                __self__.readByte = #if !macro function():{ var _0 : GoUInt8; var _1 : stdgo.Error; } return _r.readByte() #else null #end;
                __self__.readRune = #if !macro function():{ var _0 : GoInt32; var _1 : GoInt; var _2 : stdgo.Error; } return _r.readRune() #else null #end;
                __self__.reset = #if !macro function(__0:GoString):Void _r.reset(__0) #else null #end;
                __self__.seek = #if !macro function(_offset:GoInt64, _whence:GoInt):{ var _0 : GoInt64; var _1 : stdgo.Error; } return _r.seek(_offset, _whence) #else null #end;
                __self__.size = #if !macro function():GoInt64 return _r.size() #else null #end;
                __self__.unreadByte = #if !macro function():stdgo.Error return _r.unreadByte() #else null #end;
                __self__.unreadRune = #if !macro function():stdgo.Error return _r.unreadRune() #else null #end;
                __self__.writeTo = #if !macro function(_w:Writer):{ var _0 : GoInt64; var _1 : stdgo.Error; } return _r.writeTo(_w) #else null #end;
                __self__;
            }, ((4 : GoInt64))), _0:GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                stdgo.log.Log.fatal(Go.toInterface(_err));
            };
        };
    }
function exampleReadAtLeast():Void {
        var _r = stdgo.strings.Strings.newReader(((Go.str("some io.Reader stream to be read\n") : GoString)));
        var _buf = new Slice<GoUInt8>(((((14 : GoInt)) : GoInt)).toBasic(), 0, ...[for (i in 0 ... ((((14 : GoInt)) : GoInt)).toBasic()) ((0 : GoUInt8))]);
        {
            var __tmp__ = stdgo.io.Io.readAtLeast({
                final __self__ = new stdgo.strings.Strings.Reader_wrapper(_r);
                __self__.len = #if !macro function():GoInt return _r.len() #else null #end;
                __self__.read = #if !macro function(_p:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : stdgo.Error; } return _r.read(_p) #else null #end;
                __self__.readAt = #if !macro function(_p:Slice<GoUInt8>, _off:GoInt64):{ var _0 : GoInt; var _1 : stdgo.Error; } return _r.readAt(_p, _off) #else null #end;
                __self__.readByte = #if !macro function():{ var _0 : GoUInt8; var _1 : stdgo.Error; } return _r.readByte() #else null #end;
                __self__.readRune = #if !macro function():{ var _0 : GoInt32; var _1 : GoInt; var _2 : stdgo.Error; } return _r.readRune() #else null #end;
                __self__.reset = #if !macro function(__0:GoString):Void _r.reset(__0) #else null #end;
                __self__.seek = #if !macro function(_offset:GoInt64, _whence:GoInt):{ var _0 : GoInt64; var _1 : stdgo.Error; } return _r.seek(_offset, _whence) #else null #end;
                __self__.size = #if !macro function():GoInt64 return _r.size() #else null #end;
                __self__.unreadByte = #if !macro function():stdgo.Error return _r.unreadByte() #else null #end;
                __self__.unreadRune = #if !macro function():stdgo.Error return _r.unreadRune() #else null #end;
                __self__.writeTo = #if !macro function(_w:Writer):{ var _0 : GoInt64; var _1 : stdgo.Error; } return _r.writeTo(_w) #else null #end;
                __self__;
            }, _buf, ((4 : GoInt))), _0:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                stdgo.log.Log.fatal(Go.toInterface(_err));
            };
        };
        stdgo.fmt.Fmt.printf(((Go.str("%s\n") : GoString)), Go.toInterface(_buf));
        var _shortBuf = new Slice<GoUInt8>(((((3 : GoInt)) : GoInt)).toBasic(), 0, ...[for (i in 0 ... ((((3 : GoInt)) : GoInt)).toBasic()) ((0 : GoUInt8))]);
        {
            var __tmp__ = stdgo.io.Io.readAtLeast({
                final __self__ = new stdgo.strings.Strings.Reader_wrapper(_r);
                __self__.len = #if !macro function():GoInt return _r.len() #else null #end;
                __self__.read = #if !macro function(_p:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : stdgo.Error; } return _r.read(_p) #else null #end;
                __self__.readAt = #if !macro function(_p:Slice<GoUInt8>, _off:GoInt64):{ var _0 : GoInt; var _1 : stdgo.Error; } return _r.readAt(_p, _off) #else null #end;
                __self__.readByte = #if !macro function():{ var _0 : GoUInt8; var _1 : stdgo.Error; } return _r.readByte() #else null #end;
                __self__.readRune = #if !macro function():{ var _0 : GoInt32; var _1 : GoInt; var _2 : stdgo.Error; } return _r.readRune() #else null #end;
                __self__.reset = #if !macro function(__0:GoString):Void _r.reset(__0) #else null #end;
                __self__.seek = #if !macro function(_offset:GoInt64, _whence:GoInt):{ var _0 : GoInt64; var _1 : stdgo.Error; } return _r.seek(_offset, _whence) #else null #end;
                __self__.size = #if !macro function():GoInt64 return _r.size() #else null #end;
                __self__.unreadByte = #if !macro function():stdgo.Error return _r.unreadByte() #else null #end;
                __self__.unreadRune = #if !macro function():stdgo.Error return _r.unreadRune() #else null #end;
                __self__.writeTo = #if !macro function(_w:Writer):{ var _0 : GoInt64; var _1 : stdgo.Error; } return _r.writeTo(_w) #else null #end;
                __self__;
            }, _shortBuf, ((4 : GoInt))), _1:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                stdgo.fmt.Fmt.println(((Go.str("error:") : GoString)), _err);
            };
        };
        var _longBuf = new Slice<GoUInt8>(((((64 : GoInt)) : GoInt)).toBasic(), 0, ...[for (i in 0 ... ((((64 : GoInt)) : GoInt)).toBasic()) ((0 : GoUInt8))]);
        {
            var __tmp__ = stdgo.io.Io.readAtLeast({
                final __self__ = new stdgo.strings.Strings.Reader_wrapper(_r);
                __self__.len = #if !macro function():GoInt return _r.len() #else null #end;
                __self__.read = #if !macro function(_p:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : stdgo.Error; } return _r.read(_p) #else null #end;
                __self__.readAt = #if !macro function(_p:Slice<GoUInt8>, _off:GoInt64):{ var _0 : GoInt; var _1 : stdgo.Error; } return _r.readAt(_p, _off) #else null #end;
                __self__.readByte = #if !macro function():{ var _0 : GoUInt8; var _1 : stdgo.Error; } return _r.readByte() #else null #end;
                __self__.readRune = #if !macro function():{ var _0 : GoInt32; var _1 : GoInt; var _2 : stdgo.Error; } return _r.readRune() #else null #end;
                __self__.reset = #if !macro function(__0:GoString):Void _r.reset(__0) #else null #end;
                __self__.seek = #if !macro function(_offset:GoInt64, _whence:GoInt):{ var _0 : GoInt64; var _1 : stdgo.Error; } return _r.seek(_offset, _whence) #else null #end;
                __self__.size = #if !macro function():GoInt64 return _r.size() #else null #end;
                __self__.unreadByte = #if !macro function():stdgo.Error return _r.unreadByte() #else null #end;
                __self__.unreadRune = #if !macro function():stdgo.Error return _r.unreadRune() #else null #end;
                __self__.writeTo = #if !macro function(_w:Writer):{ var _0 : GoInt64; var _1 : stdgo.Error; } return _r.writeTo(_w) #else null #end;
                __self__;
            }, _longBuf, ((64 : GoInt))), _2:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                stdgo.fmt.Fmt.println(((Go.str("error:") : GoString)), _err);
            };
        };
    }
function exampleReadFull():Void {
        var _r = stdgo.strings.Strings.newReader(((Go.str("some io.Reader stream to be read\n") : GoString)));
        var _buf = new Slice<GoUInt8>(((((4 : GoInt)) : GoInt)).toBasic(), 0, ...[for (i in 0 ... ((((4 : GoInt)) : GoInt)).toBasic()) ((0 : GoUInt8))]);
        {
            var __tmp__ = stdgo.io.Io.readFull({
                final __self__ = new stdgo.strings.Strings.Reader_wrapper(_r);
                __self__.len = #if !macro function():GoInt return _r.len() #else null #end;
                __self__.read = #if !macro function(_p:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : stdgo.Error; } return _r.read(_p) #else null #end;
                __self__.readAt = #if !macro function(_p:Slice<GoUInt8>, _off:GoInt64):{ var _0 : GoInt; var _1 : stdgo.Error; } return _r.readAt(_p, _off) #else null #end;
                __self__.readByte = #if !macro function():{ var _0 : GoUInt8; var _1 : stdgo.Error; } return _r.readByte() #else null #end;
                __self__.readRune = #if !macro function():{ var _0 : GoInt32; var _1 : GoInt; var _2 : stdgo.Error; } return _r.readRune() #else null #end;
                __self__.reset = #if !macro function(__0:GoString):Void _r.reset(__0) #else null #end;
                __self__.seek = #if !macro function(_offset:GoInt64, _whence:GoInt):{ var _0 : GoInt64; var _1 : stdgo.Error; } return _r.seek(_offset, _whence) #else null #end;
                __self__.size = #if !macro function():GoInt64 return _r.size() #else null #end;
                __self__.unreadByte = #if !macro function():stdgo.Error return _r.unreadByte() #else null #end;
                __self__.unreadRune = #if !macro function():stdgo.Error return _r.unreadRune() #else null #end;
                __self__.writeTo = #if !macro function(_w:Writer):{ var _0 : GoInt64; var _1 : stdgo.Error; } return _r.writeTo(_w) #else null #end;
                __self__;
            }, _buf), _0:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                stdgo.log.Log.fatal(Go.toInterface(_err));
            };
        };
        stdgo.fmt.Fmt.printf(((Go.str("%s\n") : GoString)), Go.toInterface(_buf));
        var _longBuf = new Slice<GoUInt8>(((((64 : GoInt)) : GoInt)).toBasic(), 0, ...[for (i in 0 ... ((((64 : GoInt)) : GoInt)).toBasic()) ((0 : GoUInt8))]);
        {
            var __tmp__ = stdgo.io.Io.readFull({
                final __self__ = new stdgo.strings.Strings.Reader_wrapper(_r);
                __self__.len = #if !macro function():GoInt return _r.len() #else null #end;
                __self__.read = #if !macro function(_p:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : stdgo.Error; } return _r.read(_p) #else null #end;
                __self__.readAt = #if !macro function(_p:Slice<GoUInt8>, _off:GoInt64):{ var _0 : GoInt; var _1 : stdgo.Error; } return _r.readAt(_p, _off) #else null #end;
                __self__.readByte = #if !macro function():{ var _0 : GoUInt8; var _1 : stdgo.Error; } return _r.readByte() #else null #end;
                __self__.readRune = #if !macro function():{ var _0 : GoInt32; var _1 : GoInt; var _2 : stdgo.Error; } return _r.readRune() #else null #end;
                __self__.reset = #if !macro function(__0:GoString):Void _r.reset(__0) #else null #end;
                __self__.seek = #if !macro function(_offset:GoInt64, _whence:GoInt):{ var _0 : GoInt64; var _1 : stdgo.Error; } return _r.seek(_offset, _whence) #else null #end;
                __self__.size = #if !macro function():GoInt64 return _r.size() #else null #end;
                __self__.unreadByte = #if !macro function():stdgo.Error return _r.unreadByte() #else null #end;
                __self__.unreadRune = #if !macro function():stdgo.Error return _r.unreadRune() #else null #end;
                __self__.writeTo = #if !macro function(_w:Writer):{ var _0 : GoInt64; var _1 : stdgo.Error; } return _r.writeTo(_w) #else null #end;
                __self__;
            }, _longBuf), _1:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                stdgo.fmt.Fmt.println(((Go.str("error:") : GoString)), _err);
            };
        };
    }
function exampleWriteString():Void {
        {
            var __tmp__ = stdgo.io.Io.writeString({
                final __self__ = new stdgo.os.Os.File_wrapper(stdgo.os.Os.stdout);
                __self__.chdir = #if !macro function():stdgo.Error return stdgo.os.Os.stdout.chdir() #else null #end;
                __self__.chmod = #if !macro function(_mode:stdgo.io.fs.Fs.FileMode):stdgo.Error return stdgo.os.Os.stdout.chmod(_mode) #else null #end;
                __self__.chown = #if !macro function(_uid:GoInt, _gid:GoInt):stdgo.Error return stdgo.os.Os.stdout.chown(_uid, _gid) #else null #end;
                __self__.close = #if !macro function():stdgo.Error return stdgo.os.Os.stdout.close() #else null #end;
                __self__.fd = #if !macro function():GoUIntptr return stdgo.os.Os.stdout.fd() #else null #end;
                __self__.name = #if !macro function():GoString return stdgo.os.Os.stdout.name() #else null #end;
                __self__.read = #if !macro function(_p:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : stdgo.Error; } return stdgo.os.Os.stdout.read(_p) #else null #end;
                __self__.readAt = #if !macro function(_p:Slice<GoUInt8>, _off:GoInt64):{ var _0 : GoInt; var _1 : stdgo.Error; } return stdgo.os.Os.stdout.readAt(_p, _off) #else null #end;
                __self__.readDir = #if !macro function(_pid:GoInt):{ var _0 : Slice<stdgo.io.fs.Fs.DirEntry>; var _1 : stdgo.Error; } return stdgo.os.Os.stdout.readDir(_pid) #else null #end;
                __self__.readFrom = #if !macro function(_r:Reader):{ var _0 : GoInt64; var _1 : stdgo.Error; } return stdgo.os.Os.stdout.readFrom(_r) #else null #end;
                __self__.readdir = #if !macro function(_pid:GoInt):{ var _0 : Slice<stdgo.io.fs.Fs.FileInfo>; var _1 : stdgo.Error; } return stdgo.os.Os.stdout.readdir(_pid) #else null #end;
                __self__.readdirnames = #if !macro function(_pid:GoInt):{ var _0 : Slice<GoString>; var _1 : stdgo.Error; } return stdgo.os.Os.stdout.readdirnames(_pid) #else null #end;
                __self__.seek = #if !macro function(_offset:GoInt64, _whence:GoInt):{ var _0 : GoInt64; var _1 : stdgo.Error; } return stdgo.os.Os.stdout.seek(_offset, _whence) #else null #end;
                __self__.setDeadline = #if !macro function(__0:stdgo.time.Time.Time):stdgo.Error return stdgo.os.Os.stdout.setDeadline(__0) #else null #end;
                __self__.setReadDeadline = #if !macro function(__0:stdgo.time.Time.Time):stdgo.Error return stdgo.os.Os.stdout.setReadDeadline(__0) #else null #end;
                __self__.setWriteDeadline = #if !macro function(__0:stdgo.time.Time.Time):stdgo.Error return stdgo.os.Os.stdout.setWriteDeadline(__0) #else null #end;
                __self__.stat = #if !macro function():{ var _0 : stdgo.io.fs.Fs.FileInfo; var _1 : stdgo.Error; } return stdgo.os.Os.stdout.stat() #else null #end;
                __self__.sync = #if !macro function():stdgo.Error return stdgo.os.Os.stdout.sync() #else null #end;
                __self__.syscallConn = #if !macro function():{ var _0 : stdgo.syscall.Syscall.RawConn; var _1 : stdgo.Error; } return stdgo.os.Os.stdout.syscallConn() #else null #end;
                __self__.truncate = #if !macro function(__0:GoInt64):stdgo.Error return stdgo.os.Os.stdout.truncate(__0) #else null #end;
                __self__.write = #if !macro function(_p:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : stdgo.Error; } return stdgo.os.Os.stdout.write(_p) #else null #end;
                __self__.writeAt = #if !macro function(_p:Slice<GoUInt8>, _off:GoInt64):{ var _0 : GoInt; var _1 : stdgo.Error; } return stdgo.os.Os.stdout.writeAt(_p, _off) #else null #end;
                __self__.writeString = #if !macro function(__0:GoString):{ var _0 : GoInt; var _1 : stdgo.Error; } return stdgo.os.Os.stdout.writeString(__0) #else null #end;
                __self__._checkValid = #if !macro function(__0:GoString):stdgo.Error return stdgo.os.Os.stdout._checkValid(__0) #else null #end;
                __self__._chmod = #if !macro function(_mode:stdgo.io.fs.Fs.FileMode):stdgo.Error return stdgo.os.Os.stdout._chmod(_mode) #else null #end;
                __self__._close = #if !macro function():stdgo.Error return stdgo.os.Os.stdout._close() #else null #end;
                __self__._pread = #if !macro function(_p:Slice<GoUInt8>, _off:GoInt64):{ var _0 : GoInt; var _1 : stdgo.Error; } return stdgo.os.Os.stdout._pread(_p, _off) #else null #end;
                __self__._pwrite = #if !macro function(_p:Slice<GoUInt8>, _off:GoInt64):{ var _0 : GoInt; var _1 : stdgo.Error; } return stdgo.os.Os.stdout._pwrite(_p, _off) #else null #end;
                __self__._read = #if !macro function(_p:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : stdgo.Error; } return stdgo.os.Os.stdout._read(_p) #else null #end;
                __self__._readFrom = #if !macro function(_r:Reader):{ var _0 : GoInt64; var _1 : Bool; var _2 : stdgo.Error; } return stdgo.os.Os.stdout._readFrom(_r) #else null #end;
                __self__._readdir = #if !macro function(_n:GoInt, _mode:stdgo.os.Os.T_readdirMode):{ var _0 : Slice<GoString>; var _1 : Slice<stdgo.io.fs.Fs.DirEntry>; var _2 : Slice<stdgo.io.fs.Fs.FileInfo>; var _3 : stdgo.Error; } return stdgo.os.Os.stdout._readdir(_n, _mode) #else null #end;
                __self__._seek = #if !macro function(_offset:GoInt64, _whence:GoInt):{ var _0 : GoInt64; var _1 : stdgo.Error; } return stdgo.os.Os.stdout._seek(_offset, _whence) #else null #end;
                __self__._setDeadline = #if !macro function(__0:stdgo.time.Time.Time):stdgo.Error return stdgo.os.Os.stdout._setDeadline(__0) #else null #end;
                __self__._setReadDeadline = #if !macro function(__0:stdgo.time.Time.Time):stdgo.Error return stdgo.os.Os.stdout._setReadDeadline(__0) #else null #end;
                __self__._setWriteDeadline = #if !macro function(__0:stdgo.time.Time.Time):stdgo.Error return stdgo.os.Os.stdout._setWriteDeadline(__0) #else null #end;
                __self__._wrapErr = #if !macro function(_op:GoString, _err:stdgo.Error):stdgo.Error return stdgo.os.Os.stdout._wrapErr(_op, _err) #else null #end;
                __self__._write = #if !macro function(_p:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : stdgo.Error; } return stdgo.os.Os.stdout._write(_p) #else null #end;
                __self__;
            }, ((Go.str("Hello World") : GoString))), _0:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                stdgo.log.Log.fatal(Go.toInterface(_err));
            };
        };
    }
function exampleLimitReader():Void {
        var _r = stdgo.strings.Strings.newReader(((Go.str("some io.Reader stream to be read\n") : GoString)));
        var _lr:Reader = stdgo.io.Io.limitReader({
            final __self__ = new stdgo.strings.Strings.Reader_wrapper(_r);
            __self__.len = #if !macro function():GoInt return _r.len() #else null #end;
            __self__.read = #if !macro function(_p:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : stdgo.Error; } return _r.read(_p) #else null #end;
            __self__.readAt = #if !macro function(_p:Slice<GoUInt8>, _off:GoInt64):{ var _0 : GoInt; var _1 : stdgo.Error; } return _r.readAt(_p, _off) #else null #end;
            __self__.readByte = #if !macro function():{ var _0 : GoUInt8; var _1 : stdgo.Error; } return _r.readByte() #else null #end;
            __self__.readRune = #if !macro function():{ var _0 : GoInt32; var _1 : GoInt; var _2 : stdgo.Error; } return _r.readRune() #else null #end;
            __self__.reset = #if !macro function(__0:GoString):Void _r.reset(__0) #else null #end;
            __self__.seek = #if !macro function(_offset:GoInt64, _whence:GoInt):{ var _0 : GoInt64; var _1 : stdgo.Error; } return _r.seek(_offset, _whence) #else null #end;
            __self__.size = #if !macro function():GoInt64 return _r.size() #else null #end;
            __self__.unreadByte = #if !macro function():stdgo.Error return _r.unreadByte() #else null #end;
            __self__.unreadRune = #if !macro function():stdgo.Error return _r.unreadRune() #else null #end;
            __self__.writeTo = #if !macro function(_w:Writer):{ var _0 : GoInt64; var _1 : stdgo.Error; } return _r.writeTo(_w) #else null #end;
            __self__;
        }, ((4 : GoInt64)));
        {
            var __tmp__ = stdgo.io.Io.copy({
                final __self__ = new stdgo.os.Os.File_wrapper(stdgo.os.Os.stdout);
                __self__.chdir = #if !macro function():stdgo.Error return stdgo.os.Os.stdout.chdir() #else null #end;
                __self__.chmod = #if !macro function(_mode:stdgo.io.fs.Fs.FileMode):stdgo.Error return stdgo.os.Os.stdout.chmod(_mode) #else null #end;
                __self__.chown = #if !macro function(_uid:GoInt, _gid:GoInt):stdgo.Error return stdgo.os.Os.stdout.chown(_uid, _gid) #else null #end;
                __self__.close = #if !macro function():stdgo.Error return stdgo.os.Os.stdout.close() #else null #end;
                __self__.fd = #if !macro function():GoUIntptr return stdgo.os.Os.stdout.fd() #else null #end;
                __self__.name = #if !macro function():GoString return stdgo.os.Os.stdout.name() #else null #end;
                __self__.read = #if !macro function(_p:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : stdgo.Error; } return stdgo.os.Os.stdout.read(_p) #else null #end;
                __self__.readAt = #if !macro function(_p:Slice<GoUInt8>, _off:GoInt64):{ var _0 : GoInt; var _1 : stdgo.Error; } return stdgo.os.Os.stdout.readAt(_p, _off) #else null #end;
                __self__.readDir = #if !macro function(_pid:GoInt):{ var _0 : Slice<stdgo.io.fs.Fs.DirEntry>; var _1 : stdgo.Error; } return stdgo.os.Os.stdout.readDir(_pid) #else null #end;
                __self__.readFrom = #if !macro function(_r_:Reader):{ var _0 : GoInt64; var _1 : stdgo.Error; } return stdgo.os.Os.stdout.readFrom(_r_) #else null #end;
                __self__.readdir = #if !macro function(_pid:GoInt):{ var _0 : Slice<stdgo.io.fs.Fs.FileInfo>; var _1 : stdgo.Error; } return stdgo.os.Os.stdout.readdir(_pid) #else null #end;
                __self__.readdirnames = #if !macro function(_pid:GoInt):{ var _0 : Slice<GoString>; var _1 : stdgo.Error; } return stdgo.os.Os.stdout.readdirnames(_pid) #else null #end;
                __self__.seek = #if !macro function(_offset:GoInt64, _whence:GoInt):{ var _0 : GoInt64; var _1 : stdgo.Error; } return stdgo.os.Os.stdout.seek(_offset, _whence) #else null #end;
                __self__.setDeadline = #if !macro function(__0:stdgo.time.Time.Time):stdgo.Error return stdgo.os.Os.stdout.setDeadline(__0) #else null #end;
                __self__.setReadDeadline = #if !macro function(__0:stdgo.time.Time.Time):stdgo.Error return stdgo.os.Os.stdout.setReadDeadline(__0) #else null #end;
                __self__.setWriteDeadline = #if !macro function(__0:stdgo.time.Time.Time):stdgo.Error return stdgo.os.Os.stdout.setWriteDeadline(__0) #else null #end;
                __self__.stat = #if !macro function():{ var _0 : stdgo.io.fs.Fs.FileInfo; var _1 : stdgo.Error; } return stdgo.os.Os.stdout.stat() #else null #end;
                __self__.sync = #if !macro function():stdgo.Error return stdgo.os.Os.stdout.sync() #else null #end;
                __self__.syscallConn = #if !macro function():{ var _0 : stdgo.syscall.Syscall.RawConn; var _1 : stdgo.Error; } return stdgo.os.Os.stdout.syscallConn() #else null #end;
                __self__.truncate = #if !macro function(__0:GoInt64):stdgo.Error return stdgo.os.Os.stdout.truncate(__0) #else null #end;
                __self__.write = #if !macro function(_p:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : stdgo.Error; } return stdgo.os.Os.stdout.write(_p) #else null #end;
                __self__.writeAt = #if !macro function(_p:Slice<GoUInt8>, _off:GoInt64):{ var _0 : GoInt; var _1 : stdgo.Error; } return stdgo.os.Os.stdout.writeAt(_p, _off) #else null #end;
                __self__.writeString = #if !macro function(__0:GoString):{ var _0 : GoInt; var _1 : stdgo.Error; } return stdgo.os.Os.stdout.writeString(__0) #else null #end;
                __self__._checkValid = #if !macro function(__0:GoString):stdgo.Error return stdgo.os.Os.stdout._checkValid(__0) #else null #end;
                __self__._chmod = #if !macro function(_mode:stdgo.io.fs.Fs.FileMode):stdgo.Error return stdgo.os.Os.stdout._chmod(_mode) #else null #end;
                __self__._close = #if !macro function():stdgo.Error return stdgo.os.Os.stdout._close() #else null #end;
                __self__._pread = #if !macro function(_p:Slice<GoUInt8>, _off:GoInt64):{ var _0 : GoInt; var _1 : stdgo.Error; } return stdgo.os.Os.stdout._pread(_p, _off) #else null #end;
                __self__._pwrite = #if !macro function(_p:Slice<GoUInt8>, _off:GoInt64):{ var _0 : GoInt; var _1 : stdgo.Error; } return stdgo.os.Os.stdout._pwrite(_p, _off) #else null #end;
                __self__._read = #if !macro function(_p:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : stdgo.Error; } return stdgo.os.Os.stdout._read(_p) #else null #end;
                __self__._readFrom = #if !macro function(_r__:Reader):{ var _0 : GoInt64; var _1 : Bool; var _2 : stdgo.Error; } return stdgo.os.Os.stdout._readFrom(_r__) #else null #end;
                __self__._readdir = #if !macro function(_n:GoInt, _mode:stdgo.os.Os.T_readdirMode):{ var _0 : Slice<GoString>; var _1 : Slice<stdgo.io.fs.Fs.DirEntry>; var _2 : Slice<stdgo.io.fs.Fs.FileInfo>; var _3 : stdgo.Error; } return stdgo.os.Os.stdout._readdir(_n, _mode) #else null #end;
                __self__._seek = #if !macro function(_offset:GoInt64, _whence:GoInt):{ var _0 : GoInt64; var _1 : stdgo.Error; } return stdgo.os.Os.stdout._seek(_offset, _whence) #else null #end;
                __self__._setDeadline = #if !macro function(__0:stdgo.time.Time.Time):stdgo.Error return stdgo.os.Os.stdout._setDeadline(__0) #else null #end;
                __self__._setReadDeadline = #if !macro function(__0:stdgo.time.Time.Time):stdgo.Error return stdgo.os.Os.stdout._setReadDeadline(__0) #else null #end;
                __self__._setWriteDeadline = #if !macro function(__0:stdgo.time.Time.Time):stdgo.Error return stdgo.os.Os.stdout._setWriteDeadline(__0) #else null #end;
                __self__._wrapErr = #if !macro function(_op:GoString, _err:stdgo.Error):stdgo.Error return stdgo.os.Os.stdout._wrapErr(_op, _err) #else null #end;
                __self__._write = #if !macro function(_p:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : stdgo.Error; } return stdgo.os.Os.stdout._write(_p) #else null #end;
                __self__;
            }, _lr), _0:GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                stdgo.log.Log.fatal(Go.toInterface(_err));
            };
        };
    }
function exampleMultiReader():Void {
        var _r1 = stdgo.strings.Strings.newReader(((Go.str("first reader ") : GoString)));
        var _r2 = stdgo.strings.Strings.newReader(((Go.str("second reader ") : GoString)));
        var _r3 = stdgo.strings.Strings.newReader(((Go.str("third reader\n") : GoString)));
        var _r:Reader = stdgo.io.Io.multiReader({
            final __self__ = new stdgo.strings.Strings.Reader_wrapper(_r1);
            __self__.len = #if !macro function():GoInt return _r1.len() #else null #end;
            __self__.read = #if !macro function(_p:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : stdgo.Error; } return _r1.read(_p) #else null #end;
            __self__.readAt = #if !macro function(_p:Slice<GoUInt8>, _off:GoInt64):{ var _0 : GoInt; var _1 : stdgo.Error; } return _r1.readAt(_p, _off) #else null #end;
            __self__.readByte = #if !macro function():{ var _0 : GoUInt8; var _1 : stdgo.Error; } return _r1.readByte() #else null #end;
            __self__.readRune = #if !macro function():{ var _0 : GoInt32; var _1 : GoInt; var _2 : stdgo.Error; } return _r1.readRune() #else null #end;
            __self__.reset = #if !macro function(__0:GoString):Void _r1.reset(__0) #else null #end;
            __self__.seek = #if !macro function(_offset:GoInt64, _whence:GoInt):{ var _0 : GoInt64; var _1 : stdgo.Error; } return _r1.seek(_offset, _whence) #else null #end;
            __self__.size = #if !macro function():GoInt64 return _r1.size() #else null #end;
            __self__.unreadByte = #if !macro function():stdgo.Error return _r1.unreadByte() #else null #end;
            __self__.unreadRune = #if !macro function():stdgo.Error return _r1.unreadRune() #else null #end;
            __self__.writeTo = #if !macro function(_w:Writer):{ var _0 : GoInt64; var _1 : stdgo.Error; } return _r1.writeTo(_w) #else null #end;
            __self__;
        }, {
            final __self__ = new stdgo.strings.Strings.Reader_wrapper(_r2);
            __self__.len = #if !macro function():GoInt return _r2.len() #else null #end;
            __self__.read = #if !macro function(_p:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : stdgo.Error; } return _r2.read(_p) #else null #end;
            __self__.readAt = #if !macro function(_p:Slice<GoUInt8>, _off:GoInt64):{ var _0 : GoInt; var _1 : stdgo.Error; } return _r2.readAt(_p, _off) #else null #end;
            __self__.readByte = #if !macro function():{ var _0 : GoUInt8; var _1 : stdgo.Error; } return _r2.readByte() #else null #end;
            __self__.readRune = #if !macro function():{ var _0 : GoInt32; var _1 : GoInt; var _2 : stdgo.Error; } return _r2.readRune() #else null #end;
            __self__.reset = #if !macro function(__0:GoString):Void _r2.reset(__0) #else null #end;
            __self__.seek = #if !macro function(_offset:GoInt64, _whence:GoInt):{ var _0 : GoInt64; var _1 : stdgo.Error; } return _r2.seek(_offset, _whence) #else null #end;
            __self__.size = #if !macro function():GoInt64 return _r2.size() #else null #end;
            __self__.unreadByte = #if !macro function():stdgo.Error return _r2.unreadByte() #else null #end;
            __self__.unreadRune = #if !macro function():stdgo.Error return _r2.unreadRune() #else null #end;
            __self__.writeTo = #if !macro function(_w:Writer):{ var _0 : GoInt64; var _1 : stdgo.Error; } return _r2.writeTo(_w) #else null #end;
            __self__;
        }, {
            final __self__ = new stdgo.strings.Strings.Reader_wrapper(_r3);
            __self__.len = #if !macro function():GoInt return _r3.len() #else null #end;
            __self__.read = #if !macro function(_p:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : stdgo.Error; } return _r3.read(_p) #else null #end;
            __self__.readAt = #if !macro function(_p:Slice<GoUInt8>, _off:GoInt64):{ var _0 : GoInt; var _1 : stdgo.Error; } return _r3.readAt(_p, _off) #else null #end;
            __self__.readByte = #if !macro function():{ var _0 : GoUInt8; var _1 : stdgo.Error; } return _r3.readByte() #else null #end;
            __self__.readRune = #if !macro function():{ var _0 : GoInt32; var _1 : GoInt; var _2 : stdgo.Error; } return _r3.readRune() #else null #end;
            __self__.reset = #if !macro function(__0:GoString):Void _r3.reset(__0) #else null #end;
            __self__.seek = #if !macro function(_offset:GoInt64, _whence:GoInt):{ var _0 : GoInt64; var _1 : stdgo.Error; } return _r3.seek(_offset, _whence) #else null #end;
            __self__.size = #if !macro function():GoInt64 return _r3.size() #else null #end;
            __self__.unreadByte = #if !macro function():stdgo.Error return _r3.unreadByte() #else null #end;
            __self__.unreadRune = #if !macro function():stdgo.Error return _r3.unreadRune() #else null #end;
            __self__.writeTo = #if !macro function(_w:Writer):{ var _0 : GoInt64; var _1 : stdgo.Error; } return _r3.writeTo(_w) #else null #end;
            __self__;
        });
        {
            var __tmp__ = stdgo.io.Io.copy({
                final __self__ = new stdgo.os.Os.File_wrapper(stdgo.os.Os.stdout);
                __self__.chdir = #if !macro function():stdgo.Error return stdgo.os.Os.stdout.chdir() #else null #end;
                __self__.chmod = #if !macro function(_mode:stdgo.io.fs.Fs.FileMode):stdgo.Error return stdgo.os.Os.stdout.chmod(_mode) #else null #end;
                __self__.chown = #if !macro function(_uid:GoInt, _gid:GoInt):stdgo.Error return stdgo.os.Os.stdout.chown(_uid, _gid) #else null #end;
                __self__.close = #if !macro function():stdgo.Error return stdgo.os.Os.stdout.close() #else null #end;
                __self__.fd = #if !macro function():GoUIntptr return stdgo.os.Os.stdout.fd() #else null #end;
                __self__.name = #if !macro function():GoString return stdgo.os.Os.stdout.name() #else null #end;
                __self__.read = #if !macro function(_p:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : stdgo.Error; } return stdgo.os.Os.stdout.read(_p) #else null #end;
                __self__.readAt = #if !macro function(_p:Slice<GoUInt8>, _off:GoInt64):{ var _0 : GoInt; var _1 : stdgo.Error; } return stdgo.os.Os.stdout.readAt(_p, _off) #else null #end;
                __self__.readDir = #if !macro function(_pid:GoInt):{ var _0 : Slice<stdgo.io.fs.Fs.DirEntry>; var _1 : stdgo.Error; } return stdgo.os.Os.stdout.readDir(_pid) #else null #end;
                __self__.readFrom = #if !macro function(_r_:Reader):{ var _0 : GoInt64; var _1 : stdgo.Error; } return stdgo.os.Os.stdout.readFrom(_r_) #else null #end;
                __self__.readdir = #if !macro function(_pid:GoInt):{ var _0 : Slice<stdgo.io.fs.Fs.FileInfo>; var _1 : stdgo.Error; } return stdgo.os.Os.stdout.readdir(_pid) #else null #end;
                __self__.readdirnames = #if !macro function(_pid:GoInt):{ var _0 : Slice<GoString>; var _1 : stdgo.Error; } return stdgo.os.Os.stdout.readdirnames(_pid) #else null #end;
                __self__.seek = #if !macro function(_offset:GoInt64, _whence:GoInt):{ var _0 : GoInt64; var _1 : stdgo.Error; } return stdgo.os.Os.stdout.seek(_offset, _whence) #else null #end;
                __self__.setDeadline = #if !macro function(__0:stdgo.time.Time.Time):stdgo.Error return stdgo.os.Os.stdout.setDeadline(__0) #else null #end;
                __self__.setReadDeadline = #if !macro function(__0:stdgo.time.Time.Time):stdgo.Error return stdgo.os.Os.stdout.setReadDeadline(__0) #else null #end;
                __self__.setWriteDeadline = #if !macro function(__0:stdgo.time.Time.Time):stdgo.Error return stdgo.os.Os.stdout.setWriteDeadline(__0) #else null #end;
                __self__.stat = #if !macro function():{ var _0 : stdgo.io.fs.Fs.FileInfo; var _1 : stdgo.Error; } return stdgo.os.Os.stdout.stat() #else null #end;
                __self__.sync = #if !macro function():stdgo.Error return stdgo.os.Os.stdout.sync() #else null #end;
                __self__.syscallConn = #if !macro function():{ var _0 : stdgo.syscall.Syscall.RawConn; var _1 : stdgo.Error; } return stdgo.os.Os.stdout.syscallConn() #else null #end;
                __self__.truncate = #if !macro function(__0:GoInt64):stdgo.Error return stdgo.os.Os.stdout.truncate(__0) #else null #end;
                __self__.write = #if !macro function(_p:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : stdgo.Error; } return stdgo.os.Os.stdout.write(_p) #else null #end;
                __self__.writeAt = #if !macro function(_p:Slice<GoUInt8>, _off:GoInt64):{ var _0 : GoInt; var _1 : stdgo.Error; } return stdgo.os.Os.stdout.writeAt(_p, _off) #else null #end;
                __self__.writeString = #if !macro function(__0:GoString):{ var _0 : GoInt; var _1 : stdgo.Error; } return stdgo.os.Os.stdout.writeString(__0) #else null #end;
                __self__._checkValid = #if !macro function(__0:GoString):stdgo.Error return stdgo.os.Os.stdout._checkValid(__0) #else null #end;
                __self__._chmod = #if !macro function(_mode:stdgo.io.fs.Fs.FileMode):stdgo.Error return stdgo.os.Os.stdout._chmod(_mode) #else null #end;
                __self__._close = #if !macro function():stdgo.Error return stdgo.os.Os.stdout._close() #else null #end;
                __self__._pread = #if !macro function(_p:Slice<GoUInt8>, _off:GoInt64):{ var _0 : GoInt; var _1 : stdgo.Error; } return stdgo.os.Os.stdout._pread(_p, _off) #else null #end;
                __self__._pwrite = #if !macro function(_p:Slice<GoUInt8>, _off:GoInt64):{ var _0 : GoInt; var _1 : stdgo.Error; } return stdgo.os.Os.stdout._pwrite(_p, _off) #else null #end;
                __self__._read = #if !macro function(_p:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : stdgo.Error; } return stdgo.os.Os.stdout._read(_p) #else null #end;
                __self__._readFrom = #if !macro function(_r__:Reader):{ var _0 : GoInt64; var _1 : Bool; var _2 : stdgo.Error; } return stdgo.os.Os.stdout._readFrom(_r__) #else null #end;
                __self__._readdir = #if !macro function(_n:GoInt, _mode:stdgo.os.Os.T_readdirMode):{ var _0 : Slice<GoString>; var _1 : Slice<stdgo.io.fs.Fs.DirEntry>; var _2 : Slice<stdgo.io.fs.Fs.FileInfo>; var _3 : stdgo.Error; } return stdgo.os.Os.stdout._readdir(_n, _mode) #else null #end;
                __self__._seek = #if !macro function(_offset:GoInt64, _whence:GoInt):{ var _0 : GoInt64; var _1 : stdgo.Error; } return stdgo.os.Os.stdout._seek(_offset, _whence) #else null #end;
                __self__._setDeadline = #if !macro function(__0:stdgo.time.Time.Time):stdgo.Error return stdgo.os.Os.stdout._setDeadline(__0) #else null #end;
                __self__._setReadDeadline = #if !macro function(__0:stdgo.time.Time.Time):stdgo.Error return stdgo.os.Os.stdout._setReadDeadline(__0) #else null #end;
                __self__._setWriteDeadline = #if !macro function(__0:stdgo.time.Time.Time):stdgo.Error return stdgo.os.Os.stdout._setWriteDeadline(__0) #else null #end;
                __self__._wrapErr = #if !macro function(_op:GoString, _err:stdgo.Error):stdgo.Error return stdgo.os.Os.stdout._wrapErr(_op, _err) #else null #end;
                __self__._write = #if !macro function(_p:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : stdgo.Error; } return stdgo.os.Os.stdout._write(_p) #else null #end;
                __self__;
            }, _r), _0:GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                stdgo.log.Log.fatal(Go.toInterface(_err));
            };
        };
    }
function exampleTeeReader():Void {
        var _r:Reader = {
            final __self__ = new stdgo.strings.Strings.Reader_wrapper(stdgo.strings.Strings.newReader(((Go.str("some io.Reader stream to be read\n") : GoString))));
            __self__.len = #if !macro function():GoInt return stdgo.strings.Strings.newReader(((Go.str("some io.Reader stream to be read\n") : GoString))).len() #else null #end;
            __self__.read = #if !macro function(_p:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : stdgo.Error; } return stdgo.strings.Strings.newReader(((Go.str("some io.Reader stream to be read\n") : GoString))).read(_p) #else null #end;
            __self__.readAt = #if !macro function(_p:Slice<GoUInt8>, _off:GoInt64):{ var _0 : GoInt; var _1 : stdgo.Error; } return stdgo.strings.Strings.newReader(((Go.str("some io.Reader stream to be read\n") : GoString))).readAt(_p, _off) #else null #end;
            __self__.readByte = #if !macro function():{ var _0 : GoUInt8; var _1 : stdgo.Error; } return stdgo.strings.Strings.newReader(((Go.str("some io.Reader stream to be read\n") : GoString))).readByte() #else null #end;
            __self__.readRune = #if !macro function():{ var _0 : GoInt32; var _1 : GoInt; var _2 : stdgo.Error; } return stdgo.strings.Strings.newReader(((Go.str("some io.Reader stream to be read\n") : GoString))).readRune() #else null #end;
            __self__.reset = #if !macro function(__0:GoString):Void stdgo.strings.Strings.newReader(((Go.str("some io.Reader stream to be read\n") : GoString))).reset(__0) #else null #end;
            __self__.seek = #if !macro function(_offset:GoInt64, _whence:GoInt):{ var _0 : GoInt64; var _1 : stdgo.Error; } return stdgo.strings.Strings.newReader(((Go.str("some io.Reader stream to be read\n") : GoString))).seek(_offset, _whence) #else null #end;
            __self__.size = #if !macro function():GoInt64 return stdgo.strings.Strings.newReader(((Go.str("some io.Reader stream to be read\n") : GoString))).size() #else null #end;
            __self__.unreadByte = #if !macro function():stdgo.Error return stdgo.strings.Strings.newReader(((Go.str("some io.Reader stream to be read\n") : GoString))).unreadByte() #else null #end;
            __self__.unreadRune = #if !macro function():stdgo.Error return stdgo.strings.Strings.newReader(((Go.str("some io.Reader stream to be read\n") : GoString))).unreadRune() #else null #end;
            __self__.writeTo = #if !macro function(_w:Writer):{ var _0 : GoInt64; var _1 : stdgo.Error; } return stdgo.strings.Strings.newReader(((Go.str("some io.Reader stream to be read\n") : GoString))).writeTo(_w) #else null #end;
            __self__;
        };
        _r = stdgo.io.Io.teeReader(_r, {
            final __self__ = new stdgo.os.Os.File_wrapper(stdgo.os.Os.stdout);
            __self__.chdir = #if !macro function():stdgo.Error return stdgo.os.Os.stdout.chdir() #else null #end;
            __self__.chmod = #if !macro function(_mode:stdgo.io.fs.Fs.FileMode):stdgo.Error return stdgo.os.Os.stdout.chmod(_mode) #else null #end;
            __self__.chown = #if !macro function(_uid:GoInt, _gid:GoInt):stdgo.Error return stdgo.os.Os.stdout.chown(_uid, _gid) #else null #end;
            __self__.close = #if !macro function():stdgo.Error return stdgo.os.Os.stdout.close() #else null #end;
            __self__.fd = #if !macro function():GoUIntptr return stdgo.os.Os.stdout.fd() #else null #end;
            __self__.name = #if !macro function():GoString return stdgo.os.Os.stdout.name() #else null #end;
            __self__.read = #if !macro function(_p:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : stdgo.Error; } return stdgo.os.Os.stdout.read(_p) #else null #end;
            __self__.readAt = #if !macro function(_p:Slice<GoUInt8>, _off:GoInt64):{ var _0 : GoInt; var _1 : stdgo.Error; } return stdgo.os.Os.stdout.readAt(_p, _off) #else null #end;
            __self__.readDir = #if !macro function(_pid:GoInt):{ var _0 : Slice<stdgo.io.fs.Fs.DirEntry>; var _1 : stdgo.Error; } return stdgo.os.Os.stdout.readDir(_pid) #else null #end;
            __self__.readFrom = #if !macro function(_r_:Reader):{ var _0 : GoInt64; var _1 : stdgo.Error; } return stdgo.os.Os.stdout.readFrom(_r_) #else null #end;
            __self__.readdir = #if !macro function(_pid:GoInt):{ var _0 : Slice<stdgo.io.fs.Fs.FileInfo>; var _1 : stdgo.Error; } return stdgo.os.Os.stdout.readdir(_pid) #else null #end;
            __self__.readdirnames = #if !macro function(_pid:GoInt):{ var _0 : Slice<GoString>; var _1 : stdgo.Error; } return stdgo.os.Os.stdout.readdirnames(_pid) #else null #end;
            __self__.seek = #if !macro function(_offset:GoInt64, _whence:GoInt):{ var _0 : GoInt64; var _1 : stdgo.Error; } return stdgo.os.Os.stdout.seek(_offset, _whence) #else null #end;
            __self__.setDeadline = #if !macro function(__0:stdgo.time.Time.Time):stdgo.Error return stdgo.os.Os.stdout.setDeadline(__0) #else null #end;
            __self__.setReadDeadline = #if !macro function(__0:stdgo.time.Time.Time):stdgo.Error return stdgo.os.Os.stdout.setReadDeadline(__0) #else null #end;
            __self__.setWriteDeadline = #if !macro function(__0:stdgo.time.Time.Time):stdgo.Error return stdgo.os.Os.stdout.setWriteDeadline(__0) #else null #end;
            __self__.stat = #if !macro function():{ var _0 : stdgo.io.fs.Fs.FileInfo; var _1 : stdgo.Error; } return stdgo.os.Os.stdout.stat() #else null #end;
            __self__.sync = #if !macro function():stdgo.Error return stdgo.os.Os.stdout.sync() #else null #end;
            __self__.syscallConn = #if !macro function():{ var _0 : stdgo.syscall.Syscall.RawConn; var _1 : stdgo.Error; } return stdgo.os.Os.stdout.syscallConn() #else null #end;
            __self__.truncate = #if !macro function(__0:GoInt64):stdgo.Error return stdgo.os.Os.stdout.truncate(__0) #else null #end;
            __self__.write = #if !macro function(_p:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : stdgo.Error; } return stdgo.os.Os.stdout.write(_p) #else null #end;
            __self__.writeAt = #if !macro function(_p:Slice<GoUInt8>, _off:GoInt64):{ var _0 : GoInt; var _1 : stdgo.Error; } return stdgo.os.Os.stdout.writeAt(_p, _off) #else null #end;
            __self__.writeString = #if !macro function(__0:GoString):{ var _0 : GoInt; var _1 : stdgo.Error; } return stdgo.os.Os.stdout.writeString(__0) #else null #end;
            __self__._checkValid = #if !macro function(__0:GoString):stdgo.Error return stdgo.os.Os.stdout._checkValid(__0) #else null #end;
            __self__._chmod = #if !macro function(_mode:stdgo.io.fs.Fs.FileMode):stdgo.Error return stdgo.os.Os.stdout._chmod(_mode) #else null #end;
            __self__._close = #if !macro function():stdgo.Error return stdgo.os.Os.stdout._close() #else null #end;
            __self__._pread = #if !macro function(_p:Slice<GoUInt8>, _off:GoInt64):{ var _0 : GoInt; var _1 : stdgo.Error; } return stdgo.os.Os.stdout._pread(_p, _off) #else null #end;
            __self__._pwrite = #if !macro function(_p:Slice<GoUInt8>, _off:GoInt64):{ var _0 : GoInt; var _1 : stdgo.Error; } return stdgo.os.Os.stdout._pwrite(_p, _off) #else null #end;
            __self__._read = #if !macro function(_p:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : stdgo.Error; } return stdgo.os.Os.stdout._read(_p) #else null #end;
            __self__._readFrom = #if !macro function(_r__:Reader):{ var _0 : GoInt64; var _1 : Bool; var _2 : stdgo.Error; } return stdgo.os.Os.stdout._readFrom(_r__) #else null #end;
            __self__._readdir = #if !macro function(_n:GoInt, _mode:stdgo.os.Os.T_readdirMode):{ var _0 : Slice<GoString>; var _1 : Slice<stdgo.io.fs.Fs.DirEntry>; var _2 : Slice<stdgo.io.fs.Fs.FileInfo>; var _3 : stdgo.Error; } return stdgo.os.Os.stdout._readdir(_n, _mode) #else null #end;
            __self__._seek = #if !macro function(_offset:GoInt64, _whence:GoInt):{ var _0 : GoInt64; var _1 : stdgo.Error; } return stdgo.os.Os.stdout._seek(_offset, _whence) #else null #end;
            __self__._setDeadline = #if !macro function(__0:stdgo.time.Time.Time):stdgo.Error return stdgo.os.Os.stdout._setDeadline(__0) #else null #end;
            __self__._setReadDeadline = #if !macro function(__0:stdgo.time.Time.Time):stdgo.Error return stdgo.os.Os.stdout._setReadDeadline(__0) #else null #end;
            __self__._setWriteDeadline = #if !macro function(__0:stdgo.time.Time.Time):stdgo.Error return stdgo.os.Os.stdout._setWriteDeadline(__0) #else null #end;
            __self__._wrapErr = #if !macro function(_op:GoString, _err:stdgo.Error):stdgo.Error return stdgo.os.Os.stdout._wrapErr(_op, _err) #else null #end;
            __self__._write = #if !macro function(_p:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : stdgo.Error; } return stdgo.os.Os.stdout._write(_p) #else null #end;
            __self__;
        });
        {
            var __tmp__ = stdgo.io.Io.readAll(_r), _0:Slice<GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                stdgo.log.Log.fatal(Go.toInterface(_err));
            };
        };
    }
function exampleSectionReader():Void {
        var _r = stdgo.strings.Strings.newReader(((Go.str("some io.Reader stream to be read\n") : GoString)));
        var _s = stdgo.io.Io.newSectionReader({
            final __self__ = new stdgo.strings.Strings.Reader_wrapper(_r);
            __self__.len = #if !macro function():GoInt return _r.len() #else null #end;
            __self__.read = #if !macro function(_p:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : stdgo.Error; } return _r.read(_p) #else null #end;
            __self__.readAt = #if !macro function(_p:Slice<GoUInt8>, _off:GoInt64):{ var _0 : GoInt; var _1 : stdgo.Error; } return _r.readAt(_p, _off) #else null #end;
            __self__.readByte = #if !macro function():{ var _0 : GoUInt8; var _1 : stdgo.Error; } return _r.readByte() #else null #end;
            __self__.readRune = #if !macro function():{ var _0 : GoInt32; var _1 : GoInt; var _2 : stdgo.Error; } return _r.readRune() #else null #end;
            __self__.reset = #if !macro function(__0:GoString):Void _r.reset(__0) #else null #end;
            __self__.seek = #if !macro function(_offset:GoInt64, _whence:GoInt):{ var _0 : GoInt64; var _1 : stdgo.Error; } return _r.seek(_offset, _whence) #else null #end;
            __self__.size = #if !macro function():GoInt64 return _r.size() #else null #end;
            __self__.unreadByte = #if !macro function():stdgo.Error return _r.unreadByte() #else null #end;
            __self__.unreadRune = #if !macro function():stdgo.Error return _r.unreadRune() #else null #end;
            __self__.writeTo = #if !macro function(_w:Writer):{ var _0 : GoInt64; var _1 : stdgo.Error; } return _r.writeTo(_w) #else null #end;
            __self__;
        }, ((5 : GoInt64)), ((17 : GoInt64)));
        {
            var __tmp__ = stdgo.io.Io.copy({
                final __self__ = new stdgo.os.Os.File_wrapper(stdgo.os.Os.stdout);
                __self__.chdir = #if !macro function():stdgo.Error return stdgo.os.Os.stdout.chdir() #else null #end;
                __self__.chmod = #if !macro function(_mode:stdgo.io.fs.Fs.FileMode):stdgo.Error return stdgo.os.Os.stdout.chmod(_mode) #else null #end;
                __self__.chown = #if !macro function(_uid:GoInt, _gid:GoInt):stdgo.Error return stdgo.os.Os.stdout.chown(_uid, _gid) #else null #end;
                __self__.close = #if !macro function():stdgo.Error return stdgo.os.Os.stdout.close() #else null #end;
                __self__.fd = #if !macro function():GoUIntptr return stdgo.os.Os.stdout.fd() #else null #end;
                __self__.name = #if !macro function():GoString return stdgo.os.Os.stdout.name() #else null #end;
                __self__.read = #if !macro function(_p:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : stdgo.Error; } return stdgo.os.Os.stdout.read(_p) #else null #end;
                __self__.readAt = #if !macro function(_p:Slice<GoUInt8>, _off:GoInt64):{ var _0 : GoInt; var _1 : stdgo.Error; } return stdgo.os.Os.stdout.readAt(_p, _off) #else null #end;
                __self__.readDir = #if !macro function(_pid:GoInt):{ var _0 : Slice<stdgo.io.fs.Fs.DirEntry>; var _1 : stdgo.Error; } return stdgo.os.Os.stdout.readDir(_pid) #else null #end;
                __self__.readFrom = #if !macro function(_r_:Reader):{ var _0 : GoInt64; var _1 : stdgo.Error; } return stdgo.os.Os.stdout.readFrom(_r_) #else null #end;
                __self__.readdir = #if !macro function(_pid:GoInt):{ var _0 : Slice<stdgo.io.fs.Fs.FileInfo>; var _1 : stdgo.Error; } return stdgo.os.Os.stdout.readdir(_pid) #else null #end;
                __self__.readdirnames = #if !macro function(_pid:GoInt):{ var _0 : Slice<GoString>; var _1 : stdgo.Error; } return stdgo.os.Os.stdout.readdirnames(_pid) #else null #end;
                __self__.seek = #if !macro function(_offset:GoInt64, _whence:GoInt):{ var _0 : GoInt64; var _1 : stdgo.Error; } return stdgo.os.Os.stdout.seek(_offset, _whence) #else null #end;
                __self__.setDeadline = #if !macro function(__0:stdgo.time.Time.Time):stdgo.Error return stdgo.os.Os.stdout.setDeadline(__0) #else null #end;
                __self__.setReadDeadline = #if !macro function(__0:stdgo.time.Time.Time):stdgo.Error return stdgo.os.Os.stdout.setReadDeadline(__0) #else null #end;
                __self__.setWriteDeadline = #if !macro function(__0:stdgo.time.Time.Time):stdgo.Error return stdgo.os.Os.stdout.setWriteDeadline(__0) #else null #end;
                __self__.stat = #if !macro function():{ var _0 : stdgo.io.fs.Fs.FileInfo; var _1 : stdgo.Error; } return stdgo.os.Os.stdout.stat() #else null #end;
                __self__.sync = #if !macro function():stdgo.Error return stdgo.os.Os.stdout.sync() #else null #end;
                __self__.syscallConn = #if !macro function():{ var _0 : stdgo.syscall.Syscall.RawConn; var _1 : stdgo.Error; } return stdgo.os.Os.stdout.syscallConn() #else null #end;
                __self__.truncate = #if !macro function(__0:GoInt64):stdgo.Error return stdgo.os.Os.stdout.truncate(__0) #else null #end;
                __self__.write = #if !macro function(_p:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : stdgo.Error; } return stdgo.os.Os.stdout.write(_p) #else null #end;
                __self__.writeAt = #if !macro function(_p:Slice<GoUInt8>, _off:GoInt64):{ var _0 : GoInt; var _1 : stdgo.Error; } return stdgo.os.Os.stdout.writeAt(_p, _off) #else null #end;
                __self__.writeString = #if !macro function(__0:GoString):{ var _0 : GoInt; var _1 : stdgo.Error; } return stdgo.os.Os.stdout.writeString(__0) #else null #end;
                __self__._checkValid = #if !macro function(__0:GoString):stdgo.Error return stdgo.os.Os.stdout._checkValid(__0) #else null #end;
                __self__._chmod = #if !macro function(_mode:stdgo.io.fs.Fs.FileMode):stdgo.Error return stdgo.os.Os.stdout._chmod(_mode) #else null #end;
                __self__._close = #if !macro function():stdgo.Error return stdgo.os.Os.stdout._close() #else null #end;
                __self__._pread = #if !macro function(_p:Slice<GoUInt8>, _off:GoInt64):{ var _0 : GoInt; var _1 : stdgo.Error; } return stdgo.os.Os.stdout._pread(_p, _off) #else null #end;
                __self__._pwrite = #if !macro function(_p:Slice<GoUInt8>, _off:GoInt64):{ var _0 : GoInt; var _1 : stdgo.Error; } return stdgo.os.Os.stdout._pwrite(_p, _off) #else null #end;
                __self__._read = #if !macro function(_p:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : stdgo.Error; } return stdgo.os.Os.stdout._read(_p) #else null #end;
                __self__._readFrom = #if !macro function(_r__:Reader):{ var _0 : GoInt64; var _1 : Bool; var _2 : stdgo.Error; } return stdgo.os.Os.stdout._readFrom(_r__) #else null #end;
                __self__._readdir = #if !macro function(_n:GoInt, _mode:stdgo.os.Os.T_readdirMode):{ var _0 : Slice<GoString>; var _1 : Slice<stdgo.io.fs.Fs.DirEntry>; var _2 : Slice<stdgo.io.fs.Fs.FileInfo>; var _3 : stdgo.Error; } return stdgo.os.Os.stdout._readdir(_n, _mode) #else null #end;
                __self__._seek = #if !macro function(_offset:GoInt64, _whence:GoInt):{ var _0 : GoInt64; var _1 : stdgo.Error; } return stdgo.os.Os.stdout._seek(_offset, _whence) #else null #end;
                __self__._setDeadline = #if !macro function(__0:stdgo.time.Time.Time):stdgo.Error return stdgo.os.Os.stdout._setDeadline(__0) #else null #end;
                __self__._setReadDeadline = #if !macro function(__0:stdgo.time.Time.Time):stdgo.Error return stdgo.os.Os.stdout._setReadDeadline(__0) #else null #end;
                __self__._setWriteDeadline = #if !macro function(__0:stdgo.time.Time.Time):stdgo.Error return stdgo.os.Os.stdout._setWriteDeadline(__0) #else null #end;
                __self__._wrapErr = #if !macro function(_op:GoString, _err:stdgo.Error):stdgo.Error return stdgo.os.Os.stdout._wrapErr(_op, _err) #else null #end;
                __self__._write = #if !macro function(_p:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : stdgo.Error; } return stdgo.os.Os.stdout._write(_p) #else null #end;
                __self__;
            }, {
                final __self__ = new SectionReader_wrapper(_s);
                __self__.read = #if !macro function(_p:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : stdgo.Error; } return _s.read(_p) #else null #end;
                __self__.readAt = #if !macro function(_p:Slice<GoUInt8>, _off:GoInt64):{ var _0 : GoInt; var _1 : stdgo.Error; } return _s.readAt(_p, _off) #else null #end;
                __self__.seek = #if !macro function(_offset:GoInt64, _whence:GoInt):{ var _0 : GoInt64; var _1 : stdgo.Error; } return _s.seek(_offset, _whence) #else null #end;
                __self__.size = #if !macro function():GoInt64 return _s.size() #else null #end;
                __self__;
            }), _0:GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                stdgo.log.Log.fatal(Go.toInterface(_err));
            };
        };
    }
function exampleSectionReader_Read():Void {
        var _r = stdgo.strings.Strings.newReader(((Go.str("some io.Reader stream to be read\n") : GoString)));
        var _s = stdgo.io.Io.newSectionReader({
            final __self__ = new stdgo.strings.Strings.Reader_wrapper(_r);
            __self__.len = #if !macro function():GoInt return _r.len() #else null #end;
            __self__.read = #if !macro function(_p:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : stdgo.Error; } return _r.read(_p) #else null #end;
            __self__.readAt = #if !macro function(_p:Slice<GoUInt8>, _off:GoInt64):{ var _0 : GoInt; var _1 : stdgo.Error; } return _r.readAt(_p, _off) #else null #end;
            __self__.readByte = #if !macro function():{ var _0 : GoUInt8; var _1 : stdgo.Error; } return _r.readByte() #else null #end;
            __self__.readRune = #if !macro function():{ var _0 : GoInt32; var _1 : GoInt; var _2 : stdgo.Error; } return _r.readRune() #else null #end;
            __self__.reset = #if !macro function(__0:GoString):Void _r.reset(__0) #else null #end;
            __self__.seek = #if !macro function(_offset:GoInt64, _whence:GoInt):{ var _0 : GoInt64; var _1 : stdgo.Error; } return _r.seek(_offset, _whence) #else null #end;
            __self__.size = #if !macro function():GoInt64 return _r.size() #else null #end;
            __self__.unreadByte = #if !macro function():stdgo.Error return _r.unreadByte() #else null #end;
            __self__.unreadRune = #if !macro function():stdgo.Error return _r.unreadRune() #else null #end;
            __self__.writeTo = #if !macro function(_w:Writer):{ var _0 : GoInt64; var _1 : stdgo.Error; } return _r.writeTo(_w) #else null #end;
            __self__;
        }, ((5 : GoInt64)), ((17 : GoInt64)));
        var _buf = new Slice<GoUInt8>(((((9 : GoInt)) : GoInt)).toBasic(), 0, ...[for (i in 0 ... ((((9 : GoInt)) : GoInt)).toBasic()) ((0 : GoUInt8))]);
        {
            var __tmp__ = _s.read(_buf), _0:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                stdgo.log.Log.fatal(Go.toInterface(_err));
            };
        };
        stdgo.fmt.Fmt.printf(((Go.str("%s\n") : GoString)), Go.toInterface(_buf));
    }
function exampleSectionReader_ReadAt():Void {
        var _r = stdgo.strings.Strings.newReader(((Go.str("some io.Reader stream to be read\n") : GoString)));
        var _s = stdgo.io.Io.newSectionReader({
            final __self__ = new stdgo.strings.Strings.Reader_wrapper(_r);
            __self__.len = #if !macro function():GoInt return _r.len() #else null #end;
            __self__.read = #if !macro function(_p:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : stdgo.Error; } return _r.read(_p) #else null #end;
            __self__.readAt = #if !macro function(_p:Slice<GoUInt8>, _off:GoInt64):{ var _0 : GoInt; var _1 : stdgo.Error; } return _r.readAt(_p, _off) #else null #end;
            __self__.readByte = #if !macro function():{ var _0 : GoUInt8; var _1 : stdgo.Error; } return _r.readByte() #else null #end;
            __self__.readRune = #if !macro function():{ var _0 : GoInt32; var _1 : GoInt; var _2 : stdgo.Error; } return _r.readRune() #else null #end;
            __self__.reset = #if !macro function(__0:GoString):Void _r.reset(__0) #else null #end;
            __self__.seek = #if !macro function(_offset:GoInt64, _whence:GoInt):{ var _0 : GoInt64; var _1 : stdgo.Error; } return _r.seek(_offset, _whence) #else null #end;
            __self__.size = #if !macro function():GoInt64 return _r.size() #else null #end;
            __self__.unreadByte = #if !macro function():stdgo.Error return _r.unreadByte() #else null #end;
            __self__.unreadRune = #if !macro function():stdgo.Error return _r.unreadRune() #else null #end;
            __self__.writeTo = #if !macro function(_w:Writer):{ var _0 : GoInt64; var _1 : stdgo.Error; } return _r.writeTo(_w) #else null #end;
            __self__;
        }, ((5 : GoInt64)), ((17 : GoInt64)));
        var _buf = new Slice<GoUInt8>(((((6 : GoInt)) : GoInt)).toBasic(), 0, ...[for (i in 0 ... ((((6 : GoInt)) : GoInt)).toBasic()) ((0 : GoUInt8))]);
        {
            var __tmp__ = _s.readAt(_buf, ((10 : GoInt64))), _0:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                stdgo.log.Log.fatal(Go.toInterface(_err));
            };
        };
        stdgo.fmt.Fmt.printf(((Go.str("%s\n") : GoString)), Go.toInterface(_buf));
    }
function exampleSectionReader_Seek():Void {
        var _r = stdgo.strings.Strings.newReader(((Go.str("some io.Reader stream to be read\n") : GoString)));
        var _s = stdgo.io.Io.newSectionReader({
            final __self__ = new stdgo.strings.Strings.Reader_wrapper(_r);
            __self__.len = #if !macro function():GoInt return _r.len() #else null #end;
            __self__.read = #if !macro function(_p:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : stdgo.Error; } return _r.read(_p) #else null #end;
            __self__.readAt = #if !macro function(_p:Slice<GoUInt8>, _off:GoInt64):{ var _0 : GoInt; var _1 : stdgo.Error; } return _r.readAt(_p, _off) #else null #end;
            __self__.readByte = #if !macro function():{ var _0 : GoUInt8; var _1 : stdgo.Error; } return _r.readByte() #else null #end;
            __self__.readRune = #if !macro function():{ var _0 : GoInt32; var _1 : GoInt; var _2 : stdgo.Error; } return _r.readRune() #else null #end;
            __self__.reset = #if !macro function(__0:GoString):Void _r.reset(__0) #else null #end;
            __self__.seek = #if !macro function(_offset:GoInt64, _whence:GoInt):{ var _0 : GoInt64; var _1 : stdgo.Error; } return _r.seek(_offset, _whence) #else null #end;
            __self__.size = #if !macro function():GoInt64 return _r.size() #else null #end;
            __self__.unreadByte = #if !macro function():stdgo.Error return _r.unreadByte() #else null #end;
            __self__.unreadRune = #if !macro function():stdgo.Error return _r.unreadRune() #else null #end;
            __self__.writeTo = #if !macro function(_w:Writer):{ var _0 : GoInt64; var _1 : stdgo.Error; } return _r.writeTo(_w) #else null #end;
            __self__;
        }, ((5 : GoInt64)), ((17 : GoInt64)));
        {
            var __tmp__ = _s.seek(((10 : GoInt64)), ((0 : GoInt))), _0:GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                stdgo.log.Log.fatal(Go.toInterface(_err));
            };
        };
        {
            var __tmp__ = stdgo.io.Io.copy({
                final __self__ = new stdgo.os.Os.File_wrapper(stdgo.os.Os.stdout);
                __self__.chdir = #if !macro function():stdgo.Error return stdgo.os.Os.stdout.chdir() #else null #end;
                __self__.chmod = #if !macro function(_mode:stdgo.io.fs.Fs.FileMode):stdgo.Error return stdgo.os.Os.stdout.chmod(_mode) #else null #end;
                __self__.chown = #if !macro function(_uid:GoInt, _gid:GoInt):stdgo.Error return stdgo.os.Os.stdout.chown(_uid, _gid) #else null #end;
                __self__.close = #if !macro function():stdgo.Error return stdgo.os.Os.stdout.close() #else null #end;
                __self__.fd = #if !macro function():GoUIntptr return stdgo.os.Os.stdout.fd() #else null #end;
                __self__.name = #if !macro function():GoString return stdgo.os.Os.stdout.name() #else null #end;
                __self__.read = #if !macro function(_p:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : stdgo.Error; } return stdgo.os.Os.stdout.read(_p) #else null #end;
                __self__.readAt = #if !macro function(_p:Slice<GoUInt8>, _off:GoInt64):{ var _0 : GoInt; var _1 : stdgo.Error; } return stdgo.os.Os.stdout.readAt(_p, _off) #else null #end;
                __self__.readDir = #if !macro function(_pid:GoInt):{ var _0 : Slice<stdgo.io.fs.Fs.DirEntry>; var _1 : stdgo.Error; } return stdgo.os.Os.stdout.readDir(_pid) #else null #end;
                __self__.readFrom = #if !macro function(_r_:Reader):{ var _0 : GoInt64; var _1 : stdgo.Error; } return stdgo.os.Os.stdout.readFrom(_r_) #else null #end;
                __self__.readdir = #if !macro function(_pid:GoInt):{ var _0 : Slice<stdgo.io.fs.Fs.FileInfo>; var _1 : stdgo.Error; } return stdgo.os.Os.stdout.readdir(_pid) #else null #end;
                __self__.readdirnames = #if !macro function(_pid:GoInt):{ var _0 : Slice<GoString>; var _1 : stdgo.Error; } return stdgo.os.Os.stdout.readdirnames(_pid) #else null #end;
                __self__.seek = #if !macro function(_offset:GoInt64, _whence:GoInt):{ var _0 : GoInt64; var _1 : stdgo.Error; } return stdgo.os.Os.stdout.seek(_offset, _whence) #else null #end;
                __self__.setDeadline = #if !macro function(__0:stdgo.time.Time.Time):stdgo.Error return stdgo.os.Os.stdout.setDeadline(__0) #else null #end;
                __self__.setReadDeadline = #if !macro function(__0:stdgo.time.Time.Time):stdgo.Error return stdgo.os.Os.stdout.setReadDeadline(__0) #else null #end;
                __self__.setWriteDeadline = #if !macro function(__0:stdgo.time.Time.Time):stdgo.Error return stdgo.os.Os.stdout.setWriteDeadline(__0) #else null #end;
                __self__.stat = #if !macro function():{ var _0 : stdgo.io.fs.Fs.FileInfo; var _1 : stdgo.Error; } return stdgo.os.Os.stdout.stat() #else null #end;
                __self__.sync = #if !macro function():stdgo.Error return stdgo.os.Os.stdout.sync() #else null #end;
                __self__.syscallConn = #if !macro function():{ var _0 : stdgo.syscall.Syscall.RawConn; var _1 : stdgo.Error; } return stdgo.os.Os.stdout.syscallConn() #else null #end;
                __self__.truncate = #if !macro function(__0:GoInt64):stdgo.Error return stdgo.os.Os.stdout.truncate(__0) #else null #end;
                __self__.write = #if !macro function(_p:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : stdgo.Error; } return stdgo.os.Os.stdout.write(_p) #else null #end;
                __self__.writeAt = #if !macro function(_p:Slice<GoUInt8>, _off:GoInt64):{ var _0 : GoInt; var _1 : stdgo.Error; } return stdgo.os.Os.stdout.writeAt(_p, _off) #else null #end;
                __self__.writeString = #if !macro function(__0:GoString):{ var _0 : GoInt; var _1 : stdgo.Error; } return stdgo.os.Os.stdout.writeString(__0) #else null #end;
                __self__._checkValid = #if !macro function(__0:GoString):stdgo.Error return stdgo.os.Os.stdout._checkValid(__0) #else null #end;
                __self__._chmod = #if !macro function(_mode:stdgo.io.fs.Fs.FileMode):stdgo.Error return stdgo.os.Os.stdout._chmod(_mode) #else null #end;
                __self__._close = #if !macro function():stdgo.Error return stdgo.os.Os.stdout._close() #else null #end;
                __self__._pread = #if !macro function(_p:Slice<GoUInt8>, _off:GoInt64):{ var _0 : GoInt; var _1 : stdgo.Error; } return stdgo.os.Os.stdout._pread(_p, _off) #else null #end;
                __self__._pwrite = #if !macro function(_p:Slice<GoUInt8>, _off:GoInt64):{ var _0 : GoInt; var _1 : stdgo.Error; } return stdgo.os.Os.stdout._pwrite(_p, _off) #else null #end;
                __self__._read = #if !macro function(_p:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : stdgo.Error; } return stdgo.os.Os.stdout._read(_p) #else null #end;
                __self__._readFrom = #if !macro function(_r__:Reader):{ var _0 : GoInt64; var _1 : Bool; var _2 : stdgo.Error; } return stdgo.os.Os.stdout._readFrom(_r__) #else null #end;
                __self__._readdir = #if !macro function(_n:GoInt, _mode:stdgo.os.Os.T_readdirMode):{ var _0 : Slice<GoString>; var _1 : Slice<stdgo.io.fs.Fs.DirEntry>; var _2 : Slice<stdgo.io.fs.Fs.FileInfo>; var _3 : stdgo.Error; } return stdgo.os.Os.stdout._readdir(_n, _mode) #else null #end;
                __self__._seek = #if !macro function(_offset:GoInt64, _whence:GoInt):{ var _0 : GoInt64; var _1 : stdgo.Error; } return stdgo.os.Os.stdout._seek(_offset, _whence) #else null #end;
                __self__._setDeadline = #if !macro function(__0:stdgo.time.Time.Time):stdgo.Error return stdgo.os.Os.stdout._setDeadline(__0) #else null #end;
                __self__._setReadDeadline = #if !macro function(__0:stdgo.time.Time.Time):stdgo.Error return stdgo.os.Os.stdout._setReadDeadline(__0) #else null #end;
                __self__._setWriteDeadline = #if !macro function(__0:stdgo.time.Time.Time):stdgo.Error return stdgo.os.Os.stdout._setWriteDeadline(__0) #else null #end;
                __self__._wrapErr = #if !macro function(_op:GoString, _err_:stdgo.Error):stdgo.Error return stdgo.os.Os.stdout._wrapErr(_op, _err_) #else null #end;
                __self__._write = #if !macro function(_p:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : stdgo.Error; } return stdgo.os.Os.stdout._write(_p) #else null #end;
                __self__;
            }, {
                final __self__ = new SectionReader_wrapper(_s);
                __self__.read = #if !macro function(_p:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : stdgo.Error; } return _s.read(_p) #else null #end;
                __self__.readAt = #if !macro function(_p:Slice<GoUInt8>, _off:GoInt64):{ var _0 : GoInt; var _1 : stdgo.Error; } return _s.readAt(_p, _off) #else null #end;
                __self__.seek = #if !macro function(_offset:GoInt64, _whence:GoInt):{ var _0 : GoInt64; var _1 : stdgo.Error; } return _s.seek(_offset, _whence) #else null #end;
                __self__.size = #if !macro function():GoInt64 return _s.size() #else null #end;
                __self__;
            }), _1:GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                stdgo.log.Log.fatal(Go.toInterface(_err));
            };
        };
    }
function exampleSectionReader_Size():Void {
        var _r = stdgo.strings.Strings.newReader(((Go.str("some io.Reader stream to be read\n") : GoString)));
        var _s = stdgo.io.Io.newSectionReader({
            final __self__ = new stdgo.strings.Strings.Reader_wrapper(_r);
            __self__.len = #if !macro function():GoInt return _r.len() #else null #end;
            __self__.read = #if !macro function(_p:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : stdgo.Error; } return _r.read(_p) #else null #end;
            __self__.readAt = #if !macro function(_p:Slice<GoUInt8>, _off:GoInt64):{ var _0 : GoInt; var _1 : stdgo.Error; } return _r.readAt(_p, _off) #else null #end;
            __self__.readByte = #if !macro function():{ var _0 : GoUInt8; var _1 : stdgo.Error; } return _r.readByte() #else null #end;
            __self__.readRune = #if !macro function():{ var _0 : GoInt32; var _1 : GoInt; var _2 : stdgo.Error; } return _r.readRune() #else null #end;
            __self__.reset = #if !macro function(__0:GoString):Void _r.reset(__0) #else null #end;
            __self__.seek = #if !macro function(_offset:GoInt64, _whence:GoInt):{ var _0 : GoInt64; var _1 : stdgo.Error; } return _r.seek(_offset, _whence) #else null #end;
            __self__.size = #if !macro function():GoInt64 return _r.size() #else null #end;
            __self__.unreadByte = #if !macro function():stdgo.Error return _r.unreadByte() #else null #end;
            __self__.unreadRune = #if !macro function():stdgo.Error return _r.unreadRune() #else null #end;
            __self__.writeTo = #if !macro function(_w:Writer):{ var _0 : GoInt64; var _1 : stdgo.Error; } return _r.writeTo(_w) #else null #end;
            __self__;
        }, ((5 : GoInt64)), ((17 : GoInt64)));
        stdgo.fmt.Fmt.println(_s.size());
    }
function exampleSeeker_Seek():Void {
        var _r = stdgo.strings.Strings.newReader(((Go.str("some io.Reader stream to be read\n") : GoString)));
        _r.seek(((5 : GoInt64)), ((0 : GoInt)));
        {
            var __tmp__ = stdgo.io.Io.copy({
                final __self__ = new stdgo.os.Os.File_wrapper(stdgo.os.Os.stdout);
                __self__.chdir = #if !macro function():stdgo.Error return stdgo.os.Os.stdout.chdir() #else null #end;
                __self__.chmod = #if !macro function(_mode:stdgo.io.fs.Fs.FileMode):stdgo.Error return stdgo.os.Os.stdout.chmod(_mode) #else null #end;
                __self__.chown = #if !macro function(_uid:GoInt, _gid:GoInt):stdgo.Error return stdgo.os.Os.stdout.chown(_uid, _gid) #else null #end;
                __self__.close = #if !macro function():stdgo.Error return stdgo.os.Os.stdout.close() #else null #end;
                __self__.fd = #if !macro function():GoUIntptr return stdgo.os.Os.stdout.fd() #else null #end;
                __self__.name = #if !macro function():GoString return stdgo.os.Os.stdout.name() #else null #end;
                __self__.read = #if !macro function(_p:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : stdgo.Error; } return stdgo.os.Os.stdout.read(_p) #else null #end;
                __self__.readAt = #if !macro function(_p:Slice<GoUInt8>, _off:GoInt64):{ var _0 : GoInt; var _1 : stdgo.Error; } return stdgo.os.Os.stdout.readAt(_p, _off) #else null #end;
                __self__.readDir = #if !macro function(_pid:GoInt):{ var _0 : Slice<stdgo.io.fs.Fs.DirEntry>; var _1 : stdgo.Error; } return stdgo.os.Os.stdout.readDir(_pid) #else null #end;
                __self__.readFrom = #if !macro function(_r_:Reader):{ var _0 : GoInt64; var _1 : stdgo.Error; } return stdgo.os.Os.stdout.readFrom(_r_) #else null #end;
                __self__.readdir = #if !macro function(_pid:GoInt):{ var _0 : Slice<stdgo.io.fs.Fs.FileInfo>; var _1 : stdgo.Error; } return stdgo.os.Os.stdout.readdir(_pid) #else null #end;
                __self__.readdirnames = #if !macro function(_pid:GoInt):{ var _0 : Slice<GoString>; var _1 : stdgo.Error; } return stdgo.os.Os.stdout.readdirnames(_pid) #else null #end;
                __self__.seek = #if !macro function(_offset:GoInt64, _whence:GoInt):{ var _0 : GoInt64; var _1 : stdgo.Error; } return stdgo.os.Os.stdout.seek(_offset, _whence) #else null #end;
                __self__.setDeadline = #if !macro function(__0:stdgo.time.Time.Time):stdgo.Error return stdgo.os.Os.stdout.setDeadline(__0) #else null #end;
                __self__.setReadDeadline = #if !macro function(__0:stdgo.time.Time.Time):stdgo.Error return stdgo.os.Os.stdout.setReadDeadline(__0) #else null #end;
                __self__.setWriteDeadline = #if !macro function(__0:stdgo.time.Time.Time):stdgo.Error return stdgo.os.Os.stdout.setWriteDeadline(__0) #else null #end;
                __self__.stat = #if !macro function():{ var _0 : stdgo.io.fs.Fs.FileInfo; var _1 : stdgo.Error; } return stdgo.os.Os.stdout.stat() #else null #end;
                __self__.sync = #if !macro function():stdgo.Error return stdgo.os.Os.stdout.sync() #else null #end;
                __self__.syscallConn = #if !macro function():{ var _0 : stdgo.syscall.Syscall.RawConn; var _1 : stdgo.Error; } return stdgo.os.Os.stdout.syscallConn() #else null #end;
                __self__.truncate = #if !macro function(__0:GoInt64):stdgo.Error return stdgo.os.Os.stdout.truncate(__0) #else null #end;
                __self__.write = #if !macro function(_p:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : stdgo.Error; } return stdgo.os.Os.stdout.write(_p) #else null #end;
                __self__.writeAt = #if !macro function(_p:Slice<GoUInt8>, _off:GoInt64):{ var _0 : GoInt; var _1 : stdgo.Error; } return stdgo.os.Os.stdout.writeAt(_p, _off) #else null #end;
                __self__.writeString = #if !macro function(__0:GoString):{ var _0 : GoInt; var _1 : stdgo.Error; } return stdgo.os.Os.stdout.writeString(__0) #else null #end;
                __self__._checkValid = #if !macro function(__0:GoString):stdgo.Error return stdgo.os.Os.stdout._checkValid(__0) #else null #end;
                __self__._chmod = #if !macro function(_mode:stdgo.io.fs.Fs.FileMode):stdgo.Error return stdgo.os.Os.stdout._chmod(_mode) #else null #end;
                __self__._close = #if !macro function():stdgo.Error return stdgo.os.Os.stdout._close() #else null #end;
                __self__._pread = #if !macro function(_p:Slice<GoUInt8>, _off:GoInt64):{ var _0 : GoInt; var _1 : stdgo.Error; } return stdgo.os.Os.stdout._pread(_p, _off) #else null #end;
                __self__._pwrite = #if !macro function(_p:Slice<GoUInt8>, _off:GoInt64):{ var _0 : GoInt; var _1 : stdgo.Error; } return stdgo.os.Os.stdout._pwrite(_p, _off) #else null #end;
                __self__._read = #if !macro function(_p:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : stdgo.Error; } return stdgo.os.Os.stdout._read(_p) #else null #end;
                __self__._readFrom = #if !macro function(_r__:Reader):{ var _0 : GoInt64; var _1 : Bool; var _2 : stdgo.Error; } return stdgo.os.Os.stdout._readFrom(_r__) #else null #end;
                __self__._readdir = #if !macro function(_n:GoInt, _mode:stdgo.os.Os.T_readdirMode):{ var _0 : Slice<GoString>; var _1 : Slice<stdgo.io.fs.Fs.DirEntry>; var _2 : Slice<stdgo.io.fs.Fs.FileInfo>; var _3 : stdgo.Error; } return stdgo.os.Os.stdout._readdir(_n, _mode) #else null #end;
                __self__._seek = #if !macro function(_offset:GoInt64, _whence:GoInt):{ var _0 : GoInt64; var _1 : stdgo.Error; } return stdgo.os.Os.stdout._seek(_offset, _whence) #else null #end;
                __self__._setDeadline = #if !macro function(__0:stdgo.time.Time.Time):stdgo.Error return stdgo.os.Os.stdout._setDeadline(__0) #else null #end;
                __self__._setReadDeadline = #if !macro function(__0:stdgo.time.Time.Time):stdgo.Error return stdgo.os.Os.stdout._setReadDeadline(__0) #else null #end;
                __self__._setWriteDeadline = #if !macro function(__0:stdgo.time.Time.Time):stdgo.Error return stdgo.os.Os.stdout._setWriteDeadline(__0) #else null #end;
                __self__._wrapErr = #if !macro function(_op:GoString, _err:stdgo.Error):stdgo.Error return stdgo.os.Os.stdout._wrapErr(_op, _err) #else null #end;
                __self__._write = #if !macro function(_p:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : stdgo.Error; } return stdgo.os.Os.stdout._write(_p) #else null #end;
                __self__;
            }, {
                final __self__ = new stdgo.strings.Strings.Reader_wrapper(_r);
                __self__.len = #if !macro function():GoInt return _r.len() #else null #end;
                __self__.read = #if !macro function(_p:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : stdgo.Error; } return _r.read(_p) #else null #end;
                __self__.readAt = #if !macro function(_p:Slice<GoUInt8>, _off:GoInt64):{ var _0 : GoInt; var _1 : stdgo.Error; } return _r.readAt(_p, _off) #else null #end;
                __self__.readByte = #if !macro function():{ var _0 : GoUInt8; var _1 : stdgo.Error; } return _r.readByte() #else null #end;
                __self__.readRune = #if !macro function():{ var _0 : GoInt32; var _1 : GoInt; var _2 : stdgo.Error; } return _r.readRune() #else null #end;
                __self__.reset = #if !macro function(__0:GoString):Void _r.reset(__0) #else null #end;
                __self__.seek = #if !macro function(_offset:GoInt64, _whence:GoInt):{ var _0 : GoInt64; var _1 : stdgo.Error; } return _r.seek(_offset, _whence) #else null #end;
                __self__.size = #if !macro function():GoInt64 return _r.size() #else null #end;
                __self__.unreadByte = #if !macro function():stdgo.Error return _r.unreadByte() #else null #end;
                __self__.unreadRune = #if !macro function():stdgo.Error return _r.unreadRune() #else null #end;
                __self__.writeTo = #if !macro function(_w:Writer):{ var _0 : GoInt64; var _1 : stdgo.Error; } return _r.writeTo(_w) #else null #end;
                __self__;
            }), _0:GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                stdgo.log.Log.fatal(Go.toInterface(_err));
            };
        };
        _r.seek(((-5 : GoInt64)), ((2 : GoInt)));
        {
            var __tmp__ = stdgo.io.Io.copy({
                final __self__ = new stdgo.os.Os.File_wrapper(stdgo.os.Os.stdout);
                __self__.chdir = #if !macro function():stdgo.Error return stdgo.os.Os.stdout.chdir() #else null #end;
                __self__.chmod = #if !macro function(_mode:stdgo.io.fs.Fs.FileMode):stdgo.Error return stdgo.os.Os.stdout.chmod(_mode) #else null #end;
                __self__.chown = #if !macro function(_uid:GoInt, _gid:GoInt):stdgo.Error return stdgo.os.Os.stdout.chown(_uid, _gid) #else null #end;
                __self__.close = #if !macro function():stdgo.Error return stdgo.os.Os.stdout.close() #else null #end;
                __self__.fd = #if !macro function():GoUIntptr return stdgo.os.Os.stdout.fd() #else null #end;
                __self__.name = #if !macro function():GoString return stdgo.os.Os.stdout.name() #else null #end;
                __self__.read = #if !macro function(_p:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : stdgo.Error; } return stdgo.os.Os.stdout.read(_p) #else null #end;
                __self__.readAt = #if !macro function(_p:Slice<GoUInt8>, _off:GoInt64):{ var _0 : GoInt; var _1 : stdgo.Error; } return stdgo.os.Os.stdout.readAt(_p, _off) #else null #end;
                __self__.readDir = #if !macro function(_pid:GoInt):{ var _0 : Slice<stdgo.io.fs.Fs.DirEntry>; var _1 : stdgo.Error; } return stdgo.os.Os.stdout.readDir(_pid) #else null #end;
                __self__.readFrom = #if !macro function(_r_:Reader):{ var _0 : GoInt64; var _1 : stdgo.Error; } return stdgo.os.Os.stdout.readFrom(_r_) #else null #end;
                __self__.readdir = #if !macro function(_pid:GoInt):{ var _0 : Slice<stdgo.io.fs.Fs.FileInfo>; var _1 : stdgo.Error; } return stdgo.os.Os.stdout.readdir(_pid) #else null #end;
                __self__.readdirnames = #if !macro function(_pid:GoInt):{ var _0 : Slice<GoString>; var _1 : stdgo.Error; } return stdgo.os.Os.stdout.readdirnames(_pid) #else null #end;
                __self__.seek = #if !macro function(_offset:GoInt64, _whence:GoInt):{ var _0 : GoInt64; var _1 : stdgo.Error; } return stdgo.os.Os.stdout.seek(_offset, _whence) #else null #end;
                __self__.setDeadline = #if !macro function(__0:stdgo.time.Time.Time):stdgo.Error return stdgo.os.Os.stdout.setDeadline(__0) #else null #end;
                __self__.setReadDeadline = #if !macro function(__0:stdgo.time.Time.Time):stdgo.Error return stdgo.os.Os.stdout.setReadDeadline(__0) #else null #end;
                __self__.setWriteDeadline = #if !macro function(__0:stdgo.time.Time.Time):stdgo.Error return stdgo.os.Os.stdout.setWriteDeadline(__0) #else null #end;
                __self__.stat = #if !macro function():{ var _0 : stdgo.io.fs.Fs.FileInfo; var _1 : stdgo.Error; } return stdgo.os.Os.stdout.stat() #else null #end;
                __self__.sync = #if !macro function():stdgo.Error return stdgo.os.Os.stdout.sync() #else null #end;
                __self__.syscallConn = #if !macro function():{ var _0 : stdgo.syscall.Syscall.RawConn; var _1 : stdgo.Error; } return stdgo.os.Os.stdout.syscallConn() #else null #end;
                __self__.truncate = #if !macro function(__0:GoInt64):stdgo.Error return stdgo.os.Os.stdout.truncate(__0) #else null #end;
                __self__.write = #if !macro function(_p:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : stdgo.Error; } return stdgo.os.Os.stdout.write(_p) #else null #end;
                __self__.writeAt = #if !macro function(_p:Slice<GoUInt8>, _off:GoInt64):{ var _0 : GoInt; var _1 : stdgo.Error; } return stdgo.os.Os.stdout.writeAt(_p, _off) #else null #end;
                __self__.writeString = #if !macro function(__0:GoString):{ var _0 : GoInt; var _1 : stdgo.Error; } return stdgo.os.Os.stdout.writeString(__0) #else null #end;
                __self__._checkValid = #if !macro function(__0:GoString):stdgo.Error return stdgo.os.Os.stdout._checkValid(__0) #else null #end;
                __self__._chmod = #if !macro function(_mode:stdgo.io.fs.Fs.FileMode):stdgo.Error return stdgo.os.Os.stdout._chmod(_mode) #else null #end;
                __self__._close = #if !macro function():stdgo.Error return stdgo.os.Os.stdout._close() #else null #end;
                __self__._pread = #if !macro function(_p:Slice<GoUInt8>, _off:GoInt64):{ var _0 : GoInt; var _1 : stdgo.Error; } return stdgo.os.Os.stdout._pread(_p, _off) #else null #end;
                __self__._pwrite = #if !macro function(_p:Slice<GoUInt8>, _off:GoInt64):{ var _0 : GoInt; var _1 : stdgo.Error; } return stdgo.os.Os.stdout._pwrite(_p, _off) #else null #end;
                __self__._read = #if !macro function(_p:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : stdgo.Error; } return stdgo.os.Os.stdout._read(_p) #else null #end;
                __self__._readFrom = #if !macro function(_r__:Reader):{ var _0 : GoInt64; var _1 : Bool; var _2 : stdgo.Error; } return stdgo.os.Os.stdout._readFrom(_r__) #else null #end;
                __self__._readdir = #if !macro function(_n:GoInt, _mode:stdgo.os.Os.T_readdirMode):{ var _0 : Slice<GoString>; var _1 : Slice<stdgo.io.fs.Fs.DirEntry>; var _2 : Slice<stdgo.io.fs.Fs.FileInfo>; var _3 : stdgo.Error; } return stdgo.os.Os.stdout._readdir(_n, _mode) #else null #end;
                __self__._seek = #if !macro function(_offset:GoInt64, _whence:GoInt):{ var _0 : GoInt64; var _1 : stdgo.Error; } return stdgo.os.Os.stdout._seek(_offset, _whence) #else null #end;
                __self__._setDeadline = #if !macro function(__0:stdgo.time.Time.Time):stdgo.Error return stdgo.os.Os.stdout._setDeadline(__0) #else null #end;
                __self__._setReadDeadline = #if !macro function(__0:stdgo.time.Time.Time):stdgo.Error return stdgo.os.Os.stdout._setReadDeadline(__0) #else null #end;
                __self__._setWriteDeadline = #if !macro function(__0:stdgo.time.Time.Time):stdgo.Error return stdgo.os.Os.stdout._setWriteDeadline(__0) #else null #end;
                __self__._wrapErr = #if !macro function(_op:GoString, _err_:stdgo.Error):stdgo.Error return stdgo.os.Os.stdout._wrapErr(_op, _err_) #else null #end;
                __self__._write = #if !macro function(_p:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : stdgo.Error; } return stdgo.os.Os.stdout._write(_p) #else null #end;
                __self__;
            }, {
                final __self__ = new stdgo.strings.Strings.Reader_wrapper(_r);
                __self__.len = #if !macro function():GoInt return _r.len() #else null #end;
                __self__.read = #if !macro function(_p:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : stdgo.Error; } return _r.read(_p) #else null #end;
                __self__.readAt = #if !macro function(_p:Slice<GoUInt8>, _off:GoInt64):{ var _0 : GoInt; var _1 : stdgo.Error; } return _r.readAt(_p, _off) #else null #end;
                __self__.readByte = #if !macro function():{ var _0 : GoUInt8; var _1 : stdgo.Error; } return _r.readByte() #else null #end;
                __self__.readRune = #if !macro function():{ var _0 : GoInt32; var _1 : GoInt; var _2 : stdgo.Error; } return _r.readRune() #else null #end;
                __self__.reset = #if !macro function(__0:GoString):Void _r.reset(__0) #else null #end;
                __self__.seek = #if !macro function(_offset:GoInt64, _whence:GoInt):{ var _0 : GoInt64; var _1 : stdgo.Error; } return _r.seek(_offset, _whence) #else null #end;
                __self__.size = #if !macro function():GoInt64 return _r.size() #else null #end;
                __self__.unreadByte = #if !macro function():stdgo.Error return _r.unreadByte() #else null #end;
                __self__.unreadRune = #if !macro function():stdgo.Error return _r.unreadRune() #else null #end;
                __self__.writeTo = #if !macro function(_w:Writer):{ var _0 : GoInt64; var _1 : stdgo.Error; } return _r.writeTo(_w) #else null #end;
                __self__;
            }), _1:GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                stdgo.log.Log.fatal(Go.toInterface(_err));
            };
        };
    }
function exampleMultiWriter():Void {
        var _r = stdgo.strings.Strings.newReader(((Go.str("some io.Reader stream to be read\n") : GoString)));
        var _buf1:stdgo.bytes.Bytes.Buffer = (({  } : stdgo.bytes.Bytes.Buffer)), _buf2:stdgo.bytes.Bytes.Buffer = (({  } : stdgo.bytes.Bytes.Buffer));
        var _w:Writer = stdgo.io.Io.multiWriter({
            final __self__ = new stdgo.bytes.Bytes.Buffer_wrapper(_buf1);
            __self__.bytes = #if !macro function():Slice<GoUInt8> return _buf1.bytes() #else null #end;
            __self__.cap_ = #if !macro function():GoInt return _buf1.cap_() #else null #end;
            __self__.grow = #if !macro function(_pid:GoInt):Void _buf1.grow(_pid) #else null #end;
            __self__.len = #if !macro function():GoInt return _buf1.len() #else null #end;
            __self__.next = #if !macro function(_pid:GoInt):Slice<GoUInt8> return _buf1.next(_pid) #else null #end;
            __self__.read = #if !macro function(_p:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : stdgo.Error; } return _buf1.read(_p) #else null #end;
            __self__.readByte = #if !macro function():{ var _0 : GoUInt8; var _1 : stdgo.Error; } return _buf1.readByte() #else null #end;
            __self__.readBytes = #if !macro function(_c:GoUInt8):{ var _0 : Slice<GoUInt8>; var _1 : stdgo.Error; } return _buf1.readBytes(_c) #else null #end;
            __self__.readFrom = #if !macro function(_r_:Reader):{ var _0 : GoInt64; var _1 : stdgo.Error; } return _buf1.readFrom(_r_) #else null #end;
            __self__.readRune = #if !macro function():{ var _0 : GoInt32; var _1 : GoInt; var _2 : stdgo.Error; } return _buf1.readRune() #else null #end;
            __self__.readString = #if !macro function(_c:GoUInt8):{ var _0 : GoString; var _1 : stdgo.Error; } return _buf1.readString(_c) #else null #end;
            __self__.reset = #if !macro function():Void _buf1.reset() #else null #end;
            __self__.string = #if !macro function():GoString return _buf1.string() #else null #end;
            __self__.truncate = #if !macro function(_pid:GoInt):Void _buf1.truncate(_pid) #else null #end;
            __self__.unreadByte = #if !macro function():stdgo.Error return _buf1.unreadByte() #else null #end;
            __self__.unreadRune = #if !macro function():stdgo.Error return _buf1.unreadRune() #else null #end;
            __self__.write = #if !macro function(_p:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : stdgo.Error; } return _buf1.write(_p) #else null #end;
            __self__.writeByte = #if !macro function(_c:GoUInt8):stdgo.Error return _buf1.writeByte(_c) #else null #end;
            __self__.writeRune = #if !macro function(_new:GoInt32):{ var _0 : GoInt; var _1 : stdgo.Error; } return _buf1.writeRune(_new) #else null #end;
            __self__.writeString = #if !macro function(__0:GoString):{ var _0 : GoInt; var _1 : stdgo.Error; } return _buf1.writeString(__0) #else null #end;
            __self__.writeTo = #if !macro function(_w_:Writer):{ var _0 : GoInt64; var _1 : stdgo.Error; } return _buf1.writeTo(_w_) #else null #end;
            __self__._empty = #if !macro function():Bool return _buf1._empty() #else null #end;
            __self__._grow = #if !macro function(_pid:GoInt):GoInt return _buf1._grow(_pid) #else null #end;
            __self__._readSlice = #if !macro function(_c:GoUInt8):{ var _0 : Slice<GoUInt8>; var _1 : stdgo.Error; } return _buf1._readSlice(_c) #else null #end;
            __self__._tryGrowByReslice = #if !macro function(_pid:GoInt):{ var _0 : GoInt; var _1 : Bool; } return _buf1._tryGrowByReslice(_pid) #else null #end;
            __self__;
        }, {
            final __self__ = new stdgo.bytes.Bytes.Buffer_wrapper(_buf2);
            __self__.bytes = #if !macro function():Slice<GoUInt8> return _buf2.bytes() #else null #end;
            __self__.cap_ = #if !macro function():GoInt return _buf2.cap_() #else null #end;
            __self__.grow = #if !macro function(_pid:GoInt):Void _buf2.grow(_pid) #else null #end;
            __self__.len = #if !macro function():GoInt return _buf2.len() #else null #end;
            __self__.next = #if !macro function(_pid:GoInt):Slice<GoUInt8> return _buf2.next(_pid) #else null #end;
            __self__.read = #if !macro function(_p:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : stdgo.Error; } return _buf2.read(_p) #else null #end;
            __self__.readByte = #if !macro function():{ var _0 : GoUInt8; var _1 : stdgo.Error; } return _buf2.readByte() #else null #end;
            __self__.readBytes = #if !macro function(_c:GoUInt8):{ var _0 : Slice<GoUInt8>; var _1 : stdgo.Error; } return _buf2.readBytes(_c) #else null #end;
            __self__.readFrom = #if !macro function(_r_:Reader):{ var _0 : GoInt64; var _1 : stdgo.Error; } return _buf2.readFrom(_r_) #else null #end;
            __self__.readRune = #if !macro function():{ var _0 : GoInt32; var _1 : GoInt; var _2 : stdgo.Error; } return _buf2.readRune() #else null #end;
            __self__.readString = #if !macro function(_c:GoUInt8):{ var _0 : GoString; var _1 : stdgo.Error; } return _buf2.readString(_c) #else null #end;
            __self__.reset = #if !macro function():Void _buf2.reset() #else null #end;
            __self__.string = #if !macro function():GoString return _buf2.string() #else null #end;
            __self__.truncate = #if !macro function(_pid:GoInt):Void _buf2.truncate(_pid) #else null #end;
            __self__.unreadByte = #if !macro function():stdgo.Error return _buf2.unreadByte() #else null #end;
            __self__.unreadRune = #if !macro function():stdgo.Error return _buf2.unreadRune() #else null #end;
            __self__.write = #if !macro function(_p:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : stdgo.Error; } return _buf2.write(_p) #else null #end;
            __self__.writeByte = #if !macro function(_c:GoUInt8):stdgo.Error return _buf2.writeByte(_c) #else null #end;
            __self__.writeRune = #if !macro function(_new:GoInt32):{ var _0 : GoInt; var _1 : stdgo.Error; } return _buf2.writeRune(_new) #else null #end;
            __self__.writeString = #if !macro function(__0:GoString):{ var _0 : GoInt; var _1 : stdgo.Error; } return _buf2.writeString(__0) #else null #end;
            __self__.writeTo = #if !macro function(_w_:Writer):{ var _0 : GoInt64; var _1 : stdgo.Error; } return _buf2.writeTo(_w_) #else null #end;
            __self__._empty = #if !macro function():Bool return _buf2._empty() #else null #end;
            __self__._grow = #if !macro function(_pid:GoInt):GoInt return _buf2._grow(_pid) #else null #end;
            __self__._readSlice = #if !macro function(_c:GoUInt8):{ var _0 : Slice<GoUInt8>; var _1 : stdgo.Error; } return _buf2._readSlice(_c) #else null #end;
            __self__._tryGrowByReslice = #if !macro function(_pid:GoInt):{ var _0 : GoInt; var _1 : Bool; } return _buf2._tryGrowByReslice(_pid) #else null #end;
            __self__;
        });
        {
            var __tmp__ = stdgo.io.Io.copy(_w, {
                final __self__ = new stdgo.strings.Strings.Reader_wrapper(_r);
                __self__.len = #if !macro function():GoInt return _r.len() #else null #end;
                __self__.read = #if !macro function(_p:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : stdgo.Error; } return _r.read(_p) #else null #end;
                __self__.readAt = #if !macro function(_p:Slice<GoUInt8>, _off:GoInt64):{ var _0 : GoInt; var _1 : stdgo.Error; } return _r.readAt(_p, _off) #else null #end;
                __self__.readByte = #if !macro function():{ var _0 : GoUInt8; var _1 : stdgo.Error; } return _r.readByte() #else null #end;
                __self__.readRune = #if !macro function():{ var _0 : GoInt32; var _1 : GoInt; var _2 : stdgo.Error; } return _r.readRune() #else null #end;
                __self__.reset = #if !macro function(__0:GoString):Void _r.reset(__0) #else null #end;
                __self__.seek = #if !macro function(_offset:GoInt64, _whence:GoInt):{ var _0 : GoInt64; var _1 : stdgo.Error; } return _r.seek(_offset, _whence) #else null #end;
                __self__.size = #if !macro function():GoInt64 return _r.size() #else null #end;
                __self__.unreadByte = #if !macro function():stdgo.Error return _r.unreadByte() #else null #end;
                __self__.unreadRune = #if !macro function():stdgo.Error return _r.unreadRune() #else null #end;
                __self__.writeTo = #if !macro function(_w_:Writer):{ var _0 : GoInt64; var _1 : stdgo.Error; } return _r.writeTo(_w_) #else null #end;
                __self__;
            }), _0:GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                stdgo.log.Log.fatal(Go.toInterface(_err));
            };
        };
        stdgo.fmt.Fmt.print(((_buf1.string() : GoString)));
        stdgo.fmt.Fmt.print(((_buf2.string() : GoString)));
    }
function examplePipe():Void {
        var __tmp__ = stdgo.io.Io.pipe(), _r:Ref<PipeReader> = __tmp__._0, _w:Ref<PipeWriter> = __tmp__._1;
        Go.routine(() -> {
            var a = function():Void {
                stdgo.fmt.Fmt.fprint(_w, ((Go.str("some io.Reader stream to be read\n") : GoString)));
                _w.close();
            };
            a();
        });
        {
            var __tmp__ = stdgo.io.Io.copy({
                final __self__ = new stdgo.os.Os.File_wrapper(stdgo.os.Os.stdout);
                __self__.chdir = #if !macro function():stdgo.Error return stdgo.os.Os.stdout.chdir() #else null #end;
                __self__.chmod = #if !macro function(_mode:stdgo.io.fs.Fs.FileMode):stdgo.Error return stdgo.os.Os.stdout.chmod(_mode) #else null #end;
                __self__.chown = #if !macro function(_uid:GoInt, _gid:GoInt):stdgo.Error return stdgo.os.Os.stdout.chown(_uid, _gid) #else null #end;
                __self__.close = #if !macro function():stdgo.Error return stdgo.os.Os.stdout.close() #else null #end;
                __self__.fd = #if !macro function():GoUIntptr return stdgo.os.Os.stdout.fd() #else null #end;
                __self__.name = #if !macro function():GoString return stdgo.os.Os.stdout.name() #else null #end;
                __self__.read = #if !macro function(_p:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : stdgo.Error; } return stdgo.os.Os.stdout.read(_p) #else null #end;
                __self__.readAt = #if !macro function(_p:Slice<GoUInt8>, _off:GoInt64):{ var _0 : GoInt; var _1 : stdgo.Error; } return stdgo.os.Os.stdout.readAt(_p, _off) #else null #end;
                __self__.readDir = #if !macro function(_pid:GoInt):{ var _0 : Slice<stdgo.io.fs.Fs.DirEntry>; var _1 : stdgo.Error; } return stdgo.os.Os.stdout.readDir(_pid) #else null #end;
                __self__.readFrom = #if !macro function(_r_:Reader):{ var _0 : GoInt64; var _1 : stdgo.Error; } return stdgo.os.Os.stdout.readFrom(_r_) #else null #end;
                __self__.readdir = #if !macro function(_pid:GoInt):{ var _0 : Slice<stdgo.io.fs.Fs.FileInfo>; var _1 : stdgo.Error; } return stdgo.os.Os.stdout.readdir(_pid) #else null #end;
                __self__.readdirnames = #if !macro function(_pid:GoInt):{ var _0 : Slice<GoString>; var _1 : stdgo.Error; } return stdgo.os.Os.stdout.readdirnames(_pid) #else null #end;
                __self__.seek = #if !macro function(_offset:GoInt64, _whence:GoInt):{ var _0 : GoInt64; var _1 : stdgo.Error; } return stdgo.os.Os.stdout.seek(_offset, _whence) #else null #end;
                __self__.setDeadline = #if !macro function(__0:stdgo.time.Time.Time):stdgo.Error return stdgo.os.Os.stdout.setDeadline(__0) #else null #end;
                __self__.setReadDeadline = #if !macro function(__0:stdgo.time.Time.Time):stdgo.Error return stdgo.os.Os.stdout.setReadDeadline(__0) #else null #end;
                __self__.setWriteDeadline = #if !macro function(__0:stdgo.time.Time.Time):stdgo.Error return stdgo.os.Os.stdout.setWriteDeadline(__0) #else null #end;
                __self__.stat = #if !macro function():{ var _0 : stdgo.io.fs.Fs.FileInfo; var _1 : stdgo.Error; } return stdgo.os.Os.stdout.stat() #else null #end;
                __self__.sync = #if !macro function():stdgo.Error return stdgo.os.Os.stdout.sync() #else null #end;
                __self__.syscallConn = #if !macro function():{ var _0 : stdgo.syscall.Syscall.RawConn; var _1 : stdgo.Error; } return stdgo.os.Os.stdout.syscallConn() #else null #end;
                __self__.truncate = #if !macro function(__0:GoInt64):stdgo.Error return stdgo.os.Os.stdout.truncate(__0) #else null #end;
                __self__.write = #if !macro function(_p:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : stdgo.Error; } return stdgo.os.Os.stdout.write(_p) #else null #end;
                __self__.writeAt = #if !macro function(_p:Slice<GoUInt8>, _off:GoInt64):{ var _0 : GoInt; var _1 : stdgo.Error; } return stdgo.os.Os.stdout.writeAt(_p, _off) #else null #end;
                __self__.writeString = #if !macro function(__0:GoString):{ var _0 : GoInt; var _1 : stdgo.Error; } return stdgo.os.Os.stdout.writeString(__0) #else null #end;
                __self__._checkValid = #if !macro function(__0:GoString):stdgo.Error return stdgo.os.Os.stdout._checkValid(__0) #else null #end;
                __self__._chmod = #if !macro function(_mode:stdgo.io.fs.Fs.FileMode):stdgo.Error return stdgo.os.Os.stdout._chmod(_mode) #else null #end;
                __self__._close = #if !macro function():stdgo.Error return stdgo.os.Os.stdout._close() #else null #end;
                __self__._pread = #if !macro function(_p:Slice<GoUInt8>, _off:GoInt64):{ var _0 : GoInt; var _1 : stdgo.Error; } return stdgo.os.Os.stdout._pread(_p, _off) #else null #end;
                __self__._pwrite = #if !macro function(_p:Slice<GoUInt8>, _off:GoInt64):{ var _0 : GoInt; var _1 : stdgo.Error; } return stdgo.os.Os.stdout._pwrite(_p, _off) #else null #end;
                __self__._read = #if !macro function(_p:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : stdgo.Error; } return stdgo.os.Os.stdout._read(_p) #else null #end;
                __self__._readFrom = #if !macro function(_r__:Reader):{ var _0 : GoInt64; var _1 : Bool; var _2 : stdgo.Error; } return stdgo.os.Os.stdout._readFrom(_r__) #else null #end;
                __self__._readdir = #if !macro function(_n:GoInt, _mode:stdgo.os.Os.T_readdirMode):{ var _0 : Slice<GoString>; var _1 : Slice<stdgo.io.fs.Fs.DirEntry>; var _2 : Slice<stdgo.io.fs.Fs.FileInfo>; var _3 : stdgo.Error; } return stdgo.os.Os.stdout._readdir(_n, _mode) #else null #end;
                __self__._seek = #if !macro function(_offset:GoInt64, _whence:GoInt):{ var _0 : GoInt64; var _1 : stdgo.Error; } return stdgo.os.Os.stdout._seek(_offset, _whence) #else null #end;
                __self__._setDeadline = #if !macro function(__0:stdgo.time.Time.Time):stdgo.Error return stdgo.os.Os.stdout._setDeadline(__0) #else null #end;
                __self__._setReadDeadline = #if !macro function(__0:stdgo.time.Time.Time):stdgo.Error return stdgo.os.Os.stdout._setReadDeadline(__0) #else null #end;
                __self__._setWriteDeadline = #if !macro function(__0:stdgo.time.Time.Time):stdgo.Error return stdgo.os.Os.stdout._setWriteDeadline(__0) #else null #end;
                __self__._wrapErr = #if !macro function(_op:GoString, _err:stdgo.Error):stdgo.Error return stdgo.os.Os.stdout._wrapErr(_op, _err) #else null #end;
                __self__._write = #if !macro function(_p:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : stdgo.Error; } return stdgo.os.Os.stdout._write(_p) #else null #end;
                __self__;
            }, {
                final __self__ = new PipeReader_wrapper(_r);
                __self__.close = #if !macro function():stdgo.Error return _r.close() #else null #end;
                __self__.closeWithError = #if !macro function(__0:stdgo.Error):stdgo.Error return _r.closeWithError(__0) #else null #end;
                __self__.read = #if !macro function(_p:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : stdgo.Error; } return _r.read(_p) #else null #end;
                __self__;
            }), _0:GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                stdgo.log.Log.fatal(Go.toInterface(_err));
            };
        };
    }
function exampleReadAll():Void {
        var _r = stdgo.strings.Strings.newReader(((Go.str("Go is a general-purpose language designed with systems programming in mind.") : GoString)));
        var __tmp__ = stdgo.io.Io.readAll({
            final __self__ = new stdgo.strings.Strings.Reader_wrapper(_r);
            __self__.len = #if !macro function():GoInt return _r.len() #else null #end;
            __self__.read = #if !macro function(_p:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : stdgo.Error; } return _r.read(_p) #else null #end;
            __self__.readAt = #if !macro function(_p:Slice<GoUInt8>, _off:GoInt64):{ var _0 : GoInt; var _1 : stdgo.Error; } return _r.readAt(_p, _off) #else null #end;
            __self__.readByte = #if !macro function():{ var _0 : GoUInt8; var _1 : stdgo.Error; } return _r.readByte() #else null #end;
            __self__.readRune = #if !macro function():{ var _0 : GoInt32; var _1 : GoInt; var _2 : stdgo.Error; } return _r.readRune() #else null #end;
            __self__.reset = #if !macro function(__0:GoString):Void _r.reset(__0) #else null #end;
            __self__.seek = #if !macro function(_offset:GoInt64, _whence:GoInt):{ var _0 : GoInt64; var _1 : stdgo.Error; } return _r.seek(_offset, _whence) #else null #end;
            __self__.size = #if !macro function():GoInt64 return _r.size() #else null #end;
            __self__.unreadByte = #if !macro function():stdgo.Error return _r.unreadByte() #else null #end;
            __self__.unreadRune = #if !macro function():stdgo.Error return _r.unreadRune() #else null #end;
            __self__.writeTo = #if !macro function(_w:Writer):{ var _0 : GoInt64; var _1 : stdgo.Error; } return _r.writeTo(_w) #else null #end;
            __self__;
        }), _b:Slice<GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            stdgo.log.Log.fatal(Go.toInterface(_err));
        };
        stdgo.fmt.Fmt.printf(((Go.str("%s") : GoString)), Go.toInterface(_b));
    }
function testCopy(_t:stdgo.testing.Testing.T):Void {
        var _rb = (({  } : stdgo.io_test.Io_test.Buffer));
        var _wb = (({  } : stdgo.io_test.Io_test.Buffer));
        _rb.writeString(((Go.str("hello, world.") : GoString)));
        copy({
            final __self__ = new stdgo.io_test.Io_test.Buffer_wrapper(_wb);
            __self__.bytes = #if !macro function():Slice<GoUInt8> return _wb.bytes() #else null #end;
            __self__.cap_ = #if !macro function():GoInt return _wb.cap_() #else null #end;
            __self__.grow = #if !macro function(_pid:GoInt):Void _wb.grow(_pid) #else null #end;
            __self__.len = #if !macro function():GoInt return _wb.len() #else null #end;
            __self__.next = #if !macro function(_pid:GoInt):Slice<GoUInt8> return _wb.next(_pid) #else null #end;
            __self__.read = #if !macro function(_p:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : stdgo.Error; } return _wb.read(_p) #else null #end;
            __self__.readByte = #if !macro function():{ var _0 : GoUInt8; var _1 : stdgo.Error; } return _wb.readByte() #else null #end;
            __self__.readBytes = #if !macro function(_c:GoUInt8):{ var _0 : Slice<GoUInt8>; var _1 : stdgo.Error; } return _wb.readBytes(_c) #else null #end;
            __self__.readRune = #if !macro function():{ var _0 : GoInt32; var _1 : GoInt; var _2 : stdgo.Error; } return _wb.readRune() #else null #end;
            __self__.readString = #if !macro function(_c:GoUInt8):{ var _0 : GoString; var _1 : stdgo.Error; } return _wb.readString(_c) #else null #end;
            __self__.reset = #if !macro function():Void _wb.reset() #else null #end;
            __self__.string = #if !macro function():GoString return _wb.string() #else null #end;
            __self__.truncate = #if !macro function(_pid:GoInt):Void _wb.truncate(_pid) #else null #end;
            __self__.unreadByte = #if !macro function():stdgo.Error return _wb.unreadByte() #else null #end;
            __self__.unreadRune = #if !macro function():stdgo.Error return _wb.unreadRune() #else null #end;
            __self__.write = #if !macro function(_p:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : stdgo.Error; } return _wb.write(_p) #else null #end;
            __self__.writeByte = #if !macro function(_c:GoUInt8):stdgo.Error return _wb.writeByte(_c) #else null #end;
            __self__.writeRune = #if !macro function(_new:GoInt32):{ var _0 : GoInt; var _1 : stdgo.Error; } return _wb.writeRune(_new) #else null #end;
            __self__.writeString = #if !macro function(__0:GoString):{ var _0 : GoInt; var _1 : stdgo.Error; } return _wb.writeString(__0) #else null #end;
            __self__._empty = #if !macro function():Bool return _wb._empty() #else null #end;
            __self__._grow = #if !macro function(_pid:GoInt):GoInt return _wb._grow(_pid) #else null #end;
            __self__._readSlice = #if !macro function(_c:GoUInt8):{ var _0 : Slice<GoUInt8>; var _1 : stdgo.Error; } return _wb._readSlice(_c) #else null #end;
            __self__._tryGrowByReslice = #if !macro function(_pid:GoInt):{ var _0 : GoInt; var _1 : Bool; } return _wb._tryGrowByReslice(_pid) #else null #end;
            __self__;
        }, {
            final __self__ = new stdgo.io_test.Io_test.Buffer_wrapper(_rb);
            __self__.bytes = #if !macro function():Slice<GoUInt8> return _rb.bytes() #else null #end;
            __self__.cap_ = #if !macro function():GoInt return _rb.cap_() #else null #end;
            __self__.grow = #if !macro function(_pid:GoInt):Void _rb.grow(_pid) #else null #end;
            __self__.len = #if !macro function():GoInt return _rb.len() #else null #end;
            __self__.next = #if !macro function(_pid:GoInt):Slice<GoUInt8> return _rb.next(_pid) #else null #end;
            __self__.read = #if !macro function(_p:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : stdgo.Error; } return _rb.read(_p) #else null #end;
            __self__.readByte = #if !macro function():{ var _0 : GoUInt8; var _1 : stdgo.Error; } return _rb.readByte() #else null #end;
            __self__.readBytes = #if !macro function(_c:GoUInt8):{ var _0 : Slice<GoUInt8>; var _1 : stdgo.Error; } return _rb.readBytes(_c) #else null #end;
            __self__.readRune = #if !macro function():{ var _0 : GoInt32; var _1 : GoInt; var _2 : stdgo.Error; } return _rb.readRune() #else null #end;
            __self__.readString = #if !macro function(_c:GoUInt8):{ var _0 : GoString; var _1 : stdgo.Error; } return _rb.readString(_c) #else null #end;
            __self__.reset = #if !macro function():Void _rb.reset() #else null #end;
            __self__.string = #if !macro function():GoString return _rb.string() #else null #end;
            __self__.truncate = #if !macro function(_pid:GoInt):Void _rb.truncate(_pid) #else null #end;
            __self__.unreadByte = #if !macro function():stdgo.Error return _rb.unreadByte() #else null #end;
            __self__.unreadRune = #if !macro function():stdgo.Error return _rb.unreadRune() #else null #end;
            __self__.write = #if !macro function(_p:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : stdgo.Error; } return _rb.write(_p) #else null #end;
            __self__.writeByte = #if !macro function(_c:GoUInt8):stdgo.Error return _rb.writeByte(_c) #else null #end;
            __self__.writeRune = #if !macro function(_new:GoInt32):{ var _0 : GoInt; var _1 : stdgo.Error; } return _rb.writeRune(_new) #else null #end;
            __self__.writeString = #if !macro function(__0:GoString):{ var _0 : GoInt; var _1 : stdgo.Error; } return _rb.writeString(__0) #else null #end;
            __self__._empty = #if !macro function():Bool return _rb._empty() #else null #end;
            __self__._grow = #if !macro function(_pid:GoInt):GoInt return _rb._grow(_pid) #else null #end;
            __self__._readSlice = #if !macro function(_c:GoUInt8):{ var _0 : Slice<GoUInt8>; var _1 : stdgo.Error; } return _rb._readSlice(_c) #else null #end;
            __self__._tryGrowByReslice = #if !macro function(_pid:GoInt):{ var _0 : GoInt; var _1 : Bool; } return _rb._tryGrowByReslice(_pid) #else null #end;
            __self__;
        });
        if (((_wb.string() : GoString)) != ((Go.str("hello, world.") : GoString))) {
            _t.errorf(((Go.str("Copy did not work properly") : GoString)));
        };
    }
function testCopyNegative(_t:stdgo.testing.Testing.T):Void {
        var _rb = (({  } : stdgo.io_test.Io_test.Buffer));
        var _wb = (({  } : stdgo.io_test.Io_test.Buffer));
        _rb.writeString(((Go.str("hello") : GoString)));
        copy({
            final __self__ = new stdgo.io_test.Io_test.Buffer_wrapper(_wb);
            __self__.bytes = #if !macro function():Slice<GoUInt8> return _wb.bytes() #else null #end;
            __self__.cap_ = #if !macro function():GoInt return _wb.cap_() #else null #end;
            __self__.grow = #if !macro function(_pid:GoInt):Void _wb.grow(_pid) #else null #end;
            __self__.len = #if !macro function():GoInt return _wb.len() #else null #end;
            __self__.next = #if !macro function(_pid:GoInt):Slice<GoUInt8> return _wb.next(_pid) #else null #end;
            __self__.read = #if !macro function(_p:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : stdgo.Error; } return _wb.read(_p) #else null #end;
            __self__.readByte = #if !macro function():{ var _0 : GoUInt8; var _1 : stdgo.Error; } return _wb.readByte() #else null #end;
            __self__.readBytes = #if !macro function(_c:GoUInt8):{ var _0 : Slice<GoUInt8>; var _1 : stdgo.Error; } return _wb.readBytes(_c) #else null #end;
            __self__.readRune = #if !macro function():{ var _0 : GoInt32; var _1 : GoInt; var _2 : stdgo.Error; } return _wb.readRune() #else null #end;
            __self__.readString = #if !macro function(_c:GoUInt8):{ var _0 : GoString; var _1 : stdgo.Error; } return _wb.readString(_c) #else null #end;
            __self__.reset = #if !macro function():Void _wb.reset() #else null #end;
            __self__.string = #if !macro function():GoString return _wb.string() #else null #end;
            __self__.truncate = #if !macro function(_pid:GoInt):Void _wb.truncate(_pid) #else null #end;
            __self__.unreadByte = #if !macro function():stdgo.Error return _wb.unreadByte() #else null #end;
            __self__.unreadRune = #if !macro function():stdgo.Error return _wb.unreadRune() #else null #end;
            __self__.write = #if !macro function(_p:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : stdgo.Error; } return _wb.write(_p) #else null #end;
            __self__.writeByte = #if !macro function(_c:GoUInt8):stdgo.Error return _wb.writeByte(_c) #else null #end;
            __self__.writeRune = #if !macro function(_new:GoInt32):{ var _0 : GoInt; var _1 : stdgo.Error; } return _wb.writeRune(_new) #else null #end;
            __self__.writeString = #if !macro function(__0:GoString):{ var _0 : GoInt; var _1 : stdgo.Error; } return _wb.writeString(__0) #else null #end;
            __self__._empty = #if !macro function():Bool return _wb._empty() #else null #end;
            __self__._grow = #if !macro function(_pid:GoInt):GoInt return _wb._grow(_pid) #else null #end;
            __self__._readSlice = #if !macro function(_c:GoUInt8):{ var _0 : Slice<GoUInt8>; var _1 : stdgo.Error; } return _wb._readSlice(_c) #else null #end;
            __self__._tryGrowByReslice = #if !macro function(_pid:GoInt):{ var _0 : GoInt; var _1 : Bool; } return _wb._tryGrowByReslice(_pid) #else null #end;
            __self__;
        }, {
            final __self__ = new LimitedReader_wrapper((({ r : {
                final __self__ = new stdgo.io_test.Io_test.Buffer_wrapper(_rb);
                __self__.bytes = #if !macro function():Slice<GoUInt8> return _rb.bytes() #else null #end;
                __self__.cap_ = #if !macro function():GoInt return _rb.cap_() #else null #end;
                __self__.grow = #if !macro function(_pid:GoInt):Void _rb.grow(_pid) #else null #end;
                __self__.len = #if !macro function():GoInt return _rb.len() #else null #end;
                __self__.next = #if !macro function(_pid:GoInt):Slice<GoUInt8> return _rb.next(_pid) #else null #end;
                __self__.read = #if !macro function(_p:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : stdgo.Error; } return _rb.read(_p) #else null #end;
                __self__.readByte = #if !macro function():{ var _0 : GoUInt8; var _1 : stdgo.Error; } return _rb.readByte() #else null #end;
                __self__.readBytes = #if !macro function(_c:GoUInt8):{ var _0 : Slice<GoUInt8>; var _1 : stdgo.Error; } return _rb.readBytes(_c) #else null #end;
                __self__.readRune = #if !macro function():{ var _0 : GoInt32; var _1 : GoInt; var _2 : stdgo.Error; } return _rb.readRune() #else null #end;
                __self__.readString = #if !macro function(_c:GoUInt8):{ var _0 : GoString; var _1 : stdgo.Error; } return _rb.readString(_c) #else null #end;
                __self__.reset = #if !macro function():Void _rb.reset() #else null #end;
                __self__.string = #if !macro function():GoString return _rb.string() #else null #end;
                __self__.truncate = #if !macro function(_pid:GoInt):Void _rb.truncate(_pid) #else null #end;
                __self__.unreadByte = #if !macro function():stdgo.Error return _rb.unreadByte() #else null #end;
                __self__.unreadRune = #if !macro function():stdgo.Error return _rb.unreadRune() #else null #end;
                __self__.write = #if !macro function(_p:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : stdgo.Error; } return _rb.write(_p) #else null #end;
                __self__.writeByte = #if !macro function(_c:GoUInt8):stdgo.Error return _rb.writeByte(_c) #else null #end;
                __self__.writeRune = #if !macro function(_new:GoInt32):{ var _0 : GoInt; var _1 : stdgo.Error; } return _rb.writeRune(_new) #else null #end;
                __self__.writeString = #if !macro function(__0:GoString):{ var _0 : GoInt; var _1 : stdgo.Error; } return _rb.writeString(__0) #else null #end;
                __self__._empty = #if !macro function():Bool return _rb._empty() #else null #end;
                __self__._grow = #if !macro function(_pid:GoInt):GoInt return _rb._grow(_pid) #else null #end;
                __self__._readSlice = #if !macro function(_c:GoUInt8):{ var _0 : Slice<GoUInt8>; var _1 : stdgo.Error; } return _rb._readSlice(_c) #else null #end;
                __self__._tryGrowByReslice = #if !macro function(_pid:GoInt):{ var _0 : GoInt; var _1 : Bool; } return _rb._tryGrowByReslice(_pid) #else null #end;
                __self__;
            }, n : ((-1 : GoInt64)) } : LimitedReader)));
            __self__.read = #if !macro function(_p:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : stdgo.Error; } return (({ r : {
                final __self__ = new stdgo.io_test.Io_test.Buffer_wrapper(_rb);
                __self__.bytes = #if !macro function():Slice<GoUInt8> return _rb.bytes() #else null #end;
                __self__.cap_ = #if !macro function():GoInt return _rb.cap_() #else null #end;
                __self__.grow = #if !macro function(_pid:GoInt):Void _rb.grow(_pid) #else null #end;
                __self__.len = #if !macro function():GoInt return _rb.len() #else null #end;
                __self__.next = #if !macro function(_pid:GoInt):Slice<GoUInt8> return _rb.next(_pid) #else null #end;
                __self__.read = #if !macro function(_p:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : stdgo.Error; } return _rb.read(_p) #else null #end;
                __self__.readByte = #if !macro function():{ var _0 : GoUInt8; var _1 : stdgo.Error; } return _rb.readByte() #else null #end;
                __self__.readBytes = #if !macro function(_c:GoUInt8):{ var _0 : Slice<GoUInt8>; var _1 : stdgo.Error; } return _rb.readBytes(_c) #else null #end;
                __self__.readRune = #if !macro function():{ var _0 : GoInt32; var _1 : GoInt; var _2 : stdgo.Error; } return _rb.readRune() #else null #end;
                __self__.readString = #if !macro function(_c:GoUInt8):{ var _0 : GoString; var _1 : stdgo.Error; } return _rb.readString(_c) #else null #end;
                __self__.reset = #if !macro function():Void _rb.reset() #else null #end;
                __self__.string = #if !macro function():GoString return _rb.string() #else null #end;
                __self__.truncate = #if !macro function(_pid:GoInt):Void _rb.truncate(_pid) #else null #end;
                __self__.unreadByte = #if !macro function():stdgo.Error return _rb.unreadByte() #else null #end;
                __self__.unreadRune = #if !macro function():stdgo.Error return _rb.unreadRune() #else null #end;
                __self__.write = #if !macro function(_p:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : stdgo.Error; } return _rb.write(_p) #else null #end;
                __self__.writeByte = #if !macro function(_c:GoUInt8):stdgo.Error return _rb.writeByte(_c) #else null #end;
                __self__.writeRune = #if !macro function(_new:GoInt32):{ var _0 : GoInt; var _1 : stdgo.Error; } return _rb.writeRune(_new) #else null #end;
                __self__.writeString = #if !macro function(__0:GoString):{ var _0 : GoInt; var _1 : stdgo.Error; } return _rb.writeString(__0) #else null #end;
                __self__._empty = #if !macro function():Bool return _rb._empty() #else null #end;
                __self__._grow = #if !macro function(_pid:GoInt):GoInt return _rb._grow(_pid) #else null #end;
                __self__._readSlice = #if !macro function(_c:GoUInt8):{ var _0 : Slice<GoUInt8>; var _1 : stdgo.Error; } return _rb._readSlice(_c) #else null #end;
                __self__._tryGrowByReslice = #if !macro function(_pid:GoInt):{ var _0 : GoInt; var _1 : Bool; } return _rb._tryGrowByReslice(_pid) #else null #end;
                __self__;
            }, n : ((-1 : GoInt64)) } : LimitedReader)).read(_p) #else null #end;
            __self__;
        });
        if (((_wb.string() : GoString)) != ((Go.str() : GoString))) {
            _t.errorf(((Go.str("Copy on LimitedReader with N<0 copied data") : GoString)));
        };
        copyN({
            final __self__ = new stdgo.io_test.Io_test.Buffer_wrapper(_wb);
            __self__.bytes = #if !macro function():Slice<GoUInt8> return _wb.bytes() #else null #end;
            __self__.cap_ = #if !macro function():GoInt return _wb.cap_() #else null #end;
            __self__.grow = #if !macro function(_pid:GoInt):Void _wb.grow(_pid) #else null #end;
            __self__.len = #if !macro function():GoInt return _wb.len() #else null #end;
            __self__.next = #if !macro function(_pid:GoInt):Slice<GoUInt8> return _wb.next(_pid) #else null #end;
            __self__.read = #if !macro function(_p:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : stdgo.Error; } return _wb.read(_p) #else null #end;
            __self__.readByte = #if !macro function():{ var _0 : GoUInt8; var _1 : stdgo.Error; } return _wb.readByte() #else null #end;
            __self__.readBytes = #if !macro function(_c:GoUInt8):{ var _0 : Slice<GoUInt8>; var _1 : stdgo.Error; } return _wb.readBytes(_c) #else null #end;
            __self__.readRune = #if !macro function():{ var _0 : GoInt32; var _1 : GoInt; var _2 : stdgo.Error; } return _wb.readRune() #else null #end;
            __self__.readString = #if !macro function(_c:GoUInt8):{ var _0 : GoString; var _1 : stdgo.Error; } return _wb.readString(_c) #else null #end;
            __self__.reset = #if !macro function():Void _wb.reset() #else null #end;
            __self__.string = #if !macro function():GoString return _wb.string() #else null #end;
            __self__.truncate = #if !macro function(_pid:GoInt):Void _wb.truncate(_pid) #else null #end;
            __self__.unreadByte = #if !macro function():stdgo.Error return _wb.unreadByte() #else null #end;
            __self__.unreadRune = #if !macro function():stdgo.Error return _wb.unreadRune() #else null #end;
            __self__.write = #if !macro function(_p:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : stdgo.Error; } return _wb.write(_p) #else null #end;
            __self__.writeByte = #if !macro function(_c:GoUInt8):stdgo.Error return _wb.writeByte(_c) #else null #end;
            __self__.writeRune = #if !macro function(_new:GoInt32):{ var _0 : GoInt; var _1 : stdgo.Error; } return _wb.writeRune(_new) #else null #end;
            __self__.writeString = #if !macro function(__0:GoString):{ var _0 : GoInt; var _1 : stdgo.Error; } return _wb.writeString(__0) #else null #end;
            __self__._empty = #if !macro function():Bool return _wb._empty() #else null #end;
            __self__._grow = #if !macro function(_pid:GoInt):GoInt return _wb._grow(_pid) #else null #end;
            __self__._readSlice = #if !macro function(_c:GoUInt8):{ var _0 : Slice<GoUInt8>; var _1 : stdgo.Error; } return _wb._readSlice(_c) #else null #end;
            __self__._tryGrowByReslice = #if !macro function(_pid:GoInt):{ var _0 : GoInt; var _1 : Bool; } return _wb._tryGrowByReslice(_pid) #else null #end;
            __self__;
        }, {
            final __self__ = new stdgo.io_test.Io_test.Buffer_wrapper(_rb);
            __self__.bytes = #if !macro function():Slice<GoUInt8> return _rb.bytes() #else null #end;
            __self__.cap_ = #if !macro function():GoInt return _rb.cap_() #else null #end;
            __self__.grow = #if !macro function(_pid:GoInt):Void _rb.grow(_pid) #else null #end;
            __self__.len = #if !macro function():GoInt return _rb.len() #else null #end;
            __self__.next = #if !macro function(_pid:GoInt):Slice<GoUInt8> return _rb.next(_pid) #else null #end;
            __self__.read = #if !macro function(_p:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : stdgo.Error; } return _rb.read(_p) #else null #end;
            __self__.readByte = #if !macro function():{ var _0 : GoUInt8; var _1 : stdgo.Error; } return _rb.readByte() #else null #end;
            __self__.readBytes = #if !macro function(_c:GoUInt8):{ var _0 : Slice<GoUInt8>; var _1 : stdgo.Error; } return _rb.readBytes(_c) #else null #end;
            __self__.readRune = #if !macro function():{ var _0 : GoInt32; var _1 : GoInt; var _2 : stdgo.Error; } return _rb.readRune() #else null #end;
            __self__.readString = #if !macro function(_c:GoUInt8):{ var _0 : GoString; var _1 : stdgo.Error; } return _rb.readString(_c) #else null #end;
            __self__.reset = #if !macro function():Void _rb.reset() #else null #end;
            __self__.string = #if !macro function():GoString return _rb.string() #else null #end;
            __self__.truncate = #if !macro function(_pid:GoInt):Void _rb.truncate(_pid) #else null #end;
            __self__.unreadByte = #if !macro function():stdgo.Error return _rb.unreadByte() #else null #end;
            __self__.unreadRune = #if !macro function():stdgo.Error return _rb.unreadRune() #else null #end;
            __self__.write = #if !macro function(_p:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : stdgo.Error; } return _rb.write(_p) #else null #end;
            __self__.writeByte = #if !macro function(_c:GoUInt8):stdgo.Error return _rb.writeByte(_c) #else null #end;
            __self__.writeRune = #if !macro function(_new:GoInt32):{ var _0 : GoInt; var _1 : stdgo.Error; } return _rb.writeRune(_new) #else null #end;
            __self__.writeString = #if !macro function(__0:GoString):{ var _0 : GoInt; var _1 : stdgo.Error; } return _rb.writeString(__0) #else null #end;
            __self__._empty = #if !macro function():Bool return _rb._empty() #else null #end;
            __self__._grow = #if !macro function(_pid:GoInt):GoInt return _rb._grow(_pid) #else null #end;
            __self__._readSlice = #if !macro function(_c:GoUInt8):{ var _0 : Slice<GoUInt8>; var _1 : stdgo.Error; } return _rb._readSlice(_c) #else null #end;
            __self__._tryGrowByReslice = #if !macro function(_pid:GoInt):{ var _0 : GoInt; var _1 : Bool; } return _rb._tryGrowByReslice(_pid) #else null #end;
            __self__;
        }, ((-1 : GoInt64)));
        if (((_wb.string() : GoString)) != ((Go.str() : GoString))) {
            _t.errorf(((Go.str("CopyN with N<0 copied data") : GoString)));
        };
    }
function testCopyBuffer(_t:stdgo.testing.Testing.T):Void {
        var _rb = (({  } : stdgo.io_test.Io_test.Buffer));
        var _wb = (({  } : stdgo.io_test.Io_test.Buffer));
        _rb.writeString(((Go.str("hello, world.") : GoString)));
        copyBuffer({
            final __self__ = new stdgo.io_test.Io_test.Buffer_wrapper(_wb);
            __self__.bytes = #if !macro function():Slice<GoUInt8> return _wb.bytes() #else null #end;
            __self__.cap_ = #if !macro function():GoInt return _wb.cap_() #else null #end;
            __self__.grow = #if !macro function(_pid:GoInt):Void _wb.grow(_pid) #else null #end;
            __self__.len = #if !macro function():GoInt return _wb.len() #else null #end;
            __self__.next = #if !macro function(_pid:GoInt):Slice<GoUInt8> return _wb.next(_pid) #else null #end;
            __self__.read = #if !macro function(_p:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : stdgo.Error; } return _wb.read(_p) #else null #end;
            __self__.readByte = #if !macro function():{ var _0 : GoUInt8; var _1 : stdgo.Error; } return _wb.readByte() #else null #end;
            __self__.readBytes = #if !macro function(_c:GoUInt8):{ var _0 : Slice<GoUInt8>; var _1 : stdgo.Error; } return _wb.readBytes(_c) #else null #end;
            __self__.readRune = #if !macro function():{ var _0 : GoInt32; var _1 : GoInt; var _2 : stdgo.Error; } return _wb.readRune() #else null #end;
            __self__.readString = #if !macro function(_c:GoUInt8):{ var _0 : GoString; var _1 : stdgo.Error; } return _wb.readString(_c) #else null #end;
            __self__.reset = #if !macro function():Void _wb.reset() #else null #end;
            __self__.string = #if !macro function():GoString return _wb.string() #else null #end;
            __self__.truncate = #if !macro function(_pid:GoInt):Void _wb.truncate(_pid) #else null #end;
            __self__.unreadByte = #if !macro function():stdgo.Error return _wb.unreadByte() #else null #end;
            __self__.unreadRune = #if !macro function():stdgo.Error return _wb.unreadRune() #else null #end;
            __self__.write = #if !macro function(_p:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : stdgo.Error; } return _wb.write(_p) #else null #end;
            __self__.writeByte = #if !macro function(_c:GoUInt8):stdgo.Error return _wb.writeByte(_c) #else null #end;
            __self__.writeRune = #if !macro function(_new:GoInt32):{ var _0 : GoInt; var _1 : stdgo.Error; } return _wb.writeRune(_new) #else null #end;
            __self__.writeString = #if !macro function(__0:GoString):{ var _0 : GoInt; var _1 : stdgo.Error; } return _wb.writeString(__0) #else null #end;
            __self__._empty = #if !macro function():Bool return _wb._empty() #else null #end;
            __self__._grow = #if !macro function(_pid:GoInt):GoInt return _wb._grow(_pid) #else null #end;
            __self__._readSlice = #if !macro function(_c:GoUInt8):{ var _0 : Slice<GoUInt8>; var _1 : stdgo.Error; } return _wb._readSlice(_c) #else null #end;
            __self__._tryGrowByReslice = #if !macro function(_pid:GoInt):{ var _0 : GoInt; var _1 : Bool; } return _wb._tryGrowByReslice(_pid) #else null #end;
            __self__;
        }, {
            final __self__ = new stdgo.io_test.Io_test.Buffer_wrapper(_rb);
            __self__.bytes = #if !macro function():Slice<GoUInt8> return _rb.bytes() #else null #end;
            __self__.cap_ = #if !macro function():GoInt return _rb.cap_() #else null #end;
            __self__.grow = #if !macro function(_pid:GoInt):Void _rb.grow(_pid) #else null #end;
            __self__.len = #if !macro function():GoInt return _rb.len() #else null #end;
            __self__.next = #if !macro function(_pid:GoInt):Slice<GoUInt8> return _rb.next(_pid) #else null #end;
            __self__.read = #if !macro function(_p:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : stdgo.Error; } return _rb.read(_p) #else null #end;
            __self__.readByte = #if !macro function():{ var _0 : GoUInt8; var _1 : stdgo.Error; } return _rb.readByte() #else null #end;
            __self__.readBytes = #if !macro function(_c:GoUInt8):{ var _0 : Slice<GoUInt8>; var _1 : stdgo.Error; } return _rb.readBytes(_c) #else null #end;
            __self__.readRune = #if !macro function():{ var _0 : GoInt32; var _1 : GoInt; var _2 : stdgo.Error; } return _rb.readRune() #else null #end;
            __self__.readString = #if !macro function(_c:GoUInt8):{ var _0 : GoString; var _1 : stdgo.Error; } return _rb.readString(_c) #else null #end;
            __self__.reset = #if !macro function():Void _rb.reset() #else null #end;
            __self__.string = #if !macro function():GoString return _rb.string() #else null #end;
            __self__.truncate = #if !macro function(_pid:GoInt):Void _rb.truncate(_pid) #else null #end;
            __self__.unreadByte = #if !macro function():stdgo.Error return _rb.unreadByte() #else null #end;
            __self__.unreadRune = #if !macro function():stdgo.Error return _rb.unreadRune() #else null #end;
            __self__.write = #if !macro function(_p:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : stdgo.Error; } return _rb.write(_p) #else null #end;
            __self__.writeByte = #if !macro function(_c:GoUInt8):stdgo.Error return _rb.writeByte(_c) #else null #end;
            __self__.writeRune = #if !macro function(_new:GoInt32):{ var _0 : GoInt; var _1 : stdgo.Error; } return _rb.writeRune(_new) #else null #end;
            __self__.writeString = #if !macro function(__0:GoString):{ var _0 : GoInt; var _1 : stdgo.Error; } return _rb.writeString(__0) #else null #end;
            __self__._empty = #if !macro function():Bool return _rb._empty() #else null #end;
            __self__._grow = #if !macro function(_pid:GoInt):GoInt return _rb._grow(_pid) #else null #end;
            __self__._readSlice = #if !macro function(_c:GoUInt8):{ var _0 : Slice<GoUInt8>; var _1 : stdgo.Error; } return _rb._readSlice(_c) #else null #end;
            __self__._tryGrowByReslice = #if !macro function(_pid:GoInt):{ var _0 : GoInt; var _1 : Bool; } return _rb._tryGrowByReslice(_pid) #else null #end;
            __self__;
        }, new Slice<GoUInt8>(((((1 : GoInt)) : GoInt)).toBasic(), 0, ...[for (i in 0 ... ((((1 : GoInt)) : GoInt)).toBasic()) ((0 : GoUInt8))]));
        if (((_wb.string() : GoString)) != ((Go.str("hello, world.") : GoString))) {
            _t.errorf(((Go.str("CopyBuffer did not work properly") : GoString)));
        };
    }
function testCopyBufferNil(_t:stdgo.testing.Testing.T):Void {
        var _rb = (({  } : stdgo.io_test.Io_test.Buffer));
        var _wb = (({  } : stdgo.io_test.Io_test.Buffer));
        _rb.writeString(((Go.str("hello, world.") : GoString)));
        copyBuffer({
            final __self__ = new stdgo.io_test.Io_test.Buffer_wrapper(_wb);
            __self__.bytes = #if !macro function():Slice<GoUInt8> return _wb.bytes() #else null #end;
            __self__.cap_ = #if !macro function():GoInt return _wb.cap_() #else null #end;
            __self__.grow = #if !macro function(_pid:GoInt):Void _wb.grow(_pid) #else null #end;
            __self__.len = #if !macro function():GoInt return _wb.len() #else null #end;
            __self__.next = #if !macro function(_pid:GoInt):Slice<GoUInt8> return _wb.next(_pid) #else null #end;
            __self__.read = #if !macro function(_p:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : stdgo.Error; } return _wb.read(_p) #else null #end;
            __self__.readByte = #if !macro function():{ var _0 : GoUInt8; var _1 : stdgo.Error; } return _wb.readByte() #else null #end;
            __self__.readBytes = #if !macro function(_c:GoUInt8):{ var _0 : Slice<GoUInt8>; var _1 : stdgo.Error; } return _wb.readBytes(_c) #else null #end;
            __self__.readRune = #if !macro function():{ var _0 : GoInt32; var _1 : GoInt; var _2 : stdgo.Error; } return _wb.readRune() #else null #end;
            __self__.readString = #if !macro function(_c:GoUInt8):{ var _0 : GoString; var _1 : stdgo.Error; } return _wb.readString(_c) #else null #end;
            __self__.reset = #if !macro function():Void _wb.reset() #else null #end;
            __self__.string = #if !macro function():GoString return _wb.string() #else null #end;
            __self__.truncate = #if !macro function(_pid:GoInt):Void _wb.truncate(_pid) #else null #end;
            __self__.unreadByte = #if !macro function():stdgo.Error return _wb.unreadByte() #else null #end;
            __self__.unreadRune = #if !macro function():stdgo.Error return _wb.unreadRune() #else null #end;
            __self__.write = #if !macro function(_p:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : stdgo.Error; } return _wb.write(_p) #else null #end;
            __self__.writeByte = #if !macro function(_c:GoUInt8):stdgo.Error return _wb.writeByte(_c) #else null #end;
            __self__.writeRune = #if !macro function(_new:GoInt32):{ var _0 : GoInt; var _1 : stdgo.Error; } return _wb.writeRune(_new) #else null #end;
            __self__.writeString = #if !macro function(__0:GoString):{ var _0 : GoInt; var _1 : stdgo.Error; } return _wb.writeString(__0) #else null #end;
            __self__._empty = #if !macro function():Bool return _wb._empty() #else null #end;
            __self__._grow = #if !macro function(_pid:GoInt):GoInt return _wb._grow(_pid) #else null #end;
            __self__._readSlice = #if !macro function(_c:GoUInt8):{ var _0 : Slice<GoUInt8>; var _1 : stdgo.Error; } return _wb._readSlice(_c) #else null #end;
            __self__._tryGrowByReslice = #if !macro function(_pid:GoInt):{ var _0 : GoInt; var _1 : Bool; } return _wb._tryGrowByReslice(_pid) #else null #end;
            __self__;
        }, {
            final __self__ = new stdgo.io_test.Io_test.Buffer_wrapper(_rb);
            __self__.bytes = #if !macro function():Slice<GoUInt8> return _rb.bytes() #else null #end;
            __self__.cap_ = #if !macro function():GoInt return _rb.cap_() #else null #end;
            __self__.grow = #if !macro function(_pid:GoInt):Void _rb.grow(_pid) #else null #end;
            __self__.len = #if !macro function():GoInt return _rb.len() #else null #end;
            __self__.next = #if !macro function(_pid:GoInt):Slice<GoUInt8> return _rb.next(_pid) #else null #end;
            __self__.read = #if !macro function(_p:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : stdgo.Error; } return _rb.read(_p) #else null #end;
            __self__.readByte = #if !macro function():{ var _0 : GoUInt8; var _1 : stdgo.Error; } return _rb.readByte() #else null #end;
            __self__.readBytes = #if !macro function(_c:GoUInt8):{ var _0 : Slice<GoUInt8>; var _1 : stdgo.Error; } return _rb.readBytes(_c) #else null #end;
            __self__.readRune = #if !macro function():{ var _0 : GoInt32; var _1 : GoInt; var _2 : stdgo.Error; } return _rb.readRune() #else null #end;
            __self__.readString = #if !macro function(_c:GoUInt8):{ var _0 : GoString; var _1 : stdgo.Error; } return _rb.readString(_c) #else null #end;
            __self__.reset = #if !macro function():Void _rb.reset() #else null #end;
            __self__.string = #if !macro function():GoString return _rb.string() #else null #end;
            __self__.truncate = #if !macro function(_pid:GoInt):Void _rb.truncate(_pid) #else null #end;
            __self__.unreadByte = #if !macro function():stdgo.Error return _rb.unreadByte() #else null #end;
            __self__.unreadRune = #if !macro function():stdgo.Error return _rb.unreadRune() #else null #end;
            __self__.write = #if !macro function(_p:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : stdgo.Error; } return _rb.write(_p) #else null #end;
            __self__.writeByte = #if !macro function(_c:GoUInt8):stdgo.Error return _rb.writeByte(_c) #else null #end;
            __self__.writeRune = #if !macro function(_new:GoInt32):{ var _0 : GoInt; var _1 : stdgo.Error; } return _rb.writeRune(_new) #else null #end;
            __self__.writeString = #if !macro function(__0:GoString):{ var _0 : GoInt; var _1 : stdgo.Error; } return _rb.writeString(__0) #else null #end;
            __self__._empty = #if !macro function():Bool return _rb._empty() #else null #end;
            __self__._grow = #if !macro function(_pid:GoInt):GoInt return _rb._grow(_pid) #else null #end;
            __self__._readSlice = #if !macro function(_c:GoUInt8):{ var _0 : Slice<GoUInt8>; var _1 : stdgo.Error; } return _rb._readSlice(_c) #else null #end;
            __self__._tryGrowByReslice = #if !macro function(_pid:GoInt):{ var _0 : GoInt; var _1 : Bool; } return _rb._tryGrowByReslice(_pid) #else null #end;
            __self__;
        }, ((null : Slice<GoUInt8>)));
        if (((_wb.string() : GoString)) != ((Go.str("hello, world.") : GoString))) {
            _t.errorf(((Go.str("CopyBuffer did not work properly") : GoString)));
        };
    }
function testCopyReadFrom(_t:stdgo.testing.Testing.T):Void {
        var _rb = (({  } : stdgo.io_test.Io_test.Buffer));
        var _wb = (({  } : stdgo.bytes.Bytes.Buffer));
        _rb.writeString(((Go.str("hello, world.") : GoString)));
        copy({
            final __self__ = new stdgo.bytes.Bytes.Buffer_wrapper(_wb);
            __self__.bytes = #if !macro function():Slice<GoUInt8> return _wb.bytes() #else null #end;
            __self__.cap_ = #if !macro function():GoInt return _wb.cap_() #else null #end;
            __self__.grow = #if !macro function(_pid:GoInt):Void _wb.grow(_pid) #else null #end;
            __self__.len = #if !macro function():GoInt return _wb.len() #else null #end;
            __self__.next = #if !macro function(_pid:GoInt):Slice<GoUInt8> return _wb.next(_pid) #else null #end;
            __self__.read = #if !macro function(_p:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : stdgo.Error; } return _wb.read(_p) #else null #end;
            __self__.readByte = #if !macro function():{ var _0 : GoUInt8; var _1 : stdgo.Error; } return _wb.readByte() #else null #end;
            __self__.readBytes = #if !macro function(_c:GoUInt8):{ var _0 : Slice<GoUInt8>; var _1 : stdgo.Error; } return _wb.readBytes(_c) #else null #end;
            __self__.readFrom = #if !macro function(_r:Reader):{ var _0 : GoInt64; var _1 : stdgo.Error; } return _wb.readFrom(_r) #else null #end;
            __self__.readRune = #if !macro function():{ var _0 : GoInt32; var _1 : GoInt; var _2 : stdgo.Error; } return _wb.readRune() #else null #end;
            __self__.readString = #if !macro function(_c:GoUInt8):{ var _0 : GoString; var _1 : stdgo.Error; } return _wb.readString(_c) #else null #end;
            __self__.reset = #if !macro function():Void _wb.reset() #else null #end;
            __self__.string = #if !macro function():GoString return _wb.string() #else null #end;
            __self__.truncate = #if !macro function(_pid:GoInt):Void _wb.truncate(_pid) #else null #end;
            __self__.unreadByte = #if !macro function():stdgo.Error return _wb.unreadByte() #else null #end;
            __self__.unreadRune = #if !macro function():stdgo.Error return _wb.unreadRune() #else null #end;
            __self__.write = #if !macro function(_p:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : stdgo.Error; } return _wb.write(_p) #else null #end;
            __self__.writeByte = #if !macro function(_c:GoUInt8):stdgo.Error return _wb.writeByte(_c) #else null #end;
            __self__.writeRune = #if !macro function(_new:GoInt32):{ var _0 : GoInt; var _1 : stdgo.Error; } return _wb.writeRune(_new) #else null #end;
            __self__.writeString = #if !macro function(__0:GoString):{ var _0 : GoInt; var _1 : stdgo.Error; } return _wb.writeString(__0) #else null #end;
            __self__.writeTo = #if !macro function(_w:Writer):{ var _0 : GoInt64; var _1 : stdgo.Error; } return _wb.writeTo(_w) #else null #end;
            __self__._empty = #if !macro function():Bool return _wb._empty() #else null #end;
            __self__._grow = #if !macro function(_pid:GoInt):GoInt return _wb._grow(_pid) #else null #end;
            __self__._readSlice = #if !macro function(_c:GoUInt8):{ var _0 : Slice<GoUInt8>; var _1 : stdgo.Error; } return _wb._readSlice(_c) #else null #end;
            __self__._tryGrowByReslice = #if !macro function(_pid:GoInt):{ var _0 : GoInt; var _1 : Bool; } return _wb._tryGrowByReslice(_pid) #else null #end;
            __self__;
        }, {
            final __self__ = new stdgo.io_test.Io_test.Buffer_wrapper(_rb);
            __self__.bytes = #if !macro function():Slice<GoUInt8> return _rb.bytes() #else null #end;
            __self__.cap_ = #if !macro function():GoInt return _rb.cap_() #else null #end;
            __self__.grow = #if !macro function(_pid:GoInt):Void _rb.grow(_pid) #else null #end;
            __self__.len = #if !macro function():GoInt return _rb.len() #else null #end;
            __self__.next = #if !macro function(_pid:GoInt):Slice<GoUInt8> return _rb.next(_pid) #else null #end;
            __self__.read = #if !macro function(_p:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : stdgo.Error; } return _rb.read(_p) #else null #end;
            __self__.readByte = #if !macro function():{ var _0 : GoUInt8; var _1 : stdgo.Error; } return _rb.readByte() #else null #end;
            __self__.readBytes = #if !macro function(_c:GoUInt8):{ var _0 : Slice<GoUInt8>; var _1 : stdgo.Error; } return _rb.readBytes(_c) #else null #end;
            __self__.readRune = #if !macro function():{ var _0 : GoInt32; var _1 : GoInt; var _2 : stdgo.Error; } return _rb.readRune() #else null #end;
            __self__.readString = #if !macro function(_c:GoUInt8):{ var _0 : GoString; var _1 : stdgo.Error; } return _rb.readString(_c) #else null #end;
            __self__.reset = #if !macro function():Void _rb.reset() #else null #end;
            __self__.string = #if !macro function():GoString return _rb.string() #else null #end;
            __self__.truncate = #if !macro function(_pid:GoInt):Void _rb.truncate(_pid) #else null #end;
            __self__.unreadByte = #if !macro function():stdgo.Error return _rb.unreadByte() #else null #end;
            __self__.unreadRune = #if !macro function():stdgo.Error return _rb.unreadRune() #else null #end;
            __self__.write = #if !macro function(_p:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : stdgo.Error; } return _rb.write(_p) #else null #end;
            __self__.writeByte = #if !macro function(_c:GoUInt8):stdgo.Error return _rb.writeByte(_c) #else null #end;
            __self__.writeRune = #if !macro function(_new:GoInt32):{ var _0 : GoInt; var _1 : stdgo.Error; } return _rb.writeRune(_new) #else null #end;
            __self__.writeString = #if !macro function(__0:GoString):{ var _0 : GoInt; var _1 : stdgo.Error; } return _rb.writeString(__0) #else null #end;
            __self__._empty = #if !macro function():Bool return _rb._empty() #else null #end;
            __self__._grow = #if !macro function(_pid:GoInt):GoInt return _rb._grow(_pid) #else null #end;
            __self__._readSlice = #if !macro function(_c:GoUInt8):{ var _0 : Slice<GoUInt8>; var _1 : stdgo.Error; } return _rb._readSlice(_c) #else null #end;
            __self__._tryGrowByReslice = #if !macro function(_pid:GoInt):{ var _0 : GoInt; var _1 : Bool; } return _rb._tryGrowByReslice(_pid) #else null #end;
            __self__;
        });
        if (((_wb.string() : GoString)) != ((Go.str("hello, world.") : GoString))) {
            _t.errorf(((Go.str("Copy did not work properly") : GoString)));
        };
    }
function testCopyWriteTo(_t:stdgo.testing.Testing.T):Void {
        var _rb = (({  } : stdgo.bytes.Bytes.Buffer));
        var _wb = (({  } : stdgo.io_test.Io_test.Buffer));
        _rb.writeString(((Go.str("hello, world.") : GoString)));
        copy({
            final __self__ = new stdgo.io_test.Io_test.Buffer_wrapper(_wb);
            __self__.bytes = #if !macro function():Slice<GoUInt8> return _wb.bytes() #else null #end;
            __self__.cap_ = #if !macro function():GoInt return _wb.cap_() #else null #end;
            __self__.grow = #if !macro function(_pid:GoInt):Void _wb.grow(_pid) #else null #end;
            __self__.len = #if !macro function():GoInt return _wb.len() #else null #end;
            __self__.next = #if !macro function(_pid:GoInt):Slice<GoUInt8> return _wb.next(_pid) #else null #end;
            __self__.read = #if !macro function(_p:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : stdgo.Error; } return _wb.read(_p) #else null #end;
            __self__.readByte = #if !macro function():{ var _0 : GoUInt8; var _1 : stdgo.Error; } return _wb.readByte() #else null #end;
            __self__.readBytes = #if !macro function(_c:GoUInt8):{ var _0 : Slice<GoUInt8>; var _1 : stdgo.Error; } return _wb.readBytes(_c) #else null #end;
            __self__.readRune = #if !macro function():{ var _0 : GoInt32; var _1 : GoInt; var _2 : stdgo.Error; } return _wb.readRune() #else null #end;
            __self__.readString = #if !macro function(_c:GoUInt8):{ var _0 : GoString; var _1 : stdgo.Error; } return _wb.readString(_c) #else null #end;
            __self__.reset = #if !macro function():Void _wb.reset() #else null #end;
            __self__.string = #if !macro function():GoString return _wb.string() #else null #end;
            __self__.truncate = #if !macro function(_pid:GoInt):Void _wb.truncate(_pid) #else null #end;
            __self__.unreadByte = #if !macro function():stdgo.Error return _wb.unreadByte() #else null #end;
            __self__.unreadRune = #if !macro function():stdgo.Error return _wb.unreadRune() #else null #end;
            __self__.write = #if !macro function(_p:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : stdgo.Error; } return _wb.write(_p) #else null #end;
            __self__.writeByte = #if !macro function(_c:GoUInt8):stdgo.Error return _wb.writeByte(_c) #else null #end;
            __self__.writeRune = #if !macro function(_new:GoInt32):{ var _0 : GoInt; var _1 : stdgo.Error; } return _wb.writeRune(_new) #else null #end;
            __self__.writeString = #if !macro function(__0:GoString):{ var _0 : GoInt; var _1 : stdgo.Error; } return _wb.writeString(__0) #else null #end;
            __self__._empty = #if !macro function():Bool return _wb._empty() #else null #end;
            __self__._grow = #if !macro function(_pid:GoInt):GoInt return _wb._grow(_pid) #else null #end;
            __self__._readSlice = #if !macro function(_c:GoUInt8):{ var _0 : Slice<GoUInt8>; var _1 : stdgo.Error; } return _wb._readSlice(_c) #else null #end;
            __self__._tryGrowByReslice = #if !macro function(_pid:GoInt):{ var _0 : GoInt; var _1 : Bool; } return _wb._tryGrowByReslice(_pid) #else null #end;
            __self__;
        }, {
            final __self__ = new stdgo.bytes.Bytes.Buffer_wrapper(_rb);
            __self__.bytes = #if !macro function():Slice<GoUInt8> return _rb.bytes() #else null #end;
            __self__.cap_ = #if !macro function():GoInt return _rb.cap_() #else null #end;
            __self__.grow = #if !macro function(_pid:GoInt):Void _rb.grow(_pid) #else null #end;
            __self__.len = #if !macro function():GoInt return _rb.len() #else null #end;
            __self__.next = #if !macro function(_pid:GoInt):Slice<GoUInt8> return _rb.next(_pid) #else null #end;
            __self__.read = #if !macro function(_p:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : stdgo.Error; } return _rb.read(_p) #else null #end;
            __self__.readByte = #if !macro function():{ var _0 : GoUInt8; var _1 : stdgo.Error; } return _rb.readByte() #else null #end;
            __self__.readBytes = #if !macro function(_c:GoUInt8):{ var _0 : Slice<GoUInt8>; var _1 : stdgo.Error; } return _rb.readBytes(_c) #else null #end;
            __self__.readFrom = #if !macro function(_r:Reader):{ var _0 : GoInt64; var _1 : stdgo.Error; } return _rb.readFrom(_r) #else null #end;
            __self__.readRune = #if !macro function():{ var _0 : GoInt32; var _1 : GoInt; var _2 : stdgo.Error; } return _rb.readRune() #else null #end;
            __self__.readString = #if !macro function(_c:GoUInt8):{ var _0 : GoString; var _1 : stdgo.Error; } return _rb.readString(_c) #else null #end;
            __self__.reset = #if !macro function():Void _rb.reset() #else null #end;
            __self__.string = #if !macro function():GoString return _rb.string() #else null #end;
            __self__.truncate = #if !macro function(_pid:GoInt):Void _rb.truncate(_pid) #else null #end;
            __self__.unreadByte = #if !macro function():stdgo.Error return _rb.unreadByte() #else null #end;
            __self__.unreadRune = #if !macro function():stdgo.Error return _rb.unreadRune() #else null #end;
            __self__.write = #if !macro function(_p:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : stdgo.Error; } return _rb.write(_p) #else null #end;
            __self__.writeByte = #if !macro function(_c:GoUInt8):stdgo.Error return _rb.writeByte(_c) #else null #end;
            __self__.writeRune = #if !macro function(_new:GoInt32):{ var _0 : GoInt; var _1 : stdgo.Error; } return _rb.writeRune(_new) #else null #end;
            __self__.writeString = #if !macro function(__0:GoString):{ var _0 : GoInt; var _1 : stdgo.Error; } return _rb.writeString(__0) #else null #end;
            __self__.writeTo = #if !macro function(_w:Writer):{ var _0 : GoInt64; var _1 : stdgo.Error; } return _rb.writeTo(_w) #else null #end;
            __self__._empty = #if !macro function():Bool return _rb._empty() #else null #end;
            __self__._grow = #if !macro function(_pid:GoInt):GoInt return _rb._grow(_pid) #else null #end;
            __self__._readSlice = #if !macro function(_c:GoUInt8):{ var _0 : Slice<GoUInt8>; var _1 : stdgo.Error; } return _rb._readSlice(_c) #else null #end;
            __self__._tryGrowByReslice = #if !macro function(_pid:GoInt):{ var _0 : GoInt; var _1 : Bool; } return _rb._tryGrowByReslice(_pid) #else null #end;
            __self__;
        });
        if (((_wb.string() : GoString)) != ((Go.str("hello, world.") : GoString))) {
            _t.errorf(((Go.str("Copy did not work properly") : GoString)));
        };
    }
/**
    // It's preferable to choose WriterTo over ReaderFrom, since a WriterTo can issue one large write,
    // while the ReaderFrom must read until EOF, potentially allocating when running out of buffer.
    // Make sure that we choose WriterTo when both are implemented.
**/
function testCopyPriority(_t:stdgo.testing.Testing.T):Void {
        var _rb = (({  } : stdgo.io_test.Io_test.T_writeToChecker));
        var _wb = (({  } : stdgo.bytes.Bytes.Buffer));
        _rb.writeString(((Go.str("hello, world.") : GoString)));
        copy({
            final __self__ = new stdgo.bytes.Bytes.Buffer_wrapper(_wb);
            __self__.bytes = #if !macro function():Slice<GoUInt8> return _wb.bytes() #else null #end;
            __self__.cap_ = #if !macro function():GoInt return _wb.cap_() #else null #end;
            __self__.grow = #if !macro function(_pid:GoInt):Void _wb.grow(_pid) #else null #end;
            __self__.len = #if !macro function():GoInt return _wb.len() #else null #end;
            __self__.next = #if !macro function(_pid:GoInt):Slice<GoUInt8> return _wb.next(_pid) #else null #end;
            __self__.read = #if !macro function(_p:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : stdgo.Error; } return _wb.read(_p) #else null #end;
            __self__.readByte = #if !macro function():{ var _0 : GoUInt8; var _1 : stdgo.Error; } return _wb.readByte() #else null #end;
            __self__.readBytes = #if !macro function(_c:GoUInt8):{ var _0 : Slice<GoUInt8>; var _1 : stdgo.Error; } return _wb.readBytes(_c) #else null #end;
            __self__.readFrom = #if !macro function(_r:Reader):{ var _0 : GoInt64; var _1 : stdgo.Error; } return _wb.readFrom(_r) #else null #end;
            __self__.readRune = #if !macro function():{ var _0 : GoInt32; var _1 : GoInt; var _2 : stdgo.Error; } return _wb.readRune() #else null #end;
            __self__.readString = #if !macro function(_c:GoUInt8):{ var _0 : GoString; var _1 : stdgo.Error; } return _wb.readString(_c) #else null #end;
            __self__.reset = #if !macro function():Void _wb.reset() #else null #end;
            __self__.string = #if !macro function():GoString return _wb.string() #else null #end;
            __self__.truncate = #if !macro function(_pid:GoInt):Void _wb.truncate(_pid) #else null #end;
            __self__.unreadByte = #if !macro function():stdgo.Error return _wb.unreadByte() #else null #end;
            __self__.unreadRune = #if !macro function():stdgo.Error return _wb.unreadRune() #else null #end;
            __self__.write = #if !macro function(_p:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : stdgo.Error; } return _wb.write(_p) #else null #end;
            __self__.writeByte = #if !macro function(_c:GoUInt8):stdgo.Error return _wb.writeByte(_c) #else null #end;
            __self__.writeRune = #if !macro function(_new:GoInt32):{ var _0 : GoInt; var _1 : stdgo.Error; } return _wb.writeRune(_new) #else null #end;
            __self__.writeString = #if !macro function(__0:GoString):{ var _0 : GoInt; var _1 : stdgo.Error; } return _wb.writeString(__0) #else null #end;
            __self__.writeTo = #if !macro function(_w:Writer):{ var _0 : GoInt64; var _1 : stdgo.Error; } return _wb.writeTo(_w) #else null #end;
            __self__._empty = #if !macro function():Bool return _wb._empty() #else null #end;
            __self__._grow = #if !macro function(_pid:GoInt):GoInt return _wb._grow(_pid) #else null #end;
            __self__._readSlice = #if !macro function(_c:GoUInt8):{ var _0 : Slice<GoUInt8>; var _1 : stdgo.Error; } return _wb._readSlice(_c) #else null #end;
            __self__._tryGrowByReslice = #if !macro function(_pid:GoInt):{ var _0 : GoInt; var _1 : Bool; } return _wb._tryGrowByReslice(_pid) #else null #end;
            __self__;
        }, {
            final __self__ = new stdgo.io_test.Io_test.T_writeToChecker_wrapper(_rb);
            __self__.bytes = #if !macro function():Slice<GoUInt8> return _rb.bytes() #else null #end;
            __self__.cap_ = #if !macro function():GoInt return _rb.cap_() #else null #end;
            __self__.grow = #if !macro function(_pid:GoInt):Void _rb.grow(_pid) #else null #end;
            __self__.len = #if !macro function():GoInt return _rb.len() #else null #end;
            __self__.next = #if !macro function(_pid:GoInt):Slice<GoUInt8> return _rb.next(_pid) #else null #end;
            __self__.read = #if !macro function(_p:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : stdgo.Error; } return _rb.read(_p) #else null #end;
            __self__.readByte = #if !macro function():{ var _0 : GoUInt8; var _1 : stdgo.Error; } return _rb.readByte() #else null #end;
            __self__.readBytes = #if !macro function(_c:GoUInt8):{ var _0 : Slice<GoUInt8>; var _1 : stdgo.Error; } return _rb.readBytes(_c) #else null #end;
            __self__.readFrom = #if !macro function(_r:Reader):{ var _0 : GoInt64; var _1 : stdgo.Error; } return _rb.readFrom(_r) #else null #end;
            __self__.readRune = #if !macro function():{ var _0 : GoInt32; var _1 : GoInt; var _2 : stdgo.Error; } return _rb.readRune() #else null #end;
            __self__.readString = #if !macro function(_c:GoUInt8):{ var _0 : GoString; var _1 : stdgo.Error; } return _rb.readString(_c) #else null #end;
            __self__.reset = #if !macro function():Void _rb.reset() #else null #end;
            __self__.string = #if !macro function():GoString return _rb.string() #else null #end;
            __self__.truncate = #if !macro function(_pid:GoInt):Void _rb.truncate(_pid) #else null #end;
            __self__.unreadByte = #if !macro function():stdgo.Error return _rb.unreadByte() #else null #end;
            __self__.unreadRune = #if !macro function():stdgo.Error return _rb.unreadRune() #else null #end;
            __self__.write = #if !macro function(_p:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : stdgo.Error; } return _rb.write(_p) #else null #end;
            __self__.writeByte = #if !macro function(_c:GoUInt8):stdgo.Error return _rb.writeByte(_c) #else null #end;
            __self__.writeRune = #if !macro function(_new:GoInt32):{ var _0 : GoInt; var _1 : stdgo.Error; } return _rb.writeRune(_new) #else null #end;
            __self__.writeString = #if !macro function(__0:GoString):{ var _0 : GoInt; var _1 : stdgo.Error; } return _rb.writeString(__0) #else null #end;
            __self__.writeTo = #if !macro function(_w:Writer):{ var _0 : GoInt64; var _1 : stdgo.Error; } return _rb.writeTo(_w) #else null #end;
            __self__._empty = #if !macro function():Bool return _rb._empty() #else null #end;
            __self__._grow = #if !macro function(_pid:GoInt):GoInt return _rb._grow(_pid) #else null #end;
            __self__._readSlice = #if !macro function(_c:GoUInt8):{ var _0 : Slice<GoUInt8>; var _1 : stdgo.Error; } return _rb._readSlice(_c) #else null #end;
            __self__._tryGrowByReslice = #if !macro function(_pid:GoInt):{ var _0 : GoInt; var _1 : Bool; } return _rb._tryGrowByReslice(_pid) #else null #end;
            __self__;
        });
        if (((_wb.string() : GoString)) != ((Go.str("hello, world.") : GoString))) {
            _t.errorf(((Go.str("Copy did not work properly") : GoString)));
        } else if (!_rb._writeToCalled) {
            _t.errorf(((Go.str("WriteTo was not prioritized over ReadFrom") : GoString)));
        };
    }
/**
    // In case a Read results in an error with non-zero bytes read, and
    // the subsequent Write also results in an error, the error from Write
    // is returned, as it is the one that prevented progressing further.
**/
function testCopyReadErrWriteErr(_t:stdgo.testing.Testing.T):Void {
        var _er:stdgo.Error = stdgo.errors.Errors.new_(((Go.str("readError") : GoString))), _ew:stdgo.Error = stdgo.errors.Errors.new_(((Go.str("writeError") : GoString)));
        var _r:stdgo.io_test.Io_test.T_zeroErrReader = (({ _err : _er } : stdgo.io_test.Io_test.T_zeroErrReader)), _w:stdgo.io_test.Io_test.T_errWriter = (({ _err : _ew } : stdgo.io_test.Io_test.T_errWriter));
        var __tmp__ = copy({
            final __self__ = new stdgo.io_test.Io_test.T_errWriter_wrapper(_w);
            __self__.write = #if !macro function(_p:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : stdgo.Error; } return _w.write(_p) #else null #end;
            __self__;
        }, {
            final __self__ = new stdgo.io_test.Io_test.T_zeroErrReader_wrapper(_r);
            __self__.read = #if !macro function(_p:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : stdgo.Error; } return _r.read(_p) #else null #end;
            __self__;
        }), _n:GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if ((_n != ((0 : GoInt64))) || (_err != _ew)) {
            _t.errorf(((Go.str("Copy(zeroErrReader, errWriter) = %d, %v; want 0, writeError") : GoString)), Go.toInterface(_n), Go.toInterface(_err));
        };
    }
function testCopyN(_t:stdgo.testing.Testing.T):Void {
        var _rb = (({  } : stdgo.io_test.Io_test.Buffer));
        var _wb = (({  } : stdgo.io_test.Io_test.Buffer));
        _rb.writeString(((Go.str("hello, world.") : GoString)));
        copyN({
            final __self__ = new stdgo.io_test.Io_test.Buffer_wrapper(_wb);
            __self__.bytes = #if !macro function():Slice<GoUInt8> return _wb.bytes() #else null #end;
            __self__.cap_ = #if !macro function():GoInt return _wb.cap_() #else null #end;
            __self__.grow = #if !macro function(_pid:GoInt):Void _wb.grow(_pid) #else null #end;
            __self__.len = #if !macro function():GoInt return _wb.len() #else null #end;
            __self__.next = #if !macro function(_pid:GoInt):Slice<GoUInt8> return _wb.next(_pid) #else null #end;
            __self__.read = #if !macro function(_p:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : stdgo.Error; } return _wb.read(_p) #else null #end;
            __self__.readByte = #if !macro function():{ var _0 : GoUInt8; var _1 : stdgo.Error; } return _wb.readByte() #else null #end;
            __self__.readBytes = #if !macro function(_c:GoUInt8):{ var _0 : Slice<GoUInt8>; var _1 : stdgo.Error; } return _wb.readBytes(_c) #else null #end;
            __self__.readRune = #if !macro function():{ var _0 : GoInt32; var _1 : GoInt; var _2 : stdgo.Error; } return _wb.readRune() #else null #end;
            __self__.readString = #if !macro function(_c:GoUInt8):{ var _0 : GoString; var _1 : stdgo.Error; } return _wb.readString(_c) #else null #end;
            __self__.reset = #if !macro function():Void _wb.reset() #else null #end;
            __self__.string = #if !macro function():GoString return _wb.string() #else null #end;
            __self__.truncate = #if !macro function(_pid:GoInt):Void _wb.truncate(_pid) #else null #end;
            __self__.unreadByte = #if !macro function():stdgo.Error return _wb.unreadByte() #else null #end;
            __self__.unreadRune = #if !macro function():stdgo.Error return _wb.unreadRune() #else null #end;
            __self__.write = #if !macro function(_p:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : stdgo.Error; } return _wb.write(_p) #else null #end;
            __self__.writeByte = #if !macro function(_c:GoUInt8):stdgo.Error return _wb.writeByte(_c) #else null #end;
            __self__.writeRune = #if !macro function(_new:GoInt32):{ var _0 : GoInt; var _1 : stdgo.Error; } return _wb.writeRune(_new) #else null #end;
            __self__.writeString = #if !macro function(__0:GoString):{ var _0 : GoInt; var _1 : stdgo.Error; } return _wb.writeString(__0) #else null #end;
            __self__._empty = #if !macro function():Bool return _wb._empty() #else null #end;
            __self__._grow = #if !macro function(_pid:GoInt):GoInt return _wb._grow(_pid) #else null #end;
            __self__._readSlice = #if !macro function(_c:GoUInt8):{ var _0 : Slice<GoUInt8>; var _1 : stdgo.Error; } return _wb._readSlice(_c) #else null #end;
            __self__._tryGrowByReslice = #if !macro function(_pid:GoInt):{ var _0 : GoInt; var _1 : Bool; } return _wb._tryGrowByReslice(_pid) #else null #end;
            __self__;
        }, {
            final __self__ = new stdgo.io_test.Io_test.Buffer_wrapper(_rb);
            __self__.bytes = #if !macro function():Slice<GoUInt8> return _rb.bytes() #else null #end;
            __self__.cap_ = #if !macro function():GoInt return _rb.cap_() #else null #end;
            __self__.grow = #if !macro function(_pid:GoInt):Void _rb.grow(_pid) #else null #end;
            __self__.len = #if !macro function():GoInt return _rb.len() #else null #end;
            __self__.next = #if !macro function(_pid:GoInt):Slice<GoUInt8> return _rb.next(_pid) #else null #end;
            __self__.read = #if !macro function(_p:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : stdgo.Error; } return _rb.read(_p) #else null #end;
            __self__.readByte = #if !macro function():{ var _0 : GoUInt8; var _1 : stdgo.Error; } return _rb.readByte() #else null #end;
            __self__.readBytes = #if !macro function(_c:GoUInt8):{ var _0 : Slice<GoUInt8>; var _1 : stdgo.Error; } return _rb.readBytes(_c) #else null #end;
            __self__.readRune = #if !macro function():{ var _0 : GoInt32; var _1 : GoInt; var _2 : stdgo.Error; } return _rb.readRune() #else null #end;
            __self__.readString = #if !macro function(_c:GoUInt8):{ var _0 : GoString; var _1 : stdgo.Error; } return _rb.readString(_c) #else null #end;
            __self__.reset = #if !macro function():Void _rb.reset() #else null #end;
            __self__.string = #if !macro function():GoString return _rb.string() #else null #end;
            __self__.truncate = #if !macro function(_pid:GoInt):Void _rb.truncate(_pid) #else null #end;
            __self__.unreadByte = #if !macro function():stdgo.Error return _rb.unreadByte() #else null #end;
            __self__.unreadRune = #if !macro function():stdgo.Error return _rb.unreadRune() #else null #end;
            __self__.write = #if !macro function(_p:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : stdgo.Error; } return _rb.write(_p) #else null #end;
            __self__.writeByte = #if !macro function(_c:GoUInt8):stdgo.Error return _rb.writeByte(_c) #else null #end;
            __self__.writeRune = #if !macro function(_new:GoInt32):{ var _0 : GoInt; var _1 : stdgo.Error; } return _rb.writeRune(_new) #else null #end;
            __self__.writeString = #if !macro function(__0:GoString):{ var _0 : GoInt; var _1 : stdgo.Error; } return _rb.writeString(__0) #else null #end;
            __self__._empty = #if !macro function():Bool return _rb._empty() #else null #end;
            __self__._grow = #if !macro function(_pid:GoInt):GoInt return _rb._grow(_pid) #else null #end;
            __self__._readSlice = #if !macro function(_c:GoUInt8):{ var _0 : Slice<GoUInt8>; var _1 : stdgo.Error; } return _rb._readSlice(_c) #else null #end;
            __self__._tryGrowByReslice = #if !macro function(_pid:GoInt):{ var _0 : GoInt; var _1 : Bool; } return _rb._tryGrowByReslice(_pid) #else null #end;
            __self__;
        }, ((5 : GoInt64)));
        if (((_wb.string() : GoString)) != ((Go.str("hello") : GoString))) {
            _t.errorf(((Go.str("CopyN did not work properly") : GoString)));
        };
    }
function testCopyNReadFrom(_t:stdgo.testing.Testing.T):Void {
        var _rb = (({  } : stdgo.io_test.Io_test.Buffer));
        var _wb = (({  } : stdgo.bytes.Bytes.Buffer));
        _rb.writeString(((Go.str("hello") : GoString)));
        copyN({
            final __self__ = new stdgo.bytes.Bytes.Buffer_wrapper(_wb);
            __self__.bytes = #if !macro function():Slice<GoUInt8> return _wb.bytes() #else null #end;
            __self__.cap_ = #if !macro function():GoInt return _wb.cap_() #else null #end;
            __self__.grow = #if !macro function(_pid:GoInt):Void _wb.grow(_pid) #else null #end;
            __self__.len = #if !macro function():GoInt return _wb.len() #else null #end;
            __self__.next = #if !macro function(_pid:GoInt):Slice<GoUInt8> return _wb.next(_pid) #else null #end;
            __self__.read = #if !macro function(_p:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : stdgo.Error; } return _wb.read(_p) #else null #end;
            __self__.readByte = #if !macro function():{ var _0 : GoUInt8; var _1 : stdgo.Error; } return _wb.readByte() #else null #end;
            __self__.readBytes = #if !macro function(_c:GoUInt8):{ var _0 : Slice<GoUInt8>; var _1 : stdgo.Error; } return _wb.readBytes(_c) #else null #end;
            __self__.readFrom = #if !macro function(_r:Reader):{ var _0 : GoInt64; var _1 : stdgo.Error; } return _wb.readFrom(_r) #else null #end;
            __self__.readRune = #if !macro function():{ var _0 : GoInt32; var _1 : GoInt; var _2 : stdgo.Error; } return _wb.readRune() #else null #end;
            __self__.readString = #if !macro function(_c:GoUInt8):{ var _0 : GoString; var _1 : stdgo.Error; } return _wb.readString(_c) #else null #end;
            __self__.reset = #if !macro function():Void _wb.reset() #else null #end;
            __self__.string = #if !macro function():GoString return _wb.string() #else null #end;
            __self__.truncate = #if !macro function(_pid:GoInt):Void _wb.truncate(_pid) #else null #end;
            __self__.unreadByte = #if !macro function():stdgo.Error return _wb.unreadByte() #else null #end;
            __self__.unreadRune = #if !macro function():stdgo.Error return _wb.unreadRune() #else null #end;
            __self__.write = #if !macro function(_p:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : stdgo.Error; } return _wb.write(_p) #else null #end;
            __self__.writeByte = #if !macro function(_c:GoUInt8):stdgo.Error return _wb.writeByte(_c) #else null #end;
            __self__.writeRune = #if !macro function(_new:GoInt32):{ var _0 : GoInt; var _1 : stdgo.Error; } return _wb.writeRune(_new) #else null #end;
            __self__.writeString = #if !macro function(__0:GoString):{ var _0 : GoInt; var _1 : stdgo.Error; } return _wb.writeString(__0) #else null #end;
            __self__.writeTo = #if !macro function(_w:Writer):{ var _0 : GoInt64; var _1 : stdgo.Error; } return _wb.writeTo(_w) #else null #end;
            __self__._empty = #if !macro function():Bool return _wb._empty() #else null #end;
            __self__._grow = #if !macro function(_pid:GoInt):GoInt return _wb._grow(_pid) #else null #end;
            __self__._readSlice = #if !macro function(_c:GoUInt8):{ var _0 : Slice<GoUInt8>; var _1 : stdgo.Error; } return _wb._readSlice(_c) #else null #end;
            __self__._tryGrowByReslice = #if !macro function(_pid:GoInt):{ var _0 : GoInt; var _1 : Bool; } return _wb._tryGrowByReslice(_pid) #else null #end;
            __self__;
        }, {
            final __self__ = new stdgo.io_test.Io_test.Buffer_wrapper(_rb);
            __self__.bytes = #if !macro function():Slice<GoUInt8> return _rb.bytes() #else null #end;
            __self__.cap_ = #if !macro function():GoInt return _rb.cap_() #else null #end;
            __self__.grow = #if !macro function(_pid:GoInt):Void _rb.grow(_pid) #else null #end;
            __self__.len = #if !macro function():GoInt return _rb.len() #else null #end;
            __self__.next = #if !macro function(_pid:GoInt):Slice<GoUInt8> return _rb.next(_pid) #else null #end;
            __self__.read = #if !macro function(_p:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : stdgo.Error; } return _rb.read(_p) #else null #end;
            __self__.readByte = #if !macro function():{ var _0 : GoUInt8; var _1 : stdgo.Error; } return _rb.readByte() #else null #end;
            __self__.readBytes = #if !macro function(_c:GoUInt8):{ var _0 : Slice<GoUInt8>; var _1 : stdgo.Error; } return _rb.readBytes(_c) #else null #end;
            __self__.readRune = #if !macro function():{ var _0 : GoInt32; var _1 : GoInt; var _2 : stdgo.Error; } return _rb.readRune() #else null #end;
            __self__.readString = #if !macro function(_c:GoUInt8):{ var _0 : GoString; var _1 : stdgo.Error; } return _rb.readString(_c) #else null #end;
            __self__.reset = #if !macro function():Void _rb.reset() #else null #end;
            __self__.string = #if !macro function():GoString return _rb.string() #else null #end;
            __self__.truncate = #if !macro function(_pid:GoInt):Void _rb.truncate(_pid) #else null #end;
            __self__.unreadByte = #if !macro function():stdgo.Error return _rb.unreadByte() #else null #end;
            __self__.unreadRune = #if !macro function():stdgo.Error return _rb.unreadRune() #else null #end;
            __self__.write = #if !macro function(_p:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : stdgo.Error; } return _rb.write(_p) #else null #end;
            __self__.writeByte = #if !macro function(_c:GoUInt8):stdgo.Error return _rb.writeByte(_c) #else null #end;
            __self__.writeRune = #if !macro function(_new:GoInt32):{ var _0 : GoInt; var _1 : stdgo.Error; } return _rb.writeRune(_new) #else null #end;
            __self__.writeString = #if !macro function(__0:GoString):{ var _0 : GoInt; var _1 : stdgo.Error; } return _rb.writeString(__0) #else null #end;
            __self__._empty = #if !macro function():Bool return _rb._empty() #else null #end;
            __self__._grow = #if !macro function(_pid:GoInt):GoInt return _rb._grow(_pid) #else null #end;
            __self__._readSlice = #if !macro function(_c:GoUInt8):{ var _0 : Slice<GoUInt8>; var _1 : stdgo.Error; } return _rb._readSlice(_c) #else null #end;
            __self__._tryGrowByReslice = #if !macro function(_pid:GoInt):{ var _0 : GoInt; var _1 : Bool; } return _rb._tryGrowByReslice(_pid) #else null #end;
            __self__;
        }, ((5 : GoInt64)));
        if (((_wb.string() : GoString)) != ((Go.str("hello") : GoString))) {
            _t.errorf(((Go.str("CopyN did not work properly") : GoString)));
        };
    }
function testCopyNWriteTo(_t:stdgo.testing.Testing.T):Void {
        var _rb = (({  } : stdgo.bytes.Bytes.Buffer));
        var _wb = (({  } : stdgo.io_test.Io_test.Buffer));
        _rb.writeString(((Go.str("hello, world.") : GoString)));
        copyN({
            final __self__ = new stdgo.io_test.Io_test.Buffer_wrapper(_wb);
            __self__.bytes = #if !macro function():Slice<GoUInt8> return _wb.bytes() #else null #end;
            __self__.cap_ = #if !macro function():GoInt return _wb.cap_() #else null #end;
            __self__.grow = #if !macro function(_pid:GoInt):Void _wb.grow(_pid) #else null #end;
            __self__.len = #if !macro function():GoInt return _wb.len() #else null #end;
            __self__.next = #if !macro function(_pid:GoInt):Slice<GoUInt8> return _wb.next(_pid) #else null #end;
            __self__.read = #if !macro function(_p:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : stdgo.Error; } return _wb.read(_p) #else null #end;
            __self__.readByte = #if !macro function():{ var _0 : GoUInt8; var _1 : stdgo.Error; } return _wb.readByte() #else null #end;
            __self__.readBytes = #if !macro function(_c:GoUInt8):{ var _0 : Slice<GoUInt8>; var _1 : stdgo.Error; } return _wb.readBytes(_c) #else null #end;
            __self__.readRune = #if !macro function():{ var _0 : GoInt32; var _1 : GoInt; var _2 : stdgo.Error; } return _wb.readRune() #else null #end;
            __self__.readString = #if !macro function(_c:GoUInt8):{ var _0 : GoString; var _1 : stdgo.Error; } return _wb.readString(_c) #else null #end;
            __self__.reset = #if !macro function():Void _wb.reset() #else null #end;
            __self__.string = #if !macro function():GoString return _wb.string() #else null #end;
            __self__.truncate = #if !macro function(_pid:GoInt):Void _wb.truncate(_pid) #else null #end;
            __self__.unreadByte = #if !macro function():stdgo.Error return _wb.unreadByte() #else null #end;
            __self__.unreadRune = #if !macro function():stdgo.Error return _wb.unreadRune() #else null #end;
            __self__.write = #if !macro function(_p:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : stdgo.Error; } return _wb.write(_p) #else null #end;
            __self__.writeByte = #if !macro function(_c:GoUInt8):stdgo.Error return _wb.writeByte(_c) #else null #end;
            __self__.writeRune = #if !macro function(_new:GoInt32):{ var _0 : GoInt; var _1 : stdgo.Error; } return _wb.writeRune(_new) #else null #end;
            __self__.writeString = #if !macro function(__0:GoString):{ var _0 : GoInt; var _1 : stdgo.Error; } return _wb.writeString(__0) #else null #end;
            __self__._empty = #if !macro function():Bool return _wb._empty() #else null #end;
            __self__._grow = #if !macro function(_pid:GoInt):GoInt return _wb._grow(_pid) #else null #end;
            __self__._readSlice = #if !macro function(_c:GoUInt8):{ var _0 : Slice<GoUInt8>; var _1 : stdgo.Error; } return _wb._readSlice(_c) #else null #end;
            __self__._tryGrowByReslice = #if !macro function(_pid:GoInt):{ var _0 : GoInt; var _1 : Bool; } return _wb._tryGrowByReslice(_pid) #else null #end;
            __self__;
        }, {
            final __self__ = new stdgo.bytes.Bytes.Buffer_wrapper(_rb);
            __self__.bytes = #if !macro function():Slice<GoUInt8> return _rb.bytes() #else null #end;
            __self__.cap_ = #if !macro function():GoInt return _rb.cap_() #else null #end;
            __self__.grow = #if !macro function(_pid:GoInt):Void _rb.grow(_pid) #else null #end;
            __self__.len = #if !macro function():GoInt return _rb.len() #else null #end;
            __self__.next = #if !macro function(_pid:GoInt):Slice<GoUInt8> return _rb.next(_pid) #else null #end;
            __self__.read = #if !macro function(_p:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : stdgo.Error; } return _rb.read(_p) #else null #end;
            __self__.readByte = #if !macro function():{ var _0 : GoUInt8; var _1 : stdgo.Error; } return _rb.readByte() #else null #end;
            __self__.readBytes = #if !macro function(_c:GoUInt8):{ var _0 : Slice<GoUInt8>; var _1 : stdgo.Error; } return _rb.readBytes(_c) #else null #end;
            __self__.readFrom = #if !macro function(_r:Reader):{ var _0 : GoInt64; var _1 : stdgo.Error; } return _rb.readFrom(_r) #else null #end;
            __self__.readRune = #if !macro function():{ var _0 : GoInt32; var _1 : GoInt; var _2 : stdgo.Error; } return _rb.readRune() #else null #end;
            __self__.readString = #if !macro function(_c:GoUInt8):{ var _0 : GoString; var _1 : stdgo.Error; } return _rb.readString(_c) #else null #end;
            __self__.reset = #if !macro function():Void _rb.reset() #else null #end;
            __self__.string = #if !macro function():GoString return _rb.string() #else null #end;
            __self__.truncate = #if !macro function(_pid:GoInt):Void _rb.truncate(_pid) #else null #end;
            __self__.unreadByte = #if !macro function():stdgo.Error return _rb.unreadByte() #else null #end;
            __self__.unreadRune = #if !macro function():stdgo.Error return _rb.unreadRune() #else null #end;
            __self__.write = #if !macro function(_p:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : stdgo.Error; } return _rb.write(_p) #else null #end;
            __self__.writeByte = #if !macro function(_c:GoUInt8):stdgo.Error return _rb.writeByte(_c) #else null #end;
            __self__.writeRune = #if !macro function(_new:GoInt32):{ var _0 : GoInt; var _1 : stdgo.Error; } return _rb.writeRune(_new) #else null #end;
            __self__.writeString = #if !macro function(__0:GoString):{ var _0 : GoInt; var _1 : stdgo.Error; } return _rb.writeString(__0) #else null #end;
            __self__.writeTo = #if !macro function(_w:Writer):{ var _0 : GoInt64; var _1 : stdgo.Error; } return _rb.writeTo(_w) #else null #end;
            __self__._empty = #if !macro function():Bool return _rb._empty() #else null #end;
            __self__._grow = #if !macro function(_pid:GoInt):GoInt return _rb._grow(_pid) #else null #end;
            __self__._readSlice = #if !macro function(_c:GoUInt8):{ var _0 : Slice<GoUInt8>; var _1 : stdgo.Error; } return _rb._readSlice(_c) #else null #end;
            __self__._tryGrowByReslice = #if !macro function(_pid:GoInt):{ var _0 : GoInt; var _1 : Bool; } return _rb._tryGrowByReslice(_pid) #else null #end;
            __self__;
        }, ((5 : GoInt64)));
        if (((_wb.string() : GoString)) != ((Go.str("hello") : GoString))) {
            _t.errorf(((Go.str("CopyN did not work properly") : GoString)));
        };
    }
function benchmarkCopyNSmall(_b:stdgo.testing.Testing.B):Void {
        var _bs = stdgo.bytes.Bytes.repeat(((new Slice<GoUInt8>(0, 0, ((0 : GoUInt8))) : Slice<GoUInt8>)), ((513 : GoInt)));
        var _rd = stdgo.bytes.Bytes.newReader(_bs);
        var _buf = (({  } : stdgo.io_test.Io_test.Buffer));
        _b.resetTimer();
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < _b.n, _i++, {
                copyN({
                    final __self__ = new stdgo.io_test.Io_test.Buffer_wrapper(_buf);
                    __self__.bytes = #if !macro function():Slice<GoUInt8> return _buf.bytes() #else null #end;
                    __self__.cap_ = #if !macro function():GoInt return _buf.cap_() #else null #end;
                    __self__.grow = #if !macro function(_pid:GoInt):Void _buf.grow(_pid) #else null #end;
                    __self__.len = #if !macro function():GoInt return _buf.len() #else null #end;
                    __self__.next = #if !macro function(_pid:GoInt):Slice<GoUInt8> return _buf.next(_pid) #else null #end;
                    __self__.read = #if !macro function(_p:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : stdgo.Error; } return _buf.read(_p) #else null #end;
                    __self__.readByte = #if !macro function():{ var _0 : GoUInt8; var _1 : stdgo.Error; } return _buf.readByte() #else null #end;
                    __self__.readBytes = #if !macro function(_c:GoUInt8):{ var _0 : Slice<GoUInt8>; var _1 : stdgo.Error; } return _buf.readBytes(_c) #else null #end;
                    __self__.readRune = #if !macro function():{ var _0 : GoInt32; var _1 : GoInt; var _2 : stdgo.Error; } return _buf.readRune() #else null #end;
                    __self__.readString = #if !macro function(_c:GoUInt8):{ var _0 : GoString; var _1 : stdgo.Error; } return _buf.readString(_c) #else null #end;
                    __self__.reset = #if !macro function():Void _buf.reset() #else null #end;
                    __self__.string = #if !macro function():GoString return _buf.string() #else null #end;
                    __self__.truncate = #if !macro function(_pid:GoInt):Void _buf.truncate(_pid) #else null #end;
                    __self__.unreadByte = #if !macro function():stdgo.Error return _buf.unreadByte() #else null #end;
                    __self__.unreadRune = #if !macro function():stdgo.Error return _buf.unreadRune() #else null #end;
                    __self__.write = #if !macro function(_p:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : stdgo.Error; } return _buf.write(_p) #else null #end;
                    __self__.writeByte = #if !macro function(_c:GoUInt8):stdgo.Error return _buf.writeByte(_c) #else null #end;
                    __self__.writeRune = #if !macro function(_new:GoInt32):{ var _0 : GoInt; var _1 : stdgo.Error; } return _buf.writeRune(_new) #else null #end;
                    __self__.writeString = #if !macro function(__0:GoString):{ var _0 : GoInt; var _1 : stdgo.Error; } return _buf.writeString(__0) #else null #end;
                    __self__._empty = #if !macro function():Bool return _buf._empty() #else null #end;
                    __self__._grow = #if !macro function(_pid:GoInt):GoInt return _buf._grow(_pid) #else null #end;
                    __self__._readSlice = #if !macro function(_c:GoUInt8):{ var _0 : Slice<GoUInt8>; var _1 : stdgo.Error; } return _buf._readSlice(_c) #else null #end;
                    __self__._tryGrowByReslice = #if !macro function(_pid:GoInt):{ var _0 : GoInt; var _1 : Bool; } return _buf._tryGrowByReslice(_pid) #else null #end;
                    __self__;
                }, {
                    final __self__ = new stdgo.bytes.Bytes.Reader_wrapper(_rd);
                    __self__.len = #if !macro function():GoInt return _rd.len() #else null #end;
                    __self__.read = #if !macro function(_p:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : stdgo.Error; } return _rd.read(_p) #else null #end;
                    __self__.readAt = #if !macro function(_p:Slice<GoUInt8>, _off:GoInt64):{ var _0 : GoInt; var _1 : stdgo.Error; } return _rd.readAt(_p, _off) #else null #end;
                    __self__.readByte = #if !macro function():{ var _0 : GoUInt8; var _1 : stdgo.Error; } return _rd.readByte() #else null #end;
                    __self__.readRune = #if !macro function():{ var _0 : GoInt32; var _1 : GoInt; var _2 : stdgo.Error; } return _rd.readRune() #else null #end;
                    __self__.reset = #if !macro function(_p:Slice<GoUInt8>):Void _rd.reset(_p) #else null #end;
                    __self__.seek = #if !macro function(_offset:GoInt64, _whence:GoInt):{ var _0 : GoInt64; var _1 : stdgo.Error; } return _rd.seek(_offset, _whence) #else null #end;
                    __self__.size = #if !macro function():GoInt64 return _rd.size() #else null #end;
                    __self__.unreadByte = #if !macro function():stdgo.Error return _rd.unreadByte() #else null #end;
                    __self__.unreadRune = #if !macro function():stdgo.Error return _rd.unreadRune() #else null #end;
                    __self__.writeTo = #if !macro function(_w:Writer):{ var _0 : GoInt64; var _1 : stdgo.Error; } return _rd.writeTo(_w) #else null #end;
                    __self__;
                }, ((512 : GoInt64)));
                _rd.reset(_bs);
            });
        };
    }
function benchmarkCopyNLarge(_b:stdgo.testing.Testing.B):Void {
        var _bs = stdgo.bytes.Bytes.repeat(((new Slice<GoUInt8>(0, 0, ((0 : GoUInt8))) : Slice<GoUInt8>)), ((32769 : GoInt)));
        var _rd = stdgo.bytes.Bytes.newReader(_bs);
        var _buf = (({  } : stdgo.io_test.Io_test.Buffer));
        _b.resetTimer();
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < _b.n, _i++, {
                copyN({
                    final __self__ = new stdgo.io_test.Io_test.Buffer_wrapper(_buf);
                    __self__.bytes = #if !macro function():Slice<GoUInt8> return _buf.bytes() #else null #end;
                    __self__.cap_ = #if !macro function():GoInt return _buf.cap_() #else null #end;
                    __self__.grow = #if !macro function(_pid:GoInt):Void _buf.grow(_pid) #else null #end;
                    __self__.len = #if !macro function():GoInt return _buf.len() #else null #end;
                    __self__.next = #if !macro function(_pid:GoInt):Slice<GoUInt8> return _buf.next(_pid) #else null #end;
                    __self__.read = #if !macro function(_p:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : stdgo.Error; } return _buf.read(_p) #else null #end;
                    __self__.readByte = #if !macro function():{ var _0 : GoUInt8; var _1 : stdgo.Error; } return _buf.readByte() #else null #end;
                    __self__.readBytes = #if !macro function(_c:GoUInt8):{ var _0 : Slice<GoUInt8>; var _1 : stdgo.Error; } return _buf.readBytes(_c) #else null #end;
                    __self__.readRune = #if !macro function():{ var _0 : GoInt32; var _1 : GoInt; var _2 : stdgo.Error; } return _buf.readRune() #else null #end;
                    __self__.readString = #if !macro function(_c:GoUInt8):{ var _0 : GoString; var _1 : stdgo.Error; } return _buf.readString(_c) #else null #end;
                    __self__.reset = #if !macro function():Void _buf.reset() #else null #end;
                    __self__.string = #if !macro function():GoString return _buf.string() #else null #end;
                    __self__.truncate = #if !macro function(_pid:GoInt):Void _buf.truncate(_pid) #else null #end;
                    __self__.unreadByte = #if !macro function():stdgo.Error return _buf.unreadByte() #else null #end;
                    __self__.unreadRune = #if !macro function():stdgo.Error return _buf.unreadRune() #else null #end;
                    __self__.write = #if !macro function(_p:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : stdgo.Error; } return _buf.write(_p) #else null #end;
                    __self__.writeByte = #if !macro function(_c:GoUInt8):stdgo.Error return _buf.writeByte(_c) #else null #end;
                    __self__.writeRune = #if !macro function(_new:GoInt32):{ var _0 : GoInt; var _1 : stdgo.Error; } return _buf.writeRune(_new) #else null #end;
                    __self__.writeString = #if !macro function(__0:GoString):{ var _0 : GoInt; var _1 : stdgo.Error; } return _buf.writeString(__0) #else null #end;
                    __self__._empty = #if !macro function():Bool return _buf._empty() #else null #end;
                    __self__._grow = #if !macro function(_pid:GoInt):GoInt return _buf._grow(_pid) #else null #end;
                    __self__._readSlice = #if !macro function(_c:GoUInt8):{ var _0 : Slice<GoUInt8>; var _1 : stdgo.Error; } return _buf._readSlice(_c) #else null #end;
                    __self__._tryGrowByReslice = #if !macro function(_pid:GoInt):{ var _0 : GoInt; var _1 : Bool; } return _buf._tryGrowByReslice(_pid) #else null #end;
                    __self__;
                }, {
                    final __self__ = new stdgo.bytes.Bytes.Reader_wrapper(_rd);
                    __self__.len = #if !macro function():GoInt return _rd.len() #else null #end;
                    __self__.read = #if !macro function(_p:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : stdgo.Error; } return _rd.read(_p) #else null #end;
                    __self__.readAt = #if !macro function(_p:Slice<GoUInt8>, _off:GoInt64):{ var _0 : GoInt; var _1 : stdgo.Error; } return _rd.readAt(_p, _off) #else null #end;
                    __self__.readByte = #if !macro function():{ var _0 : GoUInt8; var _1 : stdgo.Error; } return _rd.readByte() #else null #end;
                    __self__.readRune = #if !macro function():{ var _0 : GoInt32; var _1 : GoInt; var _2 : stdgo.Error; } return _rd.readRune() #else null #end;
                    __self__.reset = #if !macro function(_p:Slice<GoUInt8>):Void _rd.reset(_p) #else null #end;
                    __self__.seek = #if !macro function(_offset:GoInt64, _whence:GoInt):{ var _0 : GoInt64; var _1 : stdgo.Error; } return _rd.seek(_offset, _whence) #else null #end;
                    __self__.size = #if !macro function():GoInt64 return _rd.size() #else null #end;
                    __self__.unreadByte = #if !macro function():stdgo.Error return _rd.unreadByte() #else null #end;
                    __self__.unreadRune = #if !macro function():stdgo.Error return _rd.unreadRune() #else null #end;
                    __self__.writeTo = #if !macro function(_w:Writer):{ var _0 : GoInt64; var _1 : stdgo.Error; } return _rd.writeTo(_w) #else null #end;
                    __self__;
                }, ((32768 : GoInt64)));
                _rd.reset(_bs);
            });
        };
    }
function testCopyNEOF(_t:stdgo.testing.Testing.T):Void {
        var _b = (({  } : stdgo.bytes.Bytes.Buffer));
        var __tmp__ = copyN({
            final __self__ = new stdgo.io_test.Io_test.T_noReadFrom_wrapper(((new stdgo.io_test.Io_test.T_noReadFrom({
                final __self__ = new stdgo.bytes.Bytes.Buffer_wrapper(_b);
                __self__.bytes = #if !macro function():Slice<GoUInt8> return _b.bytes() #else null #end;
                __self__.cap_ = #if !macro function():GoInt return _b.cap_() #else null #end;
                __self__.grow = #if !macro function(_pid:GoInt):Void _b.grow(_pid) #else null #end;
                __self__.len = #if !macro function():GoInt return _b.len() #else null #end;
                __self__.next = #if !macro function(_pid:GoInt):Slice<GoUInt8> return _b.next(_pid) #else null #end;
                __self__.read = #if !macro function(_p:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : stdgo.Error; } return _b.read(_p) #else null #end;
                __self__.readByte = #if !macro function():{ var _0 : GoUInt8; var _1 : stdgo.Error; } return _b.readByte() #else null #end;
                __self__.readBytes = #if !macro function(_c:GoUInt8):{ var _0 : Slice<GoUInt8>; var _1 : stdgo.Error; } return _b.readBytes(_c) #else null #end;
                __self__.readFrom = #if !macro function(_r:Reader):{ var _0 : GoInt64; var _1 : stdgo.Error; } return _b.readFrom(_r) #else null #end;
                __self__.readRune = #if !macro function():{ var _0 : GoInt32; var _1 : GoInt; var _2 : stdgo.Error; } return _b.readRune() #else null #end;
                __self__.readString = #if !macro function(_c:GoUInt8):{ var _0 : GoString; var _1 : stdgo.Error; } return _b.readString(_c) #else null #end;
                __self__.reset = #if !macro function():Void _b.reset() #else null #end;
                __self__.string = #if !macro function():GoString return _b.string() #else null #end;
                __self__.truncate = #if !macro function(_pid:GoInt):Void _b.truncate(_pid) #else null #end;
                __self__.unreadByte = #if !macro function():stdgo.Error return _b.unreadByte() #else null #end;
                __self__.unreadRune = #if !macro function():stdgo.Error return _b.unreadRune() #else null #end;
                __self__.write = #if !macro function(_p:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : stdgo.Error; } return _b.write(_p) #else null #end;
                __self__.writeByte = #if !macro function(_c:GoUInt8):stdgo.Error return _b.writeByte(_c) #else null #end;
                __self__.writeRune = #if !macro function(_new:GoInt32):{ var _0 : GoInt; var _1 : stdgo.Error; } return _b.writeRune(_new) #else null #end;
                __self__.writeString = #if !macro function(__0:GoString):{ var _0 : GoInt; var _1 : stdgo.Error; } return _b.writeString(__0) #else null #end;
                __self__.writeTo = #if !macro function(_w:Writer):{ var _0 : GoInt64; var _1 : stdgo.Error; } return _b.writeTo(_w) #else null #end;
                __self__._empty = #if !macro function():Bool return _b._empty() #else null #end;
                __self__._grow = #if !macro function(_pid:GoInt):GoInt return _b._grow(_pid) #else null #end;
                __self__._readSlice = #if !macro function(_c:GoUInt8):{ var _0 : Slice<GoUInt8>; var _1 : stdgo.Error; } return _b._readSlice(_c) #else null #end;
                __self__._tryGrowByReslice = #if !macro function(_pid:GoInt):{ var _0 : GoInt; var _1 : Bool; } return _b._tryGrowByReslice(_pid) #else null #end;
                __self__;
            }) : stdgo.io_test.Io_test.T_noReadFrom)));
            __self__.write = #if !macro function(_p:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : stdgo.Error; } return ((new stdgo.io_test.Io_test.T_noReadFrom({
                final __self__ = new stdgo.bytes.Bytes.Buffer_wrapper(_b);
                __self__.bytes = #if !macro function():Slice<GoUInt8> return _b.bytes() #else null #end;
                __self__.cap_ = #if !macro function():GoInt return _b.cap_() #else null #end;
                __self__.grow = #if !macro function(_pid:GoInt):Void _b.grow(_pid) #else null #end;
                __self__.len = #if !macro function():GoInt return _b.len() #else null #end;
                __self__.next = #if !macro function(_pid:GoInt):Slice<GoUInt8> return _b.next(_pid) #else null #end;
                __self__.read = #if !macro function(_p:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : stdgo.Error; } return _b.read(_p) #else null #end;
                __self__.readByte = #if !macro function():{ var _0 : GoUInt8; var _1 : stdgo.Error; } return _b.readByte() #else null #end;
                __self__.readBytes = #if !macro function(_c:GoUInt8):{ var _0 : Slice<GoUInt8>; var _1 : stdgo.Error; } return _b.readBytes(_c) #else null #end;
                __self__.readFrom = #if !macro function(_r:Reader):{ var _0 : GoInt64; var _1 : stdgo.Error; } return _b.readFrom(_r) #else null #end;
                __self__.readRune = #if !macro function():{ var _0 : GoInt32; var _1 : GoInt; var _2 : stdgo.Error; } return _b.readRune() #else null #end;
                __self__.readString = #if !macro function(_c:GoUInt8):{ var _0 : GoString; var _1 : stdgo.Error; } return _b.readString(_c) #else null #end;
                __self__.reset = #if !macro function():Void _b.reset() #else null #end;
                __self__.string = #if !macro function():GoString return _b.string() #else null #end;
                __self__.truncate = #if !macro function(_pid:GoInt):Void _b.truncate(_pid) #else null #end;
                __self__.unreadByte = #if !macro function():stdgo.Error return _b.unreadByte() #else null #end;
                __self__.unreadRune = #if !macro function():stdgo.Error return _b.unreadRune() #else null #end;
                __self__.write = #if !macro function(_p:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : stdgo.Error; } return _b.write(_p) #else null #end;
                __self__.writeByte = #if !macro function(_c:GoUInt8):stdgo.Error return _b.writeByte(_c) #else null #end;
                __self__.writeRune = #if !macro function(_new:GoInt32):{ var _0 : GoInt; var _1 : stdgo.Error; } return _b.writeRune(_new) #else null #end;
                __self__.writeString = #if !macro function(__0:GoString):{ var _0 : GoInt; var _1 : stdgo.Error; } return _b.writeString(__0) #else null #end;
                __self__.writeTo = #if !macro function(_w:Writer):{ var _0 : GoInt64; var _1 : stdgo.Error; } return _b.writeTo(_w) #else null #end;
                __self__._empty = #if !macro function():Bool return _b._empty() #else null #end;
                __self__._grow = #if !macro function(_pid:GoInt):GoInt return _b._grow(_pid) #else null #end;
                __self__._readSlice = #if !macro function(_c:GoUInt8):{ var _0 : Slice<GoUInt8>; var _1 : stdgo.Error; } return _b._readSlice(_c) #else null #end;
                __self__._tryGrowByReslice = #if !macro function(_pid:GoInt):{ var _0 : GoInt; var _1 : Bool; } return _b._tryGrowByReslice(_pid) #else null #end;
                __self__;
            }) : stdgo.io_test.Io_test.T_noReadFrom)).write(_p) #else null #end;
            __self__;
        }, {
            final __self__ = new stdgo.strings.Strings.Reader_wrapper(stdgo.strings.Strings.newReader(((Go.str("foo") : GoString))));
            __self__.len = #if !macro function():GoInt return stdgo.strings.Strings.newReader(((Go.str("foo") : GoString))).len() #else null #end;
            __self__.read = #if !macro function(_p:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : stdgo.Error; } return stdgo.strings.Strings.newReader(((Go.str("foo") : GoString))).read(_p) #else null #end;
            __self__.readAt = #if !macro function(_p:Slice<GoUInt8>, _off:GoInt64):{ var _0 : GoInt; var _1 : stdgo.Error; } return stdgo.strings.Strings.newReader(((Go.str("foo") : GoString))).readAt(_p, _off) #else null #end;
            __self__.readByte = #if !macro function():{ var _0 : GoUInt8; var _1 : stdgo.Error; } return stdgo.strings.Strings.newReader(((Go.str("foo") : GoString))).readByte() #else null #end;
            __self__.readRune = #if !macro function():{ var _0 : GoInt32; var _1 : GoInt; var _2 : stdgo.Error; } return stdgo.strings.Strings.newReader(((Go.str("foo") : GoString))).readRune() #else null #end;
            __self__.reset = #if !macro function(__0:GoString):Void stdgo.strings.Strings.newReader(((Go.str("foo") : GoString))).reset(__0) #else null #end;
            __self__.seek = #if !macro function(_offset:GoInt64, _whence:GoInt):{ var _0 : GoInt64; var _1 : stdgo.Error; } return stdgo.strings.Strings.newReader(((Go.str("foo") : GoString))).seek(_offset, _whence) #else null #end;
            __self__.size = #if !macro function():GoInt64 return stdgo.strings.Strings.newReader(((Go.str("foo") : GoString))).size() #else null #end;
            __self__.unreadByte = #if !macro function():stdgo.Error return stdgo.strings.Strings.newReader(((Go.str("foo") : GoString))).unreadByte() #else null #end;
            __self__.unreadRune = #if !macro function():stdgo.Error return stdgo.strings.Strings.newReader(((Go.str("foo") : GoString))).unreadRune() #else null #end;
            __self__.writeTo = #if !macro function(_w:Writer):{ var _0 : GoInt64; var _1 : stdgo.Error; } return stdgo.strings.Strings.newReader(((Go.str("foo") : GoString))).writeTo(_w) #else null #end;
            __self__;
        }, ((3 : GoInt64))), _n:GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if ((_n != ((3 : GoInt64))) || (_err != null)) {
            _t.errorf(((Go.str("CopyN(noReadFrom, foo, 3) = %d, %v; want 3, nil") : GoString)), Go.toInterface(_n), Go.toInterface(_err));
        };
        {
            var __tmp__ = copyN({
                final __self__ = new stdgo.io_test.Io_test.T_noReadFrom_wrapper(((new stdgo.io_test.Io_test.T_noReadFrom({
                    final __self__ = new stdgo.bytes.Bytes.Buffer_wrapper(_b);
                    __self__.bytes = #if !macro function():Slice<GoUInt8> return _b.bytes() #else null #end;
                    __self__.cap_ = #if !macro function():GoInt return _b.cap_() #else null #end;
                    __self__.grow = #if !macro function(_pid:GoInt):Void _b.grow(_pid) #else null #end;
                    __self__.len = #if !macro function():GoInt return _b.len() #else null #end;
                    __self__.next = #if !macro function(_pid:GoInt):Slice<GoUInt8> return _b.next(_pid) #else null #end;
                    __self__.read = #if !macro function(_p:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : stdgo.Error; } return _b.read(_p) #else null #end;
                    __self__.readByte = #if !macro function():{ var _0 : GoUInt8; var _1 : stdgo.Error; } return _b.readByte() #else null #end;
                    __self__.readBytes = #if !macro function(_c:GoUInt8):{ var _0 : Slice<GoUInt8>; var _1 : stdgo.Error; } return _b.readBytes(_c) #else null #end;
                    __self__.readFrom = #if !macro function(_r:Reader):{ var _0 : GoInt64; var _1 : stdgo.Error; } return _b.readFrom(_r) #else null #end;
                    __self__.readRune = #if !macro function():{ var _0 : GoInt32; var _1 : GoInt; var _2 : stdgo.Error; } return _b.readRune() #else null #end;
                    __self__.readString = #if !macro function(_c:GoUInt8):{ var _0 : GoString; var _1 : stdgo.Error; } return _b.readString(_c) #else null #end;
                    __self__.reset = #if !macro function():Void _b.reset() #else null #end;
                    __self__.string = #if !macro function():GoString return _b.string() #else null #end;
                    __self__.truncate = #if !macro function(_pid:GoInt):Void _b.truncate(_pid) #else null #end;
                    __self__.unreadByte = #if !macro function():stdgo.Error return _b.unreadByte() #else null #end;
                    __self__.unreadRune = #if !macro function():stdgo.Error return _b.unreadRune() #else null #end;
                    __self__.write = #if !macro function(_p:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : stdgo.Error; } return _b.write(_p) #else null #end;
                    __self__.writeByte = #if !macro function(_c:GoUInt8):stdgo.Error return _b.writeByte(_c) #else null #end;
                    __self__.writeRune = #if !macro function(_new:GoInt32):{ var _0 : GoInt; var _1 : stdgo.Error; } return _b.writeRune(_new) #else null #end;
                    __self__.writeString = #if !macro function(__0:GoString):{ var _0 : GoInt; var _1 : stdgo.Error; } return _b.writeString(__0) #else null #end;
                    __self__.writeTo = #if !macro function(_w:Writer):{ var _0 : GoInt64; var _1 : stdgo.Error; } return _b.writeTo(_w) #else null #end;
                    __self__._empty = #if !macro function():Bool return _b._empty() #else null #end;
                    __self__._grow = #if !macro function(_pid:GoInt):GoInt return _b._grow(_pid) #else null #end;
                    __self__._readSlice = #if !macro function(_c:GoUInt8):{ var _0 : Slice<GoUInt8>; var _1 : stdgo.Error; } return _b._readSlice(_c) #else null #end;
                    __self__._tryGrowByReslice = #if !macro function(_pid:GoInt):{ var _0 : GoInt; var _1 : Bool; } return _b._tryGrowByReslice(_pid) #else null #end;
                    __self__;
                }) : stdgo.io_test.Io_test.T_noReadFrom)));
                __self__.write = #if !macro function(_p:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : stdgo.Error; } return ((new stdgo.io_test.Io_test.T_noReadFrom({
                    final __self__ = new stdgo.bytes.Bytes.Buffer_wrapper(_b);
                    __self__.bytes = #if !macro function():Slice<GoUInt8> return _b.bytes() #else null #end;
                    __self__.cap_ = #if !macro function():GoInt return _b.cap_() #else null #end;
                    __self__.grow = #if !macro function(_pid:GoInt):Void _b.grow(_pid) #else null #end;
                    __self__.len = #if !macro function():GoInt return _b.len() #else null #end;
                    __self__.next = #if !macro function(_pid:GoInt):Slice<GoUInt8> return _b.next(_pid) #else null #end;
                    __self__.read = #if !macro function(_p:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : stdgo.Error; } return _b.read(_p) #else null #end;
                    __self__.readByte = #if !macro function():{ var _0 : GoUInt8; var _1 : stdgo.Error; } return _b.readByte() #else null #end;
                    __self__.readBytes = #if !macro function(_c:GoUInt8):{ var _0 : Slice<GoUInt8>; var _1 : stdgo.Error; } return _b.readBytes(_c) #else null #end;
                    __self__.readFrom = #if !macro function(_r:Reader):{ var _0 : GoInt64; var _1 : stdgo.Error; } return _b.readFrom(_r) #else null #end;
                    __self__.readRune = #if !macro function():{ var _0 : GoInt32; var _1 : GoInt; var _2 : stdgo.Error; } return _b.readRune() #else null #end;
                    __self__.readString = #if !macro function(_c:GoUInt8):{ var _0 : GoString; var _1 : stdgo.Error; } return _b.readString(_c) #else null #end;
                    __self__.reset = #if !macro function():Void _b.reset() #else null #end;
                    __self__.string = #if !macro function():GoString return _b.string() #else null #end;
                    __self__.truncate = #if !macro function(_pid:GoInt):Void _b.truncate(_pid) #else null #end;
                    __self__.unreadByte = #if !macro function():stdgo.Error return _b.unreadByte() #else null #end;
                    __self__.unreadRune = #if !macro function():stdgo.Error return _b.unreadRune() #else null #end;
                    __self__.write = #if !macro function(_p:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : stdgo.Error; } return _b.write(_p) #else null #end;
                    __self__.writeByte = #if !macro function(_c:GoUInt8):stdgo.Error return _b.writeByte(_c) #else null #end;
                    __self__.writeRune = #if !macro function(_new:GoInt32):{ var _0 : GoInt; var _1 : stdgo.Error; } return _b.writeRune(_new) #else null #end;
                    __self__.writeString = #if !macro function(__0:GoString):{ var _0 : GoInt; var _1 : stdgo.Error; } return _b.writeString(__0) #else null #end;
                    __self__.writeTo = #if !macro function(_w:Writer):{ var _0 : GoInt64; var _1 : stdgo.Error; } return _b.writeTo(_w) #else null #end;
                    __self__._empty = #if !macro function():Bool return _b._empty() #else null #end;
                    __self__._grow = #if !macro function(_pid:GoInt):GoInt return _b._grow(_pid) #else null #end;
                    __self__._readSlice = #if !macro function(_c:GoUInt8):{ var _0 : Slice<GoUInt8>; var _1 : stdgo.Error; } return _b._readSlice(_c) #else null #end;
                    __self__._tryGrowByReslice = #if !macro function(_pid:GoInt):{ var _0 : GoInt; var _1 : Bool; } return _b._tryGrowByReslice(_pid) #else null #end;
                    __self__;
                }) : stdgo.io_test.Io_test.T_noReadFrom)).write(_p) #else null #end;
                __self__;
            }, {
                final __self__ = new stdgo.strings.Strings.Reader_wrapper(stdgo.strings.Strings.newReader(((Go.str("foo") : GoString))));
                __self__.len = #if !macro function():GoInt return stdgo.strings.Strings.newReader(((Go.str("foo") : GoString))).len() #else null #end;
                __self__.read = #if !macro function(_p:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : stdgo.Error; } return stdgo.strings.Strings.newReader(((Go.str("foo") : GoString))).read(_p) #else null #end;
                __self__.readAt = #if !macro function(_p:Slice<GoUInt8>, _off:GoInt64):{ var _0 : GoInt; var _1 : stdgo.Error; } return stdgo.strings.Strings.newReader(((Go.str("foo") : GoString))).readAt(_p, _off) #else null #end;
                __self__.readByte = #if !macro function():{ var _0 : GoUInt8; var _1 : stdgo.Error; } return stdgo.strings.Strings.newReader(((Go.str("foo") : GoString))).readByte() #else null #end;
                __self__.readRune = #if !macro function():{ var _0 : GoInt32; var _1 : GoInt; var _2 : stdgo.Error; } return stdgo.strings.Strings.newReader(((Go.str("foo") : GoString))).readRune() #else null #end;
                __self__.reset = #if !macro function(__0:GoString):Void stdgo.strings.Strings.newReader(((Go.str("foo") : GoString))).reset(__0) #else null #end;
                __self__.seek = #if !macro function(_offset:GoInt64, _whence:GoInt):{ var _0 : GoInt64; var _1 : stdgo.Error; } return stdgo.strings.Strings.newReader(((Go.str("foo") : GoString))).seek(_offset, _whence) #else null #end;
                __self__.size = #if !macro function():GoInt64 return stdgo.strings.Strings.newReader(((Go.str("foo") : GoString))).size() #else null #end;
                __self__.unreadByte = #if !macro function():stdgo.Error return stdgo.strings.Strings.newReader(((Go.str("foo") : GoString))).unreadByte() #else null #end;
                __self__.unreadRune = #if !macro function():stdgo.Error return stdgo.strings.Strings.newReader(((Go.str("foo") : GoString))).unreadRune() #else null #end;
                __self__.writeTo = #if !macro function(_w:Writer):{ var _0 : GoInt64; var _1 : stdgo.Error; } return stdgo.strings.Strings.newReader(((Go.str("foo") : GoString))).writeTo(_w) #else null #end;
                __self__;
            }, ((4 : GoInt64)));
            _n = __tmp__._0;
            _err = __tmp__._1;
        };
        if ((_n != ((3 : GoInt64))) || (_err != eof)) {
            _t.errorf(((Go.str("CopyN(noReadFrom, foo, 4) = %d, %v; want 3, EOF") : GoString)), Go.toInterface(_n), Go.toInterface(_err));
        };
        {
            var __tmp__ = copyN({
                final __self__ = new stdgo.bytes.Bytes.Buffer_wrapper(_b);
                __self__.bytes = #if !macro function():Slice<GoUInt8> return _b.bytes() #else null #end;
                __self__.cap_ = #if !macro function():GoInt return _b.cap_() #else null #end;
                __self__.grow = #if !macro function(_pid:GoInt):Void _b.grow(_pid) #else null #end;
                __self__.len = #if !macro function():GoInt return _b.len() #else null #end;
                __self__.next = #if !macro function(_pid:GoInt):Slice<GoUInt8> return _b.next(_pid) #else null #end;
                __self__.read = #if !macro function(_p:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : stdgo.Error; } return _b.read(_p) #else null #end;
                __self__.readByte = #if !macro function():{ var _0 : GoUInt8; var _1 : stdgo.Error; } return _b.readByte() #else null #end;
                __self__.readBytes = #if !macro function(_c:GoUInt8):{ var _0 : Slice<GoUInt8>; var _1 : stdgo.Error; } return _b.readBytes(_c) #else null #end;
                __self__.readFrom = #if !macro function(_r:Reader):{ var _0 : GoInt64; var _1 : stdgo.Error; } return _b.readFrom(_r) #else null #end;
                __self__.readRune = #if !macro function():{ var _0 : GoInt32; var _1 : GoInt; var _2 : stdgo.Error; } return _b.readRune() #else null #end;
                __self__.readString = #if !macro function(_c:GoUInt8):{ var _0 : GoString; var _1 : stdgo.Error; } return _b.readString(_c) #else null #end;
                __self__.reset = #if !macro function():Void _b.reset() #else null #end;
                __self__.string = #if !macro function():GoString return _b.string() #else null #end;
                __self__.truncate = #if !macro function(_pid:GoInt):Void _b.truncate(_pid) #else null #end;
                __self__.unreadByte = #if !macro function():stdgo.Error return _b.unreadByte() #else null #end;
                __self__.unreadRune = #if !macro function():stdgo.Error return _b.unreadRune() #else null #end;
                __self__.write = #if !macro function(_p:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : stdgo.Error; } return _b.write(_p) #else null #end;
                __self__.writeByte = #if !macro function(_c:GoUInt8):stdgo.Error return _b.writeByte(_c) #else null #end;
                __self__.writeRune = #if !macro function(_new:GoInt32):{ var _0 : GoInt; var _1 : stdgo.Error; } return _b.writeRune(_new) #else null #end;
                __self__.writeString = #if !macro function(__0:GoString):{ var _0 : GoInt; var _1 : stdgo.Error; } return _b.writeString(__0) #else null #end;
                __self__.writeTo = #if !macro function(_w:Writer):{ var _0 : GoInt64; var _1 : stdgo.Error; } return _b.writeTo(_w) #else null #end;
                __self__._empty = #if !macro function():Bool return _b._empty() #else null #end;
                __self__._grow = #if !macro function(_pid:GoInt):GoInt return _b._grow(_pid) #else null #end;
                __self__._readSlice = #if !macro function(_c:GoUInt8):{ var _0 : Slice<GoUInt8>; var _1 : stdgo.Error; } return _b._readSlice(_c) #else null #end;
                __self__._tryGrowByReslice = #if !macro function(_pid:GoInt):{ var _0 : GoInt; var _1 : Bool; } return _b._tryGrowByReslice(_pid) #else null #end;
                __self__;
            }, {
                final __self__ = new stdgo.strings.Strings.Reader_wrapper(stdgo.strings.Strings.newReader(((Go.str("foo") : GoString))));
                __self__.len = #if !macro function():GoInt return stdgo.strings.Strings.newReader(((Go.str("foo") : GoString))).len() #else null #end;
                __self__.read = #if !macro function(_p:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : stdgo.Error; } return stdgo.strings.Strings.newReader(((Go.str("foo") : GoString))).read(_p) #else null #end;
                __self__.readAt = #if !macro function(_p:Slice<GoUInt8>, _off:GoInt64):{ var _0 : GoInt; var _1 : stdgo.Error; } return stdgo.strings.Strings.newReader(((Go.str("foo") : GoString))).readAt(_p, _off) #else null #end;
                __self__.readByte = #if !macro function():{ var _0 : GoUInt8; var _1 : stdgo.Error; } return stdgo.strings.Strings.newReader(((Go.str("foo") : GoString))).readByte() #else null #end;
                __self__.readRune = #if !macro function():{ var _0 : GoInt32; var _1 : GoInt; var _2 : stdgo.Error; } return stdgo.strings.Strings.newReader(((Go.str("foo") : GoString))).readRune() #else null #end;
                __self__.reset = #if !macro function(__0:GoString):Void stdgo.strings.Strings.newReader(((Go.str("foo") : GoString))).reset(__0) #else null #end;
                __self__.seek = #if !macro function(_offset:GoInt64, _whence:GoInt):{ var _0 : GoInt64; var _1 : stdgo.Error; } return stdgo.strings.Strings.newReader(((Go.str("foo") : GoString))).seek(_offset, _whence) #else null #end;
                __self__.size = #if !macro function():GoInt64 return stdgo.strings.Strings.newReader(((Go.str("foo") : GoString))).size() #else null #end;
                __self__.unreadByte = #if !macro function():stdgo.Error return stdgo.strings.Strings.newReader(((Go.str("foo") : GoString))).unreadByte() #else null #end;
                __self__.unreadRune = #if !macro function():stdgo.Error return stdgo.strings.Strings.newReader(((Go.str("foo") : GoString))).unreadRune() #else null #end;
                __self__.writeTo = #if !macro function(_w:Writer):{ var _0 : GoInt64; var _1 : stdgo.Error; } return stdgo.strings.Strings.newReader(((Go.str("foo") : GoString))).writeTo(_w) #else null #end;
                __self__;
            }, ((3 : GoInt64)));
            _n = __tmp__._0;
            _err = __tmp__._1;
        };
        if ((_n != ((3 : GoInt64))) || (_err != null)) {
            _t.errorf(((Go.str("CopyN(bytes.Buffer, foo, 3) = %d, %v; want 3, nil") : GoString)), Go.toInterface(_n), Go.toInterface(_err));
        };
        {
            var __tmp__ = copyN({
                final __self__ = new stdgo.bytes.Bytes.Buffer_wrapper(_b);
                __self__.bytes = #if !macro function():Slice<GoUInt8> return _b.bytes() #else null #end;
                __self__.cap_ = #if !macro function():GoInt return _b.cap_() #else null #end;
                __self__.grow = #if !macro function(_pid:GoInt):Void _b.grow(_pid) #else null #end;
                __self__.len = #if !macro function():GoInt return _b.len() #else null #end;
                __self__.next = #if !macro function(_pid:GoInt):Slice<GoUInt8> return _b.next(_pid) #else null #end;
                __self__.read = #if !macro function(_p:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : stdgo.Error; } return _b.read(_p) #else null #end;
                __self__.readByte = #if !macro function():{ var _0 : GoUInt8; var _1 : stdgo.Error; } return _b.readByte() #else null #end;
                __self__.readBytes = #if !macro function(_c:GoUInt8):{ var _0 : Slice<GoUInt8>; var _1 : stdgo.Error; } return _b.readBytes(_c) #else null #end;
                __self__.readFrom = #if !macro function(_r:Reader):{ var _0 : GoInt64; var _1 : stdgo.Error; } return _b.readFrom(_r) #else null #end;
                __self__.readRune = #if !macro function():{ var _0 : GoInt32; var _1 : GoInt; var _2 : stdgo.Error; } return _b.readRune() #else null #end;
                __self__.readString = #if !macro function(_c:GoUInt8):{ var _0 : GoString; var _1 : stdgo.Error; } return _b.readString(_c) #else null #end;
                __self__.reset = #if !macro function():Void _b.reset() #else null #end;
                __self__.string = #if !macro function():GoString return _b.string() #else null #end;
                __self__.truncate = #if !macro function(_pid:GoInt):Void _b.truncate(_pid) #else null #end;
                __self__.unreadByte = #if !macro function():stdgo.Error return _b.unreadByte() #else null #end;
                __self__.unreadRune = #if !macro function():stdgo.Error return _b.unreadRune() #else null #end;
                __self__.write = #if !macro function(_p:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : stdgo.Error; } return _b.write(_p) #else null #end;
                __self__.writeByte = #if !macro function(_c:GoUInt8):stdgo.Error return _b.writeByte(_c) #else null #end;
                __self__.writeRune = #if !macro function(_new:GoInt32):{ var _0 : GoInt; var _1 : stdgo.Error; } return _b.writeRune(_new) #else null #end;
                __self__.writeString = #if !macro function(__0:GoString):{ var _0 : GoInt; var _1 : stdgo.Error; } return _b.writeString(__0) #else null #end;
                __self__.writeTo = #if !macro function(_w:Writer):{ var _0 : GoInt64; var _1 : stdgo.Error; } return _b.writeTo(_w) #else null #end;
                __self__._empty = #if !macro function():Bool return _b._empty() #else null #end;
                __self__._grow = #if !macro function(_pid:GoInt):GoInt return _b._grow(_pid) #else null #end;
                __self__._readSlice = #if !macro function(_c:GoUInt8):{ var _0 : Slice<GoUInt8>; var _1 : stdgo.Error; } return _b._readSlice(_c) #else null #end;
                __self__._tryGrowByReslice = #if !macro function(_pid:GoInt):{ var _0 : GoInt; var _1 : Bool; } return _b._tryGrowByReslice(_pid) #else null #end;
                __self__;
            }, {
                final __self__ = new stdgo.strings.Strings.Reader_wrapper(stdgo.strings.Strings.newReader(((Go.str("foo") : GoString))));
                __self__.len = #if !macro function():GoInt return stdgo.strings.Strings.newReader(((Go.str("foo") : GoString))).len() #else null #end;
                __self__.read = #if !macro function(_p:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : stdgo.Error; } return stdgo.strings.Strings.newReader(((Go.str("foo") : GoString))).read(_p) #else null #end;
                __self__.readAt = #if !macro function(_p:Slice<GoUInt8>, _off:GoInt64):{ var _0 : GoInt; var _1 : stdgo.Error; } return stdgo.strings.Strings.newReader(((Go.str("foo") : GoString))).readAt(_p, _off) #else null #end;
                __self__.readByte = #if !macro function():{ var _0 : GoUInt8; var _1 : stdgo.Error; } return stdgo.strings.Strings.newReader(((Go.str("foo") : GoString))).readByte() #else null #end;
                __self__.readRune = #if !macro function():{ var _0 : GoInt32; var _1 : GoInt; var _2 : stdgo.Error; } return stdgo.strings.Strings.newReader(((Go.str("foo") : GoString))).readRune() #else null #end;
                __self__.reset = #if !macro function(__0:GoString):Void stdgo.strings.Strings.newReader(((Go.str("foo") : GoString))).reset(__0) #else null #end;
                __self__.seek = #if !macro function(_offset:GoInt64, _whence:GoInt):{ var _0 : GoInt64; var _1 : stdgo.Error; } return stdgo.strings.Strings.newReader(((Go.str("foo") : GoString))).seek(_offset, _whence) #else null #end;
                __self__.size = #if !macro function():GoInt64 return stdgo.strings.Strings.newReader(((Go.str("foo") : GoString))).size() #else null #end;
                __self__.unreadByte = #if !macro function():stdgo.Error return stdgo.strings.Strings.newReader(((Go.str("foo") : GoString))).unreadByte() #else null #end;
                __self__.unreadRune = #if !macro function():stdgo.Error return stdgo.strings.Strings.newReader(((Go.str("foo") : GoString))).unreadRune() #else null #end;
                __self__.writeTo = #if !macro function(_w:Writer):{ var _0 : GoInt64; var _1 : stdgo.Error; } return stdgo.strings.Strings.newReader(((Go.str("foo") : GoString))).writeTo(_w) #else null #end;
                __self__;
            }, ((4 : GoInt64)));
            _n = __tmp__._0;
            _err = __tmp__._1;
        };
        if ((_n != ((3 : GoInt64))) || (_err != eof)) {
            _t.errorf(((Go.str("CopyN(bytes.Buffer, foo, 4) = %d, %v; want 3, EOF") : GoString)), Go.toInterface(_n), Go.toInterface(_err));
        };
        {
            var __tmp__ = copyN({
                final __self__ = new stdgo.bytes.Bytes.Buffer_wrapper(_b);
                __self__.bytes = #if !macro function():Slice<GoUInt8> return _b.bytes() #else null #end;
                __self__.cap_ = #if !macro function():GoInt return _b.cap_() #else null #end;
                __self__.grow = #if !macro function(_pid:GoInt):Void _b.grow(_pid) #else null #end;
                __self__.len = #if !macro function():GoInt return _b.len() #else null #end;
                __self__.next = #if !macro function(_pid:GoInt):Slice<GoUInt8> return _b.next(_pid) #else null #end;
                __self__.read = #if !macro function(_p:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : stdgo.Error; } return _b.read(_p) #else null #end;
                __self__.readByte = #if !macro function():{ var _0 : GoUInt8; var _1 : stdgo.Error; } return _b.readByte() #else null #end;
                __self__.readBytes = #if !macro function(_c:GoUInt8):{ var _0 : Slice<GoUInt8>; var _1 : stdgo.Error; } return _b.readBytes(_c) #else null #end;
                __self__.readFrom = #if !macro function(_r:Reader):{ var _0 : GoInt64; var _1 : stdgo.Error; } return _b.readFrom(_r) #else null #end;
                __self__.readRune = #if !macro function():{ var _0 : GoInt32; var _1 : GoInt; var _2 : stdgo.Error; } return _b.readRune() #else null #end;
                __self__.readString = #if !macro function(_c:GoUInt8):{ var _0 : GoString; var _1 : stdgo.Error; } return _b.readString(_c) #else null #end;
                __self__.reset = #if !macro function():Void _b.reset() #else null #end;
                __self__.string = #if !macro function():GoString return _b.string() #else null #end;
                __self__.truncate = #if !macro function(_pid:GoInt):Void _b.truncate(_pid) #else null #end;
                __self__.unreadByte = #if !macro function():stdgo.Error return _b.unreadByte() #else null #end;
                __self__.unreadRune = #if !macro function():stdgo.Error return _b.unreadRune() #else null #end;
                __self__.write = #if !macro function(_p:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : stdgo.Error; } return _b.write(_p) #else null #end;
                __self__.writeByte = #if !macro function(_c:GoUInt8):stdgo.Error return _b.writeByte(_c) #else null #end;
                __self__.writeRune = #if !macro function(_new:GoInt32):{ var _0 : GoInt; var _1 : stdgo.Error; } return _b.writeRune(_new) #else null #end;
                __self__.writeString = #if !macro function(__0:GoString):{ var _0 : GoInt; var _1 : stdgo.Error; } return _b.writeString(__0) #else null #end;
                __self__.writeTo = #if !macro function(_w:Writer):{ var _0 : GoInt64; var _1 : stdgo.Error; } return _b.writeTo(_w) #else null #end;
                __self__._empty = #if !macro function():Bool return _b._empty() #else null #end;
                __self__._grow = #if !macro function(_pid:GoInt):GoInt return _b._grow(_pid) #else null #end;
                __self__._readSlice = #if !macro function(_c:GoUInt8):{ var _0 : Slice<GoUInt8>; var _1 : stdgo.Error; } return _b._readSlice(_c) #else null #end;
                __self__._tryGrowByReslice = #if !macro function(_pid:GoInt):{ var _0 : GoInt; var _1 : Bool; } return _b._tryGrowByReslice(_pid) #else null #end;
                __self__;
            }, {
                final __self__ = new stdgo.io_test.Io_test.T_wantedAndErrReader_wrapper(((new stdgo.io_test.Io_test.T_wantedAndErrReader() : stdgo.io_test.Io_test.T_wantedAndErrReader)));
                __self__.read = #if !macro function(_p:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : stdgo.Error; } return ((new stdgo.io_test.Io_test.T_wantedAndErrReader() : stdgo.io_test.Io_test.T_wantedAndErrReader)).read(_p) #else null #end;
                __self__;
            }, ((5 : GoInt64)));
            _n = __tmp__._0;
            _err = __tmp__._1;
        };
        if ((_n != ((5 : GoInt64))) || (_err != null)) {
            _t.errorf(((Go.str("CopyN(bytes.Buffer, wantedAndErrReader, 5) = %d, %v; want 5, nil") : GoString)), Go.toInterface(_n), Go.toInterface(_err));
        };
        {
            var __tmp__ = copyN({
                final __self__ = new stdgo.io_test.Io_test.T_noReadFrom_wrapper(((new stdgo.io_test.Io_test.T_noReadFrom({
                    final __self__ = new stdgo.bytes.Bytes.Buffer_wrapper(_b);
                    __self__.bytes = #if !macro function():Slice<GoUInt8> return _b.bytes() #else null #end;
                    __self__.cap_ = #if !macro function():GoInt return _b.cap_() #else null #end;
                    __self__.grow = #if !macro function(_pid:GoInt):Void _b.grow(_pid) #else null #end;
                    __self__.len = #if !macro function():GoInt return _b.len() #else null #end;
                    __self__.next = #if !macro function(_pid:GoInt):Slice<GoUInt8> return _b.next(_pid) #else null #end;
                    __self__.read = #if !macro function(_p:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : stdgo.Error; } return _b.read(_p) #else null #end;
                    __self__.readByte = #if !macro function():{ var _0 : GoUInt8; var _1 : stdgo.Error; } return _b.readByte() #else null #end;
                    __self__.readBytes = #if !macro function(_c:GoUInt8):{ var _0 : Slice<GoUInt8>; var _1 : stdgo.Error; } return _b.readBytes(_c) #else null #end;
                    __self__.readFrom = #if !macro function(_r:Reader):{ var _0 : GoInt64; var _1 : stdgo.Error; } return _b.readFrom(_r) #else null #end;
                    __self__.readRune = #if !macro function():{ var _0 : GoInt32; var _1 : GoInt; var _2 : stdgo.Error; } return _b.readRune() #else null #end;
                    __self__.readString = #if !macro function(_c:GoUInt8):{ var _0 : GoString; var _1 : stdgo.Error; } return _b.readString(_c) #else null #end;
                    __self__.reset = #if !macro function():Void _b.reset() #else null #end;
                    __self__.string = #if !macro function():GoString return _b.string() #else null #end;
                    __self__.truncate = #if !macro function(_pid:GoInt):Void _b.truncate(_pid) #else null #end;
                    __self__.unreadByte = #if !macro function():stdgo.Error return _b.unreadByte() #else null #end;
                    __self__.unreadRune = #if !macro function():stdgo.Error return _b.unreadRune() #else null #end;
                    __self__.write = #if !macro function(_p:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : stdgo.Error; } return _b.write(_p) #else null #end;
                    __self__.writeByte = #if !macro function(_c:GoUInt8):stdgo.Error return _b.writeByte(_c) #else null #end;
                    __self__.writeRune = #if !macro function(_new:GoInt32):{ var _0 : GoInt; var _1 : stdgo.Error; } return _b.writeRune(_new) #else null #end;
                    __self__.writeString = #if !macro function(__0:GoString):{ var _0 : GoInt; var _1 : stdgo.Error; } return _b.writeString(__0) #else null #end;
                    __self__.writeTo = #if !macro function(_w:Writer):{ var _0 : GoInt64; var _1 : stdgo.Error; } return _b.writeTo(_w) #else null #end;
                    __self__._empty = #if !macro function():Bool return _b._empty() #else null #end;
                    __self__._grow = #if !macro function(_pid:GoInt):GoInt return _b._grow(_pid) #else null #end;
                    __self__._readSlice = #if !macro function(_c:GoUInt8):{ var _0 : Slice<GoUInt8>; var _1 : stdgo.Error; } return _b._readSlice(_c) #else null #end;
                    __self__._tryGrowByReslice = #if !macro function(_pid:GoInt):{ var _0 : GoInt; var _1 : Bool; } return _b._tryGrowByReslice(_pid) #else null #end;
                    __self__;
                }) : stdgo.io_test.Io_test.T_noReadFrom)));
                __self__.write = #if !macro function(_p:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : stdgo.Error; } return ((new stdgo.io_test.Io_test.T_noReadFrom({
                    final __self__ = new stdgo.bytes.Bytes.Buffer_wrapper(_b);
                    __self__.bytes = #if !macro function():Slice<GoUInt8> return _b.bytes() #else null #end;
                    __self__.cap_ = #if !macro function():GoInt return _b.cap_() #else null #end;
                    __self__.grow = #if !macro function(_pid:GoInt):Void _b.grow(_pid) #else null #end;
                    __self__.len = #if !macro function():GoInt return _b.len() #else null #end;
                    __self__.next = #if !macro function(_pid:GoInt):Slice<GoUInt8> return _b.next(_pid) #else null #end;
                    __self__.read = #if !macro function(_p:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : stdgo.Error; } return _b.read(_p) #else null #end;
                    __self__.readByte = #if !macro function():{ var _0 : GoUInt8; var _1 : stdgo.Error; } return _b.readByte() #else null #end;
                    __self__.readBytes = #if !macro function(_c:GoUInt8):{ var _0 : Slice<GoUInt8>; var _1 : stdgo.Error; } return _b.readBytes(_c) #else null #end;
                    __self__.readFrom = #if !macro function(_r:Reader):{ var _0 : GoInt64; var _1 : stdgo.Error; } return _b.readFrom(_r) #else null #end;
                    __self__.readRune = #if !macro function():{ var _0 : GoInt32; var _1 : GoInt; var _2 : stdgo.Error; } return _b.readRune() #else null #end;
                    __self__.readString = #if !macro function(_c:GoUInt8):{ var _0 : GoString; var _1 : stdgo.Error; } return _b.readString(_c) #else null #end;
                    __self__.reset = #if !macro function():Void _b.reset() #else null #end;
                    __self__.string = #if !macro function():GoString return _b.string() #else null #end;
                    __self__.truncate = #if !macro function(_pid:GoInt):Void _b.truncate(_pid) #else null #end;
                    __self__.unreadByte = #if !macro function():stdgo.Error return _b.unreadByte() #else null #end;
                    __self__.unreadRune = #if !macro function():stdgo.Error return _b.unreadRune() #else null #end;
                    __self__.write = #if !macro function(_p:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : stdgo.Error; } return _b.write(_p) #else null #end;
                    __self__.writeByte = #if !macro function(_c:GoUInt8):stdgo.Error return _b.writeByte(_c) #else null #end;
                    __self__.writeRune = #if !macro function(_new:GoInt32):{ var _0 : GoInt; var _1 : stdgo.Error; } return _b.writeRune(_new) #else null #end;
                    __self__.writeString = #if !macro function(__0:GoString):{ var _0 : GoInt; var _1 : stdgo.Error; } return _b.writeString(__0) #else null #end;
                    __self__.writeTo = #if !macro function(_w:Writer):{ var _0 : GoInt64; var _1 : stdgo.Error; } return _b.writeTo(_w) #else null #end;
                    __self__._empty = #if !macro function():Bool return _b._empty() #else null #end;
                    __self__._grow = #if !macro function(_pid:GoInt):GoInt return _b._grow(_pid) #else null #end;
                    __self__._readSlice = #if !macro function(_c:GoUInt8):{ var _0 : Slice<GoUInt8>; var _1 : stdgo.Error; } return _b._readSlice(_c) #else null #end;
                    __self__._tryGrowByReslice = #if !macro function(_pid:GoInt):{ var _0 : GoInt; var _1 : Bool; } return _b._tryGrowByReslice(_pid) #else null #end;
                    __self__;
                }) : stdgo.io_test.Io_test.T_noReadFrom)).write(_p) #else null #end;
                __self__;
            }, {
                final __self__ = new stdgo.io_test.Io_test.T_wantedAndErrReader_wrapper(((new stdgo.io_test.Io_test.T_wantedAndErrReader() : stdgo.io_test.Io_test.T_wantedAndErrReader)));
                __self__.read = #if !macro function(_p:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : stdgo.Error; } return ((new stdgo.io_test.Io_test.T_wantedAndErrReader() : stdgo.io_test.Io_test.T_wantedAndErrReader)).read(_p) #else null #end;
                __self__;
            }, ((5 : GoInt64)));
            _n = __tmp__._0;
            _err = __tmp__._1;
        };
        if ((_n != ((5 : GoInt64))) || (_err != null)) {
            _t.errorf(((Go.str("CopyN(noReadFrom, wantedAndErrReader, 5) = %d, %v; want 5, nil") : GoString)), Go.toInterface(_n), Go.toInterface(_err));
        };
    }
function testReadAtLeast(_t:stdgo.testing.Testing.T):Void {
        var _rb:stdgo.bytes.Bytes.Buffer = (({  } : stdgo.bytes.Bytes.Buffer));
        _testReadAtLeast(_t, {
            final __self__ = new stdgo.bytes.Bytes.Buffer_wrapper(_rb);
            __self__.bytes = #if !macro function():Slice<GoUInt8> return _rb.bytes() #else null #end;
            __self__.cap_ = #if !macro function():GoInt return _rb.cap_() #else null #end;
            __self__.grow = #if !macro function(_pid:GoInt):Void _rb.grow(_pid) #else null #end;
            __self__.len = #if !macro function():GoInt return _rb.len() #else null #end;
            __self__.next = #if !macro function(_pid:GoInt):Slice<GoUInt8> return _rb.next(_pid) #else null #end;
            __self__.read = #if !macro function(_p:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : stdgo.Error; } return _rb.read(_p) #else null #end;
            __self__.readByte = #if !macro function():{ var _0 : GoUInt8; var _1 : stdgo.Error; } return _rb.readByte() #else null #end;
            __self__.readBytes = #if !macro function(_c:GoUInt8):{ var _0 : Slice<GoUInt8>; var _1 : stdgo.Error; } return _rb.readBytes(_c) #else null #end;
            __self__.readFrom = #if !macro function(_r:Reader):{ var _0 : GoInt64; var _1 : stdgo.Error; } return _rb.readFrom(_r) #else null #end;
            __self__.readRune = #if !macro function():{ var _0 : GoInt32; var _1 : GoInt; var _2 : stdgo.Error; } return _rb.readRune() #else null #end;
            __self__.readString = #if !macro function(_c:GoUInt8):{ var _0 : GoString; var _1 : stdgo.Error; } return _rb.readString(_c) #else null #end;
            __self__.reset = #if !macro function():Void _rb.reset() #else null #end;
            __self__.string = #if !macro function():GoString return _rb.string() #else null #end;
            __self__.truncate = #if !macro function(_pid:GoInt):Void _rb.truncate(_pid) #else null #end;
            __self__.unreadByte = #if !macro function():stdgo.Error return _rb.unreadByte() #else null #end;
            __self__.unreadRune = #if !macro function():stdgo.Error return _rb.unreadRune() #else null #end;
            __self__.write = #if !macro function(_p:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : stdgo.Error; } return _rb.write(_p) #else null #end;
            __self__.writeByte = #if !macro function(_c:GoUInt8):stdgo.Error return _rb.writeByte(_c) #else null #end;
            __self__.writeRune = #if !macro function(_new:GoInt32):{ var _0 : GoInt; var _1 : stdgo.Error; } return _rb.writeRune(_new) #else null #end;
            __self__.writeString = #if !macro function(__0:GoString):{ var _0 : GoInt; var _1 : stdgo.Error; } return _rb.writeString(__0) #else null #end;
            __self__.writeTo = #if !macro function(_w:Writer):{ var _0 : GoInt64; var _1 : stdgo.Error; } return _rb.writeTo(_w) #else null #end;
            __self__._empty = #if !macro function():Bool return _rb._empty() #else null #end;
            __self__._grow = #if !macro function(_pid:GoInt):GoInt return _rb._grow(_pid) #else null #end;
            __self__._readSlice = #if !macro function(_c:GoUInt8):{ var _0 : Slice<GoUInt8>; var _1 : stdgo.Error; } return _rb._readSlice(_c) #else null #end;
            __self__._tryGrowByReslice = #if !macro function(_pid:GoInt):{ var _0 : GoInt; var _1 : Bool; } return _rb._tryGrowByReslice(_pid) #else null #end;
            __self__;
        });
    }
function testReadAtLeastWithDataAndEOF(_t:stdgo.testing.Testing.T):Void {
        var _rb:T_dataAndErrorBuffer = (({  } : stdgo.io_test.Io_test.T_dataAndErrorBuffer));
        _rb._err = eof;
        _testReadAtLeast(_t, {
            final __self__ = new stdgo.io_test.Io_test.T_dataAndErrorBuffer_wrapper(_rb);
            __self__.bytes = #if !macro function():Slice<GoUInt8> return _rb.bytes() #else null #end;
            __self__.cap_ = #if !macro function():GoInt return _rb.cap_() #else null #end;
            __self__.grow = #if !macro function(_pid:GoInt):Void _rb.grow(_pid) #else null #end;
            __self__.len = #if !macro function():GoInt return _rb.len() #else null #end;
            __self__.next = #if !macro function(_pid:GoInt):Slice<GoUInt8> return _rb.next(_pid) #else null #end;
            __self__.read = #if !macro function(_p:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : stdgo.Error; } return _rb.read(_p) #else null #end;
            __self__.readByte = #if !macro function():{ var _0 : GoUInt8; var _1 : stdgo.Error; } return _rb.readByte() #else null #end;
            __self__.readBytes = #if !macro function(_c:GoUInt8):{ var _0 : Slice<GoUInt8>; var _1 : stdgo.Error; } return _rb.readBytes(_c) #else null #end;
            __self__.readFrom = #if !macro function(_r:Reader):{ var _0 : GoInt64; var _1 : stdgo.Error; } return _rb.readFrom(_r) #else null #end;
            __self__.readRune = #if !macro function():{ var _0 : GoInt32; var _1 : GoInt; var _2 : stdgo.Error; } return _rb.readRune() #else null #end;
            __self__.readString = #if !macro function(_c:GoUInt8):{ var _0 : GoString; var _1 : stdgo.Error; } return _rb.readString(_c) #else null #end;
            __self__.reset = #if !macro function():Void _rb.reset() #else null #end;
            __self__.string = #if !macro function():GoString return _rb.string() #else null #end;
            __self__.truncate = #if !macro function(_pid:GoInt):Void _rb.truncate(_pid) #else null #end;
            __self__.unreadByte = #if !macro function():stdgo.Error return _rb.unreadByte() #else null #end;
            __self__.unreadRune = #if !macro function():stdgo.Error return _rb.unreadRune() #else null #end;
            __self__.write = #if !macro function(_p:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : stdgo.Error; } return _rb.write(_p) #else null #end;
            __self__.writeByte = #if !macro function(_c:GoUInt8):stdgo.Error return _rb.writeByte(_c) #else null #end;
            __self__.writeRune = #if !macro function(_new:GoInt32):{ var _0 : GoInt; var _1 : stdgo.Error; } return _rb.writeRune(_new) #else null #end;
            __self__.writeString = #if !macro function(__0:GoString):{ var _0 : GoInt; var _1 : stdgo.Error; } return _rb.writeString(__0) #else null #end;
            __self__.writeTo = #if !macro function(_w:Writer):{ var _0 : GoInt64; var _1 : stdgo.Error; } return _rb.writeTo(_w) #else null #end;
            __self__._empty = #if !macro function():Bool return _rb._empty() #else null #end;
            __self__._grow = #if !macro function(_pid:GoInt):GoInt return _rb._grow(_pid) #else null #end;
            __self__._readSlice = #if !macro function(_c:GoUInt8):{ var _0 : Slice<GoUInt8>; var _1 : stdgo.Error; } return _rb._readSlice(_c) #else null #end;
            __self__._tryGrowByReslice = #if !macro function(_pid:GoInt):{ var _0 : GoInt; var _1 : Bool; } return _rb._tryGrowByReslice(_pid) #else null #end;
            __self__;
        });
    }
function testReadAtLeastWithDataAndError(_t:stdgo.testing.Testing.T):Void {
        var _rb:T_dataAndErrorBuffer = (({  } : stdgo.io_test.Io_test.T_dataAndErrorBuffer));
        _rb._err = stdgo.fmt.Fmt.errorf(((Go.str("fake error") : GoString)));
        _testReadAtLeast(_t, {
            final __self__ = new stdgo.io_test.Io_test.T_dataAndErrorBuffer_wrapper(_rb);
            __self__.bytes = #if !macro function():Slice<GoUInt8> return _rb.bytes() #else null #end;
            __self__.cap_ = #if !macro function():GoInt return _rb.cap_() #else null #end;
            __self__.grow = #if !macro function(_pid:GoInt):Void _rb.grow(_pid) #else null #end;
            __self__.len = #if !macro function():GoInt return _rb.len() #else null #end;
            __self__.next = #if !macro function(_pid:GoInt):Slice<GoUInt8> return _rb.next(_pid) #else null #end;
            __self__.read = #if !macro function(_p:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : stdgo.Error; } return _rb.read(_p) #else null #end;
            __self__.readByte = #if !macro function():{ var _0 : GoUInt8; var _1 : stdgo.Error; } return _rb.readByte() #else null #end;
            __self__.readBytes = #if !macro function(_c:GoUInt8):{ var _0 : Slice<GoUInt8>; var _1 : stdgo.Error; } return _rb.readBytes(_c) #else null #end;
            __self__.readFrom = #if !macro function(_r:Reader):{ var _0 : GoInt64; var _1 : stdgo.Error; } return _rb.readFrom(_r) #else null #end;
            __self__.readRune = #if !macro function():{ var _0 : GoInt32; var _1 : GoInt; var _2 : stdgo.Error; } return _rb.readRune() #else null #end;
            __self__.readString = #if !macro function(_c:GoUInt8):{ var _0 : GoString; var _1 : stdgo.Error; } return _rb.readString(_c) #else null #end;
            __self__.reset = #if !macro function():Void _rb.reset() #else null #end;
            __self__.string = #if !macro function():GoString return _rb.string() #else null #end;
            __self__.truncate = #if !macro function(_pid:GoInt):Void _rb.truncate(_pid) #else null #end;
            __self__.unreadByte = #if !macro function():stdgo.Error return _rb.unreadByte() #else null #end;
            __self__.unreadRune = #if !macro function():stdgo.Error return _rb.unreadRune() #else null #end;
            __self__.write = #if !macro function(_p:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : stdgo.Error; } return _rb.write(_p) #else null #end;
            __self__.writeByte = #if !macro function(_c:GoUInt8):stdgo.Error return _rb.writeByte(_c) #else null #end;
            __self__.writeRune = #if !macro function(_new:GoInt32):{ var _0 : GoInt; var _1 : stdgo.Error; } return _rb.writeRune(_new) #else null #end;
            __self__.writeString = #if !macro function(__0:GoString):{ var _0 : GoInt; var _1 : stdgo.Error; } return _rb.writeString(__0) #else null #end;
            __self__.writeTo = #if !macro function(_w:Writer):{ var _0 : GoInt64; var _1 : stdgo.Error; } return _rb.writeTo(_w) #else null #end;
            __self__._empty = #if !macro function():Bool return _rb._empty() #else null #end;
            __self__._grow = #if !macro function(_pid:GoInt):GoInt return _rb._grow(_pid) #else null #end;
            __self__._readSlice = #if !macro function(_c:GoUInt8):{ var _0 : Slice<GoUInt8>; var _1 : stdgo.Error; } return _rb._readSlice(_c) #else null #end;
            __self__._tryGrowByReslice = #if !macro function(_pid:GoInt):{ var _0 : GoInt; var _1 : Bool; } return _rb._tryGrowByReslice(_pid) #else null #end;
            __self__;
        });
    }
function _testReadAtLeast(_t:stdgo.testing.Testing.T, _rb:ReadWriter):Void {
        _rb.write(((((Go.str("0123") : GoString)) : Slice<GoByte>)));
        var _buf = new Slice<GoUInt8>(((((2 : GoInt)) : GoInt)).toBasic(), 0, ...[for (i in 0 ... ((((2 : GoInt)) : GoInt)).toBasic()) ((0 : GoUInt8))]);
        var __tmp__ = readAtLeast(_rb, _buf, ((2 : GoInt))), _n:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.error(Go.toInterface(_err));
        };
        if (_n != ((2 : GoInt))) {
            _t.errorf(((Go.str("expected to have read 2 bytes, got %v") : GoString)), Go.toInterface(_n));
        };
        {
            var __tmp__ = readAtLeast(_rb, _buf, ((4 : GoInt)));
            _n = __tmp__._0;
            _err = __tmp__._1;
        };
        if (_err != errShortBuffer) {
            _t.errorf(((Go.str("expected ErrShortBuffer got %v") : GoString)), Go.toInterface(_err));
        };
        if (_n != ((0 : GoInt))) {
            _t.errorf(((Go.str("expected to have read 0 bytes, got %v") : GoString)), Go.toInterface(_n));
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
            _t.errorf(((Go.str("expected to have read 2 bytes, got %v") : GoString)), Go.toInterface(_n));
        };
        {
            var __tmp__ = readAtLeast(_rb, _buf, ((2 : GoInt)));
            _n = __tmp__._0;
            _err = __tmp__._1;
        };
        if (_err != eof) {
            _t.errorf(((Go.str("expected EOF, got %v") : GoString)), Go.toInterface(_err));
        };
        if (_n != ((0 : GoInt))) {
            _t.errorf(((Go.str("expected to have read 0 bytes, got %v") : GoString)), Go.toInterface(_n));
        };
        _rb.write(((((Go.str("4") : GoString)) : Slice<GoByte>)));
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
                { value : ((null : stdgo.io_test.Io_test.T_dataAndErrorBuffer)), ok : false };
            }, _rb = __tmp__.value, _ok = __tmp__.ok;
            if (_ok && (_rb._err != eof)) {
                _want = _rb._err;
            };
        };
        if (_err != _want) {
            _t.errorf(((Go.str("expected %v, got %v") : GoString)), Go.toInterface(_want), Go.toInterface(_err));
        };
        if (_n != ((1 : GoInt))) {
            _t.errorf(((Go.str("expected to have read 1 bytes, got %v") : GoString)), Go.toInterface(_n));
        };
    }
function testTeeReader(_t:stdgo.testing.Testing.T):Void {
        var _src = ((((Go.str("hello, world") : GoString)) : Slice<GoByte>));
        var _dst = new Slice<GoUInt8>((((_src != null ? _src.length : ((0 : GoInt))) : GoInt)).toBasic(), 0, ...[for (i in 0 ... (((_src != null ? _src.length : ((0 : GoInt))) : GoInt)).toBasic()) ((0 : GoUInt8))]);
        var _rb = stdgo.bytes.Bytes.newBuffer(_src);
        var _wb = (({  } : stdgo.bytes.Bytes.Buffer));
        var _r:Reader = teeReader({
            final __self__ = new stdgo.bytes.Bytes.Buffer_wrapper(_rb);
            __self__.bytes = #if !macro function():Slice<GoUInt8> return _rb.bytes() #else null #end;
            __self__.cap_ = #if !macro function():GoInt return _rb.cap_() #else null #end;
            __self__.grow = #if !macro function(_pid:GoInt):Void _rb.grow(_pid) #else null #end;
            __self__.len = #if !macro function():GoInt return _rb.len() #else null #end;
            __self__.next = #if !macro function(_pid:GoInt):Slice<GoUInt8> return _rb.next(_pid) #else null #end;
            __self__.read = #if !macro function(_p:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : stdgo.Error; } return _rb.read(_p) #else null #end;
            __self__.readByte = #if !macro function():{ var _0 : GoUInt8; var _1 : stdgo.Error; } return _rb.readByte() #else null #end;
            __self__.readBytes = #if !macro function(_c:GoUInt8):{ var _0 : Slice<GoUInt8>; var _1 : stdgo.Error; } return _rb.readBytes(_c) #else null #end;
            __self__.readFrom = #if !macro function(_r_:Reader):{ var _0 : GoInt64; var _1 : stdgo.Error; } return _rb.readFrom(_r_) #else null #end;
            __self__.readRune = #if !macro function():{ var _0 : GoInt32; var _1 : GoInt; var _2 : stdgo.Error; } return _rb.readRune() #else null #end;
            __self__.readString = #if !macro function(_c:GoUInt8):{ var _0 : GoString; var _1 : stdgo.Error; } return _rb.readString(_c) #else null #end;
            __self__.reset = #if !macro function():Void _rb.reset() #else null #end;
            __self__.string = #if !macro function():GoString return _rb.string() #else null #end;
            __self__.truncate = #if !macro function(_pid:GoInt):Void _rb.truncate(_pid) #else null #end;
            __self__.unreadByte = #if !macro function():stdgo.Error return _rb.unreadByte() #else null #end;
            __self__.unreadRune = #if !macro function():stdgo.Error return _rb.unreadRune() #else null #end;
            __self__.write = #if !macro function(_p:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : stdgo.Error; } return _rb.write(_p) #else null #end;
            __self__.writeByte = #if !macro function(_c:GoUInt8):stdgo.Error return _rb.writeByte(_c) #else null #end;
            __self__.writeRune = #if !macro function(_new:GoInt32):{ var _0 : GoInt; var _1 : stdgo.Error; } return _rb.writeRune(_new) #else null #end;
            __self__.writeString = #if !macro function(__0:GoString):{ var _0 : GoInt; var _1 : stdgo.Error; } return _rb.writeString(__0) #else null #end;
            __self__.writeTo = #if !macro function(_w:Writer):{ var _0 : GoInt64; var _1 : stdgo.Error; } return _rb.writeTo(_w) #else null #end;
            __self__._empty = #if !macro function():Bool return _rb._empty() #else null #end;
            __self__._grow = #if !macro function(_pid:GoInt):GoInt return _rb._grow(_pid) #else null #end;
            __self__._readSlice = #if !macro function(_c:GoUInt8):{ var _0 : Slice<GoUInt8>; var _1 : stdgo.Error; } return _rb._readSlice(_c) #else null #end;
            __self__._tryGrowByReslice = #if !macro function(_pid:GoInt):{ var _0 : GoInt; var _1 : Bool; } return _rb._tryGrowByReslice(_pid) #else null #end;
            __self__;
        }, {
            final __self__ = new stdgo.bytes.Bytes.Buffer_wrapper(_wb);
            __self__.bytes = #if !macro function():Slice<GoUInt8> return _wb.bytes() #else null #end;
            __self__.cap_ = #if !macro function():GoInt return _wb.cap_() #else null #end;
            __self__.grow = #if !macro function(_pid:GoInt):Void _wb.grow(_pid) #else null #end;
            __self__.len = #if !macro function():GoInt return _wb.len() #else null #end;
            __self__.next = #if !macro function(_pid:GoInt):Slice<GoUInt8> return _wb.next(_pid) #else null #end;
            __self__.read = #if !macro function(_p:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : stdgo.Error; } return _wb.read(_p) #else null #end;
            __self__.readByte = #if !macro function():{ var _0 : GoUInt8; var _1 : stdgo.Error; } return _wb.readByte() #else null #end;
            __self__.readBytes = #if !macro function(_c:GoUInt8):{ var _0 : Slice<GoUInt8>; var _1 : stdgo.Error; } return _wb.readBytes(_c) #else null #end;
            __self__.readFrom = #if !macro function(_r_:Reader):{ var _0 : GoInt64; var _1 : stdgo.Error; } return _wb.readFrom(_r_) #else null #end;
            __self__.readRune = #if !macro function():{ var _0 : GoInt32; var _1 : GoInt; var _2 : stdgo.Error; } return _wb.readRune() #else null #end;
            __self__.readString = #if !macro function(_c:GoUInt8):{ var _0 : GoString; var _1 : stdgo.Error; } return _wb.readString(_c) #else null #end;
            __self__.reset = #if !macro function():Void _wb.reset() #else null #end;
            __self__.string = #if !macro function():GoString return _wb.string() #else null #end;
            __self__.truncate = #if !macro function(_pid:GoInt):Void _wb.truncate(_pid) #else null #end;
            __self__.unreadByte = #if !macro function():stdgo.Error return _wb.unreadByte() #else null #end;
            __self__.unreadRune = #if !macro function():stdgo.Error return _wb.unreadRune() #else null #end;
            __self__.write = #if !macro function(_p:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : stdgo.Error; } return _wb.write(_p) #else null #end;
            __self__.writeByte = #if !macro function(_c:GoUInt8):stdgo.Error return _wb.writeByte(_c) #else null #end;
            __self__.writeRune = #if !macro function(_new:GoInt32):{ var _0 : GoInt; var _1 : stdgo.Error; } return _wb.writeRune(_new) #else null #end;
            __self__.writeString = #if !macro function(__0:GoString):{ var _0 : GoInt; var _1 : stdgo.Error; } return _wb.writeString(__0) #else null #end;
            __self__.writeTo = #if !macro function(_w:Writer):{ var _0 : GoInt64; var _1 : stdgo.Error; } return _wb.writeTo(_w) #else null #end;
            __self__._empty = #if !macro function():Bool return _wb._empty() #else null #end;
            __self__._grow = #if !macro function(_pid:GoInt):GoInt return _wb._grow(_pid) #else null #end;
            __self__._readSlice = #if !macro function(_c:GoUInt8):{ var _0 : Slice<GoUInt8>; var _1 : stdgo.Error; } return _wb._readSlice(_c) #else null #end;
            __self__._tryGrowByReslice = #if !macro function(_pid:GoInt):{ var _0 : GoInt; var _1 : Bool; } return _wb._tryGrowByReslice(_pid) #else null #end;
            __self__;
        });
        {
            var __tmp__ = readFull(_r, _dst), _n:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if ((_err != null) || (_n != (_src != null ? _src.length : ((0 : GoInt))))) {
                _t.fatalf(((Go.str("ReadFull(r, dst) = %d, %v; want %d, nil") : GoString)), Go.toInterface(_n), Go.toInterface(_err), Go.toInterface((_src != null ? _src.length : ((0 : GoInt)))));
            };
        };
        if (!stdgo.bytes.Bytes.equal(_dst, _src)) {
            _t.errorf(((Go.str("bytes read = %q want %q") : GoString)), Go.toInterface(_dst), Go.toInterface(_src));
        };
        if (!stdgo.bytes.Bytes.equal(_wb.bytes(), _src)) {
            _t.errorf(((Go.str("bytes written = %q want %q") : GoString)), Go.toInterface(_wb.bytes()), Go.toInterface(_src));
        };
        {
            var __tmp__ = _r.read(_dst), _n:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if ((_n != ((0 : GoInt))) || (_err != eof)) {
                _t.errorf(((Go.str("r.Read at EOF = %d, %v want 0, EOF") : GoString)), Go.toInterface(_n), Go.toInterface(_err));
            };
        };
        _rb = stdgo.bytes.Bytes.newBuffer(_src);
        var __tmp__ = pipe(), _pr:Ref<PipeReader> = __tmp__._0, _pw:Ref<PipeWriter> = __tmp__._1;
        _pr.close();
        _r = teeReader({
            final __self__ = new stdgo.bytes.Bytes.Buffer_wrapper(_rb);
            __self__.bytes = #if !macro function():Slice<GoUInt8> return _rb.bytes() #else null #end;
            __self__.cap_ = #if !macro function():GoInt return _rb.cap_() #else null #end;
            __self__.grow = #if !macro function(_pid:GoInt):Void _rb.grow(_pid) #else null #end;
            __self__.len = #if !macro function():GoInt return _rb.len() #else null #end;
            __self__.next = #if !macro function(_pid:GoInt):Slice<GoUInt8> return _rb.next(_pid) #else null #end;
            __self__.read = #if !macro function(_p:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : stdgo.Error; } return _rb.read(_p) #else null #end;
            __self__.readByte = #if !macro function():{ var _0 : GoUInt8; var _1 : stdgo.Error; } return _rb.readByte() #else null #end;
            __self__.readBytes = #if !macro function(_c:GoUInt8):{ var _0 : Slice<GoUInt8>; var _1 : stdgo.Error; } return _rb.readBytes(_c) #else null #end;
            __self__.readFrom = #if !macro function(_r_:Reader):{ var _0 : GoInt64; var _1 : stdgo.Error; } return _rb.readFrom(_r_) #else null #end;
            __self__.readRune = #if !macro function():{ var _0 : GoInt32; var _1 : GoInt; var _2 : stdgo.Error; } return _rb.readRune() #else null #end;
            __self__.readString = #if !macro function(_c:GoUInt8):{ var _0 : GoString; var _1 : stdgo.Error; } return _rb.readString(_c) #else null #end;
            __self__.reset = #if !macro function():Void _rb.reset() #else null #end;
            __self__.string = #if !macro function():GoString return _rb.string() #else null #end;
            __self__.truncate = #if !macro function(_pid:GoInt):Void _rb.truncate(_pid) #else null #end;
            __self__.unreadByte = #if !macro function():stdgo.Error return _rb.unreadByte() #else null #end;
            __self__.unreadRune = #if !macro function():stdgo.Error return _rb.unreadRune() #else null #end;
            __self__.write = #if !macro function(_p:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : stdgo.Error; } return _rb.write(_p) #else null #end;
            __self__.writeByte = #if !macro function(_c:GoUInt8):stdgo.Error return _rb.writeByte(_c) #else null #end;
            __self__.writeRune = #if !macro function(_new:GoInt32):{ var _0 : GoInt; var _1 : stdgo.Error; } return _rb.writeRune(_new) #else null #end;
            __self__.writeString = #if !macro function(__0:GoString):{ var _0 : GoInt; var _1 : stdgo.Error; } return _rb.writeString(__0) #else null #end;
            __self__.writeTo = #if !macro function(_w:Writer):{ var _0 : GoInt64; var _1 : stdgo.Error; } return _rb.writeTo(_w) #else null #end;
            __self__._empty = #if !macro function():Bool return _rb._empty() #else null #end;
            __self__._grow = #if !macro function(_pid:GoInt):GoInt return _rb._grow(_pid) #else null #end;
            __self__._readSlice = #if !macro function(_c:GoUInt8):{ var _0 : Slice<GoUInt8>; var _1 : stdgo.Error; } return _rb._readSlice(_c) #else null #end;
            __self__._tryGrowByReslice = #if !macro function(_pid:GoInt):{ var _0 : GoInt; var _1 : Bool; } return _rb._tryGrowByReslice(_pid) #else null #end;
            __self__;
        }, {
            final __self__ = new PipeWriter_wrapper(_pw);
            __self__.close = #if !macro function():stdgo.Error return _pw.close() #else null #end;
            __self__.closeWithError = #if !macro function(__0:stdgo.Error):stdgo.Error return _pw.closeWithError(__0) #else null #end;
            __self__.write = #if !macro function(_p:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : stdgo.Error; } return _pw.write(_p) #else null #end;
            __self__;
        });
        {
            var __tmp__ = readFull(_r, _dst), _n:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if ((_n != ((0 : GoInt))) || (_err != errClosedPipe)) {
                _t.errorf(((Go.str("closed tee: ReadFull(r, dst) = %d, %v; want 0, EPIPE") : GoString)), Go.toInterface(_n), Go.toInterface(_err));
            };
        };
    }
function testSectionReader_ReadAt(_t:stdgo.testing.Testing.T):Void {
        var _dat:GoString = ((Go.str("a long sample data, 1234567890") : GoString));
        var _tests = ((new Slice<T__struct_1>(
0,
0,
(({ _data : (("" : GoString)), _off : ((0 : GoInt)), _n : ((0 : GoInt)), _bufLen : ((0 : GoInt)), _at : ((0 : GoInt)), _exp : (("" : GoString)), _err : ((null : stdgo.Error)) } : T__struct_1)),
(({ _data : (("" : GoString)), _off : ((0 : GoInt)), _n : ((0 : GoInt)), _bufLen : ((0 : GoInt)), _at : ((0 : GoInt)), _exp : (("" : GoString)), _err : ((null : stdgo.Error)) } : T__struct_1)),
(({ _data : (("" : GoString)), _off : ((0 : GoInt)), _n : ((0 : GoInt)), _bufLen : ((0 : GoInt)), _at : ((0 : GoInt)), _exp : (("" : GoString)), _err : ((null : stdgo.Error)) } : T__struct_1)),
(({ _data : (("" : GoString)), _off : ((0 : GoInt)), _n : ((0 : GoInt)), _bufLen : ((0 : GoInt)), _at : ((0 : GoInt)), _exp : (("" : GoString)), _err : ((null : stdgo.Error)) } : T__struct_1)),
(({ _data : (("" : GoString)), _off : ((0 : GoInt)), _n : ((0 : GoInt)), _bufLen : ((0 : GoInt)), _at : ((0 : GoInt)), _exp : (("" : GoString)), _err : ((null : stdgo.Error)) } : T__struct_1)),
(({ _data : (("" : GoString)), _off : ((0 : GoInt)), _n : ((0 : GoInt)), _bufLen : ((0 : GoInt)), _at : ((0 : GoInt)), _exp : (("" : GoString)), _err : ((null : stdgo.Error)) } : T__struct_1)),
(({ _data : (("" : GoString)), _off : ((0 : GoInt)), _n : ((0 : GoInt)), _bufLen : ((0 : GoInt)), _at : ((0 : GoInt)), _exp : (("" : GoString)), _err : ((null : stdgo.Error)) } : T__struct_1)),
(({ _data : (("" : GoString)), _off : ((0 : GoInt)), _n : ((0 : GoInt)), _bufLen : ((0 : GoInt)), _at : ((0 : GoInt)), _exp : (("" : GoString)), _err : ((null : stdgo.Error)) } : T__struct_1)),
(({ _data : (("" : GoString)), _off : ((0 : GoInt)), _n : ((0 : GoInt)), _bufLen : ((0 : GoInt)), _at : ((0 : GoInt)), _exp : (("" : GoString)), _err : ((null : stdgo.Error)) } : T__struct_1)),
(({ _data : (("" : GoString)), _off : ((0 : GoInt)), _n : ((0 : GoInt)), _bufLen : ((0 : GoInt)), _at : ((0 : GoInt)), _exp : (("" : GoString)), _err : ((null : stdgo.Error)) } : T__struct_1)),
(({ _data : (("" : GoString)), _off : ((0 : GoInt)), _n : ((0 : GoInt)), _bufLen : ((0 : GoInt)), _at : ((0 : GoInt)), _exp : (("" : GoString)), _err : ((null : stdgo.Error)) } : T__struct_1)),
(({ _data : (("" : GoString)), _off : ((0 : GoInt)), _n : ((0 : GoInt)), _bufLen : ((0 : GoInt)), _at : ((0 : GoInt)), _exp : (("" : GoString)), _err : ((null : stdgo.Error)) } : T__struct_1))) : Slice<T__struct_1>));
        for (_i => _tt in _tests) {
            var _r = stdgo.strings.Strings.newReader(_tt._data);
            var _s = newSectionReader({
                final __self__ = new stdgo.strings.Strings.Reader_wrapper(_r);
                __self__.len = #if !macro function():GoInt return _r.len() #else null #end;
                __self__.read = #if !macro function(_p:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : stdgo.Error; } return _r.read(_p) #else null #end;
                __self__.readAt = #if !macro function(_p:Slice<GoUInt8>, _off:GoInt64):{ var _0 : GoInt; var _1 : stdgo.Error; } return _r.readAt(_p, _off) #else null #end;
                __self__.readByte = #if !macro function():{ var _0 : GoUInt8; var _1 : stdgo.Error; } return _r.readByte() #else null #end;
                __self__.readRune = #if !macro function():{ var _0 : GoInt32; var _1 : GoInt; var _2 : stdgo.Error; } return _r.readRune() #else null #end;
                __self__.reset = #if !macro function(__0:GoString):Void _r.reset(__0) #else null #end;
                __self__.seek = #if !macro function(_offset:GoInt64, _whence:GoInt):{ var _0 : GoInt64; var _1 : stdgo.Error; } return _r.seek(_offset, _whence) #else null #end;
                __self__.size = #if !macro function():GoInt64 return _r.size() #else null #end;
                __self__.unreadByte = #if !macro function():stdgo.Error return _r.unreadByte() #else null #end;
                __self__.unreadRune = #if !macro function():stdgo.Error return _r.unreadRune() #else null #end;
                __self__.writeTo = #if !macro function(_w:Writer):{ var _0 : GoInt64; var _1 : stdgo.Error; } return _r.writeTo(_w) #else null #end;
                __self__;
            }, ((_tt._off : GoInt64)), ((_tt._n : GoInt64)));
            var _buf = new Slice<GoUInt8>(((_tt._bufLen : GoInt)).toBasic(), 0, ...[for (i in 0 ... ((_tt._bufLen : GoInt)).toBasic()) ((0 : GoUInt8))]);
            {
                var __tmp__ = _s.readAt(_buf, ((_tt._at : GoInt64))), _n:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (((_n != (_tt._exp != null ? _tt._exp.length : ((0 : GoInt)))) || (((((_buf.__slice__(0, _n) : Slice<GoUInt8>)) : GoString)) != _tt._exp)) || (_err != _tt._err)) {
                    _t.fatalf(((Go.str("%d: ReadAt(%d) = %q, %v; expected %q, %v") : GoString)), Go.toInterface(_i), Go.toInterface(_tt._at), Go.toInterface(((_buf.__slice__(0, _n) : Slice<GoUInt8>))), Go.toInterface(_err), Go.toInterface(_tt._exp), Go.toInterface(_tt._err));
                };
            };
        };
    }
function testSectionReader_Seek(_t:stdgo.testing.Testing.T):Void {
        var _br = stdgo.bytes.Bytes.newReader(((((Go.str("foo") : GoString)) : Slice<GoByte>)));
        var _sr = newSectionReader({
            final __self__ = new stdgo.bytes.Bytes.Reader_wrapper(_br);
            __self__.len = #if !macro function():GoInt return _br.len() #else null #end;
            __self__.read = #if !macro function(_p:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : stdgo.Error; } return _br.read(_p) #else null #end;
            __self__.readAt = #if !macro function(_p:Slice<GoUInt8>, _off:GoInt64):{ var _0 : GoInt; var _1 : stdgo.Error; } return _br.readAt(_p, _off) #else null #end;
            __self__.readByte = #if !macro function():{ var _0 : GoUInt8; var _1 : stdgo.Error; } return _br.readByte() #else null #end;
            __self__.readRune = #if !macro function():{ var _0 : GoInt32; var _1 : GoInt; var _2 : stdgo.Error; } return _br.readRune() #else null #end;
            __self__.reset = #if !macro function(_p:Slice<GoUInt8>):Void _br.reset(_p) #else null #end;
            __self__.seek = #if !macro function(_offset:GoInt64, _whence:GoInt):{ var _0 : GoInt64; var _1 : stdgo.Error; } return _br.seek(_offset, _whence) #else null #end;
            __self__.size = #if !macro function():GoInt64 return _br.size() #else null #end;
            __self__.unreadByte = #if !macro function():stdgo.Error return _br.unreadByte() #else null #end;
            __self__.unreadRune = #if !macro function():stdgo.Error return _br.unreadRune() #else null #end;
            __self__.writeTo = #if !macro function(_w:Writer):{ var _0 : GoInt64; var _1 : stdgo.Error; } return _br.writeTo(_w) #else null #end;
            __self__;
        }, ((0 : GoInt64)), (((((Go.str("foo") : GoString)) != null ? ((Go.str("foo") : GoString)).length : ((0 : GoInt))) : GoInt64)));
        for (_0 => _whence in ((new Slice<GoInt>(0, 0, ((0 : GoInt)), ((1 : GoInt)), ((2 : GoInt))) : Slice<GoInt>))) {
            {
                var _offset:GoInt64 = ((((-3 : GoInt64)) : GoInt64));
                Go.cfor(_offset <= ((4 : GoInt64)), _offset++, {
                    var __tmp__ = _br.seek(_offset, _whence), _brOff:GoInt64 = __tmp__._0, _brErr:stdgo.Error = __tmp__._1;
                    var __tmp__ = _sr.seek(_offset, _whence), _srOff:GoInt64 = __tmp__._0, _srErr:stdgo.Error = __tmp__._1;
                    if (((_brErr != null) != (_srErr != null)) || (_brOff != _srOff)) {
                        _t.errorf(((Go.str("For whence %d, offset %d: bytes.Reader.Seek = (%v, %v) != SectionReader.Seek = (%v, %v)") : GoString)), Go.toInterface(_whence), Go.toInterface(_offset), Go.toInterface(_brOff), Go.toInterface(_brErr), Go.toInterface(_srErr), Go.toInterface(_srOff));
                    };
                });
            };
        };
        var __tmp__ = _sr.seek(((100 : GoInt64)), ((0 : GoInt))), _got:GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if ((_err != null) || (_got != ((100 : GoInt64)))) {
            _t.errorf(((Go.str("Seek = %v, %v; want 100, nil") : GoString)), Go.toInterface(_got), Go.toInterface(_err));
        };
        var __tmp__ = _sr.read(new Slice<GoUInt8>(((((10 : GoInt)) : GoInt)).toBasic(), 0, ...[for (i in 0 ... ((((10 : GoInt)) : GoInt)).toBasic()) ((0 : GoUInt8))])), _n:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if ((_n != ((0 : GoInt))) || (_err != eof)) {
            _t.errorf(((Go.str("Read = %v, %v; want 0, EOF") : GoString)), Go.toInterface(_n), Go.toInterface(_err));
        };
    }
function testSectionReader_Size(_t:stdgo.testing.Testing.T):Void {
        var _tests = ((new Slice<T__struct_2>(0, 0, (({ _data : ((Go.str("a long sample data, 1234567890") : GoString)), _want : ((30 : GoInt64)) } : T__struct_2)), (({ _data : ((Go.str() : GoString)), _want : ((0 : GoInt64)) } : T__struct_2))) : Slice<T__struct_2>));
        for (_0 => _tt in _tests) {
            var _r = stdgo.strings.Strings.newReader(_tt._data);
            var _sr = newSectionReader({
                final __self__ = new stdgo.strings.Strings.Reader_wrapper(_r);
                __self__.len = #if !macro function():GoInt return _r.len() #else null #end;
                __self__.read = #if !macro function(_p:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : stdgo.Error; } return _r.read(_p) #else null #end;
                __self__.readAt = #if !macro function(_p:Slice<GoUInt8>, _off:GoInt64):{ var _0 : GoInt; var _1 : stdgo.Error; } return _r.readAt(_p, _off) #else null #end;
                __self__.readByte = #if !macro function():{ var _0 : GoUInt8; var _1 : stdgo.Error; } return _r.readByte() #else null #end;
                __self__.readRune = #if !macro function():{ var _0 : GoInt32; var _1 : GoInt; var _2 : stdgo.Error; } return _r.readRune() #else null #end;
                __self__.reset = #if !macro function(__0:GoString):Void _r.reset(__0) #else null #end;
                __self__.seek = #if !macro function(_offset:GoInt64, _whence:GoInt):{ var _0 : GoInt64; var _1 : stdgo.Error; } return _r.seek(_offset, _whence) #else null #end;
                __self__.size = #if !macro function():GoInt64 return _r.size() #else null #end;
                __self__.unreadByte = #if !macro function():stdgo.Error return _r.unreadByte() #else null #end;
                __self__.unreadRune = #if !macro function():stdgo.Error return _r.unreadRune() #else null #end;
                __self__.writeTo = #if !macro function(_w:Writer):{ var _0 : GoInt64; var _1 : stdgo.Error; } return _r.writeTo(_w) #else null #end;
                __self__;
            }, ((0 : GoInt64)), (((_tt._data != null ? _tt._data.length : ((0 : GoInt))) : GoInt64)));
            {
                var _got:GoInt64 = _sr.size();
                if (_got != _tt._want) {
                    _t.errorf(((Go.str("Size = %v; want %v") : GoString)), Go.toInterface(_got), Go.toInterface(_tt._want));
                };
            };
        };
    }
function testSectionReader_Max(_t:stdgo.testing.Testing.T):Void {
        var _r = stdgo.strings.Strings.newReader(((Go.str("abcdef") : GoString)));
        {};
        var _sr = newSectionReader({
            final __self__ = new stdgo.strings.Strings.Reader_wrapper(_r);
            __self__.len = #if !macro function():GoInt return _r.len() #else null #end;
            __self__.read = #if !macro function(_p:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : stdgo.Error; } return _r.read(_p) #else null #end;
            __self__.readAt = #if !macro function(_p:Slice<GoUInt8>, _off:GoInt64):{ var _0 : GoInt; var _1 : stdgo.Error; } return _r.readAt(_p, _off) #else null #end;
            __self__.readByte = #if !macro function():{ var _0 : GoUInt8; var _1 : stdgo.Error; } return _r.readByte() #else null #end;
            __self__.readRune = #if !macro function():{ var _0 : GoInt32; var _1 : GoInt; var _2 : stdgo.Error; } return _r.readRune() #else null #end;
            __self__.reset = #if !macro function(__0:GoString):Void _r.reset(__0) #else null #end;
            __self__.seek = #if !macro function(_offset:GoInt64, _whence:GoInt):{ var _0 : GoInt64; var _1 : stdgo.Error; } return _r.seek(_offset, _whence) #else null #end;
            __self__.size = #if !macro function():GoInt64 return _r.size() #else null #end;
            __self__.unreadByte = #if !macro function():stdgo.Error return _r.unreadByte() #else null #end;
            __self__.unreadRune = #if !macro function():stdgo.Error return _r.unreadRune() #else null #end;
            __self__.writeTo = #if !macro function(_w:Writer):{ var _0 : GoInt64; var _1 : stdgo.Error; } return _r.writeTo(_w) #else null #end;
            __self__;
        }, ((3 : GoInt64)), (("9223372036854775807" : GoInt64)));
        var __tmp__ = _sr.read(new Slice<GoUInt8>(((((3 : GoInt)) : GoInt)).toBasic(), 0, ...[for (i in 0 ... ((((3 : GoInt)) : GoInt)).toBasic()) ((0 : GoUInt8))])), _n:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if ((_n != ((3 : GoInt))) || (_err != null)) {
            _t.errorf(((Go.str("Read = %v %v, want 3, nil") : GoString)), Go.toInterface(_n), Go.toInterface(_err));
        };
        {
            var __tmp__ = _sr.read(new Slice<GoUInt8>(((((3 : GoInt)) : GoInt)).toBasic(), 0, ...[for (i in 0 ... ((((3 : GoInt)) : GoInt)).toBasic()) ((0 : GoUInt8))]));
            _n = __tmp__._0;
            _err = __tmp__._1;
        };
        if ((_n != ((0 : GoInt))) || (_err != eof)) {
            _t.errorf(((Go.str("Read = %v, %v, want 0, EOF") : GoString)), Go.toInterface(_n), Go.toInterface(_err));
        };
    }
function testCopyLargeWriter(_t:stdgo.testing.Testing.T):Void {
        var _want:stdgo.Error = errInvalidWrite;
        var _rb = (({  } : stdgo.io_test.Io_test.Buffer));
        var _wb:stdgo.io_test.Io_test.T_largeWriter = ((new stdgo.io_test.Io_test.T_largeWriter() : stdgo.io_test.Io_test.T_largeWriter));
        _rb.writeString(((Go.str("hello, world.") : GoString)));
        {
            var __tmp__ = copy({
                final __self__ = new stdgo.io_test.Io_test.T_largeWriter_wrapper(_wb);
                __self__.write = #if !macro function(_p:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : stdgo.Error; } return _wb.write(_p) #else null #end;
                __self__;
            }, {
                final __self__ = new stdgo.io_test.Io_test.Buffer_wrapper(_rb);
                __self__.bytes = #if !macro function():Slice<GoUInt8> return _rb.bytes() #else null #end;
                __self__.cap_ = #if !macro function():GoInt return _rb.cap_() #else null #end;
                __self__.grow = #if !macro function(_pid:GoInt):Void _rb.grow(_pid) #else null #end;
                __self__.len = #if !macro function():GoInt return _rb.len() #else null #end;
                __self__.next = #if !macro function(_pid:GoInt):Slice<GoUInt8> return _rb.next(_pid) #else null #end;
                __self__.read = #if !macro function(_p:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : stdgo.Error; } return _rb.read(_p) #else null #end;
                __self__.readByte = #if !macro function():{ var _0 : GoUInt8; var _1 : stdgo.Error; } return _rb.readByte() #else null #end;
                __self__.readBytes = #if !macro function(_c:GoUInt8):{ var _0 : Slice<GoUInt8>; var _1 : stdgo.Error; } return _rb.readBytes(_c) #else null #end;
                __self__.readRune = #if !macro function():{ var _0 : GoInt32; var _1 : GoInt; var _2 : stdgo.Error; } return _rb.readRune() #else null #end;
                __self__.readString = #if !macro function(_c:GoUInt8):{ var _0 : GoString; var _1 : stdgo.Error; } return _rb.readString(_c) #else null #end;
                __self__.reset = #if !macro function():Void _rb.reset() #else null #end;
                __self__.string = #if !macro function():GoString return _rb.string() #else null #end;
                __self__.truncate = #if !macro function(_pid:GoInt):Void _rb.truncate(_pid) #else null #end;
                __self__.unreadByte = #if !macro function():stdgo.Error return _rb.unreadByte() #else null #end;
                __self__.unreadRune = #if !macro function():stdgo.Error return _rb.unreadRune() #else null #end;
                __self__.write = #if !macro function(_p:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : stdgo.Error; } return _rb.write(_p) #else null #end;
                __self__.writeByte = #if !macro function(_c:GoUInt8):stdgo.Error return _rb.writeByte(_c) #else null #end;
                __self__.writeRune = #if !macro function(_new:GoInt32):{ var _0 : GoInt; var _1 : stdgo.Error; } return _rb.writeRune(_new) #else null #end;
                __self__.writeString = #if !macro function(__0:GoString):{ var _0 : GoInt; var _1 : stdgo.Error; } return _rb.writeString(__0) #else null #end;
                __self__._empty = #if !macro function():Bool return _rb._empty() #else null #end;
                __self__._grow = #if !macro function(_pid:GoInt):GoInt return _rb._grow(_pid) #else null #end;
                __self__._readSlice = #if !macro function(_c:GoUInt8):{ var _0 : Slice<GoUInt8>; var _1 : stdgo.Error; } return _rb._readSlice(_c) #else null #end;
                __self__._tryGrowByReslice = #if !macro function(_pid:GoInt):{ var _0 : GoInt; var _1 : Bool; } return _rb._tryGrowByReslice(_pid) #else null #end;
                __self__;
            }), _0:GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != _want) {
                _t.errorf(((Go.str("Copy error: got %v, want %v") : GoString)), Go.toInterface(_err), Go.toInterface(_want));
            };
        };
        _want = stdgo.errors.Errors.new_(((Go.str("largeWriterError") : GoString)));
        _rb = (({  } : stdgo.io_test.Io_test.Buffer));
        _wb = (({ _err : _want } : stdgo.io_test.Io_test.T_largeWriter));
        _rb.writeString(((Go.str("hello, world.") : GoString)));
        {
            var __tmp__ = copy({
                final __self__ = new stdgo.io_test.Io_test.T_largeWriter_wrapper(_wb);
                __self__.write = #if !macro function(_p:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : stdgo.Error; } return _wb.write(_p) #else null #end;
                __self__;
            }, {
                final __self__ = new stdgo.io_test.Io_test.Buffer_wrapper(_rb);
                __self__.bytes = #if !macro function():Slice<GoUInt8> return _rb.bytes() #else null #end;
                __self__.cap_ = #if !macro function():GoInt return _rb.cap_() #else null #end;
                __self__.grow = #if !macro function(_pid:GoInt):Void _rb.grow(_pid) #else null #end;
                __self__.len = #if !macro function():GoInt return _rb.len() #else null #end;
                __self__.next = #if !macro function(_pid:GoInt):Slice<GoUInt8> return _rb.next(_pid) #else null #end;
                __self__.read = #if !macro function(_p:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : stdgo.Error; } return _rb.read(_p) #else null #end;
                __self__.readByte = #if !macro function():{ var _0 : GoUInt8; var _1 : stdgo.Error; } return _rb.readByte() #else null #end;
                __self__.readBytes = #if !macro function(_c:GoUInt8):{ var _0 : Slice<GoUInt8>; var _1 : stdgo.Error; } return _rb.readBytes(_c) #else null #end;
                __self__.readRune = #if !macro function():{ var _0 : GoInt32; var _1 : GoInt; var _2 : stdgo.Error; } return _rb.readRune() #else null #end;
                __self__.readString = #if !macro function(_c:GoUInt8):{ var _0 : GoString; var _1 : stdgo.Error; } return _rb.readString(_c) #else null #end;
                __self__.reset = #if !macro function():Void _rb.reset() #else null #end;
                __self__.string = #if !macro function():GoString return _rb.string() #else null #end;
                __self__.truncate = #if !macro function(_pid:GoInt):Void _rb.truncate(_pid) #else null #end;
                __self__.unreadByte = #if !macro function():stdgo.Error return _rb.unreadByte() #else null #end;
                __self__.unreadRune = #if !macro function():stdgo.Error return _rb.unreadRune() #else null #end;
                __self__.write = #if !macro function(_p:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : stdgo.Error; } return _rb.write(_p) #else null #end;
                __self__.writeByte = #if !macro function(_c:GoUInt8):stdgo.Error return _rb.writeByte(_c) #else null #end;
                __self__.writeRune = #if !macro function(_new:GoInt32):{ var _0 : GoInt; var _1 : stdgo.Error; } return _rb.writeRune(_new) #else null #end;
                __self__.writeString = #if !macro function(__0:GoString):{ var _0 : GoInt; var _1 : stdgo.Error; } return _rb.writeString(__0) #else null #end;
                __self__._empty = #if !macro function():Bool return _rb._empty() #else null #end;
                __self__._grow = #if !macro function(_pid:GoInt):GoInt return _rb._grow(_pid) #else null #end;
                __self__._readSlice = #if !macro function(_c:GoUInt8):{ var _0 : Slice<GoUInt8>; var _1 : stdgo.Error; } return _rb._readSlice(_c) #else null #end;
                __self__._tryGrowByReslice = #if !macro function(_pid:GoInt):{ var _0 : GoInt; var _1 : Bool; } return _rb._tryGrowByReslice(_pid) #else null #end;
                __self__;
            }), _1:GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != _want) {
                _t.errorf(((Go.str("Copy error: got %v, want %v") : GoString)), Go.toInterface(_err), Go.toInterface(_want));
            };
        };
    }
function testNopCloserWriterToForwarding(_t:stdgo.testing.Testing.T):Void {
        for (_0 => _tc in ((new GoArray<T__struct_3>((({ name : ((Go.str("not a WriterTo") : GoString)), _r : ((((null : Reader)) : Reader)) } : T__struct_3)), (({ name : ((Go.str("a WriterTo") : GoString)), _r : (({ reader : ((null : Reader)), writerTo : ((null : WriterTo)) } : T__struct_4)) } : T__struct_3))) : GoArray<T__struct_3>))) {
            var _nc:ReadCloser = nopCloser(_tc._r);
            var __tmp__ = try {
                { value : ((((_tc._r.__underlying__().value : Dynamic)) : WriterTo)), ok : true };
            } catch(_) {
                { value : ((null : WriterTo)), ok : false };
            }, _1 = __tmp__.value, _expected = __tmp__.ok;
            var __tmp__ = try {
                { value : ((((_nc.__underlying__().value : Dynamic)) : WriterTo)), ok : true };
            } catch(_) {
                { value : ((null : WriterTo)), ok : false };
            }, _2 = __tmp__.value, _got = __tmp__.ok;
            if (_expected != _got) {
                _t.errorf(((Go.str("NopCloser incorrectly forwards WriterTo for %s, got %t want %t") : GoString)), Go.toInterface(_tc.name), Go.toInterface(_got), Go.toInterface(_expected));
            };
        };
    }
function testMultiReader(_t:stdgo.testing.Testing.T):Void {
        var _mr:Reader = ((null : Reader));
        var _buf:Slice<GoByte> = ((null : Slice<GoUInt8>));
        var _nread:GoInt = ((0 : GoInt));
        var _withFooBar:(() -> Void) -> Void = function(_tests:() -> Void):Void {
            var _r1 = stdgo.strings.Strings.newReader(((Go.str("foo ") : GoString)));
            var _r2 = stdgo.strings.Strings.newReader(((Go.str() : GoString)));
            var _r3 = stdgo.strings.Strings.newReader(((Go.str("bar") : GoString)));
            _mr = multiReader({
                final __self__ = new stdgo.strings.Strings.Reader_wrapper(_r1);
                __self__.len = #if !macro function():GoInt return _r1.len() #else null #end;
                __self__.read = #if !macro function(_p:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : stdgo.Error; } return _r1.read(_p) #else null #end;
                __self__.readAt = #if !macro function(_p:Slice<GoUInt8>, _off:GoInt64):{ var _0 : GoInt; var _1 : stdgo.Error; } return _r1.readAt(_p, _off) #else null #end;
                __self__.readByte = #if !macro function():{ var _0 : GoUInt8; var _1 : stdgo.Error; } return _r1.readByte() #else null #end;
                __self__.readRune = #if !macro function():{ var _0 : GoInt32; var _1 : GoInt; var _2 : stdgo.Error; } return _r1.readRune() #else null #end;
                __self__.reset = #if !macro function(__0:GoString):Void _r1.reset(__0) #else null #end;
                __self__.seek = #if !macro function(_offset:GoInt64, _whence:GoInt):{ var _0 : GoInt64; var _1 : stdgo.Error; } return _r1.seek(_offset, _whence) #else null #end;
                __self__.size = #if !macro function():GoInt64 return _r1.size() #else null #end;
                __self__.unreadByte = #if !macro function():stdgo.Error return _r1.unreadByte() #else null #end;
                __self__.unreadRune = #if !macro function():stdgo.Error return _r1.unreadRune() #else null #end;
                __self__.writeTo = #if !macro function(_w:Writer):{ var _0 : GoInt64; var _1 : stdgo.Error; } return _r1.writeTo(_w) #else null #end;
                __self__;
            }, {
                final __self__ = new stdgo.strings.Strings.Reader_wrapper(_r2);
                __self__.len = #if !macro function():GoInt return _r2.len() #else null #end;
                __self__.read = #if !macro function(_p:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : stdgo.Error; } return _r2.read(_p) #else null #end;
                __self__.readAt = #if !macro function(_p:Slice<GoUInt8>, _off:GoInt64):{ var _0 : GoInt; var _1 : stdgo.Error; } return _r2.readAt(_p, _off) #else null #end;
                __self__.readByte = #if !macro function():{ var _0 : GoUInt8; var _1 : stdgo.Error; } return _r2.readByte() #else null #end;
                __self__.readRune = #if !macro function():{ var _0 : GoInt32; var _1 : GoInt; var _2 : stdgo.Error; } return _r2.readRune() #else null #end;
                __self__.reset = #if !macro function(__0:GoString):Void _r2.reset(__0) #else null #end;
                __self__.seek = #if !macro function(_offset:GoInt64, _whence:GoInt):{ var _0 : GoInt64; var _1 : stdgo.Error; } return _r2.seek(_offset, _whence) #else null #end;
                __self__.size = #if !macro function():GoInt64 return _r2.size() #else null #end;
                __self__.unreadByte = #if !macro function():stdgo.Error return _r2.unreadByte() #else null #end;
                __self__.unreadRune = #if !macro function():stdgo.Error return _r2.unreadRune() #else null #end;
                __self__.writeTo = #if !macro function(_w:Writer):{ var _0 : GoInt64; var _1 : stdgo.Error; } return _r2.writeTo(_w) #else null #end;
                __self__;
            }, {
                final __self__ = new stdgo.strings.Strings.Reader_wrapper(_r3);
                __self__.len = #if !macro function():GoInt return _r3.len() #else null #end;
                __self__.read = #if !macro function(_p:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : stdgo.Error; } return _r3.read(_p) #else null #end;
                __self__.readAt = #if !macro function(_p:Slice<GoUInt8>, _off:GoInt64):{ var _0 : GoInt; var _1 : stdgo.Error; } return _r3.readAt(_p, _off) #else null #end;
                __self__.readByte = #if !macro function():{ var _0 : GoUInt8; var _1 : stdgo.Error; } return _r3.readByte() #else null #end;
                __self__.readRune = #if !macro function():{ var _0 : GoInt32; var _1 : GoInt; var _2 : stdgo.Error; } return _r3.readRune() #else null #end;
                __self__.reset = #if !macro function(__0:GoString):Void _r3.reset(__0) #else null #end;
                __self__.seek = #if !macro function(_offset:GoInt64, _whence:GoInt):{ var _0 : GoInt64; var _1 : stdgo.Error; } return _r3.seek(_offset, _whence) #else null #end;
                __self__.size = #if !macro function():GoInt64 return _r3.size() #else null #end;
                __self__.unreadByte = #if !macro function():stdgo.Error return _r3.unreadByte() #else null #end;
                __self__.unreadRune = #if !macro function():stdgo.Error return _r3.unreadRune() #else null #end;
                __self__.writeTo = #if !macro function(_w:Writer):{ var _0 : GoInt64; var _1 : stdgo.Error; } return _r3.writeTo(_w) #else null #end;
                __self__;
            });
            _buf = new Slice<GoUInt8>(((((20 : GoInt)) : GoInt)).toBasic(), 0, ...[for (i in 0 ... ((((20 : GoInt)) : GoInt)).toBasic()) ((0 : GoUInt8))]);
            _tests();
        };
        var _expectRead:(GoInt, GoString, stdgo.Error) -> Void = function(_size:GoInt, _expected:GoString, _eerr:Error):Void {
            _nread++;
            var __tmp__ = _mr.read(((_buf.__slice__(((0 : GoInt)), _size) : Slice<GoUInt8>))), _n:GoInt = __tmp__._0, _gerr:stdgo.Error = __tmp__._1;
            if (_n != (_expected != null ? _expected.length : ((0 : GoInt)))) {
                _t.errorf(((Go.str("#%d, expected %d bytes; got %d") : GoString)), Go.toInterface(_nread), Go.toInterface((_expected != null ? _expected.length : ((0 : GoInt)))), Go.toInterface(_n));
            };
            var _got:GoString = ((((_buf.__slice__(((0 : GoInt)), _n) : Slice<GoUInt8>)) : GoString));
            if (_got != _expected) {
                _t.errorf(((Go.str("#%d, expected %q; got %q") : GoString)), Go.toInterface(_nread), Go.toInterface(_expected), Go.toInterface(_got));
            };
            if (_gerr != _eerr) {
                _t.errorf(((Go.str("#%d, expected error %v; got %v") : GoString)), Go.toInterface(_nread), Go.toInterface(_eerr), Go.toInterface(_gerr));
            };
            _buf = ((_buf.__slice__(_n) : Slice<GoUInt8>));
        };
        _withFooBar(function():Void {
            _expectRead(((2 : GoInt)), ((Go.str("fo") : GoString)), ((null : stdgo.Error)));
            _expectRead(((5 : GoInt)), ((Go.str("o ") : GoString)), ((null : stdgo.Error)));
            _expectRead(((5 : GoInt)), ((Go.str("bar") : GoString)), ((null : stdgo.Error)));
            _expectRead(((5 : GoInt)), ((Go.str() : GoString)), eof);
        });
        _withFooBar(function():Void {
            _expectRead(((4 : GoInt)), ((Go.str("foo ") : GoString)), ((null : stdgo.Error)));
            _expectRead(((1 : GoInt)), ((Go.str("b") : GoString)), ((null : stdgo.Error)));
            _expectRead(((3 : GoInt)), ((Go.str("ar") : GoString)), ((null : stdgo.Error)));
            _expectRead(((1 : GoInt)), ((Go.str() : GoString)), eof);
        });
        _withFooBar(function():Void {
            _expectRead(((5 : GoInt)), ((Go.str("foo ") : GoString)), ((null : stdgo.Error)));
        });
    }
function testMultiReaderAsWriterTo(_t:stdgo.testing.Testing.T):Void {
        var _mr:Reader = multiReader({
            final __self__ = new stdgo.strings.Strings.Reader_wrapper(stdgo.strings.Strings.newReader(((Go.str("foo ") : GoString))));
            __self__.len = #if !macro function():GoInt return stdgo.strings.Strings.newReader(((Go.str("foo ") : GoString))).len() #else null #end;
            __self__.read = #if !macro function(_p:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : stdgo.Error; } return stdgo.strings.Strings.newReader(((Go.str("foo ") : GoString))).read(_p) #else null #end;
            __self__.readAt = #if !macro function(_p:Slice<GoUInt8>, _off:GoInt64):{ var _0 : GoInt; var _1 : stdgo.Error; } return stdgo.strings.Strings.newReader(((Go.str("foo ") : GoString))).readAt(_p, _off) #else null #end;
            __self__.readByte = #if !macro function():{ var _0 : GoUInt8; var _1 : stdgo.Error; } return stdgo.strings.Strings.newReader(((Go.str("foo ") : GoString))).readByte() #else null #end;
            __self__.readRune = #if !macro function():{ var _0 : GoInt32; var _1 : GoInt; var _2 : stdgo.Error; } return stdgo.strings.Strings.newReader(((Go.str("foo ") : GoString))).readRune() #else null #end;
            __self__.reset = #if !macro function(__0:GoString):Void stdgo.strings.Strings.newReader(((Go.str("foo ") : GoString))).reset(__0) #else null #end;
            __self__.seek = #if !macro function(_offset:GoInt64, _whence:GoInt):{ var _0 : GoInt64; var _1 : stdgo.Error; } return stdgo.strings.Strings.newReader(((Go.str("foo ") : GoString))).seek(_offset, _whence) #else null #end;
            __self__.size = #if !macro function():GoInt64 return stdgo.strings.Strings.newReader(((Go.str("foo ") : GoString))).size() #else null #end;
            __self__.unreadByte = #if !macro function():stdgo.Error return stdgo.strings.Strings.newReader(((Go.str("foo ") : GoString))).unreadByte() #else null #end;
            __self__.unreadRune = #if !macro function():stdgo.Error return stdgo.strings.Strings.newReader(((Go.str("foo ") : GoString))).unreadRune() #else null #end;
            __self__.writeTo = #if !macro function(_w:Writer):{ var _0 : GoInt64; var _1 : stdgo.Error; } return stdgo.strings.Strings.newReader(((Go.str("foo ") : GoString))).writeTo(_w) #else null #end;
            __self__;
        }, multiReader({
            final __self__ = new stdgo.strings.Strings.Reader_wrapper(stdgo.strings.Strings.newReader(((Go.str() : GoString))));
            __self__.len = #if !macro function():GoInt return stdgo.strings.Strings.newReader(((Go.str() : GoString))).len() #else null #end;
            __self__.read = #if !macro function(_p:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : stdgo.Error; } return stdgo.strings.Strings.newReader(((Go.str() : GoString))).read(_p) #else null #end;
            __self__.readAt = #if !macro function(_p:Slice<GoUInt8>, _off:GoInt64):{ var _0 : GoInt; var _1 : stdgo.Error; } return stdgo.strings.Strings.newReader(((Go.str() : GoString))).readAt(_p, _off) #else null #end;
            __self__.readByte = #if !macro function():{ var _0 : GoUInt8; var _1 : stdgo.Error; } return stdgo.strings.Strings.newReader(((Go.str() : GoString))).readByte() #else null #end;
            __self__.readRune = #if !macro function():{ var _0 : GoInt32; var _1 : GoInt; var _2 : stdgo.Error; } return stdgo.strings.Strings.newReader(((Go.str() : GoString))).readRune() #else null #end;
            __self__.reset = #if !macro function(__0:GoString):Void stdgo.strings.Strings.newReader(((Go.str() : GoString))).reset(__0) #else null #end;
            __self__.seek = #if !macro function(_offset:GoInt64, _whence:GoInt):{ var _0 : GoInt64; var _1 : stdgo.Error; } return stdgo.strings.Strings.newReader(((Go.str() : GoString))).seek(_offset, _whence) #else null #end;
            __self__.size = #if !macro function():GoInt64 return stdgo.strings.Strings.newReader(((Go.str() : GoString))).size() #else null #end;
            __self__.unreadByte = #if !macro function():stdgo.Error return stdgo.strings.Strings.newReader(((Go.str() : GoString))).unreadByte() #else null #end;
            __self__.unreadRune = #if !macro function():stdgo.Error return stdgo.strings.Strings.newReader(((Go.str() : GoString))).unreadRune() #else null #end;
            __self__.writeTo = #if !macro function(_w:Writer):{ var _0 : GoInt64; var _1 : stdgo.Error; } return stdgo.strings.Strings.newReader(((Go.str() : GoString))).writeTo(_w) #else null #end;
            __self__;
        }, {
            final __self__ = new stdgo.strings.Strings.Reader_wrapper(stdgo.strings.Strings.newReader(((Go.str("bar") : GoString))));
            __self__.len = #if !macro function():GoInt return stdgo.strings.Strings.newReader(((Go.str("bar") : GoString))).len() #else null #end;
            __self__.read = #if !macro function(_p:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : stdgo.Error; } return stdgo.strings.Strings.newReader(((Go.str("bar") : GoString))).read(_p) #else null #end;
            __self__.readAt = #if !macro function(_p:Slice<GoUInt8>, _off:GoInt64):{ var _0 : GoInt; var _1 : stdgo.Error; } return stdgo.strings.Strings.newReader(((Go.str("bar") : GoString))).readAt(_p, _off) #else null #end;
            __self__.readByte = #if !macro function():{ var _0 : GoUInt8; var _1 : stdgo.Error; } return stdgo.strings.Strings.newReader(((Go.str("bar") : GoString))).readByte() #else null #end;
            __self__.readRune = #if !macro function():{ var _0 : GoInt32; var _1 : GoInt; var _2 : stdgo.Error; } return stdgo.strings.Strings.newReader(((Go.str("bar") : GoString))).readRune() #else null #end;
            __self__.reset = #if !macro function(__0:GoString):Void stdgo.strings.Strings.newReader(((Go.str("bar") : GoString))).reset(__0) #else null #end;
            __self__.seek = #if !macro function(_offset:GoInt64, _whence:GoInt):{ var _0 : GoInt64; var _1 : stdgo.Error; } return stdgo.strings.Strings.newReader(((Go.str("bar") : GoString))).seek(_offset, _whence) #else null #end;
            __self__.size = #if !macro function():GoInt64 return stdgo.strings.Strings.newReader(((Go.str("bar") : GoString))).size() #else null #end;
            __self__.unreadByte = #if !macro function():stdgo.Error return stdgo.strings.Strings.newReader(((Go.str("bar") : GoString))).unreadByte() #else null #end;
            __self__.unreadRune = #if !macro function():stdgo.Error return stdgo.strings.Strings.newReader(((Go.str("bar") : GoString))).unreadRune() #else null #end;
            __self__.writeTo = #if !macro function(_w:Writer):{ var _0 : GoInt64; var _1 : stdgo.Error; } return stdgo.strings.Strings.newReader(((Go.str("bar") : GoString))).writeTo(_w) #else null #end;
            __self__;
        }));
        var __tmp__ = try {
            { value : ((((_mr.__underlying__().value : Dynamic)) : WriterTo)), ok : true };
        } catch(_) {
            { value : ((null : WriterTo)), ok : false };
        }, _mrAsWriterTo = __tmp__.value, _ok = __tmp__.ok;
        if (!_ok) {
            _t.fatalf(((Go.str("expected cast to WriterTo to succeed") : GoString)));
        };
        var _sink = ((new stdgo.strings.Strings.Builder() : stdgo.strings.Strings.Builder));
        var __tmp__ = _mrAsWriterTo.writeTo({
            final __self__ = new stdgo.strings.Strings.Builder_wrapper(_sink);
            __self__.cap_ = #if !macro function():GoInt return _sink.cap_() #else null #end;
            __self__.grow = #if !macro function(_pid:GoInt):Void _sink.grow(_pid) #else null #end;
            __self__.len = #if !macro function():GoInt return _sink.len() #else null #end;
            __self__.reset = #if !macro function():Void _sink.reset() #else null #end;
            __self__.string = #if !macro function():GoString return _sink.string() #else null #end;
            __self__.write = #if !macro function(_p:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : stdgo.Error; } return _sink.write(_p) #else null #end;
            __self__.writeByte = #if !macro function(_c:GoUInt8):stdgo.Error return _sink.writeByte(_c) #else null #end;
            __self__.writeRune = #if !macro function(_new:GoInt32):{ var _0 : GoInt; var _1 : stdgo.Error; } return _sink.writeRune(_new) #else null #end;
            __self__.writeString = #if !macro function(__0:GoString):{ var _0 : GoInt; var _1 : stdgo.Error; } return _sink.writeString(__0) #else null #end;
            __self__._copyCheck = #if !macro function():Void _sink._copyCheck() #else null #end;
            __self__._grow = #if !macro function(_pid:GoInt):Void _sink._grow(_pid) #else null #end;
            __self__;
        }), _n:GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.fatalf(((Go.str("expected no error; got %v") : GoString)), Go.toInterface(_err));
        };
        if (_n != ((7 : GoInt64))) {
            _t.errorf(((Go.str("expected read 7 bytes; got %d") : GoString)), Go.toInterface(_n));
        };
        {
            var _result:GoString = ((_sink.string() : GoString));
            if (_result != ((Go.str("foo bar") : GoString))) {
                _t.errorf((("expected \"foo bar\"; got %q" : GoString)), Go.toInterface(_result));
            };
        };
    }
function testMultiWriter(_t:stdgo.testing.Testing.T):Void {
        var _sink = (({  } : stdgo.bytes.Bytes.Buffer));
        _testMultiWriter(_t, (({ writer : {
            final __self__ = new stdgo.bytes.Bytes.Buffer_wrapper(_sink);
            __self__.bytes = #if !macro function():Slice<GoUInt8> return _sink.bytes() #else null #end;
            __self__.cap_ = #if !macro function():GoInt return _sink.cap_() #else null #end;
            __self__.grow = #if !macro function(_pid:GoInt):Void _sink.grow(_pid) #else null #end;
            __self__.len = #if !macro function():GoInt return _sink.len() #else null #end;
            __self__.next = #if !macro function(_pid:GoInt):Slice<GoUInt8> return _sink.next(_pid) #else null #end;
            __self__.read = #if !macro function(_p:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : stdgo.Error; } return _sink.read(_p) #else null #end;
            __self__.readByte = #if !macro function():{ var _0 : GoUInt8; var _1 : stdgo.Error; } return _sink.readByte() #else null #end;
            __self__.readBytes = #if !macro function(_c:GoUInt8):{ var _0 : Slice<GoUInt8>; var _1 : stdgo.Error; } return _sink.readBytes(_c) #else null #end;
            __self__.readFrom = #if !macro function(_r:Reader):{ var _0 : GoInt64; var _1 : stdgo.Error; } return _sink.readFrom(_r) #else null #end;
            __self__.readRune = #if !macro function():{ var _0 : GoInt32; var _1 : GoInt; var _2 : stdgo.Error; } return _sink.readRune() #else null #end;
            __self__.readString = #if !macro function(_c:GoUInt8):{ var _0 : GoString; var _1 : stdgo.Error; } return _sink.readString(_c) #else null #end;
            __self__.reset = #if !macro function():Void _sink.reset() #else null #end;
            __self__.string = #if !macro function():GoString return _sink.string() #else null #end;
            __self__.truncate = #if !macro function(_pid:GoInt):Void _sink.truncate(_pid) #else null #end;
            __self__.unreadByte = #if !macro function():stdgo.Error return _sink.unreadByte() #else null #end;
            __self__.unreadRune = #if !macro function():stdgo.Error return _sink.unreadRune() #else null #end;
            __self__.write = #if !macro function(_p:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : stdgo.Error; } return _sink.write(_p) #else null #end;
            __self__.writeByte = #if !macro function(_c:GoUInt8):stdgo.Error return _sink.writeByte(_c) #else null #end;
            __self__.writeRune = #if !macro function(_new:GoInt32):{ var _0 : GoInt; var _1 : stdgo.Error; } return _sink.writeRune(_new) #else null #end;
            __self__.writeString = #if !macro function(__0:GoString):{ var _0 : GoInt; var _1 : stdgo.Error; } return _sink.writeString(__0) #else null #end;
            __self__.writeTo = #if !macro function(_w:Writer):{ var _0 : GoInt64; var _1 : stdgo.Error; } return _sink.writeTo(_w) #else null #end;
            __self__._empty = #if !macro function():Bool return _sink._empty() #else null #end;
            __self__._grow = #if !macro function(_pid:GoInt):GoInt return _sink._grow(_pid) #else null #end;
            __self__._readSlice = #if !macro function(_c:GoUInt8):{ var _0 : Slice<GoUInt8>; var _1 : stdgo.Error; } return _sink._readSlice(_c) #else null #end;
            __self__._tryGrowByReslice = #if !macro function(_pid:GoInt):{ var _0 : GoInt; var _1 : Bool; } return _sink._tryGrowByReslice(_pid) #else null #end;
            __self__;
        }, stringer : {
            final __self__ = new stdgo.bytes.Bytes.Buffer_wrapper(_sink);
            __self__.bytes = #if !macro function():Slice<GoUInt8> return _sink.bytes() #else null #end;
            __self__.cap_ = #if !macro function():GoInt return _sink.cap_() #else null #end;
            __self__.grow = #if !macro function(_pid:GoInt):Void _sink.grow(_pid) #else null #end;
            __self__.len = #if !macro function():GoInt return _sink.len() #else null #end;
            __self__.next = #if !macro function(_pid:GoInt):Slice<GoUInt8> return _sink.next(_pid) #else null #end;
            __self__.read = #if !macro function(_p:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : stdgo.Error; } return _sink.read(_p) #else null #end;
            __self__.readByte = #if !macro function():{ var _0 : GoUInt8; var _1 : stdgo.Error; } return _sink.readByte() #else null #end;
            __self__.readBytes = #if !macro function(_c:GoUInt8):{ var _0 : Slice<GoUInt8>; var _1 : stdgo.Error; } return _sink.readBytes(_c) #else null #end;
            __self__.readFrom = #if !macro function(_r:Reader):{ var _0 : GoInt64; var _1 : stdgo.Error; } return _sink.readFrom(_r) #else null #end;
            __self__.readRune = #if !macro function():{ var _0 : GoInt32; var _1 : GoInt; var _2 : stdgo.Error; } return _sink.readRune() #else null #end;
            __self__.readString = #if !macro function(_c:GoUInt8):{ var _0 : GoString; var _1 : stdgo.Error; } return _sink.readString(_c) #else null #end;
            __self__.reset = #if !macro function():Void _sink.reset() #else null #end;
            __self__.string = #if !macro function():GoString return _sink.string() #else null #end;
            __self__.truncate = #if !macro function(_pid:GoInt):Void _sink.truncate(_pid) #else null #end;
            __self__.unreadByte = #if !macro function():stdgo.Error return _sink.unreadByte() #else null #end;
            __self__.unreadRune = #if !macro function():stdgo.Error return _sink.unreadRune() #else null #end;
            __self__.write = #if !macro function(_p:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : stdgo.Error; } return _sink.write(_p) #else null #end;
            __self__.writeByte = #if !macro function(_c:GoUInt8):stdgo.Error return _sink.writeByte(_c) #else null #end;
            __self__.writeRune = #if !macro function(_new:GoInt32):{ var _0 : GoInt; var _1 : stdgo.Error; } return _sink.writeRune(_new) #else null #end;
            __self__.writeString = #if !macro function(__0:GoString):{ var _0 : GoInt; var _1 : stdgo.Error; } return _sink.writeString(__0) #else null #end;
            __self__.writeTo = #if !macro function(_w:Writer):{ var _0 : GoInt64; var _1 : stdgo.Error; } return _sink.writeTo(_w) #else null #end;
            __self__._empty = #if !macro function():Bool return _sink._empty() #else null #end;
            __self__._grow = #if !macro function(_pid:GoInt):GoInt return _sink._grow(_pid) #else null #end;
            __self__._readSlice = #if !macro function(_c:GoUInt8):{ var _0 : Slice<GoUInt8>; var _1 : stdgo.Error; } return _sink._readSlice(_c) #else null #end;
            __self__._tryGrowByReslice = #if !macro function(_pid:GoInt):{ var _0 : GoInt; var _1 : Bool; } return _sink._tryGrowByReslice(_pid) #else null #end;
            __self__;
        } } : T__struct_5)));
    }
function testMultiWriter_String(_t:stdgo.testing.Testing.T):Void {
        _testMultiWriter(_t, {
            final __self__ = new stdgo.bytes.Bytes.Buffer_wrapper((({  } : stdgo.bytes.Bytes.Buffer)));
            __self__.bytes = #if !macro function():Slice<GoUInt8> return (({  } : stdgo.bytes.Bytes.Buffer)).bytes() #else null #end;
            __self__.cap_ = #if !macro function():GoInt return (({  } : stdgo.bytes.Bytes.Buffer)).cap_() #else null #end;
            __self__.grow = #if !macro function(_pid:GoInt):Void (({  } : stdgo.bytes.Bytes.Buffer)).grow(_pid) #else null #end;
            __self__.len = #if !macro function():GoInt return (({  } : stdgo.bytes.Bytes.Buffer)).len() #else null #end;
            __self__.next = #if !macro function(_pid:GoInt):Slice<GoUInt8> return (({  } : stdgo.bytes.Bytes.Buffer)).next(_pid) #else null #end;
            __self__.read = #if !macro function(_p:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : stdgo.Error; } return (({  } : stdgo.bytes.Bytes.Buffer)).read(_p) #else null #end;
            __self__.readByte = #if !macro function():{ var _0 : GoUInt8; var _1 : stdgo.Error; } return (({  } : stdgo.bytes.Bytes.Buffer)).readByte() #else null #end;
            __self__.readBytes = #if !macro function(_c:GoUInt8):{ var _0 : Slice<GoUInt8>; var _1 : stdgo.Error; } return (({  } : stdgo.bytes.Bytes.Buffer)).readBytes(_c) #else null #end;
            __self__.readFrom = #if !macro function(_r:Reader):{ var _0 : GoInt64; var _1 : stdgo.Error; } return (({  } : stdgo.bytes.Bytes.Buffer)).readFrom(_r) #else null #end;
            __self__.readRune = #if !macro function():{ var _0 : GoInt32; var _1 : GoInt; var _2 : stdgo.Error; } return (({  } : stdgo.bytes.Bytes.Buffer)).readRune() #else null #end;
            __self__.readString = #if !macro function(_c:GoUInt8):{ var _0 : GoString; var _1 : stdgo.Error; } return (({  } : stdgo.bytes.Bytes.Buffer)).readString(_c) #else null #end;
            __self__.reset = #if !macro function():Void (({  } : stdgo.bytes.Bytes.Buffer)).reset() #else null #end;
            __self__.string = #if !macro function():GoString return (({  } : stdgo.bytes.Bytes.Buffer)).string() #else null #end;
            __self__.truncate = #if !macro function(_pid:GoInt):Void (({  } : stdgo.bytes.Bytes.Buffer)).truncate(_pid) #else null #end;
            __self__.unreadByte = #if !macro function():stdgo.Error return (({  } : stdgo.bytes.Bytes.Buffer)).unreadByte() #else null #end;
            __self__.unreadRune = #if !macro function():stdgo.Error return (({  } : stdgo.bytes.Bytes.Buffer)).unreadRune() #else null #end;
            __self__.write = #if !macro function(_p:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : stdgo.Error; } return (({  } : stdgo.bytes.Bytes.Buffer)).write(_p) #else null #end;
            __self__.writeByte = #if !macro function(_c:GoUInt8):stdgo.Error return (({  } : stdgo.bytes.Bytes.Buffer)).writeByte(_c) #else null #end;
            __self__.writeRune = #if !macro function(_new:GoInt32):{ var _0 : GoInt; var _1 : stdgo.Error; } return (({  } : stdgo.bytes.Bytes.Buffer)).writeRune(_new) #else null #end;
            __self__.writeString = #if !macro function(__0:GoString):{ var _0 : GoInt; var _1 : stdgo.Error; } return (({  } : stdgo.bytes.Bytes.Buffer)).writeString(__0) #else null #end;
            __self__.writeTo = #if !macro function(_w:Writer):{ var _0 : GoInt64; var _1 : stdgo.Error; } return (({  } : stdgo.bytes.Bytes.Buffer)).writeTo(_w) #else null #end;
            __self__._empty = #if !macro function():Bool return (({  } : stdgo.bytes.Bytes.Buffer))._empty() #else null #end;
            __self__._grow = #if !macro function(_pid:GoInt):GoInt return (({  } : stdgo.bytes.Bytes.Buffer))._grow(_pid) #else null #end;
            __self__._readSlice = #if !macro function(_c:GoUInt8):{ var _0 : Slice<GoUInt8>; var _1 : stdgo.Error; } return (({  } : stdgo.bytes.Bytes.Buffer))._readSlice(_c) #else null #end;
            __self__._tryGrowByReslice = #if !macro function(_pid:GoInt):{ var _0 : GoInt; var _1 : Bool; } return (({  } : stdgo.bytes.Bytes.Buffer))._tryGrowByReslice(_pid) #else null #end;
            __self__;
        });
    }
@:structInit @:using(stdgo.io_test.Io_test.T_simpleWriter_testMultiWriter_WriteStringSingleAlloc_0_static_extension) class T_simpleWriter_testMultiWriter_WriteStringSingleAlloc_0 {
    @:embedded
    public var writer : Writer = ((null : Writer));
    public function new(?writer:Writer) {
        if (writer != null) this.writer = writer;
    }
    @:embedded
    public function write(_p:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : stdgo.Error; } return writer.write(_p);
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_simpleWriter_testMultiWriter_WriteStringSingleAlloc_0(writer);
    }
}
/**
    // Test that a multiWriter.WriteString calls results in at most 1 allocation,
    // even if multiple targets don't support WriteString.
**/
function testMultiWriter_WriteStringSingleAlloc(_t:stdgo.testing.Testing.T):Void {
        var _sink1:stdgo.bytes.Bytes.Buffer = (({  } : stdgo.bytes.Bytes.Buffer)), _sink2:stdgo.bytes.Bytes.Buffer = (({  } : stdgo.bytes.Bytes.Buffer));
        {};
        var _mw:Writer = multiWriter({
            final __self__ = new stdgo.io_test.Io_test.T_simpleWriter_testMultiWriter_WriteStringSingleAlloc_0_wrapper(((new stdgo.io_test.Io_test.T_simpleWriter_testMultiWriter_WriteStringSingleAlloc_0({
                final __self__ = new stdgo.bytes.Bytes.Buffer_wrapper(_sink1);
                __self__.bytes = #if !macro function():Slice<GoUInt8> return _sink1.bytes() #else null #end;
                __self__.cap_ = #if !macro function():GoInt return _sink1.cap_() #else null #end;
                __self__.grow = #if !macro function(_pid:GoInt):Void _sink1.grow(_pid) #else null #end;
                __self__.len = #if !macro function():GoInt return _sink1.len() #else null #end;
                __self__.next = #if !macro function(_pid:GoInt):Slice<GoUInt8> return _sink1.next(_pid) #else null #end;
                __self__.read = #if !macro function(_p:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : stdgo.Error; } return _sink1.read(_p) #else null #end;
                __self__.readByte = #if !macro function():{ var _0 : GoUInt8; var _1 : stdgo.Error; } return _sink1.readByte() #else null #end;
                __self__.readBytes = #if !macro function(_c:GoUInt8):{ var _0 : Slice<GoUInt8>; var _1 : stdgo.Error; } return _sink1.readBytes(_c) #else null #end;
                __self__.readFrom = #if !macro function(_r:Reader):{ var _0 : GoInt64; var _1 : stdgo.Error; } return _sink1.readFrom(_r) #else null #end;
                __self__.readRune = #if !macro function():{ var _0 : GoInt32; var _1 : GoInt; var _2 : stdgo.Error; } return _sink1.readRune() #else null #end;
                __self__.readString = #if !macro function(_c:GoUInt8):{ var _0 : GoString; var _1 : stdgo.Error; } return _sink1.readString(_c) #else null #end;
                __self__.reset = #if !macro function():Void _sink1.reset() #else null #end;
                __self__.string = #if !macro function():GoString return _sink1.string() #else null #end;
                __self__.truncate = #if !macro function(_pid:GoInt):Void _sink1.truncate(_pid) #else null #end;
                __self__.unreadByte = #if !macro function():stdgo.Error return _sink1.unreadByte() #else null #end;
                __self__.unreadRune = #if !macro function():stdgo.Error return _sink1.unreadRune() #else null #end;
                __self__.write = #if !macro function(_p:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : stdgo.Error; } return _sink1.write(_p) #else null #end;
                __self__.writeByte = #if !macro function(_c:GoUInt8):stdgo.Error return _sink1.writeByte(_c) #else null #end;
                __self__.writeRune = #if !macro function(_new:GoInt32):{ var _0 : GoInt; var _1 : stdgo.Error; } return _sink1.writeRune(_new) #else null #end;
                __self__.writeString = #if !macro function(__0:GoString):{ var _0 : GoInt; var _1 : stdgo.Error; } return _sink1.writeString(__0) #else null #end;
                __self__.writeTo = #if !macro function(_w:Writer):{ var _0 : GoInt64; var _1 : stdgo.Error; } return _sink1.writeTo(_w) #else null #end;
                __self__._empty = #if !macro function():Bool return _sink1._empty() #else null #end;
                __self__._grow = #if !macro function(_pid:GoInt):GoInt return _sink1._grow(_pid) #else null #end;
                __self__._readSlice = #if !macro function(_c:GoUInt8):{ var _0 : Slice<GoUInt8>; var _1 : stdgo.Error; } return _sink1._readSlice(_c) #else null #end;
                __self__._tryGrowByReslice = #if !macro function(_pid:GoInt):{ var _0 : GoInt; var _1 : Bool; } return _sink1._tryGrowByReslice(_pid) #else null #end;
                __self__;
            }) : stdgo.io_test.Io_test.T_simpleWriter_testMultiWriter_WriteStringSingleAlloc_0)));
            __self__.write = #if !macro function(_p:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : stdgo.Error; } return ((new stdgo.io_test.Io_test.T_simpleWriter_testMultiWriter_WriteStringSingleAlloc_0({
                final __self__ = new stdgo.bytes.Bytes.Buffer_wrapper(_sink1);
                __self__.bytes = #if !macro function():Slice<GoUInt8> return _sink1.bytes() #else null #end;
                __self__.cap_ = #if !macro function():GoInt return _sink1.cap_() #else null #end;
                __self__.grow = #if !macro function(_pid:GoInt):Void _sink1.grow(_pid) #else null #end;
                __self__.len = #if !macro function():GoInt return _sink1.len() #else null #end;
                __self__.next = #if !macro function(_pid:GoInt):Slice<GoUInt8> return _sink1.next(_pid) #else null #end;
                __self__.read = #if !macro function(_p:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : stdgo.Error; } return _sink1.read(_p) #else null #end;
                __self__.readByte = #if !macro function():{ var _0 : GoUInt8; var _1 : stdgo.Error; } return _sink1.readByte() #else null #end;
                __self__.readBytes = #if !macro function(_c:GoUInt8):{ var _0 : Slice<GoUInt8>; var _1 : stdgo.Error; } return _sink1.readBytes(_c) #else null #end;
                __self__.readFrom = #if !macro function(_r:Reader):{ var _0 : GoInt64; var _1 : stdgo.Error; } return _sink1.readFrom(_r) #else null #end;
                __self__.readRune = #if !macro function():{ var _0 : GoInt32; var _1 : GoInt; var _2 : stdgo.Error; } return _sink1.readRune() #else null #end;
                __self__.readString = #if !macro function(_c:GoUInt8):{ var _0 : GoString; var _1 : stdgo.Error; } return _sink1.readString(_c) #else null #end;
                __self__.reset = #if !macro function():Void _sink1.reset() #else null #end;
                __self__.string = #if !macro function():GoString return _sink1.string() #else null #end;
                __self__.truncate = #if !macro function(_pid:GoInt):Void _sink1.truncate(_pid) #else null #end;
                __self__.unreadByte = #if !macro function():stdgo.Error return _sink1.unreadByte() #else null #end;
                __self__.unreadRune = #if !macro function():stdgo.Error return _sink1.unreadRune() #else null #end;
                __self__.write = #if !macro function(_p:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : stdgo.Error; } return _sink1.write(_p) #else null #end;
                __self__.writeByte = #if !macro function(_c:GoUInt8):stdgo.Error return _sink1.writeByte(_c) #else null #end;
                __self__.writeRune = #if !macro function(_new:GoInt32):{ var _0 : GoInt; var _1 : stdgo.Error; } return _sink1.writeRune(_new) #else null #end;
                __self__.writeString = #if !macro function(__0:GoString):{ var _0 : GoInt; var _1 : stdgo.Error; } return _sink1.writeString(__0) #else null #end;
                __self__.writeTo = #if !macro function(_w:Writer):{ var _0 : GoInt64; var _1 : stdgo.Error; } return _sink1.writeTo(_w) #else null #end;
                __self__._empty = #if !macro function():Bool return _sink1._empty() #else null #end;
                __self__._grow = #if !macro function(_pid:GoInt):GoInt return _sink1._grow(_pid) #else null #end;
                __self__._readSlice = #if !macro function(_c:GoUInt8):{ var _0 : Slice<GoUInt8>; var _1 : stdgo.Error; } return _sink1._readSlice(_c) #else null #end;
                __self__._tryGrowByReslice = #if !macro function(_pid:GoInt):{ var _0 : GoInt; var _1 : Bool; } return _sink1._tryGrowByReslice(_pid) #else null #end;
                __self__;
            }) : stdgo.io_test.Io_test.T_simpleWriter_testMultiWriter_WriteStringSingleAlloc_0)).write(_p) #else null #end;
            __self__;
        }, {
            final __self__ = new stdgo.io_test.Io_test.T_simpleWriter_testMultiWriter_WriteStringSingleAlloc_0_wrapper(((new stdgo.io_test.Io_test.T_simpleWriter_testMultiWriter_WriteStringSingleAlloc_0({
                final __self__ = new stdgo.bytes.Bytes.Buffer_wrapper(_sink2);
                __self__.bytes = #if !macro function():Slice<GoUInt8> return _sink2.bytes() #else null #end;
                __self__.cap_ = #if !macro function():GoInt return _sink2.cap_() #else null #end;
                __self__.grow = #if !macro function(_pid:GoInt):Void _sink2.grow(_pid) #else null #end;
                __self__.len = #if !macro function():GoInt return _sink2.len() #else null #end;
                __self__.next = #if !macro function(_pid:GoInt):Slice<GoUInt8> return _sink2.next(_pid) #else null #end;
                __self__.read = #if !macro function(_p:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : stdgo.Error; } return _sink2.read(_p) #else null #end;
                __self__.readByte = #if !macro function():{ var _0 : GoUInt8; var _1 : stdgo.Error; } return _sink2.readByte() #else null #end;
                __self__.readBytes = #if !macro function(_c:GoUInt8):{ var _0 : Slice<GoUInt8>; var _1 : stdgo.Error; } return _sink2.readBytes(_c) #else null #end;
                __self__.readFrom = #if !macro function(_r:Reader):{ var _0 : GoInt64; var _1 : stdgo.Error; } return _sink2.readFrom(_r) #else null #end;
                __self__.readRune = #if !macro function():{ var _0 : GoInt32; var _1 : GoInt; var _2 : stdgo.Error; } return _sink2.readRune() #else null #end;
                __self__.readString = #if !macro function(_c:GoUInt8):{ var _0 : GoString; var _1 : stdgo.Error; } return _sink2.readString(_c) #else null #end;
                __self__.reset = #if !macro function():Void _sink2.reset() #else null #end;
                __self__.string = #if !macro function():GoString return _sink2.string() #else null #end;
                __self__.truncate = #if !macro function(_pid:GoInt):Void _sink2.truncate(_pid) #else null #end;
                __self__.unreadByte = #if !macro function():stdgo.Error return _sink2.unreadByte() #else null #end;
                __self__.unreadRune = #if !macro function():stdgo.Error return _sink2.unreadRune() #else null #end;
                __self__.write = #if !macro function(_p:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : stdgo.Error; } return _sink2.write(_p) #else null #end;
                __self__.writeByte = #if !macro function(_c:GoUInt8):stdgo.Error return _sink2.writeByte(_c) #else null #end;
                __self__.writeRune = #if !macro function(_new:GoInt32):{ var _0 : GoInt; var _1 : stdgo.Error; } return _sink2.writeRune(_new) #else null #end;
                __self__.writeString = #if !macro function(__0:GoString):{ var _0 : GoInt; var _1 : stdgo.Error; } return _sink2.writeString(__0) #else null #end;
                __self__.writeTo = #if !macro function(_w:Writer):{ var _0 : GoInt64; var _1 : stdgo.Error; } return _sink2.writeTo(_w) #else null #end;
                __self__._empty = #if !macro function():Bool return _sink2._empty() #else null #end;
                __self__._grow = #if !macro function(_pid:GoInt):GoInt return _sink2._grow(_pid) #else null #end;
                __self__._readSlice = #if !macro function(_c:GoUInt8):{ var _0 : Slice<GoUInt8>; var _1 : stdgo.Error; } return _sink2._readSlice(_c) #else null #end;
                __self__._tryGrowByReslice = #if !macro function(_pid:GoInt):{ var _0 : GoInt; var _1 : Bool; } return _sink2._tryGrowByReslice(_pid) #else null #end;
                __self__;
            }) : stdgo.io_test.Io_test.T_simpleWriter_testMultiWriter_WriteStringSingleAlloc_0)));
            __self__.write = #if !macro function(_p:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : stdgo.Error; } return ((new stdgo.io_test.Io_test.T_simpleWriter_testMultiWriter_WriteStringSingleAlloc_0({
                final __self__ = new stdgo.bytes.Bytes.Buffer_wrapper(_sink2);
                __self__.bytes = #if !macro function():Slice<GoUInt8> return _sink2.bytes() #else null #end;
                __self__.cap_ = #if !macro function():GoInt return _sink2.cap_() #else null #end;
                __self__.grow = #if !macro function(_pid:GoInt):Void _sink2.grow(_pid) #else null #end;
                __self__.len = #if !macro function():GoInt return _sink2.len() #else null #end;
                __self__.next = #if !macro function(_pid:GoInt):Slice<GoUInt8> return _sink2.next(_pid) #else null #end;
                __self__.read = #if !macro function(_p:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : stdgo.Error; } return _sink2.read(_p) #else null #end;
                __self__.readByte = #if !macro function():{ var _0 : GoUInt8; var _1 : stdgo.Error; } return _sink2.readByte() #else null #end;
                __self__.readBytes = #if !macro function(_c:GoUInt8):{ var _0 : Slice<GoUInt8>; var _1 : stdgo.Error; } return _sink2.readBytes(_c) #else null #end;
                __self__.readFrom = #if !macro function(_r:Reader):{ var _0 : GoInt64; var _1 : stdgo.Error; } return _sink2.readFrom(_r) #else null #end;
                __self__.readRune = #if !macro function():{ var _0 : GoInt32; var _1 : GoInt; var _2 : stdgo.Error; } return _sink2.readRune() #else null #end;
                __self__.readString = #if !macro function(_c:GoUInt8):{ var _0 : GoString; var _1 : stdgo.Error; } return _sink2.readString(_c) #else null #end;
                __self__.reset = #if !macro function():Void _sink2.reset() #else null #end;
                __self__.string = #if !macro function():GoString return _sink2.string() #else null #end;
                __self__.truncate = #if !macro function(_pid:GoInt):Void _sink2.truncate(_pid) #else null #end;
                __self__.unreadByte = #if !macro function():stdgo.Error return _sink2.unreadByte() #else null #end;
                __self__.unreadRune = #if !macro function():stdgo.Error return _sink2.unreadRune() #else null #end;
                __self__.write = #if !macro function(_p:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : stdgo.Error; } return _sink2.write(_p) #else null #end;
                __self__.writeByte = #if !macro function(_c:GoUInt8):stdgo.Error return _sink2.writeByte(_c) #else null #end;
                __self__.writeRune = #if !macro function(_new:GoInt32):{ var _0 : GoInt; var _1 : stdgo.Error; } return _sink2.writeRune(_new) #else null #end;
                __self__.writeString = #if !macro function(__0:GoString):{ var _0 : GoInt; var _1 : stdgo.Error; } return _sink2.writeString(__0) #else null #end;
                __self__.writeTo = #if !macro function(_w:Writer):{ var _0 : GoInt64; var _1 : stdgo.Error; } return _sink2.writeTo(_w) #else null #end;
                __self__._empty = #if !macro function():Bool return _sink2._empty() #else null #end;
                __self__._grow = #if !macro function(_pid:GoInt):GoInt return _sink2._grow(_pid) #else null #end;
                __self__._readSlice = #if !macro function(_c:GoUInt8):{ var _0 : Slice<GoUInt8>; var _1 : stdgo.Error; } return _sink2._readSlice(_c) #else null #end;
                __self__._tryGrowByReslice = #if !macro function(_pid:GoInt):{ var _0 : GoInt; var _1 : Bool; } return _sink2._tryGrowByReslice(_pid) #else null #end;
                __self__;
            }) : stdgo.io_test.Io_test.T_simpleWriter_testMultiWriter_WriteStringSingleAlloc_0)).write(_p) #else null #end;
            __self__;
        });
        var _allocs:GoInt = ((stdgo.testing.Testing.allocsPerRun(((1000 : GoInt)), function():Void {
            writeString(_mw, ((Go.str("foo") : GoString)));
        }) : GoInt));
        if (_allocs != ((1 : GoInt))) {
            _t.errorf(((Go.str("num allocations = %d; want 1") : GoString)), Go.toInterface(_allocs));
        };
    }
function testMultiWriter_StringCheckCall(_t:stdgo.testing.Testing.T):Void {
        var _c:T_writeStringChecker = (({  } : stdgo.io_test.Io_test.T_writeStringChecker));
        var _mw:Writer = multiWriter({
            final __self__ = new stdgo.io_test.Io_test.T_writeStringChecker_wrapper(_c);
            __self__.write = #if !macro function(_p:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : stdgo.Error; } return _c.write(_p) #else null #end;
            __self__.writeString = #if !macro function(__0:GoString):{ var _0 : GoInt; var _1 : stdgo.Error; } return _c.writeString(__0) #else null #end;
            __self__;
        });
        writeString(_mw, ((Go.str("foo") : GoString)));
        if (!_c._called) {
            _t.error(Go.toInterface(((Go.str("did not see WriteString call to writeStringChecker") : GoString))));
        };
    }
function _testMultiWriter(_t:stdgo.testing.Testing.T, _sink:T__interface_0):Void {
        var _sha1:stdgo.hash.Hash.Hash = _sha1.new_();
        var _mw:Writer = multiWriter(_sha1, _sink);
        var _sourceString:GoString = ((Go.str("My input text.") : GoString));
        var _source = stdgo.strings.Strings.newReader(_sourceString);
        var __tmp__ = copy(_mw, {
            final __self__ = new stdgo.strings.Strings.Reader_wrapper(_source);
            __self__.len = #if !macro function():GoInt return _source.len() #else null #end;
            __self__.read = #if !macro function(_p:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : stdgo.Error; } return _source.read(_p) #else null #end;
            __self__.readAt = #if !macro function(_p:Slice<GoUInt8>, _off:GoInt64):{ var _0 : GoInt; var _1 : stdgo.Error; } return _source.readAt(_p, _off) #else null #end;
            __self__.readByte = #if !macro function():{ var _0 : GoUInt8; var _1 : stdgo.Error; } return _source.readByte() #else null #end;
            __self__.readRune = #if !macro function():{ var _0 : GoInt32; var _1 : GoInt; var _2 : stdgo.Error; } return _source.readRune() #else null #end;
            __self__.reset = #if !macro function(__0:GoString):Void _source.reset(__0) #else null #end;
            __self__.seek = #if !macro function(_offset:GoInt64, _whence:GoInt):{ var _0 : GoInt64; var _1 : stdgo.Error; } return _source.seek(_offset, _whence) #else null #end;
            __self__.size = #if !macro function():GoInt64 return _source.size() #else null #end;
            __self__.unreadByte = #if !macro function():stdgo.Error return _source.unreadByte() #else null #end;
            __self__.unreadRune = #if !macro function():stdgo.Error return _source.unreadRune() #else null #end;
            __self__.writeTo = #if !macro function(_w:Writer):{ var _0 : GoInt64; var _1 : stdgo.Error; } return _source.writeTo(_w) #else null #end;
            __self__;
        }), _written:GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_written != (((_sourceString != null ? _sourceString.length : ((0 : GoInt))) : GoInt64))) {
            _t.errorf(((Go.str("short write of %d, not %d") : GoString)), Go.toInterface(_written), Go.toInterface((_sourceString != null ? _sourceString.length : ((0 : GoInt)))));
        };
        if (_err != null) {
            _t.errorf(((Go.str("unexpected error: %v") : GoString)), Go.toInterface(_err));
        };
        var _sha1hex:GoString = stdgo.fmt.Fmt.sprintf(((Go.str("%x") : GoString)), Go.toInterface(_sha1.sum(((null : Slice<GoUInt8>)))));
        if (_sha1hex != ((Go.str("01cb303fa8c30a64123067c5aa6284ba7ec2d31b") : GoString))) {
            _t.error(Go.toInterface(((Go.str("incorrect sha1 value") : GoString))));
        };
        if (((_sink.string() : GoString)) != _sourceString) {
            _t.errorf(((Go.str("expected %q; got %q") : GoString)), Go.toInterface(_sourceString), Go.toInterface(((_sink.string() : GoString))));
        };
    }
/**
    // Test that MultiWriter properly flattens chained multiWriters.
**/
function testMultiWriterSingleChainFlatten(_t:stdgo.testing.Testing.T):Void {
        var _pc = new Slice<GoUIntptr>(((((1000 : GoInt)) : GoInt)).toBasic(), 0, ...[for (i in 0 ... ((((1000 : GoInt)) : GoInt)).toBasic()) ((0 : GoUIntptr))]);
        var _n:GoInt = stdgo.runtime.Runtime.callers(((0 : GoInt)), _pc);
        var _myDepth:GoInt = _callDepth(((_pc.__slice__(0, _n) : Slice<GoUIntptr>)));
        var _writeDepth:GoInt = ((0 : GoInt));
        var _w:Writer = multiWriter({
            final __self__ = new stdgo.io_test.Io_test.T_writerFunc_wrapper(((function(_p:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } {
                var _n:GoInt = stdgo.runtime.Runtime.callers(((1 : GoInt)), _pc);
                _writeDepth = _writeDepth + (_callDepth(((_pc.__slice__(0, _n) : Slice<GoUIntptr>))));
                return { _0 : ((0 : GoInt)), _1 : ((null : stdgo.Error)) };
            } : T_writerFunc)));
            __self__.write = #if !macro function(_p:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : stdgo.Error; } return ((function(_p:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } {
                var _n:GoInt = stdgo.runtime.Runtime.callers(((1 : GoInt)), _pc);
                _writeDepth = _writeDepth + (_callDepth(((_pc.__slice__(0, _n) : Slice<GoUIntptr>))));
                return { _0 : ((0 : GoInt)), _1 : ((null : stdgo.Error)) };
            } : T_writerFunc)).write(_p) #else null #end;
            __self__;
        });
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
            _t.errorf(((Go.str("multiWriter did not flatten chained multiWriters: expected writeDepth %d, got %d") : GoString)), Go.toInterface(((4 : GoInt)) * (_myDepth + ((2 : GoInt)))), Go.toInterface(_writeDepth));
        };
    }
function testMultiWriterError(_t:stdgo.testing.Testing.T):Void {
        var _f1:stdgo.io_test.Io_test.T_writerFunc = ((function(_p:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } {
            return { _0 : (_p != null ? _p.length : ((0 : GoInt))) / ((2 : GoInt)), _1 : errShortWrite };
        } : T_writerFunc));
        var _f2:stdgo.io_test.Io_test.T_writerFunc = ((function(_p:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } {
            _t.errorf(((Go.str("MultiWriter called f2.Write") : GoString)));
            return { _0 : (_p != null ? _p.length : ((0 : GoInt))), _1 : ((null : stdgo.Error)) };
        } : T_writerFunc));
        var _w:Writer = multiWriter({
            final __self__ = new stdgo.io_test.Io_test.T_writerFunc_wrapper(_f1);
            __self__.write = #if !macro function(_p:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : stdgo.Error; } return _f1.write(_p) #else null #end;
            __self__;
        }, {
            final __self__ = new stdgo.io_test.Io_test.T_writerFunc_wrapper(_f2);
            __self__.write = #if !macro function(_p:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : stdgo.Error; } return _f2.write(_p) #else null #end;
            __self__;
        });
        var __tmp__ = _w.write(new Slice<GoUInt8>(((((100 : GoInt)) : GoInt)).toBasic(), 0, ...[for (i in 0 ... ((((100 : GoInt)) : GoInt)).toBasic()) ((0 : GoUInt8))])), _n:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if ((_n != ((50 : GoInt))) || (_err != errShortWrite)) {
            _t.errorf(((Go.str("Write = %d, %v, want 50, ErrShortWrite") : GoString)), Go.toInterface(_n), Go.toInterface(_err));
        };
    }
/**
    // Test that MultiReader copies the input slice and is insulated from future modification.
**/
function testMultiReaderCopy(_t:stdgo.testing.Testing.T):Void {
        var _slice = ((new Slice<Reader>(0, 0, {
            final __self__ = new stdgo.strings.Strings.Reader_wrapper(stdgo.strings.Strings.newReader(((Go.str("hello world") : GoString))));
            __self__.len = #if !macro function():GoInt return stdgo.strings.Strings.newReader(((Go.str("hello world") : GoString))).len() #else null #end;
            __self__.read = #if !macro function(_p:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : stdgo.Error; } return stdgo.strings.Strings.newReader(((Go.str("hello world") : GoString))).read(_p) #else null #end;
            __self__.readAt = #if !macro function(_p:Slice<GoUInt8>, _off:GoInt64):{ var _0 : GoInt; var _1 : stdgo.Error; } return stdgo.strings.Strings.newReader(((Go.str("hello world") : GoString))).readAt(_p, _off) #else null #end;
            __self__.readByte = #if !macro function():{ var _0 : GoUInt8; var _1 : stdgo.Error; } return stdgo.strings.Strings.newReader(((Go.str("hello world") : GoString))).readByte() #else null #end;
            __self__.readRune = #if !macro function():{ var _0 : GoInt32; var _1 : GoInt; var _2 : stdgo.Error; } return stdgo.strings.Strings.newReader(((Go.str("hello world") : GoString))).readRune() #else null #end;
            __self__.reset = #if !macro function(__0:GoString):Void stdgo.strings.Strings.newReader(((Go.str("hello world") : GoString))).reset(__0) #else null #end;
            __self__.seek = #if !macro function(_offset:GoInt64, _whence:GoInt):{ var _0 : GoInt64; var _1 : stdgo.Error; } return stdgo.strings.Strings.newReader(((Go.str("hello world") : GoString))).seek(_offset, _whence) #else null #end;
            __self__.size = #if !macro function():GoInt64 return stdgo.strings.Strings.newReader(((Go.str("hello world") : GoString))).size() #else null #end;
            __self__.unreadByte = #if !macro function():stdgo.Error return stdgo.strings.Strings.newReader(((Go.str("hello world") : GoString))).unreadByte() #else null #end;
            __self__.unreadRune = #if !macro function():stdgo.Error return stdgo.strings.Strings.newReader(((Go.str("hello world") : GoString))).unreadRune() #else null #end;
            __self__.writeTo = #if !macro function(_w:Writer):{ var _0 : GoInt64; var _1 : stdgo.Error; } return stdgo.strings.Strings.newReader(((Go.str("hello world") : GoString))).writeTo(_w) #else null #end;
            __self__;
        }) : Slice<Reader>));
        var _r:Reader = multiReader(..._slice.__toArray__());
        if (_slice != null) _slice[((0 : GoInt))] = ((null : Reader));
        var __tmp__ = readAll(_r), _data:Slice<GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if ((_err != null) || (((_data : GoString)) != ((Go.str("hello world") : GoString)))) {
            _t.errorf(((Go.str("ReadAll() = %q, %v, want %q, nil") : GoString)), Go.toInterface(_data), Go.toInterface(_err), Go.toInterface(((Go.str("hello world") : GoString))));
        };
    }
/**
    // Test that MultiWriter copies the input slice and is insulated from future modification.
**/
function testMultiWriterCopy(_t:stdgo.testing.Testing.T):Void {
        var _buf:stdgo.bytes.Bytes.Buffer = (({  } : stdgo.bytes.Bytes.Buffer));
        var _slice = ((new Slice<Writer>(0, 0, {
            final __self__ = new stdgo.bytes.Bytes.Buffer_wrapper(_buf);
            __self__.bytes = #if !macro function():Slice<GoUInt8> return _buf.bytes() #else null #end;
            __self__.cap_ = #if !macro function():GoInt return _buf.cap_() #else null #end;
            __self__.grow = #if !macro function(_pid:GoInt):Void _buf.grow(_pid) #else null #end;
            __self__.len = #if !macro function():GoInt return _buf.len() #else null #end;
            __self__.next = #if !macro function(_pid:GoInt):Slice<GoUInt8> return _buf.next(_pid) #else null #end;
            __self__.read = #if !macro function(_p:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : stdgo.Error; } return _buf.read(_p) #else null #end;
            __self__.readByte = #if !macro function():{ var _0 : GoUInt8; var _1 : stdgo.Error; } return _buf.readByte() #else null #end;
            __self__.readBytes = #if !macro function(_c:GoUInt8):{ var _0 : Slice<GoUInt8>; var _1 : stdgo.Error; } return _buf.readBytes(_c) #else null #end;
            __self__.readFrom = #if !macro function(_r:Reader):{ var _0 : GoInt64; var _1 : stdgo.Error; } return _buf.readFrom(_r) #else null #end;
            __self__.readRune = #if !macro function():{ var _0 : GoInt32; var _1 : GoInt; var _2 : stdgo.Error; } return _buf.readRune() #else null #end;
            __self__.readString = #if !macro function(_c:GoUInt8):{ var _0 : GoString; var _1 : stdgo.Error; } return _buf.readString(_c) #else null #end;
            __self__.reset = #if !macro function():Void _buf.reset() #else null #end;
            __self__.string = #if !macro function():GoString return _buf.string() #else null #end;
            __self__.truncate = #if !macro function(_pid:GoInt):Void _buf.truncate(_pid) #else null #end;
            __self__.unreadByte = #if !macro function():stdgo.Error return _buf.unreadByte() #else null #end;
            __self__.unreadRune = #if !macro function():stdgo.Error return _buf.unreadRune() #else null #end;
            __self__.write = #if !macro function(_p:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : stdgo.Error; } return _buf.write(_p) #else null #end;
            __self__.writeByte = #if !macro function(_c:GoUInt8):stdgo.Error return _buf.writeByte(_c) #else null #end;
            __self__.writeRune = #if !macro function(_new:GoInt32):{ var _0 : GoInt; var _1 : stdgo.Error; } return _buf.writeRune(_new) #else null #end;
            __self__.writeString = #if !macro function(__0:GoString):{ var _0 : GoInt; var _1 : stdgo.Error; } return _buf.writeString(__0) #else null #end;
            __self__.writeTo = #if !macro function(_w:Writer):{ var _0 : GoInt64; var _1 : stdgo.Error; } return _buf.writeTo(_w) #else null #end;
            __self__._empty = #if !macro function():Bool return _buf._empty() #else null #end;
            __self__._grow = #if !macro function(_pid:GoInt):GoInt return _buf._grow(_pid) #else null #end;
            __self__._readSlice = #if !macro function(_c:GoUInt8):{ var _0 : Slice<GoUInt8>; var _1 : stdgo.Error; } return _buf._readSlice(_c) #else null #end;
            __self__._tryGrowByReslice = #if !macro function(_pid:GoInt):{ var _0 : GoInt; var _1 : Bool; } return _buf._tryGrowByReslice(_pid) #else null #end;
            __self__;
        }) : Slice<Writer>));
        var _w:Writer = multiWriter(..._slice.__toArray__());
        if (_slice != null) _slice[((0 : GoInt))] = ((null : Writer));
        var __tmp__ = _w.write(((((Go.str("hello world") : GoString)) : Slice<GoByte>))), _n:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if ((_err != null) || (_n != ((11 : GoInt)))) {
            _t.errorf(((Go.str("Write(`hello world`) = %d, %v, want 11, nil") : GoString)), Go.toInterface(_n), Go.toInterface(_err));
        };
        if (((_buf.string() : GoString)) != ((Go.str("hello world") : GoString))) {
            _t.errorf(((Go.str("buf.String() = %q, want %q") : GoString)), Go.toInterface(((_buf.string() : GoString))), Go.toInterface(((Go.str("hello world") : GoString))));
        };
    }
/**
    // callDepth returns the logical call depth for the given PCs.
**/
function _callDepth(_callers:Slice<GoUIntptr>):GoInt {
        var _depth:GoInt = ((0 : GoInt));
        var _frames = stdgo.runtime.Runtime.callersFrames(_callers);
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
/**
    // Test that MultiReader properly flattens chained multiReaders when Read is called
**/
function testMultiReaderFlatten(_t:stdgo.testing.Testing.T):Void {
        var _pc = new Slice<GoUIntptr>(((((1000 : GoInt)) : GoInt)).toBasic(), 0, ...[for (i in 0 ... ((((1000 : GoInt)) : GoInt)).toBasic()) ((0 : GoUIntptr))]);
        var _n:GoInt = stdgo.runtime.Runtime.callers(((0 : GoInt)), _pc);
        var _myDepth:GoInt = _callDepth(((_pc.__slice__(0, _n) : Slice<GoUIntptr>)));
        var _readDepth:GoInt = ((0 : GoInt));
        var _r:Reader = multiReader({
            final __self__ = new stdgo.io_test.Io_test.T_readerFunc_wrapper(((function(_p:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } {
                var _n:GoInt = stdgo.runtime.Runtime.callers(((1 : GoInt)), _pc);
                _readDepth = _callDepth(((_pc.__slice__(0, _n) : Slice<GoUIntptr>)));
                return { _0 : ((0 : GoInt)), _1 : stdgo.errors.Errors.new_(((Go.str("irrelevant") : GoString))) };
            } : T_readerFunc)));
            __self__.read = #if !macro function(_p:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : stdgo.Error; } return ((function(_p:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } {
                var _n:GoInt = stdgo.runtime.Runtime.callers(((1 : GoInt)), _pc);
                _readDepth = _callDepth(((_pc.__slice__(0, _n) : Slice<GoUIntptr>)));
                return { _0 : ((0 : GoInt)), _1 : stdgo.errors.Errors.new_(((Go.str("irrelevant") : GoString))) };
            } : T_readerFunc)).read(_p) #else null #end;
            __self__;
        });
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < ((100 : GoInt)), _i++, {
                _r = multiReader(_r);
            });
        };
        _r.read(((null : Slice<GoUInt8>)));
        if (_readDepth != (_myDepth + ((2 : GoInt)))) {
            _t.errorf(((Go.str("multiReader did not flatten chained multiReaders: expected readDepth %d, got %d") : GoString)), Go.toInterface(_myDepth + ((2 : GoInt))), Go.toInterface(_readDepth));
        };
    }
/**
    // This used to yield bytes forever; issue 16795.
**/
function testMultiReaderSingleByteWithEOF(_t:stdgo.testing.Testing.T):Void {
        var __tmp__ = readAll(limitReader(multiReader({
            final __self__ = new stdgo.io_test.Io_test.T_byteAndEOFReader_wrapper((((("a".code : stdgo.io_test.Io_test.T_byteAndEOFReader)) : T_byteAndEOFReader)));
            __self__.read = #if !macro function(_p:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : stdgo.Error; } return (((("a".code : stdgo.io_test.Io_test.T_byteAndEOFReader)) : T_byteAndEOFReader)).read(_p) #else null #end;
            __self__;
        }, {
            final __self__ = new stdgo.io_test.Io_test.T_byteAndEOFReader_wrapper((((("b".code : stdgo.io_test.Io_test.T_byteAndEOFReader)) : T_byteAndEOFReader)));
            __self__.read = #if !macro function(_p:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : stdgo.Error; } return (((("b".code : stdgo.io_test.Io_test.T_byteAndEOFReader)) : T_byteAndEOFReader)).read(_p) #else null #end;
            __self__;
        }), ((10 : GoInt64)))), _got:Slice<GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.fatal(Go.toInterface(_err));
        };
        {};
        if (((_got : GoString)) != ((Go.str("ab") : GoString))) {
            _t.errorf(((Go.str("got %q; want %q") : GoString)), Go.toInterface(_got), Go.toInterface(((Go.str("ab") : GoString))));
        };
    }
/**
    // Test that a reader returning (n, EOF) at the end of a MultiReader
    // chain continues to return EOF on its final read, rather than
    // yielding a (0, EOF).
**/
function testMultiReaderFinalEOF(_t:stdgo.testing.Testing.T):Void {
        var _r:Reader = multiReader({
            final __self__ = new stdgo.bytes.Bytes.Reader_wrapper(stdgo.bytes.Bytes.newReader(((null : Slice<GoUInt8>))));
            __self__.len = #if !macro function():GoInt return stdgo.bytes.Bytes.newReader(((null : Slice<GoUInt8>))).len() #else null #end;
            __self__.read = #if !macro function(_p:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : stdgo.Error; } return stdgo.bytes.Bytes.newReader(((null : Slice<GoUInt8>))).read(_p) #else null #end;
            __self__.readAt = #if !macro function(_p:Slice<GoUInt8>, _off:GoInt64):{ var _0 : GoInt; var _1 : stdgo.Error; } return stdgo.bytes.Bytes.newReader(((null : Slice<GoUInt8>))).readAt(_p, _off) #else null #end;
            __self__.readByte = #if !macro function():{ var _0 : GoUInt8; var _1 : stdgo.Error; } return stdgo.bytes.Bytes.newReader(((null : Slice<GoUInt8>))).readByte() #else null #end;
            __self__.readRune = #if !macro function():{ var _0 : GoInt32; var _1 : GoInt; var _2 : stdgo.Error; } return stdgo.bytes.Bytes.newReader(((null : Slice<GoUInt8>))).readRune() #else null #end;
            __self__.reset = #if !macro function(_p:Slice<GoUInt8>):Void stdgo.bytes.Bytes.newReader(((null : Slice<GoUInt8>))).reset(_p) #else null #end;
            __self__.seek = #if !macro function(_offset:GoInt64, _whence:GoInt):{ var _0 : GoInt64; var _1 : stdgo.Error; } return stdgo.bytes.Bytes.newReader(((null : Slice<GoUInt8>))).seek(_offset, _whence) #else null #end;
            __self__.size = #if !macro function():GoInt64 return stdgo.bytes.Bytes.newReader(((null : Slice<GoUInt8>))).size() #else null #end;
            __self__.unreadByte = #if !macro function():stdgo.Error return stdgo.bytes.Bytes.newReader(((null : Slice<GoUInt8>))).unreadByte() #else null #end;
            __self__.unreadRune = #if !macro function():stdgo.Error return stdgo.bytes.Bytes.newReader(((null : Slice<GoUInt8>))).unreadRune() #else null #end;
            __self__.writeTo = #if !macro function(_w:Writer):{ var _0 : GoInt64; var _1 : stdgo.Error; } return stdgo.bytes.Bytes.newReader(((null : Slice<GoUInt8>))).writeTo(_w) #else null #end;
            __self__;
        }, {
            final __self__ = new stdgo.io_test.Io_test.T_byteAndEOFReader_wrapper((((("a".code : stdgo.io_test.Io_test.T_byteAndEOFReader)) : T_byteAndEOFReader)));
            __self__.read = #if !macro function(_p:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : stdgo.Error; } return (((("a".code : stdgo.io_test.Io_test.T_byteAndEOFReader)) : T_byteAndEOFReader)).read(_p) #else null #end;
            __self__;
        });
        var _buf = new Slice<GoUInt8>(((((2 : GoInt)) : GoInt)).toBasic(), 0, ...[for (i in 0 ... ((((2 : GoInt)) : GoInt)).toBasic()) ((0 : GoUInt8))]);
        var __tmp__ = _r.read(_buf), _n:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if ((_n != ((1 : GoInt))) || (_err != eof)) {
            _t.errorf(((Go.str("got %v, %v; want 1, EOF") : GoString)), Go.toInterface(_n), Go.toInterface(_err));
        };
    }
function testMultiReaderFreesExhaustedReaders(_t:stdgo.testing.Testing.T):Void {
        var _mr:Reader = ((null : Reader));
        var _closed = new Chan<T_wantedAndErrReader>(0, () -> (({  } : T_wantedAndErrReader)));
        {
            var a = function():Void {
                var _buf1 = stdgo.bytes.Bytes.newReader(((((Go.str("foo") : GoString)) : Slice<GoByte>)));
                var _buf2 = stdgo.bytes.Bytes.newReader(((((Go.str("bar") : GoString)) : Slice<GoByte>)));
                _mr = multiReader({
                    final __self__ = new stdgo.bytes.Bytes.Reader_wrapper(_buf1);
                    __self__.len = #if !macro function():GoInt return _buf1.len() #else null #end;
                    __self__.read = #if !macro function(_p:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : stdgo.Error; } return _buf1.read(_p) #else null #end;
                    __self__.readAt = #if !macro function(_p:Slice<GoUInt8>, _off:GoInt64):{ var _0 : GoInt; var _1 : stdgo.Error; } return _buf1.readAt(_p, _off) #else null #end;
                    __self__.readByte = #if !macro function():{ var _0 : GoUInt8; var _1 : stdgo.Error; } return _buf1.readByte() #else null #end;
                    __self__.readRune = #if !macro function():{ var _0 : GoInt32; var _1 : GoInt; var _2 : stdgo.Error; } return _buf1.readRune() #else null #end;
                    __self__.reset = #if !macro function(_p:Slice<GoUInt8>):Void _buf1.reset(_p) #else null #end;
                    __self__.seek = #if !macro function(_offset:GoInt64, _whence:GoInt):{ var _0 : GoInt64; var _1 : stdgo.Error; } return _buf1.seek(_offset, _whence) #else null #end;
                    __self__.size = #if !macro function():GoInt64 return _buf1.size() #else null #end;
                    __self__.unreadByte = #if !macro function():stdgo.Error return _buf1.unreadByte() #else null #end;
                    __self__.unreadRune = #if !macro function():stdgo.Error return _buf1.unreadRune() #else null #end;
                    __self__.writeTo = #if !macro function(_w:Writer):{ var _0 : GoInt64; var _1 : stdgo.Error; } return _buf1.writeTo(_w) #else null #end;
                    __self__;
                }, {
                    final __self__ = new stdgo.bytes.Bytes.Reader_wrapper(_buf2);
                    __self__.len = #if !macro function():GoInt return _buf2.len() #else null #end;
                    __self__.read = #if !macro function(_p:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : stdgo.Error; } return _buf2.read(_p) #else null #end;
                    __self__.readAt = #if !macro function(_p:Slice<GoUInt8>, _off:GoInt64):{ var _0 : GoInt; var _1 : stdgo.Error; } return _buf2.readAt(_p, _off) #else null #end;
                    __self__.readByte = #if !macro function():{ var _0 : GoUInt8; var _1 : stdgo.Error; } return _buf2.readByte() #else null #end;
                    __self__.readRune = #if !macro function():{ var _0 : GoInt32; var _1 : GoInt; var _2 : stdgo.Error; } return _buf2.readRune() #else null #end;
                    __self__.reset = #if !macro function(_p:Slice<GoUInt8>):Void _buf2.reset(_p) #else null #end;
                    __self__.seek = #if !macro function(_offset:GoInt64, _whence:GoInt):{ var _0 : GoInt64; var _1 : stdgo.Error; } return _buf2.seek(_offset, _whence) #else null #end;
                    __self__.size = #if !macro function():GoInt64 return _buf2.size() #else null #end;
                    __self__.unreadByte = #if !macro function():stdgo.Error return _buf2.unreadByte() #else null #end;
                    __self__.unreadRune = #if !macro function():stdgo.Error return _buf2.unreadRune() #else null #end;
                    __self__.writeTo = #if !macro function(_w:Writer):{ var _0 : GoInt64; var _1 : stdgo.Error; } return _buf2.writeTo(_w) #else null #end;
                    __self__;
                });
                stdgo.runtime.Runtime.setFinalizer(Go.toInterface(_buf1), Go.toInterface(function(_0:stdgo.bytes.Bytes.Reader):Void {
                    if (_closed != null) _closed.__close__();
                }));
            };
            a();
        };
        var _buf = new Slice<GoUInt8>(((((4 : GoInt)) : GoInt)).toBasic(), 0, ...[for (i in 0 ... ((((4 : GoInt)) : GoInt)).toBasic()) ((0 : GoUInt8))]);
        {
            var __tmp__ = readFull(_mr, _buf), _n:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if ((_err != null) || (((_buf : GoString)) != ((Go.str("foob") : GoString)))) {
                _t.fatalf((("ReadFull = %d (%q), %v; want 3, \"foo\", nil" : GoString)), Go.toInterface(_n), Go.toInterface(((_buf.__slice__(0, _n) : Slice<GoUInt8>))), Go.toInterface(_err));
            };
        };
        stdgo.runtime.Runtime.gc();
        Go.select([stdgo.time.Time.after((("5000000000" : stdgo.time.Time.Duration))).__get__() => {
            _t.fatal(Go.toInterface(((Go.str("timeout waiting for collection of buf1") : GoString))));
        }, _closed.__get__() => {}]);
        {
            var __tmp__ = readFull(_mr, ((_buf.__slice__(0, ((2 : GoInt))) : Slice<GoUInt8>))), _n:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if ((_err != null) || (((((_buf.__slice__(0, ((2 : GoInt))) : Slice<GoUInt8>)) : GoString)) != ((Go.str("ar") : GoString)))) {
                _t.fatalf((("ReadFull = %d (%q), %v; want 2, \"ar\", nil" : GoString)), Go.toInterface(_n), Go.toInterface(((_buf.__slice__(0, _n) : Slice<GoUInt8>))), Go.toInterface(_err));
            };
        };
    }
function testInterleavedMultiReader(_t:stdgo.testing.Testing.T):Void {
        var _r1 = stdgo.strings.Strings.newReader(((Go.str("123") : GoString)));
        var _r2 = stdgo.strings.Strings.newReader(((Go.str("45678") : GoString)));
        var _mr1:Reader = multiReader({
            final __self__ = new stdgo.strings.Strings.Reader_wrapper(_r1);
            __self__.len = #if !macro function():GoInt return _r1.len() #else null #end;
            __self__.read = #if !macro function(_p:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : stdgo.Error; } return _r1.read(_p) #else null #end;
            __self__.readAt = #if !macro function(_p:Slice<GoUInt8>, _off:GoInt64):{ var _0 : GoInt; var _1 : stdgo.Error; } return _r1.readAt(_p, _off) #else null #end;
            __self__.readByte = #if !macro function():{ var _0 : GoUInt8; var _1 : stdgo.Error; } return _r1.readByte() #else null #end;
            __self__.readRune = #if !macro function():{ var _0 : GoInt32; var _1 : GoInt; var _2 : stdgo.Error; } return _r1.readRune() #else null #end;
            __self__.reset = #if !macro function(__0:GoString):Void _r1.reset(__0) #else null #end;
            __self__.seek = #if !macro function(_offset:GoInt64, _whence:GoInt):{ var _0 : GoInt64; var _1 : stdgo.Error; } return _r1.seek(_offset, _whence) #else null #end;
            __self__.size = #if !macro function():GoInt64 return _r1.size() #else null #end;
            __self__.unreadByte = #if !macro function():stdgo.Error return _r1.unreadByte() #else null #end;
            __self__.unreadRune = #if !macro function():stdgo.Error return _r1.unreadRune() #else null #end;
            __self__.writeTo = #if !macro function(_w:Writer):{ var _0 : GoInt64; var _1 : stdgo.Error; } return _r1.writeTo(_w) #else null #end;
            __self__;
        }, {
            final __self__ = new stdgo.strings.Strings.Reader_wrapper(_r2);
            __self__.len = #if !macro function():GoInt return _r2.len() #else null #end;
            __self__.read = #if !macro function(_p:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : stdgo.Error; } return _r2.read(_p) #else null #end;
            __self__.readAt = #if !macro function(_p:Slice<GoUInt8>, _off:GoInt64):{ var _0 : GoInt; var _1 : stdgo.Error; } return _r2.readAt(_p, _off) #else null #end;
            __self__.readByte = #if !macro function():{ var _0 : GoUInt8; var _1 : stdgo.Error; } return _r2.readByte() #else null #end;
            __self__.readRune = #if !macro function():{ var _0 : GoInt32; var _1 : GoInt; var _2 : stdgo.Error; } return _r2.readRune() #else null #end;
            __self__.reset = #if !macro function(__0:GoString):Void _r2.reset(__0) #else null #end;
            __self__.seek = #if !macro function(_offset:GoInt64, _whence:GoInt):{ var _0 : GoInt64; var _1 : stdgo.Error; } return _r2.seek(_offset, _whence) #else null #end;
            __self__.size = #if !macro function():GoInt64 return _r2.size() #else null #end;
            __self__.unreadByte = #if !macro function():stdgo.Error return _r2.unreadByte() #else null #end;
            __self__.unreadRune = #if !macro function():stdgo.Error return _r2.unreadRune() #else null #end;
            __self__.writeTo = #if !macro function(_w:Writer):{ var _0 : GoInt64; var _1 : stdgo.Error; } return _r2.writeTo(_w) #else null #end;
            __self__;
        });
        var _mr2:Reader = multiReader(_mr1);
        var _buf = new Slice<GoUInt8>(((((4 : GoInt)) : GoInt)).toBasic(), 0, ...[for (i in 0 ... ((((4 : GoInt)) : GoInt)).toBasic()) ((0 : GoUInt8))]);
        var __tmp__ = readFull(_mr2, _buf), _n:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        {
            var _got:GoString = ((((_buf.__slice__(0, _n) : Slice<GoUInt8>)) : GoString));
            if ((_got != ((Go.str("1234") : GoString))) || (_err != null)) {
                _t.errorf((("ReadFull(mr2) = (%q, %v), want (\"1234\", nil)" : GoString)), Go.toInterface(_got), Go.toInterface(_err));
            };
        };
        {
            var __tmp__ = readFull(_mr1, _buf);
            _n = __tmp__._0;
            _err = __tmp__._1;
        };
        {
            var _got:GoString = ((((_buf.__slice__(0, _n) : Slice<GoUInt8>)) : GoString));
            if ((_got != ((Go.str("5678") : GoString))) || (_err != null)) {
                _t.errorf((("ReadFull(mr1) = (%q, %v), want (\"5678\", nil)" : GoString)), Go.toInterface(_got), Go.toInterface(_err));
            };
        };
    }
function _checkWrite(_t:stdgo.testing.Testing.T, _w:Writer, _data:Slice<GoByte>, _c:Chan<GoInt>):Void {
        var __tmp__ = _w.write(_data), _n:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.errorf(((Go.str("write: %v") : GoString)), Go.toInterface(_err));
        };
        if (_n != (_data != null ? _data.length : ((0 : GoInt)))) {
            _t.errorf(((Go.str("short write: %d != %d") : GoString)), Go.toInterface(_n), Go.toInterface((_data != null ? _data.length : ((0 : GoInt)))));
        };
        _c.__send__(((0 : GoInt)));
    }
/**
    // Test a single read/write pair.
**/
function testPipe1(_t:stdgo.testing.Testing.T):Void {
        var _c = new Chan<GoInt>(0, () -> ((0 : GoInt)));
        var __tmp__ = pipe(), _r:Ref<PipeReader> = __tmp__._0, _w:Ref<PipeWriter> = __tmp__._1;
        var _buf:Slice<GoUInt8> = new Slice<GoUInt8>(((((64 : GoInt)) : GoInt)).toBasic(), 0, ...[for (i in 0 ... ((((64 : GoInt)) : GoInt)).toBasic()) ((0 : GoUInt8))]);
        Go.routine(() -> _checkWrite(_t, {
            final __self__ = new PipeWriter_wrapper(_w);
            __self__.close = #if !macro function():stdgo.Error return _w.close() #else null #end;
            __self__.closeWithError = #if !macro function(__0:stdgo.Error):stdgo.Error return _w.closeWithError(__0) #else null #end;
            __self__.write = #if !macro function(_p:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : stdgo.Error; } return _w.write(_p) #else null #end;
            __self__;
        }, ((((Go.str("hello, world") : GoString)) : Slice<GoByte>)), _c));
        var __tmp__ = _r.read(_buf), _n:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.errorf(((Go.str("read: %v") : GoString)), Go.toInterface(_err));
        } else if ((_n != ((12 : GoInt))) || (((((_buf.__slice__(((0 : GoInt)), ((12 : GoInt))) : Slice<GoUInt8>)) : GoString)) != ((Go.str("hello, world") : GoString)))) {
            _t.errorf(((Go.str("bad read: got %q") : GoString)), Go.toInterface(((_buf.__slice__(((0 : GoInt)), _n) : Slice<GoUInt8>))));
        };
        _c.__get__();
        _r.close();
        _w.close();
    }
function _reader(_t:stdgo.testing.Testing.T, _r:Reader, _c:Chan<GoInt>):Void {
        var _buf:Slice<GoUInt8> = new Slice<GoUInt8>(((((64 : GoInt)) : GoInt)).toBasic(), 0, ...[for (i in 0 ... ((((64 : GoInt)) : GoInt)).toBasic()) ((0 : GoUInt8))]);
        while (true) {
            var __tmp__ = _r.read(_buf), _n:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err == eof) {
                _c.__send__(((0 : GoInt)));
                break;
            };
            if (_err != null) {
                _t.errorf(((Go.str("read: %v") : GoString)), Go.toInterface(_err));
            };
            _c.__send__(_n);
        };
    }
/**
    // Test a sequence of read/write pairs.
**/
function testPipe2(_t:stdgo.testing.Testing.T):Void {
        var _c = new Chan<GoInt>(0, () -> ((0 : GoInt)));
        var __tmp__ = pipe(), _r:Ref<PipeReader> = __tmp__._0, _w:Ref<PipeWriter> = __tmp__._1;
        Go.routine(() -> _reader(_t, {
            final __self__ = new PipeReader_wrapper(_r);
            __self__.close = #if !macro function():stdgo.Error return _r.close() #else null #end;
            __self__.closeWithError = #if !macro function(__0:stdgo.Error):stdgo.Error return _r.closeWithError(__0) #else null #end;
            __self__.read = #if !macro function(_p:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : stdgo.Error; } return _r.read(_p) #else null #end;
            __self__;
        }, _c));
        var _buf:Slice<GoUInt8> = new Slice<GoUInt8>(((((64 : GoInt)) : GoInt)).toBasic(), 0, ...[for (i in 0 ... ((((64 : GoInt)) : GoInt)).toBasic()) ((0 : GoUInt8))]);
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < ((5 : GoInt)), _i++, {
                var _p = ((_buf.__slice__(((0 : GoInt)), ((5 : GoInt)) + (_i * ((10 : GoInt)))) : Slice<GoUInt8>));
                var __tmp__ = _w.write(_p), _n:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_n != (_p != null ? _p.length : ((0 : GoInt)))) {
                    _t.errorf(((Go.str("wrote %d, got %d") : GoString)), Go.toInterface((_p != null ? _p.length : ((0 : GoInt)))), Go.toInterface(_n));
                };
                if (_err != null) {
                    _t.errorf(((Go.str("write: %v") : GoString)), Go.toInterface(_err));
                };
                var _nn:GoInt = _c.__get__();
                if (_nn != _n) {
                    _t.errorf(((Go.str("wrote %d, read got %d") : GoString)), Go.toInterface(_n), Go.toInterface(_nn));
                };
            });
        };
        _w.close();
        var _nn:GoInt = _c.__get__();
        if (_nn != ((0 : GoInt))) {
            _t.errorf(((Go.str("final read got %d") : GoString)), Go.toInterface(_nn));
        };
    }
/**
    // Test a large write that requires multiple reads to satisfy.
**/
function _writer(_w:WriteCloser, _buf:Slice<GoByte>, _c:Chan<T_pipeReturn>):Void {
        var __tmp__ = _w.write(_buf), _n:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        _w.close();
        _c.__send__(((new stdgo.io_test.Io_test.T_pipeReturn(_n, _err) : stdgo.io_test.Io_test.T_pipeReturn)));
    }
function testPipe3(_t:stdgo.testing.Testing.T):Void {
        var _c = new Chan<stdgo.io_test.Io_test.T_pipeReturn>(0, () -> (({  } : stdgo.io_test.Io_test.T_pipeReturn)));
        var __tmp__ = pipe(), _r:Ref<PipeReader> = __tmp__._0, _w:Ref<PipeWriter> = __tmp__._1;
        var _wdat:Slice<GoUInt8> = new Slice<GoUInt8>(((((128 : GoInt)) : GoInt)).toBasic(), 0, ...[for (i in 0 ... ((((128 : GoInt)) : GoInt)).toBasic()) ((0 : GoUInt8))]);
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < (_wdat != null ? _wdat.length : ((0 : GoInt))), _i++, {
                if (_wdat != null) _wdat[_i] = ((_i : GoByte));
            });
        };
        Go.routine(() -> _writer({
            final __self__ = new PipeWriter_wrapper(_w);
            __self__.close = #if !macro function():stdgo.Error return _w.close() #else null #end;
            __self__.closeWithError = #if !macro function(__0:stdgo.Error):stdgo.Error return _w.closeWithError(__0) #else null #end;
            __self__.write = #if !macro function(_p:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : stdgo.Error; } return _w.write(_p) #else null #end;
            __self__;
        }, _wdat, _c));
        var _rdat:Slice<GoUInt8> = new Slice<GoUInt8>(((((1024 : GoInt)) : GoInt)).toBasic(), 0, ...[for (i in 0 ... ((((1024 : GoInt)) : GoInt)).toBasic()) ((0 : GoUInt8))]);
        var _tot:GoInt = ((0 : GoInt));
        {
            var _n:GoInt = ((1 : GoInt));
            Go.cfor(_n <= ((256 : GoInt)), _n = _n * (((2 : GoInt))), {
                var __tmp__ = _r.read(((_rdat.__slice__(_tot, _tot + _n) : Slice<GoUInt8>))), _nn:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if ((_err != null) && (_err != eof)) {
                    _t.fatalf(((Go.str("read: %v") : GoString)), Go.toInterface(_err));
                };
                var _expect:GoInt = _n;
                if (_n == ((128 : GoInt))) {
                    _expect = ((1 : GoInt));
                } else if (_n == ((256 : GoInt))) {
                    _expect = ((0 : GoInt));
                    if (_err != eof) {
                        _t.fatalf(((Go.str("read at end: %v") : GoString)), Go.toInterface(_err));
                    };
                };
                if (_nn != _expect) {
                    _t.fatalf(((Go.str("read %d, expected %d, got %d") : GoString)), Go.toInterface(_n), Go.toInterface(_expect), Go.toInterface(_nn));
                };
                _tot = _tot + (_nn);
            });
        };
        var _pr:stdgo.io_test.Io_test.T_pipeReturn = (_c.__get__() == null ? null : _c.__get__().__copy__());
        if ((_pr._n != ((128 : GoInt))) || (_pr._err != null)) {
            _t.fatalf(((Go.str("write 128: %d, %v") : GoString)), Go.toInterface(_pr._n), Go.toInterface(_pr._err));
        };
        if (_tot != ((128 : GoInt))) {
            _t.fatalf(((Go.str("total read %d != 128") : GoString)), Go.toInterface(_tot));
        };
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < ((128 : GoInt)), _i++, {
                if ((_rdat != null ? _rdat[_i] : ((0 : GoUInt8))) != ((_i : GoByte))) {
                    _t.fatalf(((Go.str("rdat[%d] = %d") : GoString)), Go.toInterface(_i), Go.toInterface((_rdat != null ? _rdat[_i] : ((0 : GoUInt8)))));
                };
            });
        };
    }
function _delayClose(_t:stdgo.testing.Testing.T, _cl:T_closer, _ch:Chan<GoInt>, _tt:T_pipeTest):Void {
        stdgo.time.Time.sleep(((1000000 : stdgo.time.Time.Duration)));
        var _err:Error = ((null : stdgo.Error));
        if (_tt._closeWithError) {
            _err = _cl.closeWithError(_tt._err);
        } else {
            _err = _cl.close();
        };
        if (_err != null) {
            _t.errorf(((Go.str("delayClose: %v") : GoString)), Go.toInterface(_err));
        };
        _ch.__send__(((0 : GoInt)));
    }
function testPipeReadClose(_t:stdgo.testing.Testing.T):Void {
        for (_0 => _tt in _pipeTests) {
            var _c = new Chan<GoInt>(((((1 : GoInt)) : GoInt)).toBasic(), () -> ((0 : GoInt)));
            var __tmp__ = pipe(), _r:Ref<PipeReader> = __tmp__._0, _w:Ref<PipeWriter> = __tmp__._1;
            if (_tt._async) {
                Go.routine(() -> _delayClose(_t, {
                    final __self__ = new PipeWriter_wrapper(_w);
                    __self__.close = #if !macro function():stdgo.Error return _w.close() #else null #end;
                    __self__.closeWithError = #if !macro function(__0:stdgo.Error):stdgo.Error return _w.closeWithError(__0) #else null #end;
                    __self__.write = #if !macro function(_p:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : stdgo.Error; } return _w.write(_p) #else null #end;
                    __self__;
                }, _c, (_tt == null ? null : _tt.__copy__())));
            } else {
                _delayClose(_t, {
                    final __self__ = new PipeWriter_wrapper(_w);
                    __self__.close = #if !macro function():stdgo.Error return _w.close() #else null #end;
                    __self__.closeWithError = #if !macro function(__0:stdgo.Error):stdgo.Error return _w.closeWithError(__0) #else null #end;
                    __self__.write = #if !macro function(_p:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : stdgo.Error; } return _w.write(_p) #else null #end;
                    __self__;
                }, _c, (_tt == null ? null : _tt.__copy__()));
            };
            var _buf:Slice<GoUInt8> = new Slice<GoUInt8>(((((64 : GoInt)) : GoInt)).toBasic(), 0, ...[for (i in 0 ... ((((64 : GoInt)) : GoInt)).toBasic()) ((0 : GoUInt8))]);
            var __tmp__ = _r.read(_buf), _n:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            _c.__get__();
            var _want:stdgo.Error = _tt._err;
            if (_want == null) {
                _want = eof;
            };
            if (_err != _want) {
                _t.errorf(((Go.str("read from closed pipe: %v want %v") : GoString)), Go.toInterface(_err), Go.toInterface(_want));
            };
            if (_n != ((0 : GoInt))) {
                _t.errorf(((Go.str("read on closed pipe returned %d") : GoString)), Go.toInterface(_n));
            };
            {
                _err = _r.close();
                if (_err != null) {
                    _t.errorf(((Go.str("r.Close: %v") : GoString)), Go.toInterface(_err));
                };
            };
        };
    }
/**
    // Test close on Read side during Read.
**/
function testPipeReadClose2(_t:stdgo.testing.Testing.T):Void {
        var _c = new Chan<GoInt>(((((1 : GoInt)) : GoInt)).toBasic(), () -> ((0 : GoInt)));
        var __tmp__ = pipe(), _r:Ref<PipeReader> = __tmp__._0, _0:Ref<PipeWriter> = __tmp__._1;
        Go.routine(() -> _delayClose(_t, {
            final __self__ = new PipeReader_wrapper(_r);
            __self__.close = #if !macro function():stdgo.Error return _r.close() #else null #end;
            __self__.closeWithError = #if !macro function(__0:stdgo.Error):stdgo.Error return _r.closeWithError(__0) #else null #end;
            __self__.read = #if !macro function(_p:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : stdgo.Error; } return _r.read(_p) #else null #end;
            __self__;
        }, _c, ((new stdgo.io_test.Io_test.T_pipeTest() : stdgo.io_test.Io_test.T_pipeTest))));
        var __tmp__ = _r.read(new Slice<GoUInt8>(((((64 : GoInt)) : GoInt)).toBasic(), 0, ...[for (i in 0 ... ((((64 : GoInt)) : GoInt)).toBasic()) ((0 : GoUInt8))])), _n:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        _c.__get__();
        if ((_n != ((0 : GoInt))) || (_err != errClosedPipe)) {
            _t.errorf(((Go.str("read from closed pipe: %v, %v want %v, %v") : GoString)), Go.toInterface(_n), Go.toInterface(_err), Go.toInterface(((0 : GoInt))), Go.toInterface(errClosedPipe));
        };
    }
function testPipeWriteClose(_t:stdgo.testing.Testing.T):Void {
        for (_0 => _tt in _pipeTests) {
            var _c = new Chan<GoInt>(((((1 : GoInt)) : GoInt)).toBasic(), () -> ((0 : GoInt)));
            var __tmp__ = pipe(), _r:Ref<PipeReader> = __tmp__._0, _w:Ref<PipeWriter> = __tmp__._1;
            if (_tt._async) {
                Go.routine(() -> _delayClose(_t, {
                    final __self__ = new PipeReader_wrapper(_r);
                    __self__.close = #if !macro function():stdgo.Error return _r.close() #else null #end;
                    __self__.closeWithError = #if !macro function(__0:stdgo.Error):stdgo.Error return _r.closeWithError(__0) #else null #end;
                    __self__.read = #if !macro function(_p:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : stdgo.Error; } return _r.read(_p) #else null #end;
                    __self__;
                }, _c, (_tt == null ? null : _tt.__copy__())));
            } else {
                _delayClose(_t, {
                    final __self__ = new PipeReader_wrapper(_r);
                    __self__.close = #if !macro function():stdgo.Error return _r.close() #else null #end;
                    __self__.closeWithError = #if !macro function(__0:stdgo.Error):stdgo.Error return _r.closeWithError(__0) #else null #end;
                    __self__.read = #if !macro function(_p:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : stdgo.Error; } return _r.read(_p) #else null #end;
                    __self__;
                }, _c, (_tt == null ? null : _tt.__copy__()));
            };
            var __tmp__ = writeString({
                final __self__ = new PipeWriter_wrapper(_w);
                __self__.close = #if !macro function():stdgo.Error return _w.close() #else null #end;
                __self__.closeWithError = #if !macro function(__0:stdgo.Error):stdgo.Error return _w.closeWithError(__0) #else null #end;
                __self__.write = #if !macro function(_p:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : stdgo.Error; } return _w.write(_p) #else null #end;
                __self__;
            }, ((Go.str("hello, world") : GoString))), _n:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            _c.__get__();
            var _expect:stdgo.Error = _tt._err;
            if (_expect == null) {
                _expect = errClosedPipe;
            };
            if (_err != _expect) {
                _t.errorf(((Go.str("write on closed pipe: %v want %v") : GoString)), Go.toInterface(_err), Go.toInterface(_expect));
            };
            if (_n != ((0 : GoInt))) {
                _t.errorf(((Go.str("write on closed pipe returned %d") : GoString)), Go.toInterface(_n));
            };
            {
                _err = _w.close();
                if (_err != null) {
                    _t.errorf(((Go.str("w.Close: %v") : GoString)), Go.toInterface(_err));
                };
            };
        };
    }
/**
    // Test close on Write side during Write.
**/
function testPipeWriteClose2(_t:stdgo.testing.Testing.T):Void {
        var _c = new Chan<GoInt>(((((1 : GoInt)) : GoInt)).toBasic(), () -> ((0 : GoInt)));
        var __tmp__ = pipe(), _0:Ref<PipeReader> = __tmp__._0, _w:Ref<PipeWriter> = __tmp__._1;
        Go.routine(() -> _delayClose(_t, {
            final __self__ = new PipeWriter_wrapper(_w);
            __self__.close = #if !macro function():stdgo.Error return _w.close() #else null #end;
            __self__.closeWithError = #if !macro function(__0:stdgo.Error):stdgo.Error return _w.closeWithError(__0) #else null #end;
            __self__.write = #if !macro function(_p:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : stdgo.Error; } return _w.write(_p) #else null #end;
            __self__;
        }, _c, ((new stdgo.io_test.Io_test.T_pipeTest() : stdgo.io_test.Io_test.T_pipeTest))));
        var __tmp__ = _w.write(new Slice<GoUInt8>(((((64 : GoInt)) : GoInt)).toBasic(), 0, ...[for (i in 0 ... ((((64 : GoInt)) : GoInt)).toBasic()) ((0 : GoUInt8))])), _n:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        _c.__get__();
        if ((_n != ((0 : GoInt))) || (_err != errClosedPipe)) {
            _t.errorf(((Go.str("write to closed pipe: %v, %v want %v, %v") : GoString)), Go.toInterface(_n), Go.toInterface(_err), Go.toInterface(((0 : GoInt))), Go.toInterface(errClosedPipe));
        };
    }
function testWriteEmpty(_t:stdgo.testing.Testing.T):Void {
        var __tmp__ = pipe(), _r:Ref<PipeReader> = __tmp__._0, _w:Ref<PipeWriter> = __tmp__._1;
        Go.routine(() -> {
            var a = function():Void {
                _w.write(((new Slice<GoUInt8>(0, 0) : Slice<GoUInt8>)));
                _w.close();
            };
            a();
        });
        var _b:GoArray<GoByte> = new GoArray<GoUInt8>(...[for (i in 0 ... 2) ((0 : GoUInt8))]);
        readFull({
            final __self__ = new PipeReader_wrapper(_r);
            __self__.close = #if !macro function():stdgo.Error return _r.close() #else null #end;
            __self__.closeWithError = #if !macro function(__0:stdgo.Error):stdgo.Error return _r.closeWithError(__0) #else null #end;
            __self__.read = #if !macro function(_p:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : stdgo.Error; } return _r.read(_p) #else null #end;
            __self__;
        }, ((_b.__slice__(((0 : GoInt)), ((2 : GoInt))) : Slice<GoUInt8>)));
        _r.close();
    }
function testWriteNil(_t:stdgo.testing.Testing.T):Void {
        var __tmp__ = pipe(), _r:Ref<PipeReader> = __tmp__._0, _w:Ref<PipeWriter> = __tmp__._1;
        Go.routine(() -> {
            var a = function():Void {
                _w.write(((null : Slice<GoUInt8>)));
                _w.close();
            };
            a();
        });
        var _b:GoArray<GoByte> = new GoArray<GoUInt8>(...[for (i in 0 ... 2) ((0 : GoUInt8))]);
        readFull({
            final __self__ = new PipeReader_wrapper(_r);
            __self__.close = #if !macro function():stdgo.Error return _r.close() #else null #end;
            __self__.closeWithError = #if !macro function(__0:stdgo.Error):stdgo.Error return _r.closeWithError(__0) #else null #end;
            __self__.read = #if !macro function(_p:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : stdgo.Error; } return _r.read(_p) #else null #end;
            __self__;
        }, ((_b.__slice__(((0 : GoInt)), ((2 : GoInt))) : Slice<GoUInt8>)));
        _r.close();
    }
function testWriteAfterWriterClose(_t:stdgo.testing.Testing.T):Void {
        var __tmp__ = pipe(), _r:Ref<PipeReader> = __tmp__._0, _w:Ref<PipeWriter> = __tmp__._1;
        var _done = new Chan<Bool>(0, () -> false);
        var _writeErr:Error = ((null : stdgo.Error));
        Go.routine(() -> {
            var a = function():Void {
                var __tmp__ = _w.write(((((Go.str("hello") : GoString)) : Slice<GoByte>))), _0:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    _t.errorf(((Go.str("got error: %q; expected none") : GoString)), Go.toInterface(_err));
                };
                _w.close();
                {
                    var __tmp__ = _w.write(((((Go.str("world") : GoString)) : Slice<GoByte>)));
                    _writeErr = __tmp__._1;
                };
                _done.__send__(true);
            };
            a();
        });
        var _buf = new Slice<GoUInt8>(((((100 : GoInt)) : GoInt)).toBasic(), 0, ...[for (i in 0 ... ((((100 : GoInt)) : GoInt)).toBasic()) ((0 : GoUInt8))]);
        var _result:GoString = (("" : GoString));
        var __tmp__ = readFull({
            final __self__ = new PipeReader_wrapper(_r);
            __self__.close = #if !macro function():stdgo.Error return _r.close() #else null #end;
            __self__.closeWithError = #if !macro function(__0:stdgo.Error):stdgo.Error return _r.closeWithError(__0) #else null #end;
            __self__.read = #if !macro function(_p:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : stdgo.Error; } return _r.read(_p) #else null #end;
            __self__;
        }, _buf), _n:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if ((_err != null) && (_err != errUnexpectedEOF)) {
            _t.fatalf(((Go.str("got: %q; want: %q") : GoString)), Go.toInterface(_err), Go.toInterface(errUnexpectedEOF));
        };
        _result = ((((_buf.__slice__(((0 : GoInt)), _n) : Slice<GoUInt8>)) : GoString));
        _done.__get__();
        if (_result != ((Go.str("hello") : GoString))) {
            _t.errorf(((Go.str("got: %q; want: %q") : GoString)), Go.toInterface(_result), Go.toInterface(((Go.str("hello") : GoString))));
        };
        if (_writeErr != errClosedPipe) {
            _t.errorf(((Go.str("got: %q; want: %q") : GoString)), Go.toInterface(_writeErr), Go.toInterface(errClosedPipe));
        };
    }
@:structInit @:using(stdgo.io_test.Io_test.T_testError1_testPipeCloseError_0_static_extension) class T_testError1_testPipeCloseError_0 {
    @:embedded
    public var _error : stdgo.Error = ((null : stdgo.Error));
    public function new(?_error:stdgo.Error) {
        if (_error != null) this._error = _error;
    }
    @:embedded
    public function error():GoString return _error.error();
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_testError1_testPipeCloseError_0(_error);
    }
}
@:structInit @:using(stdgo.io_test.Io_test.T_testError2_testPipeCloseError_1_static_extension) class T_testError2_testPipeCloseError_1 {
    @:embedded
    public var _error : stdgo.Error = ((null : stdgo.Error));
    public function new(?_error:stdgo.Error) {
        if (_error != null) this._error = _error;
    }
    @:embedded
    public function error():GoString return _error.error();
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_testError2_testPipeCloseError_1(_error);
    }
}
function testPipeCloseError(_t:stdgo.testing.Testing.T):Void {
        {};
        {};
        var __tmp__ = pipe(), _r:Ref<PipeReader> = __tmp__._0, _w:Ref<PipeWriter> = __tmp__._1;
        _r.closeWithError({
            final __self__ = new stdgo.io_test.Io_test.T_testError1_testPipeCloseError_0_wrapper(((new stdgo.io_test.Io_test.T_testError1_testPipeCloseError_0() : stdgo.io_test.Io_test.T_testError1_testPipeCloseError_0)));
            __self__.error = #if !macro function():GoString return ((new stdgo.io_test.Io_test.T_testError1_testPipeCloseError_0() : stdgo.io_test.Io_test.T_testError1_testPipeCloseError_0)).error() #else null #end;
            __self__;
        });
        {
            var __tmp__ = _w.write(((null : Slice<GoUInt8>))), _0:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != (((new stdgo.io_test.Io_test.T_testError1_testPipeCloseError_0() : stdgo.io_test.Io_test.T_testError1_testPipeCloseError_0)))) {
                _t.errorf(((Go.str("Write error: got %T, want testError1") : GoString)), Go.toInterface(_err));
            };
        };
        _r.closeWithError({
            final __self__ = new stdgo.io_test.Io_test.T_testError2_testPipeCloseError_1_wrapper(((new stdgo.io_test.Io_test.T_testError2_testPipeCloseError_1() : stdgo.io_test.Io_test.T_testError2_testPipeCloseError_1)));
            __self__.error = #if !macro function():GoString return ((new stdgo.io_test.Io_test.T_testError2_testPipeCloseError_1() : stdgo.io_test.Io_test.T_testError2_testPipeCloseError_1)).error() #else null #end;
            __self__;
        });
        {
            var __tmp__ = _w.write(((null : Slice<GoUInt8>))), _1:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != (((new stdgo.io_test.Io_test.T_testError1_testPipeCloseError_0() : stdgo.io_test.Io_test.T_testError1_testPipeCloseError_0)))) {
                _t.errorf(((Go.str("Write error: got %T, want testError1") : GoString)), Go.toInterface(_err));
            };
        };
        {
            var __tmp__ = pipe();
            _r = __tmp__._0;
            _w = __tmp__._1;
        };
        _w.closeWithError({
            final __self__ = new stdgo.io_test.Io_test.T_testError1_testPipeCloseError_0_wrapper(((new stdgo.io_test.Io_test.T_testError1_testPipeCloseError_0() : stdgo.io_test.Io_test.T_testError1_testPipeCloseError_0)));
            __self__.error = #if !macro function():GoString return ((new stdgo.io_test.Io_test.T_testError1_testPipeCloseError_0() : stdgo.io_test.Io_test.T_testError1_testPipeCloseError_0)).error() #else null #end;
            __self__;
        });
        {
            var __tmp__ = _r.read(((null : Slice<GoUInt8>))), _2:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != (((new stdgo.io_test.Io_test.T_testError1_testPipeCloseError_0() : stdgo.io_test.Io_test.T_testError1_testPipeCloseError_0)))) {
                _t.errorf(((Go.str("Read error: got %T, want testError1") : GoString)), Go.toInterface(_err));
            };
        };
        _w.closeWithError({
            final __self__ = new stdgo.io_test.Io_test.T_testError2_testPipeCloseError_1_wrapper(((new stdgo.io_test.Io_test.T_testError2_testPipeCloseError_1() : stdgo.io_test.Io_test.T_testError2_testPipeCloseError_1)));
            __self__.error = #if !macro function():GoString return ((new stdgo.io_test.Io_test.T_testError2_testPipeCloseError_1() : stdgo.io_test.Io_test.T_testError2_testPipeCloseError_1)).error() #else null #end;
            __self__;
        });
        {
            var __tmp__ = _r.read(((null : Slice<GoUInt8>))), _3:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != (((new stdgo.io_test.Io_test.T_testError1_testPipeCloseError_0() : stdgo.io_test.Io_test.T_testError1_testPipeCloseError_0)))) {
                _t.errorf(((Go.str("Read error: got %T, want testError1") : GoString)), Go.toInterface(_err));
            };
        };
    }
function testPipeConcurrent(_t:stdgo.testing.Testing.T):Void {
        {};
        _t.run(((Go.str("Write") : GoString)), function(_t:stdgo.testing.Testing.T):Void {
            var __tmp__ = pipe(), _r:Ref<PipeReader> = __tmp__._0, _w:Ref<PipeWriter> = __tmp__._1;
            {
                var _i:GoInt = ((0 : GoInt));
                Go.cfor(_i < ((8 : GoInt)), _i++, {
                    Go.routine(() -> {
                        var a = function():Void {
                            stdgo.time.Time.sleep(((1000000 : stdgo.time.Time.Duration)));
                            {
                                var __tmp__ = _w.write(((((Go.str("0123456789abcdef") : GoString)) : Slice<GoByte>))), _n:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                                if ((_n != (((Go.str("0123456789abcdef") : GoString)) != null ? ((Go.str("0123456789abcdef") : GoString)).length : ((0 : GoInt)))) || (_err != null)) {
                                    _t.errorf(((Go.str("Write() = (%d, %v); want (%d, nil)") : GoString)), Go.toInterface(_n), Go.toInterface(_err), Go.toInterface((((Go.str("0123456789abcdef") : GoString)) != null ? ((Go.str("0123456789abcdef") : GoString)).length : ((0 : GoInt)))));
                                };
                            };
                        };
                        a();
                    });
                });
            };
            var _buf = new Slice<GoUInt8>(((((128 : GoInt)) : GoInt)).toBasic(), 0, ...[for (i in 0 ... ((((128 : GoInt)) : GoInt)).toBasic()) ((0 : GoUInt8))]);
            {
                var _i:GoInt = ((0 : GoInt));
                Go.cfor(_i < (_buf != null ? _buf.length : ((0 : GoInt))), _i = _i + (((2 : GoInt))), {
                    {
                        var __tmp__ = _r.read(((_buf.__slice__(_i, _i + ((2 : GoInt))) : Slice<GoUInt8>))), _n:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                        if ((_n != ((2 : GoInt))) || (_err != null)) {
                            _t.errorf(((Go.str("Read() = (%d, %v); want (%d, nil)") : GoString)), Go.toInterface(_n), Go.toInterface(_err), Go.toInterface(((2 : GoInt))));
                        };
                    };
                });
            };
            var _got:GoString = ((_buf : GoString));
            var _want:GoString = stdgo.strings.Strings.repeat(((Go.str("0123456789abcdef") : GoString)), ((8 : GoInt)));
            if (_got != _want) {
                _t.errorf(((Go.str("got: %q; want: %q") : GoString)), Go.toInterface(_got), Go.toInterface(_want));
            };
        });
        _t.run(((Go.str("Read") : GoString)), function(_t:stdgo.testing.Testing.T):Void {
            var __tmp__ = pipe(), _r:Ref<PipeReader> = __tmp__._0, _w:Ref<PipeWriter> = __tmp__._1;
            var _c = new Chan<Slice<GoUInt8>>(((((64 : GoInt)) : GoInt)).toBasic(), () -> ((null : Slice<GoUInt8>)));
            {
                var _i:GoInt = ((0 : GoInt));
                Go.cfor(_i < (_c != null ? _c.capacity : ((0 : GoInt))), _i++, {
                    Go.routine(() -> {
                        var a = function():Void {
                            stdgo.time.Time.sleep(((1000000 : stdgo.time.Time.Duration)));
                            var _buf = new Slice<GoUInt8>(((((2 : GoInt)) : GoInt)).toBasic(), 0, ...[for (i in 0 ... ((((2 : GoInt)) : GoInt)).toBasic()) ((0 : GoUInt8))]);
                            {
                                var __tmp__ = _r.read(_buf), _n:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                                if ((_n != ((2 : GoInt))) || (_err != null)) {
                                    _t.errorf(((Go.str("Read() = (%d, %v); want (%d, nil)") : GoString)), Go.toInterface(_n), Go.toInterface(_err), Go.toInterface(((2 : GoInt))));
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
                        var __tmp__ = _w.write(((((Go.str("0123456789abcdef") : GoString)) : Slice<GoByte>))), _n:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                        if ((_n != (((Go.str("0123456789abcdef") : GoString)) != null ? ((Go.str("0123456789abcdef") : GoString)).length : ((0 : GoInt)))) || (_err != null)) {
                            _t.errorf(((Go.str("Write() = (%d, %v); want (%d, nil)") : GoString)), Go.toInterface(_n), Go.toInterface(_err), Go.toInterface((((Go.str("0123456789abcdef") : GoString)) != null ? ((Go.str("0123456789abcdef") : GoString)).length : ((0 : GoInt)))));
                        };
                    };
                });
            };
            var _got = new Slice<GoUInt8>(((((0 : GoInt)) : GoInt)).toBasic(), ((128 : GoInt)), ...[for (i in 0 ... ((((0 : GoInt)) : GoInt)).toBasic()) ((0 : GoUInt8))]);
            {
                var _i:GoInt = ((0 : GoInt));
                Go.cfor(_i < (_c != null ? _c.capacity : ((0 : GoInt))), _i++, {
                    _got = (_got != null ? _got.__append__(...(_c.__get__()).__toArray__()) : new Slice<GoUInt8>(0, 0, ...(_c.__get__()).__toArray__()));
                });
            };
            _got = _sortBytesInGroups(_got, ((2 : GoInt)));
            var _want = stdgo.bytes.Bytes.repeat(((((Go.str("0123456789abcdef") : GoString)) : Slice<GoByte>)), ((8 : GoInt)));
            _want = _sortBytesInGroups(_want, ((2 : GoInt)));
            if (((_got : GoString)) != ((_want : GoString))) {
                _t.errorf(((Go.str("got: %q; want: %q") : GoString)), Go.toInterface(_got), Go.toInterface(_want));
            };
        });
    }
function _sortBytesInGroups(_b:Slice<GoByte>, _n:GoInt):Slice<GoByte> {
        var _groups:Slice<Slice<GoByte>> = ((null : Slice<Slice<GoUInt8>>));
        while ((_b != null ? _b.length : ((0 : GoInt))) > ((0 : GoInt))) {
            _groups = (_groups != null ? _groups.__append__(((_b.__slice__(0, _n) : Slice<GoUInt8>))) : new Slice<Slice<GoUInt8>>(0, 0, ((_b.__slice__(0, _n) : Slice<GoUInt8>))));
            _b = ((_b.__slice__(_n) : Slice<GoUInt8>));
        };
        stdgo.sort.Sort.slice(Go.toInterface(_groups), function(_i:GoInt, _j:GoInt):Bool {
            return stdgo.bytes.Bytes.compare((_groups != null ? _groups[_i] : ((null : Slice<GoUInt8>))), (_groups != null ? _groups[_j] : ((null : Slice<GoUInt8>)))) < ((0 : GoInt));
        });
        return stdgo.bytes.Bytes.join(_groups, ((null : Slice<GoUInt8>)));
    }
@:keep class Buffer_static_extension {
    @:embedded
    public static function _tryGrowByReslice( __self__:Buffer, _pid:GoInt):{ var _0 : GoInt; var _1 : Bool; } return __self__._tryGrowByReslice(_pid);
    @:embedded
    public static function _readSlice( __self__:Buffer, _c:GoUInt8):{ var _0 : Slice<GoUInt8>; var _1 : stdgo.Error; } return __self__._readSlice(_c);
    @:embedded
    public static function _grow( __self__:Buffer, _pid:GoInt):GoInt return __self__._grow(_pid);
    @:embedded
    public static function _empty( __self__:Buffer):Bool return __self__._empty();
    @:embedded
    public static function writeString( __self__:Buffer, __0:GoString):{ var _0 : GoInt; var _1 : stdgo.Error; } return __self__.writeString(__0);
    @:embedded
    public static function writeRune( __self__:Buffer, _new:GoInt32):{ var _0 : GoInt; var _1 : stdgo.Error; } return __self__.writeRune(_new);
    @:embedded
    public static function writeByte( __self__:Buffer, _c:GoUInt8):stdgo.Error return __self__.writeByte(_c);
    @:embedded
    public static function write( __self__:Buffer, _p:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : stdgo.Error; } return __self__.write(_p);
    @:embedded
    public static function unreadRune( __self__:Buffer):stdgo.Error return __self__.unreadRune();
    @:embedded
    public static function unreadByte( __self__:Buffer):stdgo.Error return __self__.unreadByte();
    @:embedded
    public static function truncate( __self__:Buffer, _pid:GoInt) __self__.truncate(_pid);
    @:embedded
    public static function string( __self__:Buffer):GoString return __self__.string();
    @:embedded
    public static function reset( __self__:Buffer) __self__.reset();
    @:embedded
    public static function readString( __self__:Buffer, _c:GoUInt8):{ var _0 : GoString; var _1 : stdgo.Error; } return __self__.readString(_c);
    @:embedded
    public static function readRune( __self__:Buffer):{ var _0 : GoInt32; var _1 : GoInt; var _2 : stdgo.Error; } return __self__.readRune();
    @:embedded
    public static function readBytes( __self__:Buffer, _c:GoUInt8):{ var _0 : Slice<GoUInt8>; var _1 : stdgo.Error; } return __self__.readBytes(_c);
    @:embedded
    public static function readByte( __self__:Buffer):{ var _0 : GoUInt8; var _1 : stdgo.Error; } return __self__.readByte();
    @:embedded
    public static function read( __self__:Buffer, _p:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : stdgo.Error; } return __self__.read(_p);
    @:embedded
    public static function next( __self__:Buffer, _pid:GoInt):Slice<GoUInt8> return __self__.next(_pid);
    @:embedded
    public static function len( __self__:Buffer):GoInt return __self__.len();
    @:embedded
    public static function grow( __self__:Buffer, _pid:GoInt) __self__.grow(_pid);
    @:embedded
    public static function cap_( __self__:Buffer):GoInt return __self__.cap_();
    @:embedded
    public static function bytes( __self__:Buffer):Slice<GoUInt8> return __self__.bytes();
}
class Buffer_wrapper {
    @:embedded
    public var _tryGrowByReslice : GoInt -> { var _0 : GoInt; var _1 : Bool; } = null;
    @:embedded
    public var _readSlice : GoUInt8 -> { var _0 : Slice<GoUInt8>; var _1 : stdgo.Error; } = null;
    @:embedded
    public var _grow : GoInt -> GoInt = null;
    @:embedded
    public var _empty : () -> Bool = null;
    @:embedded
    public var writeString : GoString -> { var _0 : GoInt; var _1 : stdgo.Error; } = null;
    @:embedded
    public var writeRune : GoInt32 -> { var _0 : GoInt; var _1 : stdgo.Error; } = null;
    @:embedded
    public var writeByte : GoUInt8 -> stdgo.Error = null;
    @:embedded
    public var write : Slice<GoUInt8> -> { var _0 : GoInt; var _1 : stdgo.Error; } = null;
    @:embedded
    public var unreadRune : () -> stdgo.Error = null;
    @:embedded
    public var unreadByte : () -> stdgo.Error = null;
    @:embedded
    public var truncate : GoInt -> Void = null;
    @:embedded
    public var string : () -> GoString = null;
    @:embedded
    public var reset : () -> Void = null;
    @:embedded
    public var readString : GoUInt8 -> { var _0 : GoString; var _1 : stdgo.Error; } = null;
    @:embedded
    public var readRune : () -> { var _0 : GoInt32; var _1 : GoInt; var _2 : stdgo.Error; } = null;
    @:embedded
    public var readBytes : GoUInt8 -> { var _0 : Slice<GoUInt8>; var _1 : stdgo.Error; } = null;
    @:embedded
    public var readByte : () -> { var _0 : GoUInt8; var _1 : stdgo.Error; } = null;
    @:embedded
    public var read : Slice<GoUInt8> -> { var _0 : GoInt; var _1 : stdgo.Error; } = null;
    @:embedded
    public var next : GoInt -> Slice<GoUInt8> = null;
    @:embedded
    public var len : () -> GoInt = null;
    @:embedded
    public var grow : GoInt -> Void = null;
    @:embedded
    public var cap_ : () -> GoInt = null;
    @:embedded
    public var bytes : () -> Slice<GoUInt8> = null;
    public function new(__self__) this.__self__ = __self__;
    public function __underlying__() return Go.toInterface(this);
    var __self__ : Buffer;
}
@:keep class T_writeToChecker_static_extension {
    @:keep
    static public function writeTo( _wt:T_writeToChecker, _w:Writer):{ var _0 : GoInt64; var _1 : Error; } {
        _wt._writeToCalled = true;
        return _wt.buffer.writeTo(_w);
    }
    @:embedded
    public static function _tryGrowByReslice( __self__:T_writeToChecker, _pid:GoInt):{ var _0 : GoInt; var _1 : Bool; } return __self__._tryGrowByReslice(_pid);
    @:embedded
    public static function _readSlice( __self__:T_writeToChecker, _c:GoUInt8):{ var _0 : Slice<GoUInt8>; var _1 : stdgo.Error; } return __self__._readSlice(_c);
    @:embedded
    public static function _grow( __self__:T_writeToChecker, _pid:GoInt):GoInt return __self__._grow(_pid);
    @:embedded
    public static function _empty( __self__:T_writeToChecker):Bool return __self__._empty();
    @:embedded
    public static function writeString( __self__:T_writeToChecker, __0:GoString):{ var _0 : GoInt; var _1 : stdgo.Error; } return __self__.writeString(__0);
    @:embedded
    public static function writeRune( __self__:T_writeToChecker, _new:GoInt32):{ var _0 : GoInt; var _1 : stdgo.Error; } return __self__.writeRune(_new);
    @:embedded
    public static function writeByte( __self__:T_writeToChecker, _c:GoUInt8):stdgo.Error return __self__.writeByte(_c);
    @:embedded
    public static function write( __self__:T_writeToChecker, _p:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : stdgo.Error; } return __self__.write(_p);
    @:embedded
    public static function unreadRune( __self__:T_writeToChecker):stdgo.Error return __self__.unreadRune();
    @:embedded
    public static function unreadByte( __self__:T_writeToChecker):stdgo.Error return __self__.unreadByte();
    @:embedded
    public static function truncate( __self__:T_writeToChecker, _pid:GoInt) __self__.truncate(_pid);
    @:embedded
    public static function string( __self__:T_writeToChecker):GoString return __self__.string();
    @:embedded
    public static function reset( __self__:T_writeToChecker) __self__.reset();
    @:embedded
    public static function readString( __self__:T_writeToChecker, _c:GoUInt8):{ var _0 : GoString; var _1 : stdgo.Error; } return __self__.readString(_c);
    @:embedded
    public static function readRune( __self__:T_writeToChecker):{ var _0 : GoInt32; var _1 : GoInt; var _2 : stdgo.Error; } return __self__.readRune();
    @:embedded
    public static function readFrom( __self__:T_writeToChecker, _r:Reader):{ var _0 : GoInt64; var _1 : stdgo.Error; } return __self__.readFrom(_r);
    @:embedded
    public static function readBytes( __self__:T_writeToChecker, _c:GoUInt8):{ var _0 : Slice<GoUInt8>; var _1 : stdgo.Error; } return __self__.readBytes(_c);
    @:embedded
    public static function readByte( __self__:T_writeToChecker):{ var _0 : GoUInt8; var _1 : stdgo.Error; } return __self__.readByte();
    @:embedded
    public static function read( __self__:T_writeToChecker, _p:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : stdgo.Error; } return __self__.read(_p);
    @:embedded
    public static function next( __self__:T_writeToChecker, _pid:GoInt):Slice<GoUInt8> return __self__.next(_pid);
    @:embedded
    public static function len( __self__:T_writeToChecker):GoInt return __self__.len();
    @:embedded
    public static function grow( __self__:T_writeToChecker, _pid:GoInt) __self__.grow(_pid);
    @:embedded
    public static function cap_( __self__:T_writeToChecker):GoInt return __self__.cap_();
    @:embedded
    public static function bytes( __self__:T_writeToChecker):Slice<GoUInt8> return __self__.bytes();
}
class T_writeToChecker_wrapper {
    @:keep
    public var writeTo : Writer -> { var _0 : GoInt64; var _1 : Error; } = null;
    @:embedded
    public var _tryGrowByReslice : GoInt -> { var _0 : GoInt; var _1 : Bool; } = null;
    @:embedded
    public var _readSlice : GoUInt8 -> { var _0 : Slice<GoUInt8>; var _1 : stdgo.Error; } = null;
    @:embedded
    public var _grow : GoInt -> GoInt = null;
    @:embedded
    public var _empty : () -> Bool = null;
    @:embedded
    public var writeString : GoString -> { var _0 : GoInt; var _1 : stdgo.Error; } = null;
    @:embedded
    public var writeRune : GoInt32 -> { var _0 : GoInt; var _1 : stdgo.Error; } = null;
    @:embedded
    public var writeByte : GoUInt8 -> stdgo.Error = null;
    @:embedded
    public var write : Slice<GoUInt8> -> { var _0 : GoInt; var _1 : stdgo.Error; } = null;
    @:embedded
    public var unreadRune : () -> stdgo.Error = null;
    @:embedded
    public var unreadByte : () -> stdgo.Error = null;
    @:embedded
    public var truncate : GoInt -> Void = null;
    @:embedded
    public var string : () -> GoString = null;
    @:embedded
    public var reset : () -> Void = null;
    @:embedded
    public var readString : GoUInt8 -> { var _0 : GoString; var _1 : stdgo.Error; } = null;
    @:embedded
    public var readRune : () -> { var _0 : GoInt32; var _1 : GoInt; var _2 : stdgo.Error; } = null;
    @:embedded
    public var readFrom : Reader -> { var _0 : GoInt64; var _1 : stdgo.Error; } = null;
    @:embedded
    public var readBytes : GoUInt8 -> { var _0 : Slice<GoUInt8>; var _1 : stdgo.Error; } = null;
    @:embedded
    public var readByte : () -> { var _0 : GoUInt8; var _1 : stdgo.Error; } = null;
    @:embedded
    public var read : Slice<GoUInt8> -> { var _0 : GoInt; var _1 : stdgo.Error; } = null;
    @:embedded
    public var next : GoInt -> Slice<GoUInt8> = null;
    @:embedded
    public var len : () -> GoInt = null;
    @:embedded
    public var grow : GoInt -> Void = null;
    @:embedded
    public var cap_ : () -> GoInt = null;
    @:embedded
    public var bytes : () -> Slice<GoUInt8> = null;
    public function new(__self__) this.__self__ = __self__;
    public function __underlying__() return Go.toInterface(this);
    var __self__ : T_writeToChecker;
}
@:keep class T_zeroErrReader_static_extension {
    @:keep
    static public function read( _r:T_zeroErrReader, _p:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } {
        return { _0 : Go.copySlice(_p, ((new Slice<GoUInt8>(0, 0, ((0 : GoUInt8))) : Slice<GoUInt8>))), _1 : _r._err };
    }
}
class T_zeroErrReader_wrapper {
    @:keep
    public var read : Slice<GoByte> -> { var _0 : GoInt; var _1 : Error; } = null;
    public function new(__self__) this.__self__ = __self__;
    public function __underlying__() return Go.toInterface(this);
    var __self__ : T_zeroErrReader;
}
@:keep class T_errWriter_static_extension {
    @:keep
    static public function write( _w:T_errWriter, _0:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } {
        return { _0 : ((0 : GoInt)), _1 : _w._err };
    }
}
class T_errWriter_wrapper {
    @:keep
    public var write : Slice<GoByte> -> { var _0 : GoInt; var _1 : Error; } = null;
    public function new(__self__) this.__self__ = __self__;
    public function __underlying__() return Go.toInterface(this);
    var __self__ : T_errWriter;
}
@:keep class T_noReadFrom_static_extension {
    @:keep
    static public function write( _w:T_noReadFrom, _p:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } {
        var _n:GoInt = ((0 : GoInt)), _err:Error = ((null : stdgo.Error));
        return _w._w.write(_p);
    }
}
class T_noReadFrom_wrapper {
    @:keep
    public var write : Slice<GoByte> -> { var _0 : GoInt; var _1 : Error; } = null;
    public function new(__self__) this.__self__ = __self__;
    public function __underlying__() return Go.toInterface(this);
    var __self__ : T_noReadFrom;
}
@:keep class T_wantedAndErrReader_static_extension {
    @:keep
    static public function read( _:T_wantedAndErrReader, _p:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } {
        return { _0 : (_p != null ? _p.length : ((0 : GoInt))), _1 : stdgo.errors.Errors.new_(((Go.str("wantedAndErrReader error") : GoString))) };
    }
}
class T_wantedAndErrReader_wrapper {
    @:keep
    public var read : Slice<GoByte> -> { var _0 : GoInt; var _1 : Error; } = null;
    public function new(__self__) this.__self__ = __self__;
    public function __underlying__() return Go.toInterface(this);
    var __self__ : T_wantedAndErrReader;
}
@:keep class T_dataAndErrorBuffer_static_extension {
    @:keep
    static public function read( _r:T_dataAndErrorBuffer, _p:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } {
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
    @:embedded
    public static function _tryGrowByReslice( __self__:T_dataAndErrorBuffer, _pid:GoInt):{ var _0 : GoInt; var _1 : Bool; } return __self__._tryGrowByReslice(_pid);
    @:embedded
    public static function _readSlice( __self__:T_dataAndErrorBuffer, _c:GoUInt8):{ var _0 : Slice<GoUInt8>; var _1 : stdgo.Error; } return __self__._readSlice(_c);
    @:embedded
    public static function _grow( __self__:T_dataAndErrorBuffer, _pid:GoInt):GoInt return __self__._grow(_pid);
    @:embedded
    public static function _empty( __self__:T_dataAndErrorBuffer):Bool return __self__._empty();
    @:embedded
    public static function writeTo( __self__:T_dataAndErrorBuffer, _w:Writer):{ var _0 : GoInt64; var _1 : stdgo.Error; } return __self__.writeTo(_w);
    @:embedded
    public static function writeString( __self__:T_dataAndErrorBuffer, __0:GoString):{ var _0 : GoInt; var _1 : stdgo.Error; } return __self__.writeString(__0);
    @:embedded
    public static function writeRune( __self__:T_dataAndErrorBuffer, _new:GoInt32):{ var _0 : GoInt; var _1 : stdgo.Error; } return __self__.writeRune(_new);
    @:embedded
    public static function writeByte( __self__:T_dataAndErrorBuffer, _c:GoUInt8):stdgo.Error return __self__.writeByte(_c);
    @:embedded
    public static function write( __self__:T_dataAndErrorBuffer, _p:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : stdgo.Error; } return __self__.write(_p);
    @:embedded
    public static function unreadRune( __self__:T_dataAndErrorBuffer):stdgo.Error return __self__.unreadRune();
    @:embedded
    public static function unreadByte( __self__:T_dataAndErrorBuffer):stdgo.Error return __self__.unreadByte();
    @:embedded
    public static function truncate( __self__:T_dataAndErrorBuffer, _pid:GoInt) __self__.truncate(_pid);
    @:embedded
    public static function string( __self__:T_dataAndErrorBuffer):GoString return __self__.string();
    @:embedded
    public static function reset( __self__:T_dataAndErrorBuffer) __self__.reset();
    @:embedded
    public static function readString( __self__:T_dataAndErrorBuffer, _c:GoUInt8):{ var _0 : GoString; var _1 : stdgo.Error; } return __self__.readString(_c);
    @:embedded
    public static function readRune( __self__:T_dataAndErrorBuffer):{ var _0 : GoInt32; var _1 : GoInt; var _2 : stdgo.Error; } return __self__.readRune();
    @:embedded
    public static function readFrom( __self__:T_dataAndErrorBuffer, _r:Reader):{ var _0 : GoInt64; var _1 : stdgo.Error; } return __self__.readFrom(_r);
    @:embedded
    public static function readBytes( __self__:T_dataAndErrorBuffer, _c:GoUInt8):{ var _0 : Slice<GoUInt8>; var _1 : stdgo.Error; } return __self__.readBytes(_c);
    @:embedded
    public static function readByte( __self__:T_dataAndErrorBuffer):{ var _0 : GoUInt8; var _1 : stdgo.Error; } return __self__.readByte();
    @:embedded
    public static function next( __self__:T_dataAndErrorBuffer, _pid:GoInt):Slice<GoUInt8> return __self__.next(_pid);
    @:embedded
    public static function len( __self__:T_dataAndErrorBuffer):GoInt return __self__.len();
    @:embedded
    public static function grow( __self__:T_dataAndErrorBuffer, _pid:GoInt) __self__.grow(_pid);
    @:embedded
    public static function cap_( __self__:T_dataAndErrorBuffer):GoInt return __self__.cap_();
    @:embedded
    public static function bytes( __self__:T_dataAndErrorBuffer):Slice<GoUInt8> return __self__.bytes();
}
class T_dataAndErrorBuffer_wrapper {
    @:keep
    public var read : Slice<GoByte> -> { var _0 : GoInt; var _1 : Error; } = null;
    @:embedded
    public var _tryGrowByReslice : GoInt -> { var _0 : GoInt; var _1 : Bool; } = null;
    @:embedded
    public var _readSlice : GoUInt8 -> { var _0 : Slice<GoUInt8>; var _1 : stdgo.Error; } = null;
    @:embedded
    public var _grow : GoInt -> GoInt = null;
    @:embedded
    public var _empty : () -> Bool = null;
    @:embedded
    public var writeTo : Writer -> { var _0 : GoInt64; var _1 : stdgo.Error; } = null;
    @:embedded
    public var writeString : GoString -> { var _0 : GoInt; var _1 : stdgo.Error; } = null;
    @:embedded
    public var writeRune : GoInt32 -> { var _0 : GoInt; var _1 : stdgo.Error; } = null;
    @:embedded
    public var writeByte : GoUInt8 -> stdgo.Error = null;
    @:embedded
    public var write : Slice<GoUInt8> -> { var _0 : GoInt; var _1 : stdgo.Error; } = null;
    @:embedded
    public var unreadRune : () -> stdgo.Error = null;
    @:embedded
    public var unreadByte : () -> stdgo.Error = null;
    @:embedded
    public var truncate : GoInt -> Void = null;
    @:embedded
    public var string : () -> GoString = null;
    @:embedded
    public var reset : () -> Void = null;
    @:embedded
    public var readString : GoUInt8 -> { var _0 : GoString; var _1 : stdgo.Error; } = null;
    @:embedded
    public var readRune : () -> { var _0 : GoInt32; var _1 : GoInt; var _2 : stdgo.Error; } = null;
    @:embedded
    public var readFrom : Reader -> { var _0 : GoInt64; var _1 : stdgo.Error; } = null;
    @:embedded
    public var readBytes : GoUInt8 -> { var _0 : Slice<GoUInt8>; var _1 : stdgo.Error; } = null;
    @:embedded
    public var readByte : () -> { var _0 : GoUInt8; var _1 : stdgo.Error; } = null;
    @:embedded
    public var next : GoInt -> Slice<GoUInt8> = null;
    @:embedded
    public var len : () -> GoInt = null;
    @:embedded
    public var grow : GoInt -> Void = null;
    @:embedded
    public var cap_ : () -> GoInt = null;
    @:embedded
    public var bytes : () -> Slice<GoUInt8> = null;
    public function new(__self__) this.__self__ = __self__;
    public function __underlying__() return Go.toInterface(this);
    var __self__ : T_dataAndErrorBuffer;
}
@:keep class T_largeWriter_static_extension {
    @:keep
    static public function write( _w:T_largeWriter, _p:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } {
        return { _0 : (_p != null ? _p.length : ((0 : GoInt))) + ((1 : GoInt)), _1 : _w._err };
    }
}
class T_largeWriter_wrapper {
    @:keep
    public var write : Slice<GoByte> -> { var _0 : GoInt; var _1 : Error; } = null;
    public function new(__self__) this.__self__ = __self__;
    public function __underlying__() return Go.toInterface(this);
    var __self__ : T_largeWriter;
}
@:keep class T_writeStringChecker_static_extension {
    @:keep
    static public function write( _c:T_writeStringChecker, _p:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } {
        var _n:GoInt = ((0 : GoInt)), _err:Error = ((null : stdgo.Error));
        return { _0 : (_p != null ? _p.length : ((0 : GoInt))), _1 : ((null : stdgo.Error)) };
    }
    @:keep
    static public function writeString( _c:T_writeStringChecker, _s:GoString):{ var _0 : GoInt; var _1 : Error; } {
        var _n:GoInt = ((0 : GoInt)), _err:Error = ((null : stdgo.Error));
        _c._called = true;
        return { _0 : (_s != null ? _s.length : ((0 : GoInt))), _1 : ((null : stdgo.Error)) };
    }
}
class T_writeStringChecker_wrapper {
    @:keep
    public var write : Slice<GoByte> -> { var _0 : GoInt; var _1 : Error; } = null;
    @:keep
    public var writeString : GoString -> { var _0 : GoInt; var _1 : Error; } = null;
    public function new(__self__) this.__self__ = __self__;
    public function __underlying__() return Go.toInterface(this);
    var __self__ : T_writeStringChecker;
}
@:keep class T_pipeTest_static_extension {
    @:keep
    static public function string( _p:T_pipeTest):GoString {
        return stdgo.fmt.Fmt.sprintf(((Go.str("async=%v err=%v closeWithError=%v") : GoString)), Go.toInterface(_p._async), Go.toInterface(_p._err), Go.toInterface(_p._closeWithError));
    }
}
class T_pipeTest_wrapper {
    @:keep
    public var string : () -> GoString = null;
    public function new(__self__) this.__self__ = __self__;
    public function __underlying__() return Go.toInterface(this);
    var __self__ : T_pipeTest;
}
@:keep class T_writerFunc_static_extension {
    @:keep
    static public function write( _f:T_writerFunc, _p:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } {
        return _f(_p);
    }
}
class T_writerFunc_wrapper {
    @:keep
    public var write : Slice<GoByte> -> { var _0 : GoInt; var _1 : Error; } = null;
    public function new(__self__) this.__self__ = __self__;
    public function __underlying__() return Go.toInterface(this);
    var __self__ : T_writerFunc;
}
@:keep class T_readerFunc_static_extension {
    @:keep
    static public function read( _f:T_readerFunc, _p:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } {
        return _f(_p);
    }
}
class T_readerFunc_wrapper {
    @:keep
    public var read : Slice<GoByte> -> { var _0 : GoInt; var _1 : Error; } = null;
    public function new(__self__) this.__self__ = __self__;
    public function __underlying__() return Go.toInterface(this);
    var __self__ : T_readerFunc;
}
@:keep class T_byteAndEOFReader_static_extension {
    @:keep
    static public function read( _b:T_byteAndEOFReader, _p:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } {
        var _n:GoInt = ((0 : GoInt)), _err:Error = ((null : stdgo.Error));
        if ((_p != null ? _p.length : ((0 : GoInt))) == ((0 : GoInt))) {
            throw Go.toInterface(((Go.str("unexpected call") : GoString)));
        };
        if (_p != null) _p[((0 : GoInt))] = ((_b : GoByte));
        return { _0 : ((1 : GoInt)), _1 : eof };
    }
}
class T_byteAndEOFReader_wrapper {
    @:keep
    public var read : Slice<GoByte> -> { var _0 : GoInt; var _1 : Error; } = null;
    public function new(__self__) this.__self__ = __self__;
    public function __underlying__() return Go.toInterface(this);
    var __self__ : T_byteAndEOFReader;
}
@:keep class T_simpleWriter_testMultiWriter_WriteStringSingleAlloc_0_static_extension {
    @:embedded
    public static function write( __self__:T_simpleWriter_testMultiWriter_WriteStringSingleAlloc_0, _p:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : stdgo.Error; } return __self__.write(_p);
}
class T_simpleWriter_testMultiWriter_WriteStringSingleAlloc_0_wrapper {
    @:embedded
    public var write : Slice<GoUInt8> -> { var _0 : GoInt; var _1 : stdgo.Error; } = null;
    public function new(__self__) this.__self__ = __self__;
    public function __underlying__() return Go.toInterface(this);
    var __self__ : T_simpleWriter_testMultiWriter_WriteStringSingleAlloc_0;
}
@:keep class T_testError1_testPipeCloseError_0_static_extension {
    @:embedded
    public static function error( __self__:T_testError1_testPipeCloseError_0):GoString return __self__.error();
}
class T_testError1_testPipeCloseError_0_wrapper {
    @:embedded
    public var error : () -> GoString = null;
    public function new(__self__) this.__self__ = __self__;
    public function __underlying__() return Go.toInterface(this);
    var __self__ : T_testError1_testPipeCloseError_0;
}
@:keep class T_testError2_testPipeCloseError_1_static_extension {
    @:embedded
    public static function error( __self__:T_testError2_testPipeCloseError_1):GoString return __self__.error();
}
class T_testError2_testPipeCloseError_1_wrapper {
    @:embedded
    public var error : () -> GoString = null;
    public function new(__self__) this.__self__ = __self__;
    public function __underlying__() return Go.toInterface(this);
    var __self__ : T_testError2_testPipeCloseError_1;
}
