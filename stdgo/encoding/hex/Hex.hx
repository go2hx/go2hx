package stdgo.encoding.hex;
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
    // Package hex implements hexadecimal encoding and decoding.
**/
private var __go2hxdoc__package : Bool;
/**
    // ErrLength reports an attempt to decode an odd-length input
    // using Decode or DecodeString.
    // The stream-based Decoder returns io.ErrUnexpectedEOF instead of ErrLength.
    
    
**/
var errLength = stdgo.errors.Errors.new_(("encoding/hex: odd length hex string" : GoString));
/**
    
    
    
**/
private var _encDecTests = (new Slice<stdgo.encoding.hex.Hex.T_encDecTest>(7, 7, (new stdgo.encoding.hex.Hex.T_encDecTest(Go.str(), (new Slice<GoUInt8>(0, 0) : Slice<GoUInt8>)) : stdgo.encoding.hex.Hex.T_encDecTest), (new stdgo.encoding.hex.Hex.T_encDecTest(("0001020304050607" : GoString), (new Slice<GoUInt8>(8, 8, (0 : GoUInt8), (1 : GoUInt8), (2 : GoUInt8), (3 : GoUInt8), (4 : GoUInt8), (5 : GoUInt8), (6 : GoUInt8), (7 : GoUInt8)) : Slice<GoUInt8>)) : stdgo.encoding.hex.Hex.T_encDecTest), (new stdgo.encoding.hex.Hex.T_encDecTest(("08090a0b0c0d0e0f" : GoString), (new Slice<GoUInt8>(8, 8, (8 : GoUInt8), (9 : GoUInt8), (10 : GoUInt8), (11 : GoUInt8), (12 : GoUInt8), (13 : GoUInt8), (14 : GoUInt8), (15 : GoUInt8)) : Slice<GoUInt8>)) : stdgo.encoding.hex.Hex.T_encDecTest), (new stdgo.encoding.hex.Hex.T_encDecTest(("f0f1f2f3f4f5f6f7" : GoString), (new Slice<GoUInt8>(8, 8, (240 : GoUInt8), (241 : GoUInt8), (242 : GoUInt8), (243 : GoUInt8), (244 : GoUInt8), (245 : GoUInt8), (246 : GoUInt8), (247 : GoUInt8)) : Slice<GoUInt8>)) : stdgo.encoding.hex.Hex.T_encDecTest), (new stdgo.encoding.hex.Hex.T_encDecTest(("f8f9fafbfcfdfeff" : GoString), (new Slice<GoUInt8>(8, 8, (248 : GoUInt8), (249 : GoUInt8), (250 : GoUInt8), (251 : GoUInt8), (252 : GoUInt8), (253 : GoUInt8), (254 : GoUInt8), (255 : GoUInt8)) : Slice<GoUInt8>)) : stdgo.encoding.hex.Hex.T_encDecTest), (new stdgo.encoding.hex.Hex.T_encDecTest(("67" : GoString), (new Slice<GoUInt8>(1, 1, (103 : GoUInt8)) : Slice<GoUInt8>)) : stdgo.encoding.hex.Hex.T_encDecTest), (new stdgo.encoding.hex.Hex.T_encDecTest(("e3a1" : GoString), (new Slice<GoUInt8>(2, 2, (227 : GoUInt8), (161 : GoUInt8)) : Slice<GoUInt8>)) : stdgo.encoding.hex.Hex.T_encDecTest)) : Slice<stdgo.encoding.hex.Hex.T_encDecTest>);
/**
    
    
    
**/
private var _errTests = (new Slice<T__struct_0>(
9,
9,
({ _in : Go.str(), _out : Go.str(), _err : (null : Error) } : T__struct_0),
({ _in : ("0" : GoString), _out : Go.str(), _err : errLength } : T__struct_0),
({ _in : ("zd4aa" : GoString), _out : Go.str(), _err : Go.asInterface(((122 : stdgo.encoding.hex.Hex.InvalidByteError) : InvalidByteError)) } : T__struct_0),
({ _in : ("d4aaz" : GoString), _out : ("Ԫ" : GoString), _err : Go.asInterface(((122 : stdgo.encoding.hex.Hex.InvalidByteError) : InvalidByteError)) } : T__struct_0),
({ _in : ("30313" : GoString), _out : ("01" : GoString), _err : errLength } : T__struct_0),
({ _in : ("0g" : GoString), _out : Go.str(), _err : Go.asInterface(((103 : stdgo.encoding.hex.Hex.InvalidByteError) : InvalidByteError)) } : T__struct_0),
({ _in : ("00gg" : GoString), _out : Go.str(0), _err : Go.asInterface(((103 : stdgo.encoding.hex.Hex.InvalidByteError) : InvalidByteError)) } : T__struct_0),
({ _in : Go.str("0", 1), _out : Go.str(), _err : Go.asInterface(((1 : stdgo.encoding.hex.Hex.InvalidByteError) : InvalidByteError)) } : T__struct_0),
({ _in : ("ffeed" : GoString), _out : Go.str(255, 238), _err : errLength } : T__struct_0)) : Slice<T__struct_0>);
/**
    
    
    
**/
private var _expectedHexDump = (("00000000  1e 1f 20 21 22 23 24 25  26 27 28 29 2a 2b 2c 2d  |.. !\"#$$%&\'()*+,-|\n00000010  2e 2f 30 31 32 33 34 35  36 37 38 39 3a 3b 3c 3d  |./0123456789:;<=|\n00000020  3e 3f 40 41 42 43 44 45                           |>?@ABCDE|\n" : GoString) : Slice<GoByte>);
/**
    
    
    
**/
private final _hextable = ("0123456789abcdef" : GoString);
/**
    
    
    
**/
private final _reverseHexTable = Go.str(255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
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
/**
    // bufferSize is the number of hexadecimal characters to buffer in encoder and decoder.
    
    
**/
private final _bufferSize = (1024i64 : GoUInt64);
/**
    
    
    
**/
private var _sink : Slice<GoByte> = (null : Slice<GoUInt8>);
/**
    
    
    
**/
@:structInit @:private @:using(stdgo.encoding.hex.Hex.T_encoder_static_extension) class T_encoder {
    public var _w : stdgo.io.Io.Writer = (null : stdgo.io.Io.Writer);
    public var _err : Error = (null : Error);
    public var _out : GoArray<GoUInt8> = new GoArray<GoUInt8>(...[for (i in 0 ... 1024) (0 : GoUInt8)]);
    public function new(?_w:stdgo.io.Io.Writer, ?_err:Error, ?_out:GoArray<GoUInt8>) {
        if (_w != null) this._w = _w;
        if (_err != null) this._err = _err;
        if (_out != null) this._out = _out;
    }
    public function __underlying__() return Go.toInterface(this);
    public function __copy__() {
        return new T_encoder(_w, _err, _out);
    }
}
/**
    
    
    
**/
@:structInit @:private @:using(stdgo.encoding.hex.Hex.T_decoder_static_extension) class T_decoder {
    public var _r : stdgo.io.Io.Reader = (null : stdgo.io.Io.Reader);
    public var _err : Error = (null : Error);
    public var _in : Slice<GoUInt8> = (null : Slice<GoUInt8>);
    public var _arr : GoArray<GoUInt8> = new GoArray<GoUInt8>(...[for (i in 0 ... 1024) (0 : GoUInt8)]);
    public function new(?_r:stdgo.io.Io.Reader, ?_err:Error, ?_in:Slice<GoUInt8>, ?_arr:GoArray<GoUInt8>) {
        if (_r != null) this._r = _r;
        if (_err != null) this._err = _err;
        if (_in != null) this._in = _in;
        if (_arr != null) this._arr = _arr;
    }
    public function __underlying__() return Go.toInterface(this);
    public function __copy__() {
        return new T_decoder(_r, _err, _in, _arr);
    }
}
/**
    
    
    
**/
@:structInit @:private @:using(stdgo.encoding.hex.Hex.T_dumper_static_extension) class T_dumper {
    public var _w : stdgo.io.Io.Writer = (null : stdgo.io.Io.Writer);
    public var _rightChars : GoArray<GoUInt8> = new GoArray<GoUInt8>(...[for (i in 0 ... 18) (0 : GoUInt8)]);
    public var _buf : GoArray<GoUInt8> = new GoArray<GoUInt8>(...[for (i in 0 ... 14) (0 : GoUInt8)]);
    public var _used : GoInt = 0;
    public var _n : GoUInt = 0;
    public var _closed : Bool = false;
    public function new(?_w:stdgo.io.Io.Writer, ?_rightChars:GoArray<GoUInt8>, ?_buf:GoArray<GoUInt8>, ?_used:GoInt, ?_n:GoUInt, ?_closed:Bool) {
        if (_w != null) this._w = _w;
        if (_rightChars != null) this._rightChars = _rightChars;
        if (_buf != null) this._buf = _buf;
        if (_used != null) this._used = _used;
        if (_n != null) this._n = _n;
        if (_closed != null) this._closed = _closed;
    }
    public function __underlying__() return Go.toInterface(this);
    public function __copy__() {
        return new T_dumper(_w, _rightChars, _buf, _used, _n, _closed);
    }
}
/**
    
    
    
**/
@:structInit @:private class T_encDecTest {
    public var _enc : GoString = "";
    public var _dec : Slice<GoUInt8> = (null : Slice<GoUInt8>);
    public function new(?_enc:GoString, ?_dec:Slice<GoUInt8>) {
        if (_enc != null) this._enc = _enc;
        if (_dec != null) this._dec = _dec;
    }
    public function __underlying__() return Go.toInterface(this);
    public function __copy__() {
        return new T_encDecTest(_enc, _dec);
    }
}
class T__struct_0_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : Pointer<T__struct_0>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.encoding.hex.Hex.T__struct_0_asInterface) class T__struct_0_static_extension {

}
@:local @:using(stdgo.encoding.hex.Hex.T__struct_0_static_extension) private typedef T__struct_0 = {
    public var _in : GoString;
    public var _out : GoString;
    public var _err : Error;
};
class T__struct_1_asInterface {
    @:embedded
    public dynamic function read(_src:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : Error; } return __self__.value.read(_src);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : Pointer<T__struct_1>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.encoding.hex.Hex.T__struct_1_asInterface) class T__struct_1_static_extension {
    @:embedded
    public static function read( __self__:T__struct_1, _src:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : Error; } return return __self__.reader.read(_src);
}
@:local @:using(stdgo.encoding.hex.Hex.T__struct_1_static_extension) private typedef T__struct_1 = {
    @:embedded
    public var reader : stdgo.io.Io.Reader;
};
class T__struct_2_asInterface {
    @:embedded
    public dynamic function write(_src:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : Error; } return __self__.value.write(_src);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : Pointer<T__struct_2>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.encoding.hex.Hex.T__struct_2_asInterface) class T__struct_2_static_extension {
    @:embedded
    public static function write( __self__:T__struct_2, _src:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : Error; } return return __self__.writer.write(_src);
}
@:local @:using(stdgo.encoding.hex.Hex.T__struct_2_static_extension) private typedef T__struct_2 = {
    @:embedded
    public var writer : stdgo.io.Io.Writer;
};
/**
    // InvalidByteError values describe errors resulting from an invalid byte in a hex string.
**/
@:named @:using(stdgo.encoding.hex.Hex.InvalidByteError_static_extension) typedef InvalidByteError = GoUInt8;
/**
    // EncodedLen returns the length of an encoding of n source bytes.
    // Specifically, it returns n * 2.
**/
function encodedLen(_n:GoInt):GoInt {
        return _n * (2 : GoInt);
    }
