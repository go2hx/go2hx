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
/**
    
    
    
**/
private var _pipeTests = (new Slice<stdgo.io_test.Io_test.T_pipeTest>(0, 0, (new stdgo.io_test.Io_test.T_pipeTest(true, (null : Error), false) : stdgo.io_test.Io_test.T_pipeTest), (new stdgo.io_test.Io_test.T_pipeTest(true, (null : Error), true) : stdgo.io_test.Io_test.T_pipeTest), (new stdgo.io_test.Io_test.T_pipeTest(true, errShortWrite, true) : stdgo.io_test.Io_test.T_pipeTest), (new stdgo.io_test.Io_test.T_pipeTest(false, (null : Error), false) : stdgo.io_test.Io_test.T_pipeTest), (new stdgo.io_test.Io_test.T_pipeTest(false, (null : Error), true) : stdgo.io_test.Io_test.T_pipeTest), (new stdgo.io_test.Io_test.T_pipeTest(false, errShortWrite, true) : stdgo.io_test.Io_test.T_pipeTest)) : Slice<stdgo.io_test.Io_test.T_pipeTest>);
/**
    
    
    
**/
private typedef T_closer = StructType & {
    /**
        
        
        
    **/
    public function closeWithError(_0:Error):Error;
    /**
        
        
        
    **/
    public function close():Error;
};
/**
    
    
    
**/
private typedef T__interface_0 = StructType & {
    > Writer,
    > stdgo.fmt.Fmt.Stringer,
};
/**
    // A version of bytes.Buffer without ReadFrom and WriteTo
    
    
**/
@:structInit @:using(stdgo.io_test.Io_test.Buffer_static_extension) class Buffer {
    @:embedded
    public var buffer : stdgo.bytes.Bytes.Buffer = ({} : stdgo.bytes.Bytes.Buffer);
    @:embedded
    public var readerFrom : ReaderFrom = (null : ReaderFrom);
    @:embedded
    public var writerTo : WriterTo = (null : WriterTo);
    public function new(?buffer:stdgo.bytes.Bytes.Buffer, ?readerFrom:ReaderFrom, ?writerTo:WriterTo) {
        if (buffer != null) this.buffer = buffer;
        if (readerFrom != null) this.readerFrom = readerFrom;
        if (writerTo != null) this.writerTo = writerTo;
    }
    public function __underlying__() return Go.toInterface(this);
    @:embedded
    public function bytes():Slice<GoUInt8> return buffer.bytes();
    @:embedded
    public function cap():GoInt return buffer.cap();
    @:embedded
    public function grow(__0:GoInt) buffer.grow(__0);
    @:embedded
    public function len():GoInt return buffer.len();
    @:embedded
    public function next(__0:GoInt):Slice<GoUInt8> return buffer.next(__0);
    @:embedded
    public function read(_b:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : Error; } return buffer.read(_b);
    @:embedded
    public function readByte():{ var _0 : GoUInt8; var _1 : Error; } return buffer.readByte();
    @:embedded
    public function readBytes(_c:GoUInt8):{ var _0 : Slice<GoUInt8>; var _1 : Error; } return buffer.readBytes(_c);
    @:embedded
    public function readRune():{ var _0 : GoInt32; var _1 : GoInt; var _2 : Error; } return buffer.readRune();
    @:embedded
    public function readString(_c:GoUInt8):{ var _0 : GoString; var _1 : Error; } return buffer.readString(_c);
    @:embedded
    public function reset() buffer.reset();
    @:embedded
    public function string():GoString return buffer.string();
    @:embedded
    public function truncate(__0:GoInt) buffer.truncate(__0);
    @:embedded
    public function unreadByte():Error return buffer.unreadByte();
    @:embedded
    public function unreadRune():Error return buffer.unreadRune();
    @:embedded
    public function write(_b:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : Error; } return buffer.write(_b);
    @:embedded
    public function writeByte(_c:GoUInt8):Error return buffer.writeByte(_c);
    @:embedded
    public function writeRune(__0:GoInt32):{ var _0 : GoInt; var _1 : Error; } return buffer.writeRune(__0);
    @:embedded
    public function writeString(__0:GoString):{ var _0 : GoInt; var _1 : Error; } return buffer.writeString(__0);
    @:embedded
    public function _empty():Bool return buffer._empty();
    @:embedded
    public function _grow(__0:GoInt):GoInt return buffer._grow(__0);
    @:embedded
    public function _readSlice(_c:GoUInt8):{ var _0 : Slice<GoUInt8>; var _1 : Error; } return buffer._readSlice(_c);
    @:embedded
    public function _tryGrowByReslice(__0:GoInt):{ var _0 : GoInt; var _1 : Bool; } return buffer._tryGrowByReslice(__0);
    public function __copy__() {
        return new Buffer(buffer, readerFrom, writerTo);
    }
}
/**
    // Version of bytes.Buffer that checks whether WriteTo was called or not
    
    
**/
@:structInit @:private @:using(stdgo.io_test.Io_test.T_writeToChecker_static_extension) class T_writeToChecker {
    @:embedded
    public var buffer : stdgo.bytes.Bytes.Buffer = ({} : stdgo.bytes.Bytes.Buffer);
    public var _writeToCalled : Bool = false;
    public function new(?buffer:stdgo.bytes.Bytes.Buffer, ?_writeToCalled:Bool) {
        if (buffer != null) this.buffer = buffer;
        if (_writeToCalled != null) this._writeToCalled = _writeToCalled;
    }
    public function __underlying__() return Go.toInterface(this);
    @:embedded
    public function bytes():Slice<GoUInt8> return buffer.bytes();
    @:embedded
    public function cap():GoInt return buffer.cap();
    @:embedded
    public function grow(__0:GoInt) buffer.grow(__0);
    @:embedded
    public function len():GoInt return buffer.len();
    @:embedded
    public function next(__0:GoInt):Slice<GoUInt8> return buffer.next(__0);
    @:embedded
    public function read(_b:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : Error; } return buffer.read(_b);
    @:embedded
    public function readByte():{ var _0 : GoUInt8; var _1 : Error; } return buffer.readByte();
    @:embedded
    public function readBytes(_c:GoUInt8):{ var _0 : Slice<GoUInt8>; var _1 : Error; } return buffer.readBytes(_c);
    @:embedded
    public function readFrom(_r:Reader):{ var _0 : GoInt64; var _1 : Error; } return buffer.readFrom(_r);
    @:embedded
    public function readRune():{ var _0 : GoInt32; var _1 : GoInt; var _2 : Error; } return buffer.readRune();
    @:embedded
    public function readString(_c:GoUInt8):{ var _0 : GoString; var _1 : Error; } return buffer.readString(_c);
    @:embedded
    public function reset() buffer.reset();
    @:embedded
    public function string():GoString return buffer.string();
    @:embedded
    public function truncate(__0:GoInt) buffer.truncate(__0);
    @:embedded
    public function unreadByte():Error return buffer.unreadByte();
    @:embedded
    public function unreadRune():Error return buffer.unreadRune();
    @:embedded
    public function write(_b:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : Error; } return buffer.write(_b);
    @:embedded
    public function writeByte(_c:GoUInt8):Error return buffer.writeByte(_c);
    @:embedded
    public function writeRune(__0:GoInt32):{ var _0 : GoInt; var _1 : Error; } return buffer.writeRune(__0);
    @:embedded
    public function writeString(__0:GoString):{ var _0 : GoInt; var _1 : Error; } return buffer.writeString(__0);
    @:embedded
    public function _empty():Bool return buffer._empty();
    @:embedded
    public function _grow(__0:GoInt):GoInt return buffer._grow(__0);
    @:embedded
    public function _readSlice(_c:GoUInt8):{ var _0 : Slice<GoUInt8>; var _1 : Error; } return buffer._readSlice(_c);
    @:embedded
    public function _tryGrowByReslice(__0:GoInt):{ var _0 : GoInt; var _1 : Bool; } return buffer._tryGrowByReslice(__0);
    public function __copy__() {
        return new T_writeToChecker(buffer, _writeToCalled);
    }
}
/**
    
    
    
**/
@:structInit @:private @:using(stdgo.io_test.Io_test.T_zeroErrReader_static_extension) class T_zeroErrReader {
    public var _err : Error = (null : Error);
    public function new(?_err:Error) {
        if (_err != null) this._err = _err;
    }
    public function __underlying__() return Go.toInterface(this);
    public function __copy__() {
        return new T_zeroErrReader(_err);
    }
}
/**
    
    
    
**/
@:structInit @:private @:using(stdgo.io_test.Io_test.T_errWriter_static_extension) class T_errWriter {
    public var _err : Error = (null : Error);
    public function new(?_err:Error) {
        if (_err != null) this._err = _err;
    }
    public function __underlying__() return Go.toInterface(this);
    public function __copy__() {
        return new T_errWriter(_err);
    }
}
/**
    
    
    
**/
@:structInit @:private @:using(stdgo.io_test.Io_test.T_noReadFrom_static_extension) class T_noReadFrom {
    public var _w : Writer = (null : Writer);
    public function new(?_w:Writer) {
        if (_w != null) this._w = _w;
    }
    public function __underlying__() return Go.toInterface(this);
    public function __copy__() {
        return new T_noReadFrom(_w);
    }
}
/**
    
    
    
**/
@:structInit @:private @:using(stdgo.io_test.Io_test.T_wantedAndErrReader_static_extension) class T_wantedAndErrReader {
    public function new() {}
    public function __underlying__() return Go.toInterface(this);
    public function __copy__() {
        return new T_wantedAndErrReader();
    }
}
/**
    // A version of bytes.Buffer that returns n > 0, err on Read
    // when the input is exhausted.
    
    
**/
@:structInit @:private @:using(stdgo.io_test.Io_test.T_dataAndErrorBuffer_static_extension) class T_dataAndErrorBuffer {
    public var _err : Error = (null : Error);
    @:embedded
    public var buffer : stdgo.bytes.Bytes.Buffer = ({} : stdgo.bytes.Bytes.Buffer);
    public function new(?_err:Error, ?buffer:stdgo.bytes.Bytes.Buffer) {
        if (_err != null) this._err = _err;
        if (buffer != null) this.buffer = buffer;
    }
    public function __underlying__() return Go.toInterface(this);
    @:embedded
    public function bytes():Slice<GoUInt8> return buffer.bytes();
    @:embedded
    public function cap():GoInt return buffer.cap();
    @:embedded
    public function grow(__0:GoInt) buffer.grow(__0);
    @:embedded
    public function len():GoInt return buffer.len();
    @:embedded
    public function next(__0:GoInt):Slice<GoUInt8> return buffer.next(__0);
    @:embedded
    public function readByte():{ var _0 : GoUInt8; var _1 : Error; } return buffer.readByte();
    @:embedded
    public function readBytes(_c:GoUInt8):{ var _0 : Slice<GoUInt8>; var _1 : Error; } return buffer.readBytes(_c);
    @:embedded
    public function readFrom(_r:Reader):{ var _0 : GoInt64; var _1 : Error; } return buffer.readFrom(_r);
    @:embedded
    public function readRune():{ var _0 : GoInt32; var _1 : GoInt; var _2 : Error; } return buffer.readRune();
    @:embedded
    public function readString(_c:GoUInt8):{ var _0 : GoString; var _1 : Error; } return buffer.readString(_c);
    @:embedded
    public function reset() buffer.reset();
    @:embedded
    public function string():GoString return buffer.string();
    @:embedded
    public function truncate(__0:GoInt) buffer.truncate(__0);
    @:embedded
    public function unreadByte():Error return buffer.unreadByte();
    @:embedded
    public function unreadRune():Error return buffer.unreadRune();
    @:embedded
    public function write(_b:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : Error; } return buffer.write(_b);
    @:embedded
    public function writeByte(_c:GoUInt8):Error return buffer.writeByte(_c);
    @:embedded
    public function writeRune(__0:GoInt32):{ var _0 : GoInt; var _1 : Error; } return buffer.writeRune(__0);
    @:embedded
    public function writeString(__0:GoString):{ var _0 : GoInt; var _1 : Error; } return buffer.writeString(__0);
    @:embedded
    public function writeTo(_w:Writer):{ var _0 : GoInt64; var _1 : Error; } return buffer.writeTo(_w);
    @:embedded
    public function _empty():Bool return buffer._empty();
    @:embedded
    public function _grow(__0:GoInt):GoInt return buffer._grow(__0);
    @:embedded
    public function _readSlice(_c:GoUInt8):{ var _0 : Slice<GoUInt8>; var _1 : Error; } return buffer._readSlice(_c);
    @:embedded
    public function _tryGrowByReslice(__0:GoInt):{ var _0 : GoInt; var _1 : Bool; } return buffer._tryGrowByReslice(__0);
    public function __copy__() {
        return new T_dataAndErrorBuffer(_err, buffer);
    }
}
/**
    // largeWriter returns an invalid count that is larger than the number
    // of bytes provided (issue 39978).
    
    
**/
@:structInit @:private @:using(stdgo.io_test.Io_test.T_largeWriter_static_extension) class T_largeWriter {
    public var _err : Error = (null : Error);
    public function new(?_err:Error) {
        if (_err != null) this._err = _err;
    }
    public function __underlying__() return Go.toInterface(this);
    public function __copy__() {
        return new T_largeWriter(_err);
    }
}
/**
    
    
    
**/
@:structInit @:private @:using(stdgo.io_test.Io_test.T_writeStringChecker_static_extension) class T_writeStringChecker {
    public var _called : Bool = false;
    public function new(?_called:Bool) {
        if (_called != null) this._called = _called;
    }
    public function __underlying__() return Go.toInterface(this);
    public function __copy__() {
        return new T_writeStringChecker(_called);
    }
}
/**
    
    
    
**/
@:structInit @:private class T_pipeReturn {
    public var _n : GoInt = 0;
    public var _err : Error = (null : Error);
    public function new(?_n:GoInt, ?_err:Error) {
        if (_n != null) this._n = _n;
        if (_err != null) this._err = _err;
    }
    public function __underlying__() return Go.toInterface(this);
    public function __copy__() {
        return new T_pipeReturn(_n, _err);
    }
}
/**
    
    
    
**/
@:structInit @:private @:using(stdgo.io_test.Io_test.T_pipeTest_static_extension) class T_pipeTest {
    public var _async : Bool = false;
    public var _err : Error = (null : Error);
    public var _closeWithError : Bool = false;
    public function new(?_async:Bool, ?_err:Error, ?_closeWithError:Bool) {
        if (_async != null) this._async = _async;
        if (_err != null) this._err = _err;
        if (_closeWithError != null) this._closeWithError = _closeWithError;
    }
    public function __underlying__() return Go.toInterface(this);
    public function __copy__() {
        return new T_pipeTest(_async, _err, _closeWithError);
    }
}
class T__struct_1_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : Pointer<T__struct_1>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.io_test.Io_test.T__struct_1_asInterface) class T__struct_1_static_extension {

}
@:local @:using(stdgo.io_test.Io_test.T__struct_1_static_extension) private typedef T__struct_1 = {
    public var _data : GoString;
    public var _off : GoInt;
    public var _n : GoInt;
    public var _bufLen : GoInt;
    public var _at : GoInt;
    public var _exp : GoString;
    public var _err : Error;
};
class T__struct_2_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : Pointer<T__struct_2>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.io_test.Io_test.T__struct_2_asInterface) class T__struct_2_static_extension {

}
@:local @:using(stdgo.io_test.Io_test.T__struct_2_static_extension) private typedef T__struct_2 = {
    public var _data : GoString;
    public var _want : GoInt64;
};
class T__struct_3_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : Pointer<T__struct_3>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.io_test.Io_test.T__struct_3_asInterface) class T__struct_3_static_extension {

}
@:local @:using(stdgo.io_test.Io_test.T__struct_3_static_extension) private typedef T__struct_3 = {
    public var name : GoString;
    public var _r : Reader;
};
class T__struct_4_asInterface {
    @:embedded
    public function writeTo(_w:Writer):{ var _0 : GoInt64; var _1 : Error; } return __self__.value.writeTo(_w);
    @:embedded
    public function read(_b:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : Error; } return __self__.value.read(_b);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : Pointer<T__struct_4>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.io_test.Io_test.T__struct_4_asInterface) class T__struct_4_static_extension {
    @:embedded
    public static function writeTo( __self__:T__struct_4, _w:Writer):{ var _0 : GoInt64; var _1 : Error; } return return __self__.writerTo.writeTo(_w);
    @:embedded
    public static function read( __self__:T__struct_4, _b:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : Error; } return return __self__.reader.read(_b);
}
@:local @:using(stdgo.io_test.Io_test.T__struct_4_static_extension) private typedef T__struct_4 = {
    @:embedded
    public var reader : Reader;
    @:embedded
    public var writerTo : WriterTo;
};
class T__struct_5_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : Pointer<T__struct_5>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.io_test.Io_test.T__struct_5_asInterface) class T__struct_5_static_extension {

}
@:local @:using(stdgo.io_test.Io_test.T__struct_5_static_extension) private typedef T__struct_5 = {
    public var _offset : GoInt64;
    public var _whence : GoInt;
    public var _returnOff : GoInt64;
};
class T__struct_6_asInterface {
    @:embedded
    public function write(_b:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : Error; } return __self__.value.write(_b);
    @:embedded
    public function string():GoString return __self__.value.string();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : Pointer<T__struct_6>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.io_test.Io_test.T__struct_6_asInterface) class T__struct_6_static_extension {
    @:embedded
    public static function write( __self__:T__struct_6, _b:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : Error; } return return __self__.writer.write(_b);
    @:embedded
    public static function string( __self__:T__struct_6):GoString return return __self__.stringer.string();
}
@:local @:using(stdgo.io_test.Io_test.T__struct_6_static_extension) private typedef T__struct_6 = {
    @:embedded
    public var writer : Writer;
    @:embedded
    public var stringer : stdgo.fmt.Fmt.Stringer;
};
class T__struct_7_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : Pointer<T__struct_7>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.io_test.Io_test.T__struct_7_asInterface) class T__struct_7_static_extension {

}
@:local @:using(stdgo.io_test.Io_test.T__struct_7_static_extension) private typedef T__struct_7 = {};
/**
    // writerFunc is a Writer implemented by the underlying func.
**/
@:named @:using(stdgo.io_test.Io_test.T_writerFunc_static_extension) private typedef T_writerFunc = Slice<GoUInt8> -> { var _0 : GoInt; var _1 : Error; };
/**
    // readerFunc is a Reader implemented by the underlying func.
**/
@:named @:using(stdgo.io_test.Io_test.T_readerFunc_static_extension) private typedef T_readerFunc = Slice<GoUInt8> -> { var _0 : GoInt; var _1 : Error; };
/**
    // byteAndEOFReader is a Reader which reads one byte (the underlying
    // byte) and EOF at once in its Read call.
**/
@:named @:using(stdgo.io_test.Io_test.T_byteAndEOFReader_static_extension) private typedef T_byteAndEOFReader = GoUInt8;
function exampleCopy():Void {
        var _r = stdgo.strings.Strings.newReader(("some io.Reader stream to be read\n" : GoString));
        {
            var __tmp__ = stdgo.io.Io.copy(Go.asInterface(stdgo.os.Os.stdout), Go.asInterface(_r)), _0:GoInt64 = __tmp__._0, _err:Error = __tmp__._1;
            if (_err != null) {
                stdgo.log.Log.fatal(Go.toInterface(_err));
            };
        };
    }
