package stdgo._internal.testing.iotest;
private var __go2hxdoc__package : Bool;
var errTimeout : stdgo.Error = (null : stdgo.Error);
var _truncateWriterTests : stdgo.Slice<T__struct_0> = (null : stdgo.Slice<T__struct_0>);
@:structInit @:private @:using(stdgo._internal.testing.iotest.Iotest.T_writeLogger_static_extension) class T_writeLogger {
    public var _prefix : stdgo.GoString = "";
    public var _w : stdgo._internal.io.Io.Writer = (null : stdgo._internal.io.Io.Writer);
    public function new(?_prefix:stdgo.GoString, ?_w:stdgo._internal.io.Io.Writer) {
        if (_prefix != null) this._prefix = _prefix;
        if (_w != null) this._w = _w;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_writeLogger(_prefix, _w);
    }
}
@:structInit @:private @:using(stdgo._internal.testing.iotest.Iotest.T_readLogger_static_extension) class T_readLogger {
    public var _prefix : stdgo.GoString = "";
    public var _r : stdgo._internal.io.Io.Reader = (null : stdgo._internal.io.Io.Reader);
    public function new(?_prefix:stdgo.GoString, ?_r:stdgo._internal.io.Io.Reader) {
        if (_prefix != null) this._prefix = _prefix;
        if (_r != null) this._r = _r;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_readLogger(_prefix, _r);
    }
}
@:structInit @:private @:using(stdgo._internal.testing.iotest.Iotest.T_errWriter_static_extension) class T_errWriter {
    public var _err : stdgo.Error = (null : stdgo.Error);
    public function new(?_err:stdgo.Error) {
        if (_err != null) this._err = _err;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_errWriter(_err);
    }
}
@:structInit @:private @:using(stdgo._internal.testing.iotest.Iotest.T_oneByteReader_static_extension) class T_oneByteReader {
    public var _r : stdgo._internal.io.Io.Reader = (null : stdgo._internal.io.Io.Reader);
    public function new(?_r:stdgo._internal.io.Io.Reader) {
        if (_r != null) this._r = _r;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_oneByteReader(_r);
    }
}
@:structInit @:private @:using(stdgo._internal.testing.iotest.Iotest.T_halfReader_static_extension) class T_halfReader {
    public var _r : stdgo._internal.io.Io.Reader = (null : stdgo._internal.io.Io.Reader);
    public function new(?_r:stdgo._internal.io.Io.Reader) {
        if (_r != null) this._r = _r;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_halfReader(_r);
    }
}
@:structInit @:private @:using(stdgo._internal.testing.iotest.Iotest.T_dataErrReader_static_extension) class T_dataErrReader {
    public var _r : stdgo._internal.io.Io.Reader = (null : stdgo._internal.io.Io.Reader);
    public var _unread : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public var _data : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public function new(?_r:stdgo._internal.io.Io.Reader, ?_unread:stdgo.Slice<stdgo.GoUInt8>, ?_data:stdgo.Slice<stdgo.GoUInt8>) {
        if (_r != null) this._r = _r;
        if (_unread != null) this._unread = _unread;
        if (_data != null) this._data = _data;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_dataErrReader(_r, _unread, _data);
    }
}
@:structInit @:private @:using(stdgo._internal.testing.iotest.Iotest.T_timeoutReader_static_extension) class T_timeoutReader {
    public var _r : stdgo._internal.io.Io.Reader = (null : stdgo._internal.io.Io.Reader);
    public var _count : stdgo.GoInt = 0;
    public function new(?_r:stdgo._internal.io.Io.Reader, ?_count:stdgo.GoInt) {
        if (_r != null) this._r = _r;
        if (_count != null) this._count = _count;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_timeoutReader(_r, _count);
    }
}
@:structInit @:private @:using(stdgo._internal.testing.iotest.Iotest.T_errReader_static_extension) class T_errReader {
    public var _err : stdgo.Error = (null : stdgo.Error);
    public function new(?_err:stdgo.Error) {
        if (_err != null) this._err = _err;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_errReader(_err);
    }
}
@:structInit @:private @:using(stdgo._internal.testing.iotest.Iotest.T_smallByteReader_static_extension) class T_smallByteReader {
    public var _r : stdgo._internal.io.Io.Reader = (null : stdgo._internal.io.Io.Reader);
    public var _off : stdgo.GoInt = 0;
    public var _n : stdgo.GoInt = 0;
    public function new(?_r:stdgo._internal.io.Io.Reader, ?_off:stdgo.GoInt, ?_n:stdgo.GoInt) {
        if (_r != null) this._r = _r;
        if (_off != null) this._off = _off;
        if (_n != null) this._n = _n;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_smallByteReader(_r, _off, _n);
    }
}
@:structInit @:private @:using(stdgo._internal.testing.iotest.Iotest.T_truncateWriter_static_extension) class T_truncateWriter {
    public var _w : stdgo._internal.io.Io.Writer = (null : stdgo._internal.io.Io.Writer);
    public var _n : stdgo.GoInt64 = 0;
    public function new(?_w:stdgo._internal.io.Io.Writer, ?_n:stdgo.GoInt64) {
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
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T__struct_0>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.testing.iotest.Iotest.T__struct_0_asInterface) class T__struct_0_static_extension {

}
@:local @:using(stdgo._internal.testing.iotest.Iotest.T__struct_0_static_extension) typedef T__struct_0 = {
    public var _in : stdgo.GoString;
    public var _want : stdgo.GoString;
    public var _trunc : stdgo.GoInt64;
    public var _n : stdgo.GoInt;
};
function newWriteLogger(_prefix:stdgo.GoString, _w:stdgo._internal.io.Io.Writer):stdgo._internal.io.Io.Writer throw ":testing.iotest.newWriteLogger is not yet implemented";
function newReadLogger(_prefix:stdgo.GoString, _r:stdgo._internal.io.Io.Reader):stdgo._internal.io.Io.Reader throw ":testing.iotest.newReadLogger is not yet implemented";
function testWriteLogger(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
function testWriteLogger_errorOnWrite(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void throw ":testing.iotest.testWriteLogger_errorOnWrite is not yet implemented";
function testReadLogger(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void throw ":testing.iotest.testReadLogger is not yet implemented";
function testReadLogger_errorOnRead(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void throw ":testing.iotest.testReadLogger_errorOnRead is not yet implemented";
function oneByteReader(_r:stdgo._internal.io.Io.Reader):stdgo._internal.io.Io.Reader throw ":testing.iotest.oneByteReader is not yet implemented";
function halfReader(_r:stdgo._internal.io.Io.Reader):stdgo._internal.io.Io.Reader throw ":testing.iotest.halfReader is not yet implemented";
function dataErrReader(_r:stdgo._internal.io.Io.Reader):stdgo._internal.io.Io.Reader throw ":testing.iotest.dataErrReader is not yet implemented";
function timeoutReader(_r:stdgo._internal.io.Io.Reader):stdgo._internal.io.Io.Reader throw ":testing.iotest.timeoutReader is not yet implemented";
function errReader(_err:stdgo.Error):stdgo._internal.io.Io.Reader throw ":testing.iotest.errReader is not yet implemented";
function testReader(_r:stdgo._internal.io.Io.Reader, _content:stdgo.Slice<stdgo.GoByte>):stdgo.Error throw ":testing.iotest.testReader is not yet implemented";
function testOneByteReader_nonEmptyReader(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void throw ":testing.iotest.testOneByteReader_nonEmptyReader is not yet implemented";
function testOneByteReader_emptyReader(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void throw ":testing.iotest.testOneByteReader_emptyReader is not yet implemented";
function testHalfReader_nonEmptyReader(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void throw ":testing.iotest.testHalfReader_nonEmptyReader is not yet implemented";
function testHalfReader_emptyReader(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void throw ":testing.iotest.testHalfReader_emptyReader is not yet implemented";
function testTimeOutReader_nonEmptyReader(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void throw ":testing.iotest.testTimeOutReader_nonEmptyReader is not yet implemented";
function testTimeOutReader_emptyReader(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void throw ":testing.iotest.testTimeOutReader_emptyReader is not yet implemented";
function testDataErrReader_nonEmptyReader(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void throw ":testing.iotest.testDataErrReader_nonEmptyReader is not yet implemented";
function testDataErrReader_emptyReader(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void throw ":testing.iotest.testDataErrReader_emptyReader is not yet implemented";
function testErrReader(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void throw ":testing.iotest.testErrReader is not yet implemented";
function testStringsReader(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void throw ":testing.iotest.testStringsReader is not yet implemented";
function truncateWriter(_w:stdgo._internal.io.Io.Writer, _n:stdgo.GoInt64):stdgo._internal.io.Io.Writer throw ":testing.iotest.truncateWriter is not yet implemented";
function testTruncateWriter(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void throw ":testing.iotest.testTruncateWriter is not yet implemented";
class T_writeLogger_asInterface {
    @:keep
    public dynamic function write(_p:stdgo.Slice<stdgo.GoByte>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return __self__.value.write(_p);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_writeLogger>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.testing.iotest.Iotest.T_writeLogger_asInterface) class T_writeLogger_static_extension {
    @:keep
    static public function write( _l:stdgo.Ref<T_writeLogger>, _p:stdgo.Slice<stdgo.GoByte>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } throw "T_writeLogger:testing.iotest.write is not yet implemented";
}
class T_readLogger_asInterface {
    @:keep
    public dynamic function read(_p:stdgo.Slice<stdgo.GoByte>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return __self__.value.read(_p);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_readLogger>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.testing.iotest.Iotest.T_readLogger_asInterface) class T_readLogger_static_extension {
    @:keep
    static public function read( _l:stdgo.Ref<T_readLogger>, _p:stdgo.Slice<stdgo.GoByte>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } throw "T_readLogger:testing.iotest.read is not yet implemented";
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
@:keep @:allow(stdgo._internal.testing.iotest.Iotest.T_errWriter_asInterface) class T_errWriter_static_extension {
    @:keep
    static public function write( _w:T_errWriter, _0:stdgo.Slice<stdgo.GoByte>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } throw "T_errWriter:testing.iotest.write is not yet implemented";
}
class T_oneByteReader_asInterface {
    @:keep
    public dynamic function read(_p:stdgo.Slice<stdgo.GoByte>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return __self__.value.read(_p);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_oneByteReader>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.testing.iotest.Iotest.T_oneByteReader_asInterface) class T_oneByteReader_static_extension {
    @:keep
    static public function read( _r:stdgo.Ref<T_oneByteReader>, _p:stdgo.Slice<stdgo.GoByte>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } throw "T_oneByteReader:testing.iotest.read is not yet implemented";
}
class T_halfReader_asInterface {
    @:keep
    public dynamic function read(_p:stdgo.Slice<stdgo.GoByte>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return __self__.value.read(_p);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_halfReader>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.testing.iotest.Iotest.T_halfReader_asInterface) class T_halfReader_static_extension {
    @:keep
    static public function read( _r:stdgo.Ref<T_halfReader>, _p:stdgo.Slice<stdgo.GoByte>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } throw "T_halfReader:testing.iotest.read is not yet implemented";
}
class T_dataErrReader_asInterface {
    @:keep
    public dynamic function read(_p:stdgo.Slice<stdgo.GoByte>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return __self__.value.read(_p);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_dataErrReader>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.testing.iotest.Iotest.T_dataErrReader_asInterface) class T_dataErrReader_static_extension {
    @:keep
    static public function read( _r:stdgo.Ref<T_dataErrReader>, _p:stdgo.Slice<stdgo.GoByte>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } throw "T_dataErrReader:testing.iotest.read is not yet implemented";
}
class T_timeoutReader_asInterface {
    @:keep
    public dynamic function read(_p:stdgo.Slice<stdgo.GoByte>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return __self__.value.read(_p);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_timeoutReader>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.testing.iotest.Iotest.T_timeoutReader_asInterface) class T_timeoutReader_static_extension {
    @:keep
    static public function read( _r:stdgo.Ref<T_timeoutReader>, _p:stdgo.Slice<stdgo.GoByte>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } throw "T_timeoutReader:testing.iotest.read is not yet implemented";
}
class T_errReader_asInterface {
    @:keep
    public dynamic function read(_p:stdgo.Slice<stdgo.GoByte>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return __self__.value.read(_p);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_errReader>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.testing.iotest.Iotest.T_errReader_asInterface) class T_errReader_static_extension {
    @:keep
    static public function read( _r:stdgo.Ref<T_errReader>, _p:stdgo.Slice<stdgo.GoByte>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } throw "T_errReader:testing.iotest.read is not yet implemented";
}
class T_smallByteReader_asInterface {
    @:keep
    public dynamic function read(_p:stdgo.Slice<stdgo.GoByte>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return __self__.value.read(_p);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_smallByteReader>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.testing.iotest.Iotest.T_smallByteReader_asInterface) class T_smallByteReader_static_extension {
    @:keep
    static public function read( _r:stdgo.Ref<T_smallByteReader>, _p:stdgo.Slice<stdgo.GoByte>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } throw "T_smallByteReader:testing.iotest.read is not yet implemented";
}
class T_truncateWriter_asInterface {
    @:keep
    public dynamic function write(_p:stdgo.Slice<stdgo.GoByte>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return __self__.value.write(_p);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_truncateWriter>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.testing.iotest.Iotest.T_truncateWriter_asInterface) class T_truncateWriter_static_extension {
    @:keep
    static public function write( _t:stdgo.Ref<T_truncateWriter>, _p:stdgo.Slice<stdgo.GoByte>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } throw "T_truncateWriter:testing.iotest.write is not yet implemented";
}
