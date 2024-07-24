package stdgo._internal.math.bits_test;
import stdgo._internal.math.bits.Bits;
import stdgo._internal.math.bits.Bits;
var output : stdgo.GoInt = (0 : stdgo.GoInt);
final __M : stdgo.GoUInt64 = (4294967295i64 : stdgo.GoUInt64);
final __M32 : stdgo.GoUInt64 = (4294967295i64 : stdgo.GoUInt64);
final __M64 : stdgo.GoUInt64 = (-1i64 : stdgo.GoUInt64);
final _divZeroError : stdgo.GoString = ("runtime error: integer divide by zero" : stdgo.GoString);
final _overflowError : stdgo.GoString = ("runtime error: integer overflow" : stdgo.GoString);
var _tab : stdgo.GoArray<T_entry> = new stdgo.GoArray<T_entry>(256, 256, ...[for (i in 0 ... 256) ({ _nlz : (0 : stdgo.GoInt), _ntz : (0 : stdgo.GoInt), _pop : (0 : stdgo.GoInt) } : T_entry)]);
var input : stdgo.GoUInt64 = (285870213051353865i64 : stdgo.GoUInt64);
@:follow typedef T_entry = {
    var _nlz : stdgo.GoInt;
    var _ntz : stdgo.GoInt;
    var _pop : stdgo.GoInt;
};
class T__struct_0_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T__struct_0>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.math.bits_test.Bits_test.T__struct_0_asInterface) class T__struct_0_static_extension {

}
@:local @:using(stdgo._internal.math.bits_test.Bits_test.T__struct_0_static_extension) typedef T__struct_0 = {
    public var _x : stdgo.GoUInt64;
    public var _r : stdgo.GoUInt64;
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
@:keep @:allow(stdgo._internal.math.bits_test.Bits_test.T__struct_1_asInterface) class T__struct_1_static_extension {

}
@:local @:using(stdgo._internal.math.bits_test.Bits_test.T__struct_1_static_extension) typedef T__struct_1 = {
    public var _x : stdgo.GoUInt;
    public var _y : stdgo.GoUInt;
    public var _c : stdgo.GoUInt;
    public var _z : stdgo.GoUInt;
    public var _cout : stdgo.GoUInt;
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
@:keep @:allow(stdgo._internal.math.bits_test.Bits_test.T__struct_2_asInterface) class T__struct_2_static_extension {

}
@:local @:using(stdgo._internal.math.bits_test.Bits_test.T__struct_2_static_extension) typedef T__struct_2 = {
    public var _x : stdgo.GoUInt32;
    public var _y : stdgo.GoUInt32;
    public var _c : stdgo.GoUInt32;
    public var _z : stdgo.GoUInt32;
    public var _cout : stdgo.GoUInt32;
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
@:keep @:allow(stdgo._internal.math.bits_test.Bits_test.T__struct_3_asInterface) class T__struct_3_static_extension {

}
@:local @:using(stdgo._internal.math.bits_test.Bits_test.T__struct_3_static_extension) typedef T__struct_3 = {
    public var _x : stdgo.GoUInt64;
    public var _y : stdgo.GoUInt64;
    public var _c : stdgo.GoUInt64;
    public var _z : stdgo.GoUInt64;
    public var _cout : stdgo.GoUInt64;
};
class T__struct_4_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T__struct_4>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.math.bits_test.Bits_test.T__struct_4_asInterface) class T__struct_4_static_extension {

}
@:local @:using(stdgo._internal.math.bits_test.Bits_test.T__struct_4_static_extension) typedef T__struct_4 = {
    public var _x : stdgo.GoUInt;
    public var _y : stdgo.GoUInt;
    public var _hi : stdgo.GoUInt;
    public var _lo : stdgo.GoUInt;
    public var _r : stdgo.GoUInt;
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
@:keep @:allow(stdgo._internal.math.bits_test.Bits_test.T__struct_5_asInterface) class T__struct_5_static_extension {

}
@:local @:using(stdgo._internal.math.bits_test.Bits_test.T__struct_5_static_extension) typedef T__struct_5 = {
    public var _x : stdgo.GoUInt32;
    public var _y : stdgo.GoUInt32;
    public var _hi : stdgo.GoUInt32;
    public var _lo : stdgo.GoUInt32;
    public var _r : stdgo.GoUInt32;
};
class T__struct_6_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T__struct_6>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.math.bits_test.Bits_test.T__struct_6_asInterface) class T__struct_6_static_extension {

}
@:local @:using(stdgo._internal.math.bits_test.Bits_test.T__struct_6_static_extension) typedef T__struct_6 = {
    public var _x : stdgo.GoUInt64;
    public var _y : stdgo.GoUInt64;
    public var _hi : stdgo.GoUInt64;
    public var _lo : stdgo.GoUInt64;
    public var _r : stdgo.GoUInt64;
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
@:keep @:allow(stdgo._internal.math.bits_test.Bits_test.T__struct_7_asInterface) class T__struct_7_static_extension {

}
@:local @:using(stdgo._internal.math.bits_test.Bits_test.T__struct_7_static_extension) typedef T__struct_7 = {
    public var _hi : stdgo.GoUInt64;
    public var _lo : stdgo.GoUInt64;
    public var _y : stdgo.GoUInt64;
    public var _rem : stdgo.GoUInt64;
};
function testUintSize(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _x:stdgo.GoUInt = (0 : stdgo.GoUInt);
        {
            var _want = (32 : stdgo.GoUIntptr);
            if ((32 : stdgo.GoUIntptr) != (_want)) {
                _t.fatalf(("UintSize = %d; want %d" : stdgo.GoString), stdgo.Go.toInterface((32 : stdgo.GoInt)), stdgo.Go.toInterface(_want));
            };
        };
    }
function testLeadingZeros(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (256 : stdgo.GoInt) : Bool), _i++, {
                var _nlz = _tab[(_i : stdgo.GoInt)]._nlz;
                {
                    var _k = (0 : stdgo.GoInt);
                    stdgo.Go.cfor((_k < (56 : stdgo.GoInt) : Bool), _k++, {
                        var _x = ((_i : stdgo.GoUInt64) << (_k : stdgo.GoUInt) : stdgo.GoUInt64);
                        if ((_x <= (255i64 : stdgo.GoUInt64) : Bool)) {
                            var _got = leadingZeros8((_x : stdgo.GoUInt8));
                            var _want = ((_nlz - _k : stdgo.GoInt) + (0 : stdgo.GoInt) : stdgo.GoInt);
                            if (_x == ((0i64 : stdgo.GoUInt64))) {
                                _want = (8 : stdgo.GoInt);
                            };
                            if (_got != (_want)) {
                                _t.fatalf(("LeadingZeros8(%#02x) == %d; want %d" : stdgo.GoString), stdgo.Go.toInterface(_x), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_want));
                            };
                        };
                        if ((_x <= (65535i64 : stdgo.GoUInt64) : Bool)) {
                            var _got = leadingZeros16((_x : stdgo.GoUInt16));
                            var _want = ((_nlz - _k : stdgo.GoInt) + (8 : stdgo.GoInt) : stdgo.GoInt);
                            if (_x == ((0i64 : stdgo.GoUInt64))) {
                                _want = (16 : stdgo.GoInt);
                            };
                            if (_got != (_want)) {
                                _t.fatalf(("LeadingZeros16(%#04x) == %d; want %d" : stdgo.GoString), stdgo.Go.toInterface(_x), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_want));
                            };
                        };
                        if ((_x <= (4294967295i64 : stdgo.GoUInt64) : Bool)) {
                            var _got = leadingZeros32((_x : stdgo.GoUInt32));
                            var _want = ((_nlz - _k : stdgo.GoInt) + (24 : stdgo.GoInt) : stdgo.GoInt);
                            if (_x == ((0i64 : stdgo.GoUInt64))) {
                                _want = (32 : stdgo.GoInt);
                            };
                            if (_got != (_want)) {
                                _t.fatalf(("LeadingZeros32(%#08x) == %d; want %d" : stdgo.GoString), stdgo.Go.toInterface(_x), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_want));
                            };
                            if (true) {
                                _got = leadingZeros((_x : stdgo.GoUInt));
                                if (_got != (_want)) {
                                    _t.fatalf(("LeadingZeros(%#08x) == %d; want %d" : stdgo.GoString), stdgo.Go.toInterface(_x), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_want));
                                };
                            };
                        };
                        if ((_x <= (-1i64 : stdgo.GoUInt64) : Bool)) {
                            var _got = leadingZeros64((_x : stdgo.GoUInt64));
                            var _want = ((_nlz - _k : stdgo.GoInt) + (56 : stdgo.GoInt) : stdgo.GoInt);
                            if (_x == ((0i64 : stdgo.GoUInt64))) {
                                _want = (64 : stdgo.GoInt);
                            };
                            if (_got != (_want)) {
                                _t.fatalf(("LeadingZeros64(%#016x) == %d; want %d" : stdgo.GoString), stdgo.Go.toInterface(_x), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_want));
                            };
                            if (false) {
                                _got = leadingZeros((_x : stdgo.GoUInt));
                                if (_got != (_want)) {
                                    _t.fatalf(("LeadingZeros(%#016x) == %d; want %d" : stdgo.GoString), stdgo.Go.toInterface(_x), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_want));
                                };
                            };
                        };
                    });
                };
            });
        };
    }
function benchmarkLeadingZeros(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        var _s:stdgo.GoInt = (0 : stdgo.GoInt);
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                _s = (_s + (leadingZeros(((input : stdgo.GoUInt) >> (((_i : stdgo.GoUInt) % (32u32 : stdgo.GoUInt) : stdgo.GoUInt)) : stdgo.GoUInt))) : stdgo.GoInt);
            });
        };
        output = _s;
    }
function benchmarkLeadingZeros8(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        var _s:stdgo.GoInt = (0 : stdgo.GoInt);
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                _s = (_s + (leadingZeros8(((input : stdgo.GoUInt8) >> (((_i : stdgo.GoUInt) % (8u32 : stdgo.GoUInt) : stdgo.GoUInt)) : stdgo.GoUInt8))) : stdgo.GoInt);
            });
        };
        output = _s;
    }
function benchmarkLeadingZeros16(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        var _s:stdgo.GoInt = (0 : stdgo.GoInt);
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                _s = (_s + (leadingZeros16(((input : stdgo.GoUInt16) >> (((_i : stdgo.GoUInt) % (16u32 : stdgo.GoUInt) : stdgo.GoUInt)) : stdgo.GoUInt16))) : stdgo.GoInt);
            });
        };
        output = _s;
    }
function benchmarkLeadingZeros32(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        var _s:stdgo.GoInt = (0 : stdgo.GoInt);
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                _s = (_s + (leadingZeros32(((input : stdgo.GoUInt32) >> (((_i : stdgo.GoUInt) % (32u32 : stdgo.GoUInt) : stdgo.GoUInt)) : stdgo.GoUInt32))) : stdgo.GoInt);
            });
        };
        output = _s;
    }
function benchmarkLeadingZeros64(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        var _s:stdgo.GoInt = (0 : stdgo.GoInt);
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                _s = (_s + (leadingZeros64(((input : stdgo.GoUInt64) >> (((_i : stdgo.GoUInt) % (64u32 : stdgo.GoUInt) : stdgo.GoUInt)) : stdgo.GoUInt64))) : stdgo.GoInt);
            });
        };
        output = _s;
    }
function testTrailingZeros(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (256 : stdgo.GoInt) : Bool), _i++, {
                var _ntz = _tab[(_i : stdgo.GoInt)]._ntz;
                {
                    var _k = (0 : stdgo.GoInt);
                    stdgo.Go.cfor((_k < (56 : stdgo.GoInt) : Bool), _k++, {
                        var _x = ((_i : stdgo.GoUInt64) << (_k : stdgo.GoUInt) : stdgo.GoUInt64);
                        var _want = (_ntz + _k : stdgo.GoInt);
                        if ((_x <= (255i64 : stdgo.GoUInt64) : Bool)) {
                            var _got = trailingZeros8((_x : stdgo.GoUInt8));
                            if (_x == ((0i64 : stdgo.GoUInt64))) {
                                _want = (8 : stdgo.GoInt);
                            };
                            if (_got != (_want)) {
                                _t.fatalf(("TrailingZeros8(%#02x) == %d; want %d" : stdgo.GoString), stdgo.Go.toInterface(_x), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_want));
                            };
                        };
                        if ((_x <= (65535i64 : stdgo.GoUInt64) : Bool)) {
                            var _got = trailingZeros16((_x : stdgo.GoUInt16));
                            if (_x == ((0i64 : stdgo.GoUInt64))) {
                                _want = (16 : stdgo.GoInt);
                            };
                            if (_got != (_want)) {
                                _t.fatalf(("TrailingZeros16(%#04x) == %d; want %d" : stdgo.GoString), stdgo.Go.toInterface(_x), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_want));
                            };
                        };
                        if ((_x <= (4294967295i64 : stdgo.GoUInt64) : Bool)) {
                            var _got = trailingZeros32((_x : stdgo.GoUInt32));
                            if (_x == ((0i64 : stdgo.GoUInt64))) {
                                _want = (32 : stdgo.GoInt);
                            };
                            if (_got != (_want)) {
                                _t.fatalf(("TrailingZeros32(%#08x) == %d; want %d" : stdgo.GoString), stdgo.Go.toInterface(_x), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_want));
                            };
                            if (true) {
                                _got = trailingZeros((_x : stdgo.GoUInt));
                                if (_got != (_want)) {
                                    _t.fatalf(("TrailingZeros(%#08x) == %d; want %d" : stdgo.GoString), stdgo.Go.toInterface(_x), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_want));
                                };
                            };
                        };
                        if ((_x <= (-1i64 : stdgo.GoUInt64) : Bool)) {
                            var _got = trailingZeros64((_x : stdgo.GoUInt64));
                            if (_x == ((0i64 : stdgo.GoUInt64))) {
                                _want = (64 : stdgo.GoInt);
                            };
                            if (_got != (_want)) {
                                _t.fatalf(("TrailingZeros64(%#016x) == %d; want %d" : stdgo.GoString), stdgo.Go.toInterface(_x), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_want));
                            };
                            if (false) {
                                _got = trailingZeros((_x : stdgo.GoUInt));
                                if (_got != (_want)) {
                                    _t.fatalf(("TrailingZeros(%#016x) == %d; want %d" : stdgo.GoString), stdgo.Go.toInterface(_x), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_want));
                                };
                            };
                        };
                    });
                };
            });
        };
    }
function benchmarkTrailingZeros(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        var _s:stdgo.GoInt = (0 : stdgo.GoInt);
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                _s = (_s + (trailingZeros(((input : stdgo.GoUInt) << (((_i : stdgo.GoUInt) % (32u32 : stdgo.GoUInt) : stdgo.GoUInt)) : stdgo.GoUInt))) : stdgo.GoInt);
            });
        };
        output = _s;
    }
function benchmarkTrailingZeros8(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        var _s:stdgo.GoInt = (0 : stdgo.GoInt);
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                _s = (_s + (trailingZeros8(((input : stdgo.GoUInt8) << (((_i : stdgo.GoUInt) % (8u32 : stdgo.GoUInt) : stdgo.GoUInt)) : stdgo.GoUInt8))) : stdgo.GoInt);
            });
        };
        output = _s;
    }
function benchmarkTrailingZeros16(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        var _s:stdgo.GoInt = (0 : stdgo.GoInt);
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                _s = (_s + (trailingZeros16(((input : stdgo.GoUInt16) << (((_i : stdgo.GoUInt) % (16u32 : stdgo.GoUInt) : stdgo.GoUInt)) : stdgo.GoUInt16))) : stdgo.GoInt);
            });
        };
        output = _s;
    }
function benchmarkTrailingZeros32(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        var _s:stdgo.GoInt = (0 : stdgo.GoInt);
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                _s = (_s + (trailingZeros32(((input : stdgo.GoUInt32) << (((_i : stdgo.GoUInt) % (32u32 : stdgo.GoUInt) : stdgo.GoUInt)) : stdgo.GoUInt32))) : stdgo.GoInt);
            });
        };
        output = _s;
    }
function benchmarkTrailingZeros64(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        var _s:stdgo.GoInt = (0 : stdgo.GoInt);
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                _s = (_s + (trailingZeros64(((input : stdgo.GoUInt64) << (((_i : stdgo.GoUInt) % (64u32 : stdgo.GoUInt) : stdgo.GoUInt)) : stdgo.GoUInt64))) : stdgo.GoInt);
            });
        };
        output = _s;
    }
function testOnesCount(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _x:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i <= (64 : stdgo.GoInt) : Bool), _i++, {
                _testOnesCount(_t, _x, _i);
                _x = ((_x << (1i64 : stdgo.GoUInt64) : stdgo.GoUInt64) | (1i64 : stdgo.GoUInt64) : stdgo.GoUInt64);
            });
        };
        {
            var _i = (64 : stdgo.GoInt);
            stdgo.Go.cfor((_i >= (0 : stdgo.GoInt) : Bool), _i--, {
                _testOnesCount(_t, _x, _i);
                _x = (_x << (1i64 : stdgo.GoUInt64) : stdgo.GoUInt64);
            });
        };
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (256 : stdgo.GoInt) : Bool), _i++, {
                {
                    var _k = (0 : stdgo.GoInt);
                    stdgo.Go.cfor((_k < (56 : stdgo.GoInt) : Bool), _k++, {
                        _testOnesCount(_t, ((_i : stdgo.GoUInt64) << (_k : stdgo.GoUInt) : stdgo.GoUInt64), _tab[(_i : stdgo.GoInt)]._pop);
                    });
                };
            });
        };
    }
