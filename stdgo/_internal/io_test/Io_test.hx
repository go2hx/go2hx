package stdgo._internal.io_test;
import stdgo._internal.io.Io;
import stdgo._internal.io.Io;
import stdgo._internal.io.Io;
import stdgo._internal.io.Io;
var _pipeTests : stdgo.Slice<stdgo._internal.io_test.Io_test.T_pipeTest> = (new stdgo.Slice<stdgo._internal.io_test.Io_test.T_pipeTest>(6, 6, ...[(new stdgo._internal.io_test.Io_test.T_pipeTest(true, (null : stdgo.Error), false) : stdgo._internal.io_test.Io_test.T_pipeTest), (new stdgo._internal.io_test.Io_test.T_pipeTest(true, (null : stdgo.Error), true) : stdgo._internal.io_test.Io_test.T_pipeTest), (new stdgo._internal.io_test.Io_test.T_pipeTest(true, errShortWrite, true) : stdgo._internal.io_test.Io_test.T_pipeTest), (new stdgo._internal.io_test.Io_test.T_pipeTest(false, (null : stdgo.Error), false) : stdgo._internal.io_test.Io_test.T_pipeTest), (new stdgo._internal.io_test.Io_test.T_pipeTest(false, (null : stdgo.Error), true) : stdgo._internal.io_test.Io_test.T_pipeTest), (new stdgo._internal.io_test.Io_test.T_pipeTest(false, errShortWrite, true) : stdgo._internal.io_test.Io_test.T_pipeTest)].concat([for (i in 6 ... (6 > 6 ? 6 : 6 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.io_test.Io_test.T_pipeTest)])) : stdgo.Slice<stdgo._internal.io_test.Io_test.T_pipeTest>);
@:keep class T_closer_static_extension {
    static public function close(t:T_closer):stdgo.Error return t.close();
    static public function closeWithError(t:T_closer, _0:stdgo.Error):stdgo.Error return t.closeWithError(_0);
}
typedef T_closer = stdgo.StructType & {
    /**
        
        
        
    **/
    public dynamic function closeWithError(_0:stdgo.Error):stdgo.Error;
    /**
        
        
        
    **/
    public dynamic function close():stdgo.Error;
};
@:keep class T__interface_0_static_extension {

}
typedef T__interface_0 = stdgo.StructType & {
    > Writer,
    > stdgo._internal.fmt.Fmt.Stringer,
};
@:structInit @:using(stdgo._internal.io_test.Io_test.Buffer_static_extension) class Buffer {
    @:embedded
    public var buffer : stdgo._internal.bytes.Bytes.Buffer = ({} : stdgo._internal.bytes.Bytes.Buffer);
    @:embedded
    public var readerFrom : stdgo._internal.io.Io.ReaderFrom = (null : stdgo._internal.io.Io.ReaderFrom);
    @:embedded
    public var writerTo : stdgo._internal.io.Io.WriterTo = (null : stdgo._internal.io.Io.WriterTo);
    public function new(?buffer:stdgo._internal.bytes.Bytes.Buffer, ?readerFrom:stdgo._internal.io.Io.ReaderFrom, ?writerTo:stdgo._internal.io.Io.WriterTo) {
        if (buffer != null) this.buffer = buffer;
        if (readerFrom != null) this.readerFrom = readerFrom;
        if (writerTo != null) this.writerTo = writerTo;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    @:embedded
    public function available():stdgo.GoInt return buffer.available();
    @:embedded
    public function availableBuffer():stdgo.Slice<stdgo.GoUInt8> return buffer.availableBuffer();
    @:embedded
    public function bytes():stdgo.Slice<stdgo.GoUInt8> return buffer.bytes();
    @:embedded
    public function cap():stdgo.GoInt return buffer.cap();
    @:embedded
    public function grow(__0:stdgo.GoInt) buffer.grow(__0);
    @:embedded
    public function len():stdgo.GoInt return buffer.len();
    @:embedded
    public function next(__0:stdgo.GoInt):stdgo.Slice<stdgo.GoUInt8> return buffer.next(__0);
    @:embedded
    public function read(_b:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return buffer.read(_b);
    @:embedded
    public function readByte():{ var _0 : stdgo.GoUInt8; var _1 : stdgo.Error; } return buffer.readByte();
    @:embedded
    public function readBytes(_c:stdgo.GoUInt8):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } return buffer.readBytes(_c);
    @:embedded
    public function readRune():{ var _0 : stdgo.GoInt32; var _1 : stdgo.GoInt; var _2 : stdgo.Error; } return buffer.readRune();
    @:embedded
    public function readString(_c:stdgo.GoUInt8):{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } return buffer.readString(_c);
    @:embedded
    public function reset() buffer.reset();
    @:embedded
    public function string():stdgo.GoString return buffer.string();
    @:embedded
    public function truncate(__0:stdgo.GoInt) buffer.truncate(__0);
    @:embedded
    public function unreadByte():stdgo.Error return buffer.unreadByte();
    @:embedded
    public function unreadRune():stdgo.Error return buffer.unreadRune();
    @:embedded
    public function write(_b:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return buffer.write(_b);
    @:embedded
    public function writeByte(_c:stdgo.GoUInt8):stdgo.Error return buffer.writeByte(_c);
    @:embedded
    public function writeRune(__0:stdgo.GoInt32):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return buffer.writeRune(__0);
    @:embedded
    public function writeString(__0:stdgo.GoString):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return buffer.writeString(__0);
    @:embedded
    public function _empty():Bool return buffer._empty();
    @:embedded
    public function _grow(__0:stdgo.GoInt):stdgo.GoInt return buffer._grow(__0);
    @:embedded
    public function _readSlice(_c:stdgo.GoUInt8):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } return buffer._readSlice(_c);
    @:embedded
    public function _tryGrowByReslice(__0:stdgo.GoInt):{ var _0 : stdgo.GoInt; var _1 : Bool; } return buffer._tryGrowByReslice(__0);
    public function __copy__() {
        return new Buffer(buffer, readerFrom, writerTo);
    }
}
@:structInit @:private @:using(stdgo._internal.io_test.Io_test.T_writeToChecker_static_extension) class T_writeToChecker {
    @:embedded
    public var buffer : stdgo._internal.bytes.Bytes.Buffer = ({} : stdgo._internal.bytes.Bytes.Buffer);
    public var _writeToCalled : Bool = false;
    public function new(?buffer:stdgo._internal.bytes.Bytes.Buffer, ?_writeToCalled:Bool) {
        if (buffer != null) this.buffer = buffer;
        if (_writeToCalled != null) this._writeToCalled = _writeToCalled;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    @:embedded
    public function available():stdgo.GoInt return buffer.available();
    @:embedded
    public function availableBuffer():stdgo.Slice<stdgo.GoUInt8> return buffer.availableBuffer();
    @:embedded
    public function bytes():stdgo.Slice<stdgo.GoUInt8> return buffer.bytes();
    @:embedded
    public function cap():stdgo.GoInt return buffer.cap();
    @:embedded
    public function grow(__0:stdgo.GoInt) buffer.grow(__0);
    @:embedded
    public function len():stdgo.GoInt return buffer.len();
    @:embedded
    public function next(__0:stdgo.GoInt):stdgo.Slice<stdgo.GoUInt8> return buffer.next(__0);
    @:embedded
    public function read(_b:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return buffer.read(_b);
    @:embedded
    public function readByte():{ var _0 : stdgo.GoUInt8; var _1 : stdgo.Error; } return buffer.readByte();
    @:embedded
    public function readBytes(_c:stdgo.GoUInt8):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } return buffer.readBytes(_c);
    @:embedded
    public function readFrom(_r:stdgo._internal.io.Io.Reader):{ var _0 : stdgo.GoInt64; var _1 : stdgo.Error; } return buffer.readFrom(_r);
    @:embedded
    public function readRune():{ var _0 : stdgo.GoInt32; var _1 : stdgo.GoInt; var _2 : stdgo.Error; } return buffer.readRune();
    @:embedded
    public function readString(_c:stdgo.GoUInt8):{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } return buffer.readString(_c);
    @:embedded
    public function reset() buffer.reset();
    @:embedded
    public function string():stdgo.GoString return buffer.string();
    @:embedded
    public function truncate(__0:stdgo.GoInt) buffer.truncate(__0);
    @:embedded
    public function unreadByte():stdgo.Error return buffer.unreadByte();
    @:embedded
    public function unreadRune():stdgo.Error return buffer.unreadRune();
    @:embedded
    public function write(_b:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return buffer.write(_b);
    @:embedded
    public function writeByte(_c:stdgo.GoUInt8):stdgo.Error return buffer.writeByte(_c);
    @:embedded
    public function writeRune(__0:stdgo.GoInt32):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return buffer.writeRune(__0);
    @:embedded
    public function writeString(__0:stdgo.GoString):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return buffer.writeString(__0);
    @:embedded
    public function _empty():Bool return buffer._empty();
    @:embedded
    public function _grow(__0:stdgo.GoInt):stdgo.GoInt return buffer._grow(__0);
    @:embedded
    public function _readSlice(_c:stdgo.GoUInt8):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } return buffer._readSlice(_c);
    @:embedded
    public function _tryGrowByReslice(__0:stdgo.GoInt):{ var _0 : stdgo.GoInt; var _1 : Bool; } return buffer._tryGrowByReslice(__0);
    public function __copy__() {
        return new T_writeToChecker(buffer, _writeToCalled);
    }
}
@:structInit @:private @:using(stdgo._internal.io_test.Io_test.T_zeroErrReader_static_extension) class T_zeroErrReader {
    public var _err : stdgo.Error = (null : stdgo.Error);
    public function new(?_err:stdgo.Error) {
        if (_err != null) this._err = _err;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_zeroErrReader(_err);
    }
}
@:structInit @:private @:using(stdgo._internal.io_test.Io_test.T_errWriter_static_extension) class T_errWriter {
    public var _err : stdgo.Error = (null : stdgo.Error);
    public function new(?_err:stdgo.Error) {
        if (_err != null) this._err = _err;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_errWriter(_err);
    }
}
@:structInit @:private @:using(stdgo._internal.io_test.Io_test.T_noReadFrom_static_extension) class T_noReadFrom {
    public var _w : stdgo._internal.io.Io.Writer = (null : stdgo._internal.io.Io.Writer);
    public function new(?_w:stdgo._internal.io.Io.Writer) {
        if (_w != null) this._w = _w;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_noReadFrom(_w);
    }
}
@:structInit @:private @:using(stdgo._internal.io_test.Io_test.T_wantedAndErrReader_static_extension) class T_wantedAndErrReader {
    public function new() {}
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_wantedAndErrReader();
    }
}
@:structInit @:private @:using(stdgo._internal.io_test.Io_test.T_dataAndErrorBuffer_static_extension) class T_dataAndErrorBuffer {
    public var _err : stdgo.Error = (null : stdgo.Error);
    @:embedded
    public var buffer : stdgo._internal.bytes.Bytes.Buffer = ({} : stdgo._internal.bytes.Bytes.Buffer);
    public function new(?_err:stdgo.Error, ?buffer:stdgo._internal.bytes.Bytes.Buffer) {
        if (_err != null) this._err = _err;
        if (buffer != null) this.buffer = buffer;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    @:embedded
    public function available():stdgo.GoInt return buffer.available();
    @:embedded
    public function availableBuffer():stdgo.Slice<stdgo.GoUInt8> return buffer.availableBuffer();
    @:embedded
    public function bytes():stdgo.Slice<stdgo.GoUInt8> return buffer.bytes();
    @:embedded
    public function cap():stdgo.GoInt return buffer.cap();
    @:embedded
    public function grow(__0:stdgo.GoInt) buffer.grow(__0);
    @:embedded
    public function len():stdgo.GoInt return buffer.len();
    @:embedded
    public function next(__0:stdgo.GoInt):stdgo.Slice<stdgo.GoUInt8> return buffer.next(__0);
    @:embedded
    public function readByte():{ var _0 : stdgo.GoUInt8; var _1 : stdgo.Error; } return buffer.readByte();
    @:embedded
    public function readBytes(_c:stdgo.GoUInt8):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } return buffer.readBytes(_c);
    @:embedded
    public function readFrom(_r:stdgo._internal.io.Io.Reader):{ var _0 : stdgo.GoInt64; var _1 : stdgo.Error; } return buffer.readFrom(_r);
    @:embedded
    public function readRune():{ var _0 : stdgo.GoInt32; var _1 : stdgo.GoInt; var _2 : stdgo.Error; } return buffer.readRune();
    @:embedded
    public function readString(_c:stdgo.GoUInt8):{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } return buffer.readString(_c);
    @:embedded
    public function reset() buffer.reset();
    @:embedded
    public function string():stdgo.GoString return buffer.string();
    @:embedded
    public function truncate(__0:stdgo.GoInt) buffer.truncate(__0);
    @:embedded
    public function unreadByte():stdgo.Error return buffer.unreadByte();
    @:embedded
    public function unreadRune():stdgo.Error return buffer.unreadRune();
    @:embedded
    public function write(_b:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return buffer.write(_b);
    @:embedded
    public function writeByte(_c:stdgo.GoUInt8):stdgo.Error return buffer.writeByte(_c);
    @:embedded
    public function writeRune(__0:stdgo.GoInt32):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return buffer.writeRune(__0);
    @:embedded
    public function writeString(__0:stdgo.GoString):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return buffer.writeString(__0);
    @:embedded
    public function writeTo(_w:stdgo._internal.io.Io.Writer):{ var _0 : stdgo.GoInt64; var _1 : stdgo.Error; } return buffer.writeTo(_w);
    @:embedded
    public function _empty():Bool return buffer._empty();
    @:embedded
    public function _grow(__0:stdgo.GoInt):stdgo.GoInt return buffer._grow(__0);
    @:embedded
    public function _readSlice(_c:stdgo.GoUInt8):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } return buffer._readSlice(_c);
    @:embedded
    public function _tryGrowByReslice(__0:stdgo.GoInt):{ var _0 : stdgo.GoInt; var _1 : Bool; } return buffer._tryGrowByReslice(__0);
    public function __copy__() {
        return new T_dataAndErrorBuffer(_err, buffer);
    }
}
@:structInit @:private @:using(stdgo._internal.io_test.Io_test.T_largeWriter_static_extension) class T_largeWriter {
    public var _err : stdgo.Error = (null : stdgo.Error);
    public function new(?_err:stdgo.Error) {
        if (_err != null) this._err = _err;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_largeWriter(_err);
    }
}
@:structInit @:private @:using(stdgo._internal.io_test.Io_test.T_writeStringChecker_static_extension) class T_writeStringChecker {
    public var _called : Bool = false;
    public function new(?_called:Bool) {
        if (_called != null) this._called = _called;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_writeStringChecker(_called);
    }
}
@:structInit @:private class T_pipeReturn {
    public var _n : stdgo.GoInt = 0;
    public var _err : stdgo.Error = (null : stdgo.Error);
    public function new(?_n:stdgo.GoInt, ?_err:stdgo.Error) {
        if (_n != null) this._n = _n;
        if (_err != null) this._err = _err;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_pipeReturn(_n, _err);
    }
}
@:structInit @:private @:using(stdgo._internal.io_test.Io_test.T_pipeTest_static_extension) class T_pipeTest {
    public var _async : Bool = false;
    public var _err : stdgo.Error = (null : stdgo.Error);
    public var _closeWithError : Bool = false;
    public function new(?_async:Bool, ?_err:stdgo.Error, ?_closeWithError:Bool) {
        if (_async != null) this._async = _async;
        if (_err != null) this._err = _err;
        if (_closeWithError != null) this._closeWithError = _closeWithError;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_pipeTest(_async, _err, _closeWithError);
    }
}
class T__struct_1_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T__struct_1>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.io_test.Io_test.T__struct_1_asInterface) class T__struct_1_static_extension {

}
@:local @:using(stdgo._internal.io_test.Io_test.T__struct_1_static_extension) typedef T__struct_1 = {
    public var _data : stdgo.GoString;
    public var _off : stdgo.GoInt;
    public var _n : stdgo.GoInt;
    public var _bufLen : stdgo.GoInt;
    public var _at : stdgo.GoInt;
    public var _exp : stdgo.GoString;
    public var _err : stdgo.Error;
};
class T__struct_2_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T__struct_2>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.io_test.Io_test.T__struct_2_asInterface) class T__struct_2_static_extension {

}
@:local @:using(stdgo._internal.io_test.Io_test.T__struct_2_static_extension) typedef T__struct_2 = {
    public var _data : stdgo.GoString;
    public var _want : stdgo.GoInt64;
};
class T__struct_3_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T__struct_3>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.io_test.Io_test.T__struct_3_asInterface) class T__struct_3_static_extension {

}
@:local @:using(stdgo._internal.io_test.Io_test.T__struct_3_static_extension) typedef T__struct_3 = {
    public var name : stdgo.GoString;
    public var _r : stdgo._internal.io.Io.Reader;
};
class T__struct_4_asInterface {
    @:embedded
    public dynamic function writeTo(_w:stdgo._internal.io.Io.Writer):{ var _0 : stdgo.GoInt64; var _1 : stdgo.Error; } return __self__.value.writeTo(_w);
    @:embedded
    public dynamic function read(_b:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return __self__.value.read(_b);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T__struct_4>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.io_test.Io_test.T__struct_4_asInterface) class T__struct_4_static_extension {
    @:embedded
    public static function writeTo( __self__:T__struct_4, _w:stdgo._internal.io.Io.Writer):{ var _0 : stdgo.GoInt64; var _1 : stdgo.Error; } return return __self__.writerTo.writeTo(_w);
    @:embedded
    public static function read( __self__:T__struct_4, _b:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return return __self__.reader.read(_b);
}
@:local @:using(stdgo._internal.io_test.Io_test.T__struct_4_static_extension) typedef T__struct_4 = {
    @:embedded
    public var reader : stdgo._internal.io.Io.Reader;
    @:embedded
    public var writerTo : stdgo._internal.io.Io.WriterTo;
};
class T__struct_5_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T__struct_5>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.io_test.Io_test.T__struct_5_asInterface) class T__struct_5_static_extension {

}
@:local @:using(stdgo._internal.io_test.Io_test.T__struct_5_static_extension) typedef T__struct_5 = {
    public var _offset : stdgo.GoInt64;
    public var _whence : stdgo.GoInt;
    public var _returnOff : stdgo.GoInt64;
};
class T__struct_6_asInterface {
    @:embedded
    public dynamic function write(_b:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return __self__.value.write(_b);
    @:embedded
    public dynamic function string():stdgo.GoString return __self__.value.string();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T__struct_6>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.io_test.Io_test.T__struct_6_asInterface) class T__struct_6_static_extension {
    @:embedded
    public static function write( __self__:T__struct_6, _b:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return return __self__.writer.write(_b);
    @:embedded
    public static function string( __self__:T__struct_6):stdgo.GoString return return __self__.stringer.string();
}
@:local @:using(stdgo._internal.io_test.Io_test.T__struct_6_static_extension) typedef T__struct_6 = {
    @:embedded
    public var writer : stdgo._internal.io.Io.Writer;
    @:embedded
    public var stringer : stdgo._internal.fmt.Fmt.Stringer;
};
class T__struct_7_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T__struct_7>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.io_test.Io_test.T__struct_7_asInterface) class T__struct_7_static_extension {

}
@:local @:using(stdgo._internal.io_test.Io_test.T__struct_7_static_extension) typedef T__struct_7 = {};
@:named @:using(stdgo._internal.io_test.Io_test.T_writerFunc_static_extension) typedef T_writerFunc = stdgo.Slice<stdgo.GoUInt8> -> { var _0 : stdgo.GoInt; var _1 : stdgo.Error; };
@:named @:using(stdgo._internal.io_test.Io_test.T_readerFunc_static_extension) typedef T_readerFunc = stdgo.Slice<stdgo.GoUInt8> -> { var _0 : stdgo.GoInt; var _1 : stdgo.Error; };
@:named @:using(stdgo._internal.io_test.Io_test.T_byteAndEOFReader_static_extension) typedef T_byteAndEOFReader = stdgo.GoUInt8;
function exampleCopy():Void {
        var _r = stdgo._internal.strings.Strings.newReader(("some io.Reader stream to be read\n" : stdgo.GoString));
        {
            var __tmp__ = stdgo._internal.io.Io.copy(stdgo.Go.asInterface(stdgo._internal.os.Os.stdout), stdgo.Go.asInterface(_r)), __0:stdgo.GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                stdgo._internal.log.Log.fatal(stdgo.Go.toInterface(_err));
            };
        };
    }
function exampleCopyBuffer():Void {
        var _r1 = stdgo._internal.strings.Strings.newReader(("first reader\n" : stdgo.GoString));
        var _r2 = stdgo._internal.strings.Strings.newReader(("second reader\n" : stdgo.GoString));
        var _buf = (new stdgo.Slice<stdgo.GoUInt8>((8 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        {
            var __tmp__ = stdgo._internal.io.Io.copyBuffer(stdgo.Go.asInterface(stdgo._internal.os.Os.stdout), stdgo.Go.asInterface(_r1), _buf), __0:stdgo.GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                stdgo._internal.log.Log.fatal(stdgo.Go.toInterface(_err));
            };
        };
        {
            var __tmp__ = stdgo._internal.io.Io.copyBuffer(stdgo.Go.asInterface(stdgo._internal.os.Os.stdout), stdgo.Go.asInterface(_r2), _buf), __1:stdgo.GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                stdgo._internal.log.Log.fatal(stdgo.Go.toInterface(_err));
            };
        };
    }
function exampleCopyN():Void {
        var _r = stdgo._internal.strings.Strings.newReader(("some io.Reader stream to be read" : stdgo.GoString));
        {
            var __tmp__ = stdgo._internal.io.Io.copyN(stdgo.Go.asInterface(stdgo._internal.os.Os.stdout), stdgo.Go.asInterface(_r), (4i64 : stdgo.GoInt64)), __0:stdgo.GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                stdgo._internal.log.Log.fatal(stdgo.Go.toInterface(_err));
            };
        };
    }
function exampleReadAtLeast():Void {
        var _r = stdgo._internal.strings.Strings.newReader(("some io.Reader stream to be read\n" : stdgo.GoString));
        var _buf = (new stdgo.Slice<stdgo.GoUInt8>((14 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        {
            var __tmp__ = stdgo._internal.io.Io.readAtLeast(stdgo.Go.asInterface(_r), _buf, (4 : stdgo.GoInt)), __0:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                stdgo._internal.log.Log.fatal(stdgo.Go.toInterface(_err));
            };
        };
        stdgo._internal.fmt.Fmt.printf(("%s\n" : stdgo.GoString), stdgo.Go.toInterface(_buf));
        var _shortBuf = (new stdgo.Slice<stdgo.GoUInt8>((3 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        {
            var __tmp__ = stdgo._internal.io.Io.readAtLeast(stdgo.Go.asInterface(_r), _shortBuf, (4 : stdgo.GoInt)), __1:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(("error:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
            };
        };
        var _longBuf = (new stdgo.Slice<stdgo.GoUInt8>((64 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        {
            var __tmp__ = stdgo._internal.io.Io.readAtLeast(stdgo.Go.asInterface(_r), _longBuf, (64 : stdgo.GoInt)), __2:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(("error:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
            };
        };
    }
function exampleReadFull():Void {
        var _r = stdgo._internal.strings.Strings.newReader(("some io.Reader stream to be read\n" : stdgo.GoString));
        var _buf = (new stdgo.Slice<stdgo.GoUInt8>((4 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        {
            var __tmp__ = stdgo._internal.io.Io.readFull(stdgo.Go.asInterface(_r), _buf), __0:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                stdgo._internal.log.Log.fatal(stdgo.Go.toInterface(_err));
            };
        };
        stdgo._internal.fmt.Fmt.printf(("%s\n" : stdgo.GoString), stdgo.Go.toInterface(_buf));
        var _longBuf = (new stdgo.Slice<stdgo.GoUInt8>((64 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        {
            var __tmp__ = stdgo._internal.io.Io.readFull(stdgo.Go.asInterface(_r), _longBuf), __1:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(("error:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
            };
        };
    }
function exampleWriteString():Void {
        {
            var __tmp__ = stdgo._internal.io.Io.writeString(stdgo.Go.asInterface(stdgo._internal.os.Os.stdout), ("Hello World" : stdgo.GoString)), __0:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                stdgo._internal.log.Log.fatal(stdgo.Go.toInterface(_err));
            };
        };
    }
function exampleLimitReader():Void {
        var _r = stdgo._internal.strings.Strings.newReader(("some io.Reader stream to be read\n" : stdgo.GoString));
        var _lr = (stdgo._internal.io.Io.limitReader(stdgo.Go.asInterface(_r), (4i64 : stdgo.GoInt64)) : stdgo._internal.io.Io.Reader);
        {
            var __tmp__ = stdgo._internal.io.Io.copy(stdgo.Go.asInterface(stdgo._internal.os.Os.stdout), _lr), __0:stdgo.GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                stdgo._internal.log.Log.fatal(stdgo.Go.toInterface(_err));
            };
        };
    }
function exampleMultiReader():Void {
        var _r1 = stdgo._internal.strings.Strings.newReader(("first reader " : stdgo.GoString));
        var _r2 = stdgo._internal.strings.Strings.newReader(("second reader " : stdgo.GoString));
        var _r3 = stdgo._internal.strings.Strings.newReader(("third reader\n" : stdgo.GoString));
        var _r = (stdgo._internal.io.Io.multiReader(stdgo.Go.asInterface(_r1), stdgo.Go.asInterface(_r2), stdgo.Go.asInterface(_r3)) : stdgo._internal.io.Io.Reader);
        {
            var __tmp__ = stdgo._internal.io.Io.copy(stdgo.Go.asInterface(stdgo._internal.os.Os.stdout), _r), __0:stdgo.GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                stdgo._internal.log.Log.fatal(stdgo.Go.toInterface(_err));
            };
        };
    }
function exampleTeeReader():Void {
        var _r:stdgo._internal.io.Io.Reader = stdgo.Go.asInterface(stdgo._internal.strings.Strings.newReader(("some io.Reader stream to be read\n" : stdgo.GoString)));
        _r = stdgo._internal.io.Io.teeReader(_r, stdgo.Go.asInterface(stdgo._internal.os.Os.stdout));
        {
            var __tmp__ = stdgo._internal.io.Io.readAll(_r), __0:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                stdgo._internal.log.Log.fatal(stdgo.Go.toInterface(_err));
            };
        };
    }
function exampleSectionReader():Void {
        var _r = stdgo._internal.strings.Strings.newReader(("some io.Reader stream to be read\n" : stdgo.GoString));
        var _s = stdgo._internal.io.Io.newSectionReader(stdgo.Go.asInterface(_r), (5i64 : stdgo.GoInt64), (17i64 : stdgo.GoInt64));
        {
            var __tmp__ = stdgo._internal.io.Io.copy(stdgo.Go.asInterface(stdgo._internal.os.Os.stdout), stdgo.Go.asInterface(_s)), __0:stdgo.GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                stdgo._internal.log.Log.fatal(stdgo.Go.toInterface(_err));
            };
        };
    }
function exampleSectionReader_Read():Void {
        var _r = stdgo._internal.strings.Strings.newReader(("some io.Reader stream to be read\n" : stdgo.GoString));
        var _s = stdgo._internal.io.Io.newSectionReader(stdgo.Go.asInterface(_r), (5i64 : stdgo.GoInt64), (17i64 : stdgo.GoInt64));
        var _buf = (new stdgo.Slice<stdgo.GoUInt8>((9 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        {
            var __tmp__ = _s.read(_buf), __0:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                stdgo._internal.log.Log.fatal(stdgo.Go.toInterface(_err));
            };
        };
        stdgo._internal.fmt.Fmt.printf(("%s\n" : stdgo.GoString), stdgo.Go.toInterface(_buf));
    }
function exampleSectionReader_ReadAt():Void {
        var _r = stdgo._internal.strings.Strings.newReader(("some io.Reader stream to be read\n" : stdgo.GoString));
        var _s = stdgo._internal.io.Io.newSectionReader(stdgo.Go.asInterface(_r), (5i64 : stdgo.GoInt64), (17i64 : stdgo.GoInt64));
        var _buf = (new stdgo.Slice<stdgo.GoUInt8>((6 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        {
            var __tmp__ = _s.readAt(_buf, (10i64 : stdgo.GoInt64)), __0:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                stdgo._internal.log.Log.fatal(stdgo.Go.toInterface(_err));
            };
        };
        stdgo._internal.fmt.Fmt.printf(("%s\n" : stdgo.GoString), stdgo.Go.toInterface(_buf));
    }
function exampleSectionReader_Seek():Void {
        var _r = stdgo._internal.strings.Strings.newReader(("some io.Reader stream to be read\n" : stdgo.GoString));
        var _s = stdgo._internal.io.Io.newSectionReader(stdgo.Go.asInterface(_r), (5i64 : stdgo.GoInt64), (17i64 : stdgo.GoInt64));
        {
            var __tmp__ = _s.seek((10i64 : stdgo.GoInt64), (0 : stdgo.GoInt)), __0:stdgo.GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                stdgo._internal.log.Log.fatal(stdgo.Go.toInterface(_err));
            };
        };
        {
            var __tmp__ = stdgo._internal.io.Io.copy(stdgo.Go.asInterface(stdgo._internal.os.Os.stdout), stdgo.Go.asInterface(_s)), __1:stdgo.GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                stdgo._internal.log.Log.fatal(stdgo.Go.toInterface(_err));
            };
        };
    }
function exampleSectionReader_Size():Void {
        var _r = stdgo._internal.strings.Strings.newReader(("some io.Reader stream to be read\n" : stdgo.GoString));
        var _s = stdgo._internal.io.Io.newSectionReader(stdgo.Go.asInterface(_r), (5i64 : stdgo.GoInt64), (17i64 : stdgo.GoInt64));
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(_s.size()));
    }
function exampleSeeker_Seek():Void {
        var _r = stdgo._internal.strings.Strings.newReader(("some io.Reader stream to be read\n" : stdgo.GoString));
        _r.seek((5i64 : stdgo.GoInt64), (0 : stdgo.GoInt));
        {
            var __tmp__ = stdgo._internal.io.Io.copy(stdgo.Go.asInterface(stdgo._internal.os.Os.stdout), stdgo.Go.asInterface(_r)), __0:stdgo.GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                stdgo._internal.log.Log.fatal(stdgo.Go.toInterface(_err));
            };
        };
        _r.seek((-5i64 : stdgo.GoInt64), (2 : stdgo.GoInt));
        {
            var __tmp__ = stdgo._internal.io.Io.copy(stdgo.Go.asInterface(stdgo._internal.os.Os.stdout), stdgo.Go.asInterface(_r)), __1:stdgo.GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                stdgo._internal.log.Log.fatal(stdgo.Go.toInterface(_err));
            };
        };
    }
function exampleMultiWriter():Void {
        var _r = stdgo._internal.strings.Strings.newReader(("some io.Reader stream to be read\n" : stdgo.GoString));
        var __0:stdgo._internal.strings.Strings.Builder = ({} : stdgo._internal.strings.Strings.Builder), __1:stdgo._internal.strings.Strings.Builder = ({} : stdgo._internal.strings.Strings.Builder);
var _buf2 = __1, _buf1 = __0;
        var _w = (stdgo._internal.io.Io.multiWriter(stdgo.Go.asInterface((stdgo.Go.setRef(_buf1) : stdgo.Ref<stdgo._internal.strings.Strings.Builder>)), stdgo.Go.asInterface((stdgo.Go.setRef(_buf2) : stdgo.Ref<stdgo._internal.strings.Strings.Builder>))) : stdgo._internal.io.Io.Writer);
        {
            var __tmp__ = stdgo._internal.io.Io.copy(_w, stdgo.Go.asInterface(_r)), __0:stdgo.GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                stdgo._internal.log.Log.fatal(stdgo.Go.toInterface(_err));
            };
        };
        stdgo._internal.fmt.Fmt.print(stdgo.Go.toInterface((_buf1.string() : stdgo.GoString)));
        stdgo._internal.fmt.Fmt.print(stdgo.Go.toInterface((_buf2.string() : stdgo.GoString)));
    }
function examplePipe():Void {
        var __tmp__ = stdgo._internal.io.Io.pipe(), _r:stdgo.Ref<stdgo._internal.io.Io.PipeReader> = __tmp__._0, _w:stdgo.Ref<stdgo._internal.io.Io.PipeWriter> = __tmp__._1;
        stdgo.Go.routine(() -> {
            var a = function():Void {
                stdgo._internal.fmt.Fmt.fprint(stdgo.Go.asInterface(_w), stdgo.Go.toInterface(("some io.Reader stream to be read\n" : stdgo.GoString)));
                _w.close();
            };
            a();
        });
        {
            var __tmp__ = stdgo._internal.io.Io.copy(stdgo.Go.asInterface(stdgo._internal.os.Os.stdout), stdgo.Go.asInterface(_r)), __0:stdgo.GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                stdgo._internal.log.Log.fatal(stdgo.Go.toInterface(_err));
            };
        };
    }
function exampleReadAll():Void {
        var _r = stdgo._internal.strings.Strings.newReader(("Go is a general-purpose language designed with systems programming in mind." : stdgo.GoString));
        var __tmp__ = stdgo._internal.io.Io.readAll(stdgo.Go.asInterface(_r)), _b:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            stdgo._internal.log.Log.fatal(stdgo.Go.toInterface(_err));
        };
        stdgo._internal.fmt.Fmt.printf(("%s" : stdgo.GoString), stdgo.Go.toInterface(_b));
    }
function testCopy(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _rb = (stdgo.Go.setRef(({} : stdgo._internal.io_test.Io_test.Buffer)) : stdgo.Ref<stdgo._internal.io_test.Io_test.Buffer>);
        var _wb = (stdgo.Go.setRef(({} : stdgo._internal.io_test.Io_test.Buffer)) : stdgo.Ref<stdgo._internal.io_test.Io_test.Buffer>);
        _rb.writeString(("hello, world." : stdgo.GoString));
        copy(stdgo.Go.asInterface(_wb), stdgo.Go.asInterface(_rb));
        if ((_wb.string() : stdgo.GoString) != (("hello, world." : stdgo.GoString))) {
            _t.errorf(("Copy did not work properly" : stdgo.GoString));
        };
    }
function testCopyNegative(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _rb = (stdgo.Go.setRef(({} : stdgo._internal.io_test.Io_test.Buffer)) : stdgo.Ref<stdgo._internal.io_test.Io_test.Buffer>);
        var _wb = (stdgo.Go.setRef(({} : stdgo._internal.io_test.Io_test.Buffer)) : stdgo.Ref<stdgo._internal.io_test.Io_test.Buffer>);
        _rb.writeString(("hello" : stdgo.GoString));
        copy(stdgo.Go.asInterface(_wb), stdgo.Go.asInterface((stdgo.Go.setRef(({ r : stdgo.Go.asInterface(_rb), n : (-1i64 : stdgo.GoInt64) } : stdgo._internal.io.Io.LimitedReader)) : stdgo.Ref<stdgo._internal.io.Io.LimitedReader>)));
        if ((_wb.string() : stdgo.GoString) != (stdgo.Go.str())) {
            _t.errorf(("Copy on LimitedReader with N<0 copied data" : stdgo.GoString));
        };
        copyN(stdgo.Go.asInterface(_wb), stdgo.Go.asInterface(_rb), (-1i64 : stdgo.GoInt64));
        if ((_wb.string() : stdgo.GoString) != (stdgo.Go.str())) {
            _t.errorf(("CopyN with N<0 copied data" : stdgo.GoString));
        };
    }
function testCopyBuffer(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _rb = (stdgo.Go.setRef(({} : stdgo._internal.io_test.Io_test.Buffer)) : stdgo.Ref<stdgo._internal.io_test.Io_test.Buffer>);
        var _wb = (stdgo.Go.setRef(({} : stdgo._internal.io_test.Io_test.Buffer)) : stdgo.Ref<stdgo._internal.io_test.Io_test.Buffer>);
        _rb.writeString(("hello, world." : stdgo.GoString));
        copyBuffer(stdgo.Go.asInterface(_wb), stdgo.Go.asInterface(_rb), (new stdgo.Slice<stdgo.GoUInt8>((1 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>));
        if ((_wb.string() : stdgo.GoString) != (("hello, world." : stdgo.GoString))) {
            _t.errorf(("CopyBuffer did not work properly" : stdgo.GoString));
        };
    }
function testCopyBufferNil(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _rb = (stdgo.Go.setRef(({} : stdgo._internal.io_test.Io_test.Buffer)) : stdgo.Ref<stdgo._internal.io_test.Io_test.Buffer>);
        var _wb = (stdgo.Go.setRef(({} : stdgo._internal.io_test.Io_test.Buffer)) : stdgo.Ref<stdgo._internal.io_test.Io_test.Buffer>);
        _rb.writeString(("hello, world." : stdgo.GoString));
        copyBuffer(stdgo.Go.asInterface(_wb), stdgo.Go.asInterface(_rb), (null : stdgo.Slice<stdgo.GoUInt8>));
        if ((_wb.string() : stdgo.GoString) != (("hello, world." : stdgo.GoString))) {
            _t.errorf(("CopyBuffer did not work properly" : stdgo.GoString));
        };
    }
function testCopyReadFrom(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _rb = (stdgo.Go.setRef(({} : stdgo._internal.io_test.Io_test.Buffer)) : stdgo.Ref<stdgo._internal.io_test.Io_test.Buffer>);
        var _wb = (stdgo.Go.setRef(({} : stdgo._internal.bytes.Bytes.Buffer)) : stdgo.Ref<stdgo._internal.bytes.Bytes.Buffer>);
        _rb.writeString(("hello, world." : stdgo.GoString));
        copy(stdgo.Go.asInterface(_wb), stdgo.Go.asInterface(_rb));
        if ((_wb.string() : stdgo.GoString) != (("hello, world." : stdgo.GoString))) {
            _t.errorf(("Copy did not work properly" : stdgo.GoString));
        };
    }
function testCopyWriteTo(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _rb = (stdgo.Go.setRef(({} : stdgo._internal.bytes.Bytes.Buffer)) : stdgo.Ref<stdgo._internal.bytes.Bytes.Buffer>);
        var _wb = (stdgo.Go.setRef(({} : stdgo._internal.io_test.Io_test.Buffer)) : stdgo.Ref<stdgo._internal.io_test.Io_test.Buffer>);
        _rb.writeString(("hello, world." : stdgo.GoString));
        copy(stdgo.Go.asInterface(_wb), stdgo.Go.asInterface(_rb));
        if ((_wb.string() : stdgo.GoString) != (("hello, world." : stdgo.GoString))) {
            _t.errorf(("Copy did not work properly" : stdgo.GoString));
        };
    }
function testCopyPriority(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _rb = (stdgo.Go.setRef(({} : stdgo._internal.io_test.Io_test.T_writeToChecker)) : stdgo.Ref<stdgo._internal.io_test.Io_test.T_writeToChecker>);
        var _wb = (stdgo.Go.setRef(({} : stdgo._internal.bytes.Bytes.Buffer)) : stdgo.Ref<stdgo._internal.bytes.Bytes.Buffer>);
        _rb.writeString(("hello, world." : stdgo.GoString));
        copy(stdgo.Go.asInterface(_wb), stdgo.Go.asInterface(_rb));
        if ((_wb.string() : stdgo.GoString) != (("hello, world." : stdgo.GoString))) {
            _t.errorf(("Copy did not work properly" : stdgo.GoString));
        } else if (!_rb._writeToCalled) {
            _t.errorf(("WriteTo was not prioritized over ReadFrom" : stdgo.GoString));
        };
    }
function testCopyReadErrWriteErr(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var __0 = (stdgo._internal.errors.Errors.new_(("readError" : stdgo.GoString)) : stdgo.Error), __1 = (stdgo._internal.errors.Errors.new_(("writeError" : stdgo.GoString)) : stdgo.Error);
var _ew = __1, _er = __0;
        var __0 = ({ _err : _er } : stdgo._internal.io_test.Io_test.T_zeroErrReader), __1 = ({ _err : _ew } : stdgo._internal.io_test.Io_test.T_errWriter);
var _w = __1, _r = __0;
        var __tmp__ = copy(stdgo.Go.asInterface(_w), stdgo.Go.asInterface(_r)), _n:stdgo.GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (((_n != (0i64 : stdgo.GoInt64)) || (stdgo.Go.toInterface(_err) != stdgo.Go.toInterface(_ew)) : Bool)) {
            _t.errorf(("Copy(zeroErrReader, errWriter) = %d, %v; want 0, writeError" : stdgo.GoString), stdgo.Go.toInterface(_n), stdgo.Go.toInterface(_err));
        };
    }
function testCopyN(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _rb = (stdgo.Go.setRef(({} : stdgo._internal.io_test.Io_test.Buffer)) : stdgo.Ref<stdgo._internal.io_test.Io_test.Buffer>);
        var _wb = (stdgo.Go.setRef(({} : stdgo._internal.io_test.Io_test.Buffer)) : stdgo.Ref<stdgo._internal.io_test.Io_test.Buffer>);
        _rb.writeString(("hello, world." : stdgo.GoString));
        copyN(stdgo.Go.asInterface(_wb), stdgo.Go.asInterface(_rb), (5i64 : stdgo.GoInt64));
        if ((_wb.string() : stdgo.GoString) != (("hello" : stdgo.GoString))) {
            _t.errorf(("CopyN did not work properly" : stdgo.GoString));
        };
    }
function testCopyNReadFrom(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _rb = (stdgo.Go.setRef(({} : stdgo._internal.io_test.Io_test.Buffer)) : stdgo.Ref<stdgo._internal.io_test.Io_test.Buffer>);
        var _wb = (stdgo.Go.setRef(({} : stdgo._internal.bytes.Bytes.Buffer)) : stdgo.Ref<stdgo._internal.bytes.Bytes.Buffer>);
        _rb.writeString(("hello" : stdgo.GoString));
        copyN(stdgo.Go.asInterface(_wb), stdgo.Go.asInterface(_rb), (5i64 : stdgo.GoInt64));
        if ((_wb.string() : stdgo.GoString) != (("hello" : stdgo.GoString))) {
            _t.errorf(("CopyN did not work properly" : stdgo.GoString));
        };
    }
function testCopyNWriteTo(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _rb = (stdgo.Go.setRef(({} : stdgo._internal.bytes.Bytes.Buffer)) : stdgo.Ref<stdgo._internal.bytes.Bytes.Buffer>);
        var _wb = (stdgo.Go.setRef(({} : stdgo._internal.io_test.Io_test.Buffer)) : stdgo.Ref<stdgo._internal.io_test.Io_test.Buffer>);
        _rb.writeString(("hello, world." : stdgo.GoString));
        copyN(stdgo.Go.asInterface(_wb), stdgo.Go.asInterface(_rb), (5i64 : stdgo.GoInt64));
        if ((_wb.string() : stdgo.GoString) != (("hello" : stdgo.GoString))) {
            _t.errorf(("CopyN did not work properly" : stdgo.GoString));
        };
    }
function benchmarkCopyNSmall(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        var _bs = stdgo._internal.bytes.Bytes.repeat((new stdgo.Slice<stdgo.GoUInt8>(1, 1, ...[(0 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>), (513 : stdgo.GoInt));
        var _rd = stdgo._internal.bytes.Bytes.newReader(_bs);
        var _buf = (stdgo.Go.setRef(({} : stdgo._internal.io_test.Io_test.Buffer)) : stdgo.Ref<stdgo._internal.io_test.Io_test.Buffer>);
        _b.resetTimer();
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                copyN(stdgo.Go.asInterface(_buf), stdgo.Go.asInterface(_rd), (512i64 : stdgo.GoInt64));
                _rd.reset(_bs);
            });
        };
    }
function benchmarkCopyNLarge(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        var _bs = stdgo._internal.bytes.Bytes.repeat((new stdgo.Slice<stdgo.GoUInt8>(1, 1, ...[(0 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>), (32769 : stdgo.GoInt));
        var _rd = stdgo._internal.bytes.Bytes.newReader(_bs);
        var _buf = (stdgo.Go.setRef(({} : stdgo._internal.io_test.Io_test.Buffer)) : stdgo.Ref<stdgo._internal.io_test.Io_test.Buffer>);
        _b.resetTimer();
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                copyN(stdgo.Go.asInterface(_buf), stdgo.Go.asInterface(_rd), (32768i64 : stdgo.GoInt64));
                _rd.reset(_bs);
            });
        };
    }
function testCopyNEOF(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _b = (stdgo.Go.setRef(({} : stdgo._internal.bytes.Bytes.Buffer)) : stdgo.Ref<stdgo._internal.bytes.Bytes.Buffer>);
        var __tmp__ = copyN(stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.io_test.Io_test.T_noReadFrom(stdgo.Go.asInterface(_b)) : stdgo._internal.io_test.Io_test.T_noReadFrom)) : stdgo.Ref<stdgo._internal.io_test.Io_test.T_noReadFrom>)), stdgo.Go.asInterface(stdgo._internal.strings.Strings.newReader(("foo" : stdgo.GoString))), (3i64 : stdgo.GoInt64)), _n:stdgo.GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (((_n != (3i64 : stdgo.GoInt64)) || (_err != null) : Bool)) {
            _t.errorf(("CopyN(noReadFrom, foo, 3) = %d, %v; want 3, nil" : stdgo.GoString), stdgo.Go.toInterface(_n), stdgo.Go.toInterface(_err));
        };
        {
            var __tmp__ = copyN(stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.io_test.Io_test.T_noReadFrom(stdgo.Go.asInterface(_b)) : stdgo._internal.io_test.Io_test.T_noReadFrom)) : stdgo.Ref<stdgo._internal.io_test.Io_test.T_noReadFrom>)), stdgo.Go.asInterface(stdgo._internal.strings.Strings.newReader(("foo" : stdgo.GoString))), (4i64 : stdgo.GoInt64));
            _n = __tmp__._0;
            _err = __tmp__._1;
        };
        if (((_n != (3i64 : stdgo.GoInt64)) || (stdgo.Go.toInterface(_err) != stdgo.Go.toInterface(eof)) : Bool)) {
            _t.errorf(("CopyN(noReadFrom, foo, 4) = %d, %v; want 3, EOF" : stdgo.GoString), stdgo.Go.toInterface(_n), stdgo.Go.toInterface(_err));
        };
        {
            var __tmp__ = copyN(stdgo.Go.asInterface(_b), stdgo.Go.asInterface(stdgo._internal.strings.Strings.newReader(("foo" : stdgo.GoString))), (3i64 : stdgo.GoInt64));
            _n = __tmp__._0;
            _err = __tmp__._1;
        };
        if (((_n != (3i64 : stdgo.GoInt64)) || (_err != null) : Bool)) {
            _t.errorf(("CopyN(bytes.Buffer, foo, 3) = %d, %v; want 3, nil" : stdgo.GoString), stdgo.Go.toInterface(_n), stdgo.Go.toInterface(_err));
        };
        {
            var __tmp__ = copyN(stdgo.Go.asInterface(_b), stdgo.Go.asInterface(stdgo._internal.strings.Strings.newReader(("foo" : stdgo.GoString))), (4i64 : stdgo.GoInt64));
            _n = __tmp__._0;
            _err = __tmp__._1;
        };
        if (((_n != (3i64 : stdgo.GoInt64)) || (stdgo.Go.toInterface(_err) != stdgo.Go.toInterface(eof)) : Bool)) {
            _t.errorf(("CopyN(bytes.Buffer, foo, 4) = %d, %v; want 3, EOF" : stdgo.GoString), stdgo.Go.toInterface(_n), stdgo.Go.toInterface(_err));
        };
        {
            var __tmp__ = copyN(stdgo.Go.asInterface(_b), stdgo.Go.asInterface((new stdgo._internal.io_test.Io_test.T_wantedAndErrReader() : stdgo._internal.io_test.Io_test.T_wantedAndErrReader)), (5i64 : stdgo.GoInt64));
            _n = __tmp__._0;
            _err = __tmp__._1;
        };
        if (((_n != (5i64 : stdgo.GoInt64)) || (_err != null) : Bool)) {
            _t.errorf(("CopyN(bytes.Buffer, wantedAndErrReader, 5) = %d, %v; want 5, nil" : stdgo.GoString), stdgo.Go.toInterface(_n), stdgo.Go.toInterface(_err));
        };
        {
            var __tmp__ = copyN(stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.io_test.Io_test.T_noReadFrom(stdgo.Go.asInterface(_b)) : stdgo._internal.io_test.Io_test.T_noReadFrom)) : stdgo.Ref<stdgo._internal.io_test.Io_test.T_noReadFrom>)), stdgo.Go.asInterface((new stdgo._internal.io_test.Io_test.T_wantedAndErrReader() : stdgo._internal.io_test.Io_test.T_wantedAndErrReader)), (5i64 : stdgo.GoInt64));
            _n = __tmp__._0;
            _err = __tmp__._1;
        };
        if (((_n != (5i64 : stdgo.GoInt64)) || (_err != null) : Bool)) {
            _t.errorf(("CopyN(noReadFrom, wantedAndErrReader, 5) = %d, %v; want 5, nil" : stdgo.GoString), stdgo.Go.toInterface(_n), stdgo.Go.toInterface(_err));
        };
    }