/**
    // Encode encodes src into EncodedLen(len(src))
    // bytes of dst. As a convenience, it returns the number
    // of bytes written to dst, but this value is always EncodedLen(len(src)).
    // Encode implements hexadecimal encoding.
**/
function encode(_dst:Slice<GoByte>, _src:Slice<GoByte>):GoInt {
        var _j:GoInt = (0 : GoInt);
        for (__0 => _v in _src) {
            _dst[(_j : GoInt)] = ("0123456789abcdef" : GoString)[(_v >> (4i64 : GoUInt64) : GoInt)];
            _dst[(_j + (1 : GoInt) : GoInt)] = ("0123456789abcdef" : GoString)[(_v & (15 : GoUInt8) : GoInt)];
            _j = _j + ((2 : GoInt));
        };
        return (_src.length) * (2 : GoInt);
    }
/**
    // DecodedLen returns the length of a decoding of x source bytes.
    // Specifically, it returns x / 2.
**/
function decodedLen(_x:GoInt):GoInt {
        return _x / (2 : GoInt);
    }
/**
    // Decode decodes src into DecodedLen(len(src)) bytes,
    // returning the actual number of bytes written to dst.
    //
    // Decode expects that src contains only hexadecimal
    // characters and that src has even length.
    // If the input is malformed, Decode returns the number
    // of bytes decoded before the error.
**/
function decode(_dst:Slice<GoByte>, _src:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } {
        var __0:GoInt = (0 : GoInt), __1:GoInt = (1 : GoInt), _j:GoInt = __1, _i:GoInt = __0;
        Go.cfor(_j < (_src.length), _j = _j + ((2 : GoInt)), {
            var _p:GoUInt8 = _src[(_j - (1 : GoInt) : GoInt)];
            var _q:GoUInt8 = _src[(_j : GoInt)];
            var _a:GoUInt8 = Go.str(255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
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
255)[(_p : GoInt)];
            var _b:GoUInt8 = Go.str(255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
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
255)[(_q : GoInt)];
            if (_a > (15 : GoUInt8)) {
                return { _0 : _i, _1 : Go.asInterface((_p : InvalidByteError)) };
            };
            if (_b > (15 : GoUInt8)) {
                return { _0 : _i, _1 : Go.asInterface((_q : InvalidByteError)) };
            };
            _dst[(_i : GoInt)] = (_a << (4i64 : GoUInt64)) | _b;
            _i++;
        });
        if ((_src.length) % (2 : GoInt) == ((1 : GoInt))) {
            if (Go.str(255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
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
255)[(_src[(_j - (1 : GoInt) : GoInt)] : GoInt)] > (15 : GoUInt8)) {
                return { _0 : _i, _1 : Go.asInterface((_src[(_j - (1 : GoInt) : GoInt)] : InvalidByteError)) };
            };
            return { _0 : _i, _1 : errLength };
        };
        return { _0 : _i, _1 : (null : Error) };
    }