function _testOnesCount(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>, _x:stdgo.GoUInt64, _want:stdgo.GoInt):Void {
        if ((_x <= (255i64 : stdgo.GoUInt64) : Bool)) {
            var _got = onesCount8((_x : stdgo.GoUInt8));
            if (_got != (_want)) {
                _t.fatalf(("OnesCount8(%#02x) == %d; want %d" : stdgo.GoString), stdgo.Go.toInterface((_x : stdgo.GoUInt8)), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_want));
            };
        };
        if ((_x <= (65535i64 : stdgo.GoUInt64) : Bool)) {
            var _got = onesCount16((_x : stdgo.GoUInt16));
            if (_got != (_want)) {
                _t.fatalf(("OnesCount16(%#04x) == %d; want %d" : stdgo.GoString), stdgo.Go.toInterface((_x : stdgo.GoUInt16)), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_want));
            };
        };
        if ((_x <= (4294967295i64 : stdgo.GoUInt64) : Bool)) {
            var _got = onesCount32((_x : stdgo.GoUInt32));
            if (_got != (_want)) {
                _t.fatalf(("OnesCount32(%#08x) == %d; want %d" : stdgo.GoString), stdgo.Go.toInterface((_x : stdgo.GoUInt32)), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_want));
            };
            if (true) {
                _got = onesCount((_x : stdgo.GoUInt));
                if (_got != (_want)) {
                    _t.fatalf(("OnesCount(%#08x) == %d; want %d" : stdgo.GoString), stdgo.Go.toInterface((_x : stdgo.GoUInt32)), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_want));
                };
            };
        };
        if ((_x <= (-1i64 : stdgo.GoUInt64) : Bool)) {
            var _got = onesCount64((_x : stdgo.GoUInt64));
            if (_got != (_want)) {
                _t.fatalf(("OnesCount64(%#016x) == %d; want %d" : stdgo.GoString), stdgo.Go.toInterface(_x), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_want));
            };
            if (false) {
                _got = onesCount((_x : stdgo.GoUInt));
                if (_got != (_want)) {
                    _t.fatalf(("OnesCount(%#016x) == %d; want %d" : stdgo.GoString), stdgo.Go.toInterface(_x), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_want));
                };
            };
        };
    }
function benchmarkOnesCount(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        var _s:stdgo.GoInt = (0 : stdgo.GoInt);
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                _s = (_s + (onesCount((input : stdgo.GoUInt))) : stdgo.GoInt);
            });
        };
        output = _s;
    }
function benchmarkOnesCount8(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        var _s:stdgo.GoInt = (0 : stdgo.GoInt);
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                _s = (_s + (onesCount8((input : stdgo.GoUInt8))) : stdgo.GoInt);
            });
        };
        output = _s;
    }
function benchmarkOnesCount16(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        var _s:stdgo.GoInt = (0 : stdgo.GoInt);
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                _s = (_s + (onesCount16((input : stdgo.GoUInt16))) : stdgo.GoInt);
            });
        };
        output = _s;
    }
function benchmarkOnesCount32(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        var _s:stdgo.GoInt = (0 : stdgo.GoInt);
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                _s = (_s + (onesCount32((input : stdgo.GoUInt32))) : stdgo.GoInt);
            });
        };
        output = _s;
    }
function benchmarkOnesCount64(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        var _s:stdgo.GoInt = (0 : stdgo.GoInt);
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                _s = (_s + (onesCount64((input : stdgo.GoUInt64))) : stdgo.GoInt);
            });
        };
        output = _s;
    }
function testRotateLeft(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _m:stdgo.GoUInt64 = (285870213051353865i64 : stdgo.GoUInt64);
        {
            var _k = (0u32 : stdgo.GoUInt);
            stdgo.Go.cfor((_k < (128u32 : stdgo.GoUInt) : Bool), _k++, {
                var _x8 = (_m : stdgo.GoUInt8);
                var _got8 = rotateLeft8(_x8, (_k : stdgo.GoInt));
                var _want8 = ((_x8 << ((_k & (7u32 : stdgo.GoUInt) : stdgo.GoUInt)) : stdgo.GoUInt8) | (_x8 >> (((8u32 : stdgo.GoUInt) - (_k & (7u32 : stdgo.GoUInt) : stdgo.GoUInt) : stdgo.GoUInt)) : stdgo.GoUInt8) : stdgo.GoUInt8);
                if (_got8 != (_want8)) {
                    _t.fatalf(("RotateLeft8(%#02x, %d) == %#02x; want %#02x" : stdgo.GoString), stdgo.Go.toInterface(_x8), stdgo.Go.toInterface(_k), stdgo.Go.toInterface(_got8), stdgo.Go.toInterface(_want8));
                };
                _got8 = rotateLeft8(_want8, -(_k : stdgo.GoInt));
                if (_got8 != (_x8)) {
                    _t.fatalf(("RotateLeft8(%#02x, -%d) == %#02x; want %#02x" : stdgo.GoString), stdgo.Go.toInterface(_want8), stdgo.Go.toInterface(_k), stdgo.Go.toInterface(_got8), stdgo.Go.toInterface(_x8));
                };
                var _x16 = (_m : stdgo.GoUInt16);
                var _got16 = rotateLeft16(_x16, (_k : stdgo.GoInt));
                var _want16 = ((_x16 << ((_k & (15u32 : stdgo.GoUInt) : stdgo.GoUInt)) : stdgo.GoUInt16) | (_x16 >> (((16u32 : stdgo.GoUInt) - (_k & (15u32 : stdgo.GoUInt) : stdgo.GoUInt) : stdgo.GoUInt)) : stdgo.GoUInt16) : stdgo.GoUInt16);
                if (_got16 != (_want16)) {
                    _t.fatalf(("RotateLeft16(%#04x, %d) == %#04x; want %#04x" : stdgo.GoString), stdgo.Go.toInterface(_x16), stdgo.Go.toInterface(_k), stdgo.Go.toInterface(_got16), stdgo.Go.toInterface(_want16));
                };
                _got16 = rotateLeft16(_want16, -(_k : stdgo.GoInt));
                if (_got16 != (_x16)) {
                    _t.fatalf(("RotateLeft16(%#04x, -%d) == %#04x; want %#04x" : stdgo.GoString), stdgo.Go.toInterface(_want16), stdgo.Go.toInterface(_k), stdgo.Go.toInterface(_got16), stdgo.Go.toInterface(_x16));
                };
                var _x32 = (_m : stdgo.GoUInt32);
                var _got32 = rotateLeft32(_x32, (_k : stdgo.GoInt));
                var _want32 = ((_x32 << ((_k & (31u32 : stdgo.GoUInt) : stdgo.GoUInt)) : stdgo.GoUInt32) | (_x32 >> (((32u32 : stdgo.GoUInt) - (_k & (31u32 : stdgo.GoUInt) : stdgo.GoUInt) : stdgo.GoUInt)) : stdgo.GoUInt32) : stdgo.GoUInt32);
                if (_got32 != (_want32)) {
                    _t.fatalf(("RotateLeft32(%#08x, %d) == %#08x; want %#08x" : stdgo.GoString), stdgo.Go.toInterface(_x32), stdgo.Go.toInterface(_k), stdgo.Go.toInterface(_got32), stdgo.Go.toInterface(_want32));
                };
                _got32 = rotateLeft32(_want32, -(_k : stdgo.GoInt));
                if (_got32 != (_x32)) {
                    _t.fatalf(("RotateLeft32(%#08x, -%d) == %#08x; want %#08x" : stdgo.GoString), stdgo.Go.toInterface(_want32), stdgo.Go.toInterface(_k), stdgo.Go.toInterface(_got32), stdgo.Go.toInterface(_x32));
                };
                if (true) {
                    var _x = (_m : stdgo.GoUInt);
                    var _got = rotateLeft(_x, (_k : stdgo.GoInt));
                    var _want = ((_x << ((_k & (31u32 : stdgo.GoUInt) : stdgo.GoUInt)) : stdgo.GoUInt) | (_x >> (((32u32 : stdgo.GoUInt) - (_k & (31u32 : stdgo.GoUInt) : stdgo.GoUInt) : stdgo.GoUInt)) : stdgo.GoUInt) : stdgo.GoUInt);
                    if (_got != (_want)) {
                        _t.fatalf(("RotateLeft(%#08x, %d) == %#08x; want %#08x" : stdgo.GoString), stdgo.Go.toInterface(_x), stdgo.Go.toInterface(_k), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_want));
                    };
                    _got = rotateLeft(_want, -(_k : stdgo.GoInt));
                    if (_got != (_x)) {
                        _t.fatalf(("RotateLeft(%#08x, -%d) == %#08x; want %#08x" : stdgo.GoString), stdgo.Go.toInterface(_want), stdgo.Go.toInterface(_k), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_x));
                    };
                };
                var _x64 = (_m : stdgo.GoUInt64);
                var _got64 = rotateLeft64(_x64, (_k : stdgo.GoInt));
                var _want64 = ((_x64 << ((_k & (63u32 : stdgo.GoUInt) : stdgo.GoUInt)) : stdgo.GoUInt64) | (_x64 >> (((64u32 : stdgo.GoUInt) - (_k & (63u32 : stdgo.GoUInt) : stdgo.GoUInt) : stdgo.GoUInt)) : stdgo.GoUInt64) : stdgo.GoUInt64);
                if (_got64 != (_want64)) {
                    _t.fatalf(("RotateLeft64(%#016x, %d) == %#016x; want %#016x" : stdgo.GoString), stdgo.Go.toInterface(_x64), stdgo.Go.toInterface(_k), stdgo.Go.toInterface(_got64), stdgo.Go.toInterface(_want64));
                };
                _got64 = rotateLeft64(_want64, -(_k : stdgo.GoInt));
                if (_got64 != (_x64)) {
                    _t.fatalf(("RotateLeft64(%#016x, -%d) == %#016x; want %#016x" : stdgo.GoString), stdgo.Go.toInterface(_want64), stdgo.Go.toInterface(_k), stdgo.Go.toInterface(_got64), stdgo.Go.toInterface(_x64));
                };
                if (false) {
                    var _x = (_m : stdgo.GoUInt);
                    var _got = rotateLeft(_x, (_k : stdgo.GoInt));
                    var _want = ((_x << ((_k & (63u32 : stdgo.GoUInt) : stdgo.GoUInt)) : stdgo.GoUInt) | (_x >> (((64u32 : stdgo.GoUInt) - (_k & (63u32 : stdgo.GoUInt) : stdgo.GoUInt) : stdgo.GoUInt)) : stdgo.GoUInt) : stdgo.GoUInt);
                    if (_got != (_want)) {
                        _t.fatalf(("RotateLeft(%#016x, %d) == %#016x; want %#016x" : stdgo.GoString), stdgo.Go.toInterface(_x), stdgo.Go.toInterface(_k), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_want));
                    };
                    _got = rotateLeft(_want, -(_k : stdgo.GoInt));
                    if (_got != (_x)) {
                        _t.fatalf(("RotateLeft(%#08x, -%d) == %#08x; want %#08x" : stdgo.GoString), stdgo.Go.toInterface(_want), stdgo.Go.toInterface(_k), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_x));
                    };
                };
            });
        };
    }
function benchmarkRotateLeft(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        var _s:stdgo.GoUInt = (0 : stdgo.GoUInt);
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                _s = (_s + (rotateLeft((input : stdgo.GoUInt), _i)) : stdgo.GoUInt);
            });
        };
        output = (_s : stdgo.GoInt);
    }
function benchmarkRotateLeft8(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        var _s:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                _s = (_s + (rotateLeft8((input : stdgo.GoUInt8), _i)) : stdgo.GoUInt8);
            });
        };
        output = (_s : stdgo.GoInt);
    }
function benchmarkRotateLeft16(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        var _s:stdgo.GoUInt16 = (0 : stdgo.GoUInt16);
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                _s = (_s + (rotateLeft16((input : stdgo.GoUInt16), _i)) : stdgo.GoUInt16);
            });
        };
        output = (_s : stdgo.GoInt);
    }
function benchmarkRotateLeft32(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        var _s:stdgo.GoUInt32 = (0 : stdgo.GoUInt32);
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                _s = (_s + (rotateLeft32((input : stdgo.GoUInt32), _i)) : stdgo.GoUInt32);
            });
        };
        output = (_s : stdgo.GoInt);
    }
function benchmarkRotateLeft64(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        var _s:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                _s = (_s + (rotateLeft64((input : stdgo.GoUInt64), _i)) : stdgo.GoUInt64);
            });
        };
        output = (_s : stdgo.GoInt);
    }
function testReverse(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        {
            var _i = (0u32 : stdgo.GoUInt);
            stdgo.Go.cfor((_i < (64u32 : stdgo.GoUInt) : Bool), _i++, {
                _testReverse(_t, ((1i64 : stdgo.GoUInt64) << _i : stdgo.GoUInt64), ((1i64 : stdgo.GoUInt64) << (((63u32 : stdgo.GoUInt) - _i : stdgo.GoUInt)) : stdgo.GoUInt64));
            });
        };
        for (__0 => _test in (new stdgo.Slice<T__struct_0>(18, 18, ...[
({ _x : (0i64 : stdgo.GoUInt64), _r : (0i64 : stdgo.GoUInt64) } : T__struct_0),
({ _x : (1i64 : stdgo.GoUInt64), _r : (-9223372036854775808i64 : stdgo.GoUInt64) } : T__struct_0),
({ _x : (2i64 : stdgo.GoUInt64), _r : (4611686018427387904i64 : stdgo.GoUInt64) } : T__struct_0),
({ _x : (3i64 : stdgo.GoUInt64), _r : (-4611686018427387904i64 : stdgo.GoUInt64) } : T__struct_0),
({ _x : (4i64 : stdgo.GoUInt64), _r : (2305843009213693952i64 : stdgo.GoUInt64) } : T__struct_0),
({ _x : (5i64 : stdgo.GoUInt64), _r : (-6917529027641081856i64 : stdgo.GoUInt64) } : T__struct_0),
({ _x : (6i64 : stdgo.GoUInt64), _r : (6917529027641081856i64 : stdgo.GoUInt64) } : T__struct_0),
({ _x : (7i64 : stdgo.GoUInt64), _r : (-2305843009213693952i64 : stdgo.GoUInt64) } : T__struct_0),
({ _x : (8i64 : stdgo.GoUInt64), _r : (1152921504606846976i64 : stdgo.GoUInt64) } : T__struct_0),
({ _x : (9i64 : stdgo.GoUInt64), _r : (-8070450532247928832i64 : stdgo.GoUInt64) } : T__struct_0),
({ _x : (10i64 : stdgo.GoUInt64), _r : (5764607523034234880i64 : stdgo.GoUInt64) } : T__struct_0),
({ _x : (11i64 : stdgo.GoUInt64), _r : (-3458764513820540928i64 : stdgo.GoUInt64) } : T__struct_0),
({ _x : (12i64 : stdgo.GoUInt64), _r : (3458764513820540928i64 : stdgo.GoUInt64) } : T__struct_0),
({ _x : (13i64 : stdgo.GoUInt64), _r : (-5764607523034234880i64 : stdgo.GoUInt64) } : T__struct_0),
({ _x : (14i64 : stdgo.GoUInt64), _r : (8070450532247928832i64 : stdgo.GoUInt64) } : T__struct_0),
({ _x : (15i64 : stdgo.GoUInt64), _r : (-1152921504606846976i64 : stdgo.GoUInt64) } : T__struct_0),
({ _x : (90727559i64 : stdgo.GoUInt64), _r : (-2223064489610182656i64 : stdgo.GoUInt64) } : T__struct_0),
({ _x : (81985529216486895i64 : stdgo.GoUInt64), _r : (-597899502893742976i64 : stdgo.GoUInt64) } : T__struct_0)].concat([for (i in 18 ... (18 > 18 ? 18 : 18 : stdgo.GoInt).toBasic()) ({ _x : (0 : stdgo.GoUInt64), _r : (0 : stdgo.GoUInt64) } : T__struct_0)])) : stdgo.Slice<T__struct_0>)) {
            _testReverse(_t, _test._x, _test._r);
            _testReverse(_t, _test._r, _test._x);
        };
    }
function _testReverse(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>, _x64:stdgo.GoUInt64, _want64:stdgo.GoUInt64):Void {
        var _x8 = (_x64 : stdgo.GoUInt8);
        var _got8 = reverse8(_x8);
        var _want8 = ((_want64 >> (56i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt8);
        if (_got8 != (_want8)) {
            _t.fatalf(("Reverse8(%#02x) == %#02x; want %#02x" : stdgo.GoString), stdgo.Go.toInterface(_x8), stdgo.Go.toInterface(_got8), stdgo.Go.toInterface(_want8));
        };
        var _x16 = (_x64 : stdgo.GoUInt16);
        var _got16 = reverse16(_x16);
        var _want16 = ((_want64 >> (48i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt16);
        if (_got16 != (_want16)) {
            _t.fatalf(("Reverse16(%#04x) == %#04x; want %#04x" : stdgo.GoString), stdgo.Go.toInterface(_x16), stdgo.Go.toInterface(_got16), stdgo.Go.toInterface(_want16));
        };
        var _x32 = (_x64 : stdgo.GoUInt32);
        var _got32 = reverse32(_x32);
        var _want32 = ((_want64 >> (32i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt32);
        if (_got32 != (_want32)) {
            _t.fatalf(("Reverse32(%#08x) == %#08x; want %#08x" : stdgo.GoString), stdgo.Go.toInterface(_x32), stdgo.Go.toInterface(_got32), stdgo.Go.toInterface(_want32));
        };
        if (true) {
            var _x = (_x32 : stdgo.GoUInt);
            var _got = reverse(_x);
            var _want = (_want32 : stdgo.GoUInt);
            if (_got != (_want)) {
                _t.fatalf(("Reverse(%#08x) == %#08x; want %#08x" : stdgo.GoString), stdgo.Go.toInterface(_x), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_want));
            };
        };
        var _got64 = reverse64(_x64);
        if (_got64 != (_want64)) {
            _t.fatalf(("Reverse64(%#016x) == %#016x; want %#016x" : stdgo.GoString), stdgo.Go.toInterface(_x64), stdgo.Go.toInterface(_got64), stdgo.Go.toInterface(_want64));
        };
        if (false) {
            var _x = (_x64 : stdgo.GoUInt);
            var _got = reverse(_x);
            var _want = (_want64 : stdgo.GoUInt);
            if (_got != (_want)) {
                _t.fatalf(("Reverse(%#08x) == %#016x; want %#016x" : stdgo.GoString), stdgo.Go.toInterface(_x), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_want));
            };
        };
    }
function benchmarkReverse(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        var _s:stdgo.GoUInt = (0 : stdgo.GoUInt);
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                _s = (_s + (reverse((_i : stdgo.GoUInt))) : stdgo.GoUInt);
            });
        };
        output = (_s : stdgo.GoInt);
    }
function benchmarkReverse8(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        var _s:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                _s = (_s + (reverse8((_i : stdgo.GoUInt8))) : stdgo.GoUInt8);
            });
        };
        output = (_s : stdgo.GoInt);
    }