function exampleCopyBuffer():Void {
        var _r1 = stdgo.strings.Strings.newReader(("first reader\n" : GoString));
        var _r2 = stdgo.strings.Strings.newReader(("second reader\n" : GoString));
        var _buf = new Slice<GoUInt8>((8 : GoInt).toBasic(), 0, ...[for (i in 0 ... (8 : GoInt).toBasic()) (0 : GoUInt8)]);
        {
            var __tmp__ = stdgo.io.Io.copyBuffer(Go.asInterface(stdgo.os.Os.stdout), Go.asInterface(_r1), _buf), _0:GoInt64 = __tmp__._0, _err:Error = __tmp__._1;
            if (_err != null) {
                stdgo.log.Log.fatal(Go.toInterface(_err));
            };
        };
        {
            var __tmp__ = stdgo.io.Io.copyBuffer(Go.asInterface(stdgo.os.Os.stdout), Go.asInterface(_r2), _buf), _1:GoInt64 = __tmp__._0, _err:Error = __tmp__._1;
            if (_err != null) {
                stdgo.log.Log.fatal(Go.toInterface(_err));
            };
        };
    }
function exampleCopyN():Void {
        var _r = stdgo.strings.Strings.newReader(("some io.Reader stream to be read" : GoString));
        {
            var __tmp__ = stdgo.io.Io.copyN(Go.asInterface(stdgo.os.Os.stdout), Go.asInterface(_r), ("4" : GoInt64)), _0:GoInt64 = __tmp__._0, _err:Error = __tmp__._1;
            if (_err != null) {
                stdgo.log.Log.fatal(Go.toInterface(_err));
            };
        };
    }
function exampleReadAtLeast():Void {
        var _r = stdgo.strings.Strings.newReader(("some io.Reader stream to be read\n" : GoString));
        var _buf = new Slice<GoUInt8>((14 : GoInt).toBasic(), 0, ...[for (i in 0 ... (14 : GoInt).toBasic()) (0 : GoUInt8)]);
        {
            var __tmp__ = stdgo.io.Io.readAtLeast(Go.asInterface(_r), _buf, (4 : GoInt)), _0:GoInt = __tmp__._0, _err:Error = __tmp__._1;
            if (_err != null) {
                stdgo.log.Log.fatal(Go.toInterface(_err));
            };
        };
        stdgo.fmt.Fmt.printf(("%s\n" : GoString), Go.toInterface(_buf));
        var _shortBuf = new Slice<GoUInt8>((3 : GoInt).toBasic(), 0, ...[for (i in 0 ... (3 : GoInt).toBasic()) (0 : GoUInt8)]);
        {
            var __tmp__ = stdgo.io.Io.readAtLeast(Go.asInterface(_r), _shortBuf, (4 : GoInt)), _1:GoInt = __tmp__._0, _err:Error = __tmp__._1;
            if (_err != null) {
                stdgo.fmt.Fmt.println(Go.toInterface(("error:" : GoString)), Go.toInterface(_err));
            };
        };
        var _longBuf = new Slice<GoUInt8>((64 : GoInt).toBasic(), 0, ...[for (i in 0 ... (64 : GoInt).toBasic()) (0 : GoUInt8)]);
        {
            var __tmp__ = stdgo.io.Io.readAtLeast(Go.asInterface(_r), _longBuf, (64 : GoInt)), _2:GoInt = __tmp__._0, _err:Error = __tmp__._1;
            if (_err != null) {
                stdgo.fmt.Fmt.println(Go.toInterface(("error:" : GoString)), Go.toInterface(_err));
            };
        };
    }
function exampleReadFull():Void {
        var _r = stdgo.strings.Strings.newReader(("some io.Reader stream to be read\n" : GoString));
        var _buf = new Slice<GoUInt8>((4 : GoInt).toBasic(), 0, ...[for (i in 0 ... (4 : GoInt).toBasic()) (0 : GoUInt8)]);
        {
            var __tmp__ = stdgo.io.Io.readFull(Go.asInterface(_r), _buf), _0:GoInt = __tmp__._0, _err:Error = __tmp__._1;
            if (_err != null) {
                stdgo.log.Log.fatal(Go.toInterface(_err));
            };
        };
        stdgo.fmt.Fmt.printf(("%s\n" : GoString), Go.toInterface(_buf));
        var _longBuf = new Slice<GoUInt8>((64 : GoInt).toBasic(), 0, ...[for (i in 0 ... (64 : GoInt).toBasic()) (0 : GoUInt8)]);
        {
            var __tmp__ = stdgo.io.Io.readFull(Go.asInterface(_r), _longBuf), _1:GoInt = __tmp__._0, _err:Error = __tmp__._1;
            if (_err != null) {
                stdgo.fmt.Fmt.println(Go.toInterface(("error:" : GoString)), Go.toInterface(_err));
            };
        };
    }
function exampleWriteString():Void {
        {
            var __tmp__ = stdgo.io.Io.writeString(Go.asInterface(stdgo.os.Os.stdout), ("Hello World" : GoString)), _0:GoInt = __tmp__._0, _err:Error = __tmp__._1;
            if (_err != null) {
                stdgo.log.Log.fatal(Go.toInterface(_err));
            };
        };
    }
function exampleLimitReader():Void {
        var _r = stdgo.strings.Strings.newReader(("some io.Reader stream to be read\n" : GoString));
        var _lr:Reader = stdgo.io.Io.limitReader(Go.asInterface(_r), ("4" : GoInt64));
        {
            var __tmp__ = stdgo.io.Io.copy(Go.asInterface(stdgo.os.Os.stdout), _lr), _0:GoInt64 = __tmp__._0, _err:Error = __tmp__._1;
            if (_err != null) {
                stdgo.log.Log.fatal(Go.toInterface(_err));
            };
        };
    }
function exampleMultiReader():Void {
        var _r1 = stdgo.strings.Strings.newReader(("first reader " : GoString));
        var _r2 = stdgo.strings.Strings.newReader(("second reader " : GoString));
        var _r3 = stdgo.strings.Strings.newReader(("third reader\n" : GoString));
        var _r:Reader = stdgo.io.Io.multiReader(Go.asInterface(_r1), Go.asInterface(_r2), Go.asInterface(_r3));
        {
            var __tmp__ = stdgo.io.Io.copy(Go.asInterface(stdgo.os.Os.stdout), _r), _0:GoInt64 = __tmp__._0, _err:Error = __tmp__._1;
            if (_err != null) {
                stdgo.log.Log.fatal(Go.toInterface(_err));
            };
        };
    }
function exampleTeeReader():Void {
        var _r:Reader = Go.asInterface(stdgo.strings.Strings.newReader(("some io.Reader stream to be read\n" : GoString)));
        _r = stdgo.io.Io.teeReader(_r, Go.asInterface(stdgo.os.Os.stdout));
        {
            var __tmp__ = stdgo.io.Io.readAll(_r), _0:Slice<GoUInt8> = __tmp__._0, _err:Error = __tmp__._1;
            if (_err != null) {
                stdgo.log.Log.fatal(Go.toInterface(_err));
            };
        };
    }
function exampleSectionReader():Void {
        var _r = stdgo.strings.Strings.newReader(("some io.Reader stream to be read\n" : GoString));
        var _s = stdgo.io.Io.newSectionReader(Go.asInterface(_r), ("5" : GoInt64), ("17" : GoInt64));
        {
            var __tmp__ = stdgo.io.Io.copy(Go.asInterface(stdgo.os.Os.stdout), Go.asInterface(_s)), _0:GoInt64 = __tmp__._0, _err:Error = __tmp__._1;
            if (_err != null) {
                stdgo.log.Log.fatal(Go.toInterface(_err));
            };
        };
    }
function exampleSectionReader_Read():Void {
        var _r = stdgo.strings.Strings.newReader(("some io.Reader stream to be read\n" : GoString));
        var _s = stdgo.io.Io.newSectionReader(Go.asInterface(_r), ("5" : GoInt64), ("17" : GoInt64));
        var _buf = new Slice<GoUInt8>((9 : GoInt).toBasic(), 0, ...[for (i in 0 ... (9 : GoInt).toBasic()) (0 : GoUInt8)]);
        {
            var __tmp__ = _s.read(_buf), _0:GoInt = __tmp__._0, _err:Error = __tmp__._1;
            if (_err != null) {
                stdgo.log.Log.fatal(Go.toInterface(_err));
            };
        };
        stdgo.fmt.Fmt.printf(("%s\n" : GoString), Go.toInterface(_buf));
    }
function exampleSectionReader_ReadAt():Void {
        var _r = stdgo.strings.Strings.newReader(("some io.Reader stream to be read\n" : GoString));
        var _s = stdgo.io.Io.newSectionReader(Go.asInterface(_r), ("5" : GoInt64), ("17" : GoInt64));
        var _buf = new Slice<GoUInt8>((6 : GoInt).toBasic(), 0, ...[for (i in 0 ... (6 : GoInt).toBasic()) (0 : GoUInt8)]);
        {
            var __tmp__ = _s.readAt(_buf, ("10" : GoInt64)), _0:GoInt = __tmp__._0, _err:Error = __tmp__._1;
            if (_err != null) {
                stdgo.log.Log.fatal(Go.toInterface(_err));
            };
        };
        stdgo.fmt.Fmt.printf(("%s\n" : GoString), Go.toInterface(_buf));
    }
function exampleSectionReader_Seek():Void {
        var _r = stdgo.strings.Strings.newReader(("some io.Reader stream to be read\n" : GoString));
        var _s = stdgo.io.Io.newSectionReader(Go.asInterface(_r), ("5" : GoInt64), ("17" : GoInt64));
        {
            var __tmp__ = _s.seek(("10" : GoInt64), (0 : GoInt)), _0:GoInt64 = __tmp__._0, _err:Error = __tmp__._1;
            if (_err != null) {
                stdgo.log.Log.fatal(Go.toInterface(_err));
            };
        };
        {
            var __tmp__ = stdgo.io.Io.copy(Go.asInterface(stdgo.os.Os.stdout), Go.asInterface(_s)), _1:GoInt64 = __tmp__._0, _err:Error = __tmp__._1;
            if (_err != null) {
                stdgo.log.Log.fatal(Go.toInterface(_err));
            };
        };
    }
function exampleSectionReader_Size():Void {
        var _r = stdgo.strings.Strings.newReader(("some io.Reader stream to be read\n" : GoString));
        var _s = stdgo.io.Io.newSectionReader(Go.asInterface(_r), ("5" : GoInt64), ("17" : GoInt64));
        stdgo.fmt.Fmt.println(Go.toInterface(_s.size()));
    }
function exampleSeeker_Seek():Void {
        var _r = stdgo.strings.Strings.newReader(("some io.Reader stream to be read\n" : GoString));
        _r.seek(("5" : GoInt64), (0 : GoInt));
        {
            var __tmp__ = stdgo.io.Io.copy(Go.asInterface(stdgo.os.Os.stdout), Go.asInterface(_r)), _0:GoInt64 = __tmp__._0, _err:Error = __tmp__._1;
            if (_err != null) {
                stdgo.log.Log.fatal(Go.toInterface(_err));
            };
        };
        _r.seek(("-5" : GoInt64), (2 : GoInt));
        {
            var __tmp__ = stdgo.io.Io.copy(Go.asInterface(stdgo.os.Os.stdout), Go.asInterface(_r)), _1:GoInt64 = __tmp__._0, _err:Error = __tmp__._1;
            if (_err != null) {
                stdgo.log.Log.fatal(Go.toInterface(_err));
            };
        };
    }
function exampleMultiWriter():Void {
        var _r = stdgo.strings.Strings.newReader(("some io.Reader stream to be read\n" : GoString));
        var _0:stdgo.strings.Strings.Builder = ({} : stdgo.strings.Strings.Builder), _1:stdgo.strings.Strings.Builder = ({} : stdgo.strings.Strings.Builder), _buf2:stdgo.strings.Strings.Builder = _1, _buf1:stdgo.strings.Strings.Builder = _0;
        var _w:Writer = stdgo.io.Io.multiWriter(Go.asInterface((_buf1 : Ref<stdgo.strings.Strings.Builder>)), Go.asInterface((_buf2 : Ref<stdgo.strings.Strings.Builder>)));
        {
            var __tmp__ = stdgo.io.Io.copy(_w, Go.asInterface(_r)), _0:GoInt64 = __tmp__._0, _err:Error = __tmp__._1;
            if (_err != null) {
                stdgo.log.Log.fatal(Go.toInterface(_err));
            };
        };
        stdgo.fmt.Fmt.print(Go.toInterface((_buf1.string() : GoString)));
        stdgo.fmt.Fmt.print(Go.toInterface((_buf2.string() : GoString)));
    }
function examplePipe():Void {
        var __tmp__ = stdgo.io.Io.pipe(), _r:Ref<PipeReader> = __tmp__._0, _w:Ref<PipeWriter> = __tmp__._1;
        Go.routine(() -> {
            var a = function():Void {
                stdgo.fmt.Fmt.fprint(Go.asInterface(_w), Go.toInterface(("some io.Reader stream to be read\n" : GoString)));
                _w.close();
            };
            a();
        });
        {
            var __tmp__ = stdgo.io.Io.copy(Go.asInterface(stdgo.os.Os.stdout), Go.asInterface(_r)), _0:GoInt64 = __tmp__._0, _err:Error = __tmp__._1;
            if (_err != null) {
                stdgo.log.Log.fatal(Go.toInterface(_err));
            };
        };
    }
function exampleReadAll():Void {
        var _r = stdgo.strings.Strings.newReader(("Go is a general-purpose language designed with systems programming in mind." : GoString));
        var __tmp__ = stdgo.io.Io.readAll(Go.asInterface(_r)), _b:Slice<GoUInt8> = __tmp__._0, _err:Error = __tmp__._1;
        if (_err != null) {
            stdgo.log.Log.fatal(Go.toInterface(_err));
        };
        stdgo.fmt.Fmt.printf(("%s" : GoString), Go.toInterface(_b));
    }
function testCopy(_t:Ref<stdgo.testing.Testing.T>):Void {
        var _rb = ({} : stdgo.io_test.Io_test.Buffer);
        var _wb = ({} : stdgo.io_test.Io_test.Buffer);
        _rb.writeString(("hello, world." : GoString));
        copy(Go.asInterface(_wb), Go.asInterface(_rb));
        if ((_wb.string() : GoString) != (("hello, world." : GoString))) {
            _t.errorf(("Copy did not work properly" : GoString));
        };
    }
function testCopyNegative(_t:Ref<stdgo.testing.Testing.T>):Void {
        var _rb = ({} : stdgo.io_test.Io_test.Buffer);
        var _wb = ({} : stdgo.io_test.Io_test.Buffer);
        _rb.writeString(("hello" : GoString));
        copy(Go.asInterface(_wb), Go.asInterface((({ r : Go.asInterface(_rb), n : ("-1" : GoInt64) } : LimitedReader) : Ref<LimitedReader>)));
        if ((_wb.string() : GoString) != (Go.str())) {
            _t.errorf(("Copy on LimitedReader with N<0 copied data" : GoString));
        };
        copyN(Go.asInterface(_wb), Go.asInterface(_rb), ("-1" : GoInt64));
        if ((_wb.string() : GoString) != (Go.str())) {
            _t.errorf(("CopyN with N<0 copied data" : GoString));
        };
    }
function testCopyBuffer(_t:Ref<stdgo.testing.Testing.T>):Void {
        var _rb = ({} : stdgo.io_test.Io_test.Buffer);
        var _wb = ({} : stdgo.io_test.Io_test.Buffer);
        _rb.writeString(("hello, world." : GoString));
        copyBuffer(Go.asInterface(_wb), Go.asInterface(_rb), new Slice<GoUInt8>((1 : GoInt).toBasic(), 0, ...[for (i in 0 ... (1 : GoInt).toBasic()) (0 : GoUInt8)]));
        if ((_wb.string() : GoString) != (("hello, world." : GoString))) {
            _t.errorf(("CopyBuffer did not work properly" : GoString));
        };
    }
function testCopyBufferNil(_t:Ref<stdgo.testing.Testing.T>):Void {
        var _rb = ({} : stdgo.io_test.Io_test.Buffer);
        var _wb = ({} : stdgo.io_test.Io_test.Buffer);
        _rb.writeString(("hello, world." : GoString));
        copyBuffer(Go.asInterface(_wb), Go.asInterface(_rb), (null : Slice<GoUInt8>));
        if ((_wb.string() : GoString) != (("hello, world." : GoString))) {
            _t.errorf(("CopyBuffer did not work properly" : GoString));
        };
    }
function testCopyReadFrom(_t:Ref<stdgo.testing.Testing.T>):Void {
        var _rb = ({} : stdgo.io_test.Io_test.Buffer);
        var _wb = ({} : stdgo.bytes.Bytes.Buffer);
        _rb.writeString(("hello, world." : GoString));
        copy(Go.asInterface(_wb), Go.asInterface(_rb));
        if ((_wb.string() : GoString) != (("hello, world." : GoString))) {
            _t.errorf(("Copy did not work properly" : GoString));
        };
    }
function testCopyWriteTo(_t:Ref<stdgo.testing.Testing.T>):Void {
        var _rb = ({} : stdgo.bytes.Bytes.Buffer);
        var _wb = ({} : stdgo.io_test.Io_test.Buffer);
        _rb.writeString(("hello, world." : GoString));
        copy(Go.asInterface(_wb), Go.asInterface(_rb));
        if ((_wb.string() : GoString) != (("hello, world." : GoString))) {
            _t.errorf(("Copy did not work properly" : GoString));
        };
    }
/**
    // It's preferable to choose WriterTo over ReaderFrom, since a WriterTo can issue one large write,
    // while the ReaderFrom must read until EOF, potentially allocating when running out of buffer.
    // Make sure that we choose WriterTo when both are implemented.
**/
function testCopyPriority(_t:Ref<stdgo.testing.Testing.T>):Void {
        var _rb = ({} : stdgo.io_test.Io_test.T_writeToChecker);
        var _wb = ({} : stdgo.bytes.Bytes.Buffer);
        _rb.writeString(("hello, world." : GoString));
        copy(Go.asInterface(_wb), Go.asInterface(_rb));
        if ((_wb.string() : GoString) != (("hello, world." : GoString))) {
            _t.errorf(("Copy did not work properly" : GoString));
        } else if (!_rb._writeToCalled) {
            _t.errorf(("WriteTo was not prioritized over ReadFrom" : GoString));
        };
    }
/**
    // In case a Read results in an error with non-zero bytes read, and
    // the subsequent Write also results in an error, the error from Write
    // is returned, as it is the one that prevented progressing further.
**/
function testCopyReadErrWriteErr(_t:Ref<stdgo.testing.Testing.T>):Void {
        var _0:Error = stdgo.errors.Errors.new_(("readError" : GoString)), _1:Error = stdgo.errors.Errors.new_(("writeError" : GoString)), _ew:Error = _1, _er:Error = _0;
        var _0:stdgo.io_test.Io_test.T_zeroErrReader = ({ _err : _er } : T_zeroErrReader), _1:stdgo.io_test.Io_test.T_errWriter = ({ _err : _ew } : T_errWriter), _w:stdgo.io_test.Io_test.T_errWriter = _1, _r:stdgo.io_test.Io_test.T_zeroErrReader = _0;
        var __tmp__ = copy(Go.asInterface(_w), Go.asInterface(_r)), _n:GoInt64 = __tmp__._0, _err:Error = __tmp__._1;
        if ((_n != ("0" : GoInt64)) || (Go.toInterface(_err) != Go.toInterface(_ew))) {
            _t.errorf(("Copy(zeroErrReader, errWriter) = %d, %v; want 0, writeError" : GoString), Go.toInterface(_n), Go.toInterface(_err));
        };
    }