/**
    // EncodeToString returns the hexadecimal encoding of src.
**/
function encodeToString(_src:Slice<GoByte>):GoString {
        var _dst = new Slice<GoUInt8>((encodedLen((_src.length)) : GoInt).toBasic(), 0).__setNumber32__();
        encode(_dst, _src);
        return (_dst : GoString);
    }
/**
    // DecodeString returns the bytes represented by the hexadecimal string s.
    //
    // DecodeString expects that src contains only hexadecimal
    // characters and that src has even length.
    // If the input is malformed, DecodeString returns
    // the bytes decoded before the error.
**/
function decodeString(_s:GoString):{ var _0 : Slice<GoByte>; var _1 : Error; } {
        var _src = (_s : Slice<GoByte>);
        var __tmp__ = decode(_src, _src), _n:GoInt = __tmp__._0, _err:Error = __tmp__._1;
        return { _0 : (_src.__slice__(0, _n) : Slice<GoUInt8>), _1 : _err };
    }
/**
    // Dump returns a string that contains a hex dump of the given data. The format
    // of the hex dump matches the output of `hexdump -C` on the command line.
**/
function dump(_data:Slice<GoByte>):GoString {
        if ((_data.length) == ((0 : GoInt))) {
            return Go.str();
        };
        var _buf:stdgo.strings.Strings.Builder = ({} : stdgo.strings.Strings.Builder);
        _buf.grow(((1 : GoInt) + ((_data.length - (1 : GoInt)) / (16 : GoInt))) * (79 : GoInt));
        var _dumper:stdgo.io.Io.WriteCloser = dumper(Go.asInterface((Go.setRef(_buf) : Ref<stdgo.strings.Strings.Builder>)));
        _dumper.write(_data);
        _dumper.close();
        return (_buf.string() : GoString);
    }
/**
    // NewEncoder returns an io.Writer that writes lowercase hexadecimal characters to w.
**/
function newEncoder(_w:stdgo.io.Io.Writer):stdgo.io.Io.Writer {
        return Go.asInterface((Go.setRef(({ _w : _w } : T_encoder)) : Ref<stdgo.encoding.hex.Hex.T_encoder>));
    }