function benchmarkReverse16(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        var _s:stdgo.GoUInt16 = (0 : stdgo.GoUInt16);
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                _s = (_s + (reverse16((_i : stdgo.GoUInt16))) : stdgo.GoUInt16);
            });
        };
        output = (_s : stdgo.GoInt);
    }
function benchmarkReverse32(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        var _s:stdgo.GoUInt32 = (0 : stdgo.GoUInt32);
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                _s = (_s + (reverse32((_i : stdgo.GoUInt32))) : stdgo.GoUInt32);
            });
        };
        output = (_s : stdgo.GoInt);
    }
function benchmarkReverse64(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        var _s:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                _s = (_s + (reverse64((_i : stdgo.GoUInt64))) : stdgo.GoUInt64);
            });
        };
        output = (_s : stdgo.GoInt);
    }
function testReverseBytes(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        for (__0 => _test in (new stdgo.Slice<T__struct_0>(9, 9, ...[({ _x : (0i64 : stdgo.GoUInt64), _r : (0i64 : stdgo.GoUInt64) } : T__struct_0), ({ _x : (1i64 : stdgo.GoUInt64), _r : (72057594037927936i64 : stdgo.GoUInt64) } : T__struct_0), ({ _x : (291i64 : stdgo.GoUInt64), _r : (2522297266304188416i64 : stdgo.GoUInt64) } : T__struct_0), ({ _x : (74565i64 : stdgo.GoUInt64), _r : (4981826712313528320i64 : stdgo.GoUInt64) } : T__struct_0), ({ _x : (19088743i64 : stdgo.GoUInt64), _r : (7441392446501552128i64 : stdgo.GoUInt64) } : T__struct_0), ({ _x : (4886718345i64 : stdgo.GoUInt64), _r : (-8545785751269277696i64 : stdgo.GoUInt64) } : T__struct_0), ({ _x : (1250999896491i64 : stdgo.GoUInt64), _r : (-6086219874776842240i64 : stdgo.GoUInt64) } : T__struct_0), ({ _x : (320255973501901i64 : stdgo.GoUInt64), _r : (-3626653998282243840i64 : stdgo.GoUInt64) } : T__struct_0), ({ _x : (81985529216486895i64 : stdgo.GoUInt64), _r : (-1167088121787636991i64 : stdgo.GoUInt64) } : T__struct_0)].concat([for (i in 9 ... (9 > 9 ? 9 : 9 : stdgo.GoInt).toBasic()) ({ _x : (0 : stdgo.GoUInt64), _r : (0 : stdgo.GoUInt64) } : T__struct_0)])) : stdgo.Slice<T__struct_0>)) {
            _testReverseBytes(_t, _test._x, _test._r);
            _testReverseBytes(_t, _test._r, _test._x);
        };
    }
function _testReverseBytes(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>, _x64:stdgo.GoUInt64, _want64:stdgo.GoUInt64):Void {
        var _x16 = (_x64 : stdgo.GoUInt16);
        var _got16 = reverseBytes16(_x16);
        var _want16 = ((_want64 >> (48i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt16);
        if (_got16 != (_want16)) {
            _t.fatalf(("ReverseBytes16(%#04x) == %#04x; want %#04x" : stdgo.GoString), stdgo.Go.toInterface(_x16), stdgo.Go.toInterface(_got16), stdgo.Go.toInterface(_want16));
        };
        var _x32 = (_x64 : stdgo.GoUInt32);
        var _got32 = reverseBytes32(_x32);
        var _want32 = ((_want64 >> (32i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt32);
        if (_got32 != (_want32)) {
            _t.fatalf(("ReverseBytes32(%#08x) == %#08x; want %#08x" : stdgo.GoString), stdgo.Go.toInterface(_x32), stdgo.Go.toInterface(_got32), stdgo.Go.toInterface(_want32));
        };
        if (true) {
            var _x = (_x32 : stdgo.GoUInt);
            var _got = reverseBytes(_x);
            var _want = (_want32 : stdgo.GoUInt);
            if (_got != (_want)) {
                _t.fatalf(("ReverseBytes(%#08x) == %#08x; want %#08x" : stdgo.GoString), stdgo.Go.toInterface(_x), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_want));
            };
        };
        var _got64 = reverseBytes64(_x64);
        if (_got64 != (_want64)) {
            _t.fatalf(("ReverseBytes64(%#016x) == %#016x; want %#016x" : stdgo.GoString), stdgo.Go.toInterface(_x64), stdgo.Go.toInterface(_got64), stdgo.Go.toInterface(_want64));
        };
        if (false) {
            var _x = (_x64 : stdgo.GoUInt);
            var _got = reverseBytes(_x);
            var _want = (_want64 : stdgo.GoUInt);
            if (_got != (_want)) {
                _t.fatalf(("ReverseBytes(%#016x) == %#016x; want %#016x" : stdgo.GoString), stdgo.Go.toInterface(_x), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_want));
            };
        };
    }
function benchmarkReverseBytes(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        var _s:stdgo.GoUInt = (0 : stdgo.GoUInt);
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                _s = (_s + (reverseBytes((_i : stdgo.GoUInt))) : stdgo.GoUInt);
            });
        };
        output = (_s : stdgo.GoInt);
    }
function benchmarkReverseBytes16(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        var _s:stdgo.GoUInt16 = (0 : stdgo.GoUInt16);
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                _s = (_s + (reverseBytes16((_i : stdgo.GoUInt16))) : stdgo.GoUInt16);
            });
        };
        output = (_s : stdgo.GoInt);
    }
function benchmarkReverseBytes32(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        var _s:stdgo.GoUInt32 = (0 : stdgo.GoUInt32);
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                _s = (_s + (reverseBytes32((_i : stdgo.GoUInt32))) : stdgo.GoUInt32);
            });
        };
        output = (_s : stdgo.GoInt);
    }
function benchmarkReverseBytes64(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        var _s:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                _s = (_s + (reverseBytes64((_i : stdgo.GoUInt64))) : stdgo.GoUInt64);
            });
        };
        output = (_s : stdgo.GoInt);
    }
function testLen(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (256 : stdgo.GoInt) : Bool), _i++, {
                var _len = ((8 : stdgo.GoInt) - _tab[(_i : stdgo.GoInt)]._nlz : stdgo.GoInt);
                {
                    var _k = (0 : stdgo.GoInt);
                    stdgo.Go.cfor((_k < (56 : stdgo.GoInt) : Bool), _k++, {
                        var _x = ((_i : stdgo.GoUInt64) << (_k : stdgo.GoUInt) : stdgo.GoUInt64);
                        var _want = (0 : stdgo.GoInt);
                        if (_x != ((0i64 : stdgo.GoUInt64))) {
                            _want = (_len + _k : stdgo.GoInt);
                        };
                        if ((_x <= (255i64 : stdgo.GoUInt64) : Bool)) {
                            var _got = len8((_x : stdgo.GoUInt8));
                            if (_got != (_want)) {
                                _t.fatalf(("Len8(%#02x) == %d; want %d" : stdgo.GoString), stdgo.Go.toInterface(_x), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_want));
                            };
                        };
                        if ((_x <= (65535i64 : stdgo.GoUInt64) : Bool)) {
                            var _got = len16((_x : stdgo.GoUInt16));
                            if (_got != (_want)) {
                                _t.fatalf(("Len16(%#04x) == %d; want %d" : stdgo.GoString), stdgo.Go.toInterface(_x), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_want));
                            };
                        };
                        if ((_x <= (4294967295i64 : stdgo.GoUInt64) : Bool)) {
                            var _got = len32((_x : stdgo.GoUInt32));
                            if (_got != (_want)) {
                                _t.fatalf(("Len32(%#08x) == %d; want %d" : stdgo.GoString), stdgo.Go.toInterface(_x), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_want));
                            };
                            if (true) {
                                var _got = len((_x : stdgo.GoUInt));
                                if (_got != (_want)) {
                                    _t.fatalf(("Len(%#08x) == %d; want %d" : stdgo.GoString), stdgo.Go.toInterface(_x), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_want));
                                };
                            };
                        };
                        if ((_x <= (-1i64 : stdgo.GoUInt64) : Bool)) {
                            var _got = len64((_x : stdgo.GoUInt64));
                            if (_got != (_want)) {
                                _t.fatalf(("Len64(%#016x) == %d; want %d" : stdgo.GoString), stdgo.Go.toInterface(_x), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_want));
                            };
                            if (false) {
                                var _got = len((_x : stdgo.GoUInt));
                                if (_got != (_want)) {
                                    _t.fatalf(("Len(%#016x) == %d; want %d" : stdgo.GoString), stdgo.Go.toInterface(_x), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_want));
                                };
                            };
                        };
                    });
                };
            });
        };
    }
function testAddSubUint(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _test = function(_msg:stdgo.GoString, _f:(_x:stdgo.GoUInt, _y:stdgo.GoUInt, _c:stdgo.GoUInt) -> { var _0 : stdgo.GoUInt; var _1 : stdgo.GoUInt; }, _x:stdgo.GoUInt, _y:stdgo.GoUInt, _c:stdgo.GoUInt, _z:stdgo.GoUInt, _cout:stdgo.GoUInt):Void {
            var __tmp__ = _f(_x, _y, _c), _z1:stdgo.GoUInt = __tmp__._0, _cout1:stdgo.GoUInt = __tmp__._1;
            if (((_z1 != _z) || (_cout1 != _cout) : Bool)) {
                _t.errorf(("%s: got z:cout = %#x:%#x; want %#x:%#x" : stdgo.GoString), stdgo.Go.toInterface(_msg), stdgo.Go.toInterface(_z1), stdgo.Go.toInterface(_cout1), stdgo.Go.toInterface(_z), stdgo.Go.toInterface(_cout));
            };
        };
        for (__0 => _a in (new stdgo.Slice<T__struct_1>(11, 11, ...[
({ _x : (0u32 : stdgo.GoUInt), _y : (0u32 : stdgo.GoUInt), _c : (0u32 : stdgo.GoUInt), _z : (0u32 : stdgo.GoUInt), _cout : (0u32 : stdgo.GoUInt) } : T__struct_1),
({ _x : (0u32 : stdgo.GoUInt), _y : (1u32 : stdgo.GoUInt), _c : (0u32 : stdgo.GoUInt), _z : (1u32 : stdgo.GoUInt), _cout : (0u32 : stdgo.GoUInt) } : T__struct_1),
({ _x : (0u32 : stdgo.GoUInt), _y : (0u32 : stdgo.GoUInt), _c : (1u32 : stdgo.GoUInt), _z : (1u32 : stdgo.GoUInt), _cout : (0u32 : stdgo.GoUInt) } : T__struct_1),
({ _x : (0u32 : stdgo.GoUInt), _y : (1u32 : stdgo.GoUInt), _c : (1u32 : stdgo.GoUInt), _z : (2u32 : stdgo.GoUInt), _cout : (0u32 : stdgo.GoUInt) } : T__struct_1),
({ _x : (12345u32 : stdgo.GoUInt), _y : (67890u32 : stdgo.GoUInt), _c : (0u32 : stdgo.GoUInt), _z : (80235u32 : stdgo.GoUInt), _cout : (0u32 : stdgo.GoUInt) } : T__struct_1),
({ _x : (12345u32 : stdgo.GoUInt), _y : (67890u32 : stdgo.GoUInt), _c : (1u32 : stdgo.GoUInt), _z : (80236u32 : stdgo.GoUInt), _cout : (0u32 : stdgo.GoUInt) } : T__struct_1),
({ _x : (-1u32 : stdgo.GoUInt), _y : (1u32 : stdgo.GoUInt), _c : (0u32 : stdgo.GoUInt), _z : (0u32 : stdgo.GoUInt), _cout : (1u32 : stdgo.GoUInt) } : T__struct_1),
({ _x : (-1u32 : stdgo.GoUInt), _y : (0u32 : stdgo.GoUInt), _c : (1u32 : stdgo.GoUInt), _z : (0u32 : stdgo.GoUInt), _cout : (1u32 : stdgo.GoUInt) } : T__struct_1),
({ _x : (-1u32 : stdgo.GoUInt), _y : (1u32 : stdgo.GoUInt), _c : (1u32 : stdgo.GoUInt), _z : (1u32 : stdgo.GoUInt), _cout : (1u32 : stdgo.GoUInt) } : T__struct_1),
({ _x : (-1u32 : stdgo.GoUInt), _y : (-1u32 : stdgo.GoUInt), _c : (0u32 : stdgo.GoUInt), _z : (-2u32 : stdgo.GoUInt), _cout : (1u32 : stdgo.GoUInt) } : T__struct_1),
({ _x : (-1u32 : stdgo.GoUInt), _y : (-1u32 : stdgo.GoUInt), _c : (1u32 : stdgo.GoUInt), _z : (-1u32 : stdgo.GoUInt), _cout : (1u32 : stdgo.GoUInt) } : T__struct_1)].concat([for (i in 11 ... (11 > 11 ? 11 : 11 : stdgo.GoInt).toBasic()) ({ _x : (0 : stdgo.GoUInt), _y : (0 : stdgo.GoUInt), _c : (0 : stdgo.GoUInt), _z : (0 : stdgo.GoUInt), _cout : (0 : stdgo.GoUInt) } : T__struct_1)])) : stdgo.Slice<T__struct_1>)) {
            _test(("Add" : stdgo.GoString), add, _a._x, _a._y, _a._c, _a._z, _a._cout);
            _test(("Add symmetric" : stdgo.GoString), add, _a._y, _a._x, _a._c, _a._z, _a._cout);
            _test(("Sub" : stdgo.GoString), sub, _a._z, _a._x, _a._c, _a._y, _a._cout);
            _test(("Sub symmetric" : stdgo.GoString), sub, _a._z, _a._y, _a._c, _a._x, _a._cout);
            _test(("Add intrinsic" : stdgo.GoString), function(_x:stdgo.GoUInt, _y:stdgo.GoUInt, _c:stdgo.GoUInt):{ var _0 : stdgo.GoUInt; var _1 : stdgo.GoUInt; } {
                return add(_x, _y, _c);
            }, _a._x, _a._y, _a._c, _a._z, _a._cout);
            _test(("Add intrinsic symmetric" : stdgo.GoString), function(_x:stdgo.GoUInt, _y:stdgo.GoUInt, _c:stdgo.GoUInt):{ var _0 : stdgo.GoUInt; var _1 : stdgo.GoUInt; } {
                return add(_x, _y, _c);
            }, _a._y, _a._x, _a._c, _a._z, _a._cout);
            _test(("Sub intrinsic" : stdgo.GoString), function(_x:stdgo.GoUInt, _y:stdgo.GoUInt, _c:stdgo.GoUInt):{ var _0 : stdgo.GoUInt; var _1 : stdgo.GoUInt; } {
                return sub(_x, _y, _c);
            }, _a._z, _a._x, _a._c, _a._y, _a._cout);
            _test(("Sub intrinsic symmetric" : stdgo.GoString), function(_x:stdgo.GoUInt, _y:stdgo.GoUInt, _c:stdgo.GoUInt):{ var _0 : stdgo.GoUInt; var _1 : stdgo.GoUInt; } {
                return sub(_x, _y, _c);
            }, _a._z, _a._y, _a._c, _a._x, _a._cout);
        };
    }
function testAddSubUint32(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _test = function(_msg:stdgo.GoString, _f:(_x:stdgo.GoUInt32, _y:stdgo.GoUInt32, _c:stdgo.GoUInt32) -> { var _0 : stdgo.GoUInt32; var _1 : stdgo.GoUInt32; }, _x:stdgo.GoUInt32, _y:stdgo.GoUInt32, _c:stdgo.GoUInt32, _z:stdgo.GoUInt32, _cout:stdgo.GoUInt32):Void {
            var __tmp__ = _f(_x, _y, _c), _z1:stdgo.GoUInt32 = __tmp__._0, _cout1:stdgo.GoUInt32 = __tmp__._1;
            if (((_z1 != _z) || (_cout1 != _cout) : Bool)) {
                _t.errorf(("%s: got z:cout = %#x:%#x; want %#x:%#x" : stdgo.GoString), stdgo.Go.toInterface(_msg), stdgo.Go.toInterface(_z1), stdgo.Go.toInterface(_cout1), stdgo.Go.toInterface(_z), stdgo.Go.toInterface(_cout));
            };
        };
        for (__0 => _a in (new stdgo.Slice<T__struct_2>(11, 11, ...[
({ _x : (0u32 : stdgo.GoUInt32), _y : (0u32 : stdgo.GoUInt32), _c : (0u32 : stdgo.GoUInt32), _z : (0u32 : stdgo.GoUInt32), _cout : (0u32 : stdgo.GoUInt32) } : T__struct_2),
({ _x : (0u32 : stdgo.GoUInt32), _y : (1u32 : stdgo.GoUInt32), _c : (0u32 : stdgo.GoUInt32), _z : (1u32 : stdgo.GoUInt32), _cout : (0u32 : stdgo.GoUInt32) } : T__struct_2),
({ _x : (0u32 : stdgo.GoUInt32), _y : (0u32 : stdgo.GoUInt32), _c : (1u32 : stdgo.GoUInt32), _z : (1u32 : stdgo.GoUInt32), _cout : (0u32 : stdgo.GoUInt32) } : T__struct_2),
({ _x : (0u32 : stdgo.GoUInt32), _y : (1u32 : stdgo.GoUInt32), _c : (1u32 : stdgo.GoUInt32), _z : (2u32 : stdgo.GoUInt32), _cout : (0u32 : stdgo.GoUInt32) } : T__struct_2),
({ _x : (12345u32 : stdgo.GoUInt32), _y : (67890u32 : stdgo.GoUInt32), _c : (0u32 : stdgo.GoUInt32), _z : (80235u32 : stdgo.GoUInt32), _cout : (0u32 : stdgo.GoUInt32) } : T__struct_2),
({ _x : (12345u32 : stdgo.GoUInt32), _y : (67890u32 : stdgo.GoUInt32), _c : (1u32 : stdgo.GoUInt32), _z : (80236u32 : stdgo.GoUInt32), _cout : (0u32 : stdgo.GoUInt32) } : T__struct_2),
({ _x : (-1u32 : stdgo.GoUInt32), _y : (1u32 : stdgo.GoUInt32), _c : (0u32 : stdgo.GoUInt32), _z : (0u32 : stdgo.GoUInt32), _cout : (1u32 : stdgo.GoUInt32) } : T__struct_2),
({ _x : (-1u32 : stdgo.GoUInt32), _y : (0u32 : stdgo.GoUInt32), _c : (1u32 : stdgo.GoUInt32), _z : (0u32 : stdgo.GoUInt32), _cout : (1u32 : stdgo.GoUInt32) } : T__struct_2),
({ _x : (-1u32 : stdgo.GoUInt32), _y : (1u32 : stdgo.GoUInt32), _c : (1u32 : stdgo.GoUInt32), _z : (1u32 : stdgo.GoUInt32), _cout : (1u32 : stdgo.GoUInt32) } : T__struct_2),
({ _x : (-1u32 : stdgo.GoUInt32), _y : (-1u32 : stdgo.GoUInt32), _c : (0u32 : stdgo.GoUInt32), _z : (-2u32 : stdgo.GoUInt32), _cout : (1u32 : stdgo.GoUInt32) } : T__struct_2),
({ _x : (-1u32 : stdgo.GoUInt32), _y : (-1u32 : stdgo.GoUInt32), _c : (1u32 : stdgo.GoUInt32), _z : (-1u32 : stdgo.GoUInt32), _cout : (1u32 : stdgo.GoUInt32) } : T__struct_2)].concat([for (i in 11 ... (11 > 11 ? 11 : 11 : stdgo.GoInt).toBasic()) ({ _x : (0 : stdgo.GoUInt32), _y : (0 : stdgo.GoUInt32), _c : (0 : stdgo.GoUInt32), _z : (0 : stdgo.GoUInt32), _cout : (0 : stdgo.GoUInt32) } : T__struct_2)])) : stdgo.Slice<T__struct_2>)) {
            _test(("Add32" : stdgo.GoString), add32, _a._x, _a._y, _a._c, _a._z, _a._cout);
            _test(("Add32 symmetric" : stdgo.GoString), add32, _a._y, _a._x, _a._c, _a._z, _a._cout);
            _test(("Sub32" : stdgo.GoString), sub32, _a._z, _a._x, _a._c, _a._y, _a._cout);
            _test(("Sub32 symmetric" : stdgo.GoString), sub32, _a._z, _a._y, _a._c, _a._x, _a._cout);
        };
    }
