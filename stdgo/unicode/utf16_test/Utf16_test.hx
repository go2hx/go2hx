package stdgo.unicode.utf16_test;
import stdgo.unicode.utf16.Utf16;
import stdgo.StdGoTypes;
import stdgo.Error;
import stdgo.Go;
import stdgo.GoString;
import stdgo.Pointer;
import stdgo.Slice;
import stdgo.GoArray;
import stdgo.GoMap;
import stdgo.Chan;
var _encodeTests : Slice<stdgo.unicode.utf16_test.Utf16_test.T_encodeTest> = ((new Slice<T_encodeTest>(((new T_encodeTest(((new Slice<GoRune>(((1 : GoInt32)), ((2 : GoInt32)), ((3 : GoInt32)), ((4 : GoInt32))) : Slice<GoRune>)), ((new Slice<GoUInt16>(((1 : GoUInt16)), ((2 : GoUInt16)), ((3 : GoUInt16)), ((4 : GoUInt16))) : Slice<GoUInt16>))) : T_encodeTest)), ((new T_encodeTest(((new Slice<GoRune>(((65535 : GoInt32)), ((65536 : GoInt32)), ((65537 : GoInt32)), ((74565 : GoInt32)), ((1114111 : GoInt32))) : Slice<GoRune>)), ((new Slice<GoUInt16>(((65535 : GoUInt16)), ((55296 : GoUInt16)), ((56320 : GoUInt16)), ((55296 : GoUInt16)), ((56321 : GoUInt16)), ((55304 : GoUInt16)), ((57157 : GoUInt16)), ((56319 : GoUInt16)), ((57343 : GoUInt16))) : Slice<GoUInt16>))) : T_encodeTest)), ((new T_encodeTest(((new Slice<GoRune>(((((("a" : GoString))).code : GoInt32)), ((((("b" : GoString))).code : GoInt32)), ((55295 : GoInt32)), ((55296 : GoInt32)), ((57343 : GoInt32)), ((57344 : GoInt32)), ((1114112 : GoInt32)), ((-1 : GoInt32))) : Slice<GoRune>)), ((new Slice<GoUInt16>(((((("a" : GoString))).code : GoUInt16)), ((((("b" : GoString))).code : GoUInt16)), ((55295 : GoUInt16)), ((65533 : GoUInt16)), ((65533 : GoUInt16)), ((57344 : GoUInt16)), ((65533 : GoUInt16)), ((65533 : GoUInt16))) : Slice<GoUInt16>))) : T_encodeTest))) : Slice<T_encodeTest>));
var _decodeTests : Slice<stdgo.unicode.utf16_test.Utf16_test.T_decodeTest> = ((new Slice<T_decodeTest>(((new T_decodeTest(((new Slice<GoUInt16>(((1 : GoUInt16)), ((2 : GoUInt16)), ((3 : GoUInt16)), ((4 : GoUInt16))) : Slice<GoUInt16>)), ((new Slice<GoRune>(((1 : GoInt32)), ((2 : GoInt32)), ((3 : GoInt32)), ((4 : GoInt32))) : Slice<GoRune>))) : T_decodeTest)), ((new T_decodeTest(((new Slice<GoUInt16>(((65535 : GoUInt16)), ((55296 : GoUInt16)), ((56320 : GoUInt16)), ((55296 : GoUInt16)), ((56321 : GoUInt16)), ((55304 : GoUInt16)), ((57157 : GoUInt16)), ((56319 : GoUInt16)), ((57343 : GoUInt16))) : Slice<GoUInt16>)), ((new Slice<GoRune>(((65535 : GoInt32)), ((65536 : GoInt32)), ((65537 : GoInt32)), ((74565 : GoInt32)), ((1114111 : GoInt32))) : Slice<GoRune>))) : T_decodeTest)), ((new T_decodeTest(((new Slice<GoUInt16>(((55296 : GoUInt16)), ((((("a" : GoString))).code : GoUInt16))) : Slice<GoUInt16>)), ((new Slice<GoRune>(((65533 : GoInt32)), ((((("a" : GoString))).code : GoInt32))) : Slice<GoRune>))) : T_decodeTest)), ((new T_decodeTest(((new Slice<GoUInt16>(((57343 : GoUInt16))) : Slice<GoUInt16>)), ((new Slice<GoRune>(((65533 : GoInt32))) : Slice<GoRune>))) : T_decodeTest))) : Slice<T_decodeTest>));
var _decodeRuneTests : Slice<stdgo.unicode.utf16_test.Utf16_test.T__struct_0> = ((new Slice<T__struct_0>(((new T__struct_0(((55296 : GoInt32)), ((56320 : GoInt32)), ((65536 : GoInt32))) : T__struct_0)), ((new T__struct_0(((55296 : GoInt32)), ((56321 : GoInt32)), ((65537 : GoInt32))) : T__struct_0)), ((new T__struct_0(((55304 : GoInt32)), ((57157 : GoInt32)), ((74565 : GoInt32))) : T__struct_0)), ((new T__struct_0(((56319 : GoInt32)), ((57343 : GoInt32)), ((1114111 : GoInt32))) : T__struct_0)), ((new T__struct_0(((55296 : GoInt32)), ((((("a" : GoString))).code : GoInt32)), ((65533 : GoInt32))) : T__struct_0))) : Slice<T__struct_0>));
var _surrogateTests : Slice<stdgo.unicode.utf16_test.Utf16_test.T__struct_1> = ((new Slice<T__struct_1>(
((new T__struct_1(((((("\u007A" : GoString))).code : GoInt32)), false) : T__struct_1)),
((new T__struct_1(((((("\u6C34" : GoString))).code : GoInt32)), false) : T__struct_1)),
((new T__struct_1(((((("\uFEFF" : GoString))).code : GoInt32)), false) : T__struct_1)),
((new T__struct_1(((((("\u{00010000}" : GoString))).code : GoInt32)), false) : T__struct_1)),
((new T__struct_1(((((("\u{0001D11E}" : GoString))).code : GoInt32)), false) : T__struct_1)),
((new T__struct_1(((((("\u{0010FFFD}" : GoString))).code : GoInt32)), false) : T__struct_1)),
((new T__struct_1(((((55295 : GoInt32)) : GoRune)), false) : T__struct_1)),
((new T__struct_1(((((55296 : GoInt32)) : GoRune)), true) : T__struct_1)),
((new T__struct_1(((((56320 : GoInt32)) : GoRune)), true) : T__struct_1)),
((new T__struct_1(((((57344 : GoInt32)) : GoRune)), false) : T__struct_1)),
((new T__struct_1(((((57343 : GoInt32)) : GoRune)), true) : T__struct_1))) : Slice<T__struct_1>));
@:structInit class T_encodeTest {
    public var _in : Slice<GoInt32> = ((null : Slice<GoInt32>));
    public var _out : Slice<GoUInt16> = ((null : Slice<GoUInt16>));
    public function new(?_in:Slice<GoInt32>, ?_out:Slice<GoUInt16>) {
        if (_in != null) this._in = _in;
        if (_out != null) this._out = _out;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_encodeTest(_in, _out);
    }
}
@:structInit class T_decodeTest {
    public var _in : Slice<GoUInt16> = ((null : Slice<GoUInt16>));
    public var _out : Slice<GoInt32> = ((null : Slice<GoInt32>));
    public function new(?_in:Slice<GoUInt16>, ?_out:Slice<GoInt32>) {
        if (_in != null) this._in = _in;
        if (_out != null) this._out = _out;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_decodeTest(_in, _out);
    }
}
@:structInit @:local class T__struct_0 {
    public var _r1 : GoInt32 = 0;
    public var _r2 : GoInt32 = 0;
    public var _want : GoInt32 = 0;
    public function toString():String return "{" + Go.string(_r1) + " " + Go.string(_r2) + " " + Go.string(_want) + "}";
    public function new(?_r1:GoInt32, ?_r2:GoInt32, ?_want:GoInt32, ?toString) {
        if (_r1 != null) this._r1 = _r1;
        if (_r2 != null) this._r2 = _r2;
        if (_want != null) this._want = _want;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T__struct_0(_r1, _r2, _want);
    }
}
@:structInit @:local class T__struct_1 {
    public var _r : GoInt32 = 0;
    public var _want : Bool = false;
    public function toString():String return "{" + Go.string(_r) + " " + Go.string(_want) + "}";
    public function new(?_r:GoInt32, ?_want:Bool, ?toString) {
        if (_r != null) this._r = _r;
        if (_want != null) this._want = _want;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T__struct_1(_r, _want);
    }
}
/**
    // Validate the constants redefined from unicode.
**/
function testConstants(_t:stdgo.testing.Testing.T):Void {
        if (false) {
            _t.errorf(((((("utf16.maxRune is wrong: %x should be %x" : GoString))) : GoString)), Go.toInterface(((1114111 : GoInt32))), Go.toInterface(((1114111 : GoInt32))));
        };
        if (false) {
            _t.errorf(((((("utf16.replacementChar is wrong: %x should be %x" : GoString))) : GoString)), Go.toInterface(((65533 : GoInt32))), Go.toInterface(((65533 : GoInt32))));
        };
    }