function testCopyN(_t:Ref<stdgo.testing.Testing.T>):Void {
        var _rb = ({} : stdgo.io_test.Io_test.Buffer);
        var _wb = ({} : stdgo.io_test.Io_test.Buffer);
        _rb.writeString(("hello, world." : GoString));
        copyN(Go.asInterface(_wb), Go.asInterface(_rb), ("5" : GoInt64));
        if ((_wb.string() : GoString) != (("hello" : GoString))) {
            _t.errorf(("CopyN did not work properly" : GoString));
        };
    }
function testCopyNReadFrom(_t:Ref<stdgo.testing.Testing.T>):Void {
        var _rb = ({} : stdgo.io_test.Io_test.Buffer);
        var _wb = ({} : stdgo.bytes.Bytes.Buffer);
        _rb.writeString(("hello" : GoString));
        copyN(Go.asInterface(_wb), Go.asInterface(_rb), ("5" : GoInt64));
        if ((_wb.string() : GoString) != (("hello" : GoString))) {
            _t.errorf(("CopyN did not work properly" : GoString));
        };
    }
function testCopyNWriteTo(_t:Ref<stdgo.testing.Testing.T>):Void {
        var _rb = ({} : stdgo.bytes.Bytes.Buffer);
        var _wb = ({} : stdgo.io_test.Io_test.Buffer);
        _rb.writeString(("hello, world." : GoString));
        copyN(Go.asInterface(_wb), Go.asInterface(_rb), ("5" : GoInt64));
        if ((_wb.string() : GoString) != (("hello" : GoString))) {
            _t.errorf(("CopyN did not work properly" : GoString));
        };
    }
function benchmarkCopyNSmall(_b:Ref<stdgo.testing.Testing.B>):Void {
        var _bs = stdgo.bytes.Bytes.repeat((new Slice<GoUInt8>(0, 0, (0 : GoUInt8)) : Slice<GoUInt8>), (513 : GoInt));
        var _rd = stdgo.bytes.Bytes.newReader(_bs);
        var _buf = ({} : stdgo.io_test.Io_test.Buffer);
        _b.resetTimer();
        {
            var _i:GoInt = (0 : GoInt);
            Go.cfor(_i < _b.n, _i++, {
                copyN(Go.asInterface(_buf), Go.asInterface(_rd), ("512" : GoInt64));
                _rd.reset(_bs);
            });
        };
    }
function benchmarkCopyNLarge(_b:Ref<stdgo.testing.Testing.B>):Void {
        var _bs = stdgo.bytes.Bytes.repeat((new Slice<GoUInt8>(0, 0, (0 : GoUInt8)) : Slice<GoUInt8>), (32769 : GoInt));
        var _rd = stdgo.bytes.Bytes.newReader(_bs);
        var _buf = ({} : stdgo.io_test.Io_test.Buffer);
        _b.resetTimer();
        {
            var _i:GoInt = (0 : GoInt);
            Go.cfor(_i < _b.n, _i++, {
                copyN(Go.asInterface(_buf), Go.asInterface(_rd), ("32768" : GoInt64));
                _rd.reset(_bs);
            });
        };
    }
function testCopyNEOF(_t:Ref<stdgo.testing.Testing.T>):Void {
        var _b = ({} : stdgo.bytes.Bytes.Buffer);
        var __tmp__ = copyN(Go.asInterface(((new T_noReadFrom(Go.asInterface(_b)) : T_noReadFrom) : Ref<stdgo.io_test.Io_test.T_noReadFrom>)), Go.asInterface(stdgo.strings.Strings.newReader(("foo" : GoString))), ("3" : GoInt64)), _n:GoInt64 = __tmp__._0, _err:Error = __tmp__._1;
        if ((_n != ("3" : GoInt64)) || (_err != null)) {
            _t.errorf(("CopyN(noReadFrom, foo, 3) = %d, %v; want 3, nil" : GoString), Go.toInterface(_n), Go.toInterface(_err));
        };
        {
            var __tmp__ = copyN(Go.asInterface(((new T_noReadFrom(Go.asInterface(_b)) : T_noReadFrom) : Ref<stdgo.io_test.Io_test.T_noReadFrom>)), Go.asInterface(stdgo.strings.Strings.newReader(("foo" : GoString))), ("4" : GoInt64));
            _n = __tmp__._0;
            _err = __tmp__._1;
        };
        if ((_n != ("3" : GoInt64)) || (Go.toInterface(_err) != Go.toInterface(eof))) {
            _t.errorf(("CopyN(noReadFrom, foo, 4) = %d, %v; want 3, EOF" : GoString), Go.toInterface(_n), Go.toInterface(_err));
        };
        {
            var __tmp__ = copyN(Go.asInterface(_b), Go.asInterface(stdgo.strings.Strings.newReader(("foo" : GoString))), ("3" : GoInt64));
            _n = __tmp__._0;
            _err = __tmp__._1;
        };
        if ((_n != ("3" : GoInt64)) || (_err != null)) {
            _t.errorf(("CopyN(bytes.Buffer, foo, 3) = %d, %v; want 3, nil" : GoString), Go.toInterface(_n), Go.toInterface(_err));
        };
        {
            var __tmp__ = copyN(Go.asInterface(_b), Go.asInterface(stdgo.strings.Strings.newReader(("foo" : GoString))), ("4" : GoInt64));
            _n = __tmp__._0;
            _err = __tmp__._1;
        };
        if ((_n != ("3" : GoInt64)) || (Go.toInterface(_err) != Go.toInterface(eof))) {
            _t.errorf(("CopyN(bytes.Buffer, foo, 4) = %d, %v; want 3, EOF" : GoString), Go.toInterface(_n), Go.toInterface(_err));
        };
        {
            var __tmp__ = copyN(Go.asInterface(_b), Go.asInterface((new T_wantedAndErrReader() : T_wantedAndErrReader)), ("5" : GoInt64));
            _n = __tmp__._0;
            _err = __tmp__._1;
        };
        if ((_n != ("5" : GoInt64)) || (_err != null)) {
            _t.errorf(("CopyN(bytes.Buffer, wantedAndErrReader, 5) = %d, %v; want 5, nil" : GoString), Go.toInterface(_n), Go.toInterface(_err));
        };
        {
            var __tmp__ = copyN(Go.asInterface(((new T_noReadFrom(Go.asInterface(_b)) : T_noReadFrom) : Ref<stdgo.io_test.Io_test.T_noReadFrom>)), Go.asInterface((new T_wantedAndErrReader() : T_wantedAndErrReader)), ("5" : GoInt64));
            _n = __tmp__._0;
            _err = __tmp__._1;
        };
        if ((_n != ("5" : GoInt64)) || (_err != null)) {
            _t.errorf(("CopyN(noReadFrom, wantedAndErrReader, 5) = %d, %v; want 5, nil" : GoString), Go.toInterface(_n), Go.toInterface(_err));
        };
    }
function testReadAtLeast(_t:Ref<stdgo.testing.Testing.T>):Void {
        var _rb:stdgo.bytes.Bytes.Buffer = ({} : stdgo.bytes.Bytes.Buffer);
        _testReadAtLeast(_t, Go.asInterface((_rb : Ref<stdgo.bytes.Bytes.Buffer>)));
    }
function testReadAtLeastWithDataAndEOF(_t:Ref<stdgo.testing.Testing.T>):Void {
        var _rb:T_dataAndErrorBuffer = ({} : stdgo.io_test.Io_test.T_dataAndErrorBuffer);
        _rb._err = eof;
        _testReadAtLeast(_t, Go.asInterface((_rb : Ref<stdgo.io_test.Io_test.T_dataAndErrorBuffer>)));
    }
function testReadAtLeastWithDataAndError(_t:Ref<stdgo.testing.Testing.T>):Void {
        var _rb:T_dataAndErrorBuffer = ({} : stdgo.io_test.Io_test.T_dataAndErrorBuffer);
        _rb._err = stdgo.fmt.Fmt.errorf(("fake error" : GoString));
        _testReadAtLeast(_t, Go.asInterface((_rb : Ref<stdgo.io_test.Io_test.T_dataAndErrorBuffer>)));
    }
private function _testReadAtLeast(_t:Ref<stdgo.testing.Testing.T>, _rb:ReadWriter):Void {
        _rb.write((("0123" : GoString) : Slice<GoByte>));
        var _buf = new Slice<GoUInt8>((2 : GoInt).toBasic(), 0, ...[for (i in 0 ... (2 : GoInt).toBasic()) (0 : GoUInt8)]);
        var __tmp__ = readAtLeast(_rb, _buf, (2 : GoInt)), _n:GoInt = __tmp__._0, _err:Error = __tmp__._1;
        if (_err != null) {
            _t.error(Go.toInterface(_err));
        };
        if (_n != ((2 : GoInt))) {
            _t.errorf(("expected to have read 2 bytes, got %v" : GoString), Go.toInterface(_n));
        };
        {
            var __tmp__ = readAtLeast(_rb, _buf, (4 : GoInt));
            _n = __tmp__._0;
            _err = __tmp__._1;
        };
        if (Go.toInterface(_err) != (Go.toInterface(errShortBuffer))) {
            _t.errorf(("expected ErrShortBuffer got %v" : GoString), Go.toInterface(_err));
        };
        if (_n != ((0 : GoInt))) {
            _t.errorf(("expected to have read 0 bytes, got %v" : GoString), Go.toInterface(_n));
        };
        {
            var __tmp__ = readAtLeast(_rb, _buf, (1 : GoInt));
            _n = __tmp__._0;
            _err = __tmp__._1;
        };
        if (_err != null) {
            _t.error(Go.toInterface(_err));
        };
        if (_n != ((2 : GoInt))) {
            _t.errorf(("expected to have read 2 bytes, got %v" : GoString), Go.toInterface(_n));
        };
        {
            var __tmp__ = readAtLeast(_rb, _buf, (2 : GoInt));
            _n = __tmp__._0;
            _err = __tmp__._1;
        };
        if (Go.toInterface(_err) != (Go.toInterface(eof))) {
            _t.errorf(("expected EOF, got %v" : GoString), Go.toInterface(_err));
        };
        if (_n != ((0 : GoInt))) {
            _t.errorf(("expected to have read 0 bytes, got %v" : GoString), Go.toInterface(_n));
        };
        _rb.write((("4" : GoString) : Slice<GoByte>));
        {
            var __tmp__ = readAtLeast(_rb, _buf, (2 : GoInt));
            _n = __tmp__._0;
            _err = __tmp__._1;
        };
        var _want:Error = errUnexpectedEOF;
        {
            var __tmp__ = try {
                { value : (Go.typeAssert((Go.toInterface(_rb) : Ref<T_dataAndErrorBuffer>)) : Ref<T_dataAndErrorBuffer>), ok : true };
            } catch(_) {
                { value : (null : Ref<stdgo.io_test.Io_test.T_dataAndErrorBuffer>), ok : false };
            }, _rb = __tmp__.value, _ok = __tmp__.ok;
            if (_ok && (Go.toInterface(_rb._err) != Go.toInterface(eof))) {
                _want = _rb._err;
            };
        };
        if (Go.toInterface(_err) != (Go.toInterface(_want))) {
            _t.errorf(("expected %v, got %v" : GoString), Go.toInterface(_want), Go.toInterface(_err));
        };
        if (_n != ((1 : GoInt))) {
            _t.errorf(("expected to have read 1 bytes, got %v" : GoString), Go.toInterface(_n));
        };
    }
function testTeeReader(_t:Ref<stdgo.testing.Testing.T>):Void {
        var _src = (("hello, world" : GoString) : Slice<GoByte>);
        var _dst = new Slice<GoUInt8>((_src.length : GoInt).toBasic(), 0, ...[for (i in 0 ... (_src.length : GoInt).toBasic()) (0 : GoUInt8)]);
        var _rb = stdgo.bytes.Bytes.newBuffer(_src);
        var _wb = ({} : stdgo.bytes.Bytes.Buffer);
        var _r:Reader = teeReader(Go.asInterface(_rb), Go.asInterface(_wb));
        {
            var __tmp__ = readFull(_r, _dst), _n:GoInt = __tmp__._0, _err:Error = __tmp__._1;
            if ((_err != null) || (_n != (_src.length))) {
                _t.fatalf(("ReadFull(r, dst) = %d, %v; want %d, nil" : GoString), Go.toInterface(_n), Go.toInterface(_err), Go.toInterface((_src.length)));
            };
        };
        if (!stdgo.bytes.Bytes.equal(_dst, _src)) {
            _t.errorf(("bytes read = %q want %q" : GoString), Go.toInterface(_dst), Go.toInterface(_src));
        };
        if (!stdgo.bytes.Bytes.equal(_wb.bytes(), _src)) {
            _t.errorf(("bytes written = %q want %q" : GoString), Go.toInterface(_wb.bytes()), Go.toInterface(_src));
        };
        {
            var __tmp__ = _r.read(_dst), _n:GoInt = __tmp__._0, _err:Error = __tmp__._1;
            if ((_n != (0 : GoInt)) || (Go.toInterface(_err) != Go.toInterface(eof))) {
                _t.errorf(("r.Read at EOF = %d, %v want 0, EOF" : GoString), Go.toInterface(_n), Go.toInterface(_err));
            };
        };
        _rb = stdgo.bytes.Bytes.newBuffer(_src);
        var __tmp__ = pipe(), _pr:Ref<PipeReader> = __tmp__._0, _pw:Ref<PipeWriter> = __tmp__._1;
        _pr.close();
        _r = teeReader(Go.asInterface(_rb), Go.asInterface(_pw));
        {
            var __tmp__ = readFull(_r, _dst), _n:GoInt = __tmp__._0, _err:Error = __tmp__._1;
            if ((_n != (0 : GoInt)) || (Go.toInterface(_err) != Go.toInterface(errClosedPipe))) {
                _t.errorf(("closed tee: ReadFull(r, dst) = %d, %v; want 0, EPIPE" : GoString), Go.toInterface(_n), Go.toInterface(_err));
            };
        };
    }
function testSectionReader_ReadAt(_t:Ref<stdgo.testing.Testing.T>):Void {
        var _dat:GoString = ("a long sample data, 1234567890" : GoString);
        var _tests = (new Slice<T__struct_1>(
0,
0,
({ _data : Go.str(), _off : (0 : GoInt), _n : (10 : GoInt), _bufLen : (2 : GoInt), _at : (0 : GoInt), _exp : Go.str(), _err : eof } : T__struct_1),
({ _data : _dat, _off : (0 : GoInt), _n : (_dat.length), _bufLen : (0 : GoInt), _at : (0 : GoInt), _exp : Go.str(), _err : (null : Error) } : T__struct_1),
({ _data : _dat, _off : (_dat.length), _n : (1 : GoInt), _bufLen : (1 : GoInt), _at : (0 : GoInt), _exp : Go.str(), _err : eof } : T__struct_1),
({ _data : _dat, _off : (0 : GoInt), _n : (_dat.length) + (2 : GoInt), _bufLen : (_dat.length), _at : (0 : GoInt), _exp : _dat, _err : (null : Error) } : T__struct_1),
({ _data : _dat, _off : (0 : GoInt), _n : (_dat.length), _bufLen : (_dat.length) / (2 : GoInt), _at : (0 : GoInt), _exp : (_dat.__slice__(0, (_dat.length) / (2 : GoInt)) : GoString), _err : (null : Error) } : T__struct_1),
({ _data : _dat, _off : (0 : GoInt), _n : (_dat.length), _bufLen : (_dat.length), _at : (0 : GoInt), _exp : _dat, _err : (null : Error) } : T__struct_1),
({ _data : _dat, _off : (0 : GoInt), _n : (_dat.length), _bufLen : (_dat.length) / (2 : GoInt), _at : (2 : GoInt), _exp : (_dat.__slice__((2 : GoInt), (2 : GoInt) + (_dat.length / (2 : GoInt))) : GoString), _err : (null : Error) } : T__struct_1),
({ _data : _dat, _off : (3 : GoInt), _n : (_dat.length), _bufLen : (_dat.length) / (2 : GoInt), _at : (2 : GoInt), _exp : (_dat.__slice__((5 : GoInt), (5 : GoInt) + (_dat.length / (2 : GoInt))) : GoString), _err : (null : Error) } : T__struct_1),
({ _data : _dat, _off : (3 : GoInt), _n : (_dat.length) / (2 : GoInt), _bufLen : (_dat.length / (2 : GoInt)) - (2 : GoInt), _at : (2 : GoInt), _exp : (_dat.__slice__((5 : GoInt), ((5 : GoInt) + (_dat.length / (2 : GoInt))) - (2 : GoInt)) : GoString), _err : (null : Error) } : T__struct_1),
({ _data : _dat, _off : (3 : GoInt), _n : (_dat.length) / (2 : GoInt), _bufLen : (_dat.length / (2 : GoInt)) + (2 : GoInt), _at : (2 : GoInt), _exp : (_dat.__slice__((5 : GoInt), ((5 : GoInt) + (_dat.length / (2 : GoInt))) - (2 : GoInt)) : GoString), _err : eof } : T__struct_1),
({ _data : _dat, _off : (0 : GoInt), _n : (0 : GoInt), _bufLen : (0 : GoInt), _at : (-1 : GoInt), _exp : Go.str(), _err : eof } : T__struct_1),
({ _data : _dat, _off : (0 : GoInt), _n : (0 : GoInt), _bufLen : (0 : GoInt), _at : (1 : GoInt), _exp : Go.str(), _err : eof } : T__struct_1)) : Slice<T__struct_1>);
        for (_i => _tt in _tests) {
            var _r = stdgo.strings.Strings.newReader(_tt._data);
            var _s = newSectionReader(Go.asInterface(_r), (_tt._off : GoInt64), (_tt._n : GoInt64));
            var _buf = new Slice<GoUInt8>((_tt._bufLen : GoInt).toBasic(), 0, ...[for (i in 0 ... (_tt._bufLen : GoInt).toBasic()) (0 : GoUInt8)]);
            {
                var __tmp__ = _s.readAt(_buf, (_tt._at : GoInt64)), _n:GoInt = __tmp__._0, _err:Error = __tmp__._1;
                if (((_n != (_tt._exp.length)) || (((_buf.__slice__(0, _n) : Slice<GoUInt8>) : GoString) != _tt._exp)) || (Go.toInterface(_err) != Go.toInterface(_tt._err))) {
                    _t.fatalf(("%d: ReadAt(%d) = %q, %v; expected %q, %v" : GoString), Go.toInterface(_i), Go.toInterface(_tt._at), Go.toInterface((_buf.__slice__(0, _n) : Slice<GoUInt8>)), Go.toInterface(_err), Go.toInterface(_tt._exp), Go.toInterface(_tt._err));
                };
            };
        };
    }