/**
    // NewDecoder returns an io.Reader that decodes hexadecimal characters from r.
    // NewDecoder expects that r contain only an even number of hexadecimal characters.
**/
function newDecoder(_r:stdgo.io.Io.Reader):stdgo.io.Io.Reader {
        return Go.asInterface((Go.setRef(({ _r : _r } : T_decoder)) : Ref<stdgo.encoding.hex.Hex.T_decoder>));
    }
/**
    // Dumper returns a WriteCloser that writes a hex dump of all written data to
    // w. The format of the dump matches the output of `hexdump -C` on the command
    // line.
**/
function dumper(_w:stdgo.io.Io.Writer):stdgo.io.Io.WriteCloser {
        return Go.asInterface((Go.setRef(({ _w : _w } : T_dumper)) : Ref<stdgo.encoding.hex.Hex.T_dumper>));
    }
private function _toChar(_b:GoByte):GoByte {
        if ((_b < (32 : GoUInt8)) || (_b > (126 : GoUInt8))) {
            return (46 : GoUInt8);
        };
        return _b;
    }
function testEncode(_t:Ref<stdgo.testing.Testing.T>):Void {
        for (_i => _test in _encDecTests) {
            var _dst = new Slice<GoUInt8>((encodedLen((_test._dec.length)) : GoInt).toBasic(), 0).__setNumber32__();
            var _n:GoInt = encode(_dst, _test._dec);
            if (_n != ((_dst.length))) {
                _t.errorf(("#%d: bad return value: got: %d want: %d" : GoString), Go.toInterface(_i), Go.toInterface(_n), Go.toInterface((_dst.length)));
            };
            if ((_dst : GoString) != (_test._enc)) {
                _t.errorf(("#%d: got: %#v want: %#v" : GoString), Go.toInterface(_i), Go.toInterface(_dst), Go.toInterface(_test._enc));
            };
        };
    }
function testDecode(_t:Ref<stdgo.testing.Testing.T>):Void {
        var _decTests = (_encDecTests.__append__((new T_encDecTest(("F8F9FAFBFCFDFEFF" : GoString), (new Slice<GoUInt8>(8, 8, (248 : GoUInt8), (249 : GoUInt8), (250 : GoUInt8), (251 : GoUInt8), (252 : GoUInt8), (253 : GoUInt8), (254 : GoUInt8), (255 : GoUInt8)) : Slice<GoUInt8>)) : T_encDecTest)));
        for (_i => _test in _decTests) {
            var _dst = new Slice<GoUInt8>((decodedLen((_test._enc.length)) : GoInt).toBasic(), 0).__setNumber32__();
            var __tmp__ = decode(_dst, (_test._enc : Slice<GoByte>)), _n:GoInt = __tmp__._0, _err:Error = __tmp__._1;
            if (_err != null) {
                _t.errorf(("#%d: bad return value: got:%d want:%d" : GoString), Go.toInterface(_i), Go.toInterface(_n), Go.toInterface((_dst.length)));
            } else if (!stdgo.bytes.Bytes.equal(_dst, _test._dec)) {
                _t.errorf(("#%d: got: %#v want: %#v" : GoString), Go.toInterface(_i), Go.toInterface(_dst), Go.toInterface(_test._dec));
            };
        };
    }
function testEncodeToString(_t:Ref<stdgo.testing.Testing.T>):Void {
        for (_i => _test in _encDecTests) {
            var _s:GoString = encodeToString(_test._dec);
            if (_s != (_test._enc)) {
                _t.errorf(("#%d got:%s want:%s" : GoString), Go.toInterface(_i), Go.toInterface(_s), Go.toInterface(_test._enc));
            };
        };
    }
function testDecodeString(_t:Ref<stdgo.testing.Testing.T>):Void {
        for (_i => _test in _encDecTests) {
            var __tmp__ = decodeString(_test._enc), _dst:Slice<GoUInt8> = __tmp__._0, _err:Error = __tmp__._1;
            if (_err != null) {
                _t.errorf(("#%d: unexpected err value: %s" : GoString), Go.toInterface(_i), Go.toInterface(_err));
                continue;
            };
            if (!stdgo.bytes.Bytes.equal(_dst, _test._dec)) {
                _t.errorf(("#%d: got: %#v want: #%v" : GoString), Go.toInterface(_i), Go.toInterface(_dst), Go.toInterface(_test._dec));
            };
        };
    }
function testDecodeErr(_t:Ref<stdgo.testing.Testing.T>):Void {
        for (__0 => _tt in _errTests) {
            var _out = new Slice<GoUInt8>(((_tt._in.length) + (10 : GoInt) : GoInt).toBasic(), 0).__setNumber32__();
            var __tmp__ = decode(_out, (_tt._in : Slice<GoByte>)), _n:GoInt = __tmp__._0, _err:Error = __tmp__._1;
            if ((((_out.__slice__(0, _n) : Slice<GoUInt8>) : GoString) != _tt._out) || (Go.toInterface(_err) != Go.toInterface(_tt._err))) {
                _t.errorf(("Decode(%q) = %q, %v, want %q, %v" : GoString), Go.toInterface(_tt._in), Go.toInterface(((_out.__slice__(0, _n) : Slice<GoUInt8>) : GoString)), Go.toInterface(_err), Go.toInterface(_tt._out), Go.toInterface(_tt._err));
            };
        };
    }