function testEncode(_t:stdgo.testing.Testing.T):Void {
        for (_0 => _tt in _encodeTests) {
            var _out = encode(_tt._in);
            if (!stdgo.reflect.Reflect.deepEqual(Go.toInterface(_out), Go.toInterface(_tt._out))) {
                _t.errorf(((((("Encode(%x) = %x; want %x" : GoString))) : GoString)), Go.toInterface(_tt._in), Go.toInterface(_out), Go.toInterface(_tt._out));
            };
        };
    }
function testEncodeRune(_t:stdgo.testing.Testing.T):Void {
        for (_i => _tt in _encodeTests) {
            var _j:GoInt = ((0 : GoInt));
            for (_0 => _r in _tt._in) {
                var __tmp__ = encodeRune(_r), _r1:GoInt32 = __tmp__._0, _r2:GoInt32 = __tmp__._1;
                if ((_r < ((65536 : GoInt32))) || (_r > ((1114111 : GoInt32)))) {
                    if (_j >= (_tt._out != null ? _tt._out.length : ((0 : GoInt)))) {
                        _t.errorf(((((("#%d: ran out of tt.out" : GoString))) : GoString)), Go.toInterface(_i));
                        break;
                    };
                    if ((_r1 != ((65533 : GoInt32))) || (_r2 != ((65533 : GoInt32)))) {
                        _t.errorf(((((("EncodeRune(%#x) = %#x, %#x; want 0xfffd, 0xfffd" : GoString))) : GoString)), Go.toInterface(_r), Go.toInterface(_r1), Go.toInterface(_r2));
                    };
                    _j++;
                } else {
                    if ((_j + ((1 : GoInt))) >= (_tt._out != null ? _tt._out.length : ((0 : GoInt)))) {
                        _t.errorf(((((("#%d: ran out of tt.out" : GoString))) : GoString)), Go.toInterface(_i));
                        break;
                    };
                    if ((_r1 != (((_tt._out != null ? _tt._out[_j] : ((0 : GoUInt16))) : GoRune))) || (_r2 != (((_tt._out != null ? _tt._out[_j + ((1 : GoInt))] : ((0 : GoUInt16))) : GoRune)))) {
                        _t.errorf(((((("EncodeRune(%#x) = %#x, %#x; want %#x, %#x" : GoString))) : GoString)), Go.toInterface(_r), Go.toInterface(_r1), Go.toInterface(_r2), Go.toInterface((_tt._out != null ? _tt._out[_j] : ((0 : GoUInt16)))), Go.toInterface((_tt._out != null ? _tt._out[_j + ((1 : GoInt))] : ((0 : GoUInt16)))));
                    };
                    _j = _j + (((2 : GoInt)));
                    var _dec:GoInt32 = decodeRune(_r1, _r2);
                    if (_dec != _r) {
                        _t.errorf(((((("DecodeRune(%#x, %#x) = %#x; want %#x" : GoString))) : GoString)), Go.toInterface(_r1), Go.toInterface(_r2), Go.toInterface(_dec), Go.toInterface(_r));
                    };
                };
            };
            if (_j != (_tt._out != null ? _tt._out.length : ((0 : GoInt)))) {
                _t.errorf(((((("#%d: EncodeRune didn\'t generate enough output" : GoString))) : GoString)), Go.toInterface(_i));
            };
        };
    }