function testSectionReader_Seek(_t:Ref<stdgo.testing.Testing.T>):Void {
        var _br = stdgo.bytes.Bytes.newReader((("foo" : GoString) : Slice<GoByte>));
        var _sr = newSectionReader(Go.asInterface(_br), ("0" : GoInt64), (("foo" : GoString).length : GoInt64));
        for (_0 => _whence in (new Slice<GoInt>(0, 0, (0 : GoInt), (1 : GoInt), (2 : GoInt)) : Slice<GoInt>)) {
            {
                var _offset:GoInt64 = (("-3" : GoInt64) : GoInt64);
                Go.cfor(_offset <= ("4" : GoInt64), _offset++, {
                    var __tmp__ = _br.seek(_offset, _whence), _brOff:GoInt64 = __tmp__._0, _brErr:Error = __tmp__._1;
                    var __tmp__ = _sr.seek(_offset, _whence), _srOff:GoInt64 = __tmp__._0, _srErr:Error = __tmp__._1;
                    if (((_brErr != null) != (_srErr != null)) || (_brOff != _srOff)) {
                        _t.errorf(("For whence %d, offset %d: bytes.Reader.Seek = (%v, %v) != SectionReader.Seek = (%v, %v)" : GoString), Go.toInterface(_whence), Go.toInterface(_offset), Go.toInterface(_brOff), Go.toInterface(_brErr), Go.toInterface(_srErr), Go.toInterface(_srOff));
                    };
                });
            };
        };
        var __tmp__ = _sr.seek(("100" : GoInt64), (0 : GoInt)), _got:GoInt64 = __tmp__._0, _err:Error = __tmp__._1;
        if ((_err != null) || (_got != ("100" : GoInt64))) {
            _t.errorf(("Seek = %v, %v; want 100, nil" : GoString), Go.toInterface(_got), Go.toInterface(_err));
        };
        var __tmp__ = _sr.read(new Slice<GoUInt8>((10 : GoInt).toBasic(), 0, ...[for (i in 0 ... (10 : GoInt).toBasic()) (0 : GoUInt8)])), _n:GoInt = __tmp__._0, _err:Error = __tmp__._1;
        if ((_n != (0 : GoInt)) || (Go.toInterface(_err) != Go.toInterface(eof))) {
            _t.errorf(("Read = %v, %v; want 0, EOF" : GoString), Go.toInterface(_n), Go.toInterface(_err));
        };
    }
function testSectionReader_Size(_t:Ref<stdgo.testing.Testing.T>):Void {
        var _tests = (new Slice<T__struct_2>(0, 0, ({ _data : ("a long sample data, 1234567890" : GoString), _want : ("30" : GoInt64) } : T__struct_2), ({ _data : Go.str(), _want : ("0" : GoInt64) } : T__struct_2)) : Slice<T__struct_2>);
        for (_0 => _tt in _tests) {
            var _r = stdgo.strings.Strings.newReader(_tt._data);
            var _sr = newSectionReader(Go.asInterface(_r), ("0" : GoInt64), (_tt._data.length : GoInt64));
            {
                var _got:GoInt64 = _sr.size();
                if (_got != (_tt._want)) {
                    _t.errorf(("Size = %v; want %v" : GoString), Go.toInterface(_got), Go.toInterface(_tt._want));
                };
            };
        };
    }
function testSectionReader_Max(_t:Ref<stdgo.testing.Testing.T>):Void {
        var _r = stdgo.strings.Strings.newReader(("abcdef" : GoString));
        {};
        var _sr = newSectionReader(Go.asInterface(_r), ("3" : GoInt64), ("9223372036854775807" : GoInt64));
        var __tmp__ = _sr.read(new Slice<GoUInt8>((3 : GoInt).toBasic(), 0, ...[for (i in 0 ... (3 : GoInt).toBasic()) (0 : GoUInt8)])), _n:GoInt = __tmp__._0, _err:Error = __tmp__._1;
        if ((_n != (3 : GoInt)) || (_err != null)) {
            _t.errorf(("Read = %v %v, want 3, nil" : GoString), Go.toInterface(_n), Go.toInterface(_err));
        };
        {
            var __tmp__ = _sr.read(new Slice<GoUInt8>((3 : GoInt).toBasic(), 0, ...[for (i in 0 ... (3 : GoInt).toBasic()) (0 : GoUInt8)]));
            _n = __tmp__._0;
            _err = __tmp__._1;
        };
        if ((_n != (0 : GoInt)) || (Go.toInterface(_err) != Go.toInterface(eof))) {
            _t.errorf(("Read = %v, %v, want 0, EOF" : GoString), Go.toInterface(_n), Go.toInterface(_err));
        };
    }
function testCopyLargeWriter(_t:Ref<stdgo.testing.Testing.T>):Void {
        var _want:Error = errInvalidWrite;
        var _rb = ({} : stdgo.io_test.Io_test.Buffer);
        var _wb:stdgo.io_test.Io_test.T_largeWriter = (new T_largeWriter() : T_largeWriter);
        _rb.writeString(("hello, world." : GoString));
        {
            var __tmp__ = copy(Go.asInterface(_wb), Go.asInterface(_rb)), _0:GoInt64 = __tmp__._0, _err:Error = __tmp__._1;
            if (Go.toInterface(_err) != (Go.toInterface(_want))) {
                _t.errorf(("Copy error: got %v, want %v" : GoString), Go.toInterface(_err), Go.toInterface(_want));
            };
        };
        _want = stdgo.errors.Errors.new_(("largeWriterError" : GoString));
        _rb = ({} : stdgo.io_test.Io_test.Buffer);
        _wb = ({ _err : _want } : T_largeWriter);
        _rb.writeString(("hello, world." : GoString));
        {
            var __tmp__ = copy(Go.asInterface(_wb), Go.asInterface(_rb)), _1:GoInt64 = __tmp__._0, _err:Error = __tmp__._1;
            if (Go.toInterface(_err) != (Go.toInterface(_want))) {
                _t.errorf(("Copy error: got %v, want %v" : GoString), Go.toInterface(_err), Go.toInterface(_want));
            };
        };
    }
function testNopCloserWriterToForwarding(_t:Ref<stdgo.testing.Testing.T>):Void {
        for (_0 => _tc in (new GoArray<T__struct_3>(({ name : ("not a WriterTo" : GoString), _r : (null : Reader) } : T__struct_3), ({ name : ("a WriterTo" : GoString), _r : Go.asInterface(({ reader : (null : Reader), writerTo : (null : WriterTo) } : T__struct_4)) } : T__struct_3)) : GoArray<T__struct_3>)) {
            var _nc:ReadCloser = nopCloser(_tc._r);
            var __tmp__ = try {
                { value : (Go.typeAssert((Go.toInterface(_tc._r) : WriterTo)) : WriterTo), ok : true };
            } catch(_) {
                { value : (null : WriterTo), ok : false };
            }, _1 = __tmp__.value, _expected = __tmp__.ok;
            var __tmp__ = try {
                { value : (Go.typeAssert((Go.toInterface(_nc) : WriterTo)) : WriterTo), ok : true };
            } catch(_) {
                { value : (null : WriterTo), ok : false };
            }, _2 = __tmp__.value, _got = __tmp__.ok;
            if (_expected != (_got)) {
                _t.errorf(("NopCloser incorrectly forwards WriterTo for %s, got %t want %t" : GoString), Go.toInterface(_tc.name), Go.toInterface(_got), Go.toInterface(_expected));
            };
        };
    }
function testOffsetWriter_Seek(_t:Ref<stdgo.testing.Testing.T>):Void {
        var __deferstack__:Array<Void -> Void> = [];
        var _tmpfilename:GoString = ("TestOffsetWriter_Seek" : GoString);
        try {
            var __tmp__ = stdgo.os.Os.createTemp(_t.tempDir(), _tmpfilename), _tmpfile:Ref<stdgo.os.Os.File> = __tmp__._0, _err:Error = __tmp__._1;
            if ((_err != null) || (_tmpfile == null)) {
                _t.fatalf(("CreateTemp(%s) failed: %v" : GoString), Go.toInterface(_tmpfilename), Go.toInterface(_err));
            };
            __deferstack__.unshift(() -> _tmpfile.close());
            var _w = newOffsetWriter(Go.asInterface(_tmpfile), ("0" : GoInt64));
            _t.run(("errWhence" : GoString), function(_t:Ref<stdgo.testing.Testing.T>):Void {
                for (_0 => _whence in (new Slice<GoInt>(0, 0, (-3 : GoInt), (-2 : GoInt), (-1 : GoInt), (3 : GoInt), (4 : GoInt), (5 : GoInt)) : Slice<GoInt>)) {
                    var _offset:GoInt64 = ("0" : GoInt64);
                    var __tmp__ = _w.seek(_offset, _whence), _gotOff:GoInt64 = __tmp__._0, _gotErr:Error = __tmp__._1;
                    if ((_gotOff != ("0" : GoInt64)) || (Go.toInterface(_gotErr) != Go.toInterface(errWhence))) {
                        _t.errorf(("For whence %d, offset %d, OffsetWriter.Seek got: (%d, %v), want: (%d, %v)" : GoString), Go.toInterface(_whence), Go.toInterface(_offset), Go.toInterface(_gotOff), Go.toInterface(_gotErr), Go.toInterface((0 : GoInt)), Go.toInterface(errWhence));
                    };
                };
            });
            _t.run(("errOffset" : GoString), function(_t:Ref<stdgo.testing.Testing.T>):Void {
                for (_0 => _whence in (new Slice<GoInt>(0, 0, (0 : GoInt), (1 : GoInt)) : Slice<GoInt>)) {
                    {
                        var _offset:GoInt64 = (("-3" : GoInt64) : GoInt64);
                        Go.cfor(_offset < ("0" : GoInt64), _offset++, {
                            var __tmp__ = _w.seek(_offset, _whence), _gotOff:GoInt64 = __tmp__._0, _gotErr:Error = __tmp__._1;
                            if ((_gotOff != ("0" : GoInt64)) || (Go.toInterface(_gotErr) != Go.toInterface(errOffset))) {
                                _t.errorf(("For whence %d, offset %d, OffsetWriter.Seek got: (%d, %v), want: (%d, %v)" : GoString), Go.toInterface(_whence), Go.toInterface(_offset), Go.toInterface(_gotOff), Go.toInterface(_gotErr), Go.toInterface((0 : GoInt)), Go.toInterface(errOffset));
                            };
                        });
                    };
                };
            });
            _t.run(("normal" : GoString), function(_t:Ref<stdgo.testing.Testing.T>):Void {
                var _tests = (new Slice<T__struct_5>(0, 0, ({ _offset : ("1" : GoInt64), _whence : (0 : GoInt), _returnOff : ("1" : GoInt64) } : T__struct_5), ({ _offset : ("2" : GoInt64), _whence : (0 : GoInt), _returnOff : ("2" : GoInt64) } : T__struct_5), ({ _offset : ("3" : GoInt64), _whence : (0 : GoInt), _returnOff : ("3" : GoInt64) } : T__struct_5), ({ _offset : ("1" : GoInt64), _whence : (1 : GoInt), _returnOff : ("4" : GoInt64) } : T__struct_5), ({ _offset : ("2" : GoInt64), _whence : (1 : GoInt), _returnOff : ("6" : GoInt64) } : T__struct_5), ({ _offset : ("3" : GoInt64), _whence : (1 : GoInt), _returnOff : ("9" : GoInt64) } : T__struct_5)) : Slice<T__struct_5>);
                for (_idx => _tt in _tests) {
                    var __tmp__ = _w.seek(_tt._offset, _tt._whence), _gotOff:GoInt64 = __tmp__._0, _gotErr:Error = __tmp__._1;
                    if ((_gotOff != _tt._returnOff) || (_gotErr != null)) {
                        _t.errorf(("%d:: For whence %d, offset %d, OffsetWriter.Seek got: (%d, %v), want: (%d, <nil>)" : GoString), Go.toInterface(_idx + (1 : GoInt)), Go.toInterface(_tt._whence), Go.toInterface(_tt._offset), Go.toInterface(_gotOff), Go.toInterface(_gotErr), Go.toInterface(_tt._returnOff));
                    };
                };
            });
            for (defer in __deferstack__) {
                defer();
            };
            {
                for (defer in __deferstack__) {
                    defer();
                };
                if (Go.recover_exception != null) throw Go.recover_exception;
                return;
            };
        } catch(__exception__) {
            var exe:Dynamic = __exception__.native;
            if ((exe is haxe.ValueException)) exe = exe.value;
            Go.recover_exception = exe;
            for (defer in __deferstack__) {
                defer();
            };
            if (Go.recover_exception != null) throw Go.recover_exception;
            return;
        };
    }
function testOffsetWriter_WriteAt(_t:Ref<stdgo.testing.Testing.T>):Void {
        {};
        var _contentSize:GoInt64 = (("0123456789ABCDEF" : GoString).length : GoInt64);
        var __tmp__ = stdgo.os.Os.mkdirTemp(_t.tempDir(), ("TestOffsetWriter_WriteAt" : GoString)), _tmpdir:GoString = __tmp__._0, _err:Error = __tmp__._1;
        if (_err != null) {
            _t.fatal(Go.toInterface(_err));
        };
        var _work:(GoInt64, GoInt64) -> Void = function(_off:GoInt64, _at:GoInt64):Void {
            var __deferstack__:Array<Void -> Void> = [];
            var _position:GoString = stdgo.fmt.Fmt.sprintf(("off_%d_at_%d" : GoString), Go.toInterface(_off), Go.toInterface(_at));
            try {
                var __tmp__ = stdgo.os.Os.createTemp(_tmpdir, _position), _tmpfile:Ref<stdgo.os.Os.File> = __tmp__._0, _err:Error = __tmp__._1;
                if ((_err != null) || (_tmpfile == null)) {
                    _t.fatalf(("CreateTemp(%s) failed: %v" : GoString), Go.toInterface(_position), Go.toInterface(_err));
                };
                __deferstack__.unshift(() -> _tmpfile.close());
                var _writeN:GoInt64 = (0 : GoInt64);
                var _wg:stdgo.sync.Sync.WaitGroup = ({} : stdgo.sync.Sync.WaitGroup);
                for (_step => _value in (("0123456789ABCDEF" : GoString) : Slice<GoByte>)) {
                    _wg.add((1 : GoInt));
                    Go.routine(() -> {
                        var a = function(_wg:Ref<stdgo.sync.Sync.WaitGroup>, _tmpfile:Ref<stdgo.os.Os.File>, _value:GoByte, _off:GoInt64, _at:GoInt64, _step:GoInt):Void {
                            var __deferstack__:Array<Void -> Void> = [];
                            __deferstack__.unshift(() -> _wg.done());
                            try {
                                var _w = newOffsetWriter(Go.asInterface(_tmpfile), _off);
                                var __tmp__ = _w.writeAt((new Slice<GoUInt8>(0, 0, _value) : Slice<GoUInt8>), _at + (_step : GoInt64)), _n:GoInt = __tmp__._0, _e:Error = __tmp__._1;
                                if (_e != null) {
                                    _t.errorf(("WriteAt failed. off: %d, at: %d, step: %d\n error: %v" : GoString), Go.toInterface(_off), Go.toInterface(_at), Go.toInterface(_step), Go.toInterface(_e));
                                };
                                stdgo.sync.atomic.Atomic.addInt64(Go.pointer(_writeN), (_n : GoInt64));
                                for (defer in __deferstack__) {
                                    defer();
                                };
                                {
                                    for (defer in __deferstack__) {
                                        defer();
                                    };
                                    if (Go.recover_exception != null) throw Go.recover_exception;
                                    return;
                                };
                            } catch(__exception__) {
                                var exe:Dynamic = __exception__.native;
                                if ((exe is haxe.ValueException)) exe = exe.value;
                                Go.recover_exception = exe;
                                for (defer in __deferstack__) {
                                    defer();
                                };
                                if (Go.recover_exception != null) throw Go.recover_exception;
                                return;
                            };
                        };
                        a((_wg : Ref<stdgo.sync.Sync.WaitGroup>), _tmpfile, _value, _off, _at, _step);
                    });
                };
                _wg.wait_();
                var _buf = new Slice<GoUInt8>((_contentSize + ("1" : GoInt64) : GoInt).toBasic(), 0, ...[for (i in 0 ... (_contentSize + ("1" : GoInt64) : GoInt).toBasic()) (0 : GoUInt8)]);
                var __tmp__ = _tmpfile.readAt(_buf, _off + _at), _readN:GoInt = __tmp__._0, _err:Error = __tmp__._1;
                if (Go.toInterface(_err) != (Go.toInterface(eof))) {
                    _t.fatalf(("ReadAt failed: %v" : GoString), Go.toInterface(_err));
                };
                var _readContent:GoString = ((_buf.__slice__(0, _contentSize) : Slice<GoUInt8>) : GoString);
                if (((_writeN != (_readN : GoInt64)) || (_writeN != _contentSize)) || (_readContent != ("0123456789ABCDEF" : GoString))) {
                    _t.fatalf(("%s:: WriteAt(%s, %d) error. \ngot n: %v, content: %s \nexpected n: %v, content: %v" : GoString), Go.toInterface(_position), Go.toInterface(("0123456789ABCDEF" : GoString)), Go.toInterface(_at), Go.toInterface(_readN), Go.toInterface(_readContent), Go.toInterface(_contentSize), Go.toInterface(("0123456789ABCDEF" : GoString)));
                };
                for (defer in __deferstack__) {
                    defer();
                };
                {
                    for (defer in __deferstack__) {
                        defer();
                    };
                    if (Go.recover_exception != null) throw Go.recover_exception;
                    return;
                };
            } catch(__exception__) {
                var exe:Dynamic = __exception__.native;
                if ((exe is haxe.ValueException)) exe = exe.value;
                Go.recover_exception = exe;
                for (defer in __deferstack__) {
                    defer();
                };
                if (Go.recover_exception != null) throw Go.recover_exception;
                return;
            };
        };
        {
            var _off:GoInt64 = (("0" : GoInt64) : GoInt64);
            Go.cfor(_off < ("2" : GoInt64), _off++, {
                {
                    var _at:GoInt64 = (("0" : GoInt64) : GoInt64);
                    Go.cfor(_at < ("2" : GoInt64), _at++, {
                        _work(_off, _at);
                    });
                };
            });
        };
    }