function testDecodeStringErr(_t:Ref<stdgo.testing.Testing.T>):Void {
        for (__0 => _tt in _errTests) {
            var __tmp__ = decodeString(_tt._in), _out:Slice<GoUInt8> = __tmp__._0, _err:Error = __tmp__._1;
            if (((_out : GoString) != _tt._out) || (Go.toInterface(_err) != Go.toInterface(_tt._err))) {
                _t.errorf(("DecodeString(%q) = %q, %v, want %q, %v" : GoString), Go.toInterface(_tt._in), Go.toInterface(_out), Go.toInterface(_err), Go.toInterface(_tt._out), Go.toInterface(_tt._err));
            };
        };
    }
function testEncoderDecoder(_t:Ref<stdgo.testing.Testing.T>):Void {
        for (__0 => _multiplier in (new Slice<GoInt>(3, 3, (1 : GoInt), (128 : GoInt), (192 : GoInt)) : Slice<GoInt>)) {
            for (__1 => _test in _encDecTests) {
                var _input = stdgo.bytes.Bytes.repeat(_test._dec, _multiplier);
                var _output:GoString = stdgo.strings.Strings.repeat(_test._enc, _multiplier);
                var _buf:stdgo.bytes.Bytes.Buffer = ({} : stdgo.bytes.Bytes.Buffer);
                var _enc:stdgo.io.Io.Writer = newEncoder(Go.asInterface((Go.setRef(_buf) : Ref<stdgo.bytes.Bytes.Buffer>)));
                var _r:T__struct_1 = ({ reader : Go.asInterface(stdgo.bytes.Bytes.newReader(_input)) } : T__struct_1);
                {
                    var __tmp__ = stdgo.io.Io.copyBuffer(_enc, Go.asInterface(_r), new Slice<GoUInt8>((7 : GoInt).toBasic(), 0).__setNumber32__()), _n:GoInt64 = __tmp__._0, _err:Error = __tmp__._1;
                    if ((_n != (_input.length : GoInt64)) || (_err != null)) {
                        _t.errorf(("encoder.Write(%q*%d) = (%d, %v), want (%d, nil)" : GoString), Go.toInterface(_test._dec), Go.toInterface(_multiplier), Go.toInterface(_n), Go.toInterface(_err), Go.toInterface((_input.length)));
                        continue;
                    };
                };
                {
                    var _encDst:GoString = (_buf.string() : GoString);
                    if (_encDst != (_output)) {
                        _t.errorf(("buf(%q*%d) = %v, want %v" : GoString), Go.toInterface(_test._dec), Go.toInterface(_multiplier), Go.toInterface(_encDst), Go.toInterface(_output));
                        continue;
                    };
                };
                var _dec:stdgo.io.Io.Reader = newDecoder(Go.asInterface((Go.setRef(_buf) : Ref<stdgo.bytes.Bytes.Buffer>)));
                var _decBuf:stdgo.bytes.Bytes.Buffer = ({} : stdgo.bytes.Bytes.Buffer);
                var _w:T__struct_2 = ({ writer : Go.asInterface((Go.setRef(_decBuf) : Ref<stdgo.bytes.Bytes.Buffer>)) } : T__struct_2);
                {
                    var __tmp__ = stdgo.io.Io.copyBuffer(Go.asInterface(_w), _dec, new Slice<GoUInt8>((7 : GoInt).toBasic(), 0).__setNumber32__()), __2:GoInt64 = __tmp__._0, _err:Error = __tmp__._1;
                    if ((_err != null) || (_decBuf.len() != (_input.length))) {
                        _t.errorf(("decoder.Read(%q*%d) = (%d, %v), want (%d, nil)" : GoString), Go.toInterface(_test._enc), Go.toInterface(_multiplier), Go.toInterface(_decBuf.len()), Go.toInterface(_err), Go.toInterface((_input.length)));
                    };
                };
                if (!stdgo.bytes.Bytes.equal(_decBuf.bytes(), _input)) {
                    _t.errorf(("decBuf(%q*%d) = %v, want %v" : GoString), Go.toInterface(_test._dec), Go.toInterface(_multiplier), Go.toInterface(_decBuf.bytes()), Go.toInterface(_input));
                    continue;
                };
            };
        };
    }
function testDecoderErr(_t:Ref<stdgo.testing.Testing.T>):Void {
        for (__0 => _tt in _errTests) {
            var _dec:stdgo.io.Io.Reader = newDecoder(Go.asInterface(stdgo.strings.Strings.newReader(_tt._in)));
            var __tmp__ = stdgo.io.Io.readAll(_dec), _out:Slice<GoUInt8> = __tmp__._0, _err:Error = __tmp__._1;
            var _wantErr:Error = _tt._err;
            if (Go.toInterface(_wantErr) == (Go.toInterface(errLength))) {
                _wantErr = stdgo.io.Io.errUnexpectedEOF;
            };
            if (((_out : GoString) != _tt._out) || (Go.toInterface(_err) != Go.toInterface(_wantErr))) {
                _t.errorf(("NewDecoder(%q) = %q, %v, want %q, %v" : GoString), Go.toInterface(_tt._in), Go.toInterface(_out), Go.toInterface(_err), Go.toInterface(_tt._out), Go.toInterface(_wantErr));
            };
        };
    }
