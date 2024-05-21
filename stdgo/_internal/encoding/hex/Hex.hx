package stdgo._internal.encoding.hex;
private var __go2hxdoc__package : Bool;
final _hextable : stdgo.GoString = ("0123456789abcdef" : stdgo.GoString);
final _reverseHexTable : stdgo.GoString = stdgo.Go.str(255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
0,
1,
2,
3,
4,
5,
6,
"\x07\x08\t",
255,
255,
255,
255,
255,
255,
255,
"\n\x0B\x0C\r",
14,
15,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
"\n\x0B\x0C\r",
14,
15,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255);
final _bufferSize : stdgo.GoUInt64 = (1024i64 : stdgo.GoUInt64);
var _sink : stdgo.Slice<stdgo.GoByte> = (null : stdgo.Slice<stdgo.GoUInt8>);
var errLength : stdgo.Error = stdgo._internal.errors.Errors.new_(("encoding/hex: odd length hex string" : stdgo.GoString));
var _encDecTests : stdgo.Slice<stdgo._internal.encoding.hex.Hex.T_encDecTest> = (new stdgo.Slice<stdgo._internal.encoding.hex.Hex.T_encDecTest>(7, 7, ...[(new stdgo._internal.encoding.hex.Hex.T_encDecTest(stdgo.Go.str()?.__copy__(), (new stdgo.Slice<stdgo.GoUInt8>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>)) : stdgo._internal.encoding.hex.Hex.T_encDecTest), (new stdgo._internal.encoding.hex.Hex.T_encDecTest(("0001020304050607" : stdgo.GoString), (new stdgo.Slice<stdgo.GoUInt8>(8, 8, ...[(0 : stdgo.GoUInt8), (1 : stdgo.GoUInt8), (2 : stdgo.GoUInt8), (3 : stdgo.GoUInt8), (4 : stdgo.GoUInt8), (5 : stdgo.GoUInt8), (6 : stdgo.GoUInt8), (7 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>)) : stdgo._internal.encoding.hex.Hex.T_encDecTest), (new stdgo._internal.encoding.hex.Hex.T_encDecTest(("08090a0b0c0d0e0f" : stdgo.GoString), (new stdgo.Slice<stdgo.GoUInt8>(8, 8, ...[(8 : stdgo.GoUInt8), (9 : stdgo.GoUInt8), (10 : stdgo.GoUInt8), (11 : stdgo.GoUInt8), (12 : stdgo.GoUInt8), (13 : stdgo.GoUInt8), (14 : stdgo.GoUInt8), (15 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>)) : stdgo._internal.encoding.hex.Hex.T_encDecTest), (new stdgo._internal.encoding.hex.Hex.T_encDecTest(("f0f1f2f3f4f5f6f7" : stdgo.GoString), (new stdgo.Slice<stdgo.GoUInt8>(8, 8, ...[(240 : stdgo.GoUInt8), (241 : stdgo.GoUInt8), (242 : stdgo.GoUInt8), (243 : stdgo.GoUInt8), (244 : stdgo.GoUInt8), (245 : stdgo.GoUInt8), (246 : stdgo.GoUInt8), (247 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>)) : stdgo._internal.encoding.hex.Hex.T_encDecTest), (new stdgo._internal.encoding.hex.Hex.T_encDecTest(("f8f9fafbfcfdfeff" : stdgo.GoString), (new stdgo.Slice<stdgo.GoUInt8>(8, 8, ...[(248 : stdgo.GoUInt8), (249 : stdgo.GoUInt8), (250 : stdgo.GoUInt8), (251 : stdgo.GoUInt8), (252 : stdgo.GoUInt8), (253 : stdgo.GoUInt8), (254 : stdgo.GoUInt8), (255 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>)) : stdgo._internal.encoding.hex.Hex.T_encDecTest), (new stdgo._internal.encoding.hex.Hex.T_encDecTest(("67" : stdgo.GoString), (new stdgo.Slice<stdgo.GoUInt8>(1, 1, ...[(103 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>)) : stdgo._internal.encoding.hex.Hex.T_encDecTest), (new stdgo._internal.encoding.hex.Hex.T_encDecTest(("e3a1" : stdgo.GoString), (new stdgo.Slice<stdgo.GoUInt8>(2, 2, ...[(227 : stdgo.GoUInt8), (161 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>)) : stdgo._internal.encoding.hex.Hex.T_encDecTest)].concat([for (i in 7 ... (7 > 7 ? 7 : 7 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.encoding.hex.Hex.T_encDecTest)])) : stdgo.Slice<stdgo._internal.encoding.hex.Hex.T_encDecTest>);
var _errTests : stdgo.Slice<T__struct_0> = (new stdgo.Slice<T__struct_0>(9, 9, ...[({ _in : stdgo.Go.str()?.__copy__(), _out : stdgo.Go.str()?.__copy__(), _err : (null : stdgo.Error) } : T__struct_0), ({ _in : ("0" : stdgo.GoString), _out : stdgo.Go.str()?.__copy__(), _err : errLength } : T__struct_0), ({ _in : ("zd4aa" : stdgo.GoString), _out : stdgo.Go.str()?.__copy__(), _err : stdgo.Go.asInterface(((122 : stdgo._internal.encoding.hex.Hex.InvalidByteError) : InvalidByteError)) } : T__struct_0), ({ _in : ("d4aaz" : stdgo.GoString), _out : ("Ԫ" : stdgo.GoString), _err : stdgo.Go.asInterface(((122 : stdgo._internal.encoding.hex.Hex.InvalidByteError) : InvalidByteError)) } : T__struct_0), ({ _in : ("30313" : stdgo.GoString), _out : ("01" : stdgo.GoString), _err : errLength } : T__struct_0), ({ _in : ("0g" : stdgo.GoString), _out : stdgo.Go.str()?.__copy__(), _err : stdgo.Go.asInterface(((103 : stdgo._internal.encoding.hex.Hex.InvalidByteError) : InvalidByteError)) } : T__struct_0), ({ _in : ("00gg" : stdgo.GoString), _out : stdgo.Go.str(0)?.__copy__(), _err : stdgo.Go.asInterface(((103 : stdgo._internal.encoding.hex.Hex.InvalidByteError) : InvalidByteError)) } : T__struct_0), ({ _in : stdgo.Go.str("0", 1)?.__copy__(), _out : stdgo.Go.str()?.__copy__(), _err : stdgo.Go.asInterface(((1 : stdgo._internal.encoding.hex.Hex.InvalidByteError) : InvalidByteError)) } : T__struct_0), ({ _in : ("ffeed" : stdgo.GoString), _out : stdgo.Go.str(255, 238)?.__copy__(), _err : errLength } : T__struct_0)].concat([for (i in 9 ... (9 > 9 ? 9 : 9 : stdgo.GoInt).toBasic()) ({ _in : ("" : stdgo.GoString), _out : ("" : stdgo.GoString), _err : (null : stdgo.Error) } : T__struct_0)])) : stdgo.Slice<T__struct_0>);
var _expectedHexDump : stdgo.Slice<stdgo.GoUInt8> = (("00000000  1e 1f 20 21 22 23 24 25  26 27 28 29 2a 2b 2c 2d  |.. !\"#$%&\'()*+,-|\n00000010  2e 2f 30 31 32 33 34 35  36 37 38 39 3a 3b 3c 3d  |./0123456789:;<=|\n00000020  3e 3f 40 41 42 43 44 45                           |>?@ABCDE|\n" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>);
@:structInit @:private @:using(stdgo._internal.encoding.hex.Hex.T_encoder_static_extension) class T_encoder {
    public var _w : stdgo._internal.io.Io.Writer = (null : stdgo._internal.io.Io.Writer);
    public var _err : stdgo.Error = (null : stdgo.Error);
    public var _out : stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(1024, 1024, ...[for (i in 0 ... 1024) (0 : stdgo.GoUInt8)]);
    public function new(?_w:stdgo._internal.io.Io.Writer, ?_err:stdgo.Error, ?_out:stdgo.GoArray<stdgo.GoUInt8>) {
        if (_w != null) this._w = _w;
        if (_err != null) this._err = _err;
        if (_out != null) this._out = _out;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_encoder(_w, _err, _out);
    }
}
@:structInit @:private @:using(stdgo._internal.encoding.hex.Hex.T_decoder_static_extension) class T_decoder {
    public var _r : stdgo._internal.io.Io.Reader = (null : stdgo._internal.io.Io.Reader);
    public var _err : stdgo.Error = (null : stdgo.Error);
    public var _in : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public var _arr : stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(1024, 1024, ...[for (i in 0 ... 1024) (0 : stdgo.GoUInt8)]);
    public function new(?_r:stdgo._internal.io.Io.Reader, ?_err:stdgo.Error, ?_in:stdgo.Slice<stdgo.GoUInt8>, ?_arr:stdgo.GoArray<stdgo.GoUInt8>) {
        if (_r != null) this._r = _r;
        if (_err != null) this._err = _err;
        if (_in != null) this._in = _in;
        if (_arr != null) this._arr = _arr;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_decoder(_r, _err, _in, _arr);
    }
}
@:structInit @:private @:using(stdgo._internal.encoding.hex.Hex.T_dumper_static_extension) class T_dumper {
    public var _w : stdgo._internal.io.Io.Writer = (null : stdgo._internal.io.Io.Writer);
    public var _rightChars : stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(18, 18, ...[for (i in 0 ... 18) (0 : stdgo.GoUInt8)]);
    public var _buf : stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(14, 14, ...[for (i in 0 ... 14) (0 : stdgo.GoUInt8)]);
    public var _used : stdgo.GoInt = 0;
    public var _n : stdgo.GoUInt = 0;
    public var _closed : Bool = false;
    public function new(?_w:stdgo._internal.io.Io.Writer, ?_rightChars:stdgo.GoArray<stdgo.GoUInt8>, ?_buf:stdgo.GoArray<stdgo.GoUInt8>, ?_used:stdgo.GoInt, ?_n:stdgo.GoUInt, ?_closed:Bool) {
        if (_w != null) this._w = _w;
        if (_rightChars != null) this._rightChars = _rightChars;
        if (_buf != null) this._buf = _buf;
        if (_used != null) this._used = _used;
        if (_n != null) this._n = _n;
        if (_closed != null) this._closed = _closed;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_dumper(_w, _rightChars, _buf, _used, _n, _closed);
    }
}
@:structInit @:private class T_encDecTest {
    public var _enc : stdgo.GoString = "";
    public var _dec : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public function new(?_enc:stdgo.GoString, ?_dec:stdgo.Slice<stdgo.GoUInt8>) {
        if (_enc != null) this._enc = _enc;
        if (_dec != null) this._dec = _dec;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_encDecTest(_enc, _dec);
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
@:keep @:allow(stdgo._internal.encoding.hex.Hex.T__struct_0_asInterface) class T__struct_0_static_extension {

}
@:local @:using(stdgo._internal.encoding.hex.Hex.T__struct_0_static_extension) typedef T__struct_0 = {
    public var _in : stdgo.GoString;
    public var _out : stdgo.GoString;
    public var _err : stdgo.Error;
};
class T__struct_1_asInterface {
    @:embedded
    public dynamic function read(_src:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return __self__.value.read(_src);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T__struct_1>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.encoding.hex.Hex.T__struct_1_asInterface) class T__struct_1_static_extension {
    @:embedded
    public static function read( __self__:T__struct_1, _src:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return return __self__.reader.read(_src);
}
@:local @:using(stdgo._internal.encoding.hex.Hex.T__struct_1_static_extension) typedef T__struct_1 = {
    @:embedded
    public var reader : stdgo._internal.io.Io.Reader;
};
class T__struct_2_asInterface {
    @:embedded
    public dynamic function write(_src:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return __self__.value.write(_src);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T__struct_2>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.encoding.hex.Hex.T__struct_2_asInterface) class T__struct_2_static_extension {
    @:embedded
    public static function write( __self__:T__struct_2, _src:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return return __self__.writer.write(_src);
}
@:local @:using(stdgo._internal.encoding.hex.Hex.T__struct_2_static_extension) typedef T__struct_2 = {
    @:embedded
    public var writer : stdgo._internal.io.Io.Writer;
};
@:named @:using(stdgo._internal.encoding.hex.Hex.InvalidByteError_static_extension) typedef InvalidByteError = stdgo.GoUInt8;
function encodedLen(_n:stdgo.GoInt):stdgo.GoInt {
        return (_n * (2 : stdgo.GoInt) : stdgo.GoInt);
    }
function encode(_dst:stdgo.Slice<stdgo.GoByte>, _src:stdgo.Slice<stdgo.GoByte>):stdgo.GoInt {
        var _j:stdgo.GoInt = (0 : stdgo.GoInt);
        for (__0 => _v in _src) {
            _dst[(_j : stdgo.GoInt)] = ("0123456789abcdef" : stdgo.GoString)[((_v >> (4i64 : stdgo.GoUInt64) : stdgo.GoUInt8) : stdgo.GoInt)];
            _dst[(_j + (1 : stdgo.GoInt) : stdgo.GoInt)] = ("0123456789abcdef" : stdgo.GoString)[((_v & (15 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoInt)];
            _j = (_j + ((2 : stdgo.GoInt)) : stdgo.GoInt);
        };
        return ((_src.length) * (2 : stdgo.GoInt) : stdgo.GoInt);
    }
function decodedLen(_x:stdgo.GoInt):stdgo.GoInt {
        return (_x / (2 : stdgo.GoInt) : stdgo.GoInt);
    }
function decode(_dst:stdgo.Slice<stdgo.GoByte>, _src:stdgo.Slice<stdgo.GoByte>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        var __0:stdgo.GoInt = (0 : stdgo.GoInt), __1:stdgo.GoInt = (1 : stdgo.GoInt), _j:stdgo.GoInt = __1, _i:stdgo.GoInt = __0;
        stdgo.Go.cfor((_j < (_src.length) : Bool), _j = (_j + ((2 : stdgo.GoInt)) : stdgo.GoInt), {
            var _p:stdgo.GoUInt8 = _src[(_j - (1 : stdgo.GoInt) : stdgo.GoInt)];
            var _q:stdgo.GoUInt8 = _src[(_j : stdgo.GoInt)];
            var _a:stdgo.GoUInt8 = stdgo.Go.str(255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
0,
1,
2,
3,
4,
5,
6,
"\x07\x08\t",
255,
255,
255,
255,
255,
255,
255,
"\n\x0B\x0C\r",
14,
15,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
"\n\x0B\x0C\r",
14,
15,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255)[(_p : stdgo.GoInt)];
            var _b:stdgo.GoUInt8 = stdgo.Go.str(255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
0,
1,
2,
3,
4,
5,
6,
"\x07\x08\t",
255,
255,
255,
255,
255,
255,
255,
"\n\x0B\x0C\r",
14,
15,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
"\n\x0B\x0C\r",
14,
15,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255)[(_q : stdgo.GoInt)];
            if ((_a > (15 : stdgo.GoUInt8) : Bool)) {
                return { _0 : _i, _1 : stdgo.Go.asInterface((_p : InvalidByteError)) };
            };
            if ((_b > (15 : stdgo.GoUInt8) : Bool)) {
                return { _0 : _i, _1 : stdgo.Go.asInterface((_q : InvalidByteError)) };
            };
            _dst[(_i : stdgo.GoInt)] = (((_a << (4i64 : stdgo.GoUInt64) : stdgo.GoUInt8)) | _b : stdgo.GoUInt8);
            _i++;
        });
        if (((_src.length) % (2 : stdgo.GoInt) : stdgo.GoInt) == ((1 : stdgo.GoInt))) {
            if ((stdgo.Go.str(255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
0,
1,
2,
3,
4,
5,
6,
"\x07\x08\t",
255,
255,
255,
255,
255,
255,
255,
"\n\x0B\x0C\r",
14,
15,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
"\n\x0B\x0C\r",
14,
15,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255)[(_src[(_j - (1 : stdgo.GoInt) : stdgo.GoInt)] : stdgo.GoInt)] > (15 : stdgo.GoUInt8) : Bool)) {
                return { _0 : _i, _1 : stdgo.Go.asInterface((_src[(_j - (1 : stdgo.GoInt) : stdgo.GoInt)] : InvalidByteError)) };
            };
            return { _0 : _i, _1 : errLength };
        };
        return { _0 : _i, _1 : (null : stdgo.Error) };
    }
function encodeToString(_src:stdgo.Slice<stdgo.GoByte>):stdgo.GoString {
        var _dst = (new stdgo.Slice<stdgo.GoUInt8>((encodedLen((_src.length)) : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        encode(_dst, _src);
        return (_dst : stdgo.GoString)?.__copy__();
    }
function decodeString(_s:stdgo.GoString):{ var _0 : stdgo.Slice<stdgo.GoByte>; var _1 : stdgo.Error; } {
        var _src = (_s : stdgo.Slice<stdgo.GoByte>);
        var __tmp__ = decode(_src, _src), _n:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        return { _0 : (_src.__slice__(0, _n) : stdgo.Slice<stdgo.GoUInt8>), _1 : _err };
    }
function dump(_data:stdgo.Slice<stdgo.GoByte>):stdgo.GoString {
        if ((_data.length) == ((0 : stdgo.GoInt))) {
            return stdgo.Go.str()?.__copy__();
        };
        var _buf:stdgo._internal.strings.Strings.Builder = ({} : stdgo._internal.strings.Strings.Builder);
        _buf.grow(((((1 : stdgo.GoInt) + (((((_data.length) - (1 : stdgo.GoInt) : stdgo.GoInt)) / (16 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoInt)) * (79 : stdgo.GoInt) : stdgo.GoInt));
        var _dumper:stdgo._internal.io.Io.WriteCloser = dumper(stdgo.Go.asInterface((stdgo.Go.setRef(_buf) : stdgo.Ref<stdgo._internal.strings.Strings.Builder>)));
        _dumper.write(_data);
        _dumper.close();
        return (_buf.string() : stdgo.GoString)?.__copy__();
    }
function newEncoder(_w:stdgo._internal.io.Io.Writer):stdgo._internal.io.Io.Writer {
        return stdgo.Go.asInterface((stdgo.Go.setRef(({ _w : _w } : stdgo._internal.encoding.hex.Hex.T_encoder)) : stdgo.Ref<stdgo._internal.encoding.hex.Hex.T_encoder>));
    }
function newDecoder(_r:stdgo._internal.io.Io.Reader):stdgo._internal.io.Io.Reader {
        return stdgo.Go.asInterface((stdgo.Go.setRef(({ _r : _r } : stdgo._internal.encoding.hex.Hex.T_decoder)) : stdgo.Ref<stdgo._internal.encoding.hex.Hex.T_decoder>));
    }
function dumper(_w:stdgo._internal.io.Io.Writer):stdgo._internal.io.Io.WriteCloser {
        return stdgo.Go.asInterface((stdgo.Go.setRef(({ _w : _w } : stdgo._internal.encoding.hex.Hex.T_dumper)) : stdgo.Ref<stdgo._internal.encoding.hex.Hex.T_dumper>));
    }
function _toChar(_b:stdgo.GoByte):stdgo.GoByte {
        if (((_b < (32 : stdgo.GoUInt8) : Bool) || (_b > (126 : stdgo.GoUInt8) : Bool) : Bool)) {
            return (46 : stdgo.GoUInt8);
        };
        return _b;
    }
function testEncode(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        for (_i => _test in _encDecTests) {
            var _dst = (new stdgo.Slice<stdgo.GoUInt8>((encodedLen((_test._dec.length)) : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
            var _n:stdgo.GoInt = encode(_dst, _test._dec);
            if (_n != ((_dst.length))) {
                _t.errorf(("#%d: bad return value: got: %d want: %d" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_n), stdgo.Go.toInterface((_dst.length)));
            };
            if ((_dst : stdgo.GoString) != (_test._enc)) {
                _t.errorf(("#%d: got: %#v want: %#v" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_dst), stdgo.Go.toInterface(_test._enc));
            };
        };
    }
function testDecode(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _decTests = (_encDecTests.__append__((new stdgo._internal.encoding.hex.Hex.T_encDecTest(("F8F9FAFBFCFDFEFF" : stdgo.GoString), (new stdgo.Slice<stdgo.GoUInt8>(8, 8, ...[(248 : stdgo.GoUInt8), (249 : stdgo.GoUInt8), (250 : stdgo.GoUInt8), (251 : stdgo.GoUInt8), (252 : stdgo.GoUInt8), (253 : stdgo.GoUInt8), (254 : stdgo.GoUInt8), (255 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>)) : stdgo._internal.encoding.hex.Hex.T_encDecTest)));
        for (_i => _test in _decTests) {
            var _dst = (new stdgo.Slice<stdgo.GoUInt8>((decodedLen((_test._enc.length)) : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
            var __tmp__ = decode(_dst, (_test._enc : stdgo.Slice<stdgo.GoByte>)), _n:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _t.errorf(("#%d: bad return value: got:%d want:%d" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_n), stdgo.Go.toInterface((_dst.length)));
            } else if (!stdgo._internal.bytes.Bytes.equal(_dst, _test._dec)) {
                _t.errorf(("#%d: got: %#v want: %#v" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_dst), stdgo.Go.toInterface(_test._dec));
            };
        };
    }
function testEncodeToString(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        for (_i => _test in _encDecTests) {
            var _s:stdgo.GoString = encodeToString(_test._dec)?.__copy__();
            if (_s != (_test._enc)) {
                _t.errorf(("#%d got:%s want:%s" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(_test._enc));
            };
        };
    }
function testDecodeString(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        for (_i => _test in _encDecTests) {
            var __tmp__ = decodeString(_test._enc?.__copy__()), _dst:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _t.errorf(("#%d: unexpected err value: %s" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_err));
                continue;
            };
            if (!stdgo._internal.bytes.Bytes.equal(_dst, _test._dec)) {
                _t.errorf(("#%d: got: %#v want: #%v" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_dst), stdgo.Go.toInterface(_test._dec));
            };
        };
    }
function testDecodeErr(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        for (__0 => _tt in _errTests) {
            var _out = (new stdgo.Slice<stdgo.GoUInt8>(((_tt._in.length) + (10 : stdgo.GoInt) : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
            var __tmp__ = decode(_out, (_tt._in : stdgo.Slice<stdgo.GoByte>)), _n:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (((((_out.__slice__(0, _n) : stdgo.Slice<stdgo.GoUInt8>) : stdgo.GoString) != _tt._out) || (stdgo.Go.toInterface(_err) != stdgo.Go.toInterface(_tt._err)) : Bool)) {
                _t.errorf(("Decode(%q) = %q, %v, want %q, %v" : stdgo.GoString), stdgo.Go.toInterface(_tt._in), stdgo.Go.toInterface(((_out.__slice__(0, _n) : stdgo.Slice<stdgo.GoUInt8>) : stdgo.GoString)), stdgo.Go.toInterface(_err), stdgo.Go.toInterface(_tt._out), stdgo.Go.toInterface(_tt._err));
            };
        };
    }
function testDecodeStringErr(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        for (__0 => _tt in _errTests) {
            var __tmp__ = decodeString(_tt._in?.__copy__()), _out:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if ((((_out : stdgo.GoString) != _tt._out) || (stdgo.Go.toInterface(_err) != stdgo.Go.toInterface(_tt._err)) : Bool)) {
                _t.errorf(("DecodeString(%q) = %q, %v, want %q, %v" : stdgo.GoString), stdgo.Go.toInterface(_tt._in), stdgo.Go.toInterface(_out), stdgo.Go.toInterface(_err), stdgo.Go.toInterface(_tt._out), stdgo.Go.toInterface(_tt._err));
            };
        };
    }
function testEncoderDecoder(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        for (__0 => _multiplier in (new stdgo.Slice<stdgo.GoInt>(3, 3, ...[(1 : stdgo.GoInt), (128 : stdgo.GoInt), (192 : stdgo.GoInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>)) {
            for (__1 => _test in _encDecTests) {
                var _input = stdgo._internal.bytes.Bytes.repeat(_test._dec, _multiplier);
                var _output:stdgo.GoString = stdgo._internal.strings.Strings.repeat(_test._enc?.__copy__(), _multiplier)?.__copy__();
                var _buf:stdgo._internal.bytes.Bytes.Buffer = ({} : stdgo._internal.bytes.Bytes.Buffer);
                var _enc:stdgo._internal.io.Io.Writer = newEncoder(stdgo.Go.asInterface((stdgo.Go.setRef(_buf) : stdgo.Ref<stdgo._internal.bytes.Bytes.Buffer>)));
                var _r:T__struct_1 = ({ reader : stdgo.Go.asInterface(stdgo._internal.bytes.Bytes.newReader(_input)) } : T__struct_1);
                {
                    var __tmp__ = stdgo._internal.io.Io.copyBuffer(_enc, stdgo.Go.asInterface(_r), (new stdgo.Slice<stdgo.GoUInt8>((7 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>)), _n:stdgo.GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                    if (((_n != (_input.length : stdgo.GoInt64)) || (_err != null) : Bool)) {
                        _t.errorf(("encoder.Write(%q*%d) = (%d, %v), want (%d, nil)" : stdgo.GoString), stdgo.Go.toInterface(_test._dec), stdgo.Go.toInterface(_multiplier), stdgo.Go.toInterface(_n), stdgo.Go.toInterface(_err), stdgo.Go.toInterface((_input.length)));
                        continue;
                    };
                };
                {
                    var _encDst:stdgo.GoString = (_buf.string() : stdgo.GoString)?.__copy__();
                    if (_encDst != (_output)) {
                        _t.errorf(("buf(%q*%d) = %v, want %v" : stdgo.GoString), stdgo.Go.toInterface(_test._dec), stdgo.Go.toInterface(_multiplier), stdgo.Go.toInterface(_encDst), stdgo.Go.toInterface(_output));
                        continue;
                    };
                };
                var _dec:stdgo._internal.io.Io.Reader = newDecoder(stdgo.Go.asInterface((stdgo.Go.setRef(_buf) : stdgo.Ref<stdgo._internal.bytes.Bytes.Buffer>)));
                var _decBuf:stdgo._internal.bytes.Bytes.Buffer = ({} : stdgo._internal.bytes.Bytes.Buffer);
                var _w:T__struct_2 = ({ writer : stdgo.Go.asInterface((stdgo.Go.setRef(_decBuf) : stdgo.Ref<stdgo._internal.bytes.Bytes.Buffer>)) } : T__struct_2);
                {
                    var __tmp__ = stdgo._internal.io.Io.copyBuffer(stdgo.Go.asInterface(_w), _dec, (new stdgo.Slice<stdgo.GoUInt8>((7 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>)), __18:stdgo.GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                    if (((_err != null) || (_decBuf.len() != (_input.length)) : Bool)) {
                        _t.errorf(("decoder.Read(%q*%d) = (%d, %v), want (%d, nil)" : stdgo.GoString), stdgo.Go.toInterface(_test._enc), stdgo.Go.toInterface(_multiplier), stdgo.Go.toInterface(_decBuf.len()), stdgo.Go.toInterface(_err), stdgo.Go.toInterface((_input.length)));
                    };
                };
                if (!stdgo._internal.bytes.Bytes.equal(_decBuf.bytes(), _input)) {
                    _t.errorf(("decBuf(%q*%d) = %v, want %v" : stdgo.GoString), stdgo.Go.toInterface(_test._dec), stdgo.Go.toInterface(_multiplier), stdgo.Go.toInterface(_decBuf.bytes()), stdgo.Go.toInterface(_input));
                    continue;
                };
            };
        };
    }
function testDecoderErr(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        for (__0 => _tt in _errTests) {
            var _dec:stdgo._internal.io.Io.Reader = newDecoder(stdgo.Go.asInterface(stdgo._internal.strings.Strings.newReader(_tt._in?.__copy__())));
            var __tmp__ = stdgo._internal.io.Io.readAll(_dec), _out:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            var _wantErr:stdgo.Error = _tt._err;
            if (stdgo.Go.toInterface(_wantErr) == (stdgo.Go.toInterface(errLength))) {
                _wantErr = stdgo._internal.io.Io.errUnexpectedEOF;
            };
            if ((((_out : stdgo.GoString) != _tt._out) || (stdgo.Go.toInterface(_err) != stdgo.Go.toInterface(_wantErr)) : Bool)) {
                _t.errorf(("NewDecoder(%q) = %q, %v, want %q, %v" : stdgo.GoString), stdgo.Go.toInterface(_tt._in), stdgo.Go.toInterface(_out), stdgo.Go.toInterface(_err), stdgo.Go.toInterface(_tt._out), stdgo.Go.toInterface(_wantErr));
            };
        };
    }
function testDumper(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _in:stdgo.GoArray<stdgo.GoByte> = new stdgo.GoArray<stdgo.GoUInt8>(40, 40, ...[for (i in 0 ... 40) (0 : stdgo.GoUInt8)]);
        for (_i => _ in _in) {
            _in[(_i : stdgo.GoInt)] = ((_i + (30 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoByte);
        };
        {
            var _stride:stdgo.GoInt = (1 : stdgo.GoInt);
            stdgo.Go.cfor((_stride < (_in.length) : Bool), _stride++, {
                var _out:stdgo._internal.bytes.Bytes.Buffer = ({} : stdgo._internal.bytes.Bytes.Buffer);
                var _dumper:stdgo._internal.io.Io.WriteCloser = dumper(stdgo.Go.asInterface((stdgo.Go.setRef(_out) : stdgo.Ref<stdgo._internal.bytes.Bytes.Buffer>)));
                var _done:stdgo.GoInt = (0 : stdgo.GoInt);
                while ((_done < (_in.length) : Bool)) {
                    var _todo:stdgo.GoInt = (_done + _stride : stdgo.GoInt);
                    if ((_todo > (_in.length) : Bool)) {
                        _todo = (_in.length);
                    };
                    _dumper.write((_in.__slice__(_done, _todo) : stdgo.Slice<stdgo.GoUInt8>));
                    _done = _todo;
                };
                _dumper.close();
                if (!stdgo._internal.bytes.Bytes.equal(_out.bytes(), _expectedHexDump)) {
                    _t.errorf(("stride: %d failed. got:\n%s\nwant:\n%s" : stdgo.GoString), stdgo.Go.toInterface(_stride), stdgo.Go.toInterface(_out.bytes()), stdgo.Go.toInterface(_expectedHexDump));
                };
            });
        };
    }
function testDumper_doubleclose(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _out:stdgo._internal.strings.Strings.Builder = ({} : stdgo._internal.strings.Strings.Builder);
        var _dumper:stdgo._internal.io.Io.WriteCloser = dumper(stdgo.Go.asInterface((stdgo.Go.setRef(_out) : stdgo.Ref<stdgo._internal.strings.Strings.Builder>)));
        _dumper.write((("gopher" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>));
        _dumper.close();
        _dumper.close();
        _dumper.write((("gopher" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>));
        _dumper.close();
        var _expected:stdgo.GoString = ("00000000  67 6f 70 68 65 72                                 |gopher|\n" : stdgo.GoString);
        if ((_out.string() : stdgo.GoString) != (_expected)) {
            _t.fatalf(("got:\n%#v\nwant:\n%#v" : stdgo.GoString), stdgo.Go.toInterface((_out.string() : stdgo.GoString)), stdgo.Go.toInterface(_expected));
        };
    }
function testDumper_earlyclose(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _out:stdgo._internal.strings.Strings.Builder = ({} : stdgo._internal.strings.Strings.Builder);
        var _dumper:stdgo._internal.io.Io.WriteCloser = dumper(stdgo.Go.asInterface((stdgo.Go.setRef(_out) : stdgo.Ref<stdgo._internal.strings.Strings.Builder>)));
        _dumper.close();
        _dumper.write((("gopher" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>));
        var _expected:stdgo.GoString = stdgo.Go.str()?.__copy__();
        if ((_out.string() : stdgo.GoString) != (_expected)) {
            _t.fatalf(("got:\n%#v\nwant:\n%#v" : stdgo.GoString), stdgo.Go.toInterface((_out.string() : stdgo.GoString)), stdgo.Go.toInterface(_expected));
        };
    }
function testDump(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _in:stdgo.GoArray<stdgo.GoByte> = new stdgo.GoArray<stdgo.GoUInt8>(40, 40, ...[for (i in 0 ... 40) (0 : stdgo.GoUInt8)]);
        for (_i => _ in _in) {
            _in[(_i : stdgo.GoInt)] = ((_i + (30 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoByte);
        };
        var _out = (dump((_in.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>)) : stdgo.Slice<stdgo.GoByte>);
        if (!stdgo._internal.bytes.Bytes.equal(_out, _expectedHexDump)) {
            _t.errorf(("got:\n%s\nwant:\n%s" : stdgo.GoString), stdgo.Go.toInterface(_out), stdgo.Go.toInterface(_expectedHexDump));
        };
    }
function benchmarkEncode(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        for (__0 => _size in (new stdgo.Slice<stdgo.GoInt>(4, 4, ...[(256 : stdgo.GoInt), (1024 : stdgo.GoInt), (4096 : stdgo.GoInt), (16384 : stdgo.GoInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>)) {
            var _src = stdgo._internal.bytes.Bytes.repeat((new stdgo.Slice<stdgo.GoUInt8>(8, 8, ...[(2 : stdgo.GoUInt8), (3 : stdgo.GoUInt8), (5 : stdgo.GoUInt8), (7 : stdgo.GoUInt8), (9 : stdgo.GoUInt8), (11 : stdgo.GoUInt8), (13 : stdgo.GoUInt8), (17 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>), (_size / (8 : stdgo.GoInt) : stdgo.GoInt));
            _sink = (new stdgo.Slice<stdgo.GoUInt8>(((2 : stdgo.GoInt) * _size : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
            _b.run(stdgo._internal.fmt.Fmt.sprintf(("%v" : stdgo.GoString), stdgo.Go.toInterface(_size))?.__copy__(), function(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
                _b.setBytes((_size : stdgo.GoInt64));
                {
                    var _i:stdgo.GoInt = (0 : stdgo.GoInt);
                    stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                        encode(_sink, _src);
                    });
                };
            });
        };
    }
function benchmarkDecode(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        for (__0 => _size in (new stdgo.Slice<stdgo.GoInt>(4, 4, ...[(256 : stdgo.GoInt), (1024 : stdgo.GoInt), (4096 : stdgo.GoInt), (16384 : stdgo.GoInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>)) {
            var _src = stdgo._internal.bytes.Bytes.repeat((new stdgo.Slice<stdgo.GoUInt8>(8, 8, ...[(50 : stdgo.GoUInt8), (98 : stdgo.GoUInt8), (55 : stdgo.GoUInt8), (52 : stdgo.GoUInt8), (52 : stdgo.GoUInt8), (102 : stdgo.GoUInt8), (97 : stdgo.GoUInt8), (97 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>), (_size / (8 : stdgo.GoInt) : stdgo.GoInt));
            _sink = (new stdgo.Slice<stdgo.GoUInt8>((_size / (2 : stdgo.GoInt) : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
            _b.run(stdgo._internal.fmt.Fmt.sprintf(("%v" : stdgo.GoString), stdgo.Go.toInterface(_size))?.__copy__(), function(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
                _b.setBytes((_size : stdgo.GoInt64));
                {
                    var _i:stdgo.GoInt = (0 : stdgo.GoInt);
                    stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                        decode(_sink, _src);
                    });
                };
            });
        };
    }
function benchmarkDump(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        for (__0 => _size in (new stdgo.Slice<stdgo.GoInt>(4, 4, ...[(256 : stdgo.GoInt), (1024 : stdgo.GoInt), (4096 : stdgo.GoInt), (16384 : stdgo.GoInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>)) {
            var _src = stdgo._internal.bytes.Bytes.repeat((new stdgo.Slice<stdgo.GoUInt8>(8, 8, ...[(2 : stdgo.GoUInt8), (3 : stdgo.GoUInt8), (5 : stdgo.GoUInt8), (7 : stdgo.GoUInt8), (9 : stdgo.GoUInt8), (11 : stdgo.GoUInt8), (13 : stdgo.GoUInt8), (17 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>), (_size / (8 : stdgo.GoInt) : stdgo.GoInt));
            _b.run(stdgo._internal.fmt.Fmt.sprintf(("%v" : stdgo.GoString), stdgo.Go.toInterface(_size))?.__copy__(), function(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
                _b.setBytes((_size : stdgo.GoInt64));
                {
                    var _i:stdgo.GoInt = (0 : stdgo.GoInt);
                    stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                        dump(_src);
                    });
                };
            });
        };
    }
class T_encoder_asInterface {
    @:keep
    public dynamic function write(_p:stdgo.Slice<stdgo.GoByte>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return __self__.value.write(_p);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_encoder>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.encoding.hex.Hex.T_encoder_asInterface) class T_encoder_static_extension {
    @:keep
    static public function write( _e:stdgo.Ref<T_encoder>, _p:stdgo.Slice<stdgo.GoByte>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _e:stdgo.Ref<T_encoder> = _e;
        var _n:stdgo.GoInt = (0 : stdgo.GoInt), _err:stdgo.Error = (null : stdgo.Error);
        while ((((_p.length) > (0 : stdgo.GoInt) : Bool) && (_e._err == null) : Bool)) {
            var _chunkSize:stdgo.GoInt = (512 : stdgo.GoInt);
            if (((_p.length) < _chunkSize : Bool)) {
                _chunkSize = (_p.length);
            };
            var _written:stdgo.GoInt = (0 : stdgo.GoInt);
            var _encoded:stdgo.GoInt = encode((_e._out.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>), (_p.__slice__(0, _chunkSize) : stdgo.Slice<stdgo.GoUInt8>));
            {
                var __tmp__ = _e._w.write((_e._out.__slice__(0, _encoded) : stdgo.Slice<stdgo.GoUInt8>));
                _written = __tmp__._0;
                _e._err = __tmp__._1;
            };
            _n = (_n + ((_written / (2 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoInt);
            _p = (_p.__slice__(_chunkSize) : stdgo.Slice<stdgo.GoUInt8>);
        };
        return { _0 : _n, _1 : _e._err };
    }
}
class T_decoder_asInterface {
    @:keep
    public dynamic function read(_p:stdgo.Slice<stdgo.GoByte>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return __self__.value.read(_p);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_decoder>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.encoding.hex.Hex.T_decoder_asInterface) class T_decoder_static_extension {
    @:keep
    static public function read( _d:stdgo.Ref<T_decoder>, _p:stdgo.Slice<stdgo.GoByte>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _d:stdgo.Ref<T_decoder> = _d;
        var _n:stdgo.GoInt = (0 : stdgo.GoInt), _err:stdgo.Error = (null : stdgo.Error);
        if ((((_d._in.length) < (2 : stdgo.GoInt) : Bool) && (_d._err == null) : Bool)) {
            var __0:stdgo.GoInt = (0 : stdgo.GoInt), __1:stdgo.GoInt = (0 : stdgo.GoInt), _numRead:stdgo.GoInt = __1, _numCopy:stdgo.GoInt = __0;
            _numCopy = stdgo.Go.copySlice((_d._arr.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>), _d._in);
            {
                var __tmp__ = _d._r.read((_d._arr.__slice__(_numCopy) : stdgo.Slice<stdgo.GoUInt8>));
                _numRead = __tmp__._0;
                _d._err = __tmp__._1;
            };
            _d._in = (_d._arr.__slice__(0, (_numCopy + _numRead : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
            if (((stdgo.Go.toInterface(_d._err) == stdgo.Go.toInterface(stdgo._internal.io.Io.eof)) && (((_d._in.length) % (2 : stdgo.GoInt) : stdgo.GoInt) != (0 : stdgo.GoInt)) : Bool)) {
                {
                    var _a:stdgo.GoUInt8 = stdgo.Go.str(255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
0,
1,
2,
3,
4,
5,
6,
"\x07\x08\t",
255,
255,
255,
255,
255,
255,
255,
"\n\x0B\x0C\r",
14,
15,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
"\n\x0B\x0C\r",
14,
15,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255)[(_d._in[((_d._in.length) - (1 : stdgo.GoInt) : stdgo.GoInt)] : stdgo.GoInt)];
                    if ((_a > (15 : stdgo.GoUInt8) : Bool)) {
                        _d._err = stdgo.Go.asInterface((_d._in[((_d._in.length) - (1 : stdgo.GoInt) : stdgo.GoInt)] : InvalidByteError));
                    } else {
                        _d._err = stdgo._internal.io.Io.errUnexpectedEOF;
                    };
                };
            };
        };
        {
            var _numAvail:stdgo.GoInt = ((_d._in.length) / (2 : stdgo.GoInt) : stdgo.GoInt);
            if (((_p.length) > _numAvail : Bool)) {
                _p = (_p.__slice__(0, _numAvail) : stdgo.Slice<stdgo.GoUInt8>);
            };
        };
        var __tmp__ = decode(_p, (_d._in.__slice__(0, ((_p.length) * (2 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)), _numDec:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        _d._in = (_d._in.__slice__(((2 : stdgo.GoInt) * _numDec : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
        if (_err != null) {
            {
                final __tmp__0 = (null : stdgo.Slice<stdgo.GoUInt8>);
                final __tmp__1 = _err;
                _d._in = __tmp__0;
                _d._err = __tmp__1;
            };
        };
        if (((_d._in.length) < (2 : stdgo.GoInt) : Bool)) {
            return { _0 : _numDec, _1 : _d._err };
        };
        return { _0 : _numDec, _1 : (null : stdgo.Error) };
    }
}
class T_dumper_asInterface {
    @:keep
    public dynamic function close():stdgo.Error return __self__.value.close();
    @:keep
    public dynamic function write(_data:stdgo.Slice<stdgo.GoByte>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return __self__.value.write(_data);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_dumper>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.encoding.hex.Hex.T_dumper_asInterface) class T_dumper_static_extension {
    @:keep
    static public function close( _h:stdgo.Ref<T_dumper>):stdgo.Error {
        @:recv var _h:stdgo.Ref<T_dumper> = _h;
        var _err:stdgo.Error = (null : stdgo.Error);
        if (_h._closed) {
            return _err;
        };
        _h._closed = true;
        if (_h._used == ((0 : stdgo.GoInt))) {
            return _err;
        };
        _h._buf[(0 : stdgo.GoInt)] = (32 : stdgo.GoUInt8);
        _h._buf[(1 : stdgo.GoInt)] = (32 : stdgo.GoUInt8);
        _h._buf[(2 : stdgo.GoInt)] = (32 : stdgo.GoUInt8);
        _h._buf[(3 : stdgo.GoInt)] = (32 : stdgo.GoUInt8);
        _h._buf[(4 : stdgo.GoInt)] = (124 : stdgo.GoUInt8);
        var _nBytes:stdgo.GoInt = _h._used;
        while ((_h._used < (16 : stdgo.GoInt) : Bool)) {
            var _l:stdgo.GoInt = (3 : stdgo.GoInt);
            if (_h._used == ((7 : stdgo.GoInt))) {
                _l = (4 : stdgo.GoInt);
            } else if (_h._used == ((15 : stdgo.GoInt))) {
                _l = (5 : stdgo.GoInt);
            };
            {
                var __tmp__ = _h._w.write((_h._buf.__slice__(0, _l) : stdgo.Slice<stdgo.GoUInt8>));
                _err = __tmp__._1;
            };
            if (_err != null) {
                return _err;
            };
            _h._used++;
        };
        _h._rightChars[(_nBytes : stdgo.GoInt)] = (124 : stdgo.GoUInt8);
        _h._rightChars[(_nBytes + (1 : stdgo.GoInt) : stdgo.GoInt)] = (10 : stdgo.GoUInt8);
        {
            var __tmp__ = _h._w.write((_h._rightChars.__slice__(0, (_nBytes + (2 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>));
            _err = __tmp__._1;
        };
        return _err;
    }
    @:keep
    static public function write( _h:stdgo.Ref<T_dumper>, _data:stdgo.Slice<stdgo.GoByte>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _h:stdgo.Ref<T_dumper> = _h;
        var _n:stdgo.GoInt = (0 : stdgo.GoInt), _err:stdgo.Error = (null : stdgo.Error);
        if (_h._closed) {
            return { _0 : (0 : stdgo.GoInt), _1 : stdgo._internal.errors.Errors.new_(("encoding/hex: dumper closed" : stdgo.GoString)) };
        };
        for (_i => _ in _data) {
            if (_h._used == ((0 : stdgo.GoInt))) {
                _h._buf[(0 : stdgo.GoInt)] = ((_h._n >> (24i64 : stdgo.GoUInt64) : stdgo.GoUInt) : stdgo.GoByte);
                _h._buf[(1 : stdgo.GoInt)] = ((_h._n >> (16i64 : stdgo.GoUInt64) : stdgo.GoUInt) : stdgo.GoByte);
                _h._buf[(2 : stdgo.GoInt)] = ((_h._n >> (8i64 : stdgo.GoUInt64) : stdgo.GoUInt) : stdgo.GoByte);
                _h._buf[(3 : stdgo.GoInt)] = (_h._n : stdgo.GoByte);
                encode((_h._buf.__slice__((4 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), (_h._buf.__slice__(0, (4 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>));
                _h._buf[(12 : stdgo.GoInt)] = (32 : stdgo.GoUInt8);
                _h._buf[(13 : stdgo.GoInt)] = (32 : stdgo.GoUInt8);
                {
                    var __tmp__ = _h._w.write((_h._buf.__slice__((4 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>));
                    _err = __tmp__._1;
                };
                if (_err != null) {
                    return { _0 : _n, _1 : _err };
                };
            };
            encode((_h._buf.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>), (_data.__slice__(_i, (_i + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>));
            _h._buf[(2 : stdgo.GoInt)] = (32 : stdgo.GoUInt8);
            var _l:stdgo.GoInt = (3 : stdgo.GoInt);
            if (_h._used == ((7 : stdgo.GoInt))) {
                _h._buf[(3 : stdgo.GoInt)] = (32 : stdgo.GoUInt8);
                _l = (4 : stdgo.GoInt);
            } else if (_h._used == ((15 : stdgo.GoInt))) {
                _h._buf[(3 : stdgo.GoInt)] = (32 : stdgo.GoUInt8);
                _h._buf[(4 : stdgo.GoInt)] = (124 : stdgo.GoUInt8);
                _l = (5 : stdgo.GoInt);
            };
            {
                var __tmp__ = _h._w.write((_h._buf.__slice__(0, _l) : stdgo.Slice<stdgo.GoUInt8>));
                _err = __tmp__._1;
            };
            if (_err != null) {
                return { _0 : _n, _1 : _err };
            };
            _n++;
            _h._rightChars[(_h._used : stdgo.GoInt)] = _toChar(_data[(_i : stdgo.GoInt)]);
            _h._used++;
            _h._n++;
            if (_h._used == ((16 : stdgo.GoInt))) {
                _h._rightChars[(16 : stdgo.GoInt)] = (124 : stdgo.GoUInt8);
                _h._rightChars[(17 : stdgo.GoInt)] = (10 : stdgo.GoUInt8);
                {
                    var __tmp__ = _h._w.write((_h._rightChars.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>));
                    _err = __tmp__._1;
                };
                if (_err != null) {
                    return { _0 : _n, _1 : _err };
                };
                _h._used = (0 : stdgo.GoInt);
            };
        };
        return { _0 : _n, _1 : _err };
    }
}
class InvalidByteError_asInterface {
    @:keep
    public dynamic function error():stdgo.GoString return __self__.value.error();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<InvalidByteError>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.encoding.hex.Hex.InvalidByteError_asInterface) class InvalidByteError_static_extension {
    @:keep
    static public function error( _e:InvalidByteError):stdgo.GoString {
        @:recv var _e:InvalidByteError = _e;
        return stdgo._internal.fmt.Fmt.sprintf(("encoding/hex: invalid byte: %#U" : stdgo.GoString), stdgo.Go.toInterface((_e : stdgo.GoRune)))?.__copy__();
    }
}