function testAddSubUint64(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _test = function(_msg:stdgo.GoString, _f:(_x:stdgo.GoUInt64, _y:stdgo.GoUInt64, _c:stdgo.GoUInt64) -> { var _0 : stdgo.GoUInt64; var _1 : stdgo.GoUInt64; }, _x:stdgo.GoUInt64, _y:stdgo.GoUInt64, _c:stdgo.GoUInt64, _z:stdgo.GoUInt64, _cout:stdgo.GoUInt64):Void {
            var __tmp__ = _f(_x, _y, _c), _z1:stdgo.GoUInt64 = __tmp__._0, _cout1:stdgo.GoUInt64 = __tmp__._1;
            if (((_z1 != _z) || (_cout1 != _cout) : Bool)) {
                _t.errorf(("%s: got z:cout = %#x:%#x; want %#x:%#x" : stdgo.GoString), stdgo.Go.toInterface(_msg), stdgo.Go.toInterface(_z1), stdgo.Go.toInterface(_cout1), stdgo.Go.toInterface(_z), stdgo.Go.toInterface(_cout));
            };
        };
        for (__0 => _a in (new stdgo.Slice<T__struct_3>(11, 11, ...[
({ _x : (0i64 : stdgo.GoUInt64), _y : (0i64 : stdgo.GoUInt64), _c : (0i64 : stdgo.GoUInt64), _z : (0i64 : stdgo.GoUInt64), _cout : (0i64 : stdgo.GoUInt64) } : T__struct_3),
({ _x : (0i64 : stdgo.GoUInt64), _y : (1i64 : stdgo.GoUInt64), _c : (0i64 : stdgo.GoUInt64), _z : (1i64 : stdgo.GoUInt64), _cout : (0i64 : stdgo.GoUInt64) } : T__struct_3),
({ _x : (0i64 : stdgo.GoUInt64), _y : (0i64 : stdgo.GoUInt64), _c : (1i64 : stdgo.GoUInt64), _z : (1i64 : stdgo.GoUInt64), _cout : (0i64 : stdgo.GoUInt64) } : T__struct_3),
({ _x : (0i64 : stdgo.GoUInt64), _y : (1i64 : stdgo.GoUInt64), _c : (1i64 : stdgo.GoUInt64), _z : (2i64 : stdgo.GoUInt64), _cout : (0i64 : stdgo.GoUInt64) } : T__struct_3),
({ _x : (12345i64 : stdgo.GoUInt64), _y : (67890i64 : stdgo.GoUInt64), _c : (0i64 : stdgo.GoUInt64), _z : (80235i64 : stdgo.GoUInt64), _cout : (0i64 : stdgo.GoUInt64) } : T__struct_3),
({ _x : (12345i64 : stdgo.GoUInt64), _y : (67890i64 : stdgo.GoUInt64), _c : (1i64 : stdgo.GoUInt64), _z : (80236i64 : stdgo.GoUInt64), _cout : (0i64 : stdgo.GoUInt64) } : T__struct_3),
({ _x : (-1i64 : stdgo.GoUInt64), _y : (1i64 : stdgo.GoUInt64), _c : (0i64 : stdgo.GoUInt64), _z : (0i64 : stdgo.GoUInt64), _cout : (1i64 : stdgo.GoUInt64) } : T__struct_3),
({ _x : (-1i64 : stdgo.GoUInt64), _y : (0i64 : stdgo.GoUInt64), _c : (1i64 : stdgo.GoUInt64), _z : (0i64 : stdgo.GoUInt64), _cout : (1i64 : stdgo.GoUInt64) } : T__struct_3),
({ _x : (-1i64 : stdgo.GoUInt64), _y : (1i64 : stdgo.GoUInt64), _c : (1i64 : stdgo.GoUInt64), _z : (1i64 : stdgo.GoUInt64), _cout : (1i64 : stdgo.GoUInt64) } : T__struct_3),
({ _x : (-1i64 : stdgo.GoUInt64), _y : (-1i64 : stdgo.GoUInt64), _c : (0i64 : stdgo.GoUInt64), _z : (-2i64 : stdgo.GoUInt64), _cout : (1i64 : stdgo.GoUInt64) } : T__struct_3),
({ _x : (-1i64 : stdgo.GoUInt64), _y : (-1i64 : stdgo.GoUInt64), _c : (1i64 : stdgo.GoUInt64), _z : (-1i64 : stdgo.GoUInt64), _cout : (1i64 : stdgo.GoUInt64) } : T__struct_3)].concat([for (i in 11 ... (11 > 11 ? 11 : 11 : stdgo.GoInt).toBasic()) ({ _x : (0 : stdgo.GoUInt64), _y : (0 : stdgo.GoUInt64), _c : (0 : stdgo.GoUInt64), _z : (0 : stdgo.GoUInt64), _cout : (0 : stdgo.GoUInt64) } : T__struct_3)])) : stdgo.Slice<T__struct_3>)) {
            _test(("Add64" : stdgo.GoString), add64, _a._x, _a._y, _a._c, _a._z, _a._cout);
            _test(("Add64 symmetric" : stdgo.GoString), add64, _a._y, _a._x, _a._c, _a._z, _a._cout);
            _test(("Sub64" : stdgo.GoString), sub64, _a._z, _a._x, _a._c, _a._y, _a._cout);
            _test(("Sub64 symmetric" : stdgo.GoString), sub64, _a._z, _a._y, _a._c, _a._x, _a._cout);
            _test(("Add64 intrinsic" : stdgo.GoString), function(_x:stdgo.GoUInt64, _y:stdgo.GoUInt64, _c:stdgo.GoUInt64):{ var _0 : stdgo.GoUInt64; var _1 : stdgo.GoUInt64; } {
                return add64(_x, _y, _c);
            }, _a._x, _a._y, _a._c, _a._z, _a._cout);
            _test(("Add64 intrinsic symmetric" : stdgo.GoString), function(_x:stdgo.GoUInt64, _y:stdgo.GoUInt64, _c:stdgo.GoUInt64):{ var _0 : stdgo.GoUInt64; var _1 : stdgo.GoUInt64; } {
                return add64(_x, _y, _c);
            }, _a._y, _a._x, _a._c, _a._z, _a._cout);
            _test(("Sub64 intrinsic" : stdgo.GoString), function(_x:stdgo.GoUInt64, _y:stdgo.GoUInt64, _c:stdgo.GoUInt64):{ var _0 : stdgo.GoUInt64; var _1 : stdgo.GoUInt64; } {
                return sub64(_x, _y, _c);
            }, _a._z, _a._x, _a._c, _a._y, _a._cout);
            _test(("Sub64 intrinsic symmetric" : stdgo.GoString), function(_x:stdgo.GoUInt64, _y:stdgo.GoUInt64, _c:stdgo.GoUInt64):{ var _0 : stdgo.GoUInt64; var _1 : stdgo.GoUInt64; } {
                return sub64(_x, _y, _c);
            }, _a._z, _a._y, _a._c, _a._x, _a._cout);
        };
    }