function testDumper(_t:Ref<stdgo.testing.Testing.T>):Void {
        var _in:GoArray<GoByte> = new GoArray<GoUInt8>(...[for (i in 0 ... 40) (0 : GoUInt8)]);
        for (_i in 0 ... _in.length.toBasic()) {
            _in[(_i : GoInt)] = (_i + (30 : GoInt) : GoByte);
        };
        {
            var _stride:GoInt = (1 : GoInt);
            Go.cfor(_stride < (_in.length), _stride++, {
                var _out:stdgo.bytes.Bytes.Buffer = ({} : stdgo.bytes.Bytes.Buffer);
                var _dumper:stdgo.io.Io.WriteCloser = dumper(Go.asInterface((Go.setRef(_out) : Ref<stdgo.bytes.Bytes.Buffer>)));
                var _done:GoInt = (0 : GoInt);
                while (_done < (_in.length)) {
                    var _todo:GoInt = _done + _stride;
                    if (_todo > (_in.length)) {
                        _todo = (_in.length);
                    };
                    _dumper.write((_in.__slice__(_done, _todo) : Slice<GoUInt8>));
                    _done = _todo;
                };
                _dumper.close();
                if (!stdgo.bytes.Bytes.equal(_out.bytes(), _expectedHexDump)) {
                    _t.errorf(("stride: %d failed. got:\n%s\nwant:\n%s" : GoString), Go.toInterface(_stride), Go.toInterface(_out.bytes()), Go.toInterface(_expectedHexDump));
                };
            });
        };
    }
function testDumper_doubleclose(_t:Ref<stdgo.testing.Testing.T>):Void {
        var _out:stdgo.strings.Strings.Builder = ({} : stdgo.strings.Strings.Builder);
        var _dumper:stdgo.io.Io.WriteCloser = dumper(Go.asInterface((Go.setRef(_out) : Ref<stdgo.strings.Strings.Builder>)));
        _dumper.write((("gopher" : GoString) : Slice<GoByte>));
        _dumper.close();
        _dumper.close();
        _dumper.write((("gopher" : GoString) : Slice<GoByte>));
        _dumper.close();
        var _expected:GoString = ("00000000  67 6f 70 68 65 72                                 |gopher|\n" : GoString);
        if ((_out.string() : GoString) != (_expected)) {
            _t.fatalf(("got:\n%#v\nwant:\n%#v" : GoString), Go.toInterface((_out.string() : GoString)), Go.toInterface(_expected));
        };
    }
function testDumper_earlyclose(_t:Ref<stdgo.testing.Testing.T>):Void {
        var _out:stdgo.strings.Strings.Builder = ({} : stdgo.strings.Strings.Builder);
        var _dumper:stdgo.io.Io.WriteCloser = dumper(Go.asInterface((Go.setRef(_out) : Ref<stdgo.strings.Strings.Builder>)));
        _dumper.close();
        _dumper.write((("gopher" : GoString) : Slice<GoByte>));
        var _expected:GoString = Go.str();
        if ((_out.string() : GoString) != (_expected)) {
            _t.fatalf(("got:\n%#v\nwant:\n%#v" : GoString), Go.toInterface((_out.string() : GoString)), Go.toInterface(_expected));
        };
    }
function testDump(_t:Ref<stdgo.testing.Testing.T>):Void {
        var _in:GoArray<GoByte> = new GoArray<GoUInt8>(...[for (i in 0 ... 40) (0 : GoUInt8)]);
        for (_i in 0 ... _in.length.toBasic()) {
            _in[(_i : GoInt)] = (_i + (30 : GoInt) : GoByte);
        };
        var _out = (dump((_in.__slice__(0) : Slice<GoUInt8>)) : Slice<GoByte>);
        if (!stdgo.bytes.Bytes.equal(_out, _expectedHexDump)) {
            _t.errorf(("got:\n%s\nwant:\n%s" : GoString), Go.toInterface(_out), Go.toInterface(_expectedHexDump));
        };
    }
function benchmarkEncode(_b:Ref<stdgo.testing.Testing.B>):Void {
        for (__0 => _size in (new Slice<GoInt>(4, 4, (256 : GoInt), (1024 : GoInt), (4096 : GoInt), (16384 : GoInt)) : Slice<GoInt>)) {
            var _src = stdgo.bytes.Bytes.repeat((new Slice<GoUInt8>(8, 8, (2 : GoUInt8), (3 : GoUInt8), (5 : GoUInt8), (7 : GoUInt8), (9 : GoUInt8), (11 : GoUInt8), (13 : GoUInt8), (17 : GoUInt8)) : Slice<GoUInt8>), _size / (8 : GoInt));
            _sink = new Slice<GoUInt8>(((2 : GoInt) * _size : GoInt).toBasic(), 0).__setNumber32__();
            _b.run(stdgo.fmt.Fmt.sprintf(("%v" : GoString), Go.toInterface(_size)), function(_b:Ref<stdgo.testing.Testing.B>):Void {
                _b.setBytes((_size : GoInt64));
                {
                    var _i:GoInt = (0 : GoInt);
                    Go.cfor(_i < _b.n, _i++, {
                        encode(_sink, _src);
                    });
                };
            });
        };
    }
function benchmarkDecode(_b:Ref<stdgo.testing.Testing.B>):Void {
        for (__0 => _size in (new Slice<GoInt>(4, 4, (256 : GoInt), (1024 : GoInt), (4096 : GoInt), (16384 : GoInt)) : Slice<GoInt>)) {
            var _src = stdgo.bytes.Bytes.repeat((new Slice<GoUInt8>(8, 8, (50 : GoUInt8), (98 : GoUInt8), (55 : GoUInt8), (52 : GoUInt8), (52 : GoUInt8), (102 : GoUInt8), (97 : GoUInt8), (97 : GoUInt8)) : Slice<GoUInt8>), _size / (8 : GoInt));
            _sink = new Slice<GoUInt8>((_size / (2 : GoInt) : GoInt).toBasic(), 0).__setNumber32__();
            _b.run(stdgo.fmt.Fmt.sprintf(("%v" : GoString), Go.toInterface(_size)), function(_b:Ref<stdgo.testing.Testing.B>):Void {
                _b.setBytes((_size : GoInt64));
                {
                    var _i:GoInt = (0 : GoInt);
                    Go.cfor(_i < _b.n, _i++, {
                        decode(_sink, _src);
                    });
                };
            });
        };
    }
