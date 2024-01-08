package stdgo.testing.iotest;
/**
    // Package iotest implements Readers and Writers useful mainly for testing.
**/
private var __go2hxdoc__package : Bool;
/**
    // ErrTimeout is a fake timeout error.
    
    
**/
var errTimeout : stdgo.Error = (null : stdgo.Error);
/**
    
    
    
**/
var _truncateWriterTests : stdgo.Slice<T__struct_0> = (null : stdgo.Slice<T__struct_0>);
/**
    
    
    
**/
@:structInit @:private @:using(stdgo.testing.iotest.Iotest.T_writeLogger_static_extension) class T_writeLogger {
    public var _prefix : stdgo.GoString = "";
    public var _w : stdgo.io.Io.Writer = (null : stdgo.io.Io.Writer);
    public function new(?_prefix:stdgo.GoString, ?_w:stdgo.io.Io.Writer) {
        if (_prefix != null) this._prefix = _prefix;
        if (_w != null) this._w = _w;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_writeLogger(_prefix, _w);
    }
}
/**
    
    
    
**/
@:structInit @:private @:using(stdgo.testing.iotest.Iotest.T_readLogger_static_extension) class T_readLogger {
    public var _prefix : stdgo.GoString = "";
    public var _r : stdgo.io.Io.Reader = (null : stdgo.io.Io.Reader);
    public function new(?_prefix:stdgo.GoString, ?_r:stdgo.io.Io.Reader) {
        if (_prefix != null) this._prefix = _prefix;
        if (_r != null) this._r = _r;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_readLogger(_prefix, _r);
    }
}
/**
    
    
    
**/
@:structInit @:private @:using(stdgo.testing.iotest.Iotest.T_errWriter_static_extension) class T_errWriter {
    public var _err : stdgo.Error = (null : stdgo.Error);
    public function new(?_err:stdgo.Error) {
        if (_err != null) this._err = _err;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_errWriter(_err);
    }
}
/**
    
    
    
**/
@:structInit @:private @:using(stdgo.testing.iotest.Iotest.T_oneByteReader_static_extension) class T_oneByteReader {
    public var _r : stdgo.io.Io.Reader = (null : stdgo.io.Io.Reader);
    public function new(?_r:stdgo.io.Io.Reader) {
        if (_r != null) this._r = _r;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_oneByteReader(_r);
    }
}
/**
    
    
    
**/
@:structInit @:private @:using(stdgo.testing.iotest.Iotest.T_halfReader_static_extension) class T_halfReader {
    public var _r : stdgo.io.Io.Reader = (null : stdgo.io.Io.Reader);
    public function new(?_r:stdgo.io.Io.Reader) {
        if (_r != null) this._r = _r;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_halfReader(_r);
    }
}
/**
    
    
    
**/
@:structInit @:private @:using(stdgo.testing.iotest.Iotest.T_dataErrReader_static_extension) class T_dataErrReader {
    public var _r : stdgo.io.Io.Reader = (null : stdgo.io.Io.Reader);
    public var _unread : stdgo.Slice<stdgo.StdGoTypes.GoUInt8> = (null : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>);
    public var _data : stdgo.Slice<stdgo.StdGoTypes.GoUInt8> = (null : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>);
    public function new(?_r:stdgo.io.Io.Reader, ?_unread:stdgo.Slice<stdgo.StdGoTypes.GoUInt8>, ?_data:stdgo.Slice<stdgo.StdGoTypes.GoUInt8>) {
        if (_r != null) this._r = _r;
        if (_unread != null) this._unread = _unread;
        if (_data != null) this._data = _data;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_dataErrReader(_r, _unread, _data);
    }
}
/**
    
    
    
**/
@:structInit @:private @:using(stdgo.testing.iotest.Iotest.T_timeoutReader_static_extension) class T_timeoutReader {
    public var _r : stdgo.io.Io.Reader = (null : stdgo.io.Io.Reader);
    public var _count : stdgo.StdGoTypes.GoInt = 0;
    public function new(?_r:stdgo.io.Io.Reader, ?_count:stdgo.StdGoTypes.GoInt) {
        if (_r != null) this._r = _r;
        if (_count != null) this._count = _count;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_timeoutReader(_r, _count);
    }
}
/**
    
    
    
**/
@:structInit @:private @:using(stdgo.testing.iotest.Iotest.T_errReader_static_extension) class T_errReader {
    public var _err : stdgo.Error = (null : stdgo.Error);
    public function new(?_err:stdgo.Error) {
        if (_err != null) this._err = _err;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_errReader(_err);
    }
}
/**
    
    
    
**/
@:structInit @:private @:using(stdgo.testing.iotest.Iotest.T_smallByteReader_static_extension) class T_smallByteReader {
    public var _r : stdgo.io.Io.Reader = (null : stdgo.io.Io.Reader);
    public var _off : stdgo.StdGoTypes.GoInt = 0;
    public var _n : stdgo.StdGoTypes.GoInt = 0;
    public function new(?_r:stdgo.io.Io.Reader, ?_off:stdgo.StdGoTypes.GoInt, ?_n:stdgo.StdGoTypes.GoInt) {
        if (_r != null) this._r = _r;
        if (_off != null) this._off = _off;
        if (_n != null) this._n = _n;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_smallByteReader(_r, _off, _n);
    }
}
/**
    
    
    
**/
@:structInit @:private @:using(stdgo.testing.iotest.Iotest.T_truncateWriter_static_extension) class T_truncateWriter {
    public var _w : stdgo.io.Io.Writer = (null : stdgo.io.Io.Writer);
    public var _n : stdgo.StdGoTypes.GoInt64 = 0;
    public function new(?_w:stdgo.io.Io.Writer, ?_n:stdgo.StdGoTypes.GoInt64) {
        if (_w != null) this._w = _w;
        if (_n != null) this._n = _n;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_truncateWriter(_w, _n);
    }
}
class T__struct_0_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T__struct_0>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.testing.iotest.Iotest.T__struct_0_asInterface) class T__struct_0_static_extension {

}
@:local @:using(stdgo.testing.iotest.Iotest.T__struct_0_static_extension) typedef T__struct_0 = {
    public var _in : stdgo.GoString;
    public var _want : stdgo.GoString;
    public var _trunc : stdgo.StdGoTypes.GoInt64;
    public var _n : stdgo.StdGoTypes.GoInt;
};
/**
    // NewWriteLogger returns a writer that behaves like w except
    // that it logs (using log.Printf) each write to standard error,
    // printing the prefix and the hexadecimal data written.
**/
function newWriteLogger(_prefix:stdgo.GoString, _w:stdgo.io.Io.Writer):stdgo.io.Io.Writer throw ":testing.iotest.newWriteLogger is not yet implemented";
/**
    // NewReadLogger returns a reader that behaves like r except
    // that it logs (using log.Printf) each read to standard error,
    // printing the prefix and the hexadecimal data read.
**/
function newReadLogger(_prefix:stdgo.GoString, _r:stdgo.io.Io.Reader):stdgo.io.Io.Reader throw ":testing.iotest.newReadLogger is not yet implemented";
function testWriteLogger(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T_>):Void {}
function testWriteLogger_errorOnWrite(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T_>):Void throw ":testing.iotest.testWriteLogger_errorOnWrite is not yet implemented";
function testReadLogger(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T_>):Void throw ":testing.iotest.testReadLogger is not yet implemented";
function testReadLogger_errorOnRead(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T_>):Void throw ":testing.iotest.testReadLogger_errorOnRead is not yet implemented";
/**
    // OneByteReader returns a Reader that implements
    // each non-empty Read by reading one byte from r.
**/
function oneByteReader(_r:stdgo.io.Io.Reader):stdgo.io.Io.Reader throw ":testing.iotest.oneByteReader is not yet implemented";
/**
    // HalfReader returns a Reader that implements Read
    // by reading half as many requested bytes from r.
**/
function halfReader(_r:stdgo.io.Io.Reader):stdgo.io.Io.Reader throw ":testing.iotest.halfReader is not yet implemented";
/**
    // DataErrReader changes the way errors are handled by a Reader. Normally, a
    // Reader returns an error (typically EOF) from the first Read call after the
    // last piece of data is read. DataErrReader wraps a Reader and changes its
    // behavior so the final error is returned along with the final data, instead
    // of in the first call after the final data.
**/
function dataErrReader(_r:stdgo.io.Io.Reader):stdgo.io.Io.Reader throw ":testing.iotest.dataErrReader is not yet implemented";
/**
    // TimeoutReader returns ErrTimeout on the second read
    // with no data. Subsequent calls to read succeed.
**/
function timeoutReader(_r:stdgo.io.Io.Reader):stdgo.io.Io.Reader throw ":testing.iotest.timeoutReader is not yet implemented";
/**
    // ErrReader returns an io.Reader that returns 0, err from all Read calls.
**/
function errReader(_err:stdgo.Error):stdgo.io.Io.Reader throw ":testing.iotest.errReader is not yet implemented";
/**
    // TestReader tests that reading from r returns the expected file content.
    // It does reads of different sizes, until EOF.
    // If r implements io.ReaderAt or io.Seeker, TestReader also checks
    // that those operations behave as they should.
    //
    // If TestReader finds any misbehaviors, it returns an error reporting them.
    // The error text may span multiple lines.
**/
function testReader(_r:stdgo.io.Io.Reader, _content:stdgo.Slice<stdgo.StdGoTypes.GoByte>):stdgo.Error throw ":testing.iotest.testReader is not yet implemented";
function testOneByteReader_nonEmptyReader(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T_>):Void throw ":testing.iotest.testOneByteReader_nonEmptyReader is not yet implemented";
function testOneByteReader_emptyReader(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T_>):Void throw ":testing.iotest.testOneByteReader_emptyReader is not yet implemented";
function testHalfReader_nonEmptyReader(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T_>):Void throw ":testing.iotest.testHalfReader_nonEmptyReader is not yet implemented";
function testHalfReader_emptyReader(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T_>):Void throw ":testing.iotest.testHalfReader_emptyReader is not yet implemented";
function testTimeOutReader_nonEmptyReader(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T_>):Void throw ":testing.iotest.testTimeOutReader_nonEmptyReader is not yet implemented";
function testTimeOutReader_emptyReader(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T_>):Void throw ":testing.iotest.testTimeOutReader_emptyReader is not yet implemented";
function testDataErrReader_nonEmptyReader(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T_>):Void throw ":testing.iotest.testDataErrReader_nonEmptyReader is not yet implemented";
function testDataErrReader_emptyReader(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T_>):Void throw ":testing.iotest.testDataErrReader_emptyReader is not yet implemented";
function testErrReader(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T_>):Void throw ":testing.iotest.testErrReader is not yet implemented";
function testStringsReader(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T_>):Void throw ":testing.iotest.testStringsReader is not yet implemented";
/**
    // TruncateWriter returns a Writer that writes to w
    // but stops silently after n bytes.
**/
function truncateWriter(_w:stdgo.io.Io.Writer, _n:stdgo.StdGoTypes.GoInt64):stdgo.io.Io.Writer throw ":testing.iotest.truncateWriter is not yet implemented";
function testTruncateWriter(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T_>):Void throw ":testing.iotest.testTruncateWriter is not yet implemented";
class T_writeLogger_asInterface {
    @:keep
    public dynamic function write(_p:stdgo.Slice<stdgo.StdGoTypes.GoByte>):{ var _0 : stdgo.StdGoTypes.GoInt; var _1 : stdgo.Error; } return __self__.value.write(_p);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_writeLogger>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.testing.iotest.Iotest.T_writeLogger_asInterface) class T_writeLogger_static_extension {
    @:keep
    static public function write( _l:stdgo.StdGoTypes.Ref<T_writeLogger>, _p:stdgo.Slice<stdgo.StdGoTypes.GoByte>):{ var _0 : stdgo.StdGoTypes.GoInt; var _1 : stdgo.Error; } throw "T_writeLogger:testing.iotest.write is not yet implemented";
}
class T_readLogger_asInterface {
    @:keep
    public dynamic function read(_p:stdgo.Slice<stdgo.StdGoTypes.GoByte>):{ var _0 : stdgo.StdGoTypes.GoInt; var _1 : stdgo.Error; } return __self__.value.read(_p);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_readLogger>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.testing.iotest.Iotest.T_readLogger_asInterface) class T_readLogger_static_extension {
    @:keep
    static public function read( _l:stdgo.StdGoTypes.Ref<T_readLogger>, _p:stdgo.Slice<stdgo.StdGoTypes.GoByte>):{ var _0 : stdgo.StdGoTypes.GoInt; var _1 : stdgo.Error; } throw "T_readLogger:testing.iotest.read is not yet implemented";
}
class T_errWriter_asInterface {
    @:keep
    public dynamic function write(_0:stdgo.Slice<stdgo.StdGoTypes.GoByte>):{ var _0 : stdgo.StdGoTypes.GoInt; var _1 : stdgo.Error; } return __self__.value.write(_0);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_errWriter>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.testing.iotest.Iotest.T_errWriter_asInterface) class T_errWriter_static_extension {
    @:keep
    static public function write( _w:T_errWriter, _0:stdgo.Slice<stdgo.StdGoTypes.GoByte>):{ var _0 : stdgo.StdGoTypes.GoInt; var _1 : stdgo.Error; } throw "T_errWriter:testing.iotest.write is not yet implemented";
}
class T_oneByteReader_asInterface {
    @:keep
    public dynamic function read(_p:stdgo.Slice<stdgo.StdGoTypes.GoByte>):{ var _0 : stdgo.StdGoTypes.GoInt; var _1 : stdgo.Error; } return __self__.value.read(_p);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_oneByteReader>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.testing.iotest.Iotest.T_oneByteReader_asInterface) class T_oneByteReader_static_extension {
    @:keep
    static public function read( _r:stdgo.StdGoTypes.Ref<T_oneByteReader>, _p:stdgo.Slice<stdgo.StdGoTypes.GoByte>):{ var _0 : stdgo.StdGoTypes.GoInt; var _1 : stdgo.Error; } throw "T_oneByteReader:testing.iotest.read is not yet implemented";
}
class T_halfReader_asInterface {
    @:keep
    public dynamic function read(_p:stdgo.Slice<stdgo.StdGoTypes.GoByte>):{ var _0 : stdgo.StdGoTypes.GoInt; var _1 : stdgo.Error; } return __self__.value.read(_p);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_halfReader>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.testing.iotest.Iotest.T_halfReader_asInterface) class T_halfReader_static_extension {
    @:keep
    static public function read( _r:stdgo.StdGoTypes.Ref<T_halfReader>, _p:stdgo.Slice<stdgo.StdGoTypes.GoByte>):{ var _0 : stdgo.StdGoTypes.GoInt; var _1 : stdgo.Error; } throw "T_halfReader:testing.iotest.read is not yet implemented";
}
class T_dataErrReader_asInterface {
    @:keep
    public dynamic function read(_p:stdgo.Slice<stdgo.StdGoTypes.GoByte>):{ var _0 : stdgo.StdGoTypes.GoInt; var _1 : stdgo.Error; } return __self__.value.read(_p);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_dataErrReader>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.testing.iotest.Iotest.T_dataErrReader_asInterface) class T_dataErrReader_static_extension {
    @:keep
    static public function read( _r:stdgo.StdGoTypes.Ref<T_dataErrReader>, _p:stdgo.Slice<stdgo.StdGoTypes.GoByte>):{ var _0 : stdgo.StdGoTypes.GoInt; var _1 : stdgo.Error; } throw "T_dataErrReader:testing.iotest.read is not yet implemented";
}
class T_timeoutReader_asInterface {
    @:keep
    public dynamic function read(_p:stdgo.Slice<stdgo.StdGoTypes.GoByte>):{ var _0 : stdgo.StdGoTypes.GoInt; var _1 : stdgo.Error; } return __self__.value.read(_p);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_timeoutReader>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.testing.iotest.Iotest.T_timeoutReader_asInterface) class T_timeoutReader_static_extension {
    @:keep
    static public function read( _r:stdgo.StdGoTypes.Ref<T_timeoutReader>, _p:stdgo.Slice<stdgo.StdGoTypes.GoByte>):{ var _0 : stdgo.StdGoTypes.GoInt; var _1 : stdgo.Error; } throw "T_timeoutReader:testing.iotest.read is not yet implemented";
}
class T_errReader_asInterface {
    @:keep
    public dynamic function read(_p:stdgo.Slice<stdgo.StdGoTypes.GoByte>):{ var _0 : stdgo.StdGoTypes.GoInt; var _1 : stdgo.Error; } return __self__.value.read(_p);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_errReader>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.testing.iotest.Iotest.T_errReader_asInterface) class T_errReader_static_extension {
    @:keep
    static public function read( _r:stdgo.StdGoTypes.Ref<T_errReader>, _p:stdgo.Slice<stdgo.StdGoTypes.GoByte>):{ var _0 : stdgo.StdGoTypes.GoInt; var _1 : stdgo.Error; } throw "T_errReader:testing.iotest.read is not yet implemented";
}
class T_smallByteReader_asInterface {
    @:keep
    public dynamic function read(_p:stdgo.Slice<stdgo.StdGoTypes.GoByte>):{ var _0 : stdgo.StdGoTypes.GoInt; var _1 : stdgo.Error; } return __self__.value.read(_p);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_smallByteReader>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.testing.iotest.Iotest.T_smallByteReader_asInterface) class T_smallByteReader_static_extension {
    @:keep
    static public function read( _r:stdgo.StdGoTypes.Ref<T_smallByteReader>, _p:stdgo.Slice<stdgo.StdGoTypes.GoByte>):{ var _0 : stdgo.StdGoTypes.GoInt; var _1 : stdgo.Error; } throw "T_smallByteReader:testing.iotest.read is not yet implemented";
}
class T_truncateWriter_asInterface {
    @:keep
    public dynamic function write(_p:stdgo.Slice<stdgo.StdGoTypes.GoByte>):{ var _0 : stdgo.StdGoTypes.GoInt; var _1 : stdgo.Error; } return __self__.value.write(_p);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_truncateWriter>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.testing.iotest.Iotest.T_truncateWriter_asInterface) class T_truncateWriter_static_extension {
    @:keep
    static public function write( _t:stdgo.StdGoTypes.Ref<T_truncateWriter>, _p:stdgo.Slice<stdgo.StdGoTypes.GoByte>):{ var _0 : stdgo.StdGoTypes.GoInt; var _1 : stdgo.Error; } throw "T_truncateWriter:testing.iotest.write is not yet implemented";
}