function testAdd64OverflowPanic(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _tests = (new stdgo.Slice<(stdgo.GoUInt64, stdgo.GoUInt64) -> stdgo.GoUInt64>(5, 5, ...[function(_a:stdgo.GoUInt64, _b:stdgo.GoUInt64):stdgo.GoUInt64 {
            var __tmp__ = add64(_a, _b, (0i64 : stdgo.GoUInt64)), _x:stdgo.GoUInt64 = __tmp__._0, _c:stdgo.GoUInt64 = __tmp__._1;
            if ((_c > (0i64 : stdgo.GoUInt64) : Bool)) {
                throw stdgo.Go.toInterface(("overflow" : stdgo.GoString));
            };
            return _x;
        }, function(_a:stdgo.GoUInt64, _b:stdgo.GoUInt64):stdgo.GoUInt64 {
            var __tmp__ = add64(_a, _b, (0i64 : stdgo.GoUInt64)), _x:stdgo.GoUInt64 = __tmp__._0, _c:stdgo.GoUInt64 = __tmp__._1;
            if (_c != ((0i64 : stdgo.GoUInt64))) {
                throw stdgo.Go.toInterface(("overflow" : stdgo.GoString));
            };
            return _x;
        }, function(_a:stdgo.GoUInt64, _b:stdgo.GoUInt64):stdgo.GoUInt64 {
            var __tmp__ = add64(_a, _b, (0i64 : stdgo.GoUInt64)), _x:stdgo.GoUInt64 = __tmp__._0, _c:stdgo.GoUInt64 = __tmp__._1;
            if (_c == ((1i64 : stdgo.GoUInt64))) {
                throw stdgo.Go.toInterface(("overflow" : stdgo.GoString));
            };
            return _x;
        }, function(_a:stdgo.GoUInt64, _b:stdgo.GoUInt64):stdgo.GoUInt64 {
            var __tmp__ = add64(_a, _b, (0i64 : stdgo.GoUInt64)), _x:stdgo.GoUInt64 = __tmp__._0, _c:stdgo.GoUInt64 = __tmp__._1;
            if (_c != ((1i64 : stdgo.GoUInt64))) {
                return _x;
            };
            throw stdgo.Go.toInterface(("overflow" : stdgo.GoString));
        }, function(_a:stdgo.GoUInt64, _b:stdgo.GoUInt64):stdgo.GoUInt64 {
            var __tmp__ = add64(_a, _b, (0i64 : stdgo.GoUInt64)), _x:stdgo.GoUInt64 = __tmp__._0, _c:stdgo.GoUInt64 = __tmp__._1;
            if (_c == ((0i64 : stdgo.GoUInt64))) {
                return _x;
            };
            throw stdgo.Go.toInterface(("overflow" : stdgo.GoString));
        }]) : stdgo.Slice<(stdgo.GoUInt64, stdgo.GoUInt64) -> stdgo.GoUInt64>);
        for (__0 => _test in _tests) {
            var _shouldPanic = function(_f:() -> Void):Void {
                var __deferstack__:Array<Void -> Void> = [];
                try {
                    __deferstack__.unshift(() -> {
                        var a = function():Void {
                            {
                                var _err = ({
                                    final r = stdgo.Go.recover_exception;
                                    stdgo.Go.recover_exception = null;
                                    r;
                                });
                                if (_err == null) {
                                    _t.fatalf(("expected panic" : stdgo.GoString));
                                };
                            };
                        };
                        a();
                    });
                    _f();
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
            _shouldPanic(function():Void {
                _test((-1i64 : stdgo.GoUInt64), (1i64 : stdgo.GoUInt64));
            });
            _shouldPanic(function():Void {
                _test((1i64 : stdgo.GoUInt64), (-1i64 : stdgo.GoUInt64));
            });
            _shouldPanic(function():Void {
                _test((-1i64 : stdgo.GoUInt64), (-1i64 : stdgo.GoUInt64));
            });
            _test((-1i64 : stdgo.GoUInt64), (0i64 : stdgo.GoUInt64));
            _test((0i64 : stdgo.GoUInt64), (0i64 : stdgo.GoUInt64));
            _test((1i64 : stdgo.GoUInt64), (1i64 : stdgo.GoUInt64));
        };
    }
function testSub64OverflowPanic(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _tests = (new stdgo.Slice<(stdgo.GoUInt64, stdgo.GoUInt64) -> stdgo.GoUInt64>(5, 5, ...[function(_a:stdgo.GoUInt64, _b:stdgo.GoUInt64):stdgo.GoUInt64 {
            var __tmp__ = sub64(_a, _b, (0i64 : stdgo.GoUInt64)), _x:stdgo.GoUInt64 = __tmp__._0, _c:stdgo.GoUInt64 = __tmp__._1;
            if ((_c > (0i64 : stdgo.GoUInt64) : Bool)) {
                throw stdgo.Go.toInterface(("overflow" : stdgo.GoString));
            };
            return _x;
        }, function(_a:stdgo.GoUInt64, _b:stdgo.GoUInt64):stdgo.GoUInt64 {
            var __tmp__ = sub64(_a, _b, (0i64 : stdgo.GoUInt64)), _x:stdgo.GoUInt64 = __tmp__._0, _c:stdgo.GoUInt64 = __tmp__._1;
            if (_c != ((0i64 : stdgo.GoUInt64))) {
                throw stdgo.Go.toInterface(("overflow" : stdgo.GoString));
            };
            return _x;
        }, function(_a:stdgo.GoUInt64, _b:stdgo.GoUInt64):stdgo.GoUInt64 {
            var __tmp__ = sub64(_a, _b, (0i64 : stdgo.GoUInt64)), _x:stdgo.GoUInt64 = __tmp__._0, _c:stdgo.GoUInt64 = __tmp__._1;
            if (_c == ((1i64 : stdgo.GoUInt64))) {
                throw stdgo.Go.toInterface(("overflow" : stdgo.GoString));
            };
            return _x;
        }, function(_a:stdgo.GoUInt64, _b:stdgo.GoUInt64):stdgo.GoUInt64 {
            var __tmp__ = sub64(_a, _b, (0i64 : stdgo.GoUInt64)), _x:stdgo.GoUInt64 = __tmp__._0, _c:stdgo.GoUInt64 = __tmp__._1;
            if (_c != ((1i64 : stdgo.GoUInt64))) {
                return _x;
            };
            throw stdgo.Go.toInterface(("overflow" : stdgo.GoString));
        }, function(_a:stdgo.GoUInt64, _b:stdgo.GoUInt64):stdgo.GoUInt64 {
            var __tmp__ = sub64(_a, _b, (0i64 : stdgo.GoUInt64)), _x:stdgo.GoUInt64 = __tmp__._0, _c:stdgo.GoUInt64 = __tmp__._1;
            if (_c == ((0i64 : stdgo.GoUInt64))) {
                return _x;
            };
            throw stdgo.Go.toInterface(("overflow" : stdgo.GoString));
        }]) : stdgo.Slice<(stdgo.GoUInt64, stdgo.GoUInt64) -> stdgo.GoUInt64>);
        for (__0 => _test in _tests) {
            var _shouldPanic = function(_f:() -> Void):Void {
                var __deferstack__:Array<Void -> Void> = [];
                try {
                    __deferstack__.unshift(() -> {
                        var a = function():Void {
                            {
                                var _err = ({
                                    final r = stdgo.Go.recover_exception;
                                    stdgo.Go.recover_exception = null;
                                    r;
                                });
                                if (_err == null) {
                                    _t.fatalf(("expected panic" : stdgo.GoString));
                                };
                            };
                        };
                        a();
                    });
                    _f();
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
            _shouldPanic(function():Void {
                _test((0i64 : stdgo.GoUInt64), (1i64 : stdgo.GoUInt64));
            });
            _shouldPanic(function():Void {
                _test((1i64 : stdgo.GoUInt64), (-1i64 : stdgo.GoUInt64));
            });
            _shouldPanic(function():Void {
                _test((-2i64 : stdgo.GoUInt64), (-1i64 : stdgo.GoUInt64));
            });
            _test((-1i64 : stdgo.GoUInt64), (0i64 : stdgo.GoUInt64));
            _test((0i64 : stdgo.GoUInt64), (0i64 : stdgo.GoUInt64));
            _test((1i64 : stdgo.GoUInt64), (1i64 : stdgo.GoUInt64));
        };
    }
function testMulDiv(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _testMul = function(_msg:stdgo.GoString, _f:(_x:stdgo.GoUInt, _y:stdgo.GoUInt) -> { var _0 : stdgo.GoUInt; var _1 : stdgo.GoUInt; }, _x:stdgo.GoUInt, _y:stdgo.GoUInt, _hi:stdgo.GoUInt, _lo:stdgo.GoUInt):Void {
            var __tmp__ = _f(_x, _y), _hi1:stdgo.GoUInt = __tmp__._0, _lo1:stdgo.GoUInt = __tmp__._1;
            if (((_hi1 != _hi) || (_lo1 != _lo) : Bool)) {
                _t.errorf(("%s: got hi:lo = %#x:%#x; want %#x:%#x" : stdgo.GoString), stdgo.Go.toInterface(_msg), stdgo.Go.toInterface(_hi1), stdgo.Go.toInterface(_lo1), stdgo.Go.toInterface(_hi), stdgo.Go.toInterface(_lo));
            };
        };
        var _testDiv = function(_msg:stdgo.GoString, _f:(_hi:stdgo.GoUInt, _lo:stdgo.GoUInt, _y:stdgo.GoUInt) -> { var _0 : stdgo.GoUInt; var _1 : stdgo.GoUInt; }, _hi:stdgo.GoUInt, _lo:stdgo.GoUInt, _y:stdgo.GoUInt, _q:stdgo.GoUInt, _r:stdgo.GoUInt):Void {
            var __tmp__ = _f(_hi, _lo, _y), _q1:stdgo.GoUInt = __tmp__._0, _r1:stdgo.GoUInt = __tmp__._1;
            if (((_q1 != _q) || (_r1 != _r) : Bool)) {
                _t.errorf(("%s: got q:r = %#x:%#x; want %#x:%#x" : stdgo.GoString), stdgo.Go.toInterface(_msg), stdgo.Go.toInterface(_q1), stdgo.Go.toInterface(_r1), stdgo.Go.toInterface(_q), stdgo.Go.toInterface(_r));
            };
        };
        for (__0 => _a in (new stdgo.Slice<T__struct_4>(2, 2, ...[({ _x : (-2147483648u32 : stdgo.GoUInt), _y : (2u32 : stdgo.GoUInt), _hi : (1u32 : stdgo.GoUInt), _lo : (0u32 : stdgo.GoUInt), _r : (1u32 : stdgo.GoUInt) } : T__struct_4), ({ _x : (-1u32 : stdgo.GoUInt), _y : (-1u32 : stdgo.GoUInt), _hi : (-2u32 : stdgo.GoUInt), _lo : (1u32 : stdgo.GoUInt), _r : (42u32 : stdgo.GoUInt) } : T__struct_4)].concat([for (i in 2 ... (2 > 2 ? 2 : 2 : stdgo.GoInt).toBasic()) ({ _x : (0 : stdgo.GoUInt), _y : (0 : stdgo.GoUInt), _hi : (0 : stdgo.GoUInt), _lo : (0 : stdgo.GoUInt), _r : (0 : stdgo.GoUInt) } : T__struct_4)])) : stdgo.Slice<T__struct_4>)) {
            _testMul(("Mul" : stdgo.GoString), mul, _a._x, _a._y, _a._hi, _a._lo);
            _testMul(("Mul symmetric" : stdgo.GoString), mul, _a._y, _a._x, _a._hi, _a._lo);
            _testDiv(("Div" : stdgo.GoString), div, _a._hi, (_a._lo + _a._r : stdgo.GoUInt), _a._y, _a._x, _a._r);
            _testDiv(("Div symmetric" : stdgo.GoString), div, _a._hi, (_a._lo + _a._r : stdgo.GoUInt), _a._x, _a._y, _a._r);
            _testMul(("Mul intrinsic" : stdgo.GoString), function(_x:stdgo.GoUInt, _y:stdgo.GoUInt):{ var _0 : stdgo.GoUInt; var _1 : stdgo.GoUInt; } {
                return mul(_x, _y);
            }, _a._x, _a._y, _a._hi, _a._lo);
            _testMul(("Mul intrinsic symmetric" : stdgo.GoString), function(_x:stdgo.GoUInt, _y:stdgo.GoUInt):{ var _0 : stdgo.GoUInt; var _1 : stdgo.GoUInt; } {
                return mul(_x, _y);
            }, _a._y, _a._x, _a._hi, _a._lo);
            _testDiv(("Div intrinsic" : stdgo.GoString), function(_hi:stdgo.GoUInt, _lo:stdgo.GoUInt, _y:stdgo.GoUInt):{ var _0 : stdgo.GoUInt; var _1 : stdgo.GoUInt; } {
                return div(_hi, _lo, _y);
            }, _a._hi, (_a._lo + _a._r : stdgo.GoUInt), _a._y, _a._x, _a._r);
            _testDiv(("Div intrinsic symmetric" : stdgo.GoString), function(_hi:stdgo.GoUInt, _lo:stdgo.GoUInt, _y:stdgo.GoUInt):{ var _0 : stdgo.GoUInt; var _1 : stdgo.GoUInt; } {
                return div(_hi, _lo, _y);
            }, _a._hi, (_a._lo + _a._r : stdgo.GoUInt), _a._x, _a._y, _a._r);
        };
    }
function testMulDiv32(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _testMul = function(_msg:stdgo.GoString, _f:(_x:stdgo.GoUInt32, _y:stdgo.GoUInt32) -> { var _0 : stdgo.GoUInt32; var _1 : stdgo.GoUInt32; }, _x:stdgo.GoUInt32, _y:stdgo.GoUInt32, _hi:stdgo.GoUInt32, _lo:stdgo.GoUInt32):Void {
            var __tmp__ = _f(_x, _y), _hi1:stdgo.GoUInt32 = __tmp__._0, _lo1:stdgo.GoUInt32 = __tmp__._1;
            if (((_hi1 != _hi) || (_lo1 != _lo) : Bool)) {
                _t.errorf(("%s: got hi:lo = %#x:%#x; want %#x:%#x" : stdgo.GoString), stdgo.Go.toInterface(_msg), stdgo.Go.toInterface(_hi1), stdgo.Go.toInterface(_lo1), stdgo.Go.toInterface(_hi), stdgo.Go.toInterface(_lo));
            };
        };
        var _testDiv = function(_msg:stdgo.GoString, _f:(_hi:stdgo.GoUInt32, _lo:stdgo.GoUInt32, _y:stdgo.GoUInt32) -> { var _0 : stdgo.GoUInt32; var _1 : stdgo.GoUInt32; }, _hi:stdgo.GoUInt32, _lo:stdgo.GoUInt32, _y:stdgo.GoUInt32, _q:stdgo.GoUInt32, _r:stdgo.GoUInt32):Void {
            var __tmp__ = _f(_hi, _lo, _y), _q1:stdgo.GoUInt32 = __tmp__._0, _r1:stdgo.GoUInt32 = __tmp__._1;
            if (((_q1 != _q) || (_r1 != _r) : Bool)) {
                _t.errorf(("%s: got q:r = %#x:%#x; want %#x:%#x" : stdgo.GoString), stdgo.Go.toInterface(_msg), stdgo.Go.toInterface(_q1), stdgo.Go.toInterface(_r1), stdgo.Go.toInterface(_q), stdgo.Go.toInterface(_r));
            };
        };
        for (__0 => _a in (new stdgo.Slice<T__struct_5>(3, 3, ...[({ _x : (-2147483648u32 : stdgo.GoUInt32), _y : (2u32 : stdgo.GoUInt32), _hi : (1u32 : stdgo.GoUInt32), _lo : (0u32 : stdgo.GoUInt32), _r : (1u32 : stdgo.GoUInt32) } : T__struct_5), ({ _x : (-998376820u32 : stdgo.GoUInt32), _y : (50911u32 : stdgo.GoUInt32), _hi : (39076u32 : stdgo.GoUInt32), _lo : (-1719302156u32 : stdgo.GoUInt32), _r : (13u32 : stdgo.GoUInt32) } : T__struct_5), ({ _x : (-1u32 : stdgo.GoUInt32), _y : (-1u32 : stdgo.GoUInt32), _hi : (-2u32 : stdgo.GoUInt32), _lo : (1u32 : stdgo.GoUInt32), _r : (42u32 : stdgo.GoUInt32) } : T__struct_5)].concat([for (i in 3 ... (3 > 3 ? 3 : 3 : stdgo.GoInt).toBasic()) ({ _x : (0 : stdgo.GoUInt32), _y : (0 : stdgo.GoUInt32), _hi : (0 : stdgo.GoUInt32), _lo : (0 : stdgo.GoUInt32), _r : (0 : stdgo.GoUInt32) } : T__struct_5)])) : stdgo.Slice<T__struct_5>)) {
            _testMul(("Mul32" : stdgo.GoString), mul32, _a._x, _a._y, _a._hi, _a._lo);
            _testMul(("Mul32 symmetric" : stdgo.GoString), mul32, _a._y, _a._x, _a._hi, _a._lo);
            _testDiv(("Div32" : stdgo.GoString), div32, _a._hi, (_a._lo + _a._r : stdgo.GoUInt32), _a._y, _a._x, _a._r);
            _testDiv(("Div32 symmetric" : stdgo.GoString), div32, _a._hi, (_a._lo + _a._r : stdgo.GoUInt32), _a._x, _a._y, _a._r);
        };
    }
function testMulDiv64(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _testMul = function(_msg:stdgo.GoString, _f:(_x:stdgo.GoUInt64, _y:stdgo.GoUInt64) -> { var _0 : stdgo.GoUInt64; var _1 : stdgo.GoUInt64; }, _x:stdgo.GoUInt64, _y:stdgo.GoUInt64, _hi:stdgo.GoUInt64, _lo:stdgo.GoUInt64):Void {
            var __tmp__ = _f(_x, _y), _hi1:stdgo.GoUInt64 = __tmp__._0, _lo1:stdgo.GoUInt64 = __tmp__._1;
            if (((_hi1 != _hi) || (_lo1 != _lo) : Bool)) {
                _t.errorf(("%s: got hi:lo = %#x:%#x; want %#x:%#x" : stdgo.GoString), stdgo.Go.toInterface(_msg), stdgo.Go.toInterface(_hi1), stdgo.Go.toInterface(_lo1), stdgo.Go.toInterface(_hi), stdgo.Go.toInterface(_lo));
            };
        };
        var _testDiv = function(_msg:stdgo.GoString, _f:(_hi:stdgo.GoUInt64, _lo:stdgo.GoUInt64, _y:stdgo.GoUInt64) -> { var _0 : stdgo.GoUInt64; var _1 : stdgo.GoUInt64; }, _hi:stdgo.GoUInt64, _lo:stdgo.GoUInt64, _y:stdgo.GoUInt64, _q:stdgo.GoUInt64, _r:stdgo.GoUInt64):Void {
            var __tmp__ = _f(_hi, _lo, _y), _q1:stdgo.GoUInt64 = __tmp__._0, _r1:stdgo.GoUInt64 = __tmp__._1;
            if (((_q1 != _q) || (_r1 != _r) : Bool)) {
                _t.errorf(("%s: got q:r = %#x:%#x; want %#x:%#x" : stdgo.GoString), stdgo.Go.toInterface(_msg), stdgo.Go.toInterface(_q1), stdgo.Go.toInterface(_r1), stdgo.Go.toInterface(_q), stdgo.Go.toInterface(_r));
            };
        };
        for (__0 => _a in (new stdgo.Slice<T__struct_6>(3, 3, ...[({ _x : (-9223372036854775808i64 : stdgo.GoUInt64), _y : (2i64 : stdgo.GoUInt64), _hi : (1i64 : stdgo.GoUInt64), _lo : (0i64 : stdgo.GoUInt64), _r : (1i64 : stdgo.GoUInt64) } : T__struct_6), ({ _x : (15241578750190521i64 : stdgo.GoUInt64), _y : (975461057789971041i64 : stdgo.GoUInt64), _hi : (805972396572648i64 : stdgo.GoUInt64), _lo : (-7073286711136648423i64 : stdgo.GoUInt64), _r : (13i64 : stdgo.GoUInt64) } : T__struct_6), ({ _x : (-1i64 : stdgo.GoUInt64), _y : (-1i64 : stdgo.GoUInt64), _hi : (-2i64 : stdgo.GoUInt64), _lo : (1i64 : stdgo.GoUInt64), _r : (42i64 : stdgo.GoUInt64) } : T__struct_6)].concat([for (i in 3 ... (3 > 3 ? 3 : 3 : stdgo.GoInt).toBasic()) ({ _x : (0 : stdgo.GoUInt64), _y : (0 : stdgo.GoUInt64), _hi : (0 : stdgo.GoUInt64), _lo : (0 : stdgo.GoUInt64), _r : (0 : stdgo.GoUInt64) } : T__struct_6)])) : stdgo.Slice<T__struct_6>)) {
            _testMul(("Mul64" : stdgo.GoString), mul64, _a._x, _a._y, _a._hi, _a._lo);
            _testMul(("Mul64 symmetric" : stdgo.GoString), mul64, _a._y, _a._x, _a._hi, _a._lo);
            _testDiv(("Div64" : stdgo.GoString), div64, _a._hi, (_a._lo + _a._r : stdgo.GoUInt64), _a._y, _a._x, _a._r);
            _testDiv(("Div64 symmetric" : stdgo.GoString), div64, _a._hi, (_a._lo + _a._r : stdgo.GoUInt64), _a._x, _a._y, _a._r);
            _testMul(("Mul64 intrinsic" : stdgo.GoString), function(_x:stdgo.GoUInt64, _y:stdgo.GoUInt64):{ var _0 : stdgo.GoUInt64; var _1 : stdgo.GoUInt64; } {
                return mul64(_x, _y);
            }, _a._x, _a._y, _a._hi, _a._lo);
            _testMul(("Mul64 intrinsic symmetric" : stdgo.GoString), function(_x:stdgo.GoUInt64, _y:stdgo.GoUInt64):{ var _0 : stdgo.GoUInt64; var _1 : stdgo.GoUInt64; } {
                return mul64(_x, _y);
            }, _a._y, _a._x, _a._hi, _a._lo);
            _testDiv(("Div64 intrinsic" : stdgo.GoString), function(_hi:stdgo.GoUInt64, _lo:stdgo.GoUInt64, _y:stdgo.GoUInt64):{ var _0 : stdgo.GoUInt64; var _1 : stdgo.GoUInt64; } {
                return div64(_hi, _lo, _y);
            }, _a._hi, (_a._lo + _a._r : stdgo.GoUInt64), _a._y, _a._x, _a._r);
            _testDiv(("Div64 intrinsic symmetric" : stdgo.GoString), function(_hi:stdgo.GoUInt64, _lo:stdgo.GoUInt64, _y:stdgo.GoUInt64):{ var _0 : stdgo.GoUInt64; var _1 : stdgo.GoUInt64; } {
                return div64(_hi, _lo, _y);
            }, _a._hi, (_a._lo + _a._r : stdgo.GoUInt64), _a._x, _a._y, _a._r);
        };
    }
function testDivPanicOverflow(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            __deferstack__.unshift(() -> {
                var a = function():Void {
                    {
                        var _err = ({
                            final r = stdgo.Go.recover_exception;
                            stdgo.Go.recover_exception = null;
                            r;
                        });
                        if (_err == null) {
                            _t.error(stdgo.Go.toInterface(("Div should have panicked when y<=hi" : stdgo.GoString)));
                        } else {
                            var __tmp__ = try {
                                { _0 : (stdgo.Go.typeAssert((_err : stdgo._internal.runtime.Runtime.Error)) : stdgo._internal.runtime.Runtime.Error), _1 : true };
                            } catch(_) {
                                { _0 : (null : stdgo._internal.runtime.Runtime.Error), _1 : false };
                            }, _e = __tmp__._0, _ok = __tmp__._1;
                            if ((!_ok || (_e.error() != ("runtime error: integer overflow" : stdgo.GoString)) : Bool)) {
                                _t.errorf(("Div expected panic: %q, got: %q " : stdgo.GoString), stdgo.Go.toInterface(("runtime error: integer overflow" : stdgo.GoString)), stdgo.Go.toInterface(_e.error()));
                            };
                        };
                    };
                };
                a();
            });
            var __tmp__ = div((1u32 : stdgo.GoUInt), (0u32 : stdgo.GoUInt), (1u32 : stdgo.GoUInt)), _q:stdgo.GoUInt = __tmp__._0, _r:stdgo.GoUInt = __tmp__._1;
            _t.errorf(("undefined q, r = %v, %v calculated when Div should have panicked" : stdgo.GoString), stdgo.Go.toInterface(_q), stdgo.Go.toInterface(_r));
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
function testDiv32PanicOverflow(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            __deferstack__.unshift(() -> {
                var a = function():Void {
                    {
                        var _err = ({
                            final r = stdgo.Go.recover_exception;
                            stdgo.Go.recover_exception = null;
                            r;
                        });
                        if (_err == null) {
                            _t.error(stdgo.Go.toInterface(("Div32 should have panicked when y<=hi" : stdgo.GoString)));
                        } else {
                            var __tmp__ = try {
                                { _0 : (stdgo.Go.typeAssert((_err : stdgo._internal.runtime.Runtime.Error)) : stdgo._internal.runtime.Runtime.Error), _1 : true };
                            } catch(_) {
                                { _0 : (null : stdgo._internal.runtime.Runtime.Error), _1 : false };
                            }, _e = __tmp__._0, _ok = __tmp__._1;
                            if ((!_ok || (_e.error() != ("runtime error: integer overflow" : stdgo.GoString)) : Bool)) {
                                _t.errorf(("Div32 expected panic: %q, got: %q " : stdgo.GoString), stdgo.Go.toInterface(("runtime error: integer overflow" : stdgo.GoString)), stdgo.Go.toInterface(_e.error()));
                            };
                        };
                    };
                };
                a();
            });
            var __tmp__ = div32((1u32 : stdgo.GoUInt32), (0u32 : stdgo.GoUInt32), (1u32 : stdgo.GoUInt32)), _q:stdgo.GoUInt32 = __tmp__._0, _r:stdgo.GoUInt32 = __tmp__._1;
            _t.errorf(("undefined q, r = %v, %v calculated when Div32 should have panicked" : stdgo.GoString), stdgo.Go.toInterface(_q), stdgo.Go.toInterface(_r));
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
function testDiv64PanicOverflow(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            __deferstack__.unshift(() -> {
                var a = function():Void {
                    {
                        var _err = ({
                            final r = stdgo.Go.recover_exception;
                            stdgo.Go.recover_exception = null;
                            r;
                        });
                        if (_err == null) {
                            _t.error(stdgo.Go.toInterface(("Div64 should have panicked when y<=hi" : stdgo.GoString)));
                        } else {
                            var __tmp__ = try {
                                { _0 : (stdgo.Go.typeAssert((_err : stdgo._internal.runtime.Runtime.Error)) : stdgo._internal.runtime.Runtime.Error), _1 : true };
                            } catch(_) {
                                { _0 : (null : stdgo._internal.runtime.Runtime.Error), _1 : false };
                            }, _e = __tmp__._0, _ok = __tmp__._1;
                            if ((!_ok || (_e.error() != ("runtime error: integer overflow" : stdgo.GoString)) : Bool)) {
                                _t.errorf(("Div64 expected panic: %q, got: %q " : stdgo.GoString), stdgo.Go.toInterface(("runtime error: integer overflow" : stdgo.GoString)), stdgo.Go.toInterface(_e.error()));
                            };
                        };
                    };
                };
                a();
            });
            var __tmp__ = div64((1i64 : stdgo.GoUInt64), (0i64 : stdgo.GoUInt64), (1i64 : stdgo.GoUInt64)), _q:stdgo.GoUInt64 = __tmp__._0, _r:stdgo.GoUInt64 = __tmp__._1;
            _t.errorf(("undefined q, r = %v, %v calculated when Div64 should have panicked" : stdgo.GoString), stdgo.Go.toInterface(_q), stdgo.Go.toInterface(_r));
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
function testDivPanicZero(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            __deferstack__.unshift(() -> {
                var a = function():Void {
                    {
                        var _err = ({
                            final r = stdgo.Go.recover_exception;
                            stdgo.Go.recover_exception = null;
                            r;
                        });
                        if (_err == null) {
                            _t.error(stdgo.Go.toInterface(("Div should have panicked when y==0" : stdgo.GoString)));
                        } else {
                            var __tmp__ = try {
                                { _0 : (stdgo.Go.typeAssert((_err : stdgo._internal.runtime.Runtime.Error)) : stdgo._internal.runtime.Runtime.Error), _1 : true };
                            } catch(_) {
                                { _0 : (null : stdgo._internal.runtime.Runtime.Error), _1 : false };
                            }, _e = __tmp__._0, _ok = __tmp__._1;
                            if ((!_ok || (_e.error() != ("runtime error: integer divide by zero" : stdgo.GoString)) : Bool)) {
                                _t.errorf(("Div expected panic: %q, got: %q " : stdgo.GoString), stdgo.Go.toInterface(("runtime error: integer divide by zero" : stdgo.GoString)), stdgo.Go.toInterface(_e.error()));
                            };
                        };
                    };
                };
                a();
            });
            var __tmp__ = div((1u32 : stdgo.GoUInt), (1u32 : stdgo.GoUInt), (0u32 : stdgo.GoUInt)), _q:stdgo.GoUInt = __tmp__._0, _r:stdgo.GoUInt = __tmp__._1;
            _t.errorf(("undefined q, r = %v, %v calculated when Div should have panicked" : stdgo.GoString), stdgo.Go.toInterface(_q), stdgo.Go.toInterface(_r));
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
function testDiv32PanicZero(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            __deferstack__.unshift(() -> {
                var a = function():Void {
                    {
                        var _err = ({
                            final r = stdgo.Go.recover_exception;
                            stdgo.Go.recover_exception = null;
                            r;
                        });
                        if (_err == null) {
                            _t.error(stdgo.Go.toInterface(("Div32 should have panicked when y==0" : stdgo.GoString)));
                        } else {
                            var __tmp__ = try {
                                { _0 : (stdgo.Go.typeAssert((_err : stdgo._internal.runtime.Runtime.Error)) : stdgo._internal.runtime.Runtime.Error), _1 : true };
                            } catch(_) {
                                { _0 : (null : stdgo._internal.runtime.Runtime.Error), _1 : false };
                            }, _e = __tmp__._0, _ok = __tmp__._1;
                            if ((!_ok || (_e.error() != ("runtime error: integer divide by zero" : stdgo.GoString)) : Bool)) {
                                _t.errorf(("Div32 expected panic: %q, got: %q " : stdgo.GoString), stdgo.Go.toInterface(("runtime error: integer divide by zero" : stdgo.GoString)), stdgo.Go.toInterface(_e.error()));
                            };
                        };
                    };
                };
                a();
            });
            var __tmp__ = div32((1u32 : stdgo.GoUInt32), (1u32 : stdgo.GoUInt32), (0u32 : stdgo.GoUInt32)), _q:stdgo.GoUInt32 = __tmp__._0, _r:stdgo.GoUInt32 = __tmp__._1;
            _t.errorf(("undefined q, r = %v, %v calculated when Div32 should have panicked" : stdgo.GoString), stdgo.Go.toInterface(_q), stdgo.Go.toInterface(_r));
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
function testDiv64PanicZero(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            __deferstack__.unshift(() -> {
                var a = function():Void {
                    {
                        var _err = ({
                            final r = stdgo.Go.recover_exception;
                            stdgo.Go.recover_exception = null;
                            r;
                        });
                        if (_err == null) {
                            _t.error(stdgo.Go.toInterface(("Div64 should have panicked when y==0" : stdgo.GoString)));
                        } else {
                            var __tmp__ = try {
                                { _0 : (stdgo.Go.typeAssert((_err : stdgo._internal.runtime.Runtime.Error)) : stdgo._internal.runtime.Runtime.Error), _1 : true };
                            } catch(_) {
                                { _0 : (null : stdgo._internal.runtime.Runtime.Error), _1 : false };
                            }, _e = __tmp__._0, _ok = __tmp__._1;
                            if ((!_ok || (_e.error() != ("runtime error: integer divide by zero" : stdgo.GoString)) : Bool)) {
                                _t.errorf(("Div64 expected panic: %q, got: %q " : stdgo.GoString), stdgo.Go.toInterface(("runtime error: integer divide by zero" : stdgo.GoString)), stdgo.Go.toInterface(_e.error()));
                            };
                        };
                    };
                };
                a();
            });
            var __tmp__ = div64((1i64 : stdgo.GoUInt64), (1i64 : stdgo.GoUInt64), (0i64 : stdgo.GoUInt64)), _q:stdgo.GoUInt64 = __tmp__._0, _r:stdgo.GoUInt64 = __tmp__._1;
            _t.errorf(("undefined q, r = %v, %v calculated when Div64 should have panicked" : stdgo.GoString), stdgo.Go.toInterface(_q), stdgo.Go.toInterface(_r));
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
function testRem32(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var __0 = (510510u32 : stdgo.GoUInt32), __1 = (9699690u32 : stdgo.GoUInt32), __2 = (510511u32 : stdgo.GoUInt32);
var _y = __2, _lo = __1, _hi = __0;
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (1000 : stdgo.GoInt) : Bool), _i++, {
                var _r = rem32(_hi, _lo, _y);
                var __tmp__ = div32(_hi, _lo, _y), __0:stdgo.GoUInt32 = __tmp__._0, _r2:stdgo.GoUInt32 = __tmp__._1;
                if (_r != (_r2)) {
                    _t.errorf(("Rem32(%v, %v, %v) returned %v, but Div32 returned rem %v" : stdgo.GoString), stdgo.Go.toInterface(_hi), stdgo.Go.toInterface(_lo), stdgo.Go.toInterface(_y), stdgo.Go.toInterface(_r), stdgo.Go.toInterface(_r2));
                };
                _y = (_y + ((13u32 : stdgo.GoUInt32)) : stdgo.GoUInt32);
            });
        };
    }
function testRem32Overflow(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var __0 = (510510u32 : stdgo.GoUInt32), __1 = (9699690u32 : stdgo.GoUInt32), __2 = (7u32 : stdgo.GoUInt32);
var _y = __2, _lo = __1, _hi = __0;
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (1000 : stdgo.GoInt) : Bool), _i++, {
                var _r = rem32(_hi, _lo, _y);
                var __tmp__ = div64((0i64 : stdgo.GoUInt64), (((_hi : stdgo.GoUInt64) << (32i64 : stdgo.GoUInt64) : stdgo.GoUInt64) | (_lo : stdgo.GoUInt64) : stdgo.GoUInt64), (_y : stdgo.GoUInt64)), __0:stdgo.GoUInt64 = __tmp__._0, _r2:stdgo.GoUInt64 = __tmp__._1;
                if (_r != ((_r2 : stdgo.GoUInt32))) {
                    _t.errorf(("Rem32(%v, %v, %v) returned %v, but Div64 returned rem %v" : stdgo.GoString), stdgo.Go.toInterface(_hi), stdgo.Go.toInterface(_lo), stdgo.Go.toInterface(_y), stdgo.Go.toInterface(_r), stdgo.Go.toInterface(_r2));
                };
                _y = (_y + ((13u32 : stdgo.GoUInt32)) : stdgo.GoUInt32);
            });
        };
    }
function testRem64(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var __0 = (510510i64 : stdgo.GoUInt64), __1 = (9699690i64 : stdgo.GoUInt64), __2 = (510511i64 : stdgo.GoUInt64);
var _y = __2, _lo = __1, _hi = __0;
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (1000 : stdgo.GoInt) : Bool), _i++, {
                var _r = rem64(_hi, _lo, _y);
                var __tmp__ = div64(_hi, _lo, _y), __0:stdgo.GoUInt64 = __tmp__._0, _r2:stdgo.GoUInt64 = __tmp__._1;
                if (_r != (_r2)) {
                    _t.errorf(("Rem64(%v, %v, %v) returned %v, but Div64 returned rem %v" : stdgo.GoString), stdgo.Go.toInterface(_hi), stdgo.Go.toInterface(_lo), stdgo.Go.toInterface(_y), stdgo.Go.toInterface(_r), stdgo.Go.toInterface(_r2));
                };
                _y = (_y + ((13i64 : stdgo.GoUInt64)) : stdgo.GoUInt64);
            });
        };
    }
function testRem64Overflow(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var rem64Tests = (new stdgo.Slice<T__struct_7>(7, 7, ...[({ _hi : (42i64 : stdgo.GoUInt64), _lo : (1119i64 : stdgo.GoUInt64), _y : (42i64 : stdgo.GoUInt64), _rem : (27i64 : stdgo.GoUInt64) } : T__struct_7), ({ _hi : (42i64 : stdgo.GoUInt64), _lo : (1119i64 : stdgo.GoUInt64), _y : (38i64 : stdgo.GoUInt64), _rem : (9i64 : stdgo.GoUInt64) } : T__struct_7), ({ _hi : (42i64 : stdgo.GoUInt64), _lo : (1119i64 : stdgo.GoUInt64), _y : (26i64 : stdgo.GoUInt64), _rem : (23i64 : stdgo.GoUInt64) } : T__struct_7), ({ _hi : (469i64 : stdgo.GoUInt64), _lo : (0i64 : stdgo.GoUInt64), _y : (467i64 : stdgo.GoUInt64), _rem : (271i64 : stdgo.GoUInt64) } : T__struct_7), ({ _hi : (469i64 : stdgo.GoUInt64), _lo : (0i64 : stdgo.GoUInt64), _y : (113i64 : stdgo.GoUInt64), _rem : (58i64 : stdgo.GoUInt64) } : T__struct_7), ({ _hi : (111111i64 : stdgo.GoUInt64), _lo : (111111i64 : stdgo.GoUInt64), _y : (1171i64 : stdgo.GoUInt64), _rem : (803i64 : stdgo.GoUInt64) } : T__struct_7), ({ _hi : (3968194946088682615i64 : stdgo.GoUInt64), _lo : (3192705705065114702i64 : stdgo.GoUInt64), _y : (1000037i64 : stdgo.GoUInt64), _rem : (56067i64 : stdgo.GoUInt64) } : T__struct_7)].concat([for (i in 7 ... (7 > 7 ? 7 : 7 : stdgo.GoInt).toBasic()) ({ _hi : (0 : stdgo.GoUInt64), _lo : (0 : stdgo.GoUInt64), _y : (0 : stdgo.GoUInt64), _rem : (0 : stdgo.GoUInt64) } : T__struct_7)])) : stdgo.Slice<T__struct_7>);
        for (__0 => _rt in rem64Tests) {
            if ((_rt._hi < _rt._y : Bool)) {
                _t.fatalf(("Rem64(%v, %v, %v) is not a test with quo overflow" : stdgo.GoString), stdgo.Go.toInterface(_rt._hi), stdgo.Go.toInterface(_rt._lo), stdgo.Go.toInterface(_rt._y));
            };
            var _rem = rem64(_rt._hi, _rt._lo, _rt._y);
            if (_rem != (_rt._rem)) {
                _t.errorf(("Rem64(%v, %v, %v) returned %v, wanted %v" : stdgo.GoString), stdgo.Go.toInterface(_rt._hi), stdgo.Go.toInterface(_rt._lo), stdgo.Go.toInterface(_rt._y), stdgo.Go.toInterface(_rem), stdgo.Go.toInterface(_rt._rem));
            };
        };
    }
function benchmarkAdd(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        var __0:stdgo.GoUInt = (0 : stdgo.GoUInt), __1:stdgo.GoUInt = (0 : stdgo.GoUInt);
var _c = __1, _z = __0;
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                {
                    var __tmp__ = add((input : stdgo.GoUInt), (_i : stdgo.GoUInt), _c);
                    _z = __tmp__._0;
                    _c = __tmp__._1;
                };
            });
        };
        output = ((_z + _c : stdgo.GoUInt) : stdgo.GoInt);
    }