function benchmarkDump(_b:Ref<stdgo.testing.Testing.B>):Void {
        for (__0 => _size in (new Slice<GoInt>(4, 4, (256 : GoInt), (1024 : GoInt), (4096 : GoInt), (16384 : GoInt)) : Slice<GoInt>)) {
            var _src = stdgo.bytes.Bytes.repeat((new Slice<GoUInt8>(8, 8, (2 : GoUInt8), (3 : GoUInt8), (5 : GoUInt8), (7 : GoUInt8), (9 : GoUInt8), (11 : GoUInt8), (13 : GoUInt8), (17 : GoUInt8)) : Slice<GoUInt8>), _size / (8 : GoInt));
            _b.run(stdgo.fmt.Fmt.sprintf(("%v" : GoString), Go.toInterface(_size)), function(_b:Ref<stdgo.testing.Testing.B>):Void {
                _b.setBytes((_size : GoInt64));
                {
                    var _i:GoInt = (0 : GoInt);
                    Go.cfor(_i < _b.n, _i++, {
                        dump(_src);
                    });
                };
            });
        };
    }
class T_encoder_asInterface {
    @:keep
    public dynamic function write(_p:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } return __self__.value.write(_p);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : Pointer<T_encoder>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.encoding.hex.Hex.T_encoder_asInterface) class T_encoder_static_extension {
    @:keep
    static public function write( _e:Ref<T_encoder>, _p:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } {
        var _n:GoInt = (0 : GoInt), _err:Error = (null : Error);
        while ((_p.length > (0 : GoInt)) && (_e._err == null)) {
            var _chunkSize:GoInt = (512 : GoInt);
            if ((_p.length) < _chunkSize) {
                _chunkSize = (_p.length);
            };
            var _written:GoInt = (0 : GoInt);
            var _encoded:GoInt = encode((_e._out.__slice__(0) : Slice<GoUInt8>), (_p.__slice__(0, _chunkSize) : Slice<GoUInt8>));
            {
                var __tmp__ = _e._w.write((_e._out.__slice__(0, _encoded) : Slice<GoUInt8>));
                _written = __tmp__._0;
                _e._err = __tmp__._1;
            };
            _n = _n + (_written / (2 : GoInt));
            _p = (_p.__slice__(_chunkSize) : Slice<GoUInt8>);
        };
        return { _0 : _n, _1 : _e._err };
    }
}
class T_decoder_asInterface {
    @:keep
    public dynamic function read(_p:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } return __self__.value.read(_p);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : Pointer<T_decoder>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.encoding.hex.Hex.T_decoder_asInterface) class T_decoder_static_extension {
    @:keep
    static public function read( _d:Ref<T_decoder>, _p:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } {
        var _n:GoInt = (0 : GoInt), _err:Error = (null : Error);
        if ((_d._in.length < (2 : GoInt)) && (_d._err == null)) {
            var __0:GoInt = (0 : GoInt), __1:GoInt = (0 : GoInt), _numRead:GoInt = __1, _numCopy:GoInt = __0;
            _numCopy = Go.copySlice((_d._arr.__slice__(0) : Slice<GoUInt8>), _d._in);
            {
                var __tmp__ = _d._r.read((_d._arr.__slice__(_numCopy) : Slice<GoUInt8>));
                _numRead = __tmp__._0;
                _d._err = __tmp__._1;
            };
            _d._in = (_d._arr.__slice__(0, _numCopy + _numRead) : Slice<GoUInt8>);
            if ((Go.toInterface(_d._err) == Go.toInterface(stdgo.io.Io.eof)) && ((_d._in.length % (2 : GoInt)) != (0 : GoInt))) {
                {
                    var _a:GoUInt8 = Go.str(255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
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
255)[(_d._in[((_d._in.length) - (1 : GoInt) : GoInt)] : GoInt)];
                    if (_a > (15 : GoUInt8)) {
                        _d._err = Go.asInterface((_d._in[((_d._in.length) - (1 : GoInt) : GoInt)] : InvalidByteError));
                    } else {
                        _d._err = stdgo.io.Io.errUnexpectedEOF;
                    };
                };
            };
        };
        {
            var _numAvail:GoInt = (_d._in.length) / (2 : GoInt);
            if ((_p.length) > _numAvail) {
                _p = (_p.__slice__(0, _numAvail) : Slice<GoUInt8>);
            };
        };
        var __tmp__ = decode(_p, (_d._in.__slice__(0, (_p.length) * (2 : GoInt)) : Slice<GoUInt8>)), _numDec:GoInt = __tmp__._0, _err:Error = __tmp__._1;
        _d._in = (_d._in.__slice__((2 : GoInt) * _numDec) : Slice<GoUInt8>);
        if (_err != null) {
            {
                final __tmp__0 = (null : Slice<GoUInt8>);
                final __tmp__1 = _err;
                _d._in = __tmp__0;
                _d._err = __tmp__1;
            };
        };
        if ((_d._in.length) < (2 : GoInt)) {
            return { _0 : _numDec, _1 : _d._err };
        };
        return { _0 : _numDec, _1 : (null : Error) };
    }
}
class T_dumper_asInterface {
    @:keep
    public dynamic function close():Error return __self__.value.close();
    @:keep
    public dynamic function write(_data:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } return __self__.value.write(_data);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : Pointer<T_dumper>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.encoding.hex.Hex.T_dumper_asInterface) class T_dumper_static_extension {
    @:keep
    static public function close( _h:Ref<T_dumper>):Error {
        var _err:Error = (null : Error);
        if (_h._closed) {
            return _err;
        };
        _h._closed = true;
        if (_h._used == ((0 : GoInt))) {
            return _err;
        };
        _h._buf[(0 : GoInt)] = (32 : GoUInt8);
        _h._buf[(1 : GoInt)] = (32 : GoUInt8);
        _h._buf[(2 : GoInt)] = (32 : GoUInt8);
        _h._buf[(3 : GoInt)] = (32 : GoUInt8);
        _h._buf[(4 : GoInt)] = (124 : GoUInt8);
        var _nBytes:GoInt = _h._used;
        while (_h._used < (16 : GoInt)) {
            var _l:GoInt = (3 : GoInt);
            if (_h._used == ((7 : GoInt))) {
                _l = (4 : GoInt);
            } else if (_h._used == ((15 : GoInt))) {
                _l = (5 : GoInt);
            };
            {
                var __tmp__ = _h._w.write((_h._buf.__slice__(0, _l) : Slice<GoUInt8>));
                _err = __tmp__._1;
            };
            if (_err != null) {
                return _err;
            };
            _h._used++;
        };
        _h._rightChars[(_nBytes : GoInt)] = (124 : GoUInt8);
        _h._rightChars[(_nBytes + (1 : GoInt) : GoInt)] = (10 : GoUInt8);
        {
            var __tmp__ = _h._w.write((_h._rightChars.__slice__(0, _nBytes + (2 : GoInt)) : Slice<GoUInt8>));
            _err = __tmp__._1;
        };
        return _err;
    }
    @:keep
    static public function write( _h:Ref<T_dumper>, _data:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } {
        var _n:GoInt = (0 : GoInt), _err:Error = (null : Error);
        if (_h._closed) {
            return { _0 : (0 : GoInt), _1 : stdgo.errors.Errors.new_(("encoding/hex: dumper closed" : GoString)) };
        };
        for (_i in 0 ... _data.length.toBasic()) {
            if (_h._used == ((0 : GoInt))) {
                _h._buf[(0 : GoInt)] = (_h._n >> (24i64 : GoUInt64) : GoByte);
                _h._buf[(1 : GoInt)] = (_h._n >> (16i64 : GoUInt64) : GoByte);
                _h._buf[(2 : GoInt)] = (_h._n >> (8i64 : GoUInt64) : GoByte);
                _h._buf[(3 : GoInt)] = (_h._n : GoByte);
                encode((_h._buf.__slice__((4 : GoInt)) : Slice<GoUInt8>), (_h._buf.__slice__(0, (4 : GoInt)) : Slice<GoUInt8>));
                _h._buf[(12 : GoInt)] = (32 : GoUInt8);
                _h._buf[(13 : GoInt)] = (32 : GoUInt8);
                {
                    var __tmp__ = _h._w.write((_h._buf.__slice__((4 : GoInt)) : Slice<GoUInt8>));
                    _err = __tmp__._1;
                };
                if (_err != null) {
                    return { _0 : _n, _1 : _err };
                };
            };
            encode((_h._buf.__slice__(0) : Slice<GoUInt8>), (_data.__slice__(_i, _i + (1 : GoInt)) : Slice<GoUInt8>));
            _h._buf[(2 : GoInt)] = (32 : GoUInt8);
            var _l:GoInt = (3 : GoInt);
            if (_h._used == ((7 : GoInt))) {
                _h._buf[(3 : GoInt)] = (32 : GoUInt8);
                _l = (4 : GoInt);
            } else if (_h._used == ((15 : GoInt))) {
                _h._buf[(3 : GoInt)] = (32 : GoUInt8);
                _h._buf[(4 : GoInt)] = (124 : GoUInt8);
                _l = (5 : GoInt);
            };
            {
                var __tmp__ = _h._w.write((_h._buf.__slice__(0, _l) : Slice<GoUInt8>));
                _err = __tmp__._1;
            };
            if (_err != null) {
                return { _0 : _n, _1 : _err };
            };
            _n++;
            _h._rightChars[(_h._used : GoInt)] = _toChar(_data[(_i : GoInt)]);
            _h._used++;
            _h._n++;
            if (_h._used == ((16 : GoInt))) {
                _h._rightChars[(16 : GoInt)] = (124 : GoUInt8);
                _h._rightChars[(17 : GoInt)] = (10 : GoUInt8);
                {
                    var __tmp__ = _h._w.write((_h._rightChars.__slice__(0) : Slice<GoUInt8>));
                    _err = __tmp__._1;
                };
                if (_err != null) {
                    return { _0 : _n, _1 : _err };
                };
                _h._used = (0 : GoInt);
            };
        };
        return { _0 : _n, _1 : _err };
    }
}
class InvalidByteError_asInterface {
    @:keep
    public dynamic function error():GoString return __self__.value.error();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : Pointer<InvalidByteError>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.encoding.hex.Hex.InvalidByteError_asInterface) class InvalidByteError_static_extension {
    @:keep
    static public function error( _e:InvalidByteError):GoString {
        return stdgo.fmt.Fmt.sprintf(("encoding/hex: invalid byte: %#U" : GoString), Go.toInterface((_e : GoRune)));
    }
}