function testReadAtLeast(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _rb:stdgo._internal.bytes.Bytes.Buffer = ({} : stdgo._internal.bytes.Bytes.Buffer);
        _testReadAtLeast(_t, stdgo.Go.asInterface((stdgo.Go.setRef(_rb) : stdgo.Ref<stdgo._internal.bytes.Bytes.Buffer>)));
    }
function testReadAtLeastWithDataAndEOF(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _rb:T_dataAndErrorBuffer = ({} : stdgo._internal.io_test.Io_test.T_dataAndErrorBuffer);
        _rb._err = eof;
        _testReadAtLeast(_t, stdgo.Go.asInterface((stdgo.Go.setRef(_rb) : stdgo.Ref<stdgo._internal.io_test.Io_test.T_dataAndErrorBuffer>)));
    }
function testReadAtLeastWithDataAndError(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _rb:T_dataAndErrorBuffer = ({} : stdgo._internal.io_test.Io_test.T_dataAndErrorBuffer);
        _rb._err = stdgo._internal.fmt.Fmt.errorf(("fake error" : stdgo.GoString));
        _testReadAtLeast(_t, stdgo.Go.asInterface((stdgo.Go.setRef(_rb) : stdgo.Ref<stdgo._internal.io_test.Io_test.T_dataAndErrorBuffer>)));
    }
