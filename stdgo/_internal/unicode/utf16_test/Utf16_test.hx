package stdgo._internal.unicode.utf16_test;
import stdgo._internal.unicode.utf16.Utf16;
import stdgo._internal.unicode.utf16.Utf16;
var _encodeTests : stdgo.Slice<stdgo._internal.unicode.utf16_test.Utf16_test.T_encodeTest> = (new stdgo.Slice<stdgo._internal.unicode.utf16_test.Utf16_test.T_encodeTest>(3, 3, ...[(new stdgo._internal.unicode.utf16_test.Utf16_test.T_encodeTest((new stdgo.Slice<stdgo.GoInt32>(4, 4, ...[(1 : stdgo.GoInt32), (2 : stdgo.GoInt32), (3 : stdgo.GoInt32), (4 : stdgo.GoInt32)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>), (new stdgo.Slice<stdgo.GoUInt16>(4, 4, ...[(1 : stdgo.GoUInt16), (2 : stdgo.GoUInt16), (3 : stdgo.GoUInt16), (4 : stdgo.GoUInt16)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt16>)) : stdgo._internal.unicode.utf16_test.Utf16_test.T_encodeTest), (new stdgo._internal.unicode.utf16_test.Utf16_test.T_encodeTest((new stdgo.Slice<stdgo.GoInt32>(5, 5, ...[(65535 : stdgo.GoInt32), (65536 : stdgo.GoInt32), (65537 : stdgo.GoInt32), (74565 : stdgo.GoInt32), (1114111 : stdgo.GoInt32)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>), (new stdgo.Slice<stdgo.GoUInt16>(9, 9, ...[(65535 : stdgo.GoUInt16), (55296 : stdgo.GoUInt16), (56320 : stdgo.GoUInt16), (55296 : stdgo.GoUInt16), (56321 : stdgo.GoUInt16), (55304 : stdgo.GoUInt16), (57157 : stdgo.GoUInt16), (56319 : stdgo.GoUInt16), (57343 : stdgo.GoUInt16)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt16>)) : stdgo._internal.unicode.utf16_test.Utf16_test.T_encodeTest), (new stdgo._internal.unicode.utf16_test.Utf16_test.T_encodeTest((new stdgo.Slice<stdgo.GoInt32>(8, 8, ...[(97 : stdgo.GoInt32), (98 : stdgo.GoInt32), (55295 : stdgo.GoInt32), (55296 : stdgo.GoInt32), (57343 : stdgo.GoInt32), (57344 : stdgo.GoInt32), (1114112 : stdgo.GoInt32), (-1 : stdgo.GoInt32)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>), (new stdgo.Slice<stdgo.GoUInt16>(8, 8, ...[(97 : stdgo.GoUInt16), (98 : stdgo.GoUInt16), (55295 : stdgo.GoUInt16), (65533 : stdgo.GoUInt16), (65533 : stdgo.GoUInt16), (57344 : stdgo.GoUInt16), (65533 : stdgo.GoUInt16), (65533 : stdgo.GoUInt16)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt16>)) : stdgo._internal.unicode.utf16_test.Utf16_test.T_encodeTest)].concat([for (i in 3 ... (3 > 3 ? 3 : 3 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.unicode.utf16_test.Utf16_test.T_encodeTest)])) : stdgo.Slice<stdgo._internal.unicode.utf16_test.Utf16_test.T_encodeTest>);
var _decodeTests : stdgo.Slice<stdgo._internal.unicode.utf16_test.Utf16_test.T_decodeTest> = (new stdgo.Slice<stdgo._internal.unicode.utf16_test.Utf16_test.T_decodeTest>(4, 4, ...[(new stdgo._internal.unicode.utf16_test.Utf16_test.T_decodeTest((new stdgo.Slice<stdgo.GoUInt16>(4, 4, ...[(1 : stdgo.GoUInt16), (2 : stdgo.GoUInt16), (3 : stdgo.GoUInt16), (4 : stdgo.GoUInt16)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt16>), (new stdgo.Slice<stdgo.GoInt32>(4, 4, ...[(1 : stdgo.GoInt32), (2 : stdgo.GoInt32), (3 : stdgo.GoInt32), (4 : stdgo.GoInt32)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>)) : stdgo._internal.unicode.utf16_test.Utf16_test.T_decodeTest), (new stdgo._internal.unicode.utf16_test.Utf16_test.T_decodeTest((new stdgo.Slice<stdgo.GoUInt16>(9, 9, ...[(65535 : stdgo.GoUInt16), (55296 : stdgo.GoUInt16), (56320 : stdgo.GoUInt16), (55296 : stdgo.GoUInt16), (56321 : stdgo.GoUInt16), (55304 : stdgo.GoUInt16), (57157 : stdgo.GoUInt16), (56319 : stdgo.GoUInt16), (57343 : stdgo.GoUInt16)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt16>), (new stdgo.Slice<stdgo.GoInt32>(5, 5, ...[(65535 : stdgo.GoInt32), (65536 : stdgo.GoInt32), (65537 : stdgo.GoInt32), (74565 : stdgo.GoInt32), (1114111 : stdgo.GoInt32)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>)) : stdgo._internal.unicode.utf16_test.Utf16_test.T_decodeTest), (new stdgo._internal.unicode.utf16_test.Utf16_test.T_decodeTest((new stdgo.Slice<stdgo.GoUInt16>(2, 2, ...[(55296 : stdgo.GoUInt16), (97 : stdgo.GoUInt16)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt16>), (new stdgo.Slice<stdgo.GoInt32>(2, 2, ...[(65533 : stdgo.GoInt32), (97 : stdgo.GoInt32)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>)) : stdgo._internal.unicode.utf16_test.Utf16_test.T_decodeTest), (new stdgo._internal.unicode.utf16_test.Utf16_test.T_decodeTest((new stdgo.Slice<stdgo.GoUInt16>(1, 1, ...[(57343 : stdgo.GoUInt16)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt16>), (new stdgo.Slice<stdgo.GoInt32>(1, 1, ...[(65533 : stdgo.GoInt32)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>)) : stdgo._internal.unicode.utf16_test.Utf16_test.T_decodeTest)].concat([for (i in 4 ... (4 > 4 ? 4 : 4 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.unicode.utf16_test.Utf16_test.T_decodeTest)])) : stdgo.Slice<stdgo._internal.unicode.utf16_test.Utf16_test.T_decodeTest>);
var _decodeRuneTests : stdgo.Slice<T__struct_0> = (new stdgo.Slice<T__struct_0>(5, 5, ...[({ _r1 : (55296 : stdgo.GoInt32), _r2 : (56320 : stdgo.GoInt32), _want : (65536 : stdgo.GoInt32) } : T__struct_0), ({ _r1 : (55296 : stdgo.GoInt32), _r2 : (56321 : stdgo.GoInt32), _want : (65537 : stdgo.GoInt32) } : T__struct_0), ({ _r1 : (55304 : stdgo.GoInt32), _r2 : (57157 : stdgo.GoInt32), _want : (74565 : stdgo.GoInt32) } : T__struct_0), ({ _r1 : (56319 : stdgo.GoInt32), _r2 : (57343 : stdgo.GoInt32), _want : (1114111 : stdgo.GoInt32) } : T__struct_0), ({ _r1 : (55296 : stdgo.GoInt32), _r2 : (97 : stdgo.GoInt32), _want : (65533 : stdgo.GoInt32) } : T__struct_0)].concat([for (i in 5 ... (5 > 5 ? 5 : 5 : stdgo.GoInt).toBasic()) ({ _r1 : (0 : stdgo.GoInt32), _r2 : (0 : stdgo.GoInt32), _want : (0 : stdgo.GoInt32) } : T__struct_0)])) : stdgo.Slice<T__struct_0>);
var _surrogateTests : stdgo.Slice<T__struct_1> = (new stdgo.Slice<T__struct_1>(11, 11, ...[
({ _r : (122 : stdgo.GoInt32), _want : false } : T__struct_1),
({ _r : (27700 : stdgo.GoInt32), _want : false } : T__struct_1),
({ _r : (65279 : stdgo.GoInt32), _want : false } : T__struct_1),
({ _r : (65536 : stdgo.GoInt32), _want : false } : T__struct_1),
({ _r : (119070 : stdgo.GoInt32), _want : false } : T__struct_1),
({ _r : (1114109 : stdgo.GoInt32), _want : false } : T__struct_1),
({ _r : ((55295 : stdgo.GoInt32) : stdgo.GoRune), _want : false } : T__struct_1),
({ _r : ((55296 : stdgo.GoInt32) : stdgo.GoRune), _want : true } : T__struct_1),
({ _r : ((56320 : stdgo.GoInt32) : stdgo.GoRune), _want : true } : T__struct_1),
({ _r : ((57344 : stdgo.GoInt32) : stdgo.GoRune), _want : false } : T__struct_1),
({ _r : ((57343 : stdgo.GoInt32) : stdgo.GoRune), _want : true } : T__struct_1)].concat([for (i in 11 ... (11 > 11 ? 11 : 11 : stdgo.GoInt).toBasic()) ({ _r : (0 : stdgo.GoInt32), _want : false } : T__struct_1)])) : stdgo.Slice<T__struct_1>);
@:structInit @:private class T_encodeTest {
    public var _in : stdgo.Slice<stdgo.GoInt32> = (null : stdgo.Slice<stdgo.GoInt32>);
    public var _out : stdgo.Slice<stdgo.GoUInt16> = (null : stdgo.Slice<stdgo.GoUInt16>);
    public function new(?_in:stdgo.Slice<stdgo.GoInt32>, ?_out:stdgo.Slice<stdgo.GoUInt16>) {
        if (_in != null) this._in = _in;
        if (_out != null) this._out = _out;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_encodeTest(_in, _out);
    }
}
@:structInit @:private class T_decodeTest {
    public var _in : stdgo.Slice<stdgo.GoUInt16> = (null : stdgo.Slice<stdgo.GoUInt16>);
    public var _out : stdgo.Slice<stdgo.GoInt32> = (null : stdgo.Slice<stdgo.GoInt32>);
    public function new(?_in:stdgo.Slice<stdgo.GoUInt16>, ?_out:stdgo.Slice<stdgo.GoInt32>) {
        if (_in != null) this._in = _in;
        if (_out != null) this._out = _out;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_decodeTest(_in, _out);
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
@:keep @:allow(stdgo._internal.unicode.utf16_test.Utf16_test.T__struct_0_asInterface) class T__struct_0_static_extension {

}
@:local @:using(stdgo._internal.unicode.utf16_test.Utf16_test.T__struct_0_static_extension) typedef T__struct_0 = {
    public var _r1 : stdgo.GoInt32;
    public var _r2 : stdgo.GoInt32;
    public var _want : stdgo.GoInt32;
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
@:keep @:allow(stdgo._internal.unicode.utf16_test.Utf16_test.T__struct_1_asInterface) class T__struct_1_static_extension {

}
@:local @:using(stdgo._internal.unicode.utf16_test.Utf16_test.T__struct_1_static_extension) typedef T__struct_1 = {
    public var _r : stdgo.GoInt32;
    public var _want : Bool;
};
function testConstants(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        if (false) {
            _t.errorf(("utf16.maxRune is wrong: %x should be %x" : stdgo.GoString), stdgo.Go.toInterface((1114111 : stdgo.GoInt32)), stdgo.Go.toInterface((1114111 : stdgo.GoInt32)));
        };
        if (false) {
            _t.errorf(("utf16.replacementChar is wrong: %x should be %x" : stdgo.GoString), stdgo.Go.toInterface((65533 : stdgo.GoInt32)), stdgo.Go.toInterface((65533 : stdgo.GoInt32)));
        };
    }
function testEncode(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        for (__0 => _tt in _encodeTests) {
            var _out = encode(_tt._in);
            if (!stdgo._internal.reflect.Reflect.deepEqual(stdgo.Go.toInterface(_out), stdgo.Go.toInterface(_tt._out))) {
                _t.errorf(("Encode(%x) = %x; want %x" : stdgo.GoString), stdgo.Go.toInterface(_tt._in), stdgo.Go.toInterface(_out), stdgo.Go.toInterface(_tt._out));
            };
        };
    }
function testAppendRune(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        for (__0 => _tt in _encodeTests) {
            var _out:stdgo.Slice<stdgo.GoUInt16> = (null : stdgo.Slice<stdgo.GoUInt16>);
            for (__1 => _u in _tt._in) {
                _out = appendRune(_out, _u);
            };
            if (!stdgo._internal.reflect.Reflect.deepEqual(stdgo.Go.toInterface(_out), stdgo.Go.toInterface(_tt._out))) {
                _t.errorf(("AppendRune(%x) = %x; want %x" : stdgo.GoString), stdgo.Go.toInterface(_tt._in), stdgo.Go.toInterface(_out), stdgo.Go.toInterface(_tt._out));
            };
        };
    }
function testEncodeRune(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        for (_i => _tt in _encodeTests) {
            var _j = (0 : stdgo.GoInt);
            for (__0 => _r in _tt._in) {
                var __tmp__ = encodeRune(_r), _r1:stdgo.GoInt32 = __tmp__._0, _r2:stdgo.GoInt32 = __tmp__._1;
                if (((_r < (65536 : stdgo.GoInt32) : Bool) || (_r > (1114111 : stdgo.GoInt32) : Bool) : Bool)) {
                    if ((_j >= (_tt._out.length) : Bool)) {
                        _t.errorf(("#%d: ran out of tt.out" : stdgo.GoString), stdgo.Go.toInterface(_i));
                        break;
                    };
                    if (((_r1 != (65533 : stdgo.GoInt32)) || (_r2 != (65533 : stdgo.GoInt32)) : Bool)) {
                        _t.errorf(("EncodeRune(%#x) = %#x, %#x; want 0xfffd, 0xfffd" : stdgo.GoString), stdgo.Go.toInterface(_r), stdgo.Go.toInterface(_r1), stdgo.Go.toInterface(_r2));
                    };
                    _j++;
                } else {
                    if (((_j + (1 : stdgo.GoInt) : stdgo.GoInt) >= (_tt._out.length) : Bool)) {
                        _t.errorf(("#%d: ran out of tt.out" : stdgo.GoString), stdgo.Go.toInterface(_i));
                        break;
                    };
                    if (((_r1 != (_tt._out[(_j : stdgo.GoInt)] : stdgo.GoRune)) || (_r2 != (_tt._out[(_j + (1 : stdgo.GoInt) : stdgo.GoInt)] : stdgo.GoRune)) : Bool)) {
                        _t.errorf(("EncodeRune(%#x) = %#x, %#x; want %#x, %#x" : stdgo.GoString), stdgo.Go.toInterface(_r), stdgo.Go.toInterface(_r1), stdgo.Go.toInterface(_r2), stdgo.Go.toInterface(_tt._out[(_j : stdgo.GoInt)]), stdgo.Go.toInterface(_tt._out[(_j + (1 : stdgo.GoInt) : stdgo.GoInt)]));
                    };
                    _j = (_j + ((2 : stdgo.GoInt)) : stdgo.GoInt);
                    var _dec = (decodeRune(_r1, _r2) : stdgo.GoInt32);
                    if (_dec != (_r)) {
                        _t.errorf(("DecodeRune(%#x, %#x) = %#x; want %#x" : stdgo.GoString), stdgo.Go.toInterface(_r1), stdgo.Go.toInterface(_r2), stdgo.Go.toInterface(_dec), stdgo.Go.toInterface(_r));
                    };
                };
            };
            if (_j != ((_tt._out.length))) {
                _t.errorf(("#%d: EncodeRune didn\'t generate enough output" : stdgo.GoString), stdgo.Go.toInterface(_i));
            };
        };
    }
function testAllocationsDecode(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        stdgo._internal.internal.testenv.Testenv.skipIfOptimizationOff(stdgo.Go.asInterface(_t));
        for (__0 => _tt in _decodeTests) {
            var _allocs = (stdgo._internal.testing.Testing.allocsPerRun((10 : stdgo.GoInt), function():Void {
                var _out = decode(_tt._in);
                if (_out == null) {
                    _t.errorf(("Decode(%x) = nil" : stdgo.GoString), stdgo.Go.toInterface(_tt._in));
                };
            }) : stdgo.GoFloat64);
            if ((_allocs > (0 : stdgo.GoFloat64) : Bool)) {
                _t.errorf(("Decode allocated %v times" : stdgo.GoString), stdgo.Go.toInterface(_allocs));
            };
        };
    }
function testDecode(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        for (__0 => _tt in _decodeTests) {
            var _out = decode(_tt._in);
            if (!stdgo._internal.reflect.Reflect.deepEqual(stdgo.Go.toInterface(_out), stdgo.Go.toInterface(_tt._out))) {
                _t.errorf(("Decode(%x) = %x; want %x" : stdgo.GoString), stdgo.Go.toInterface(_tt._in), stdgo.Go.toInterface(_out), stdgo.Go.toInterface(_tt._out));
            };
        };
    }
function testDecodeRune(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        for (_i => _tt in _decodeRuneTests) {
            var _got = (decodeRune(_tt._r1, _tt._r2) : stdgo.GoInt32);
            if (_got != (_tt._want)) {
                _t.errorf(("%d: DecodeRune(%q, %q) = %v; want %v" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_tt._r1), stdgo.Go.toInterface(_tt._r2), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_tt._want));
            };
        };
    }
function testIsSurrogate(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        for (_i => _tt in _surrogateTests) {
            var _got = (isSurrogate(_tt._r) : Bool);
            if (_got != (_tt._want)) {
                _t.errorf(("%d: IsSurrogate(%q) = %v; want %v" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_tt._r), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_tt._want));
            };
        };
    }
function benchmarkDecodeValidASCII(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        var _data = (new stdgo.Slice<stdgo.GoUInt16>(11, 11, ...[
(104 : stdgo.GoUInt16),
(101 : stdgo.GoUInt16),
(108 : stdgo.GoUInt16),
(108 : stdgo.GoUInt16),
(111 : stdgo.GoUInt16),
(32 : stdgo.GoUInt16),
(119 : stdgo.GoUInt16),
(111 : stdgo.GoUInt16),
(114 : stdgo.GoUInt16),
(108 : stdgo.GoUInt16),
(100 : stdgo.GoUInt16)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt16>);
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                decode(_data);
            });
        };
    }
function benchmarkDecodeValidJapaneseChars(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        var _data = (new stdgo.Slice<stdgo.GoUInt16>(9, 9, ...[(26085 : stdgo.GoUInt16), (26412 : stdgo.GoUInt16), (35486 : stdgo.GoUInt16), (26085 : stdgo.GoUInt16), (26412 : stdgo.GoUInt16), (35486 : stdgo.GoUInt16), (26085 : stdgo.GoUInt16), (26412 : stdgo.GoUInt16), (35486 : stdgo.GoUInt16)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt16>);
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                decode(_data);
            });
        };
    }
function benchmarkDecodeRune(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        var _rs = (new stdgo.Slice<stdgo.GoInt32>((10 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
        for (_i => _u in (new stdgo.Slice<stdgo.GoInt32>(5, 5, ...[(120016 : stdgo.GoInt32), (120017 : stdgo.GoInt32), (120018 : stdgo.GoInt32), (120019 : stdgo.GoInt32), (120020 : stdgo.GoInt32)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>)) {
            {
                var __tmp__ = encodeRune(_u);
                _rs[((2 : stdgo.GoInt) * _i : stdgo.GoInt)] = __tmp__._0;
                _rs[(((2 : stdgo.GoInt) * _i : stdgo.GoInt) + (1 : stdgo.GoInt) : stdgo.GoInt)] = __tmp__._1;
            };
        };
        _b.resetTimer();
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                {
                    var _j = (0 : stdgo.GoInt);
                    stdgo.Go.cfor((_j < (5 : stdgo.GoInt) : Bool), _j++, {
                        decodeRune(_rs[((2 : stdgo.GoInt) * _j : stdgo.GoInt)], _rs[(((2 : stdgo.GoInt) * _j : stdgo.GoInt) + (1 : stdgo.GoInt) : stdgo.GoInt)]);
                    });
                };
            });
        };
    }
function benchmarkEncodeValidASCII(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        var _data = (new stdgo.Slice<stdgo.GoInt32>(5, 5, ...[(104 : stdgo.GoInt32), (101 : stdgo.GoInt32), (108 : stdgo.GoInt32), (108 : stdgo.GoInt32), (111 : stdgo.GoInt32)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                encode(_data);
            });
        };
    }
function benchmarkEncodeValidJapaneseChars(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        var _data = (new stdgo.Slice<stdgo.GoInt32>(3, 3, ...[(26085 : stdgo.GoInt32), (26412 : stdgo.GoInt32), (35486 : stdgo.GoInt32)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                encode(_data);
            });
        };
    }
function benchmarkAppendRuneValidASCII(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        var _data = (new stdgo.Slice<stdgo.GoInt32>(5, 5, ...[(104 : stdgo.GoInt32), (101 : stdgo.GoInt32), (108 : stdgo.GoInt32), (108 : stdgo.GoInt32), (111 : stdgo.GoInt32)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
        var _a = (new stdgo.Slice<stdgo.GoUInt16>((0 : stdgo.GoInt).toBasic(), ((_data.length) * (2 : stdgo.GoInt) : stdgo.GoInt)).__setNumber32__() : stdgo.Slice<stdgo.GoUInt16>);
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                for (__8 => _u in _data) {
                    _a = appendRune(_a, _u);
                };
                _a = (_a.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt16>);
            });
        };
    }
function benchmarkAppendRuneValidJapaneseChars(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        var _data = (new stdgo.Slice<stdgo.GoInt32>(3, 3, ...[(26085 : stdgo.GoInt32), (26412 : stdgo.GoInt32), (35486 : stdgo.GoInt32)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
        var _a = (new stdgo.Slice<stdgo.GoUInt16>((0 : stdgo.GoInt).toBasic(), ((_data.length) * (2 : stdgo.GoInt) : stdgo.GoInt)).__setNumber32__() : stdgo.Slice<stdgo.GoUInt16>);
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                for (__8 => _u in _data) {
                    _a = appendRune(_a, _u);
                };
                _a = (_a.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt16>);
            });
        };
    }
function benchmarkEncodeRune(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                for (__8 => _u in (new stdgo.Slice<stdgo.GoInt32>(5, 5, ...[(120016 : stdgo.GoInt32), (120017 : stdgo.GoInt32), (120018 : stdgo.GoInt32), (120019 : stdgo.GoInt32), (120020 : stdgo.GoInt32)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>)) {
                    encodeRune(_u);
                };
            });
        };
    }