function benchmarkAdd32(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        var __0:stdgo.GoUInt32 = (0 : stdgo.GoUInt32), __1:stdgo.GoUInt32 = (0 : stdgo.GoUInt32);
var _c = __1, _z = __0;
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                {
                    var __tmp__ = add32((input : stdgo.GoUInt32), (_i : stdgo.GoUInt32), _c);
                    _z = __tmp__._0;
                    _c = __tmp__._1;
                };
            });
        };
        output = ((_z + _c : stdgo.GoUInt32) : stdgo.GoInt);
    }
function benchmarkAdd64(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        var __0:stdgo.GoUInt64 = (0 : stdgo.GoUInt64), __1:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
var _c = __1, _z = __0;
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                {
                    var __tmp__ = add64((input : stdgo.GoUInt64), (_i : stdgo.GoUInt64), _c);
                    _z = __tmp__._0;
                    _c = __tmp__._1;
                };
            });
        };
        output = ((_z + _c : stdgo.GoUInt64) : stdgo.GoInt);
    }
function benchmarkAdd64multiple(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        var _z0:stdgo.GoUInt64 = (input : stdgo.GoUInt64);
        var _z1:stdgo.GoUInt64 = (input : stdgo.GoUInt64);
        var _z2:stdgo.GoUInt64 = (input : stdgo.GoUInt64);
        var _z3:stdgo.GoUInt64 = (input : stdgo.GoUInt64);
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                var _c:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
                {
                    var __tmp__ = add64(_z0, (_i : stdgo.GoUInt64), _c);
                    _z0 = __tmp__._0;
                    _c = __tmp__._1;
                };
                {
                    var __tmp__ = add64(_z1, (_i : stdgo.GoUInt64), _c);
                    _z1 = __tmp__._0;
                    _c = __tmp__._1;
                };
                {
                    var __tmp__ = add64(_z2, (_i : stdgo.GoUInt64), _c);
                    _z2 = __tmp__._0;
                    _c = __tmp__._1;
                };
                {
                    var __tmp__ = add64(_z3, (_i : stdgo.GoUInt64), _c);
                    _z3 = __tmp__._0;
                };
            });
        };
        output = ((((_z0 + _z1 : stdgo.GoUInt64) + _z2 : stdgo.GoUInt64) + _z3 : stdgo.GoUInt64) : stdgo.GoInt);
    }
function benchmarkSub(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        var __0:stdgo.GoUInt = (0 : stdgo.GoUInt), __1:stdgo.GoUInt = (0 : stdgo.GoUInt);
var _c = __1, _z = __0;
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                {
                    var __tmp__ = sub((input : stdgo.GoUInt), (_i : stdgo.GoUInt), _c);
                    _z = __tmp__._0;
                    _c = __tmp__._1;
                };
            });
        };
        output = ((_z + _c : stdgo.GoUInt) : stdgo.GoInt);
    }
function benchmarkSub32(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        var __0:stdgo.GoUInt32 = (0 : stdgo.GoUInt32), __1:stdgo.GoUInt32 = (0 : stdgo.GoUInt32);
var _c = __1, _z = __0;
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                {
                    var __tmp__ = sub32((input : stdgo.GoUInt32), (_i : stdgo.GoUInt32), _c);
                    _z = __tmp__._0;
                    _c = __tmp__._1;
                };
            });
        };
        output = ((_z + _c : stdgo.GoUInt32) : stdgo.GoInt);
    }
function benchmarkSub64(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        var __0:stdgo.GoUInt64 = (0 : stdgo.GoUInt64), __1:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
var _c = __1, _z = __0;
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                {
                    var __tmp__ = sub64((input : stdgo.GoUInt64), (_i : stdgo.GoUInt64), _c);
                    _z = __tmp__._0;
                    _c = __tmp__._1;
                };
            });
        };
        output = ((_z + _c : stdgo.GoUInt64) : stdgo.GoInt);
    }
function benchmarkSub64multiple(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        var _z0:stdgo.GoUInt64 = (input : stdgo.GoUInt64);
        var _z1:stdgo.GoUInt64 = (input : stdgo.GoUInt64);
        var _z2:stdgo.GoUInt64 = (input : stdgo.GoUInt64);
        var _z3:stdgo.GoUInt64 = (input : stdgo.GoUInt64);
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                var _c:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
                {
                    var __tmp__ = sub64(_z0, (_i : stdgo.GoUInt64), _c);
                    _z0 = __tmp__._0;
                    _c = __tmp__._1;
                };
                {
                    var __tmp__ = sub64(_z1, (_i : stdgo.GoUInt64), _c);
                    _z1 = __tmp__._0;
                    _c = __tmp__._1;
                };
                {
                    var __tmp__ = sub64(_z2, (_i : stdgo.GoUInt64), _c);
                    _z2 = __tmp__._0;
                    _c = __tmp__._1;
                };
                {
                    var __tmp__ = sub64(_z3, (_i : stdgo.GoUInt64), _c);
                    _z3 = __tmp__._0;
                };
            });
        };
        output = ((((_z0 + _z1 : stdgo.GoUInt64) + _z2 : stdgo.GoUInt64) + _z3 : stdgo.GoUInt64) : stdgo.GoInt);
    }