function testOffsetWriter_Write(_t:Ref<stdgo.testing.Testing.T>):Void {
        {};
        var _contentSize:GoInt = (("0123456789ABCDEF" : GoString).length);
        var _tmpdir:GoString = _t.tempDir();
        var _makeOffsetWriter:GoString -> { var _0 : Ref<OffsetWriter>; var _1 : Ref<stdgo.os.Os.File>; } = function(_name:GoString):{ var _0 : Ref<OffsetWriter>; var _1 : Ref<stdgo.os.Os.File>; } {
            var _tmpfilename:GoString = ("TestOffsetWriter_Write_" : GoString) + _name;
            var __tmp__ = stdgo.os.Os.createTemp(_tmpdir, _tmpfilename), _tmpfile:Ref<stdgo.os.Os.File> = __tmp__._0, _err:Error = __tmp__._1;
            if ((_err != null) || (_tmpfile == null)) {
                _t.fatalf(("CreateTemp(%s) failed: %v" : GoString), Go.toInterface(_tmpfilename), Go.toInterface(_err));
            };
            return { _0 : newOffsetWriter(Go.asInterface(_tmpfile), ("0" : GoInt64)), _1 : _tmpfile };
        };
        var _checkContent = function(_name:GoString, _f:Ref<stdgo.os.Os.File>):Void {
            var _buf = new Slice<GoUInt8>((_contentSize + (1 : GoInt) : GoInt).toBasic(), 0, ...[for (i in 0 ... (_contentSize + (1 : GoInt) : GoInt).toBasic()) (0 : GoUInt8)]);
            var __tmp__ = _f.readAt(_buf, ("0" : GoInt64)), _readN:GoInt = __tmp__._0, _err:Error = __tmp__._1;
            if (Go.toInterface(_err) != (Go.toInterface(eof))) {
                _t.fatalf(("ReadAt failed, err: %v" : GoString), Go.toInterface(_err));
            };
            var _readContent:GoString = ((_buf.__slice__(0, _contentSize) : Slice<GoUInt8>) : GoString);
            if ((_readN != _contentSize) || (_readContent != ("0123456789ABCDEF" : GoString))) {
                _t.fatalf(("%s error. \ngot n: %v, content: %s \nexpected n: %v, content: %v" : GoString), Go.toInterface(_name), Go.toInterface(_readN), Go.toInterface(_readContent), Go.toInterface(_contentSize), Go.toInterface(("0123456789ABCDEF" : GoString)));
            };
        };
        var _name:GoString = ("" : GoString);
        _name = ("Write" : GoString);
        _t.run(_name, function(_t:Ref<stdgo.testing.Testing.T>):Void {
            var __deferstack__:Array<Void -> Void> = [];
            var __tmp__ = _makeOffsetWriter(_name), _w:Ref<OffsetWriter> = __tmp__._0, _f:Ref<stdgo.os.Os.File> = __tmp__._1;
            try {
                __deferstack__.unshift(() -> _f.close());
                for (_0 => _value in (("0123456789ABCDEF" : GoString) : Slice<GoByte>)) {
                    var __tmp__ = _w.write((new Slice<GoUInt8>(0, 0, _value) : Slice<GoUInt8>)), _n:GoInt = __tmp__._0, _err:Error = __tmp__._1;
                    if (_err != null) {
                        _t.fatalf(("Write failed, n: %d, err: %v" : GoString), Go.toInterface(_n), Go.toInterface(_err));
                    };
                };
                _checkContent(_name, _f);
                _name = ("Copy" : GoString);
                var __tmp__ = _makeOffsetWriter(_name), _w2:Ref<OffsetWriter> = __tmp__._0, _f2:Ref<stdgo.os.Os.File> = __tmp__._1;
                __deferstack__.unshift(() -> _f2.close());
                copy(Go.asInterface(_w2), Go.asInterface(_f));
                _checkContent(_name, _f2);
                for (defer in __deferstack__) {
                    defer();
                };
                {
                    for (defer in __deferstack__) {
                        defer();
                    };
                    if (Go.recover_exception != null) throw Go.recover_exception;
                    return;
                };
            } catch(__exception__) {
                var exe:Dynamic = __exception__.native;
                if ((exe is haxe.ValueException)) exe = exe.value;
                Go.recover_exception = exe;
                for (defer in __deferstack__) {
                    defer();
                };
                if (Go.recover_exception != null) throw Go.recover_exception;
                return;
            };
        });
        _name = ("Write_Of_Copy_WriteTo" : GoString);
        _t.run(_name, function(_t:Ref<stdgo.testing.Testing.T>):Void {
            var __deferstack__:Array<Void -> Void> = [];
            var __tmp__ = _makeOffsetWriter(_name), _w:Ref<OffsetWriter> = __tmp__._0, _f:Ref<stdgo.os.Os.File> = __tmp__._1;
            try {
                __deferstack__.unshift(() -> _f.close());
                copy(Go.asInterface(_w), Go.asInterface(stdgo.strings.Strings.newReader(("0123456789ABCDEF" : GoString))));
                _checkContent(_name, _f);
                for (defer in __deferstack__) {
                    defer();
                };
                {
                    for (defer in __deferstack__) {
                        defer();
                    };
                    if (Go.recover_exception != null) throw Go.recover_exception;
                    return;
                };
            } catch(__exception__) {
                var exe:Dynamic = __exception__.native;
                if ((exe is haxe.ValueException)) exe = exe.value;
                Go.recover_exception = exe;
                for (defer in __deferstack__) {
                    defer();
                };
                if (Go.recover_exception != null) throw Go.recover_exception;
                return;
            };
        });
    }
function testMultiReader(_t:Ref<stdgo.testing.Testing.T>):Void {
        var _mr:Reader = (null : Reader);
        var _buf:Slice<GoByte> = (null : Slice<GoUInt8>);
        var _nread:GoInt = (0 : GoInt);
        var _withFooBar:(() -> Void) -> Void = function(_tests:() -> Void):Void {
            var _r1 = stdgo.strings.Strings.newReader(("foo " : GoString));
            var _r2 = stdgo.strings.Strings.newReader(Go.str());
            var _r3 = stdgo.strings.Strings.newReader(("bar" : GoString));
            _mr = multiReader(Go.asInterface(_r1), Go.asInterface(_r2), Go.asInterface(_r3));
            _buf = new Slice<GoUInt8>((20 : GoInt).toBasic(), 0, ...[for (i in 0 ... (20 : GoInt).toBasic()) (0 : GoUInt8)]);
            _tests();
        };
        var _expectRead:(GoInt, GoString, Error) -> Void = function(_size:GoInt, _expected:GoString, _eerr:Error):Void {
            _nread++;
            var __tmp__ = _mr.read((_buf.__slice__((0 : GoInt), _size) : Slice<GoUInt8>)), _n:GoInt = __tmp__._0, _gerr:Error = __tmp__._1;
            if (_n != ((_expected.length))) {
                _t.errorf(("#%d, expected %d bytes; got %d" : GoString), Go.toInterface(_nread), Go.toInterface((_expected.length)), Go.toInterface(_n));
            };
            var _got:GoString = ((_buf.__slice__((0 : GoInt), _n) : Slice<GoUInt8>) : GoString);
            if (_got != (_expected)) {
                _t.errorf(("#%d, expected %q; got %q" : GoString), Go.toInterface(_nread), Go.toInterface(_expected), Go.toInterface(_got));
            };
            if (Go.toInterface(_gerr) != (Go.toInterface(_eerr))) {
                _t.errorf(("#%d, expected error %v; got %v" : GoString), Go.toInterface(_nread), Go.toInterface(_eerr), Go.toInterface(_gerr));
            };
            _buf = (_buf.__slice__(_n) : Slice<GoUInt8>);
        };
        _withFooBar(function():Void {
            _expectRead((2 : GoInt), ("fo" : GoString), (null : Error));
            _expectRead((5 : GoInt), ("o " : GoString), (null : Error));
            _expectRead((5 : GoInt), ("bar" : GoString), (null : Error));
            _expectRead((5 : GoInt), Go.str(), eof);
        });
        _withFooBar(function():Void {
            _expectRead((4 : GoInt), ("foo " : GoString), (null : Error));
            _expectRead((1 : GoInt), ("b" : GoString), (null : Error));
            _expectRead((3 : GoInt), ("ar" : GoString), (null : Error));
            _expectRead((1 : GoInt), Go.str(), eof);
        });
        _withFooBar(function():Void {
            _expectRead((5 : GoInt), ("foo " : GoString), (null : Error));
        });
    }
function testMultiReaderAsWriterTo(_t:Ref<stdgo.testing.Testing.T>):Void {
        var _mr:Reader = multiReader(Go.asInterface(stdgo.strings.Strings.newReader(("foo " : GoString))), multiReader(Go.asInterface(stdgo.strings.Strings.newReader(Go.str())), Go.asInterface(stdgo.strings.Strings.newReader(("bar" : GoString)))));
        var __tmp__ = try {
            { value : (Go.typeAssert((Go.toInterface(_mr) : WriterTo)) : WriterTo), ok : true };
        } catch(_) {
            { value : (null : WriterTo), ok : false };
        }, _mrAsWriterTo = __tmp__.value, _ok = __tmp__.ok;
        if (!_ok) {
            _t.fatalf(("expected cast to WriterTo to succeed" : GoString));
        };
        var _sink = ((new stdgo.strings.Strings.Builder() : stdgo.strings.Strings.Builder) : Ref<stdgo.strings.Strings.Builder>);
        var __tmp__ = _mrAsWriterTo.writeTo(Go.asInterface(_sink)), _n:GoInt64 = __tmp__._0, _err:Error = __tmp__._1;
        if (_err != null) {
            _t.fatalf(("expected no error; got %v" : GoString), Go.toInterface(_err));
        };
        if (_n != (("7" : GoInt64))) {
            _t.errorf(("expected read 7 bytes; got %d" : GoString), Go.toInterface(_n));
        };
        {
            var _result:GoString = (_sink.string() : GoString);
            if (_result != (("foo bar" : GoString))) {
                _t.errorf(("expected \"foo bar\"; got %q" : GoString), Go.toInterface(_result));
            };
        };
    }
function testMultiWriter(_t:Ref<stdgo.testing.Testing.T>):Void {
        var _sink = ({} : stdgo.bytes.Bytes.Buffer);
        _testMultiWriter(_t, Go.asInterface(({ writer : Go.asInterface(_sink), stringer : Go.asInterface(_sink) } : T__struct_6)));
    }
function testMultiWriter_String(_t:Ref<stdgo.testing.Testing.T>):Void {
        _testMultiWriter(_t, Go.asInterface(({} : stdgo.bytes.Bytes.Buffer)));
    }
/**
    
    
    
**/
@:structInit @:using(stdgo.io_test.Io_test.T_testMultiWriter_WriteStringSingleAlloc_0___localname___simpleWriter_static_extension) class T_testMultiWriter_WriteStringSingleAlloc_0___localname___simpleWriter {
    @:embedded
    public var writer : Writer = (null : Writer);
    public function new(?writer:Writer) {
        if (writer != null) this.writer = writer;
    }
    public function __underlying__() return Go.toInterface(this);
    @:embedded
    public function write(_b:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : Error; } return writer.write(_b);
    public function __copy__() {
        return new T_testMultiWriter_WriteStringSingleAlloc_0___localname___simpleWriter(writer);
    }
}
/**
    // Test that a multiWriter.WriteString calls results in at most 1 allocation,
    // even if multiple targets don't support WriteString.
**/
function testMultiWriter_WriteStringSingleAlloc(_t:Ref<stdgo.testing.Testing.T>):Void {
        var _0:stdgo.bytes.Bytes.Buffer = ({} : stdgo.bytes.Bytes.Buffer), _1:stdgo.bytes.Bytes.Buffer = ({} : stdgo.bytes.Bytes.Buffer), _sink2:stdgo.bytes.Bytes.Buffer = _1, _sink1:stdgo.bytes.Bytes.Buffer = _0;
        {};
        var _mw:Writer = multiWriter(Go.asInterface((new T_testMultiWriter_WriteStringSingleAlloc_0___localname___simpleWriter(Go.asInterface((_sink1 : Ref<stdgo.bytes.Bytes.Buffer>))) : T_testMultiWriter_WriteStringSingleAlloc_0___localname___simpleWriter)), Go.asInterface((new T_testMultiWriter_WriteStringSingleAlloc_0___localname___simpleWriter(Go.asInterface((_sink2 : Ref<stdgo.bytes.Bytes.Buffer>))) : T_testMultiWriter_WriteStringSingleAlloc_0___localname___simpleWriter)));
        var _allocs:GoInt = (stdgo.testing.Testing.allocsPerRun((1000 : GoInt), function():Void {
            writeString(_mw, ("foo" : GoString));
        }) : GoInt);
        if (_allocs != ((1 : GoInt))) {
            _t.errorf(("num allocations = %d; want 1" : GoString), Go.toInterface(_allocs));
        };
    }
function testMultiWriter_StringCheckCall(_t:Ref<stdgo.testing.Testing.T>):Void {
        var _c:T_writeStringChecker = ({} : stdgo.io_test.Io_test.T_writeStringChecker);
        var _mw:Writer = multiWriter(Go.asInterface((_c : Ref<stdgo.io_test.Io_test.T_writeStringChecker>)));
        writeString(_mw, ("foo" : GoString));
        if (!_c._called) {
            _t.error(Go.toInterface(("did not see WriteString call to writeStringChecker" : GoString)));
        };
    }
private function _testMultiWriter(_t:Ref<stdgo.testing.Testing.T>, _sink:T__interface_0):Void {
        var _sha1:stdgo.hash.Hash.Hash = stdgo.crypto.sha1.Sha1.new_();
        var _mw:Writer = multiWriter(_sha1, _sink);
        var _sourceString:GoString = ("My input text." : GoString);
        var _source = stdgo.strings.Strings.newReader(_sourceString);
        var __tmp__ = copy(_mw, Go.asInterface(_source)), _written:GoInt64 = __tmp__._0, _err:Error = __tmp__._1;
        if (_written != ((_sourceString.length : GoInt64))) {
            _t.errorf(("short write of %d, not %d" : GoString), Go.toInterface(_written), Go.toInterface((_sourceString.length)));
        };
        if (_err != null) {
            _t.errorf(("unexpected error: %v" : GoString), Go.toInterface(_err));
        };
        var _sha1hex:GoString = stdgo.fmt.Fmt.sprintf(("%x" : GoString), Go.toInterface(_sha1.sum((null : Slice<GoUInt8>))));
        if (_sha1hex != (("01cb303fa8c30a64123067c5aa6284ba7ec2d31b" : GoString))) {
            _t.error(Go.toInterface(("incorrect sha1 value" : GoString)));
        };
        if ((_sink.string() : GoString) != (_sourceString)) {
            _t.errorf(("expected %q; got %q" : GoString), Go.toInterface(_sourceString), Go.toInterface((_sink.string() : GoString)));
        };
    }
/**
    // Test that MultiWriter properly flattens chained multiWriters.
**/
function testMultiWriterSingleChainFlatten(_t:Ref<stdgo.testing.Testing.T>):Void {
        var _pc = new Slice<GoUIntptr>((1000 : GoInt).toBasic(), 0, ...[for (i in 0 ... (1000 : GoInt).toBasic()) (0 : GoUIntptr)]);
        var _n:GoInt = stdgo.runtime.Runtime.callers((0 : GoInt), _pc);
        var _myDepth:GoInt = _callDepth((_pc.__slice__(0, _n) : Slice<GoUIntptr>));
        var _writeDepth:GoInt = (0 : GoInt);
        var _w:Writer = multiWriter(Go.asInterface((function(_p:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } {
            var _n:GoInt = stdgo.runtime.Runtime.callers((1 : GoInt), _pc);
            _writeDepth = _writeDepth + (_callDepth((_pc.__slice__(0, _n) : Slice<GoUIntptr>)));
            return { _0 : (0 : GoInt), _1 : (null : Error) };
        } : T_writerFunc)));
        var _mw:Writer = _w;
        {
            var _i:GoInt = (0 : GoInt);
            Go.cfor(_i < (100 : GoInt), _i++, {
                _mw = multiWriter(_w);
            });
        };
        _mw = multiWriter(_w, _mw, _w, _mw);
        _mw.write((null : Slice<GoUInt8>));
        if (_writeDepth != ((4 : GoInt) * (_myDepth + (2 : GoInt)))) {
            _t.errorf(("multiWriter did not flatten chained multiWriters: expected writeDepth %d, got %d" : GoString), Go.toInterface((4 : GoInt) * (_myDepth + (2 : GoInt))), Go.toInterface(_writeDepth));
        };
    }
function testMultiWriterError(_t:Ref<stdgo.testing.Testing.T>):Void {
        var _f1:stdgo.io_test.Io_test.T_writerFunc = (function(_p:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } {
            return { _0 : (_p.length) / (2 : GoInt), _1 : errShortWrite };
        } : T_writerFunc);
        var _f2:stdgo.io_test.Io_test.T_writerFunc = (function(_p:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } {
            _t.errorf(("MultiWriter called f2.Write" : GoString));
            return { _0 : (_p.length), _1 : (null : Error) };
        } : T_writerFunc);
        var _w:Writer = multiWriter(Go.asInterface(_f1), Go.asInterface(_f2));
        var __tmp__ = _w.write(new Slice<GoUInt8>((100 : GoInt).toBasic(), 0, ...[for (i in 0 ... (100 : GoInt).toBasic()) (0 : GoUInt8)])), _n:GoInt = __tmp__._0, _err:Error = __tmp__._1;
        if ((_n != (50 : GoInt)) || (Go.toInterface(_err) != Go.toInterface(errShortWrite))) {
            _t.errorf(("Write = %d, %v, want 50, ErrShortWrite" : GoString), Go.toInterface(_n), Go.toInterface(_err));
        };
    }
/**
    // Test that MultiReader copies the input slice and is insulated from future modification.
**/
function testMultiReaderCopy(_t:Ref<stdgo.testing.Testing.T>):Void {
        var _slice = (new Slice<Reader>(0, 0, Go.asInterface(stdgo.strings.Strings.newReader(("hello world" : GoString)))) : Slice<Reader>);
        var _r:Reader = multiReader(..._slice.__toArray__());
        _slice[(0 : GoInt)] = (null : Reader);
        var __tmp__ = readAll(_r), _data:Slice<GoUInt8> = __tmp__._0, _err:Error = __tmp__._1;
        if ((_err != null) || ((_data : GoString) != ("hello world" : GoString))) {
            _t.errorf(("ReadAll() = %q, %v, want %q, nil" : GoString), Go.toInterface(_data), Go.toInterface(_err), Go.toInterface(("hello world" : GoString)));
        };
    }
/**
    // Test that MultiWriter copies the input slice and is insulated from future modification.
**/
function testMultiWriterCopy(_t:Ref<stdgo.testing.Testing.T>):Void {
        var _buf:stdgo.strings.Strings.Builder = ({} : stdgo.strings.Strings.Builder);
        var _slice = (new Slice<Writer>(0, 0, Go.asInterface((_buf : Ref<stdgo.strings.Strings.Builder>))) : Slice<Writer>);
        var _w:Writer = multiWriter(..._slice.__toArray__());
        _slice[(0 : GoInt)] = (null : Writer);
        var __tmp__ = _w.write((("hello world" : GoString) : Slice<GoByte>)), _n:GoInt = __tmp__._0, _err:Error = __tmp__._1;
        if ((_err != null) || (_n != (11 : GoInt))) {
            _t.errorf(("Write(`hello world`) = %d, %v, want 11, nil" : GoString), Go.toInterface(_n), Go.toInterface(_err));
        };
        if ((_buf.string() : GoString) != (("hello world" : GoString))) {
            _t.errorf(("buf.String() = %q, want %q" : GoString), Go.toInterface((_buf.string() : GoString)), Go.toInterface(("hello world" : GoString)));
        };
    }