function testDecode(_t:stdgo.testing.Testing.T):Void {
        for (_0 => _tt in _decodeTests) {
            var _out = decode(_tt._in);
            if (!stdgo.reflect.Reflect.deepEqual(Go.toInterface(_out), Go.toInterface(_tt._out))) {
                _t.errorf(((((("Decode(%x) = %x; want %x" : GoString))) : GoString)), Go.toInterface(_tt._in), Go.toInterface(_out), Go.toInterface(_tt._out));
            };
        };
    }
function testDecodeRune(_t:stdgo.testing.Testing.T):Void {
        for (_i => _tt in _decodeRuneTests) {
            var _got:GoInt32 = decodeRune(_tt._r1, _tt._r2);
            if (_got != _tt._want) {
                _t.errorf(((((("%d: DecodeRune(%q, %q) = %v; want %v" : GoString))) : GoString)), Go.toInterface(_i), Go.toInterface(_tt._r1), Go.toInterface(_tt._r2), Go.toInterface(_got), Go.toInterface(_tt._want));
            };
        };
    }
function testIsSurrogate(_t:stdgo.testing.Testing.T):Void {
        for (_i => _tt in _surrogateTests) {
            var _got:Bool = isSurrogate(_tt._r);
            if (_got != _tt._want) {
                _t.errorf(((((("%d: IsSurrogate(%q) = %v; want %v" : GoString))) : GoString)), Go.toInterface(_i), Go.toInterface(_tt._r), Go.toInterface(_got), Go.toInterface(_tt._want));
            };
        };
    }