function benchmarkMul(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        var __0:stdgo.GoUInt = (0 : stdgo.GoUInt), __1:stdgo.GoUInt = (0 : stdgo.GoUInt);
var _lo = __1, _hi = __0;
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                {
                    var __tmp__ = mul((input : stdgo.GoUInt), (_i : stdgo.GoUInt));
                    _hi = __tmp__._0;
                    _lo = __tmp__._1;
                };
            });
        };
        output = ((_hi + _lo : stdgo.GoUInt) : stdgo.GoInt);
    }
function benchmarkMul32(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        var __0:stdgo.GoUInt32 = (0 : stdgo.GoUInt32), __1:stdgo.GoUInt32 = (0 : stdgo.GoUInt32);
var _lo = __1, _hi = __0;
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                {
                    var __tmp__ = mul32((input : stdgo.GoUInt32), (_i : stdgo.GoUInt32));
                    _hi = __tmp__._0;
                    _lo = __tmp__._1;
                };
            });
        };
        output = ((_hi + _lo : stdgo.GoUInt32) : stdgo.GoInt);
    }
function benchmarkMul64(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        var __0:stdgo.GoUInt64 = (0 : stdgo.GoUInt64), __1:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
var _lo = __1, _hi = __0;
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                {
                    var __tmp__ = mul64((input : stdgo.GoUInt64), (_i : stdgo.GoUInt64));
                    _hi = __tmp__._0;
                    _lo = __tmp__._1;
                };
            });
        };
        output = ((_hi + _lo : stdgo.GoUInt64) : stdgo.GoInt);
    }
function benchmarkDiv(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        var __0:stdgo.GoUInt = (0 : stdgo.GoUInt), __1:stdgo.GoUInt = (0 : stdgo.GoUInt);
var _r = __1, _q = __0;
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                {
                    var __tmp__ = div((1u32 : stdgo.GoUInt), (_i : stdgo.GoUInt), (input : stdgo.GoUInt));
                    _q = __tmp__._0;
                    _r = __tmp__._1;
                };
            });
        };
        output = ((_q + _r : stdgo.GoUInt) : stdgo.GoInt);
    }
function benchmarkDiv32(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        var __0:stdgo.GoUInt32 = (0 : stdgo.GoUInt32), __1:stdgo.GoUInt32 = (0 : stdgo.GoUInt32);
var _r = __1, _q = __0;
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                {
                    var __tmp__ = div32((1u32 : stdgo.GoUInt32), (_i : stdgo.GoUInt32), (input : stdgo.GoUInt32));
                    _q = __tmp__._0;
                    _r = __tmp__._1;
                };
            });
        };
        output = ((_q + _r : stdgo.GoUInt32) : stdgo.GoInt);
    }
function benchmarkDiv64(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        var __0:stdgo.GoUInt64 = (0 : stdgo.GoUInt64), __1:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
var _r = __1, _q = __0;
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                {
                    var __tmp__ = div64((1i64 : stdgo.GoUInt64), (_i : stdgo.GoUInt64), (input : stdgo.GoUInt64));
                    _q = __tmp__._0;
                    _r = __tmp__._1;
                };
            });
        };
        output = ((_q + _r : stdgo.GoUInt64) : stdgo.GoInt);
    }