function _testReadAtLeast(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>, _rb:ReadWriter):Void {
        _rb.write((("0123" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>));
        var _buf = (new stdgo.Slice<stdgo.GoUInt8>((2 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        var __tmp__ = readAtLeast(_rb, _buf, (2 : stdgo.GoInt)), _n:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.error(stdgo.Go.toInterface(_err));
        };
        if (_n != ((2 : stdgo.GoInt))) {
            _t.errorf(("expected to have read 2 bytes, got %v" : stdgo.GoString), stdgo.Go.toInterface(_n));
        };
        {
            var __tmp__ = readAtLeast(_rb, _buf, (4 : stdgo.GoInt));
            _n = __tmp__._0;
            _err = __tmp__._1;
        };
        if (stdgo.Go.toInterface(_err) != (stdgo.Go.toInterface(errShortBuffer))) {
            _t.errorf(("expected ErrShortBuffer got %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
        };
        if (_n != ((0 : stdgo.GoInt))) {
            _t.errorf(("expected to have read 0 bytes, got %v" : stdgo.GoString), stdgo.Go.toInterface(_n));
        };
        {
            var __tmp__ = readAtLeast(_rb, _buf, (1 : stdgo.GoInt));
            _n = __tmp__._0;
            _err = __tmp__._1;
        };
        if (_err != null) {
            _t.error(stdgo.Go.toInterface(_err));
        };
        if (_n != ((2 : stdgo.GoInt))) {
            _t.errorf(("expected to have read 2 bytes, got %v" : stdgo.GoString), stdgo.Go.toInterface(_n));
        };
        {
            var __tmp__ = readAtLeast(_rb, _buf, (2 : stdgo.GoInt));
            _n = __tmp__._0;
            _err = __tmp__._1;
        };
        if (stdgo.Go.toInterface(_err) != (stdgo.Go.toInterface(eof))) {
            _t.errorf(("expected EOF, got %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
        };
        if (_n != ((0 : stdgo.GoInt))) {
            _t.errorf(("expected to have read 0 bytes, got %v" : stdgo.GoString), stdgo.Go.toInterface(_n));
        };
        _rb.write((("4" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>));
        {
            var __tmp__ = readAtLeast(_rb, _buf, (2 : stdgo.GoInt));
            _n = __tmp__._0;
            _err = __tmp__._1;
        };
        var _want = (errUnexpectedEOF : stdgo.Error);
        {
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_rb) : stdgo.Ref<T_dataAndErrorBuffer>)) : stdgo.Ref<T_dataAndErrorBuffer>), _1 : true };
            } catch(_) {
                { _0 : (null : stdgo.Ref<stdgo._internal.io_test.Io_test.T_dataAndErrorBuffer>), _1 : false };
            }, _rb = __tmp__._0, _ok = __tmp__._1;
            if ((_ok && (stdgo.Go.toInterface(_rb._err) != stdgo.Go.toInterface(eof)) : Bool)) {
                _want = _rb._err;
            };
        };
        if (stdgo.Go.toInterface(_err) != (stdgo.Go.toInterface(_want))) {
            _t.errorf(("expected %v, got %v" : stdgo.GoString), stdgo.Go.toInterface(_want), stdgo.Go.toInterface(_err));
        };
        if (_n != ((1 : stdgo.GoInt))) {
            _t.errorf(("expected to have read 1 bytes, got %v" : stdgo.GoString), stdgo.Go.toInterface(_n));
        };
    }
function testTeeReader(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _src = (("hello, world" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>);
        var _dst = (new stdgo.Slice<stdgo.GoUInt8>((_src.length : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        var _rb = stdgo._internal.bytes.Bytes.newBuffer(_src);
        var _wb = (stdgo.Go.setRef(({} : stdgo._internal.bytes.Bytes.Buffer)) : stdgo.Ref<stdgo._internal.bytes.Bytes.Buffer>);
        var _r = (teeReader(stdgo.Go.asInterface(_rb), stdgo.Go.asInterface(_wb)) : stdgo._internal.io.Io.Reader);
        {
            var __tmp__ = readFull(_r, _dst), _n:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (((_err != null) || (_n != (_src.length)) : Bool)) {
                _t.fatalf(("ReadFull(r, dst) = %d, %v; want %d, nil" : stdgo.GoString), stdgo.Go.toInterface(_n), stdgo.Go.toInterface(_err), stdgo.Go.toInterface((_src.length)));
            };
        };
        if (!stdgo._internal.bytes.Bytes.equal(_dst, _src)) {
            _t.errorf(("bytes read = %q want %q" : stdgo.GoString), stdgo.Go.toInterface(_dst), stdgo.Go.toInterface(_src));
        };
        if (!stdgo._internal.bytes.Bytes.equal(_wb.bytes(), _src)) {
            _t.errorf(("bytes written = %q want %q" : stdgo.GoString), stdgo.Go.toInterface(_wb.bytes()), stdgo.Go.toInterface(_src));
        };
        {
            var __tmp__ = _r.read(_dst), _n:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (((_n != (0 : stdgo.GoInt)) || (stdgo.Go.toInterface(_err) != stdgo.Go.toInterface(eof)) : Bool)) {
                _t.errorf(("r.Read at EOF = %d, %v want 0, EOF" : stdgo.GoString), stdgo.Go.toInterface(_n), stdgo.Go.toInterface(_err));
            };
        };
        _rb = stdgo._internal.bytes.Bytes.newBuffer(_src);
        var __tmp__ = pipe(), _pr:stdgo.Ref<stdgo._internal.io.Io.PipeReader> = __tmp__._0, _pw:stdgo.Ref<stdgo._internal.io.Io.PipeWriter> = __tmp__._1;
        _pr.close();
        _r = teeReader(stdgo.Go.asInterface(_rb), stdgo.Go.asInterface(_pw));
        {
            var __tmp__ = readFull(_r, _dst), _n:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (((_n != (0 : stdgo.GoInt)) || (stdgo.Go.toInterface(_err) != stdgo.Go.toInterface(errClosedPipe)) : Bool)) {
                _t.errorf(("closed tee: ReadFull(r, dst) = %d, %v; want 0, EPIPE" : stdgo.GoString), stdgo.Go.toInterface(_n), stdgo.Go.toInterface(_err));
            };
        };
    }
function testSectionReader_ReadAt(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _dat = ("a long sample data, 1234567890" : stdgo.GoString);
        var _tests = (new stdgo.Slice<T__struct_1>(12, 12, ...[
({ _data : stdgo.Go.str()?.__copy__(), _off : (0 : stdgo.GoInt), _n : (10 : stdgo.GoInt), _bufLen : (2 : stdgo.GoInt), _at : (0 : stdgo.GoInt), _exp : stdgo.Go.str()?.__copy__(), _err : eof } : T__struct_1),
({ _data : _dat?.__copy__(), _off : (0 : stdgo.GoInt), _n : (_dat.length), _bufLen : (0 : stdgo.GoInt), _at : (0 : stdgo.GoInt), _exp : stdgo.Go.str()?.__copy__(), _err : (null : stdgo.Error) } : T__struct_1),
({ _data : _dat?.__copy__(), _off : (_dat.length), _n : (1 : stdgo.GoInt), _bufLen : (1 : stdgo.GoInt), _at : (0 : stdgo.GoInt), _exp : stdgo.Go.str()?.__copy__(), _err : eof } : T__struct_1),
({ _data : _dat?.__copy__(), _off : (0 : stdgo.GoInt), _n : ((_dat.length) + (2 : stdgo.GoInt) : stdgo.GoInt), _bufLen : (_dat.length), _at : (0 : stdgo.GoInt), _exp : _dat?.__copy__(), _err : (null : stdgo.Error) } : T__struct_1),
({ _data : _dat?.__copy__(), _off : (0 : stdgo.GoInt), _n : (_dat.length), _bufLen : ((_dat.length) / (2 : stdgo.GoInt) : stdgo.GoInt), _at : (0 : stdgo.GoInt), _exp : (_dat.__slice__(0, ((_dat.length) / (2 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__(), _err : (null : stdgo.Error) } : T__struct_1),
({ _data : _dat?.__copy__(), _off : (0 : stdgo.GoInt), _n : (_dat.length), _bufLen : (_dat.length), _at : (0 : stdgo.GoInt), _exp : _dat?.__copy__(), _err : (null : stdgo.Error) } : T__struct_1),
({ _data : _dat?.__copy__(), _off : (0 : stdgo.GoInt), _n : (_dat.length), _bufLen : ((_dat.length) / (2 : stdgo.GoInt) : stdgo.GoInt), _at : (2 : stdgo.GoInt), _exp : (_dat.__slice__((2 : stdgo.GoInt), ((2 : stdgo.GoInt) + ((_dat.length) / (2 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__(), _err : (null : stdgo.Error) } : T__struct_1),
({ _data : _dat?.__copy__(), _off : (3 : stdgo.GoInt), _n : (_dat.length), _bufLen : ((_dat.length) / (2 : stdgo.GoInt) : stdgo.GoInt), _at : (2 : stdgo.GoInt), _exp : (_dat.__slice__((5 : stdgo.GoInt), ((5 : stdgo.GoInt) + ((_dat.length) / (2 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__(), _err : (null : stdgo.Error) } : T__struct_1),
({ _data : _dat?.__copy__(), _off : (3 : stdgo.GoInt), _n : ((_dat.length) / (2 : stdgo.GoInt) : stdgo.GoInt), _bufLen : (((_dat.length) / (2 : stdgo.GoInt) : stdgo.GoInt) - (2 : stdgo.GoInt) : stdgo.GoInt), _at : (2 : stdgo.GoInt), _exp : (_dat.__slice__((5 : stdgo.GoInt), (((5 : stdgo.GoInt) + ((_dat.length) / (2 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoInt) - (2 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__(), _err : (null : stdgo.Error) } : T__struct_1),
({ _data : _dat?.__copy__(), _off : (3 : stdgo.GoInt), _n : ((_dat.length) / (2 : stdgo.GoInt) : stdgo.GoInt), _bufLen : (((_dat.length) / (2 : stdgo.GoInt) : stdgo.GoInt) + (2 : stdgo.GoInt) : stdgo.GoInt), _at : (2 : stdgo.GoInt), _exp : (_dat.__slice__((5 : stdgo.GoInt), (((5 : stdgo.GoInt) + ((_dat.length) / (2 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoInt) - (2 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__(), _err : eof } : T__struct_1),
({ _data : _dat?.__copy__(), _off : (0 : stdgo.GoInt), _n : (0 : stdgo.GoInt), _bufLen : (0 : stdgo.GoInt), _at : (-1 : stdgo.GoInt), _exp : stdgo.Go.str()?.__copy__(), _err : eof } : T__struct_1),
({ _data : _dat?.__copy__(), _off : (0 : stdgo.GoInt), _n : (0 : stdgo.GoInt), _bufLen : (0 : stdgo.GoInt), _at : (1 : stdgo.GoInt), _exp : stdgo.Go.str()?.__copy__(), _err : eof } : T__struct_1)].concat([for (i in 12 ... (12 > 12 ? 12 : 12 : stdgo.GoInt).toBasic()) ({ _data : ("" : stdgo.GoString), _off : (0 : stdgo.GoInt), _n : (0 : stdgo.GoInt), _bufLen : (0 : stdgo.GoInt), _at : (0 : stdgo.GoInt), _exp : ("" : stdgo.GoString), _err : (null : stdgo.Error) } : T__struct_1)])) : stdgo.Slice<T__struct_1>);
        for (_i => _tt in _tests) {
            var _r = stdgo._internal.strings.Strings.newReader(_tt._data?.__copy__());
            var _s = newSectionReader(stdgo.Go.asInterface(_r), (_tt._off : stdgo.GoInt64), (_tt._n : stdgo.GoInt64));
            var _buf = (new stdgo.Slice<stdgo.GoUInt8>((_tt._bufLen : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
            {
                var __tmp__ = _s.readAt(_buf, (_tt._at : stdgo.GoInt64)), _n:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (((_n != ((_tt._exp.length)) || ((_buf.__slice__(0, _n) : stdgo.Slice<stdgo.GoUInt8>) : stdgo.GoString) != (_tt._exp) : Bool) || (stdgo.Go.toInterface(_err) != stdgo.Go.toInterface(_tt._err)) : Bool)) {
                    _t.fatalf(("%d: ReadAt(%d) = %q, %v; expected %q, %v" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_tt._at), stdgo.Go.toInterface((_buf.__slice__(0, _n) : stdgo.Slice<stdgo.GoUInt8>)), stdgo.Go.toInterface(_err), stdgo.Go.toInterface(_tt._exp), stdgo.Go.toInterface(_tt._err));
                };
            };
        };
    }
function testSectionReader_Seek(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _br = stdgo._internal.bytes.Bytes.newReader((("foo" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>));
        var _sr = newSectionReader(stdgo.Go.asInterface(_br), (0i64 : stdgo.GoInt64), (("foo" : stdgo.GoString).length : stdgo.GoInt64));
        for (__0 => _whence in (new stdgo.Slice<stdgo.GoInt>(3, 3, ...[(0 : stdgo.GoInt), (1 : stdgo.GoInt), (2 : stdgo.GoInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>)) {
            {
                var _offset = ((-3i64 : stdgo.GoInt64) : stdgo.GoInt64);
                stdgo.Go.cfor((_offset <= (4i64 : stdgo.GoInt64) : Bool), _offset++, {
                    var __tmp__ = _br.seek(_offset, _whence), _brOff:stdgo.GoInt64 = __tmp__._0, _brErr:stdgo.Error = __tmp__._1;
                    var __tmp__ = _sr.seek(_offset, _whence), _srOff:stdgo.GoInt64 = __tmp__._0, _srErr:stdgo.Error = __tmp__._1;
                    if ((((_brErr != null) != (_srErr != null)) || (_brOff != _srOff) : Bool)) {
                        _t.errorf(("For whence %d, offset %d: bytes.Reader.Seek = (%v, %v) != SectionReader.Seek = (%v, %v)" : stdgo.GoString), stdgo.Go.toInterface(_whence), stdgo.Go.toInterface(_offset), stdgo.Go.toInterface(_brOff), stdgo.Go.toInterface(_brErr), stdgo.Go.toInterface(_srErr), stdgo.Go.toInterface(_srOff));
                    };
                });
            };
        };
        var __tmp__ = _sr.seek((100i64 : stdgo.GoInt64), (0 : stdgo.GoInt)), _got:stdgo.GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (((_err != null) || (_got != (100i64 : stdgo.GoInt64)) : Bool)) {
            _t.errorf(("Seek = %v, %v; want 100, nil" : stdgo.GoString), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_err));
        };
        var __tmp__ = _sr.read((new stdgo.Slice<stdgo.GoUInt8>((10 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>)), _n:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (((_n != (0 : stdgo.GoInt)) || (stdgo.Go.toInterface(_err) != stdgo.Go.toInterface(eof)) : Bool)) {
            _t.errorf(("Read = %v, %v; want 0, EOF" : stdgo.GoString), stdgo.Go.toInterface(_n), stdgo.Go.toInterface(_err));
        };
    }
function testSectionReader_Size(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _tests = (new stdgo.Slice<T__struct_2>(2, 2, ...[({ _data : ("a long sample data, 1234567890" : stdgo.GoString), _want : (30i64 : stdgo.GoInt64) } : T__struct_2), ({ _data : stdgo.Go.str()?.__copy__(), _want : (0i64 : stdgo.GoInt64) } : T__struct_2)].concat([for (i in 2 ... (2 > 2 ? 2 : 2 : stdgo.GoInt).toBasic()) ({ _data : ("" : stdgo.GoString), _want : (0 : stdgo.GoInt64) } : T__struct_2)])) : stdgo.Slice<T__struct_2>);
        for (__0 => _tt in _tests) {
            var _r = stdgo._internal.strings.Strings.newReader(_tt._data?.__copy__());
            var _sr = newSectionReader(stdgo.Go.asInterface(_r), (0i64 : stdgo.GoInt64), (_tt._data.length : stdgo.GoInt64));
            {
                var _got = (_sr.size() : stdgo.GoInt64);
                if (_got != (_tt._want)) {
                    _t.errorf(("Size = %v; want %v" : stdgo.GoString), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_tt._want));
                };
            };
        };
    }
function testSectionReader_Max(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _r = stdgo._internal.strings.Strings.newReader(("abcdef" : stdgo.GoString));
        {};
        var _sr = newSectionReader(stdgo.Go.asInterface(_r), (3i64 : stdgo.GoInt64), (9223372036854775807i64 : stdgo.GoInt64));
        var __tmp__ = _sr.read((new stdgo.Slice<stdgo.GoUInt8>((3 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>)), _n:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (((_n != (3 : stdgo.GoInt)) || (_err != null) : Bool)) {
            _t.errorf(("Read = %v %v, want 3, nil" : stdgo.GoString), stdgo.Go.toInterface(_n), stdgo.Go.toInterface(_err));
        };
        {
            var __tmp__ = _sr.read((new stdgo.Slice<stdgo.GoUInt8>((3 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>));
            _n = __tmp__._0;
            _err = __tmp__._1;
        };
        if (((_n != (0 : stdgo.GoInt)) || (stdgo.Go.toInterface(_err) != stdgo.Go.toInterface(eof)) : Bool)) {
            _t.errorf(("Read = %v, %v, want 0, EOF" : stdgo.GoString), stdgo.Go.toInterface(_n), stdgo.Go.toInterface(_err));
        };
    }
function testCopyLargeWriter(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _want = (errInvalidWrite : stdgo.Error);
        var _rb = (stdgo.Go.setRef(({} : stdgo._internal.io_test.Io_test.Buffer)) : stdgo.Ref<stdgo._internal.io_test.Io_test.Buffer>);
        var _wb = (new stdgo._internal.io_test.Io_test.T_largeWriter() : stdgo._internal.io_test.Io_test.T_largeWriter);
        _rb.writeString(("hello, world." : stdgo.GoString));
        {
            var __tmp__ = copy(stdgo.Go.asInterface(_wb), stdgo.Go.asInterface(_rb)), __0:stdgo.GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (stdgo.Go.toInterface(_err) != (stdgo.Go.toInterface(_want))) {
                _t.errorf(("Copy error: got %v, want %v" : stdgo.GoString), stdgo.Go.toInterface(_err), stdgo.Go.toInterface(_want));
            };
        };
        _want = stdgo._internal.errors.Errors.new_(("largeWriterError" : stdgo.GoString));
        _rb = (stdgo.Go.setRef(({} : stdgo._internal.io_test.Io_test.Buffer)) : stdgo.Ref<stdgo._internal.io_test.Io_test.Buffer>);
        _wb = ({ _err : _want } : stdgo._internal.io_test.Io_test.T_largeWriter);
        _rb.writeString(("hello, world." : stdgo.GoString));
        {
            var __tmp__ = copy(stdgo.Go.asInterface(_wb), stdgo.Go.asInterface(_rb)), __9:stdgo.GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (stdgo.Go.toInterface(_err) != (stdgo.Go.toInterface(_want))) {
                _t.errorf(("Copy error: got %v, want %v" : stdgo.GoString), stdgo.Go.toInterface(_err), stdgo.Go.toInterface(_want));
            };
        };
    }
function testNopCloserWriterToForwarding(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        for (__0 => _tc in (new stdgo.GoArray<T__struct_3>(2, 2, ...[({ name : ("not a WriterTo" : stdgo.GoString), _r : ((null : stdgo._internal.io.Io.Reader) : Reader) } : T__struct_3), ({ name : ("a WriterTo" : stdgo.GoString), _r : stdgo.Go.asInterface(({ reader : (null : stdgo._internal.io.Io.Reader), writerTo : (null : stdgo._internal.io.Io.WriterTo) } : T__struct_4)) } : T__struct_3)].concat([for (i in 2 ... (2 > 2 ? 2 : 2 : stdgo.GoInt).toBasic()) ({ name : ("" : stdgo.GoString), _r : (null : stdgo._internal.io.Io.Reader) } : T__struct_3)])) : stdgo.GoArray<T__struct_3>)) {
            var _nc = (nopCloser(_tc._r) : stdgo._internal.io.Io.ReadCloser);
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_tc._r) : WriterTo)) : WriterTo), _1 : true };
            } catch(_) {
                { _0 : (null : stdgo._internal.io.Io.WriterTo), _1 : false };
            }, __1 = __tmp__._0, _expected = __tmp__._1;
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_nc) : WriterTo)) : WriterTo), _1 : true };
            } catch(_) {
                { _0 : (null : stdgo._internal.io.Io.WriterTo), _1 : false };
            }, __2 = __tmp__._0, _got = __tmp__._1;
            if (_expected != (_got)) {
                _t.errorf(("NopCloser incorrectly forwards WriterTo for %s, got %t want %t" : stdgo.GoString), stdgo.Go.toInterface(_tc.name), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_expected));
            };
        };
    }
function testOffsetWriter_Seek(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            var _tmpfilename = ("TestOffsetWriter_Seek" : stdgo.GoString);
            var __tmp__ = stdgo._internal.os.Os.createTemp(_t.tempDir()?.__copy__(), _tmpfilename?.__copy__()), _tmpfile:stdgo.Ref<stdgo._internal.os.Os.File> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (((_err != null) || ((_tmpfile == null) || (_tmpfile : Dynamic).__nil__) : Bool)) {
                _t.fatalf(("CreateTemp(%s) failed: %v" : stdgo.GoString), stdgo.Go.toInterface(_tmpfilename), stdgo.Go.toInterface(_err));
            };
            __deferstack__.unshift(() -> _tmpfile.close());
            var _w = newOffsetWriter(stdgo.Go.asInterface(_tmpfile), (0i64 : stdgo.GoInt64));
            _t.run(("errWhence" : stdgo.GoString), function(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
                for (__24 => _whence in (new stdgo.Slice<stdgo.GoInt>(6, 6, ...[(-3 : stdgo.GoInt), (-2 : stdgo.GoInt), (-1 : stdgo.GoInt), (3 : stdgo.GoInt), (4 : stdgo.GoInt), (5 : stdgo.GoInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>)) {
                    var _offset:stdgo.GoInt64 = (0i64 : stdgo.GoInt64);
                    var __tmp__ = _w.seek(_offset, _whence), _gotOff:stdgo.GoInt64 = __tmp__._0, _gotErr:stdgo.Error = __tmp__._1;
                    if (((_gotOff != (0i64 : stdgo.GoInt64)) || (stdgo.Go.toInterface(_gotErr) != stdgo.Go.toInterface(errWhence)) : Bool)) {
                        _t.errorf(("For whence %d, offset %d, OffsetWriter.Seek got: (%d, %v), want: (%d, %v)" : stdgo.GoString), stdgo.Go.toInterface(_whence), stdgo.Go.toInterface(_offset), stdgo.Go.toInterface(_gotOff), stdgo.Go.toInterface(_gotErr), stdgo.Go.toInterface((0 : stdgo.GoInt)), stdgo.Go.toInterface(errWhence));
                    };
                };
            });
            _t.run(("errOffset" : stdgo.GoString), function(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
                for (__32 => _whence in (new stdgo.Slice<stdgo.GoInt>(2, 2, ...[(0 : stdgo.GoInt), (1 : stdgo.GoInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>)) {
                    {
                        var _offset = ((-3i64 : stdgo.GoInt64) : stdgo.GoInt64);
                        stdgo.Go.cfor((_offset < (0i64 : stdgo.GoInt64) : Bool), _offset++, {
                            var __tmp__ = _w.seek(_offset, _whence), _gotOff:stdgo.GoInt64 = __tmp__._0, _gotErr:stdgo.Error = __tmp__._1;
                            if (((_gotOff != (0i64 : stdgo.GoInt64)) || (stdgo.Go.toInterface(_gotErr) != stdgo.Go.toInterface(errOffset)) : Bool)) {
                                _t.errorf(("For whence %d, offset %d, OffsetWriter.Seek got: (%d, %v), want: (%d, %v)" : stdgo.GoString), stdgo.Go.toInterface(_whence), stdgo.Go.toInterface(_offset), stdgo.Go.toInterface(_gotOff), stdgo.Go.toInterface(_gotErr), stdgo.Go.toInterface((0 : stdgo.GoInt)), stdgo.Go.toInterface(errOffset));
                            };
                        });
                    };
                };
            });
            _t.run(("normal" : stdgo.GoString), function(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
                var _tests = (new stdgo.Slice<T__struct_5>(6, 6, ...[({ _whence : (0 : stdgo.GoInt), _offset : (1i64 : stdgo.GoInt64), _returnOff : (1i64 : stdgo.GoInt64) } : T__struct_5), ({ _whence : (0 : stdgo.GoInt), _offset : (2i64 : stdgo.GoInt64), _returnOff : (2i64 : stdgo.GoInt64) } : T__struct_5), ({ _whence : (0 : stdgo.GoInt), _offset : (3i64 : stdgo.GoInt64), _returnOff : (3i64 : stdgo.GoInt64) } : T__struct_5), ({ _whence : (1 : stdgo.GoInt), _offset : (1i64 : stdgo.GoInt64), _returnOff : (4i64 : stdgo.GoInt64) } : T__struct_5), ({ _whence : (1 : stdgo.GoInt), _offset : (2i64 : stdgo.GoInt64), _returnOff : (6i64 : stdgo.GoInt64) } : T__struct_5), ({ _whence : (1 : stdgo.GoInt), _offset : (3i64 : stdgo.GoInt64), _returnOff : (9i64 : stdgo.GoInt64) } : T__struct_5)].concat([for (i in 6 ... (6 > 6 ? 6 : 6 : stdgo.GoInt).toBasic()) ({ _offset : (0 : stdgo.GoInt64), _whence : (0 : stdgo.GoInt), _returnOff : (0 : stdgo.GoInt64) } : T__struct_5)])) : stdgo.Slice<T__struct_5>);
                for (_idx => _tt in _tests) {
                    var __tmp__ = _w.seek(_tt._offset, _tt._whence), _gotOff:stdgo.GoInt64 = __tmp__._0, _gotErr:stdgo.Error = __tmp__._1;
                    if (((_gotOff != _tt._returnOff) || (_gotErr != null) : Bool)) {
                        _t.errorf(("%d:: For whence %d, offset %d, OffsetWriter.Seek got: (%d, %v), want: (%d, <nil>)" : stdgo.GoString), stdgo.Go.toInterface((_idx + (1 : stdgo.GoInt) : stdgo.GoInt)), stdgo.Go.toInterface(_tt._whence), stdgo.Go.toInterface(_tt._offset), stdgo.Go.toInterface(_gotOff), stdgo.Go.toInterface(_gotErr), stdgo.Go.toInterface(_tt._returnOff));
                    };
                };
            });
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
function testOffsetWriter_WriteAt(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        {};
        var _contentSize = (("0123456789ABCDEF" : stdgo.GoString).length : stdgo.GoInt64);
        var __tmp__ = stdgo._internal.os.Os.mkdirTemp(_t.tempDir()?.__copy__(), ("TestOffsetWriter_WriteAt" : stdgo.GoString)), _tmpdir:stdgo.GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.fatal(stdgo.Go.toInterface(_err));
        };
        var _work = (function(_off:stdgo.GoInt64, _at:stdgo.GoInt64):Void {
            var __deferstack__:Array<Void -> Void> = [];
            try {
                var _position = (stdgo._internal.fmt.Fmt.sprintf(("off_%d_at_%d" : stdgo.GoString), stdgo.Go.toInterface(_off), stdgo.Go.toInterface(_at))?.__copy__() : stdgo.GoString);
                var __tmp__ = stdgo._internal.os.Os.createTemp(_tmpdir?.__copy__(), _position?.__copy__()), _tmpfile:stdgo.Ref<stdgo._internal.os.Os.File> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (((_err != null) || ((_tmpfile == null) || (_tmpfile : Dynamic).__nil__) : Bool)) {
                    _t.fatalf(("CreateTemp(%s) failed: %v" : stdgo.GoString), stdgo.Go.toInterface(_position), stdgo.Go.toInterface(_err));
                };
                __deferstack__.unshift(() -> _tmpfile.close());
                var _writeN:stdgo.GoInt64 = (0 : stdgo.GoInt64);
                var _wg:stdgo._internal.sync.Sync.WaitGroup = ({} : stdgo._internal.sync.Sync.WaitGroup);
                for (_step => _value in (("0123456789ABCDEF" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>)) {
                    _wg.add((1 : stdgo.GoInt));
                    stdgo.Go.routine(() -> {
                        var a = function(_wg:stdgo.Ref<stdgo._internal.sync.Sync.WaitGroup>, _tmpfile:stdgo.Ref<stdgo._internal.os.Os.File>, _value:stdgo.GoByte, _off:stdgo.GoInt64, _at:stdgo.GoInt64, _step:stdgo.GoInt):Void {
                            var __deferstack__:Array<Void -> Void> = [];
                            try {
                                __deferstack__.unshift(() -> _wg.done());
                                var _w = newOffsetWriter(stdgo.Go.asInterface(_tmpfile), _off);
                                var __tmp__ = _w.writeAt((new stdgo.Slice<stdgo.GoUInt8>(1, 1, ...[_value]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>), (_at + (_step : stdgo.GoInt64) : stdgo.GoInt64)), _n:stdgo.GoInt = __tmp__._0, _e:stdgo.Error = __tmp__._1;
                                if (_e != null) {
                                    _t.errorf(("WriteAt failed. off: %d, at: %d, step: %d\n error: %v" : stdgo.GoString), stdgo.Go.toInterface(_off), stdgo.Go.toInterface(_at), stdgo.Go.toInterface(_step), stdgo.Go.toInterface(_e));
                                };
                                stdgo._internal.sync.atomic_.Atomic_.addInt64(stdgo.Go.pointer(_writeN), (_n : stdgo.GoInt64));
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
                        };
                        a((stdgo.Go.setRef(_wg) : stdgo.Ref<stdgo._internal.sync.Sync.WaitGroup>), _tmpfile, _value, _off, _at, _step);
                    });
                };
                _wg.wait_();
                var _buf = (new stdgo.Slice<stdgo.GoUInt8>(((_contentSize + (1i64 : stdgo.GoInt64) : stdgo.GoInt64) : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
                var __tmp__ = _tmpfile.readAt(_buf, (_off + _at : stdgo.GoInt64)), _readN:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (stdgo.Go.toInterface(_err) != (stdgo.Go.toInterface(eof))) {
                    _t.fatalf(("ReadAt failed: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
                };
                var _readContent = (((_buf.__slice__(0, _contentSize) : stdgo.Slice<stdgo.GoUInt8>) : stdgo.GoString)?.__copy__() : stdgo.GoString);
                if (((_writeN != ((_readN : stdgo.GoInt64)) || _writeN != (_contentSize) : Bool) || (_readContent != ("0123456789ABCDEF" : stdgo.GoString)) : Bool)) {
                    _t.fatalf(("%s:: WriteAt(%s, %d) error. \ngot n: %v, content: %s \nexpected n: %v, content: %v" : stdgo.GoString), stdgo.Go.toInterface(_position), stdgo.Go.toInterface(("0123456789ABCDEF" : stdgo.GoString)), stdgo.Go.toInterface(_at), stdgo.Go.toInterface(_readN), stdgo.Go.toInterface(_readContent), stdgo.Go.toInterface(_contentSize), stdgo.Go.toInterface(("0123456789ABCDEF" : stdgo.GoString)));
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
        } : (stdgo.GoInt64, stdgo.GoInt64) -> Void);
        {
            var _off = ((0i64 : stdgo.GoInt64) : stdgo.GoInt64);
            stdgo.Go.cfor((_off < (2i64 : stdgo.GoInt64) : Bool), _off++, {
                {
                    var _at = ((0i64 : stdgo.GoInt64) : stdgo.GoInt64);
                    stdgo.Go.cfor((_at < (2i64 : stdgo.GoInt64) : Bool), _at++, {
                        _work(_off, _at);
                    });
                };
            });
        };
    }
function testWriteAt_PositionPriorToBase(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            var _tmpdir = (_t.tempDir()?.__copy__() : stdgo.GoString);
            var _tmpfilename = ("TestOffsetWriter_WriteAt" : stdgo.GoString);
            var __tmp__ = stdgo._internal.os.Os.createTemp(_tmpdir?.__copy__(), _tmpfilename?.__copy__()), _tmpfile:stdgo.Ref<stdgo._internal.os.Os.File> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _t.fatalf(("CreateTemp(%s) failed: %v" : stdgo.GoString), stdgo.Go.toInterface(_tmpfilename), stdgo.Go.toInterface(_err));
            };
            __deferstack__.unshift(() -> _tmpfile.close());
            var _offset = ((10i64 : stdgo.GoInt64) : stdgo.GoInt64);
            var _at = ((-1i64 : stdgo.GoInt64) : stdgo.GoInt64);
            var _w = newOffsetWriter(stdgo.Go.asInterface(_tmpfile), _offset);
            var __tmp__ = _w.writeAt((("hello" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>), _at), __16:stdgo.GoInt = __tmp__._0, _e:stdgo.Error = __tmp__._1;
            if (_e == null) {
                _t.errorf(("error expected to be not nil" : stdgo.GoString));
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
function testOffsetWriter_Write(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        {};
        var _contentSize = (("0123456789ABCDEF" : stdgo.GoString).length : stdgo.GoInt);
        var _tmpdir = (_t.tempDir()?.__copy__() : stdgo.GoString);
        var _makeOffsetWriter = (function(_name:stdgo.GoString):{ var _0 : stdgo.Ref<OffsetWriter>; var _1 : stdgo.Ref<stdgo._internal.os.Os.File>; } {
            var _tmpfilename = ((("TestOffsetWriter_Write_" : stdgo.GoString) + _name?.__copy__() : stdgo.GoString)?.__copy__() : stdgo.GoString);
            var __tmp__ = stdgo._internal.os.Os.createTemp(_tmpdir?.__copy__(), _tmpfilename?.__copy__()), _tmpfile:stdgo.Ref<stdgo._internal.os.Os.File> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (((_err != null) || ((_tmpfile == null) || (_tmpfile : Dynamic).__nil__) : Bool)) {
                _t.fatalf(("CreateTemp(%s) failed: %v" : stdgo.GoString), stdgo.Go.toInterface(_tmpfilename), stdgo.Go.toInterface(_err));
            };
            return { _0 : newOffsetWriter(stdgo.Go.asInterface(_tmpfile), (0i64 : stdgo.GoInt64)), _1 : _tmpfile };
        } : stdgo.GoString -> { var _0 : stdgo.Ref<stdgo._internal.io.Io.OffsetWriter>; var _1 : stdgo.Ref<stdgo._internal.os.Os.File>; });
        var _checkContent = function(_name:stdgo.GoString, _f:stdgo.Ref<stdgo._internal.os.Os.File>):Void {
            var _buf = (new stdgo.Slice<stdgo.GoUInt8>((_contentSize + (1 : stdgo.GoInt) : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
            var __tmp__ = _f.readAt(_buf, (0i64 : stdgo.GoInt64)), _readN:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (stdgo.Go.toInterface(_err) != (stdgo.Go.toInterface(eof))) {
                _t.fatalf(("ReadAt failed, err: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
            };
            var _readContent = (((_buf.__slice__(0, _contentSize) : stdgo.Slice<stdgo.GoUInt8>) : stdgo.GoString)?.__copy__() : stdgo.GoString);
            if (((_readN != _contentSize) || (_readContent != ("0123456789ABCDEF" : stdgo.GoString)) : Bool)) {
                _t.fatalf(("%s error. \ngot n: %v, content: %s \nexpected n: %v, content: %v" : stdgo.GoString), stdgo.Go.toInterface(_name), stdgo.Go.toInterface(_readN), stdgo.Go.toInterface(_readContent), stdgo.Go.toInterface(_contentSize), stdgo.Go.toInterface(("0123456789ABCDEF" : stdgo.GoString)));
            };
        };
        var _name:stdgo.GoString = ("" : stdgo.GoString);
        _name = ("Write" : stdgo.GoString);
        _t.run(_name?.__copy__(), function(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
            var __deferstack__:Array<Void -> Void> = [];
            try {
                var __tmp__ = _makeOffsetWriter(_name?.__copy__()), _w:stdgo.Ref<stdgo._internal.io.Io.OffsetWriter> = __tmp__._0, _f:stdgo.Ref<stdgo._internal.os.Os.File> = __tmp__._1;
                __deferstack__.unshift(() -> _f.close());
                for (__16 => _value in (("0123456789ABCDEF" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>)) {
                    var __tmp__ = _w.write((new stdgo.Slice<stdgo.GoUInt8>(1, 1, ...[_value]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>)), _n:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                    if (_err != null) {
                        _t.fatalf(("Write failed, n: %d, err: %v" : stdgo.GoString), stdgo.Go.toInterface(_n), stdgo.Go.toInterface(_err));
                    };
                };
                _checkContent(_name?.__copy__(), _f);
                _name = ("Copy" : stdgo.GoString);
                var __tmp__ = _makeOffsetWriter(_name?.__copy__()), _w2:stdgo.Ref<stdgo._internal.io.Io.OffsetWriter> = __tmp__._0, _f2:stdgo.Ref<stdgo._internal.os.Os.File> = __tmp__._1;
                __deferstack__.unshift(() -> _f2.close());
                copy(stdgo.Go.asInterface(_w2), stdgo.Go.asInterface(_f));
                _checkContent(_name?.__copy__(), _f2);
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
        });
        _name = ("Write_Of_Copy_WriteTo" : stdgo.GoString);
        _t.run(_name?.__copy__(), function(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
            var __deferstack__:Array<Void -> Void> = [];
            try {
                var __tmp__ = _makeOffsetWriter(_name?.__copy__()), _w:stdgo.Ref<stdgo._internal.io.Io.OffsetWriter> = __tmp__._0, _f:stdgo.Ref<stdgo._internal.os.Os.File> = __tmp__._1;
                __deferstack__.unshift(() -> _f.close());
                copy(stdgo.Go.asInterface(_w), stdgo.Go.asInterface(stdgo._internal.strings.Strings.newReader(("0123456789ABCDEF" : stdgo.GoString))));
                _checkContent(_name?.__copy__(), _f);
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
        });
    }
function testMultiReader(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _mr:Reader = (null : stdgo._internal.io.Io.Reader);
        var _buf:stdgo.Slice<stdgo.GoByte> = (null : stdgo.Slice<stdgo.GoUInt8>);
        var _nread = (0 : stdgo.GoInt);
        var _withFooBar = (function(_tests:() -> Void):Void {
            var _r1 = stdgo._internal.strings.Strings.newReader(("foo " : stdgo.GoString));
            var _r2 = stdgo._internal.strings.Strings.newReader(stdgo.Go.str()?.__copy__());
            var _r3 = stdgo._internal.strings.Strings.newReader(("bar" : stdgo.GoString));
            _mr = multiReader(stdgo.Go.asInterface(_r1), stdgo.Go.asInterface(_r2), stdgo.Go.asInterface(_r3));
            _buf = (new stdgo.Slice<stdgo.GoUInt8>((20 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
            _tests();
        } : (() -> Void) -> Void);
        var _expectRead = (function(_size:stdgo.GoInt, _expected:stdgo.GoString, _eerr:stdgo.Error):Void {
            _nread++;
            var __tmp__ = _mr.read((_buf.__slice__((0 : stdgo.GoInt), _size) : stdgo.Slice<stdgo.GoUInt8>)), _n:stdgo.GoInt = __tmp__._0, _gerr:stdgo.Error = __tmp__._1;
            if (_n != ((_expected.length))) {
                _t.errorf(("#%d, expected %d bytes; got %d" : stdgo.GoString), stdgo.Go.toInterface(_nread), stdgo.Go.toInterface((_expected.length)), stdgo.Go.toInterface(_n));
            };
            var _got = (((_buf.__slice__((0 : stdgo.GoInt), _n) : stdgo.Slice<stdgo.GoUInt8>) : stdgo.GoString)?.__copy__() : stdgo.GoString);
            if (_got != (_expected)) {
                _t.errorf(("#%d, expected %q; got %q" : stdgo.GoString), stdgo.Go.toInterface(_nread), stdgo.Go.toInterface(_expected), stdgo.Go.toInterface(_got));
            };
            if (stdgo.Go.toInterface(_gerr) != (stdgo.Go.toInterface(_eerr))) {
                _t.errorf(("#%d, expected error %v; got %v" : stdgo.GoString), stdgo.Go.toInterface(_nread), stdgo.Go.toInterface(_eerr), stdgo.Go.toInterface(_gerr));
            };
            _buf = (_buf.__slice__(_n) : stdgo.Slice<stdgo.GoUInt8>);
        } : (stdgo.GoInt, stdgo.GoString, stdgo.Error) -> Void);
        _withFooBar(function():Void {
            _expectRead((2 : stdgo.GoInt), ("fo" : stdgo.GoString), (null : stdgo.Error));
            _expectRead((5 : stdgo.GoInt), ("o " : stdgo.GoString), (null : stdgo.Error));
            _expectRead((5 : stdgo.GoInt), ("bar" : stdgo.GoString), (null : stdgo.Error));
            _expectRead((5 : stdgo.GoInt), stdgo.Go.str()?.__copy__(), eof);
        });
        _withFooBar(function():Void {
            _expectRead((4 : stdgo.GoInt), ("foo " : stdgo.GoString), (null : stdgo.Error));
            _expectRead((1 : stdgo.GoInt), ("b" : stdgo.GoString), (null : stdgo.Error));
            _expectRead((3 : stdgo.GoInt), ("ar" : stdgo.GoString), (null : stdgo.Error));
            _expectRead((1 : stdgo.GoInt), stdgo.Go.str()?.__copy__(), eof);
        });
        _withFooBar(function():Void {
            _expectRead((5 : stdgo.GoInt), ("foo " : stdgo.GoString), (null : stdgo.Error));
        });
    }
function testMultiReaderAsWriterTo(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _mr = (multiReader(stdgo.Go.asInterface(stdgo._internal.strings.Strings.newReader(("foo " : stdgo.GoString))), multiReader(stdgo.Go.asInterface(stdgo._internal.strings.Strings.newReader(stdgo.Go.str()?.__copy__())), stdgo.Go.asInterface(stdgo._internal.strings.Strings.newReader(("bar" : stdgo.GoString))))) : stdgo._internal.io.Io.Reader);
        var __tmp__ = try {
            { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_mr) : WriterTo)) : WriterTo), _1 : true };
        } catch(_) {
            { _0 : (null : stdgo._internal.io.Io.WriterTo), _1 : false };
        }, _mrAsWriterTo = __tmp__._0, _ok = __tmp__._1;
        if (!_ok) {
            _t.fatalf(("expected cast to WriterTo to succeed" : stdgo.GoString));
        };
        var _sink = (stdgo.Go.setRef((new stdgo._internal.strings.Strings.Builder() : stdgo._internal.strings.Strings.Builder)) : stdgo.Ref<stdgo._internal.strings.Strings.Builder>);
        var __tmp__ = _mrAsWriterTo.writeTo(stdgo.Go.asInterface(_sink)), _n:stdgo.GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.fatalf(("expected no error; got %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
        };
        if (_n != ((7i64 : stdgo.GoInt64))) {
            _t.errorf(("expected read 7 bytes; got %d" : stdgo.GoString), stdgo.Go.toInterface(_n));
        };
        {
            var _result = ((_sink.string() : stdgo.GoString)?.__copy__() : stdgo.GoString);
            if (_result != (("foo bar" : stdgo.GoString))) {
                _t.errorf(("expected \"foo bar\"; got %q" : stdgo.GoString), stdgo.Go.toInterface(_result));
            };
        };
    }
function testMultiWriter(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _sink = (stdgo.Go.setRef(({} : stdgo._internal.bytes.Bytes.Buffer)) : stdgo.Ref<stdgo._internal.bytes.Bytes.Buffer>);
        _testMultiWriter(_t, stdgo.Go.asInterface(({ writer : stdgo.Go.asInterface(_sink), stringer : stdgo.Go.asInterface(_sink) } : T__struct_6)));
    }
function testMultiWriter_String(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        _testMultiWriter(_t, stdgo.Go.asInterface((stdgo.Go.setRef(({} : stdgo._internal.bytes.Bytes.Buffer)) : stdgo.Ref<stdgo._internal.bytes.Bytes.Buffer>)));
    }
@:structInit @:using(stdgo._internal.io_test.Io_test.T_testMultiWriter_WriteStringSingleAlloc___localname___simpleWriter_2430_static_extension) class T_testMultiWriter_WriteStringSingleAlloc___localname___simpleWriter_2430 {
    @:embedded
    public var writer : stdgo._internal.io.Io.Writer = (null : stdgo._internal.io.Io.Writer);
    public function new(?writer:stdgo._internal.io.Io.Writer) {
        if (writer != null) this.writer = writer;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    @:embedded
    public function write(_b:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return writer.write(_b);
    public function __copy__() {
        return new T_testMultiWriter_WriteStringSingleAlloc___localname___simpleWriter_2430(writer);
    }
}
function testMultiWriter_WriteStringSingleAlloc(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var __0:stdgo._internal.bytes.Bytes.Buffer = ({} : stdgo._internal.bytes.Bytes.Buffer), __1:stdgo._internal.bytes.Bytes.Buffer = ({} : stdgo._internal.bytes.Bytes.Buffer);
var _sink2 = __1, _sink1 = __0;
        {};
        var _mw = (multiWriter(stdgo.Go.asInterface((new stdgo._internal.io_test.Io_test.T_testMultiWriter_WriteStringSingleAlloc___localname___simpleWriter_2430(stdgo.Go.asInterface((stdgo.Go.setRef(_sink1) : stdgo.Ref<stdgo._internal.bytes.Bytes.Buffer>))) : stdgo._internal.io_test.Io_test.T_testMultiWriter_WriteStringSingleAlloc___localname___simpleWriter_2430)), stdgo.Go.asInterface((new stdgo._internal.io_test.Io_test.T_testMultiWriter_WriteStringSingleAlloc___localname___simpleWriter_2430(stdgo.Go.asInterface((stdgo.Go.setRef(_sink2) : stdgo.Ref<stdgo._internal.bytes.Bytes.Buffer>))) : stdgo._internal.io_test.Io_test.T_testMultiWriter_WriteStringSingleAlloc___localname___simpleWriter_2430))) : stdgo._internal.io.Io.Writer);
        var _allocs = (stdgo._internal.testing.Testing.allocsPerRun((1000 : stdgo.GoInt), function():Void {
            writeString(_mw, ("foo" : stdgo.GoString));
        }) : stdgo.GoInt);
        if (_allocs != ((1 : stdgo.GoInt))) {
            _t.errorf(("num allocations = %d; want 1" : stdgo.GoString), stdgo.Go.toInterface(_allocs));
        };
    }
function testMultiWriter_StringCheckCall(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _c:T_writeStringChecker = ({} : stdgo._internal.io_test.Io_test.T_writeStringChecker);
        var _mw = (multiWriter(stdgo.Go.asInterface((stdgo.Go.setRef(_c) : stdgo.Ref<stdgo._internal.io_test.Io_test.T_writeStringChecker>))) : stdgo._internal.io.Io.Writer);
        writeString(_mw, ("foo" : stdgo.GoString));
        if (!_c._called) {
            _t.error(stdgo.Go.toInterface(("did not see WriteString call to writeStringChecker" : stdgo.GoString)));
        };
    }
function _testMultiWriter(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>, _sink:T__interface_0):Void {
        var _sha1 = (stdgo._internal.crypto.sha1.Sha1.new_() : stdgo._internal.hash.Hash.Hash);
        var _mw = (multiWriter(_sha1, _sink) : stdgo._internal.io.Io.Writer);
        var _sourceString = ("My input text." : stdgo.GoString);
        var _source = stdgo._internal.strings.Strings.newReader(_sourceString?.__copy__());
        var __tmp__ = copy(_mw, stdgo.Go.asInterface(_source)), _written:stdgo.GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_written != ((_sourceString.length : stdgo.GoInt64))) {
            _t.errorf(("short write of %d, not %d" : stdgo.GoString), stdgo.Go.toInterface(_written), stdgo.Go.toInterface((_sourceString.length)));
        };
        if (_err != null) {
            _t.errorf(("unexpected error: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
        };
        var _sha1hex = (stdgo._internal.fmt.Fmt.sprintf(("%x" : stdgo.GoString), stdgo.Go.toInterface(_sha1.sum((null : stdgo.Slice<stdgo.GoUInt8>))))?.__copy__() : stdgo.GoString);
        if (_sha1hex != (("01cb303fa8c30a64123067c5aa6284ba7ec2d31b" : stdgo.GoString))) {
            _t.error(stdgo.Go.toInterface(("incorrect sha1 value" : stdgo.GoString)));
        };
        if ((_sink.string() : stdgo.GoString) != (_sourceString)) {
            _t.errorf(("expected %q; got %q" : stdgo.GoString), stdgo.Go.toInterface(_sourceString), stdgo.Go.toInterface((_sink.string() : stdgo.GoString)));
        };
    }
function testMultiWriterSingleChainFlatten(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _pc = (new stdgo.Slice<stdgo.GoUIntptr>((1000 : stdgo.GoInt).toBasic(), 0) : stdgo.Slice<stdgo.GoUIntptr>);
        var _n = (stdgo._internal.runtime.Runtime.callers((0 : stdgo.GoInt), _pc) : stdgo.GoInt);
        var _myDepth:stdgo.GoInt = _callDepth((_pc.__slice__(0, _n) : stdgo.Slice<stdgo.GoUIntptr>));
        var _writeDepth:stdgo.GoInt = (0 : stdgo.GoInt);
        var _w:Writer = multiWriter(stdgo.Go.asInterface((function(_p:stdgo.Slice<stdgo.GoByte>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
            var _n = (stdgo._internal.runtime.Runtime.callers((1 : stdgo.GoInt), _pc) : stdgo.GoInt);
            _writeDepth = (_writeDepth + (_callDepth((_pc.__slice__(0, _n) : stdgo.Slice<stdgo.GoUIntptr>))) : stdgo.GoInt);
            return { _0 : (0 : stdgo.GoInt), _1 : (null : stdgo.Error) };
        } : T_writerFunc)));
        var _mw = (_w : stdgo._internal.io.Io.Writer);
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (100 : stdgo.GoInt) : Bool), _i++, {
                _mw = multiWriter(_w);
            });
        };
        _mw = multiWriter(_w, _mw, _w, _mw);
        _mw.write((null : stdgo.Slice<stdgo.GoUInt8>));
        if (_writeDepth != (((4 : stdgo.GoInt) * ((_myDepth + (2 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoInt))) {
            _t.errorf(("multiWriter did not flatten chained multiWriters: expected writeDepth %d, got %d" : stdgo.GoString), stdgo.Go.toInterface(((4 : stdgo.GoInt) * ((_myDepth + (2 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoInt)), stdgo.Go.toInterface(_writeDepth));
        };
    }
function testMultiWriterError(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _f1 = ((function(_p:stdgo.Slice<stdgo.GoByte>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
            return { _0 : ((_p.length) / (2 : stdgo.GoInt) : stdgo.GoInt), _1 : errShortWrite };
        } : T_writerFunc) : stdgo._internal.io_test.Io_test.T_writerFunc);
        var _f2 = ((function(_p:stdgo.Slice<stdgo.GoByte>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
            _t.errorf(("MultiWriter called f2.Write" : stdgo.GoString));
            return { _0 : (_p.length), _1 : (null : stdgo.Error) };
        } : T_writerFunc) : stdgo._internal.io_test.Io_test.T_writerFunc);
        var _w = (multiWriter(stdgo.Go.asInterface(_f1), stdgo.Go.asInterface(_f2)) : stdgo._internal.io.Io.Writer);
        var __tmp__ = _w.write((new stdgo.Slice<stdgo.GoUInt8>((100 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>)), _n:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (((_n != (50 : stdgo.GoInt)) || (stdgo.Go.toInterface(_err) != stdgo.Go.toInterface(errShortWrite)) : Bool)) {
            _t.errorf(("Write = %d, %v, want 50, ErrShortWrite" : stdgo.GoString), stdgo.Go.toInterface(_n), stdgo.Go.toInterface(_err));
        };
    }
function testMultiReaderCopy(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _slice = (new stdgo.Slice<stdgo._internal.io.Io.Reader>(1, 1, ...[stdgo.Go.asInterface(stdgo._internal.strings.Strings.newReader(("hello world" : stdgo.GoString)))]) : stdgo.Slice<stdgo._internal.io.Io.Reader>);
        var _r = (multiReader(...(_slice : Array<stdgo._internal.io.Io.Reader>)) : stdgo._internal.io.Io.Reader);
        _slice[(0 : stdgo.GoInt)] = (null : stdgo._internal.io.Io.Reader);
        var __tmp__ = readAll(_r), _data:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (((_err != null) || ((_data : stdgo.GoString) != ("hello world" : stdgo.GoString)) : Bool)) {
            _t.errorf(("ReadAll() = %q, %v, want %q, nil" : stdgo.GoString), stdgo.Go.toInterface(_data), stdgo.Go.toInterface(_err), stdgo.Go.toInterface(("hello world" : stdgo.GoString)));
        };
    }
function testMultiWriterCopy(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _buf:stdgo._internal.strings.Strings.Builder = ({} : stdgo._internal.strings.Strings.Builder);
        var _slice = (new stdgo.Slice<stdgo._internal.io.Io.Writer>(1, 1, ...[stdgo.Go.asInterface((stdgo.Go.setRef(_buf) : stdgo.Ref<stdgo._internal.strings.Strings.Builder>))]) : stdgo.Slice<stdgo._internal.io.Io.Writer>);
        var _w = (multiWriter(...(_slice : Array<stdgo._internal.io.Io.Writer>)) : stdgo._internal.io.Io.Writer);
        _slice[(0 : stdgo.GoInt)] = (null : stdgo._internal.io.Io.Writer);
        var __tmp__ = _w.write((("hello world" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>)), _n:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (((_err != null) || (_n != (11 : stdgo.GoInt)) : Bool)) {
            _t.errorf(("Write(`hello world`) = %d, %v, want 11, nil" : stdgo.GoString), stdgo.Go.toInterface(_n), stdgo.Go.toInterface(_err));
        };
        if ((_buf.string() : stdgo.GoString) != (("hello world" : stdgo.GoString))) {
            _t.errorf(("buf.String() = %q, want %q" : stdgo.GoString), stdgo.Go.toInterface((_buf.string() : stdgo.GoString)), stdgo.Go.toInterface(("hello world" : stdgo.GoString)));
        };
    }
function _callDepth(_callers:stdgo.Slice<stdgo.GoUIntptr>):stdgo.GoInt {
        var _depth = (0 : stdgo.GoInt);
        var _frames = stdgo._internal.runtime.Runtime.callersFrames(_callers);
        var _more = (true : Bool);
        while (_more) {
            {
                var __tmp__ = _frames.next();
                _more = __tmp__._1;
            };
            _depth++;
        };
        return _depth;
    }
function testMultiReaderFlatten(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _pc = (new stdgo.Slice<stdgo.GoUIntptr>((1000 : stdgo.GoInt).toBasic(), 0) : stdgo.Slice<stdgo.GoUIntptr>);
        var _n = (stdgo._internal.runtime.Runtime.callers((0 : stdgo.GoInt), _pc) : stdgo.GoInt);
        var _myDepth:stdgo.GoInt = _callDepth((_pc.__slice__(0, _n) : stdgo.Slice<stdgo.GoUIntptr>));
        var _readDepth:stdgo.GoInt = (0 : stdgo.GoInt);
        var _r:Reader = multiReader(stdgo.Go.asInterface((function(_p:stdgo.Slice<stdgo.GoByte>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
            var _n = (stdgo._internal.runtime.Runtime.callers((1 : stdgo.GoInt), _pc) : stdgo.GoInt);
            _readDepth = _callDepth((_pc.__slice__(0, _n) : stdgo.Slice<stdgo.GoUIntptr>));
            return { _0 : (0 : stdgo.GoInt), _1 : stdgo._internal.errors.Errors.new_(("irrelevant" : stdgo.GoString)) };
        } : T_readerFunc)));
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (100 : stdgo.GoInt) : Bool), _i++, {
                _r = multiReader(_r);
            });
        };
        _r.read((null : stdgo.Slice<stdgo.GoUInt8>));
        if (_readDepth != ((_myDepth + (2 : stdgo.GoInt) : stdgo.GoInt))) {
            _t.errorf(("multiReader did not flatten chained multiReaders: expected readDepth %d, got %d" : stdgo.GoString), stdgo.Go.toInterface((_myDepth + (2 : stdgo.GoInt) : stdgo.GoInt)), stdgo.Go.toInterface(_readDepth));
        };
    }
function testMultiReaderSingleByteWithEOF(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var __tmp__ = readAll(limitReader(multiReader(stdgo.Go.asInterface(((97 : stdgo._internal.io_test.Io_test.T_byteAndEOFReader) : T_byteAndEOFReader)), stdgo.Go.asInterface(((98 : stdgo._internal.io_test.Io_test.T_byteAndEOFReader) : T_byteAndEOFReader))), (10i64 : stdgo.GoInt64))), _got:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.fatal(stdgo.Go.toInterface(_err));
        };
        {};
        if ((_got : stdgo.GoString) != (("ab" : stdgo.GoString))) {
            _t.errorf(("got %q; want %q" : stdgo.GoString), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(("ab" : stdgo.GoString)));
        };
    }
function testMultiReaderFinalEOF(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _r = (multiReader(stdgo.Go.asInterface(stdgo._internal.bytes.Bytes.newReader((null : stdgo.Slice<stdgo.GoUInt8>))), stdgo.Go.asInterface(((97 : stdgo._internal.io_test.Io_test.T_byteAndEOFReader) : T_byteAndEOFReader))) : stdgo._internal.io.Io.Reader);
        var _buf = (new stdgo.Slice<stdgo.GoUInt8>((2 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        var __tmp__ = _r.read(_buf), _n:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (((_n != (1 : stdgo.GoInt)) || (stdgo.Go.toInterface(_err) != stdgo.Go.toInterface(eof)) : Bool)) {
            _t.errorf(("got %v, %v; want 1, EOF" : stdgo.GoString), stdgo.Go.toInterface(_n), stdgo.Go.toInterface(_err));
        };
    }
function testMultiReaderFreesExhaustedReaders(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _mr:Reader = (null : stdgo._internal.io.Io.Reader);
        var _closed = (new stdgo.Chan<T_wantedAndErrReader>(0, () -> ({} : T_wantedAndErrReader)) : stdgo.Chan<T_wantedAndErrReader>);
        {
            var a = function():Void {
                var _buf1 = stdgo._internal.bytes.Bytes.newReader((("foo" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>));
                var _buf2 = stdgo._internal.bytes.Bytes.newReader((("bar" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>));
                _mr = multiReader(stdgo.Go.asInterface(_buf1), stdgo.Go.asInterface(_buf2));
                stdgo._internal.runtime.Runtime.setFinalizer(stdgo.Go.toInterface(stdgo.Go.asInterface(_buf1)), stdgo.Go.toInterface(function(_0:stdgo.Ref<stdgo._internal.bytes.Bytes.Reader>):Void {
                    if (_closed != null) _closed.__close__();
                }));
            };
            a();
        };
        var _buf = (new stdgo.Slice<stdgo.GoUInt8>((4 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        {
            var __tmp__ = readFull(_mr, _buf), _n:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (((_err != null) || ((_buf : stdgo.GoString) != ("foob" : stdgo.GoString)) : Bool)) {
                _t.fatalf(("ReadFull = %d (%q), %v; want 3, \"foo\", nil" : stdgo.GoString), stdgo.Go.toInterface(_n), stdgo.Go.toInterface((_buf.__slice__(0, _n) : stdgo.Slice<stdgo.GoUInt8>)), stdgo.Go.toInterface(_err));
            };
        };
        stdgo._internal.runtime.Runtime.gc();
        {
            var __select__ = true;
            while (__select__) {
                if (_closed != null && _closed.__isGet__()) {
                    __select__ = false;
                    {
                        _closed.__get__();
                        {};
                    };
                } else if (stdgo._internal.time.Time.after((5000000000i64 : stdgo._internal.time.Time.Duration)) != null && stdgo._internal.time.Time.after((5000000000i64 : stdgo._internal.time.Time.Duration)).__isGet__()) {
                    __select__ = false;
                    {
                        stdgo._internal.time.Time.after((5000000000i64 : stdgo._internal.time.Time.Duration)).__get__();
                        {
                            _t.fatal(stdgo.Go.toInterface(("timeout waiting for collection of buf1" : stdgo.GoString)));
                        };
                    };
                };
                #if !js Sys.sleep(0.01) #else null #end;
                stdgo._internal.internal.Async.tick();
            };
        };
        {
            var __tmp__ = readFull(_mr, (_buf.__slice__(0, (2 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)), _n:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (((_err != null) || (((_buf.__slice__(0, (2 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>) : stdgo.GoString) != ("ar" : stdgo.GoString)) : Bool)) {
                _t.fatalf(("ReadFull = %d (%q), %v; want 2, \"ar\", nil" : stdgo.GoString), stdgo.Go.toInterface(_n), stdgo.Go.toInterface((_buf.__slice__(0, _n) : stdgo.Slice<stdgo.GoUInt8>)), stdgo.Go.toInterface(_err));
            };
        };
    }
function testInterleavedMultiReader(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _r1 = stdgo._internal.strings.Strings.newReader(("123" : stdgo.GoString));
        var _r2 = stdgo._internal.strings.Strings.newReader(("45678" : stdgo.GoString));
        var _mr1 = (multiReader(stdgo.Go.asInterface(_r1), stdgo.Go.asInterface(_r2)) : stdgo._internal.io.Io.Reader);
        var _mr2 = (multiReader(_mr1) : stdgo._internal.io.Io.Reader);
        var _buf = (new stdgo.Slice<stdgo.GoUInt8>((4 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        var __tmp__ = readFull(_mr2, _buf), _n:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        {
            var _got = (((_buf.__slice__(0, _n) : stdgo.Slice<stdgo.GoUInt8>) : stdgo.GoString)?.__copy__() : stdgo.GoString);
            if (((_got != ("1234" : stdgo.GoString)) || (_err != null) : Bool)) {
                _t.errorf(("ReadFull(mr2) = (%q, %v), want (\"1234\", nil)" : stdgo.GoString), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_err));
            };
        };
        {
            var __tmp__ = readFull(_mr1, _buf);
            _n = __tmp__._0;
            _err = __tmp__._1;
        };
        {
            var _got = (((_buf.__slice__(0, _n) : stdgo.Slice<stdgo.GoUInt8>) : stdgo.GoString)?.__copy__() : stdgo.GoString);
            if (((_got != ("5678" : stdgo.GoString)) || (_err != null) : Bool)) {
                _t.errorf(("ReadFull(mr1) = (%q, %v), want (\"5678\", nil)" : stdgo.GoString), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_err));
            };
        };
    }
function _checkWrite(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>, _w:Writer, _data:stdgo.Slice<stdgo.GoByte>, _c:stdgo.Chan<stdgo.GoInt>):Void {
        var __tmp__ = _w.write(_data), _n:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.errorf(("write: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
        };
        if (_n != ((_data.length))) {
            _t.errorf(("short write: %d != %d" : stdgo.GoString), stdgo.Go.toInterface(_n), stdgo.Go.toInterface((_data.length)));
        };
        _c.__send__((0 : stdgo.GoInt));
    }
function testPipe1(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _c = (new stdgo.Chan<stdgo.GoInt>(0, () -> (0 : stdgo.GoInt)) : stdgo.Chan<stdgo.GoInt>);
        var __tmp__ = pipe(), _r:stdgo.Ref<stdgo._internal.io.Io.PipeReader> = __tmp__._0, _w:stdgo.Ref<stdgo._internal.io.Io.PipeWriter> = __tmp__._1;
        var _buf:stdgo.Slice<stdgo.GoUInt8> = (new stdgo.Slice<stdgo.GoUInt8>((64 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        stdgo.Go.routine(() -> _checkWrite(_t, stdgo.Go.asInterface(_w), (("hello, world" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>), _c));
        var __tmp__ = _r.read(_buf), _n:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.errorf(("read: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
        } else if (((_n != (12 : stdgo.GoInt)) || (((_buf.__slice__((0 : stdgo.GoInt), (12 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>) : stdgo.GoString) != ("hello, world" : stdgo.GoString)) : Bool)) {
            _t.errorf(("bad read: got %q" : stdgo.GoString), stdgo.Go.toInterface((_buf.__slice__((0 : stdgo.GoInt), _n) : stdgo.Slice<stdgo.GoUInt8>)));
        };
        _c.__get__();
        _r.close();
        _w.close();
    }
function _reader(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>, _r:Reader, _c:stdgo.Chan<stdgo.GoInt>):Void {
        var _buf:stdgo.Slice<stdgo.GoUInt8> = (new stdgo.Slice<stdgo.GoUInt8>((64 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        while (true) {
            var __tmp__ = _r.read(_buf), _n:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (stdgo.Go.toInterface(_err) == (stdgo.Go.toInterface(eof))) {
                _c.__send__((0 : stdgo.GoInt));
                break;
            };
            if (_err != null) {
                _t.errorf(("read: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
            };
            _c.__send__(_n);
        };
    }
function testPipe2(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _c = (new stdgo.Chan<stdgo.GoInt>(0, () -> (0 : stdgo.GoInt)) : stdgo.Chan<stdgo.GoInt>);
        var __tmp__ = pipe(), _r:stdgo.Ref<stdgo._internal.io.Io.PipeReader> = __tmp__._0, _w:stdgo.Ref<stdgo._internal.io.Io.PipeWriter> = __tmp__._1;
        stdgo.Go.routine(() -> reader(_t, stdgo.Go.asInterface(_r), _c));
        var _buf:stdgo.Slice<stdgo.GoUInt8> = (new stdgo.Slice<stdgo.GoUInt8>((64 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (5 : stdgo.GoInt) : Bool), _i++, {
                var _p = (_buf.__slice__((0 : stdgo.GoInt), ((5 : stdgo.GoInt) + (_i * (10 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                var __tmp__ = _w.write(_p), _n:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_n != ((_p.length))) {
                    _t.errorf(("wrote %d, got %d" : stdgo.GoString), stdgo.Go.toInterface((_p.length)), stdgo.Go.toInterface(_n));
                };
                if (_err != null) {
                    _t.errorf(("write: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
                };
                var _nn = (_c.__get__() : stdgo.GoInt);
                if (_nn != (_n)) {
                    _t.errorf(("wrote %d, read got %d" : stdgo.GoString), stdgo.Go.toInterface(_n), stdgo.Go.toInterface(_nn));
                };
            });
        };
        _w.close();
        var _nn = (_c.__get__() : stdgo.GoInt);
        if (_nn != ((0 : stdgo.GoInt))) {
            _t.errorf(("final read got %d" : stdgo.GoString), stdgo.Go.toInterface(_nn));
        };
    }
function _writer(_w:WriteCloser, _buf:stdgo.Slice<stdgo.GoByte>, _c:stdgo.Chan<T_pipeReturn>):Void {
        var __tmp__ = _w.write(_buf), _n:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        _w.close();
        _c.__send__((new stdgo._internal.io_test.Io_test.T_pipeReturn(_n, _err) : stdgo._internal.io_test.Io_test.T_pipeReturn));
    }
function testPipe3(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _c = (new stdgo.Chan<stdgo._internal.io_test.Io_test.T_pipeReturn>(0, () -> ({} : stdgo._internal.io_test.Io_test.T_pipeReturn)) : stdgo.Chan<stdgo._internal.io_test.Io_test.T_pipeReturn>);
        var __tmp__ = pipe(), _r:stdgo.Ref<stdgo._internal.io.Io.PipeReader> = __tmp__._0, _w:stdgo.Ref<stdgo._internal.io.Io.PipeWriter> = __tmp__._1;
        var _wdat:stdgo.Slice<stdgo.GoUInt8> = (new stdgo.Slice<stdgo.GoUInt8>((128 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (_wdat.length) : Bool), _i++, {
                _wdat[(_i : stdgo.GoInt)] = (_i : stdgo.GoByte);
            });
        };
        stdgo.Go.routine(() -> writer(stdgo.Go.asInterface(_w), _wdat, _c));
        var _rdat:stdgo.Slice<stdgo.GoUInt8> = (new stdgo.Slice<stdgo.GoUInt8>((1024 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        var _tot = (0 : stdgo.GoInt);
        {
            var _n = (1 : stdgo.GoInt);
            stdgo.Go.cfor((_n <= (256 : stdgo.GoInt) : Bool), _n = (_n * ((2 : stdgo.GoInt)) : stdgo.GoInt), {
                var __tmp__ = _r.read((_rdat.__slice__(_tot, (_tot + _n : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)), _nn:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (((_err != null) && (stdgo.Go.toInterface(_err) != stdgo.Go.toInterface(eof)) : Bool)) {
                    _t.fatalf(("read: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
                };
                var _expect = (_n : stdgo.GoInt);
                if (_n == ((128 : stdgo.GoInt))) {
                    _expect = (1 : stdgo.GoInt);
                } else if (_n == ((256 : stdgo.GoInt))) {
                    _expect = (0 : stdgo.GoInt);
                    if (stdgo.Go.toInterface(_err) != (stdgo.Go.toInterface(eof))) {
                        _t.fatalf(("read at end: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
                    };
                };
                if (_nn != (_expect)) {
                    _t.fatalf(("read %d, expected %d, got %d" : stdgo.GoString), stdgo.Go.toInterface(_n), stdgo.Go.toInterface(_expect), stdgo.Go.toInterface(_nn));
                };
                _tot = (_tot + (_nn) : stdgo.GoInt);
            });
        };
        var _pr = (_c.__get__()?.__copy__() : stdgo._internal.io_test.Io_test.T_pipeReturn);
        if (((_pr._n != (128 : stdgo.GoInt)) || (_pr._err != null) : Bool)) {
            _t.fatalf(("write 128: %d, %v" : stdgo.GoString), stdgo.Go.toInterface(_pr._n), stdgo.Go.toInterface(_pr._err));
        };
        if (_tot != ((128 : stdgo.GoInt))) {
            _t.fatalf(("total read %d != 128" : stdgo.GoString), stdgo.Go.toInterface(_tot));
        };
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (128 : stdgo.GoInt) : Bool), _i++, {
                if (_rdat[(_i : stdgo.GoInt)] != ((_i : stdgo.GoByte))) {
                    _t.fatalf(("rdat[%d] = %d" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_rdat[(_i : stdgo.GoInt)]));
                };
            });
        };
    }
function _delayClose(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>, _cl:T_closer, _ch:stdgo.Chan<stdgo.GoInt>, _tt:T_pipeTest):Void {
        stdgo._internal.time.Time.sleep((1000000i64 : stdgo._internal.time.Time.Duration));
        var _err:stdgo.Error = (null : stdgo.Error);
        if (_tt._closeWithError) {
            _err = _cl.closeWithError(_tt._err);
        } else {
            _err = _cl.close();
        };
        if (_err != null) {
            _t.errorf(("delayClose: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
        };
        _ch.__send__((0 : stdgo.GoInt));
    }
function testPipeReadClose(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        for (__0 => _tt in _pipeTests) {
            var _c = (new stdgo.Chan<stdgo.GoInt>((1 : stdgo.GoInt).toBasic(), () -> (0 : stdgo.GoInt)) : stdgo.Chan<stdgo.GoInt>);
            var __tmp__ = pipe(), _r:stdgo.Ref<stdgo._internal.io.Io.PipeReader> = __tmp__._0, _w:stdgo.Ref<stdgo._internal.io.Io.PipeWriter> = __tmp__._1;
            if (_tt._async) {
                stdgo.Go.routine(() -> _delayClose(_t, stdgo.Go.asInterface(_w), _c, _tt?.__copy__()));
            } else {
                _delayClose(_t, stdgo.Go.asInterface(_w), _c, _tt?.__copy__());
            };
            var _buf:stdgo.Slice<stdgo.GoUInt8> = (new stdgo.Slice<stdgo.GoUInt8>((64 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
            var __tmp__ = _r.read(_buf), _n:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            _c.__get__();
            var _want = (_tt._err : stdgo.Error);
            if (_want == null) {
                _want = eof;
            };
            if (stdgo.Go.toInterface(_err) != (stdgo.Go.toInterface(_want))) {
                _t.errorf(("read from closed pipe: %v want %v" : stdgo.GoString), stdgo.Go.toInterface(_err), stdgo.Go.toInterface(_want));
            };
            if (_n != ((0 : stdgo.GoInt))) {
                _t.errorf(("read on closed pipe returned %d" : stdgo.GoString), stdgo.Go.toInterface(_n));
            };
            {
                _err = _r.close();
                if (_err != null) {
                    _t.errorf(("r.Close: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
                };
            };
        };
    }
function testPipeReadClose2(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _c = (new stdgo.Chan<stdgo.GoInt>((1 : stdgo.GoInt).toBasic(), () -> (0 : stdgo.GoInt)) : stdgo.Chan<stdgo.GoInt>);
        var __tmp__ = pipe(), _r:stdgo.Ref<stdgo._internal.io.Io.PipeReader> = __tmp__._0, __0:stdgo.Ref<stdgo._internal.io.Io.PipeWriter> = __tmp__._1;
        stdgo.Go.routine(() -> _delayClose(_t, stdgo.Go.asInterface(_r), _c, (new stdgo._internal.io_test.Io_test.T_pipeTest() : stdgo._internal.io_test.Io_test.T_pipeTest)));
        var __tmp__ = _r.read((new stdgo.Slice<stdgo.GoUInt8>((64 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>)), _n:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        _c.__get__();
        if (((_n != (0 : stdgo.GoInt)) || (stdgo.Go.toInterface(_err) != stdgo.Go.toInterface(errClosedPipe)) : Bool)) {
            _t.errorf(("read from closed pipe: %v, %v want %v, %v" : stdgo.GoString), stdgo.Go.toInterface(_n), stdgo.Go.toInterface(_err), stdgo.Go.toInterface((0 : stdgo.GoInt)), stdgo.Go.toInterface(errClosedPipe));
        };
    }
function testPipeWriteClose(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        for (__0 => _tt in _pipeTests) {
            var _c = (new stdgo.Chan<stdgo.GoInt>((1 : stdgo.GoInt).toBasic(), () -> (0 : stdgo.GoInt)) : stdgo.Chan<stdgo.GoInt>);
            var __tmp__ = pipe(), _r:stdgo.Ref<stdgo._internal.io.Io.PipeReader> = __tmp__._0, _w:stdgo.Ref<stdgo._internal.io.Io.PipeWriter> = __tmp__._1;
            if (_tt._async) {
                stdgo.Go.routine(() -> _delayClose(_t, stdgo.Go.asInterface(_r), _c, _tt?.__copy__()));
            } else {
                _delayClose(_t, stdgo.Go.asInterface(_r), _c, _tt?.__copy__());
            };
            var __tmp__ = writeString(stdgo.Go.asInterface(_w), ("hello, world" : stdgo.GoString)), _n:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            _c.__get__();
            var _expect = (_tt._err : stdgo.Error);
            if (_expect == null) {
                _expect = errClosedPipe;
            };
            if (stdgo.Go.toInterface(_err) != (stdgo.Go.toInterface(_expect))) {
                _t.errorf(("write on closed pipe: %v want %v" : stdgo.GoString), stdgo.Go.toInterface(_err), stdgo.Go.toInterface(_expect));
            };
            if (_n != ((0 : stdgo.GoInt))) {
                _t.errorf(("write on closed pipe returned %d" : stdgo.GoString), stdgo.Go.toInterface(_n));
            };
            {
                _err = _w.close();
                if (_err != null) {
                    _t.errorf(("w.Close: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
                };
            };
        };
    }
function testPipeWriteClose2(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _c = (new stdgo.Chan<stdgo.GoInt>((1 : stdgo.GoInt).toBasic(), () -> (0 : stdgo.GoInt)) : stdgo.Chan<stdgo.GoInt>);
        var __tmp__ = pipe(), __0:stdgo.Ref<stdgo._internal.io.Io.PipeReader> = __tmp__._0, _w:stdgo.Ref<stdgo._internal.io.Io.PipeWriter> = __tmp__._1;
        stdgo.Go.routine(() -> _delayClose(_t, stdgo.Go.asInterface(_w), _c, (new stdgo._internal.io_test.Io_test.T_pipeTest() : stdgo._internal.io_test.Io_test.T_pipeTest)));
        var __tmp__ = _w.write((new stdgo.Slice<stdgo.GoUInt8>((64 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>)), _n:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        _c.__get__();
        if (((_n != (0 : stdgo.GoInt)) || (stdgo.Go.toInterface(_err) != stdgo.Go.toInterface(errClosedPipe)) : Bool)) {
            _t.errorf(("write to closed pipe: %v, %v want %v, %v" : stdgo.GoString), stdgo.Go.toInterface(_n), stdgo.Go.toInterface(_err), stdgo.Go.toInterface((0 : stdgo.GoInt)), stdgo.Go.toInterface(errClosedPipe));
        };
    }
function testWriteEmpty(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var __tmp__ = pipe(), _r:stdgo.Ref<stdgo._internal.io.Io.PipeReader> = __tmp__._0, _w:stdgo.Ref<stdgo._internal.io.Io.PipeWriter> = __tmp__._1;
        stdgo.Go.routine(() -> {
            var a = function():Void {
                _w.write((new stdgo.Slice<stdgo.GoUInt8>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>));
                _w.close();
            };
            a();
        });
        var _b:stdgo.GoArray<stdgo.GoByte> = new stdgo.GoArray<stdgo.GoUInt8>(2, 2, ...[for (i in 0 ... 2) (0 : stdgo.GoUInt8)]);
        readFull(stdgo.Go.asInterface(_r), (_b.__slice__((0 : stdgo.GoInt), (2 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>));
        _r.close();
    }
function testWriteNil(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var __tmp__ = pipe(), _r:stdgo.Ref<stdgo._internal.io.Io.PipeReader> = __tmp__._0, _w:stdgo.Ref<stdgo._internal.io.Io.PipeWriter> = __tmp__._1;
        stdgo.Go.routine(() -> {
            var a = function():Void {
                _w.write((null : stdgo.Slice<stdgo.GoUInt8>));
                _w.close();
            };
            a();
        });
        var _b:stdgo.GoArray<stdgo.GoByte> = new stdgo.GoArray<stdgo.GoUInt8>(2, 2, ...[for (i in 0 ... 2) (0 : stdgo.GoUInt8)]);
        readFull(stdgo.Go.asInterface(_r), (_b.__slice__((0 : stdgo.GoInt), (2 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>));
        _r.close();
    }
function testWriteAfterWriterClose(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var __tmp__ = pipe(), _r:stdgo.Ref<stdgo._internal.io.Io.PipeReader> = __tmp__._0, _w:stdgo.Ref<stdgo._internal.io.Io.PipeWriter> = __tmp__._1;
        var _done = (new stdgo.Chan<Bool>(0, () -> false) : stdgo.Chan<Bool>);
        var _writeErr:stdgo.Error = (null : stdgo.Error);
        stdgo.Go.routine(() -> {
            var a = function():Void {
                var __tmp__ = _w.write((("hello" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>)), __0:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    _t.errorf(("got error: %q; expected none" : stdgo.GoString), stdgo.Go.toInterface(_err));
                };
                _w.close();
                {
                    var __tmp__ = _w.write((("world" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>));
                    _writeErr = __tmp__._1;
                };
                _done.__send__(true);
            };
            a();
        });
        var _buf = (new stdgo.Slice<stdgo.GoUInt8>((100 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        var _result:stdgo.GoString = ("" : stdgo.GoString);
        var __tmp__ = readFull(stdgo.Go.asInterface(_r), _buf), _n:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (((_err != null) && (stdgo.Go.toInterface(_err) != stdgo.Go.toInterface(errUnexpectedEOF)) : Bool)) {
            _t.fatalf(("got: %q; want: %q" : stdgo.GoString), stdgo.Go.toInterface(_err), stdgo.Go.toInterface(errUnexpectedEOF));
        };
        _result = ((_buf.__slice__((0 : stdgo.GoInt), _n) : stdgo.Slice<stdgo.GoUInt8>) : stdgo.GoString)?.__copy__();
        _done.__get__();
        if (_result != (("hello" : stdgo.GoString))) {
            _t.errorf(("got: %q; want: %q" : stdgo.GoString), stdgo.Go.toInterface(_result), stdgo.Go.toInterface(("hello" : stdgo.GoString)));
        };
        if (stdgo.Go.toInterface(_writeErr) != (stdgo.Go.toInterface(errClosedPipe))) {
            _t.errorf(("got: %q; want: %q" : stdgo.GoString), stdgo.Go.toInterface(_writeErr), stdgo.Go.toInterface(errClosedPipe));
        };
    }
@:structInit @:using(stdgo._internal.io_test.Io_test.T_testPipeCloseError___localname___testError1_6330_static_extension) class T_testPipeCloseError___localname___testError1_6330 {
    @:embedded
    public var _error : stdgo.Error = (null : stdgo.Error);
    public function new(?_error:stdgo.Error) {
        if (_error != null) this._error = _error;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    @:embedded
    public function error():stdgo.GoString return _error.error();
    public function __copy__() {
        return new T_testPipeCloseError___localname___testError1_6330(_error);
    }
}
@:structInit @:using(stdgo._internal.io_test.Io_test.T_testPipeCloseError___localname___testError2_6363_static_extension) class T_testPipeCloseError___localname___testError2_6363 {
    @:embedded
    public var _error : stdgo.Error = (null : stdgo.Error);
    public function new(?_error:stdgo.Error) {
        if (_error != null) this._error = _error;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    @:embedded
    public function error():stdgo.GoString return _error.error();
    public function __copy__() {
        return new T_testPipeCloseError___localname___testError2_6363(_error);
    }
}
function testPipeCloseError(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        {};
        {};
        var __tmp__ = pipe(), _r:stdgo.Ref<stdgo._internal.io.Io.PipeReader> = __tmp__._0, _w:stdgo.Ref<stdgo._internal.io.Io.PipeWriter> = __tmp__._1;
        _r.closeWithError(stdgo.Go.asInterface((new stdgo._internal.io_test.Io_test.T_testPipeCloseError___localname___testError1_6330() : stdgo._internal.io_test.Io_test.T_testPipeCloseError___localname___testError1_6330)));
        {
            var __tmp__ = _w.write((null : stdgo.Slice<stdgo.GoUInt8>)), __0:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (stdgo.Go.toInterface(_err) != (stdgo.Go.toInterface(stdgo.Go.asInterface(((new stdgo._internal.io_test.Io_test.T_testPipeCloseError___localname___testError1_6330() : stdgo._internal.io_test.Io_test.T_testPipeCloseError___localname___testError1_6330)))))) {
                _t.errorf(("Write error: got %T, want testError1" : stdgo.GoString), stdgo.Go.toInterface(_err));
            };
        };
        _r.closeWithError(stdgo.Go.asInterface((new stdgo._internal.io_test.Io_test.T_testPipeCloseError___localname___testError2_6363() : stdgo._internal.io_test.Io_test.T_testPipeCloseError___localname___testError2_6363)));
        {
            var __tmp__ = _w.write((null : stdgo.Slice<stdgo.GoUInt8>)), __9:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (stdgo.Go.toInterface(_err) != (stdgo.Go.toInterface(stdgo.Go.asInterface(((new stdgo._internal.io_test.Io_test.T_testPipeCloseError___localname___testError1_6330() : stdgo._internal.io_test.Io_test.T_testPipeCloseError___localname___testError1_6330)))))) {
                _t.errorf(("Write error: got %T, want testError1" : stdgo.GoString), stdgo.Go.toInterface(_err));
            };
        };
        {
            var __tmp__ = pipe();
            _r = __tmp__._0;
            _w = __tmp__._1;
        };
        _w.closeWithError(stdgo.Go.asInterface((new stdgo._internal.io_test.Io_test.T_testPipeCloseError___localname___testError1_6330() : stdgo._internal.io_test.Io_test.T_testPipeCloseError___localname___testError1_6330)));
        {
            var __tmp__ = _r.read((null : stdgo.Slice<stdgo.GoUInt8>)), __18:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (stdgo.Go.toInterface(_err) != (stdgo.Go.toInterface(stdgo.Go.asInterface(((new stdgo._internal.io_test.Io_test.T_testPipeCloseError___localname___testError1_6330() : stdgo._internal.io_test.Io_test.T_testPipeCloseError___localname___testError1_6330)))))) {
                _t.errorf(("Read error: got %T, want testError1" : stdgo.GoString), stdgo.Go.toInterface(_err));
            };
        };
        _w.closeWithError(stdgo.Go.asInterface((new stdgo._internal.io_test.Io_test.T_testPipeCloseError___localname___testError2_6363() : stdgo._internal.io_test.Io_test.T_testPipeCloseError___localname___testError2_6363)));
        {
            var __tmp__ = _r.read((null : stdgo.Slice<stdgo.GoUInt8>)), __27:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (stdgo.Go.toInterface(_err) != (stdgo.Go.toInterface(stdgo.Go.asInterface(((new stdgo._internal.io_test.Io_test.T_testPipeCloseError___localname___testError1_6330() : stdgo._internal.io_test.Io_test.T_testPipeCloseError___localname___testError1_6330)))))) {
                _t.errorf(("Read error: got %T, want testError1" : stdgo.GoString), stdgo.Go.toInterface(_err));
            };
        };
    }
function testPipeConcurrent(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        {};
        _t.run(("Write" : stdgo.GoString), function(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
            var __tmp__ = pipe(), _r:stdgo.Ref<stdgo._internal.io.Io.PipeReader> = __tmp__._0, _w:stdgo.Ref<stdgo._internal.io.Io.PipeWriter> = __tmp__._1;
            {
                var _i = (0 : stdgo.GoInt);
                stdgo.Go.cfor((_i < (8 : stdgo.GoInt) : Bool), _i++, {
                    stdgo.Go.routine(() -> {
                        var a = function():Void {
                            stdgo._internal.time.Time.sleep((1000000i64 : stdgo._internal.time.Time.Duration));
                            {
                                var __tmp__ = _w.write((("0123456789abcdef" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>)), _n:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                                if (((_n != (("0123456789abcdef" : stdgo.GoString).length)) || (_err != null) : Bool)) {
                                    _t.errorf(("Write() = (%d, %v); want (%d, nil)" : stdgo.GoString), stdgo.Go.toInterface(_n), stdgo.Go.toInterface(_err), stdgo.Go.toInterface((("0123456789abcdef" : stdgo.GoString).length)));
                                };
                            };
                        };
                        a();
                    });
                });
            };
            var _buf = (new stdgo.Slice<stdgo.GoUInt8>((128 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
            {
                var _i = (0 : stdgo.GoInt);
                stdgo.Go.cfor((_i < (_buf.length) : Bool), _i = (_i + ((2 : stdgo.GoInt)) : stdgo.GoInt), {
                    {
                        var __tmp__ = _r.read((_buf.__slice__(_i, (_i + (2 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)), _n:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                        if (((_n != (2 : stdgo.GoInt)) || (_err != null) : Bool)) {
                            _t.errorf(("Read() = (%d, %v); want (%d, nil)" : stdgo.GoString), stdgo.Go.toInterface(_n), stdgo.Go.toInterface(_err), stdgo.Go.toInterface((2 : stdgo.GoInt)));
                        };
                    };
                });
            };
            var _got = ((_buf : stdgo.GoString)?.__copy__() : stdgo.GoString);
            var _want = (stdgo._internal.strings.Strings.repeat(("0123456789abcdef" : stdgo.GoString), (8 : stdgo.GoInt))?.__copy__() : stdgo.GoString);
            if (_got != (_want)) {
                _t.errorf(("got: %q; want: %q" : stdgo.GoString), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_want));
            };
        });
        _t.run(("Read" : stdgo.GoString), function(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
            var __tmp__ = pipe(), _r:stdgo.Ref<stdgo._internal.io.Io.PipeReader> = __tmp__._0, _w:stdgo.Ref<stdgo._internal.io.Io.PipeWriter> = __tmp__._1;
            var _c = (new stdgo.Chan<stdgo.Slice<stdgo.GoUInt8>>((64 : stdgo.GoInt).toBasic(), () -> (null : stdgo.Slice<stdgo.GoUInt8>)) : stdgo.Chan<stdgo.Slice<stdgo.GoUInt8>>);
            {
                var _i = (0 : stdgo.GoInt);
                stdgo.Go.cfor((_i < _c.capacity : Bool), _i++, {
                    stdgo.Go.routine(() -> {
                        var a = function():Void {
                            stdgo._internal.time.Time.sleep((1000000i64 : stdgo._internal.time.Time.Duration));
                            var _buf = (new stdgo.Slice<stdgo.GoUInt8>((2 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
                            {
                                var __tmp__ = _r.read(_buf), _n:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                                if (((_n != (2 : stdgo.GoInt)) || (_err != null) : Bool)) {
                                    _t.errorf(("Read() = (%d, %v); want (%d, nil)" : stdgo.GoString), stdgo.Go.toInterface(_n), stdgo.Go.toInterface(_err), stdgo.Go.toInterface((2 : stdgo.GoInt)));
                                };
                            };
                            _c.__send__(_buf);
                        };
                        a();
                    });
                });
            };
            {
                var _i = (0 : stdgo.GoInt);
                stdgo.Go.cfor((_i < (8 : stdgo.GoInt) : Bool), _i++, {
                    {
                        var __tmp__ = _w.write((("0123456789abcdef" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>)), _n:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                        if (((_n != (("0123456789abcdef" : stdgo.GoString).length)) || (_err != null) : Bool)) {
                            _t.errorf(("Write() = (%d, %v); want (%d, nil)" : stdgo.GoString), stdgo.Go.toInterface(_n), stdgo.Go.toInterface(_err), stdgo.Go.toInterface((("0123456789abcdef" : stdgo.GoString).length)));
                        };
                    };
                });
            };
            var _got = (new stdgo.Slice<stdgo.GoUInt8>((0 : stdgo.GoInt).toBasic(), (128 : stdgo.GoInt)).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
            {
                var _i = (0 : stdgo.GoInt);
                stdgo.Go.cfor((_i < _c.capacity : Bool), _i++, {
                    _got = (_got.__append__(...(_c.__get__() : Array<stdgo.GoUInt8>)));
                });
            };
            _got = _sortBytesInGroups(_got, (2 : stdgo.GoInt));
            var _want = stdgo._internal.bytes.Bytes.repeat((("0123456789abcdef" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>), (8 : stdgo.GoInt));
            _want = _sortBytesInGroups(_want, (2 : stdgo.GoInt));
            if ((_got : stdgo.GoString) != ((_want : stdgo.GoString))) {
                _t.errorf(("got: %q; want: %q" : stdgo.GoString), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_want));
            };
        });
    }
function _sortBytesInGroups(_b:stdgo.Slice<stdgo.GoByte>, _n:stdgo.GoInt):stdgo.Slice<stdgo.GoByte> {
        var _groups:stdgo.Slice<stdgo.Slice<stdgo.GoByte>> = (null : stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>>);
        while (((_b.length) > (0 : stdgo.GoInt) : Bool)) {
            _groups = (_groups.__append__((_b.__slice__(0, _n) : stdgo.Slice<stdgo.GoUInt8>)));
            _b = (_b.__slice__(_n) : stdgo.Slice<stdgo.GoUInt8>);
        };
        stdgo._internal.sort.Sort.slice(stdgo.Go.toInterface(_groups), function(_i:stdgo.GoInt, _j:stdgo.GoInt):Bool {
            return (stdgo._internal.bytes.Bytes.compare(_groups[(_i : stdgo.GoInt)], _groups[(_j : stdgo.GoInt)]) < (0 : stdgo.GoInt) : Bool);
        });
        return stdgo._internal.bytes.Bytes.join(_groups, (null : stdgo.Slice<stdgo.GoUInt8>));
    }
class Buffer_asInterface {
    @:embedded
    public dynamic function _tryGrowByReslice(__0:stdgo.GoInt):{ var _0 : stdgo.GoInt; var _1 : Bool; } return __self__.value._tryGrowByReslice(__0);
    @:embedded
    public dynamic function _readSlice(_c:stdgo.GoUInt8):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } return __self__.value._readSlice(_c);
    @:embedded
    public dynamic function _grow(__0:stdgo.GoInt):stdgo.GoInt return __self__.value._grow(__0);
    @:embedded
    public dynamic function _empty():Bool return __self__.value._empty();
    @:embedded
    public dynamic function writeString(__0:stdgo.GoString):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return __self__.value.writeString(__0);
    @:embedded
    public dynamic function writeRune(__0:stdgo.GoInt32):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return __self__.value.writeRune(__0);
    @:embedded
    public dynamic function writeByte(_c:stdgo.GoUInt8):stdgo.Error return __self__.value.writeByte(_c);
    @:embedded
    public dynamic function write(_b:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return __self__.value.write(_b);
    @:embedded
    public dynamic function unreadRune():stdgo.Error return __self__.value.unreadRune();
    @:embedded
    public dynamic function unreadByte():stdgo.Error return __self__.value.unreadByte();
    @:embedded
    public dynamic function truncate(__0:stdgo.GoInt):Void __self__.value.truncate(__0);
    @:embedded
    public dynamic function string():stdgo.GoString return __self__.value.string();
    @:embedded
    public dynamic function reset():Void __self__.value.reset();
    @:embedded
    public dynamic function readString(_c:stdgo.GoUInt8):{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } return __self__.value.readString(_c);
    @:embedded
    public dynamic function readRune():{ var _0 : stdgo.GoInt32; var _1 : stdgo.GoInt; var _2 : stdgo.Error; } return __self__.value.readRune();
    @:embedded
    public dynamic function readBytes(_c:stdgo.GoUInt8):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } return __self__.value.readBytes(_c);
    @:embedded
    public dynamic function readByte():{ var _0 : stdgo.GoUInt8; var _1 : stdgo.Error; } return __self__.value.readByte();
    @:embedded
    public dynamic function read(_b:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return __self__.value.read(_b);
    @:embedded
    public dynamic function next(__0:stdgo.GoInt):stdgo.Slice<stdgo.GoUInt8> return __self__.value.next(__0);
    @:embedded
    public dynamic function len():stdgo.GoInt return __self__.value.len();
    @:embedded
    public dynamic function grow(__0:stdgo.GoInt):Void __self__.value.grow(__0);
    @:embedded
    public dynamic function cap():stdgo.GoInt return __self__.value.cap();
    @:embedded
    public dynamic function bytes():stdgo.Slice<stdgo.GoUInt8> return __self__.value.bytes();
    @:embedded
    public dynamic function availableBuffer():stdgo.Slice<stdgo.GoUInt8> return __self__.value.availableBuffer();
    @:embedded
    public dynamic function available():stdgo.GoInt return __self__.value.available();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<Buffer>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.io_test.Io_test.Buffer_asInterface) class Buffer_static_extension {
    @:embedded
    public static function _tryGrowByReslice( __self__:Buffer, __0:stdgo.GoInt):{ var _0 : stdgo.GoInt; var _1 : Bool; } return __self__._tryGrowByReslice(__0);
    @:embedded
    public static function _readSlice( __self__:Buffer, _c:stdgo.GoUInt8):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } return __self__._readSlice(_c);
    @:embedded
    public static function _grow( __self__:Buffer, __0:stdgo.GoInt):stdgo.GoInt return __self__._grow(__0);
    @:embedded
    public static function _empty( __self__:Buffer):Bool return __self__._empty();
    @:embedded
    public static function writeString( __self__:Buffer, __0:stdgo.GoString):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return __self__.writeString(__0);
    @:embedded
    public static function writeRune( __self__:Buffer, __0:stdgo.GoInt32):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return __self__.writeRune(__0);
    @:embedded
    public static function writeByte( __self__:Buffer, _c:stdgo.GoUInt8):stdgo.Error return __self__.writeByte(_c);
    @:embedded
    public static function write( __self__:Buffer, _b:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return __self__.write(_b);
    @:embedded
    public static function unreadRune( __self__:Buffer):stdgo.Error return __self__.unreadRune();
    @:embedded
    public static function unreadByte( __self__:Buffer):stdgo.Error return __self__.unreadByte();
    @:embedded
    public static function truncate( __self__:Buffer, __0:stdgo.GoInt) __self__.truncate(__0);
    @:embedded
    public static function string( __self__:Buffer):stdgo.GoString return __self__.string();
    @:embedded
    public static function reset( __self__:Buffer) __self__.reset();
    @:embedded
    public static function readString( __self__:Buffer, _c:stdgo.GoUInt8):{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } return __self__.readString(_c);
    @:embedded
    public static function readRune( __self__:Buffer):{ var _0 : stdgo.GoInt32; var _1 : stdgo.GoInt; var _2 : stdgo.Error; } return __self__.readRune();
    @:embedded
    public static function readBytes( __self__:Buffer, _c:stdgo.GoUInt8):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } return __self__.readBytes(_c);
    @:embedded
    public static function readByte( __self__:Buffer):{ var _0 : stdgo.GoUInt8; var _1 : stdgo.Error; } return __self__.readByte();
    @:embedded
    public static function read( __self__:Buffer, _b:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return __self__.read(_b);
    @:embedded
    public static function next( __self__:Buffer, __0:stdgo.GoInt):stdgo.Slice<stdgo.GoUInt8> return __self__.next(__0);
    @:embedded
    public static function len( __self__:Buffer):stdgo.GoInt return __self__.len();
    @:embedded
    public static function grow( __self__:Buffer, __0:stdgo.GoInt) __self__.grow(__0);
    @:embedded
    public static function cap( __self__:Buffer):stdgo.GoInt return __self__.cap();
    @:embedded
    public static function bytes( __self__:Buffer):stdgo.Slice<stdgo.GoUInt8> return __self__.bytes();
    @:embedded
    public static function availableBuffer( __self__:Buffer):stdgo.Slice<stdgo.GoUInt8> return __self__.availableBuffer();
    @:embedded
    public static function available( __self__:Buffer):stdgo.GoInt return __self__.available();
}
class T_writeToChecker_asInterface {
    @:keep
    public dynamic function writeTo(_w:Writer):{ var _0 : stdgo.GoInt64; var _1 : stdgo.Error; } return __self__.value.writeTo(_w);
    @:embedded
    public dynamic function _tryGrowByReslice(__0:stdgo.GoInt):{ var _0 : stdgo.GoInt; var _1 : Bool; } return __self__.value._tryGrowByReslice(__0);
    @:embedded
    public dynamic function _readSlice(_c:stdgo.GoUInt8):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } return __self__.value._readSlice(_c);
    @:embedded
    public dynamic function _grow(__0:stdgo.GoInt):stdgo.GoInt return __self__.value._grow(__0);
    @:embedded
    public dynamic function _empty():Bool return __self__.value._empty();
    @:embedded
    public dynamic function writeString(__0:stdgo.GoString):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return __self__.value.writeString(__0);
    @:embedded
    public dynamic function writeRune(__0:stdgo.GoInt32):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return __self__.value.writeRune(__0);
    @:embedded
    public dynamic function writeByte(_c:stdgo.GoUInt8):stdgo.Error return __self__.value.writeByte(_c);
    @:embedded
    public dynamic function write(_b:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return __self__.value.write(_b);
    @:embedded
    public dynamic function unreadRune():stdgo.Error return __self__.value.unreadRune();
    @:embedded
    public dynamic function unreadByte():stdgo.Error return __self__.value.unreadByte();
    @:embedded
    public dynamic function truncate(__0:stdgo.GoInt):Void __self__.value.truncate(__0);
    @:embedded
    public dynamic function string():stdgo.GoString return __self__.value.string();
    @:embedded
    public dynamic function reset():Void __self__.value.reset();
    @:embedded
    public dynamic function readString(_c:stdgo.GoUInt8):{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } return __self__.value.readString(_c);
    @:embedded
    public dynamic function readRune():{ var _0 : stdgo.GoInt32; var _1 : stdgo.GoInt; var _2 : stdgo.Error; } return __self__.value.readRune();
    @:embedded
    public dynamic function readFrom(_r:stdgo._internal.io.Io.Reader):{ var _0 : stdgo.GoInt64; var _1 : stdgo.Error; } return __self__.value.readFrom(_r);
    @:embedded
    public dynamic function readBytes(_c:stdgo.GoUInt8):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } return __self__.value.readBytes(_c);
    @:embedded
    public dynamic function readByte():{ var _0 : stdgo.GoUInt8; var _1 : stdgo.Error; } return __self__.value.readByte();
    @:embedded
    public dynamic function read(_b:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return __self__.value.read(_b);
    @:embedded
    public dynamic function next(__0:stdgo.GoInt):stdgo.Slice<stdgo.GoUInt8> return __self__.value.next(__0);
    @:embedded
    public dynamic function len():stdgo.GoInt return __self__.value.len();
    @:embedded
    public dynamic function grow(__0:stdgo.GoInt):Void __self__.value.grow(__0);
    @:embedded
    public dynamic function cap():stdgo.GoInt return __self__.value.cap();
    @:embedded
    public dynamic function bytes():stdgo.Slice<stdgo.GoUInt8> return __self__.value.bytes();
    @:embedded
    public dynamic function availableBuffer():stdgo.Slice<stdgo.GoUInt8> return __self__.value.availableBuffer();
    @:embedded
    public dynamic function available():stdgo.GoInt return __self__.value.available();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_writeToChecker>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.io_test.Io_test.T_writeToChecker_asInterface) class T_writeToChecker_static_extension {
    @:keep
    static public function writeTo( _wt:stdgo.Ref<T_writeToChecker>, _w:Writer):{ var _0 : stdgo.GoInt64; var _1 : stdgo.Error; } {
        @:recv var _wt:stdgo.Ref<T_writeToChecker> = _wt;
        _wt._writeToCalled = true;
        return _wt.buffer.writeTo(_w);
    }
    @:embedded
    public static function _tryGrowByReslice( __self__:T_writeToChecker, __0:stdgo.GoInt):{ var _0 : stdgo.GoInt; var _1 : Bool; } return __self__._tryGrowByReslice(__0);
    @:embedded
    public static function _readSlice( __self__:T_writeToChecker, _c:stdgo.GoUInt8):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } return __self__._readSlice(_c);
    @:embedded
    public static function _grow( __self__:T_writeToChecker, __0:stdgo.GoInt):stdgo.GoInt return __self__._grow(__0);
    @:embedded
    public static function _empty( __self__:T_writeToChecker):Bool return __self__._empty();
    @:embedded
    public static function writeString( __self__:T_writeToChecker, __0:stdgo.GoString):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return __self__.writeString(__0);
    @:embedded
    public static function writeRune( __self__:T_writeToChecker, __0:stdgo.GoInt32):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return __self__.writeRune(__0);
    @:embedded
    public static function writeByte( __self__:T_writeToChecker, _c:stdgo.GoUInt8):stdgo.Error return __self__.writeByte(_c);
    @:embedded
    public static function write( __self__:T_writeToChecker, _b:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return __self__.write(_b);
    @:embedded
    public static function unreadRune( __self__:T_writeToChecker):stdgo.Error return __self__.unreadRune();
    @:embedded
    public static function unreadByte( __self__:T_writeToChecker):stdgo.Error return __self__.unreadByte();
    @:embedded
    public static function truncate( __self__:T_writeToChecker, __0:stdgo.GoInt) __self__.truncate(__0);
    @:embedded
    public static function string( __self__:T_writeToChecker):stdgo.GoString return __self__.string();
    @:embedded
    public static function reset( __self__:T_writeToChecker) __self__.reset();
    @:embedded
    public static function readString( __self__:T_writeToChecker, _c:stdgo.GoUInt8):{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } return __self__.readString(_c);
    @:embedded
    public static function readRune( __self__:T_writeToChecker):{ var _0 : stdgo.GoInt32; var _1 : stdgo.GoInt; var _2 : stdgo.Error; } return __self__.readRune();
    @:embedded
    public static function readFrom( __self__:T_writeToChecker, _r:stdgo._internal.io.Io.Reader):{ var _0 : stdgo.GoInt64; var _1 : stdgo.Error; } return __self__.readFrom(_r);
    @:embedded
    public static function readBytes( __self__:T_writeToChecker, _c:stdgo.GoUInt8):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } return __self__.readBytes(_c);
    @:embedded
    public static function readByte( __self__:T_writeToChecker):{ var _0 : stdgo.GoUInt8; var _1 : stdgo.Error; } return __self__.readByte();
    @:embedded
    public static function read( __self__:T_writeToChecker, _b:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return __self__.read(_b);
    @:embedded
    public static function next( __self__:T_writeToChecker, __0:stdgo.GoInt):stdgo.Slice<stdgo.GoUInt8> return __self__.next(__0);
    @:embedded
    public static function len( __self__:T_writeToChecker):stdgo.GoInt return __self__.len();
    @:embedded
    public static function grow( __self__:T_writeToChecker, __0:stdgo.GoInt) __self__.grow(__0);
    @:embedded
    public static function cap( __self__:T_writeToChecker):stdgo.GoInt return __self__.cap();
    @:embedded
    public static function bytes( __self__:T_writeToChecker):stdgo.Slice<stdgo.GoUInt8> return __self__.bytes();
    @:embedded
    public static function availableBuffer( __self__:T_writeToChecker):stdgo.Slice<stdgo.GoUInt8> return __self__.availableBuffer();
    @:embedded
    public static function available( __self__:T_writeToChecker):stdgo.GoInt return __self__.available();
}
class T_zeroErrReader_asInterface {
    @:keep
    public dynamic function read(_p:stdgo.Slice<stdgo.GoByte>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return __self__.value.read(_p);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_zeroErrReader>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.io_test.Io_test.T_zeroErrReader_asInterface) class T_zeroErrReader_static_extension {
    @:keep
    static public function read( _r:T_zeroErrReader, _p:stdgo.Slice<stdgo.GoByte>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _r:T_zeroErrReader = _r?.__copy__();
        return { _0 : stdgo.Go.copySlice(_p, (new stdgo.Slice<stdgo.GoUInt8>(1, 1, ...[(0 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>)), _1 : _r._err };
    }
}
class T_errWriter_asInterface {
    @:keep
    public dynamic function write(_0:stdgo.Slice<stdgo.GoByte>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return __self__.value.write(_0);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_errWriter>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.io_test.Io_test.T_errWriter_asInterface) class T_errWriter_static_extension {
    @:keep
    static public function write( _w:T_errWriter, _0:stdgo.Slice<stdgo.GoByte>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _w:T_errWriter = _w?.__copy__();
        return { _0 : (0 : stdgo.GoInt), _1 : _w._err };
    }
}
class T_noReadFrom_asInterface {
    @:keep
    public dynamic function write(_p:stdgo.Slice<stdgo.GoByte>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return __self__.value.write(_p);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_noReadFrom>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.io_test.Io_test.T_noReadFrom_asInterface) class T_noReadFrom_static_extension {
    @:keep
    static public function write( _w:stdgo.Ref<T_noReadFrom>, _p:stdgo.Slice<stdgo.GoByte>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _w:stdgo.Ref<T_noReadFrom> = _w;
        var _n = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        return _w._w.write(_p);
    }
}
class T_wantedAndErrReader_asInterface {
    @:keep
    public dynamic function read(_p:stdgo.Slice<stdgo.GoByte>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return __self__.value.read(_p);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_wantedAndErrReader>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.io_test.Io_test.T_wantedAndErrReader_asInterface) class T_wantedAndErrReader_static_extension {
    @:keep
    static public function read( _:T_wantedAndErrReader, _p:stdgo.Slice<stdgo.GoByte>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _:T_wantedAndErrReader = _?.__copy__();
        return { _0 : (_p.length), _1 : stdgo._internal.errors.Errors.new_(("wantedAndErrReader error" : stdgo.GoString)) };
    }
}
class T_dataAndErrorBuffer_asInterface {
    @:keep
    public dynamic function read(_p:stdgo.Slice<stdgo.GoByte>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return __self__.value.read(_p);
    @:embedded
    public dynamic function _tryGrowByReslice(__0:stdgo.GoInt):{ var _0 : stdgo.GoInt; var _1 : Bool; } return __self__.value._tryGrowByReslice(__0);
    @:embedded
    public dynamic function _readSlice(_c:stdgo.GoUInt8):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } return __self__.value._readSlice(_c);
    @:embedded
    public dynamic function _grow(__0:stdgo.GoInt):stdgo.GoInt return __self__.value._grow(__0);
    @:embedded
    public dynamic function _empty():Bool return __self__.value._empty();
    @:embedded
    public dynamic function writeTo(_w:stdgo._internal.io.Io.Writer):{ var _0 : stdgo.GoInt64; var _1 : stdgo.Error; } return __self__.value.writeTo(_w);
    @:embedded
    public dynamic function writeString(__0:stdgo.GoString):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return __self__.value.writeString(__0);
    @:embedded
    public dynamic function writeRune(__0:stdgo.GoInt32):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return __self__.value.writeRune(__0);
    @:embedded
    public dynamic function writeByte(_c:stdgo.GoUInt8):stdgo.Error return __self__.value.writeByte(_c);
    @:embedded
    public dynamic function write(_b:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return __self__.value.write(_b);
    @:embedded
    public dynamic function unreadRune():stdgo.Error return __self__.value.unreadRune();
    @:embedded
    public dynamic function unreadByte():stdgo.Error return __self__.value.unreadByte();
    @:embedded
    public dynamic function truncate(__0:stdgo.GoInt):Void __self__.value.truncate(__0);
    @:embedded
    public dynamic function string():stdgo.GoString return __self__.value.string();
    @:embedded
    public dynamic function reset():Void __self__.value.reset();
    @:embedded
    public dynamic function readString(_c:stdgo.GoUInt8):{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } return __self__.value.readString(_c);
    @:embedded
    public dynamic function readRune():{ var _0 : stdgo.GoInt32; var _1 : stdgo.GoInt; var _2 : stdgo.Error; } return __self__.value.readRune();
    @:embedded
    public dynamic function readFrom(_r:stdgo._internal.io.Io.Reader):{ var _0 : stdgo.GoInt64; var _1 : stdgo.Error; } return __self__.value.readFrom(_r);
    @:embedded
    public dynamic function readBytes(_c:stdgo.GoUInt8):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } return __self__.value.readBytes(_c);
    @:embedded
    public dynamic function readByte():{ var _0 : stdgo.GoUInt8; var _1 : stdgo.Error; } return __self__.value.readByte();
    @:embedded
    public dynamic function next(__0:stdgo.GoInt):stdgo.Slice<stdgo.GoUInt8> return __self__.value.next(__0);
    @:embedded
    public dynamic function len():stdgo.GoInt return __self__.value.len();
    @:embedded
    public dynamic function grow(__0:stdgo.GoInt):Void __self__.value.grow(__0);
    @:embedded
    public dynamic function cap():stdgo.GoInt return __self__.value.cap();
    @:embedded
    public dynamic function bytes():stdgo.Slice<stdgo.GoUInt8> return __self__.value.bytes();
    @:embedded
    public dynamic function availableBuffer():stdgo.Slice<stdgo.GoUInt8> return __self__.value.availableBuffer();
    @:embedded
    public dynamic function available():stdgo.GoInt return __self__.value.available();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_dataAndErrorBuffer>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.io_test.Io_test.T_dataAndErrorBuffer_asInterface) class T_dataAndErrorBuffer_static_extension {
    @:keep
    static public function read( _r:stdgo.Ref<T_dataAndErrorBuffer>, _p:stdgo.Slice<stdgo.GoByte>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _r:stdgo.Ref<T_dataAndErrorBuffer> = _r;
        var _n = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        {
            var __tmp__ = _r.buffer.read(_p);
            _n = __tmp__._0;
            _err = __tmp__._1;
        };
        if ((((_n > (0 : stdgo.GoInt) : Bool) && _r.buffer.len() == ((0 : stdgo.GoInt)) : Bool) && (_err == null) : Bool)) {
            _err = _r._err;
        };
        return { _0 : _n, _1 : _err };
    }
    @:embedded
    public static function _tryGrowByReslice( __self__:T_dataAndErrorBuffer, __0:stdgo.GoInt):{ var _0 : stdgo.GoInt; var _1 : Bool; } return __self__._tryGrowByReslice(__0);
    @:embedded
    public static function _readSlice( __self__:T_dataAndErrorBuffer, _c:stdgo.GoUInt8):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } return __self__._readSlice(_c);
    @:embedded
    public static function _grow( __self__:T_dataAndErrorBuffer, __0:stdgo.GoInt):stdgo.GoInt return __self__._grow(__0);
    @:embedded
    public static function _empty( __self__:T_dataAndErrorBuffer):Bool return __self__._empty();
    @:embedded
    public static function writeTo( __self__:T_dataAndErrorBuffer, _w:stdgo._internal.io.Io.Writer):{ var _0 : stdgo.GoInt64; var _1 : stdgo.Error; } return __self__.writeTo(_w);
    @:embedded
    public static function writeString( __self__:T_dataAndErrorBuffer, __0:stdgo.GoString):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return __self__.writeString(__0);
    @:embedded
    public static function writeRune( __self__:T_dataAndErrorBuffer, __0:stdgo.GoInt32):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return __self__.writeRune(__0);
    @:embedded
    public static function writeByte( __self__:T_dataAndErrorBuffer, _c:stdgo.GoUInt8):stdgo.Error return __self__.writeByte(_c);
    @:embedded
    public static function write( __self__:T_dataAndErrorBuffer, _b:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return __self__.write(_b);
    @:embedded
    public static function unreadRune( __self__:T_dataAndErrorBuffer):stdgo.Error return __self__.unreadRune();
    @:embedded
    public static function unreadByte( __self__:T_dataAndErrorBuffer):stdgo.Error return __self__.unreadByte();
    @:embedded
    public static function truncate( __self__:T_dataAndErrorBuffer, __0:stdgo.GoInt) __self__.truncate(__0);
    @:embedded
    public static function string( __self__:T_dataAndErrorBuffer):stdgo.GoString return __self__.string();
    @:embedded
    public static function reset( __self__:T_dataAndErrorBuffer) __self__.reset();
    @:embedded
    public static function readString( __self__:T_dataAndErrorBuffer, _c:stdgo.GoUInt8):{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } return __self__.readString(_c);
    @:embedded
    public static function readRune( __self__:T_dataAndErrorBuffer):{ var _0 : stdgo.GoInt32; var _1 : stdgo.GoInt; var _2 : stdgo.Error; } return __self__.readRune();
    @:embedded
    public static function readFrom( __self__:T_dataAndErrorBuffer, _r:stdgo._internal.io.Io.Reader):{ var _0 : stdgo.GoInt64; var _1 : stdgo.Error; } return __self__.readFrom(_r);
    @:embedded
    public static function readBytes( __self__:T_dataAndErrorBuffer, _c:stdgo.GoUInt8):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } return __self__.readBytes(_c);
    @:embedded
    public static function readByte( __self__:T_dataAndErrorBuffer):{ var _0 : stdgo.GoUInt8; var _1 : stdgo.Error; } return __self__.readByte();
    @:embedded
    public static function next( __self__:T_dataAndErrorBuffer, __0:stdgo.GoInt):stdgo.Slice<stdgo.GoUInt8> return __self__.next(__0);
    @:embedded
    public static function len( __self__:T_dataAndErrorBuffer):stdgo.GoInt return __self__.len();
    @:embedded
    public static function grow( __self__:T_dataAndErrorBuffer, __0:stdgo.GoInt) __self__.grow(__0);
    @:embedded
    public static function cap( __self__:T_dataAndErrorBuffer):stdgo.GoInt return __self__.cap();
    @:embedded
    public static function bytes( __self__:T_dataAndErrorBuffer):stdgo.Slice<stdgo.GoUInt8> return __self__.bytes();
    @:embedded
    public static function availableBuffer( __self__:T_dataAndErrorBuffer):stdgo.Slice<stdgo.GoUInt8> return __self__.availableBuffer();
    @:embedded
    public static function available( __self__:T_dataAndErrorBuffer):stdgo.GoInt return __self__.available();
}
class T_largeWriter_asInterface {
    @:keep
    public dynamic function write(_p:stdgo.Slice<stdgo.GoByte>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return __self__.value.write(_p);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_largeWriter>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.io_test.Io_test.T_largeWriter_asInterface) class T_largeWriter_static_extension {
    @:keep
    static public function write( _w:T_largeWriter, _p:stdgo.Slice<stdgo.GoByte>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _w:T_largeWriter = _w?.__copy__();
        return { _0 : ((_p.length) + (1 : stdgo.GoInt) : stdgo.GoInt), _1 : _w._err };
    }
}
class T_writeStringChecker_asInterface {
    @:keep
    public dynamic function write(_p:stdgo.Slice<stdgo.GoByte>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return __self__.value.write(_p);
    @:keep
    public dynamic function writeString(_s:stdgo.GoString):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return __self__.value.writeString(_s);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_writeStringChecker>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.io_test.Io_test.T_writeStringChecker_asInterface) class T_writeStringChecker_static_extension {
    @:keep
    static public function write( _c:stdgo.Ref<T_writeStringChecker>, _p:stdgo.Slice<stdgo.GoByte>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _c:stdgo.Ref<T_writeStringChecker> = _c;
        var _n = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        return { _0 : (_p.length), _1 : (null : stdgo.Error) };
    }
    @:keep
    static public function writeString( _c:stdgo.Ref<T_writeStringChecker>, _s:stdgo.GoString):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _c:stdgo.Ref<T_writeStringChecker> = _c;
        var _n = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        _c._called = true;
        return { _0 : (_s.length), _1 : (null : stdgo.Error) };
    }
}
class T_pipeTest_asInterface {
    @:keep
    public dynamic function string():stdgo.GoString return __self__.value.string();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_pipeTest>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.io_test.Io_test.T_pipeTest_asInterface) class T_pipeTest_static_extension {
    @:keep
    static public function string( _p:T_pipeTest):stdgo.GoString {
        @:recv var _p:T_pipeTest = _p?.__copy__();
        return stdgo._internal.fmt.Fmt.sprintf(("async=%v err=%v closeWithError=%v" : stdgo.GoString), stdgo.Go.toInterface(_p._async), stdgo.Go.toInterface(_p._err), stdgo.Go.toInterface(_p._closeWithError))?.__copy__();
    }
}
class T_writerFunc_asInterface {
    @:keep
    public dynamic function write(_p:stdgo.Slice<stdgo.GoByte>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return __self__.value.write(_p);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_writerFunc>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.io_test.Io_test.T_writerFunc_asInterface) class T_writerFunc_static_extension {
    @:keep
    static public function write( _f:T_writerFunc, _p:stdgo.Slice<stdgo.GoByte>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _f:T_writerFunc = _f;
        return _f(_p);
    }
}
class T_readerFunc_asInterface {
    @:keep
    public dynamic function read(_p:stdgo.Slice<stdgo.GoByte>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return __self__.value.read(_p);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_readerFunc>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.io_test.Io_test.T_readerFunc_asInterface) class T_readerFunc_static_extension {
    @:keep
    static public function read( _f:T_readerFunc, _p:stdgo.Slice<stdgo.GoByte>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _f:T_readerFunc = _f;
        return _f(_p);
    }
}
class T_byteAndEOFReader_asInterface {
    @:keep
    public dynamic function read(_p:stdgo.Slice<stdgo.GoByte>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return __self__.value.read(_p);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_byteAndEOFReader>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.io_test.Io_test.T_byteAndEOFReader_asInterface) class T_byteAndEOFReader_static_extension {
    @:keep
    static public function read( _b:T_byteAndEOFReader, _p:stdgo.Slice<stdgo.GoByte>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _b:T_byteAndEOFReader = _b;
        var _n = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        if ((_p.length) == ((0 : stdgo.GoInt))) {
            throw stdgo.Go.toInterface(("unexpected call" : stdgo.GoString));
        };
        _p[(0 : stdgo.GoInt)] = (_b : stdgo.GoByte);
        return { _0 : (1 : stdgo.GoInt), _1 : eof };
    }
}
class T_testMultiWriter_WriteStringSingleAlloc___localname___simpleWriter_2430_asInterface {
    @:embedded
    public dynamic function write(_b:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return __self__.value.write(_b);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_testMultiWriter_WriteStringSingleAlloc___localname___simpleWriter_2430>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.io_test.Io_test.T_testMultiWriter_WriteStringSingleAlloc___localname___simpleWriter_2430_asInterface) class T_testMultiWriter_WriteStringSingleAlloc___localname___simpleWriter_2430_static_extension {
    @:embedded
    public static function write( __self__:T_testMultiWriter_WriteStringSingleAlloc___localname___simpleWriter_2430, _b:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return __self__.write(_b);
}
class T_testPipeCloseError___localname___testError1_6330_asInterface {
    @:embedded
    public dynamic function error():stdgo.GoString return __self__.value.error();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_testPipeCloseError___localname___testError1_6330>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.io_test.Io_test.T_testPipeCloseError___localname___testError1_6330_asInterface) class T_testPipeCloseError___localname___testError1_6330_static_extension {
    @:embedded
    public static function error( __self__:T_testPipeCloseError___localname___testError1_6330):stdgo.GoString return __self__.error();
}
class T_testPipeCloseError___localname___testError2_6363_asInterface {
    @:embedded
    public dynamic function error():stdgo.GoString return __self__.value.error();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_testPipeCloseError___localname___testError2_6363>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.io_test.Io_test.T_testPipeCloseError___localname___testError2_6363_asInterface) class T_testPipeCloseError___localname___testError2_6363_static_extension {
    @:embedded
    public static function error( __self__:T_testPipeCloseError___localname___testError2_6363):stdgo.GoString return __self__.error();
}