function benchmarkDecodeValidASCII(_b:stdgo.testing.Testing.B):Void {
        var _data = ((new Slice<GoUInt16>(
((104 : GoUInt16)),
((101 : GoUInt16)),
((108 : GoUInt16)),
((108 : GoUInt16)),
((111 : GoUInt16)),
((32 : GoUInt16)),
((119 : GoUInt16)),
((111 : GoUInt16)),
((114 : GoUInt16)),
((108 : GoUInt16)),
((100 : GoUInt16))) : Slice<GoUInt16>));
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < _b.n, _i++, {
                decode(_data);
            });
        };
    }
function benchmarkDecodeValidJapaneseChars(_b:stdgo.testing.Testing.B):Void {
        var _data = ((new Slice<GoUInt16>(((26085 : GoUInt16)), ((26412 : GoUInt16)), ((35486 : GoUInt16)), ((26085 : GoUInt16)), ((26412 : GoUInt16)), ((35486 : GoUInt16)), ((26085 : GoUInt16)), ((26412 : GoUInt16)), ((35486 : GoUInt16))) : Slice<GoUInt16>));
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < _b.n, _i++, {
                decode(_data);
            });
        };
    }
function benchmarkDecodeRune(_b:stdgo.testing.Testing.B):Void {
        var _rs = new Slice<GoInt32>(...[for (i in 0 ... ((((10 : GoInt)) : GoInt)).toBasic()) ((0 : GoInt32))]);
        for (_i => _u in ((new Slice<GoRune>(((((("𝓐" : GoString))).code : GoInt32)), ((((("𝓑" : GoString))).code : GoInt32)), ((((("𝓒" : GoString))).code : GoInt32)), ((((("𝓓" : GoString))).code : GoInt32)), ((((("𝓔" : GoString))).code : GoInt32))) : Slice<GoRune>))) {
            {
                var __tmp__ = encodeRune(_u);
                if (_rs != null) _rs[((2 : GoInt)) * _i] = __tmp__._0;
                if (_rs != null) _rs[(((2 : GoInt)) * _i) + ((1 : GoInt))] = __tmp__._1;
            };
        };
        _b.resetTimer();
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < _b.n, _i++, {
                {
                    var _j:GoInt = ((0 : GoInt));
                    Go.cfor(_j < ((5 : GoInt)), _j++, {
                        decodeRune((_rs != null ? _rs[((2 : GoInt)) * _j] : ((0 : GoInt32))), (_rs != null ? _rs[(((2 : GoInt)) * _j) + ((1 : GoInt))] : ((0 : GoInt32))));
                    });
                };
            });
        };
    }
function benchmarkEncodeValidASCII(_b:stdgo.testing.Testing.B):Void {
        var _data = ((new Slice<GoRune>(((((("h" : GoString))).code : GoInt32)), ((((("e" : GoString))).code : GoInt32)), ((((("l" : GoString))).code : GoInt32)), ((((("l" : GoString))).code : GoInt32)), ((((("o" : GoString))).code : GoInt32))) : Slice<GoRune>));
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < _b.n, _i++, {
                encode(_data);
            });
        };
    }
function benchmarkEncodeValidJapaneseChars(_b:stdgo.testing.Testing.B):Void {
        var _data = ((new Slice<GoRune>(((((("日" : GoString))).code : GoInt32)), ((((("本" : GoString))).code : GoInt32)), ((((("語" : GoString))).code : GoInt32))) : Slice<GoRune>));
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < _b.n, _i++, {
                encode(_data);
            });
        };
    }
function benchmarkEncodeRune(_b:stdgo.testing.Testing.B):Void {
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < _b.n, _i++, {
                for (_0 => _u in ((new Slice<GoRune>(((((("𝓐" : GoString))).code : GoInt32)), ((((("𝓑" : GoString))).code : GoInt32)), ((((("𝓒" : GoString))).code : GoInt32)), ((((("𝓓" : GoString))).code : GoInt32)), ((((("𝓔" : GoString))).code : GoInt32))) : Slice<GoRune>))) {
                    encodeRune(_u);
                };
            });
        };
    }