function exampleAdd32():Void {
        var _n1 = (new stdgo.Slice<stdgo.GoUInt32>(2, 2, ...[(33u32 : stdgo.GoUInt32), (12u32 : stdgo.GoUInt32)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt32>);
        var _n2 = (new stdgo.Slice<stdgo.GoUInt32>(2, 2, ...[(21u32 : stdgo.GoUInt32), (23u32 : stdgo.GoUInt32)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt32>);
        var __tmp__ = stdgo._internal.math.bits.Bits.add32(_n1[(1 : stdgo.GoInt)], _n2[(1 : stdgo.GoInt)], (0u32 : stdgo.GoUInt32)), _d1:stdgo.GoUInt32 = __tmp__._0, _carry:stdgo.GoUInt32 = __tmp__._1;
        var __tmp__ = stdgo._internal.math.bits.Bits.add32(_n1[(0 : stdgo.GoInt)], _n2[(0 : stdgo.GoInt)], _carry), _d0:stdgo.GoUInt32 = __tmp__._0, __0:stdgo.GoUInt32 = __tmp__._1;
        var _nsum = (new stdgo.Slice<stdgo.GoUInt32>(2, 2, ...[_d0, _d1]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt32>);
        stdgo._internal.fmt.Fmt.printf(("%v + %v = %v (carry bit was %v)\n" : stdgo.GoString), stdgo.Go.toInterface(_n1), stdgo.Go.toInterface(_n2), stdgo.Go.toInterface(_nsum), stdgo.Go.toInterface(_carry));
        _n1 = (new stdgo.Slice<stdgo.GoUInt32>(2, 2, ...[(1u32 : stdgo.GoUInt32), (-2147483648u32 : stdgo.GoUInt32)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt32>);
        _n2 = (new stdgo.Slice<stdgo.GoUInt32>(2, 2, ...[(1u32 : stdgo.GoUInt32), (-2147483648u32 : stdgo.GoUInt32)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt32>);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits.add32(_n1[(1 : stdgo.GoInt)], _n2[(1 : stdgo.GoInt)], (0u32 : stdgo.GoUInt32));
            _d1 = __tmp__._0;
            _carry = __tmp__._1;
        };
        {
            var __tmp__ = stdgo._internal.math.bits.Bits.add32(_n1[(0 : stdgo.GoInt)], _n2[(0 : stdgo.GoInt)], _carry);
            _d0 = __tmp__._0;
        };
        _nsum = (new stdgo.Slice<stdgo.GoUInt32>(2, 2, ...[_d0, _d1]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt32>);
        stdgo._internal.fmt.Fmt.printf(("%v + %v = %v (carry bit was %v)\n" : stdgo.GoString), stdgo.Go.toInterface(_n1), stdgo.Go.toInterface(_n2), stdgo.Go.toInterface(_nsum), stdgo.Go.toInterface(_carry));
    }
function exampleAdd64():Void {
        var _n1 = (new stdgo.Slice<stdgo.GoUInt64>(2, 2, ...[(33i64 : stdgo.GoUInt64), (12i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.Slice<stdgo.GoUInt64>);
        var _n2 = (new stdgo.Slice<stdgo.GoUInt64>(2, 2, ...[(21i64 : stdgo.GoUInt64), (23i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.Slice<stdgo.GoUInt64>);
        var __tmp__ = stdgo._internal.math.bits.Bits.add64(_n1[(1 : stdgo.GoInt)], _n2[(1 : stdgo.GoInt)], (0i64 : stdgo.GoUInt64)), _d1:stdgo.GoUInt64 = __tmp__._0, _carry:stdgo.GoUInt64 = __tmp__._1;
        var __tmp__ = stdgo._internal.math.bits.Bits.add64(_n1[(0 : stdgo.GoInt)], _n2[(0 : stdgo.GoInt)], _carry), _d0:stdgo.GoUInt64 = __tmp__._0, __0:stdgo.GoUInt64 = __tmp__._1;
        var _nsum = (new stdgo.Slice<stdgo.GoUInt64>(2, 2, ...[_d0, _d1]).__setNumber64__() : stdgo.Slice<stdgo.GoUInt64>);
        stdgo._internal.fmt.Fmt.printf(("%v + %v = %v (carry bit was %v)\n" : stdgo.GoString), stdgo.Go.toInterface(_n1), stdgo.Go.toInterface(_n2), stdgo.Go.toInterface(_nsum), stdgo.Go.toInterface(_carry));
        _n1 = (new stdgo.Slice<stdgo.GoUInt64>(2, 2, ...[(1i64 : stdgo.GoUInt64), (-9223372036854775808i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.Slice<stdgo.GoUInt64>);
        _n2 = (new stdgo.Slice<stdgo.GoUInt64>(2, 2, ...[(1i64 : stdgo.GoUInt64), (-9223372036854775808i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.Slice<stdgo.GoUInt64>);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits.add64(_n1[(1 : stdgo.GoInt)], _n2[(1 : stdgo.GoInt)], (0i64 : stdgo.GoUInt64));
            _d1 = __tmp__._0;
            _carry = __tmp__._1;
        };
        {
            var __tmp__ = stdgo._internal.math.bits.Bits.add64(_n1[(0 : stdgo.GoInt)], _n2[(0 : stdgo.GoInt)], _carry);
            _d0 = __tmp__._0;
        };
        _nsum = (new stdgo.Slice<stdgo.GoUInt64>(2, 2, ...[_d0, _d1]).__setNumber64__() : stdgo.Slice<stdgo.GoUInt64>);
        stdgo._internal.fmt.Fmt.printf(("%v + %v = %v (carry bit was %v)\n" : stdgo.GoString), stdgo.Go.toInterface(_n1), stdgo.Go.toInterface(_n2), stdgo.Go.toInterface(_nsum), stdgo.Go.toInterface(_carry));
    }
function exampleSub32():Void {
        var _n1 = (new stdgo.Slice<stdgo.GoUInt32>(2, 2, ...[(33u32 : stdgo.GoUInt32), (23u32 : stdgo.GoUInt32)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt32>);
        var _n2 = (new stdgo.Slice<stdgo.GoUInt32>(2, 2, ...[(21u32 : stdgo.GoUInt32), (12u32 : stdgo.GoUInt32)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt32>);
        var __tmp__ = stdgo._internal.math.bits.Bits.sub32(_n1[(1 : stdgo.GoInt)], _n2[(1 : stdgo.GoInt)], (0u32 : stdgo.GoUInt32)), _d1:stdgo.GoUInt32 = __tmp__._0, _carry:stdgo.GoUInt32 = __tmp__._1;
        var __tmp__ = stdgo._internal.math.bits.Bits.sub32(_n1[(0 : stdgo.GoInt)], _n2[(0 : stdgo.GoInt)], _carry), _d0:stdgo.GoUInt32 = __tmp__._0, __0:stdgo.GoUInt32 = __tmp__._1;
        var _nsum = (new stdgo.Slice<stdgo.GoUInt32>(2, 2, ...[_d0, _d1]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt32>);
        stdgo._internal.fmt.Fmt.printf(("%v - %v = %v (carry bit was %v)\n" : stdgo.GoString), stdgo.Go.toInterface(_n1), stdgo.Go.toInterface(_n2), stdgo.Go.toInterface(_nsum), stdgo.Go.toInterface(_carry));
        _n1 = (new stdgo.Slice<stdgo.GoUInt32>(2, 2, ...[(3u32 : stdgo.GoUInt32), (2147483647u32 : stdgo.GoUInt32)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt32>);
        _n2 = (new stdgo.Slice<stdgo.GoUInt32>(2, 2, ...[(1u32 : stdgo.GoUInt32), (-2147483648u32 : stdgo.GoUInt32)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt32>);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits.sub32(_n1[(1 : stdgo.GoInt)], _n2[(1 : stdgo.GoInt)], (0u32 : stdgo.GoUInt32));
            _d1 = __tmp__._0;
            _carry = __tmp__._1;
        };
        {
            var __tmp__ = stdgo._internal.math.bits.Bits.sub32(_n1[(0 : stdgo.GoInt)], _n2[(0 : stdgo.GoInt)], _carry);
            _d0 = __tmp__._0;
        };
        _nsum = (new stdgo.Slice<stdgo.GoUInt32>(2, 2, ...[_d0, _d1]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt32>);
        stdgo._internal.fmt.Fmt.printf(("%v - %v = %v (carry bit was %v)\n" : stdgo.GoString), stdgo.Go.toInterface(_n1), stdgo.Go.toInterface(_n2), stdgo.Go.toInterface(_nsum), stdgo.Go.toInterface(_carry));
    }
function exampleSub64():Void {
        var _n1 = (new stdgo.Slice<stdgo.GoUInt64>(2, 2, ...[(33i64 : stdgo.GoUInt64), (23i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.Slice<stdgo.GoUInt64>);
        var _n2 = (new stdgo.Slice<stdgo.GoUInt64>(2, 2, ...[(21i64 : stdgo.GoUInt64), (12i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.Slice<stdgo.GoUInt64>);
        var __tmp__ = stdgo._internal.math.bits.Bits.sub64(_n1[(1 : stdgo.GoInt)], _n2[(1 : stdgo.GoInt)], (0i64 : stdgo.GoUInt64)), _d1:stdgo.GoUInt64 = __tmp__._0, _carry:stdgo.GoUInt64 = __tmp__._1;
        var __tmp__ = stdgo._internal.math.bits.Bits.sub64(_n1[(0 : stdgo.GoInt)], _n2[(0 : stdgo.GoInt)], _carry), _d0:stdgo.GoUInt64 = __tmp__._0, __0:stdgo.GoUInt64 = __tmp__._1;
        var _nsum = (new stdgo.Slice<stdgo.GoUInt64>(2, 2, ...[_d0, _d1]).__setNumber64__() : stdgo.Slice<stdgo.GoUInt64>);
        stdgo._internal.fmt.Fmt.printf(("%v - %v = %v (carry bit was %v)\n" : stdgo.GoString), stdgo.Go.toInterface(_n1), stdgo.Go.toInterface(_n2), stdgo.Go.toInterface(_nsum), stdgo.Go.toInterface(_carry));
        _n1 = (new stdgo.Slice<stdgo.GoUInt64>(2, 2, ...[(3i64 : stdgo.GoUInt64), (9223372036854775807i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.Slice<stdgo.GoUInt64>);
        _n2 = (new stdgo.Slice<stdgo.GoUInt64>(2, 2, ...[(1i64 : stdgo.GoUInt64), (-9223372036854775808i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.Slice<stdgo.GoUInt64>);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits.sub64(_n1[(1 : stdgo.GoInt)], _n2[(1 : stdgo.GoInt)], (0i64 : stdgo.GoUInt64));
            _d1 = __tmp__._0;
            _carry = __tmp__._1;
        };
        {
            var __tmp__ = stdgo._internal.math.bits.Bits.sub64(_n1[(0 : stdgo.GoInt)], _n2[(0 : stdgo.GoInt)], _carry);
            _d0 = __tmp__._0;
        };
        _nsum = (new stdgo.Slice<stdgo.GoUInt64>(2, 2, ...[_d0, _d1]).__setNumber64__() : stdgo.Slice<stdgo.GoUInt64>);
        stdgo._internal.fmt.Fmt.printf(("%v - %v = %v (carry bit was %v)\n" : stdgo.GoString), stdgo.Go.toInterface(_n1), stdgo.Go.toInterface(_n2), stdgo.Go.toInterface(_nsum), stdgo.Go.toInterface(_carry));
    }
function exampleMul32():Void {
        var _n1 = (new stdgo.Slice<stdgo.GoUInt32>(2, 2, ...[(0u32 : stdgo.GoUInt32), (12u32 : stdgo.GoUInt32)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt32>);
        var _n2 = (new stdgo.Slice<stdgo.GoUInt32>(2, 2, ...[(0u32 : stdgo.GoUInt32), (12u32 : stdgo.GoUInt32)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt32>);
        var __tmp__ = stdgo._internal.math.bits.Bits.mul32(_n1[(1 : stdgo.GoInt)], _n2[(1 : stdgo.GoInt)]), _hi:stdgo.GoUInt32 = __tmp__._0, _lo:stdgo.GoUInt32 = __tmp__._1;
        var _nsum = (new stdgo.Slice<stdgo.GoUInt32>(2, 2, ...[_hi, _lo]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt32>);
        stdgo._internal.fmt.Fmt.printf(("%v * %v = %v\n" : stdgo.GoString), stdgo.Go.toInterface(_n1[(1 : stdgo.GoInt)]), stdgo.Go.toInterface(_n2[(1 : stdgo.GoInt)]), stdgo.Go.toInterface(_nsum));
        _n1 = (new stdgo.Slice<stdgo.GoUInt32>(2, 2, ...[(0u32 : stdgo.GoUInt32), (-2147483648u32 : stdgo.GoUInt32)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt32>);
        _n2 = (new stdgo.Slice<stdgo.GoUInt32>(2, 2, ...[(0u32 : stdgo.GoUInt32), (2u32 : stdgo.GoUInt32)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt32>);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits.mul32(_n1[(1 : stdgo.GoInt)], _n2[(1 : stdgo.GoInt)]);
            _hi = __tmp__._0;
            _lo = __tmp__._1;
        };
        _nsum = (new stdgo.Slice<stdgo.GoUInt32>(2, 2, ...[_hi, _lo]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt32>);
        stdgo._internal.fmt.Fmt.printf(("%v * %v = %v\n" : stdgo.GoString), stdgo.Go.toInterface(_n1[(1 : stdgo.GoInt)]), stdgo.Go.toInterface(_n2[(1 : stdgo.GoInt)]), stdgo.Go.toInterface(_nsum));
    }
function exampleMul64():Void {
        var _n1 = (new stdgo.Slice<stdgo.GoUInt64>(2, 2, ...[(0i64 : stdgo.GoUInt64), (12i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.Slice<stdgo.GoUInt64>);
        var _n2 = (new stdgo.Slice<stdgo.GoUInt64>(2, 2, ...[(0i64 : stdgo.GoUInt64), (12i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.Slice<stdgo.GoUInt64>);
        var __tmp__ = stdgo._internal.math.bits.Bits.mul64(_n1[(1 : stdgo.GoInt)], _n2[(1 : stdgo.GoInt)]), _hi:stdgo.GoUInt64 = __tmp__._0, _lo:stdgo.GoUInt64 = __tmp__._1;
        var _nsum = (new stdgo.Slice<stdgo.GoUInt64>(2, 2, ...[_hi, _lo]).__setNumber64__() : stdgo.Slice<stdgo.GoUInt64>);
        stdgo._internal.fmt.Fmt.printf(("%v * %v = %v\n" : stdgo.GoString), stdgo.Go.toInterface(_n1[(1 : stdgo.GoInt)]), stdgo.Go.toInterface(_n2[(1 : stdgo.GoInt)]), stdgo.Go.toInterface(_nsum));
        _n1 = (new stdgo.Slice<stdgo.GoUInt64>(2, 2, ...[(0i64 : stdgo.GoUInt64), (-9223372036854775808i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.Slice<stdgo.GoUInt64>);
        _n2 = (new stdgo.Slice<stdgo.GoUInt64>(2, 2, ...[(0i64 : stdgo.GoUInt64), (2i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.Slice<stdgo.GoUInt64>);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits.mul64(_n1[(1 : stdgo.GoInt)], _n2[(1 : stdgo.GoInt)]);
            _hi = __tmp__._0;
            _lo = __tmp__._1;
        };
        _nsum = (new stdgo.Slice<stdgo.GoUInt64>(2, 2, ...[_hi, _lo]).__setNumber64__() : stdgo.Slice<stdgo.GoUInt64>);
        stdgo._internal.fmt.Fmt.printf(("%v * %v = %v\n" : stdgo.GoString), stdgo.Go.toInterface(_n1[(1 : stdgo.GoInt)]), stdgo.Go.toInterface(_n2[(1 : stdgo.GoInt)]), stdgo.Go.toInterface(_nsum));
    }
function exampleDiv32():Void {
        var _n1 = (new stdgo.Slice<stdgo.GoUInt32>(2, 2, ...[(0u32 : stdgo.GoUInt32), (6u32 : stdgo.GoUInt32)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt32>);
        var _n2 = (new stdgo.Slice<stdgo.GoUInt32>(2, 2, ...[(0u32 : stdgo.GoUInt32), (3u32 : stdgo.GoUInt32)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt32>);
        var __tmp__ = stdgo._internal.math.bits.Bits.div32(_n1[(0 : stdgo.GoInt)], _n1[(1 : stdgo.GoInt)], _n2[(1 : stdgo.GoInt)]), _quo:stdgo.GoUInt32 = __tmp__._0, _rem:stdgo.GoUInt32 = __tmp__._1;
        var _nsum = (new stdgo.Slice<stdgo.GoUInt32>(2, 2, ...[_quo, _rem]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt32>);
        stdgo._internal.fmt.Fmt.printf(("[%v %v] / %v = %v\n" : stdgo.GoString), stdgo.Go.toInterface(_n1[(0 : stdgo.GoInt)]), stdgo.Go.toInterface(_n1[(1 : stdgo.GoInt)]), stdgo.Go.toInterface(_n2[(1 : stdgo.GoInt)]), stdgo.Go.toInterface(_nsum));
        _n1 = (new stdgo.Slice<stdgo.GoUInt32>(2, 2, ...[(2u32 : stdgo.GoUInt32), (-2147483648u32 : stdgo.GoUInt32)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt32>);
        _n2 = (new stdgo.Slice<stdgo.GoUInt32>(2, 2, ...[(0u32 : stdgo.GoUInt32), (-2147483648u32 : stdgo.GoUInt32)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt32>);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits.div32(_n1[(0 : stdgo.GoInt)], _n1[(1 : stdgo.GoInt)], _n2[(1 : stdgo.GoInt)]);
            _quo = __tmp__._0;
            _rem = __tmp__._1;
        };
        _nsum = (new stdgo.Slice<stdgo.GoUInt32>(2, 2, ...[_quo, _rem]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt32>);
        stdgo._internal.fmt.Fmt.printf(("[%v %v] / %v = %v\n" : stdgo.GoString), stdgo.Go.toInterface(_n1[(0 : stdgo.GoInt)]), stdgo.Go.toInterface(_n1[(1 : stdgo.GoInt)]), stdgo.Go.toInterface(_n2[(1 : stdgo.GoInt)]), stdgo.Go.toInterface(_nsum));
    }
function exampleDiv64():Void {
        var _n1 = (new stdgo.Slice<stdgo.GoUInt64>(2, 2, ...[(0i64 : stdgo.GoUInt64), (6i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.Slice<stdgo.GoUInt64>);
        var _n2 = (new stdgo.Slice<stdgo.GoUInt64>(2, 2, ...[(0i64 : stdgo.GoUInt64), (3i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.Slice<stdgo.GoUInt64>);
        var __tmp__ = stdgo._internal.math.bits.Bits.div64(_n1[(0 : stdgo.GoInt)], _n1[(1 : stdgo.GoInt)], _n2[(1 : stdgo.GoInt)]), _quo:stdgo.GoUInt64 = __tmp__._0, _rem:stdgo.GoUInt64 = __tmp__._1;
        var _nsum = (new stdgo.Slice<stdgo.GoUInt64>(2, 2, ...[_quo, _rem]).__setNumber64__() : stdgo.Slice<stdgo.GoUInt64>);
        stdgo._internal.fmt.Fmt.printf(("[%v %v] / %v = %v\n" : stdgo.GoString), stdgo.Go.toInterface(_n1[(0 : stdgo.GoInt)]), stdgo.Go.toInterface(_n1[(1 : stdgo.GoInt)]), stdgo.Go.toInterface(_n2[(1 : stdgo.GoInt)]), stdgo.Go.toInterface(_nsum));
        _n1 = (new stdgo.Slice<stdgo.GoUInt64>(2, 2, ...[(2i64 : stdgo.GoUInt64), (-9223372036854775808i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.Slice<stdgo.GoUInt64>);
        _n2 = (new stdgo.Slice<stdgo.GoUInt64>(2, 2, ...[(0i64 : stdgo.GoUInt64), (-9223372036854775808i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.Slice<stdgo.GoUInt64>);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits.div64(_n1[(0 : stdgo.GoInt)], _n1[(1 : stdgo.GoInt)], _n2[(1 : stdgo.GoInt)]);
            _quo = __tmp__._0;
            _rem = __tmp__._1;
        };
        _nsum = (new stdgo.Slice<stdgo.GoUInt64>(2, 2, ...[_quo, _rem]).__setNumber64__() : stdgo.Slice<stdgo.GoUInt64>);
        stdgo._internal.fmt.Fmt.printf(("[%v %v] / %v = %v\n" : stdgo.GoString), stdgo.Go.toInterface(_n1[(0 : stdgo.GoInt)]), stdgo.Go.toInterface(_n1[(1 : stdgo.GoInt)]), stdgo.Go.toInterface(_n2[(1 : stdgo.GoInt)]), stdgo.Go.toInterface(_nsum));
    }
function exampleLeadingZeros8():Void {
        stdgo._internal.fmt.Fmt.printf(("LeadingZeros8(%08b) = %d\n" : stdgo.GoString), stdgo.Go.toInterface((1 : stdgo.GoInt)), stdgo.Go.toInterface(stdgo._internal.math.bits.Bits.leadingZeros8((1 : stdgo.GoUInt8))));
    }
function exampleLeadingZeros16():Void {
        stdgo._internal.fmt.Fmt.printf(("LeadingZeros16(%016b) = %d\n" : stdgo.GoString), stdgo.Go.toInterface((1 : stdgo.GoInt)), stdgo.Go.toInterface(stdgo._internal.math.bits.Bits.leadingZeros16((1 : stdgo.GoUInt16))));
    }
function exampleLeadingZeros32():Void {
        stdgo._internal.fmt.Fmt.printf(("LeadingZeros32(%032b) = %d\n" : stdgo.GoString), stdgo.Go.toInterface((1 : stdgo.GoInt)), stdgo.Go.toInterface(stdgo._internal.math.bits.Bits.leadingZeros32((1u32 : stdgo.GoUInt32))));
    }
function exampleLeadingZeros64():Void {
        stdgo._internal.fmt.Fmt.printf(("LeadingZeros64(%064b) = %d\n" : stdgo.GoString), stdgo.Go.toInterface((1 : stdgo.GoInt)), stdgo.Go.toInterface(stdgo._internal.math.bits.Bits.leadingZeros64((1i64 : stdgo.GoUInt64))));
    }
function exampleTrailingZeros8():Void {
        stdgo._internal.fmt.Fmt.printf(("TrailingZeros8(%08b) = %d\n" : stdgo.GoString), stdgo.Go.toInterface((14 : stdgo.GoInt)), stdgo.Go.toInterface(stdgo._internal.math.bits.Bits.trailingZeros8((14 : stdgo.GoUInt8))));
    }
function exampleTrailingZeros16():Void {
        stdgo._internal.fmt.Fmt.printf(("TrailingZeros16(%016b) = %d\n" : stdgo.GoString), stdgo.Go.toInterface((14 : stdgo.GoInt)), stdgo.Go.toInterface(stdgo._internal.math.bits.Bits.trailingZeros16((14 : stdgo.GoUInt16))));
    }
function exampleTrailingZeros32():Void {
        stdgo._internal.fmt.Fmt.printf(("TrailingZeros32(%032b) = %d\n" : stdgo.GoString), stdgo.Go.toInterface((14 : stdgo.GoInt)), stdgo.Go.toInterface(stdgo._internal.math.bits.Bits.trailingZeros32((14u32 : stdgo.GoUInt32))));
    }
function exampleTrailingZeros64():Void {
        stdgo._internal.fmt.Fmt.printf(("TrailingZeros64(%064b) = %d\n" : stdgo.GoString), stdgo.Go.toInterface((14 : stdgo.GoInt)), stdgo.Go.toInterface(stdgo._internal.math.bits.Bits.trailingZeros64((14i64 : stdgo.GoUInt64))));
    }
function exampleOnesCount():Void {
        stdgo._internal.fmt.Fmt.printf(("OnesCount(%b) = %d\n" : stdgo.GoString), stdgo.Go.toInterface((14 : stdgo.GoInt)), stdgo.Go.toInterface(stdgo._internal.math.bits.Bits.onesCount((14u32 : stdgo.GoUInt))));
    }
function exampleOnesCount8():Void {
        stdgo._internal.fmt.Fmt.printf(("OnesCount8(%08b) = %d\n" : stdgo.GoString), stdgo.Go.toInterface((14 : stdgo.GoInt)), stdgo.Go.toInterface(stdgo._internal.math.bits.Bits.onesCount8((14 : stdgo.GoUInt8))));
    }
function exampleOnesCount16():Void {
        stdgo._internal.fmt.Fmt.printf(("OnesCount16(%016b) = %d\n" : stdgo.GoString), stdgo.Go.toInterface((14 : stdgo.GoInt)), stdgo.Go.toInterface(stdgo._internal.math.bits.Bits.onesCount16((14 : stdgo.GoUInt16))));
    }
function exampleOnesCount32():Void {
        stdgo._internal.fmt.Fmt.printf(("OnesCount32(%032b) = %d\n" : stdgo.GoString), stdgo.Go.toInterface((14 : stdgo.GoInt)), stdgo.Go.toInterface(stdgo._internal.math.bits.Bits.onesCount32((14u32 : stdgo.GoUInt32))));
    }
function exampleOnesCount64():Void {
        stdgo._internal.fmt.Fmt.printf(("OnesCount64(%064b) = %d\n" : stdgo.GoString), stdgo.Go.toInterface((14 : stdgo.GoInt)), stdgo.Go.toInterface(stdgo._internal.math.bits.Bits.onesCount64((14i64 : stdgo.GoUInt64))));
    }
function exampleRotateLeft8():Void {
        stdgo._internal.fmt.Fmt.printf(("%08b\n" : stdgo.GoString), stdgo.Go.toInterface((15 : stdgo.GoInt)));
        stdgo._internal.fmt.Fmt.printf(("%08b\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.math.bits.Bits.rotateLeft8((15 : stdgo.GoUInt8), (2 : stdgo.GoInt))));
        stdgo._internal.fmt.Fmt.printf(("%08b\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.math.bits.Bits.rotateLeft8((15 : stdgo.GoUInt8), (-2 : stdgo.GoInt))));
    }
function exampleRotateLeft16():Void {
        stdgo._internal.fmt.Fmt.printf(("%016b\n" : stdgo.GoString), stdgo.Go.toInterface((15 : stdgo.GoInt)));
        stdgo._internal.fmt.Fmt.printf(("%016b\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.math.bits.Bits.rotateLeft16((15 : stdgo.GoUInt16), (2 : stdgo.GoInt))));
        stdgo._internal.fmt.Fmt.printf(("%016b\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.math.bits.Bits.rotateLeft16((15 : stdgo.GoUInt16), (-2 : stdgo.GoInt))));
    }
function exampleRotateLeft32():Void {
        stdgo._internal.fmt.Fmt.printf(("%032b\n" : stdgo.GoString), stdgo.Go.toInterface((15 : stdgo.GoInt)));
        stdgo._internal.fmt.Fmt.printf(("%032b\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.math.bits.Bits.rotateLeft32((15u32 : stdgo.GoUInt32), (2 : stdgo.GoInt))));
        stdgo._internal.fmt.Fmt.printf(("%032b\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.math.bits.Bits.rotateLeft32((15u32 : stdgo.GoUInt32), (-2 : stdgo.GoInt))));
    }
function exampleRotateLeft64():Void {
        stdgo._internal.fmt.Fmt.printf(("%064b\n" : stdgo.GoString), stdgo.Go.toInterface((15 : stdgo.GoInt)));
        stdgo._internal.fmt.Fmt.printf(("%064b\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.math.bits.Bits.rotateLeft64((15i64 : stdgo.GoUInt64), (2 : stdgo.GoInt))));
        stdgo._internal.fmt.Fmt.printf(("%064b\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.math.bits.Bits.rotateLeft64((15i64 : stdgo.GoUInt64), (-2 : stdgo.GoInt))));
    }
function exampleReverse8():Void {
        stdgo._internal.fmt.Fmt.printf(("%08b\n" : stdgo.GoString), stdgo.Go.toInterface((19 : stdgo.GoInt)));
        stdgo._internal.fmt.Fmt.printf(("%08b\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.math.bits.Bits.reverse8((19 : stdgo.GoUInt8))));
    }
function exampleReverse16():Void {
        stdgo._internal.fmt.Fmt.printf(("%016b\n" : stdgo.GoString), stdgo.Go.toInterface((19 : stdgo.GoInt)));
        stdgo._internal.fmt.Fmt.printf(("%016b\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.math.bits.Bits.reverse16((19 : stdgo.GoUInt16))));
    }
function exampleReverse32():Void {
        stdgo._internal.fmt.Fmt.printf(("%032b\n" : stdgo.GoString), stdgo.Go.toInterface((19 : stdgo.GoInt)));
        stdgo._internal.fmt.Fmt.printf(("%032b\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.math.bits.Bits.reverse32((19u32 : stdgo.GoUInt32))));
    }
function exampleReverse64():Void {
        stdgo._internal.fmt.Fmt.printf(("%064b\n" : stdgo.GoString), stdgo.Go.toInterface((19 : stdgo.GoInt)));
        stdgo._internal.fmt.Fmt.printf(("%064b\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.math.bits.Bits.reverse64((19i64 : stdgo.GoUInt64))));
    }
function exampleReverseBytes16():Void {
        stdgo._internal.fmt.Fmt.printf(("%016b\n" : stdgo.GoString), stdgo.Go.toInterface((15 : stdgo.GoInt)));
        stdgo._internal.fmt.Fmt.printf(("%016b\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.math.bits.Bits.reverseBytes16((15 : stdgo.GoUInt16))));
    }
function exampleReverseBytes32():Void {
        stdgo._internal.fmt.Fmt.printf(("%032b\n" : stdgo.GoString), stdgo.Go.toInterface((15 : stdgo.GoInt)));
        stdgo._internal.fmt.Fmt.printf(("%032b\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.math.bits.Bits.reverseBytes32((15u32 : stdgo.GoUInt32))));
    }
function exampleReverseBytes64():Void {
        stdgo._internal.fmt.Fmt.printf(("%064b\n" : stdgo.GoString), stdgo.Go.toInterface((15 : stdgo.GoInt)));
        stdgo._internal.fmt.Fmt.printf(("%064b\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.math.bits.Bits.reverseBytes64((15i64 : stdgo.GoUInt64))));
    }
function exampleLen8():Void {
        stdgo._internal.fmt.Fmt.printf(("Len8(%08b) = %d\n" : stdgo.GoString), stdgo.Go.toInterface((8 : stdgo.GoInt)), stdgo.Go.toInterface(stdgo._internal.math.bits.Bits.len8((8 : stdgo.GoUInt8))));
    }
function exampleLen16():Void {
        stdgo._internal.fmt.Fmt.printf(("Len16(%016b) = %d\n" : stdgo.GoString), stdgo.Go.toInterface((8 : stdgo.GoInt)), stdgo.Go.toInterface(stdgo._internal.math.bits.Bits.len16((8 : stdgo.GoUInt16))));
    }
function exampleLen32():Void {
        stdgo._internal.fmt.Fmt.printf(("Len32(%032b) = %d\n" : stdgo.GoString), stdgo.Go.toInterface((8 : stdgo.GoInt)), stdgo.Go.toInterface(stdgo._internal.math.bits.Bits.len32((8u32 : stdgo.GoUInt32))));
    }
function exampleLen64():Void {
        stdgo._internal.fmt.Fmt.printf(("Len64(%064b) = %d\n" : stdgo.GoString), stdgo.Go.toInterface((8 : stdgo.GoInt)), stdgo.Go.toInterface(stdgo._internal.math.bits.Bits.len64((8i64 : stdgo.GoUInt64))));
    }
@:keep var _ = {
        try {
            _tab[(0 : stdgo.GoInt)] = ({ _nlz : (8 : stdgo.GoInt), _ntz : (8 : stdgo.GoInt), _pop : (0 : stdgo.GoInt) } : T_entry);
            {
                var _i = (1 : stdgo.GoInt);
                stdgo.Go.cfor((_i < (_tab.length) : Bool), _i++, {
                    var _x = _i;
                    var _n = (0 : stdgo.GoInt);
                    while ((_x & (128 : stdgo.GoInt) : stdgo.GoInt) == ((0 : stdgo.GoInt))) {
                        _n++;
                        _x = (_x << ((1i64 : stdgo.GoUInt64)) : stdgo.GoInt);
                    };
                    _tab[(_i : stdgo.GoInt)]._nlz = _n;
                    _x = _i;
                    _n = (0 : stdgo.GoInt);
                    while ((_x & (1 : stdgo.GoInt) : stdgo.GoInt) == ((0 : stdgo.GoInt))) {
                        _n++;
                        _x = (_x >> ((1i64 : stdgo.GoUInt64)) : stdgo.GoInt);
                    };
                    _tab[(_i : stdgo.GoInt)]._ntz = _n;
                    _x = _i;
                    _n = (0 : stdgo.GoInt);
                    while (_x != ((0 : stdgo.GoInt))) {
                        _n = (_n + ((_x & (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoInt);
                        _x = (_x >> ((1i64 : stdgo.GoUInt64)) : stdgo.GoInt);
                    };
                    _tab[(_i : stdgo.GoInt)]._pop = _n;
                });
            };
        } catch(__exception__) if (__exception__.message != "__return__") throw __exception__;
        true;
    };