/**
    // callDepth returns the logical call depth for the given PCs.
**/
private function _callDepth(_callers:Slice<GoUIntptr>):GoInt {
        var _depth:GoInt = (0 : GoInt);
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
function testMultiReaderFlatten(_t:Ref<stdgo.testing.Testing.T>):Void {
        var _pc = new Slice<GoUIntptr>((1000 : GoInt).toBasic(), 0, ...[for (i in 0 ... (1000 : GoInt).toBasic()) (0 : GoUIntptr)]);
        var _n:GoInt = stdgo.runtime.Runtime.callers((0 : GoInt), _pc);
        var _myDepth:GoInt = _callDepth((_pc.__slice__(0, _n) : Slice<GoUIntptr>));
        var _readDepth:GoInt = (0 : GoInt);
        var _r:Reader = multiReader(Go.asInterface((function(_p:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } {
            var _n:GoInt = stdgo.runtime.Runtime.callers((1 : GoInt), _pc);
            _readDepth = _callDepth((_pc.__slice__(0, _n) : Slice<GoUIntptr>));
            return { _0 : (0 : GoInt), _1 : stdgo.errors.Errors.new_(("irrelevant" : GoString)) };
        } : T_readerFunc)));
        {
            var _i:GoInt = (0 : GoInt);
            Go.cfor(_i < (100 : GoInt), _i++, {
                _r = multiReader(_r);
            });
        };
        _r.read((null : Slice<GoUInt8>));
        if (_readDepth != (_myDepth + (2 : GoInt))) {
            _t.errorf(("multiReader did not flatten chained multiReaders: expected readDepth %d, got %d" : GoString), Go.toInterface(_myDepth + (2 : GoInt)), Go.toInterface(_readDepth));
        };
    }
/**
    // This used to yield bytes forever; issue 16795.
**/
function testMultiReaderSingleByteWithEOF(_t:Ref<stdgo.testing.Testing.T>):Void {
        var __tmp__ = readAll(limitReader(multiReader(Go.asInterface(((97 : stdgo.io_test.Io_test.T_byteAndEOFReader) : T_byteAndEOFReader)), Go.asInterface(((98 : stdgo.io_test.Io_test.T_byteAndEOFReader) : T_byteAndEOFReader))), ("10" : GoInt64))), _got:Slice<GoUInt8> = __tmp__._0, _err:Error = __tmp__._1;
        if (_err != null) {
            _t.fatal(Go.toInterface(_err));
        };
        {};
        if ((_got : GoString) != (("ab" : GoString))) {
            _t.errorf(("got %q; want %q" : GoString), Go.toInterface(_got), Go.toInterface(("ab" : GoString)));
        };
    }
/**
    // Test that a reader returning (n, EOF) at the end of a MultiReader
    // chain continues to return EOF on its final read, rather than
    // yielding a (0, EOF).
**/
function testMultiReaderFinalEOF(_t:Ref<stdgo.testing.Testing.T>):Void {
        var _r:Reader = multiReader(Go.asInterface(stdgo.bytes.Bytes.newReader((null : Slice<GoUInt8>))), Go.asInterface(((97 : stdgo.io_test.Io_test.T_byteAndEOFReader) : T_byteAndEOFReader)));
        var _buf = new Slice<GoUInt8>((2 : GoInt).toBasic(), 0, ...[for (i in 0 ... (2 : GoInt).toBasic()) (0 : GoUInt8)]);
        var __tmp__ = _r.read(_buf), _n:GoInt = __tmp__._0, _err:Error = __tmp__._1;
        if ((_n != (1 : GoInt)) || (Go.toInterface(_err) != Go.toInterface(eof))) {
            _t.errorf(("got %v, %v; want 1, EOF" : GoString), Go.toInterface(_n), Go.toInterface(_err));
        };
    }
function testMultiReaderFreesExhaustedReaders(_t:Ref<stdgo.testing.Testing.T>):Void {
        var _mr:Reader = (null : Reader);
        var _closed = new Chan<T_wantedAndErrReader>(0, () -> ({} : T_wantedAndErrReader));
        {
            var a = function():Void {
                var _buf1 = stdgo.bytes.Bytes.newReader((("foo" : GoString) : Slice<GoByte>));
                var _buf2 = stdgo.bytes.Bytes.newReader((("bar" : GoString) : Slice<GoByte>));
                _mr = multiReader(Go.asInterface(_buf1), Go.asInterface(_buf2));
                stdgo.runtime.Runtime.setFinalizer(Go.toInterface(Go.asInterface(_buf1)), Go.toInterface(function(_0:Ref<stdgo.bytes.Bytes.Reader>):Void {
                    if (_closed != null) _closed.__close__();
                }));
            };
            a();
        };
        var _buf = new Slice<GoUInt8>((4 : GoInt).toBasic(), 0, ...[for (i in 0 ... (4 : GoInt).toBasic()) (0 : GoUInt8)]);
        {
            var __tmp__ = readFull(_mr, _buf), _n:GoInt = __tmp__._0, _err:Error = __tmp__._1;
            if ((_err != null) || ((_buf : GoString) != ("foob" : GoString))) {
                _t.fatalf(("ReadFull = %d (%q), %v; want 3, \"foo\", nil" : GoString), Go.toInterface(_n), Go.toInterface((_buf.__slice__(0, _n) : Slice<GoUInt8>)), Go.toInterface(_err));
            };
        };
        stdgo.runtime.Runtime.gc();
        Go.select([stdgo.time.Time.after((("5000000000" : GoInt64) : stdgo.time.Time.Duration)).__get__() => {
            _t.fatal(Go.toInterface(("timeout waiting for collection of buf1" : GoString)));
        }, _closed.__get__() => {}]);
        {
            var __tmp__ = readFull(_mr, (_buf.__slice__(0, (2 : GoInt)) : Slice<GoUInt8>)), _n:GoInt = __tmp__._0, _err:Error = __tmp__._1;
            if ((_err != null) || (((_buf.__slice__(0, (2 : GoInt)) : Slice<GoUInt8>) : GoString) != ("ar" : GoString))) {
                _t.fatalf(("ReadFull = %d (%q), %v; want 2, \"ar\", nil" : GoString), Go.toInterface(_n), Go.toInterface((_buf.__slice__(0, _n) : Slice<GoUInt8>)), Go.toInterface(_err));
            };
        };
    }
function testInterleavedMultiReader(_t:Ref<stdgo.testing.Testing.T>):Void {
        var _r1 = stdgo.strings.Strings.newReader(("123" : GoString));
        var _r2 = stdgo.strings.Strings.newReader(("45678" : GoString));
        var _mr1:Reader = multiReader(Go.asInterface(_r1), Go.asInterface(_r2));
        var _mr2:Reader = multiReader(_mr1);
        var _buf = new Slice<GoUInt8>((4 : GoInt).toBasic(), 0, ...[for (i in 0 ... (4 : GoInt).toBasic()) (0 : GoUInt8)]);
        var __tmp__ = readFull(_mr2, _buf), _n:GoInt = __tmp__._0, _err:Error = __tmp__._1;
        {
            var _got:GoString = ((_buf.__slice__(0, _n) : Slice<GoUInt8>) : GoString);
            if ((_got != ("1234" : GoString)) || (_err != null)) {
                _t.errorf(("ReadFull(mr2) = (%q, %v), want (\"1234\", nil)" : GoString), Go.toInterface(_got), Go.toInterface(_err));
            };
        };
        {
            var __tmp__ = readFull(_mr1, _buf);
            _n = __tmp__._0;
            _err = __tmp__._1;
        };
        {
            var _got:GoString = ((_buf.__slice__(0, _n) : Slice<GoUInt8>) : GoString);
            if ((_got != ("5678" : GoString)) || (_err != null)) {
                _t.errorf(("ReadFull(mr1) = (%q, %v), want (\"5678\", nil)" : GoString), Go.toInterface(_got), Go.toInterface(_err));
            };
        };
    }
private function _checkWrite(_t:Ref<stdgo.testing.Testing.T>, _w:Writer, _data:Slice<GoByte>, _c:Chan<GoInt>):Void {
        var __tmp__ = _w.write(_data), _n:GoInt = __tmp__._0, _err:Error = __tmp__._1;
        if (_err != null) {
            _t.errorf(("write: %v" : GoString), Go.toInterface(_err));
        };
        if (_n != ((_data.length))) {
            _t.errorf(("short write: %d != %d" : GoString), Go.toInterface(_n), Go.toInterface((_data.length)));
        };
        _c.__send__((0 : GoInt));
    }
/**
    // Test a single read/write pair.
**/
function testPipe1(_t:Ref<stdgo.testing.Testing.T>):Void {
        var _c = new Chan<GoInt>(0, () -> (0 : GoInt));
        var __tmp__ = pipe(), _r:Ref<PipeReader> = __tmp__._0, _w:Ref<PipeWriter> = __tmp__._1;
        var _buf:Slice<GoUInt8> = new Slice<GoUInt8>((64 : GoInt).toBasic(), 0, ...[for (i in 0 ... (64 : GoInt).toBasic()) (0 : GoUInt8)]);
        Go.routine(() -> _checkWrite(_t, Go.asInterface(_w), (("hello, world" : GoString) : Slice<GoByte>), _c));
        var __tmp__ = _r.read(_buf), _n:GoInt = __tmp__._0, _err:Error = __tmp__._1;
        if (_err != null) {
            _t.errorf(("read: %v" : GoString), Go.toInterface(_err));
        } else if ((_n != (12 : GoInt)) || (((_buf.__slice__((0 : GoInt), (12 : GoInt)) : Slice<GoUInt8>) : GoString) != ("hello, world" : GoString))) {
            _t.errorf(("bad read: got %q" : GoString), Go.toInterface((_buf.__slice__((0 : GoInt), _n) : Slice<GoUInt8>)));
        };
        _c.__get__();
        _r.close();
        _w.close();
    }
private function _reader(_t:Ref<stdgo.testing.Testing.T>, _r:Reader, _c:Chan<GoInt>):Void {
        var _buf:Slice<GoUInt8> = new Slice<GoUInt8>((64 : GoInt).toBasic(), 0, ...[for (i in 0 ... (64 : GoInt).toBasic()) (0 : GoUInt8)]);
        while (true) {
            var __tmp__ = _r.read(_buf), _n:GoInt = __tmp__._0, _err:Error = __tmp__._1;
            if (Go.toInterface(_err) == (Go.toInterface(eof))) {
                _c.__send__((0 : GoInt));
                break;
            };
            if (_err != null) {
                _t.errorf(("read: %v" : GoString), Go.toInterface(_err));
            };
            _c.__send__(_n);
        };
    }
/**
    // Test a sequence of read/write pairs.
**/
function testPipe2(_t:Ref<stdgo.testing.Testing.T>):Void {
        var _c = new Chan<GoInt>(0, () -> (0 : GoInt));
        var __tmp__ = pipe(), _r:Ref<PipeReader> = __tmp__._0, _w:Ref<PipeWriter> = __tmp__._1;
        Go.routine(() -> reader(_t, Go.asInterface(_r), _c));
        var _buf:Slice<GoUInt8> = new Slice<GoUInt8>((64 : GoInt).toBasic(), 0, ...[for (i in 0 ... (64 : GoInt).toBasic()) (0 : GoUInt8)]);
        {
            var _i:GoInt = (0 : GoInt);
            Go.cfor(_i < (5 : GoInt), _i++, {
                var _p = (_buf.__slice__((0 : GoInt), (5 : GoInt) + (_i * (10 : GoInt))) : Slice<GoUInt8>);
                var __tmp__ = _w.write(_p), _n:GoInt = __tmp__._0, _err:Error = __tmp__._1;
                if (_n != ((_p.length))) {
                    _t.errorf(("wrote %d, got %d" : GoString), Go.toInterface((_p.length)), Go.toInterface(_n));
                };
                if (_err != null) {
                    _t.errorf(("write: %v" : GoString), Go.toInterface(_err));
                };
                var _nn:GoInt = _c.__get__();
                if (_nn != (_n)) {
                    _t.errorf(("wrote %d, read got %d" : GoString), Go.toInterface(_n), Go.toInterface(_nn));
                };
            });
        };
        _w.close();
        var _nn:GoInt = _c.__get__();
        if (_nn != ((0 : GoInt))) {
            _t.errorf(("final read got %d" : GoString), Go.toInterface(_nn));
        };
    }
/**
    // Test a large write that requires multiple reads to satisfy.
**/
private function _writer(_w:WriteCloser, _buf:Slice<GoByte>, _c:Chan<T_pipeReturn>):Void {
        var __tmp__ = _w.write(_buf), _n:GoInt = __tmp__._0, _err:Error = __tmp__._1;
        _w.close();
        _c.__send__((new T_pipeReturn(_n, _err) : T_pipeReturn));
    }
function testPipe3(_t:Ref<stdgo.testing.Testing.T>):Void {
        var _c = new Chan<stdgo.io_test.Io_test.T_pipeReturn>(0, () -> ({} : stdgo.io_test.Io_test.T_pipeReturn));
        var __tmp__ = pipe(), _r:Ref<PipeReader> = __tmp__._0, _w:Ref<PipeWriter> = __tmp__._1;
        var _wdat:Slice<GoUInt8> = new Slice<GoUInt8>((128 : GoInt).toBasic(), 0, ...[for (i in 0 ... (128 : GoInt).toBasic()) (0 : GoUInt8)]);
        {
            var _i:GoInt = (0 : GoInt);
            Go.cfor(_i < (_wdat.length), _i++, {
                _wdat[(_i : GoInt)] = (_i : GoByte);
            });
        };
        Go.routine(() -> writer(Go.asInterface(_w), _wdat, _c));
        var _rdat:Slice<GoUInt8> = new Slice<GoUInt8>((1024 : GoInt).toBasic(), 0, ...[for (i in 0 ... (1024 : GoInt).toBasic()) (0 : GoUInt8)]);
        var _tot:GoInt = (0 : GoInt);
        {
            var _n:GoInt = (1 : GoInt);
            Go.cfor(_n <= (256 : GoInt), _n = _n * ((2 : GoInt)), {
                var __tmp__ = _r.read((_rdat.__slice__(_tot, _tot + _n) : Slice<GoUInt8>)), _nn:GoInt = __tmp__._0, _err:Error = __tmp__._1;
                if ((_err != null) && (Go.toInterface(_err) != Go.toInterface(eof))) {
                    _t.fatalf(("read: %v" : GoString), Go.toInterface(_err));
                };
                var _expect:GoInt = _n;
                if (_n == ((128 : GoInt))) {
                    _expect = (1 : GoInt);
                } else if (_n == ((256 : GoInt))) {
                    _expect = (0 : GoInt);
                    if (Go.toInterface(_err) != (Go.toInterface(eof))) {
                        _t.fatalf(("read at end: %v" : GoString), Go.toInterface(_err));
                    };
                };
                if (_nn != (_expect)) {
                    _t.fatalf(("read %d, expected %d, got %d" : GoString), Go.toInterface(_n), Go.toInterface(_expect), Go.toInterface(_nn));
                };
                _tot = _tot + (_nn);
            });
        };
        var _pr:stdgo.io_test.Io_test.T_pipeReturn = (_c.__get__() == null ? null : _c.__get__().__copy__());
        if ((_pr._n != (128 : GoInt)) || (_pr._err != null)) {
            _t.fatalf(("write 128: %d, %v" : GoString), Go.toInterface(_pr._n), Go.toInterface(_pr._err));
        };
        if (_tot != ((128 : GoInt))) {
            _t.fatalf(("total read %d != 128" : GoString), Go.toInterface(_tot));
        };
        {
            var _i:GoInt = (0 : GoInt);
            Go.cfor(_i < (128 : GoInt), _i++, {
                if (_rdat[(_i : GoInt)] != ((_i : GoByte))) {
                    _t.fatalf(("rdat[%d] = %d" : GoString), Go.toInterface(_i), Go.toInterface(_rdat[(_i : GoInt)]));
                };
            });
        };
    }
private function _delayClose(_t:Ref<stdgo.testing.Testing.T>, _cl:T_closer, _ch:Chan<GoInt>, _tt:T_pipeTest):Void {
        stdgo.time.Time.sleep((("1000000" : GoInt64) : stdgo.time.Time.Duration));
        var _err:Error = (null : Error);
        if (_tt._closeWithError) {
            _err = _cl.closeWithError(_tt._err);
        } else {
            _err = _cl.close();
        };
        if (_err != null) {
            _t.errorf(("delayClose: %v" : GoString), Go.toInterface(_err));
        };
        _ch.__send__((0 : GoInt));
    }
function testPipeReadClose(_t:Ref<stdgo.testing.Testing.T>):Void {
        for (_0 => _tt in _pipeTests) {
            var _c = new Chan<GoInt>((1 : GoInt).toBasic(), () -> (0 : GoInt));
            var __tmp__ = pipe(), _r:Ref<PipeReader> = __tmp__._0, _w:Ref<PipeWriter> = __tmp__._1;
            if (_tt._async) {
                Go.routine(() -> _delayClose(_t, Go.asInterface(_w), _c, (_tt == null ? null : _tt.__copy__())));
            } else {
                _delayClose(_t, Go.asInterface(_w), _c, (_tt == null ? null : _tt.__copy__()));
            };
            var _buf:Slice<GoUInt8> = new Slice<GoUInt8>((64 : GoInt).toBasic(), 0, ...[for (i in 0 ... (64 : GoInt).toBasic()) (0 : GoUInt8)]);
            var __tmp__ = _r.read(_buf), _n:GoInt = __tmp__._0, _err:Error = __tmp__._1;
            _c.__get__();
            var _want:Error = _tt._err;
            if (_want == null) {
                _want = eof;
            };
            if (Go.toInterface(_err) != (Go.toInterface(_want))) {
                _t.errorf(("read from closed pipe: %v want %v" : GoString), Go.toInterface(_err), Go.toInterface(_want));
            };
            if (_n != ((0 : GoInt))) {
                _t.errorf(("read on closed pipe returned %d" : GoString), Go.toInterface(_n));
            };
            {
                _err = _r.close();
                if (_err != null) {
                    _t.errorf(("r.Close: %v" : GoString), Go.toInterface(_err));
                };
            };
        };
    }
/**
    // Test close on Read side during Read.
**/
function testPipeReadClose2(_t:Ref<stdgo.testing.Testing.T>):Void {
        var _c = new Chan<GoInt>((1 : GoInt).toBasic(), () -> (0 : GoInt));
        var __tmp__ = pipe(), _r:Ref<PipeReader> = __tmp__._0, _0:Ref<PipeWriter> = __tmp__._1;
        Go.routine(() -> _delayClose(_t, Go.asInterface(_r), _c, (new T_pipeTest() : T_pipeTest)));
        var __tmp__ = _r.read(new Slice<GoUInt8>((64 : GoInt).toBasic(), 0, ...[for (i in 0 ... (64 : GoInt).toBasic()) (0 : GoUInt8)])), _n:GoInt = __tmp__._0, _err:Error = __tmp__._1;
        _c.__get__();
        if ((_n != (0 : GoInt)) || (Go.toInterface(_err) != Go.toInterface(errClosedPipe))) {
            _t.errorf(("read from closed pipe: %v, %v want %v, %v" : GoString), Go.toInterface(_n), Go.toInterface(_err), Go.toInterface((0 : GoInt)), Go.toInterface(errClosedPipe));
        };
    }
function testPipeWriteClose(_t:Ref<stdgo.testing.Testing.T>):Void {
        for (_0 => _tt in _pipeTests) {
            var _c = new Chan<GoInt>((1 : GoInt).toBasic(), () -> (0 : GoInt));
            var __tmp__ = pipe(), _r:Ref<PipeReader> = __tmp__._0, _w:Ref<PipeWriter> = __tmp__._1;
            if (_tt._async) {
                Go.routine(() -> _delayClose(_t, Go.asInterface(_r), _c, (_tt == null ? null : _tt.__copy__())));
            } else {
                _delayClose(_t, Go.asInterface(_r), _c, (_tt == null ? null : _tt.__copy__()));
            };
            var __tmp__ = writeString(Go.asInterface(_w), ("hello, world" : GoString)), _n:GoInt = __tmp__._0, _err:Error = __tmp__._1;
            _c.__get__();
            var _expect:Error = _tt._err;
            if (_expect == null) {
                _expect = errClosedPipe;
            };
            if (Go.toInterface(_err) != (Go.toInterface(_expect))) {
                _t.errorf(("write on closed pipe: %v want %v" : GoString), Go.toInterface(_err), Go.toInterface(_expect));
            };
            if (_n != ((0 : GoInt))) {
                _t.errorf(("write on closed pipe returned %d" : GoString), Go.toInterface(_n));
            };
            {
                _err = _w.close();
                if (_err != null) {
                    _t.errorf(("w.Close: %v" : GoString), Go.toInterface(_err));
                };
            };
        };
    }
/**
    // Test close on Write side during Write.
**/
function testPipeWriteClose2(_t:Ref<stdgo.testing.Testing.T>):Void {
        var _c = new Chan<GoInt>((1 : GoInt).toBasic(), () -> (0 : GoInt));
        var __tmp__ = pipe(), _0:Ref<PipeReader> = __tmp__._0, _w:Ref<PipeWriter> = __tmp__._1;
        Go.routine(() -> _delayClose(_t, Go.asInterface(_w), _c, (new T_pipeTest() : T_pipeTest)));
        var __tmp__ = _w.write(new Slice<GoUInt8>((64 : GoInt).toBasic(), 0, ...[for (i in 0 ... (64 : GoInt).toBasic()) (0 : GoUInt8)])), _n:GoInt = __tmp__._0, _err:Error = __tmp__._1;
        _c.__get__();
        if ((_n != (0 : GoInt)) || (Go.toInterface(_err) != Go.toInterface(errClosedPipe))) {
            _t.errorf(("write to closed pipe: %v, %v want %v, %v" : GoString), Go.toInterface(_n), Go.toInterface(_err), Go.toInterface((0 : GoInt)), Go.toInterface(errClosedPipe));
        };
    }
function testWriteEmpty(_t:Ref<stdgo.testing.Testing.T>):Void {
        var __tmp__ = pipe(), _r:Ref<PipeReader> = __tmp__._0, _w:Ref<PipeWriter> = __tmp__._1;
        Go.routine(() -> {
            var a = function():Void {
                _w.write((new Slice<GoUInt8>(0, 0) : Slice<GoUInt8>));
                _w.close();
            };
            a();
        });
        var _b:GoArray<GoByte> = new GoArray<GoUInt8>(...[for (i in 0 ... 2) (0 : GoUInt8)]);
        readFull(Go.asInterface(_r), (_b.__slice__((0 : GoInt), (2 : GoInt)) : Slice<GoUInt8>));
        _r.close();
    }
function testWriteNil(_t:Ref<stdgo.testing.Testing.T>):Void {
        var __tmp__ = pipe(), _r:Ref<PipeReader> = __tmp__._0, _w:Ref<PipeWriter> = __tmp__._1;
        Go.routine(() -> {
            var a = function():Void {
                _w.write((null : Slice<GoUInt8>));
                _w.close();
            };
            a();
        });
        var _b:GoArray<GoByte> = new GoArray<GoUInt8>(...[for (i in 0 ... 2) (0 : GoUInt8)]);
        readFull(Go.asInterface(_r), (_b.__slice__((0 : GoInt), (2 : GoInt)) : Slice<GoUInt8>));
        _r.close();
    }
function testWriteAfterWriterClose(_t:Ref<stdgo.testing.Testing.T>):Void {
        var __tmp__ = pipe(), _r:Ref<PipeReader> = __tmp__._0, _w:Ref<PipeWriter> = __tmp__._1;
        var _done = new Chan<Bool>(0, () -> false);
        var _writeErr:Error = (null : Error);
        Go.routine(() -> {
            var a = function():Void {
                var __tmp__ = _w.write((("hello" : GoString) : Slice<GoByte>)), _0:GoInt = __tmp__._0, _err:Error = __tmp__._1;
                if (_err != null) {
                    _t.errorf(("got error: %q; expected none" : GoString), Go.toInterface(_err));
                };
                _w.close();
                {
                    var __tmp__ = _w.write((("world" : GoString) : Slice<GoByte>));
                    _writeErr = __tmp__._1;
                };
                _done.__send__(true);
            };
            a();
        });
        var _buf = new Slice<GoUInt8>((100 : GoInt).toBasic(), 0, ...[for (i in 0 ... (100 : GoInt).toBasic()) (0 : GoUInt8)]);
        var _result:GoString = ("" : GoString);
        var __tmp__ = readFull(Go.asInterface(_r), _buf), _n:GoInt = __tmp__._0, _err:Error = __tmp__._1;
        if ((_err != null) && (Go.toInterface(_err) != Go.toInterface(errUnexpectedEOF))) {
            _t.fatalf(("got: %q; want: %q" : GoString), Go.toInterface(_err), Go.toInterface(errUnexpectedEOF));
        };
        _result = ((_buf.__slice__((0 : GoInt), _n) : Slice<GoUInt8>) : GoString);
        _done.__get__();
        if (_result != (("hello" : GoString))) {
            _t.errorf(("got: %q; want: %q" : GoString), Go.toInterface(_result), Go.toInterface(("hello" : GoString)));
        };
        if (Go.toInterface(_writeErr) != (Go.toInterface(errClosedPipe))) {
            _t.errorf(("got: %q; want: %q" : GoString), Go.toInterface(_writeErr), Go.toInterface(errClosedPipe));
        };
    }
/**
    
    
    
**/
@:structInit @:using(stdgo.io_test.Io_test.T_testPipeCloseError_0___localname___testError1_static_extension) class T_testPipeCloseError_0___localname___testError1 {
    @:embedded
    public var _error : Error = (null : Error);
    public function new(?_error:Error) {
        if (_error != null) this._error = _error;
    }
    public function __underlying__() return Go.toInterface(this);
    @:embedded
    public function error():GoString return _error.error();
    public function __copy__() {
        return new T_testPipeCloseError_0___localname___testError1(_error);
    }
}
/**
    
    
    
**/
@:structInit @:using(stdgo.io_test.Io_test.T_testPipeCloseError_1___localname___testError2_static_extension) class T_testPipeCloseError_1___localname___testError2 {
    @:embedded
    public var _error : Error = (null : Error);
    public function new(?_error:Error) {
        if (_error != null) this._error = _error;
    }
    public function __underlying__() return Go.toInterface(this);
    @:embedded
    public function error():GoString return _error.error();
    public function __copy__() {
        return new T_testPipeCloseError_1___localname___testError2(_error);
    }
}
function testPipeCloseError(_t:Ref<stdgo.testing.Testing.T>):Void {
        {};
        {};
        var __tmp__ = pipe(), _r:Ref<PipeReader> = __tmp__._0, _w:Ref<PipeWriter> = __tmp__._1;
        _r.closeWithError(Go.asInterface((new T_testPipeCloseError_0___localname___testError1() : T_testPipeCloseError_0___localname___testError1)));
        {
            var __tmp__ = _w.write((null : Slice<GoUInt8>)), _0:GoInt = __tmp__._0, _err:Error = __tmp__._1;
            if (Go.toInterface(_err) != (Go.toInterface(Go.asInterface(((new T_testPipeCloseError_0___localname___testError1() : T_testPipeCloseError_0___localname___testError1)))))) {
                _t.errorf(("Write error: got %T, want testError1" : GoString), Go.toInterface(_err));
            };
        };
        _r.closeWithError(Go.asInterface((new T_testPipeCloseError_1___localname___testError2() : T_testPipeCloseError_1___localname___testError2)));
        {
            var __tmp__ = _w.write((null : Slice<GoUInt8>)), _1:GoInt = __tmp__._0, _err:Error = __tmp__._1;
            if (Go.toInterface(_err) != (Go.toInterface(Go.asInterface(((new T_testPipeCloseError_0___localname___testError1() : T_testPipeCloseError_0___localname___testError1)))))) {
                _t.errorf(("Write error: got %T, want testError1" : GoString), Go.toInterface(_err));
            };
        };
        {
            var __tmp__ = pipe();
            _r = __tmp__._0;
            _w = __tmp__._1;
        };
        _w.closeWithError(Go.asInterface((new T_testPipeCloseError_0___localname___testError1() : T_testPipeCloseError_0___localname___testError1)));
        {
            var __tmp__ = _r.read((null : Slice<GoUInt8>)), _2:GoInt = __tmp__._0, _err:Error = __tmp__._1;
            if (Go.toInterface(_err) != (Go.toInterface(Go.asInterface(((new T_testPipeCloseError_0___localname___testError1() : T_testPipeCloseError_0___localname___testError1)))))) {
                _t.errorf(("Read error: got %T, want testError1" : GoString), Go.toInterface(_err));
            };
        };
        _w.closeWithError(Go.asInterface((new T_testPipeCloseError_1___localname___testError2() : T_testPipeCloseError_1___localname___testError2)));
        {
            var __tmp__ = _r.read((null : Slice<GoUInt8>)), _3:GoInt = __tmp__._0, _err:Error = __tmp__._1;
            if (Go.toInterface(_err) != (Go.toInterface(Go.asInterface(((new T_testPipeCloseError_0___localname___testError1() : T_testPipeCloseError_0___localname___testError1)))))) {
                _t.errorf(("Read error: got %T, want testError1" : GoString), Go.toInterface(_err));
            };
        };
    }
function testPipeConcurrent(_t:Ref<stdgo.testing.Testing.T>):Void {
        {};
        _t.run(("Write" : GoString), function(_t:Ref<stdgo.testing.Testing.T>):Void {
            var __tmp__ = pipe(), _r:Ref<PipeReader> = __tmp__._0, _w:Ref<PipeWriter> = __tmp__._1;
            {
                var _i:GoInt = (0 : GoInt);
                Go.cfor(_i < (8 : GoInt), _i++, {
                    Go.routine(() -> {
                        var a = function():Void {
                            stdgo.time.Time.sleep((("1000000" : GoInt64) : stdgo.time.Time.Duration));
                            {
                                var __tmp__ = _w.write((("0123456789abcdef" : GoString) : Slice<GoByte>)), _n:GoInt = __tmp__._0, _err:Error = __tmp__._1;
                                if ((_n != (("0123456789abcdef" : GoString).length)) || (_err != null)) {
                                    _t.errorf(("Write() = (%d, %v); want (%d, nil)" : GoString), Go.toInterface(_n), Go.toInterface(_err), Go.toInterface((("0123456789abcdef" : GoString).length)));
                                };
                            };
                        };
                        a();
                    });
                });
            };
            var _buf = new Slice<GoUInt8>((128 : GoInt).toBasic(), 0, ...[for (i in 0 ... (128 : GoInt).toBasic()) (0 : GoUInt8)]);
            {
                var _i:GoInt = (0 : GoInt);
                Go.cfor(_i < (_buf.length), _i = _i + ((2 : GoInt)), {
                    {
                        var __tmp__ = _r.read((_buf.__slice__(_i, _i + (2 : GoInt)) : Slice<GoUInt8>)), _n:GoInt = __tmp__._0, _err:Error = __tmp__._1;
                        if ((_n != (2 : GoInt)) || (_err != null)) {
                            _t.errorf(("Read() = (%d, %v); want (%d, nil)" : GoString), Go.toInterface(_n), Go.toInterface(_err), Go.toInterface((2 : GoInt)));
                        };
                    };
                });
            };
            var _got:GoString = (_buf : GoString);
            var _want:GoString = stdgo.strings.Strings.repeat(("0123456789abcdef" : GoString), (8 : GoInt));
            if (_got != (_want)) {
                _t.errorf(("got: %q; want: %q" : GoString), Go.toInterface(_got), Go.toInterface(_want));
            };
        });
        _t.run(("Read" : GoString), function(_t:Ref<stdgo.testing.Testing.T>):Void {
            var __tmp__ = pipe(), _r:Ref<PipeReader> = __tmp__._0, _w:Ref<PipeWriter> = __tmp__._1;
            var _c = new Chan<Slice<GoUInt8>>((64 : GoInt).toBasic(), () -> (null : Slice<GoUInt8>));
            {
                var _i:GoInt = (0 : GoInt);
                Go.cfor(_i < _c.capacity, _i++, {
                    Go.routine(() -> {
                        var a = function():Void {
                            stdgo.time.Time.sleep((("1000000" : GoInt64) : stdgo.time.Time.Duration));
                            var _buf = new Slice<GoUInt8>((2 : GoInt).toBasic(), 0, ...[for (i in 0 ... (2 : GoInt).toBasic()) (0 : GoUInt8)]);
                            {
                                var __tmp__ = _r.read(_buf), _n:GoInt = __tmp__._0, _err:Error = __tmp__._1;
                                if ((_n != (2 : GoInt)) || (_err != null)) {
                                    _t.errorf(("Read() = (%d, %v); want (%d, nil)" : GoString), Go.toInterface(_n), Go.toInterface(_err), Go.toInterface((2 : GoInt)));
                                };
                            };
                            _c.__send__(_buf);
                        };
                        a();
                    });
                });
            };
            {
                var _i:GoInt = (0 : GoInt);
                Go.cfor(_i < (8 : GoInt), _i++, {
                    {
                        var __tmp__ = _w.write((("0123456789abcdef" : GoString) : Slice<GoByte>)), _n:GoInt = __tmp__._0, _err:Error = __tmp__._1;
                        if ((_n != (("0123456789abcdef" : GoString).length)) || (_err != null)) {
                            _t.errorf(("Write() = (%d, %v); want (%d, nil)" : GoString), Go.toInterface(_n), Go.toInterface(_err), Go.toInterface((("0123456789abcdef" : GoString).length)));
                        };
                    };
                });
            };
            var _got = new Slice<GoUInt8>((0 : GoInt).toBasic(), (128 : GoInt), ...[for (i in 0 ... (0 : GoInt).toBasic()) (0 : GoUInt8)]);
            {
                var _i:GoInt = (0 : GoInt);
                Go.cfor(_i < _c.capacity, _i++, {
                    _got = _got.__appendref__(...(_c.__get__()).__toArray__());
                });
            };
            _got = _sortBytesInGroups(_got, (2 : GoInt));
            var _want = stdgo.bytes.Bytes.repeat((("0123456789abcdef" : GoString) : Slice<GoByte>), (8 : GoInt));
            _want = _sortBytesInGroups(_want, (2 : GoInt));
            if ((_got : GoString) != ((_want : GoString))) {
                _t.errorf(("got: %q; want: %q" : GoString), Go.toInterface(_got), Go.toInterface(_want));
            };
        });
    }
private function _sortBytesInGroups(_b:Slice<GoByte>, _n:GoInt):Slice<GoByte> {
        var _groups:Slice<Slice<GoByte>> = (null : Slice<Slice<GoUInt8>>);
        while ((_b.length) > (0 : GoInt)) {
            _groups = _groups.__appendref__((_b.__slice__(0, _n) : Slice<GoUInt8>));
            _b = (_b.__slice__(_n) : Slice<GoUInt8>);
        };
        stdgo.sort.Sort.slice(Go.toInterface(_groups), function(_i:GoInt, _j:GoInt):Bool {
            return stdgo.bytes.Bytes.compare(_groups[(_i : GoInt)], _groups[(_j : GoInt)]) < (0 : GoInt);
        });
        return stdgo.bytes.Bytes.join(_groups, (null : Slice<GoUInt8>));
    }
class Buffer_asInterface {
    @:embedded
    public function _tryGrowByReslice(__0:GoInt):{ var _0 : GoInt; var _1 : Bool; } return __self__.value._tryGrowByReslice(__0);
    @:embedded
    public function _readSlice(_c:GoUInt8):{ var _0 : Slice<GoUInt8>; var _1 : Error; } return __self__.value._readSlice(_c);
    @:embedded
    public function _grow(__0:GoInt):GoInt return __self__.value._grow(__0);
    @:embedded
    public function _empty():Bool return __self__.value._empty();
    @:embedded
    public function writeString(__0:GoString):{ var _0 : GoInt; var _1 : Error; } return __self__.value.writeString(__0);
    @:embedded
    public function writeRune(__0:GoInt32):{ var _0 : GoInt; var _1 : Error; } return __self__.value.writeRune(__0);
    @:embedded
    public function writeByte(_c:GoUInt8):Error return __self__.value.writeByte(_c);
    @:embedded
    public function write(_b:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : Error; } return __self__.value.write(_b);
    @:embedded
    public function unreadRune():Error return __self__.value.unreadRune();
    @:embedded
    public function unreadByte():Error return __self__.value.unreadByte();
    @:embedded
    public function truncate(__0:GoInt):Void __self__.value.truncate(__0);
    @:embedded
    public function string():GoString return __self__.value.string();
    @:embedded
    public function reset():Void __self__.value.reset();
    @:embedded
    public function readString(_c:GoUInt8):{ var _0 : GoString; var _1 : Error; } return __self__.value.readString(_c);
    @:embedded
    public function readRune():{ var _0 : GoInt32; var _1 : GoInt; var _2 : Error; } return __self__.value.readRune();
    @:embedded
    public function readBytes(_c:GoUInt8):{ var _0 : Slice<GoUInt8>; var _1 : Error; } return __self__.value.readBytes(_c);
    @:embedded
    public function readByte():{ var _0 : GoUInt8; var _1 : Error; } return __self__.value.readByte();
    @:embedded
    public function read(_b:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : Error; } return __self__.value.read(_b);
    @:embedded
    public function next(__0:GoInt):Slice<GoUInt8> return __self__.value.next(__0);
    @:embedded
    public function len():GoInt return __self__.value.len();
    @:embedded
    public function grow(__0:GoInt):Void __self__.value.grow(__0);
    @:embedded
    public function cap():GoInt return __self__.value.cap();
    @:embedded
    public function bytes():Slice<GoUInt8> return __self__.value.bytes();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : Pointer<Buffer>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.io_test.Io_test.Buffer_asInterface) class Buffer_static_extension {
    @:embedded
    public static function _tryGrowByReslice( __self__:Buffer, __0:GoInt):{ var _0 : GoInt; var _1 : Bool; } return __self__._tryGrowByReslice(__0);
    @:embedded
    public static function _readSlice( __self__:Buffer, _c:GoUInt8):{ var _0 : Slice<GoUInt8>; var _1 : Error; } return __self__._readSlice(_c);
    @:embedded
    public static function _grow( __self__:Buffer, __0:GoInt):GoInt return __self__._grow(__0);
    @:embedded
    public static function _empty( __self__:Buffer):Bool return __self__._empty();
    @:embedded
    public static function writeString( __self__:Buffer, __0:GoString):{ var _0 : GoInt; var _1 : Error; } return __self__.writeString(__0);
    @:embedded
    public static function writeRune( __self__:Buffer, __0:GoInt32):{ var _0 : GoInt; var _1 : Error; } return __self__.writeRune(__0);
    @:embedded
    public static function writeByte( __self__:Buffer, _c:GoUInt8):Error return __self__.writeByte(_c);
    @:embedded
    public static function write( __self__:Buffer, _b:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : Error; } return __self__.write(_b);
    @:embedded
    public static function unreadRune( __self__:Buffer):Error return __self__.unreadRune();
    @:embedded
    public static function unreadByte( __self__:Buffer):Error return __self__.unreadByte();
    @:embedded
    public static function truncate( __self__:Buffer, __0:GoInt) __self__.truncate(__0);
    @:embedded
    public static function string( __self__:Buffer):GoString return __self__.string();
    @:embedded
    public static function reset( __self__:Buffer) __self__.reset();
    @:embedded
    public static function readString( __self__:Buffer, _c:GoUInt8):{ var _0 : GoString; var _1 : Error; } return __self__.readString(_c);
    @:embedded
    public static function readRune( __self__:Buffer):{ var _0 : GoInt32; var _1 : GoInt; var _2 : Error; } return __self__.readRune();
    @:embedded
    public static function readBytes( __self__:Buffer, _c:GoUInt8):{ var _0 : Slice<GoUInt8>; var _1 : Error; } return __self__.readBytes(_c);
    @:embedded
    public static function readByte( __self__:Buffer):{ var _0 : GoUInt8; var _1 : Error; } return __self__.readByte();
    @:embedded
    public static function read( __self__:Buffer, _b:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : Error; } return __self__.read(_b);
    @:embedded
    public static function next( __self__:Buffer, __0:GoInt):Slice<GoUInt8> return __self__.next(__0);
    @:embedded
    public static function len( __self__:Buffer):GoInt return __self__.len();
    @:embedded
    public static function grow( __self__:Buffer, __0:GoInt) __self__.grow(__0);
    @:embedded
    public static function cap( __self__:Buffer):GoInt return __self__.cap();
    @:embedded
    public static function bytes( __self__:Buffer):Slice<GoUInt8> return __self__.bytes();
}
class T_writeToChecker_asInterface {
    @:keep
    public function writeTo(_w:Writer):{ var _0 : GoInt64; var _1 : Error; } return __self__.value.writeTo(_w);
    @:embedded
    public function _tryGrowByReslice(__0:GoInt):{ var _0 : GoInt; var _1 : Bool; } return __self__.value._tryGrowByReslice(__0);
    @:embedded
    public function _readSlice(_c:GoUInt8):{ var _0 : Slice<GoUInt8>; var _1 : Error; } return __self__.value._readSlice(_c);
    @:embedded
    public function _grow(__0:GoInt):GoInt return __self__.value._grow(__0);
    @:embedded
    public function _empty():Bool return __self__.value._empty();
    @:embedded
    public function writeString(__0:GoString):{ var _0 : GoInt; var _1 : Error; } return __self__.value.writeString(__0);
    @:embedded
    public function writeRune(__0:GoInt32):{ var _0 : GoInt; var _1 : Error; } return __self__.value.writeRune(__0);
    @:embedded
    public function writeByte(_c:GoUInt8):Error return __self__.value.writeByte(_c);
    @:embedded
    public function write(_b:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : Error; } return __self__.value.write(_b);
    @:embedded
    public function unreadRune():Error return __self__.value.unreadRune();
    @:embedded
    public function unreadByte():Error return __self__.value.unreadByte();
    @:embedded
    public function truncate(__0:GoInt):Void __self__.value.truncate(__0);
    @:embedded
    public function string():GoString return __self__.value.string();
    @:embedded
    public function reset():Void __self__.value.reset();
    @:embedded
    public function readString(_c:GoUInt8):{ var _0 : GoString; var _1 : Error; } return __self__.value.readString(_c);
    @:embedded
    public function readRune():{ var _0 : GoInt32; var _1 : GoInt; var _2 : Error; } return __self__.value.readRune();
    @:embedded
    public function readFrom(_r:Reader):{ var _0 : GoInt64; var _1 : Error; } return __self__.value.readFrom(_r);
    @:embedded
    public function readBytes(_c:GoUInt8):{ var _0 : Slice<GoUInt8>; var _1 : Error; } return __self__.value.readBytes(_c);
    @:embedded
    public function readByte():{ var _0 : GoUInt8; var _1 : Error; } return __self__.value.readByte();
    @:embedded
    public function read(_b:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : Error; } return __self__.value.read(_b);
    @:embedded
    public function next(__0:GoInt):Slice<GoUInt8> return __self__.value.next(__0);
    @:embedded
    public function len():GoInt return __self__.value.len();
    @:embedded
    public function grow(__0:GoInt):Void __self__.value.grow(__0);
    @:embedded
    public function cap():GoInt return __self__.value.cap();
    @:embedded
    public function bytes():Slice<GoUInt8> return __self__.value.bytes();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : Pointer<T_writeToChecker>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.io_test.Io_test.T_writeToChecker_asInterface) class T_writeToChecker_static_extension {
    @:keep
    static public function writeTo( _wt:Ref<T_writeToChecker>, _w:Writer):{ var _0 : GoInt64; var _1 : Error; } {
        _wt._writeToCalled = true;
        return _wt.buffer.writeTo(_w);
    }
    @:embedded
    public static function _tryGrowByReslice( __self__:T_writeToChecker, __0:GoInt):{ var _0 : GoInt; var _1 : Bool; } return __self__._tryGrowByReslice(__0);
    @:embedded
    public static function _readSlice( __self__:T_writeToChecker, _c:GoUInt8):{ var _0 : Slice<GoUInt8>; var _1 : Error; } return __self__._readSlice(_c);
    @:embedded
    public static function _grow( __self__:T_writeToChecker, __0:GoInt):GoInt return __self__._grow(__0);
    @:embedded
    public static function _empty( __self__:T_writeToChecker):Bool return __self__._empty();
    @:embedded
    public static function writeString( __self__:T_writeToChecker, __0:GoString):{ var _0 : GoInt; var _1 : Error; } return __self__.writeString(__0);
    @:embedded
    public static function writeRune( __self__:T_writeToChecker, __0:GoInt32):{ var _0 : GoInt; var _1 : Error; } return __self__.writeRune(__0);
    @:embedded
    public static function writeByte( __self__:T_writeToChecker, _c:GoUInt8):Error return __self__.writeByte(_c);
    @:embedded
    public static function write( __self__:T_writeToChecker, _b:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : Error; } return __self__.write(_b);
    @:embedded
    public static function unreadRune( __self__:T_writeToChecker):Error return __self__.unreadRune();
    @:embedded
    public static function unreadByte( __self__:T_writeToChecker):Error return __self__.unreadByte();
    @:embedded
    public static function truncate( __self__:T_writeToChecker, __0:GoInt) __self__.truncate(__0);
    @:embedded
    public static function string( __self__:T_writeToChecker):GoString return __self__.string();
    @:embedded
    public static function reset( __self__:T_writeToChecker) __self__.reset();
    @:embedded
    public static function readString( __self__:T_writeToChecker, _c:GoUInt8):{ var _0 : GoString; var _1 : Error; } return __self__.readString(_c);
    @:embedded
    public static function readRune( __self__:T_writeToChecker):{ var _0 : GoInt32; var _1 : GoInt; var _2 : Error; } return __self__.readRune();
    @:embedded
    public static function readFrom( __self__:T_writeToChecker, _r:Reader):{ var _0 : GoInt64; var _1 : Error; } return __self__.readFrom(_r);
    @:embedded
    public static function readBytes( __self__:T_writeToChecker, _c:GoUInt8):{ var _0 : Slice<GoUInt8>; var _1 : Error; } return __self__.readBytes(_c);
    @:embedded
    public static function readByte( __self__:T_writeToChecker):{ var _0 : GoUInt8; var _1 : Error; } return __self__.readByte();
    @:embedded
    public static function read( __self__:T_writeToChecker, _b:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : Error; } return __self__.read(_b);
    @:embedded
    public static function next( __self__:T_writeToChecker, __0:GoInt):Slice<GoUInt8> return __self__.next(__0);
    @:embedded
    public static function len( __self__:T_writeToChecker):GoInt return __self__.len();
    @:embedded
    public static function grow( __self__:T_writeToChecker, __0:GoInt) __self__.grow(__0);
    @:embedded
    public static function cap( __self__:T_writeToChecker):GoInt return __self__.cap();
    @:embedded
    public static function bytes( __self__:T_writeToChecker):Slice<GoUInt8> return __self__.bytes();
}
class T_zeroErrReader_asInterface {
    @:keep
    public function read(_p:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } return __self__.value.read(_p);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : Pointer<T_zeroErrReader>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.io_test.Io_test.T_zeroErrReader_asInterface) class T_zeroErrReader_static_extension {
    @:keep
    static public function read( _r:T_zeroErrReader, _p:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } {
        return { _0 : Go.copySlice(_p, (new Slice<GoUInt8>(0, 0, (0 : GoUInt8)) : Slice<GoUInt8>)), _1 : _r._err };
    }
}
class T_errWriter_asInterface {
    @:keep
    public function write(_0:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } return __self__.value.write(_0);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : Pointer<T_errWriter>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.io_test.Io_test.T_errWriter_asInterface) class T_errWriter_static_extension {
    @:keep
    static public function write( _w:T_errWriter, _0:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } {
        return { _0 : (0 : GoInt), _1 : _w._err };
    }
}
class T_noReadFrom_asInterface {
    @:keep
    public function write(_p:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } return __self__.value.write(_p);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : Pointer<T_noReadFrom>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.io_test.Io_test.T_noReadFrom_asInterface) class T_noReadFrom_static_extension {
    @:keep
    static public function write( _w:Ref<T_noReadFrom>, _p:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } {
        var _n:GoInt = (0 : GoInt), _err:Error = (null : Error);
        return _w._w.write(_p);
    }
}
class T_wantedAndErrReader_asInterface {
    @:keep
    public function read(_p:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } return __self__.value.read(_p);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : Pointer<T_wantedAndErrReader>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.io_test.Io_test.T_wantedAndErrReader_asInterface) class T_wantedAndErrReader_static_extension {
    @:keep
    static public function read( _:T_wantedAndErrReader, _p:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } {
        return { _0 : (_p.length), _1 : stdgo.errors.Errors.new_(("wantedAndErrReader error" : GoString)) };
    }
}
class T_dataAndErrorBuffer_asInterface {
    @:keep
    public function read(_p:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } return __self__.value.read(_p);
    @:embedded
    public function _tryGrowByReslice(__0:GoInt):{ var _0 : GoInt; var _1 : Bool; } return __self__.value._tryGrowByReslice(__0);
    @:embedded
    public function _readSlice(_c:GoUInt8):{ var _0 : Slice<GoUInt8>; var _1 : Error; } return __self__.value._readSlice(_c);
    @:embedded
    public function _grow(__0:GoInt):GoInt return __self__.value._grow(__0);
    @:embedded
    public function _empty():Bool return __self__.value._empty();
    @:embedded
    public function writeTo(_w:Writer):{ var _0 : GoInt64; var _1 : Error; } return __self__.value.writeTo(_w);
    @:embedded
    public function writeString(__0:GoString):{ var _0 : GoInt; var _1 : Error; } return __self__.value.writeString(__0);
    @:embedded
    public function writeRune(__0:GoInt32):{ var _0 : GoInt; var _1 : Error; } return __self__.value.writeRune(__0);
    @:embedded
    public function writeByte(_c:GoUInt8):Error return __self__.value.writeByte(_c);
    @:embedded
    public function write(_b:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : Error; } return __self__.value.write(_b);
    @:embedded
    public function unreadRune():Error return __self__.value.unreadRune();
    @:embedded
    public function unreadByte():Error return __self__.value.unreadByte();
    @:embedded
    public function truncate(__0:GoInt):Void __self__.value.truncate(__0);
    @:embedded
    public function string():GoString return __self__.value.string();
    @:embedded
    public function reset():Void __self__.value.reset();
    @:embedded
    public function readString(_c:GoUInt8):{ var _0 : GoString; var _1 : Error; } return __self__.value.readString(_c);
    @:embedded
    public function readRune():{ var _0 : GoInt32; var _1 : GoInt; var _2 : Error; } return __self__.value.readRune();
    @:embedded
    public function readFrom(_r:Reader):{ var _0 : GoInt64; var _1 : Error; } return __self__.value.readFrom(_r);
    @:embedded
    public function readBytes(_c:GoUInt8):{ var _0 : Slice<GoUInt8>; var _1 : Error; } return __self__.value.readBytes(_c);
    @:embedded
    public function readByte():{ var _0 : GoUInt8; var _1 : Error; } return __self__.value.readByte();
    @:embedded
    public function next(__0:GoInt):Slice<GoUInt8> return __self__.value.next(__0);
    @:embedded
    public function len():GoInt return __self__.value.len();
    @:embedded
    public function grow(__0:GoInt):Void __self__.value.grow(__0);
    @:embedded
    public function cap():GoInt return __self__.value.cap();
    @:embedded
    public function bytes():Slice<GoUInt8> return __self__.value.bytes();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : Pointer<T_dataAndErrorBuffer>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.io_test.Io_test.T_dataAndErrorBuffer_asInterface) class T_dataAndErrorBuffer_static_extension {
    @:keep
    static public function read( _r:Ref<T_dataAndErrorBuffer>, _p:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } {
        var _n:GoInt = (0 : GoInt), _err:Error = (null : Error);
        {
            var __tmp__ = _r.buffer.read(_p);
            _n = __tmp__._0;
            _err = __tmp__._1;
        };
        if (((_n > (0 : GoInt)) && (_r.buffer.len() == (0 : GoInt))) && (_err == null)) {
            _err = _r._err;
        };
        return { _0 : _n, _1 : _err };
    }
    @:embedded
    public static function _tryGrowByReslice( __self__:T_dataAndErrorBuffer, __0:GoInt):{ var _0 : GoInt; var _1 : Bool; } return __self__._tryGrowByReslice(__0);
    @:embedded
    public static function _readSlice( __self__:T_dataAndErrorBuffer, _c:GoUInt8):{ var _0 : Slice<GoUInt8>; var _1 : Error; } return __self__._readSlice(_c);
    @:embedded
    public static function _grow( __self__:T_dataAndErrorBuffer, __0:GoInt):GoInt return __self__._grow(__0);
    @:embedded
    public static function _empty( __self__:T_dataAndErrorBuffer):Bool return __self__._empty();
    @:embedded
    public static function writeTo( __self__:T_dataAndErrorBuffer, _w:Writer):{ var _0 : GoInt64; var _1 : Error; } return __self__.writeTo(_w);
    @:embedded
    public static function writeString( __self__:T_dataAndErrorBuffer, __0:GoString):{ var _0 : GoInt; var _1 : Error; } return __self__.writeString(__0);
    @:embedded
    public static function writeRune( __self__:T_dataAndErrorBuffer, __0:GoInt32):{ var _0 : GoInt; var _1 : Error; } return __self__.writeRune(__0);
    @:embedded
    public static function writeByte( __self__:T_dataAndErrorBuffer, _c:GoUInt8):Error return __self__.writeByte(_c);
    @:embedded
    public static function write( __self__:T_dataAndErrorBuffer, _b:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : Error; } return __self__.write(_b);
    @:embedded
    public static function unreadRune( __self__:T_dataAndErrorBuffer):Error return __self__.unreadRune();
    @:embedded
    public static function unreadByte( __self__:T_dataAndErrorBuffer):Error return __self__.unreadByte();
    @:embedded
    public static function truncate( __self__:T_dataAndErrorBuffer, __0:GoInt) __self__.truncate(__0);
    @:embedded
    public static function string( __self__:T_dataAndErrorBuffer):GoString return __self__.string();
    @:embedded
    public static function reset( __self__:T_dataAndErrorBuffer) __self__.reset();
    @:embedded
    public static function readString( __self__:T_dataAndErrorBuffer, _c:GoUInt8):{ var _0 : GoString; var _1 : Error; } return __self__.readString(_c);
    @:embedded
    public static function readRune( __self__:T_dataAndErrorBuffer):{ var _0 : GoInt32; var _1 : GoInt; var _2 : Error; } return __self__.readRune();
    @:embedded
    public static function readFrom( __self__:T_dataAndErrorBuffer, _r:Reader):{ var _0 : GoInt64; var _1 : Error; } return __self__.readFrom(_r);
    @:embedded
    public static function readBytes( __self__:T_dataAndErrorBuffer, _c:GoUInt8):{ var _0 : Slice<GoUInt8>; var _1 : Error; } return __self__.readBytes(_c);
    @:embedded
    public static function readByte( __self__:T_dataAndErrorBuffer):{ var _0 : GoUInt8; var _1 : Error; } return __self__.readByte();
    @:embedded
    public static function next( __self__:T_dataAndErrorBuffer, __0:GoInt):Slice<GoUInt8> return __self__.next(__0);
    @:embedded
    public static function len( __self__:T_dataAndErrorBuffer):GoInt return __self__.len();
    @:embedded
    public static function grow( __self__:T_dataAndErrorBuffer, __0:GoInt) __self__.grow(__0);
    @:embedded
    public static function cap( __self__:T_dataAndErrorBuffer):GoInt return __self__.cap();
    @:embedded
    public static function bytes( __self__:T_dataAndErrorBuffer):Slice<GoUInt8> return __self__.bytes();
}
class T_largeWriter_asInterface {
    @:keep
    public function write(_p:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } return __self__.value.write(_p);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : Pointer<T_largeWriter>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.io_test.Io_test.T_largeWriter_asInterface) class T_largeWriter_static_extension {
    @:keep
    static public function write( _w:T_largeWriter, _p:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } {
        return { _0 : (_p.length) + (1 : GoInt), _1 : _w._err };
    }
}
class T_writeStringChecker_asInterface {
    @:keep
    public function write(_p:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } return __self__.value.write(_p);
    @:keep
    public function writeString(_s:GoString):{ var _0 : GoInt; var _1 : Error; } return __self__.value.writeString(_s);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : Pointer<T_writeStringChecker>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.io_test.Io_test.T_writeStringChecker_asInterface) class T_writeStringChecker_static_extension {
    @:keep
    static public function write( _c:Ref<T_writeStringChecker>, _p:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } {
        var _n:GoInt = (0 : GoInt), _err:Error = (null : Error);
        return { _0 : (_p.length), _1 : (null : Error) };
    }
    @:keep
    static public function writeString( _c:Ref<T_writeStringChecker>, _s:GoString):{ var _0 : GoInt; var _1 : Error; } {
        var _n:GoInt = (0 : GoInt), _err:Error = (null : Error);
        _c._called = true;
        return { _0 : (_s.length), _1 : (null : Error) };
    }
}
class T_pipeTest_asInterface {
    @:keep
    public function string():GoString return __self__.value.string();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : Pointer<T_pipeTest>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.io_test.Io_test.T_pipeTest_asInterface) class T_pipeTest_static_extension {
    @:keep
    static public function string( _p:T_pipeTest):GoString {
        return stdgo.fmt.Fmt.sprintf(("async=%v err=%v closeWithError=%v" : GoString), Go.toInterface(_p._async), Go.toInterface(_p._err), Go.toInterface(_p._closeWithError));
    }
}
class T_writerFunc_asInterface {
    @:keep
    public function write(_p:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } return __self__.value.write(_p);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : Pointer<T_writerFunc>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.io_test.Io_test.T_writerFunc_asInterface) class T_writerFunc_static_extension {
    @:keep
    static public function write( _f:T_writerFunc, _p:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } {
        return _f(_p);
    }
}
class T_readerFunc_asInterface {
    @:keep
    public function read(_p:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } return __self__.value.read(_p);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : Pointer<T_readerFunc>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.io_test.Io_test.T_readerFunc_asInterface) class T_readerFunc_static_extension {
    @:keep
    static public function read( _f:T_readerFunc, _p:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } {
        return _f(_p);
    }
}
class T_byteAndEOFReader_asInterface {
    @:keep
    public function read(_p:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } return __self__.value.read(_p);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : Pointer<T_byteAndEOFReader>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.io_test.Io_test.T_byteAndEOFReader_asInterface) class T_byteAndEOFReader_static_extension {
    @:keep
    static public function read( _b:T_byteAndEOFReader, _p:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } {
        var _n:GoInt = (0 : GoInt), _err:Error = (null : Error);
        if ((_p.length) == ((0 : GoInt))) {
            throw Go.toInterface(("unexpected call" : GoString));
        };
        _p[(0 : GoInt)] = (_b : GoByte);
        return { _0 : (1 : GoInt), _1 : eof };
    }
}
class T_testMultiWriter_WriteStringSingleAlloc_0___localname___simpleWriter_asInterface {
    @:embedded
    public function write(_b:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : Error; } return __self__.value.write(_b);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : Pointer<T_testMultiWriter_WriteStringSingleAlloc_0___localname___simpleWriter>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.io_test.Io_test.T_testMultiWriter_WriteStringSingleAlloc_0___localname___simpleWriter_asInterface) class T_testMultiWriter_WriteStringSingleAlloc_0___localname___simpleWriter_static_extension {
    @:embedded
    public static function write( __self__:T_testMultiWriter_WriteStringSingleAlloc_0___localname___simpleWriter, _b:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : Error; } return __self__.write(_b);
}
class T_testPipeCloseError_0___localname___testError1_asInterface {
    @:embedded
    public function error():GoString return __self__.value.error();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : Pointer<T_testPipeCloseError_0___localname___testError1>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.io_test.Io_test.T_testPipeCloseError_0___localname___testError1_asInterface) class T_testPipeCloseError_0___localname___testError1_static_extension {
    @:embedded
    public static function error( __self__:T_testPipeCloseError_0___localname___testError1):GoString return __self__.error();
}
class T_testPipeCloseError_1___localname___testError2_asInterface {
    @:embedded
    public function error():GoString return __self__.value.error();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : Pointer<T_testPipeCloseError_1___localname___testError2>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.io_test.Io_test.T_testPipeCloseError_1___localname___testError2_asInterface) class T_testPipeCloseError_1___localname___testError2_static_extension {
    @:embedded
    public static function error( __self__:T_testPipeCloseError_1___localname___testError2):GoString return __self__.error();
}
