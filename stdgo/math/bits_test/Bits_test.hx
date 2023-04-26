package stdgo.math.bits_test;
import stdgo.math.bits.Bits;
import stdgo.StdGoTypes;
import stdgo.Error;
import stdgo.Go;
import stdgo.GoString;
import stdgo.Pointer;
import stdgo.Slice;
import stdgo.GoArray;
import stdgo.GoMap;
import stdgo.Chan;
import stdgo.math.bits.Bits;
/**
    // Exported (global) variable serving as input for some
    // of the benchmarks to ensure side-effect free calls
    // are not optimized away.
    
    
**/
var input : GoUInt64 = (285870213051353865i64 : GoUInt64);
/**
    // Exported (global) variable to store function results
    // during benchmarking to ensure side-effect free calls
    // are not optimized away.
    
    
**/
var output : GoInt = (0 : GoInt);
/**
    
    
    
**/
private final __M = (4294967295i64 : GoUInt64);
/**
    
    
    
**/
private final __M32 = (4294967295i64 : GoUInt64);
/**
    
    
    
**/
private final __M64 = (-1i64 : GoUInt64);
/**
    
    
    
**/
private final _divZeroError = ("runtime error: integer divide by zero" : GoString);
/**
    
    
    
**/
private final _overflowError = ("runtime error: integer overflow" : GoString);
/**
    // tab contains results for all uint8 values
    
    
**/
private var _tab : GoArray<T_entry> = new GoArray<T_entry>(...[for (i in 0 ... 256) ({ _nlz : (0 : GoInt), _ntz : (0 : GoInt), _pop : (0 : GoInt) } : T_entry)]);
@:follow private typedef T_entry = {
    var _nlz : GoInt;
    var _ntz : GoInt;
    var _pop : GoInt;
};
class T__struct_0_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : Pointer<T__struct_0>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.math.bits_test.Bits_test.T__struct_0_asInterface) class T__struct_0_static_extension {

}
@:local @:using(stdgo.math.bits_test.Bits_test.T__struct_0_static_extension) private typedef T__struct_0 = {
    public var _x : GoUInt64;
    public var _r : GoUInt64;
};
class T__struct_1_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : Pointer<T__struct_1>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.math.bits_test.Bits_test.T__struct_1_asInterface) class T__struct_1_static_extension {

}
@:local @:using(stdgo.math.bits_test.Bits_test.T__struct_1_static_extension) private typedef T__struct_1 = {
    public var _x : GoUInt;
    public var _y : GoUInt;
    public var _c : GoUInt;
    public var _z : GoUInt;
    public var _cout : GoUInt;
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
@:keep @:allow(stdgo.math.bits_test.Bits_test.T__struct_2_asInterface) class T__struct_2_static_extension {

}
@:local @:using(stdgo.math.bits_test.Bits_test.T__struct_2_static_extension) private typedef T__struct_2 = {
    public var _x : GoUInt32;
    public var _y : GoUInt32;
    public var _c : GoUInt32;
    public var _z : GoUInt32;
    public var _cout : GoUInt32;
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
@:keep @:allow(stdgo.math.bits_test.Bits_test.T__struct_3_asInterface) class T__struct_3_static_extension {

}
@:local @:using(stdgo.math.bits_test.Bits_test.T__struct_3_static_extension) private typedef T__struct_3 = {
    public var _x : GoUInt64;
    public var _y : GoUInt64;
    public var _c : GoUInt64;
    public var _z : GoUInt64;
    public var _cout : GoUInt64;
};
class T__struct_4_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : Pointer<T__struct_4>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.math.bits_test.Bits_test.T__struct_4_asInterface) class T__struct_4_static_extension {

}
@:local @:using(stdgo.math.bits_test.Bits_test.T__struct_4_static_extension) private typedef T__struct_4 = {
    public var _x : GoUInt;
    public var _y : GoUInt;
    public var _hi : GoUInt;
    public var _lo : GoUInt;
    public var _r : GoUInt;
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
@:keep @:allow(stdgo.math.bits_test.Bits_test.T__struct_5_asInterface) class T__struct_5_static_extension {

}
@:local @:using(stdgo.math.bits_test.Bits_test.T__struct_5_static_extension) private typedef T__struct_5 = {
    public var _x : GoUInt32;
    public var _y : GoUInt32;
    public var _hi : GoUInt32;
    public var _lo : GoUInt32;
    public var _r : GoUInt32;
};
class T__struct_6_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : Pointer<T__struct_6>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.math.bits_test.Bits_test.T__struct_6_asInterface) class T__struct_6_static_extension {

}
@:local @:using(stdgo.math.bits_test.Bits_test.T__struct_6_static_extension) private typedef T__struct_6 = {
    public var _x : GoUInt64;
    public var _y : GoUInt64;
    public var _hi : GoUInt64;
    public var _lo : GoUInt64;
    public var _r : GoUInt64;
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
@:keep @:allow(stdgo.math.bits_test.Bits_test.T__struct_7_asInterface) class T__struct_7_static_extension {

}
@:local @:using(stdgo.math.bits_test.Bits_test.T__struct_7_static_extension) private typedef T__struct_7 = {
    public var _hi : GoUInt64;
    public var _lo : GoUInt64;
    public var _y : GoUInt64;
    public var _rem : GoUInt64;
};
function testUintSize(_t:Ref<stdgo.testing.Testing.T>):Void {
        var _x:GoUInt = (0 : GoUInt);
        {
            var _want:GoUIntptr = (32 : GoUIntptr);
            if ((32 : GoUIntptr) != (_want)) {
                _t.fatalf(("UintSize = %d; want %d" : GoString), Go.toInterface((32 : GoInt)), Go.toInterface(_want));
            };
        };
    }
function testLeadingZeros(_t:Ref<stdgo.testing.Testing.T>):Void {
        {
            var _i:GoInt = (0 : GoInt);
            Go.cfor(_i < (256 : GoInt), _i++, {
                var _nlz:GoInt = _tab[(_i : GoInt)]._nlz;
                {
                    var _k:GoInt = (0 : GoInt);
                    Go.cfor(_k < (56 : GoInt), _k++, {
                        var _x:GoUInt64 = (_i : GoUInt64) << (_k : GoUInt);
                        if (_x <= (255i64 : GoUInt64)) {
                            var _got:GoInt = leadingZeros8((_x : GoUInt8));
                            var _want:GoInt = (_nlz - _k) + (0 : GoInt);
                            if (_x == ((0i64 : GoUInt64))) {
                                _want = (8 : GoInt);
                            };
                            if (_got != (_want)) {
                                _t.fatalf(("LeadingZeros8(%#02x) == %d; want %d" : GoString), Go.toInterface(_x), Go.toInterface(_got), Go.toInterface(_want));
                            };
                        };
                        if (_x <= (65535i64 : GoUInt64)) {
                            var _got:GoInt = leadingZeros16((_x : GoUInt16));
                            var _want:GoInt = (_nlz - _k) + (8 : GoInt);
                            if (_x == ((0i64 : GoUInt64))) {
                                _want = (16 : GoInt);
                            };
                            if (_got != (_want)) {
                                _t.fatalf(("LeadingZeros16(%#04x) == %d; want %d" : GoString), Go.toInterface(_x), Go.toInterface(_got), Go.toInterface(_want));
                            };
                        };
                        if (_x <= (4294967295i64 : GoUInt64)) {
                            var _got:GoInt = leadingZeros32((_x : GoUInt32));
                            var _want:GoInt = (_nlz - _k) + (24 : GoInt);
                            if (_x == ((0i64 : GoUInt64))) {
                                _want = (32 : GoInt);
                            };
                            if (_got != (_want)) {
                                _t.fatalf(("LeadingZeros32(%#08x) == %d; want %d" : GoString), Go.toInterface(_x), Go.toInterface(_got), Go.toInterface(_want));
                            };
                            if (true) {
                                _got = leadingZeros((_x : GoUInt));
                                if (_got != (_want)) {
                                    _t.fatalf(("LeadingZeros(%#08x) == %d; want %d" : GoString), Go.toInterface(_x), Go.toInterface(_got), Go.toInterface(_want));
                                };
                            };
                        };
                        if (_x <= (-1i64 : GoUInt64)) {
                            var _got:GoInt = leadingZeros64((_x : GoUInt64));
                            var _want:GoInt = (_nlz - _k) + (56 : GoInt);
                            if (_x == ((0i64 : GoUInt64))) {
                                _want = (64 : GoInt);
                            };
                            if (_got != (_want)) {
                                _t.fatalf(("LeadingZeros64(%#016x) == %d; want %d" : GoString), Go.toInterface(_x), Go.toInterface(_got), Go.toInterface(_want));
                            };
                            if (false) {
                                _got = leadingZeros((_x : GoUInt));
                                if (_got != (_want)) {
                                    _t.fatalf(("LeadingZeros(%#016x) == %d; want %d" : GoString), Go.toInterface(_x), Go.toInterface(_got), Go.toInterface(_want));
                                };
                            };
                        };
                    });
                };
            });
        };
    }
function benchmarkLeadingZeros(_b:Ref<stdgo.testing.Testing.B>):Void {
        var _s:GoInt = (0 : GoInt);
        {
            var _i:GoInt = (0 : GoInt);
            Go.cfor(_i < _b.n, _i++, {
                _s = _s + (leadingZeros((input : GoUInt) >> ((_i : GoUInt) % (32u32 : GoUInt))));
            });
        };
        output = _s;
    }
function benchmarkLeadingZeros8(_b:Ref<stdgo.testing.Testing.B>):Void {
        var _s:GoInt = (0 : GoInt);
        {
            var _i:GoInt = (0 : GoInt);
            Go.cfor(_i < _b.n, _i++, {
                _s = _s + (leadingZeros8((input : GoUInt8) >> ((_i : GoUInt) % (8u32 : GoUInt))));
            });
        };
        output = _s;
    }
function benchmarkLeadingZeros16(_b:Ref<stdgo.testing.Testing.B>):Void {
        var _s:GoInt = (0 : GoInt);
        {
            var _i:GoInt = (0 : GoInt);
            Go.cfor(_i < _b.n, _i++, {
                _s = _s + (leadingZeros16((input : GoUInt16) >> ((_i : GoUInt) % (16u32 : GoUInt))));
            });
        };
        output = _s;
    }
function benchmarkLeadingZeros32(_b:Ref<stdgo.testing.Testing.B>):Void {
        var _s:GoInt = (0 : GoInt);
        {
            var _i:GoInt = (0 : GoInt);
            Go.cfor(_i < _b.n, _i++, {
                _s = _s + (leadingZeros32((input : GoUInt32) >> ((_i : GoUInt) % (32u32 : GoUInt))));
            });
        };
        output = _s;
    }
function benchmarkLeadingZeros64(_b:Ref<stdgo.testing.Testing.B>):Void {
        var _s:GoInt = (0 : GoInt);
        {
            var _i:GoInt = (0 : GoInt);
            Go.cfor(_i < _b.n, _i++, {
                _s = _s + (leadingZeros64((input : GoUInt64) >> ((_i : GoUInt) % (64u32 : GoUInt))));
            });
        };
        output = _s;
    }
function testTrailingZeros(_t:Ref<stdgo.testing.Testing.T>):Void {
        {
            var _i:GoInt = (0 : GoInt);
            Go.cfor(_i < (256 : GoInt), _i++, {
                var _ntz:GoInt = _tab[(_i : GoInt)]._ntz;
                {
                    var _k:GoInt = (0 : GoInt);
                    Go.cfor(_k < (56 : GoInt), _k++, {
                        var _x:GoUInt64 = (_i : GoUInt64) << (_k : GoUInt);
                        var _want:GoInt = _ntz + _k;
                        if (_x <= (255i64 : GoUInt64)) {
                            var _got:GoInt = trailingZeros8((_x : GoUInt8));
                            if (_x == ((0i64 : GoUInt64))) {
                                _want = (8 : GoInt);
                            };
                            if (_got != (_want)) {
                                _t.fatalf(("TrailingZeros8(%#02x) == %d; want %d" : GoString), Go.toInterface(_x), Go.toInterface(_got), Go.toInterface(_want));
                            };
                        };
                        if (_x <= (65535i64 : GoUInt64)) {
                            var _got:GoInt = trailingZeros16((_x : GoUInt16));
                            if (_x == ((0i64 : GoUInt64))) {
                                _want = (16 : GoInt);
                            };
                            if (_got != (_want)) {
                                _t.fatalf(("TrailingZeros16(%#04x) == %d; want %d" : GoString), Go.toInterface(_x), Go.toInterface(_got), Go.toInterface(_want));
                            };
                        };
                        if (_x <= (4294967295i64 : GoUInt64)) {
                            var _got:GoInt = trailingZeros32((_x : GoUInt32));
                            if (_x == ((0i64 : GoUInt64))) {
                                _want = (32 : GoInt);
                            };
                            if (_got != (_want)) {
                                _t.fatalf(("TrailingZeros32(%#08x) == %d; want %d" : GoString), Go.toInterface(_x), Go.toInterface(_got), Go.toInterface(_want));
                            };
                            if (true) {
                                _got = trailingZeros((_x : GoUInt));
                                if (_got != (_want)) {
                                    _t.fatalf(("TrailingZeros(%#08x) == %d; want %d" : GoString), Go.toInterface(_x), Go.toInterface(_got), Go.toInterface(_want));
                                };
                            };
                        };
                        if (_x <= (-1i64 : GoUInt64)) {
                            var _got:GoInt = trailingZeros64((_x : GoUInt64));
                            if (_x == ((0i64 : GoUInt64))) {
                                _want = (64 : GoInt);
                            };
                            if (_got != (_want)) {
                                _t.fatalf(("TrailingZeros64(%#016x) == %d; want %d" : GoString), Go.toInterface(_x), Go.toInterface(_got), Go.toInterface(_want));
                            };
                            if (false) {
                                _got = trailingZeros((_x : GoUInt));
                                if (_got != (_want)) {
                                    _t.fatalf(("TrailingZeros(%#016x) == %d; want %d" : GoString), Go.toInterface(_x), Go.toInterface(_got), Go.toInterface(_want));
                                };
                            };
                        };
                    });
                };
            });
        };
    }
function benchmarkTrailingZeros(_b:Ref<stdgo.testing.Testing.B>):Void {
        var _s:GoInt = (0 : GoInt);
        {
            var _i:GoInt = (0 : GoInt);
            Go.cfor(_i < _b.n, _i++, {
                _s = _s + (trailingZeros((input : GoUInt) << ((_i : GoUInt) % (32u32 : GoUInt))));
            });
        };
        output = _s;
    }
function benchmarkTrailingZeros8(_b:Ref<stdgo.testing.Testing.B>):Void {
        var _s:GoInt = (0 : GoInt);
        {
            var _i:GoInt = (0 : GoInt);
            Go.cfor(_i < _b.n, _i++, {
                _s = _s + (trailingZeros8((input : GoUInt8) << ((_i : GoUInt) % (8u32 : GoUInt))));
            });
        };
        output = _s;
    }
function benchmarkTrailingZeros16(_b:Ref<stdgo.testing.Testing.B>):Void {
        var _s:GoInt = (0 : GoInt);
        {
            var _i:GoInt = (0 : GoInt);
            Go.cfor(_i < _b.n, _i++, {
                _s = _s + (trailingZeros16((input : GoUInt16) << ((_i : GoUInt) % (16u32 : GoUInt))));
            });
        };
        output = _s;
    }
function benchmarkTrailingZeros32(_b:Ref<stdgo.testing.Testing.B>):Void {
        var _s:GoInt = (0 : GoInt);
        {
            var _i:GoInt = (0 : GoInt);
            Go.cfor(_i < _b.n, _i++, {
                _s = _s + (trailingZeros32((input : GoUInt32) << ((_i : GoUInt) % (32u32 : GoUInt))));
            });
        };
        output = _s;
    }
function benchmarkTrailingZeros64(_b:Ref<stdgo.testing.Testing.B>):Void {
        var _s:GoInt = (0 : GoInt);
        {
            var _i:GoInt = (0 : GoInt);
            Go.cfor(_i < _b.n, _i++, {
                _s = _s + (trailingZeros64((input : GoUInt64) << ((_i : GoUInt) % (64u32 : GoUInt))));
            });
        };
        output = _s;
    }
function testOnesCount(_t:Ref<stdgo.testing.Testing.T>):Void {
        var _x:GoUInt64 = (0 : GoUInt64);
        {
            var _i:GoInt = (0 : GoInt);
            Go.cfor(_i <= (64 : GoInt), _i++, {
                _testOnesCount(_t, _x, _i);
                _x = (_x << (1i64 : GoUInt64)) | (1i64 : GoUInt64);
            });
        };
        {
            var _i:GoInt = (64 : GoInt);
            Go.cfor(_i >= (0 : GoInt), _i--, {
                _testOnesCount(_t, _x, _i);
                _x = _x << (1i64 : GoUInt64);
            });
        };
        {
            var _i:GoInt = (0 : GoInt);
            Go.cfor(_i < (256 : GoInt), _i++, {
                {
                    var _k:GoInt = (0 : GoInt);
                    Go.cfor(_k < (56 : GoInt), _k++, {
                        _testOnesCount(_t, (_i : GoUInt64) << (_k : GoUInt), _tab[(_i : GoInt)]._pop);
                    });
                };
            });
        };
    }
private function _testOnesCount(_t:Ref<stdgo.testing.Testing.T>, _x:GoUInt64, _want:GoInt):Void {
        if (_x <= (255i64 : GoUInt64)) {
            var _got:GoInt = onesCount8((_x : GoUInt8));
            if (_got != (_want)) {
                _t.fatalf(("OnesCount8(%#02x) == %d; want %d" : GoString), Go.toInterface((_x : GoUInt8)), Go.toInterface(_got), Go.toInterface(_want));
            };
        };
        if (_x <= (65535i64 : GoUInt64)) {
            var _got:GoInt = onesCount16((_x : GoUInt16));
            if (_got != (_want)) {
                _t.fatalf(("OnesCount16(%#04x) == %d; want %d" : GoString), Go.toInterface((_x : GoUInt16)), Go.toInterface(_got), Go.toInterface(_want));
            };
        };
        if (_x <= (4294967295i64 : GoUInt64)) {
            var _got:GoInt = onesCount32((_x : GoUInt32));
            if (_got != (_want)) {
                _t.fatalf(("OnesCount32(%#08x) == %d; want %d" : GoString), Go.toInterface((_x : GoUInt32)), Go.toInterface(_got), Go.toInterface(_want));
            };
            if (true) {
                _got = onesCount((_x : GoUInt));
                if (_got != (_want)) {
                    _t.fatalf(("OnesCount(%#08x) == %d; want %d" : GoString), Go.toInterface((_x : GoUInt32)), Go.toInterface(_got), Go.toInterface(_want));
                };
            };
        };
        if (_x <= (-1i64 : GoUInt64)) {
            var _got:GoInt = onesCount64((_x : GoUInt64));
            if (_got != (_want)) {
                _t.fatalf(("OnesCount64(%#016x) == %d; want %d" : GoString), Go.toInterface(_x), Go.toInterface(_got), Go.toInterface(_want));
            };
            if (false) {
                _got = onesCount((_x : GoUInt));
                if (_got != (_want)) {
                    _t.fatalf(("OnesCount(%#016x) == %d; want %d" : GoString), Go.toInterface(_x), Go.toInterface(_got), Go.toInterface(_want));
                };
            };
        };
    }
function benchmarkOnesCount(_b:Ref<stdgo.testing.Testing.B>):Void {
        var _s:GoInt = (0 : GoInt);
        {
            var _i:GoInt = (0 : GoInt);
            Go.cfor(_i < _b.n, _i++, {
                _s = _s + (onesCount((input : GoUInt)));
            });
        };
        output = _s;
    }
function benchmarkOnesCount8(_b:Ref<stdgo.testing.Testing.B>):Void {
        var _s:GoInt = (0 : GoInt);
        {
            var _i:GoInt = (0 : GoInt);
            Go.cfor(_i < _b.n, _i++, {
                _s = _s + (onesCount8((input : GoUInt8)));
            });
        };
        output = _s;
    }
function benchmarkOnesCount16(_b:Ref<stdgo.testing.Testing.B>):Void {
        var _s:GoInt = (0 : GoInt);
        {
            var _i:GoInt = (0 : GoInt);
            Go.cfor(_i < _b.n, _i++, {
                _s = _s + (onesCount16((input : GoUInt16)));
            });
        };
        output = _s;
    }
function benchmarkOnesCount32(_b:Ref<stdgo.testing.Testing.B>):Void {
        var _s:GoInt = (0 : GoInt);
        {
            var _i:GoInt = (0 : GoInt);
            Go.cfor(_i < _b.n, _i++, {
                _s = _s + (onesCount32((input : GoUInt32)));
            });
        };
        output = _s;
    }
function benchmarkOnesCount64(_b:Ref<stdgo.testing.Testing.B>):Void {
        var _s:GoInt = (0 : GoInt);
        {
            var _i:GoInt = (0 : GoInt);
            Go.cfor(_i < _b.n, _i++, {
                _s = _s + (onesCount64((input : GoUInt64)));
            });
        };
        output = _s;
    }
function testRotateLeft(_t:Ref<stdgo.testing.Testing.T>):Void {
        var _m:GoUInt64 = (285870213051353865i64 : GoUInt64);
        {
            var _k:GoUInt = (0u32 : GoUInt);
            Go.cfor(_k < (128u32 : GoUInt), _k++, {
                var _x8:GoUInt8 = (_m : GoUInt8);
                var _got8:GoUInt8 = rotateLeft8(_x8, (_k : GoInt));
                var _want8:GoUInt8 = (_x8 << (_k & (7u32 : GoUInt))) | (_x8 >> ((8u32 : GoUInt) - (_k & (7u32 : GoUInt))));
                if (_got8 != (_want8)) {
                    _t.fatalf(("RotateLeft8(%#02x, %d) == %#02x; want %#02x" : GoString), Go.toInterface(_x8), Go.toInterface(_k), Go.toInterface(_got8), Go.toInterface(_want8));
                };
                _got8 = rotateLeft8(_want8, -(_k : GoInt));
                if (_got8 != (_x8)) {
                    _t.fatalf(("RotateLeft8(%#02x, -%d) == %#02x; want %#02x" : GoString), Go.toInterface(_want8), Go.toInterface(_k), Go.toInterface(_got8), Go.toInterface(_x8));
                };
                var _x16:GoUInt16 = (_m : GoUInt16);
                var _got16:GoUInt16 = rotateLeft16(_x16, (_k : GoInt));
                var _want16:GoUInt16 = (_x16 << (_k & (15u32 : GoUInt))) | (_x16 >> ((16u32 : GoUInt) - (_k & (15u32 : GoUInt))));
                if (_got16 != (_want16)) {
                    _t.fatalf(("RotateLeft16(%#04x, %d) == %#04x; want %#04x" : GoString), Go.toInterface(_x16), Go.toInterface(_k), Go.toInterface(_got16), Go.toInterface(_want16));
                };
                _got16 = rotateLeft16(_want16, -(_k : GoInt));
                if (_got16 != (_x16)) {
                    _t.fatalf(("RotateLeft16(%#04x, -%d) == %#04x; want %#04x" : GoString), Go.toInterface(_want16), Go.toInterface(_k), Go.toInterface(_got16), Go.toInterface(_x16));
                };
                var _x32:GoUInt32 = (_m : GoUInt32);
                var _got32:GoUInt32 = rotateLeft32(_x32, (_k : GoInt));
                var _want32:GoUInt32 = (_x32 << (_k & (31u32 : GoUInt))) | (_x32 >> ((32u32 : GoUInt) - (_k & (31u32 : GoUInt))));
                if (_got32 != (_want32)) {
                    _t.fatalf(("RotateLeft32(%#08x, %d) == %#08x; want %#08x" : GoString), Go.toInterface(_x32), Go.toInterface(_k), Go.toInterface(_got32), Go.toInterface(_want32));
                };
                _got32 = rotateLeft32(_want32, -(_k : GoInt));
                if (_got32 != (_x32)) {
                    _t.fatalf(("RotateLeft32(%#08x, -%d) == %#08x; want %#08x" : GoString), Go.toInterface(_want32), Go.toInterface(_k), Go.toInterface(_got32), Go.toInterface(_x32));
                };
                if (true) {
                    var _x:GoUInt = (_m : GoUInt);
                    var _got:GoUInt = rotateLeft(_x, (_k : GoInt));
                    var _want:GoUInt = (_x << (_k & (31u32 : GoUInt))) | (_x >> ((32u32 : GoUInt) - (_k & (31u32 : GoUInt))));
                    if (_got != (_want)) {
                        _t.fatalf(("RotateLeft(%#08x, %d) == %#08x; want %#08x" : GoString), Go.toInterface(_x), Go.toInterface(_k), Go.toInterface(_got), Go.toInterface(_want));
                    };
                    _got = rotateLeft(_want, -(_k : GoInt));
                    if (_got != (_x)) {
                        _t.fatalf(("RotateLeft(%#08x, -%d) == %#08x; want %#08x" : GoString), Go.toInterface(_want), Go.toInterface(_k), Go.toInterface(_got), Go.toInterface(_x));
                    };
                };
                var _x64:GoUInt64 = (_m : GoUInt64);
                var _got64:GoUInt64 = rotateLeft64(_x64, (_k : GoInt));
                var _want64:GoUInt64 = (_x64 << (_k & (63u32 : GoUInt))) | (_x64 >> ((64u32 : GoUInt) - (_k & (63u32 : GoUInt))));
                if (_got64 != (_want64)) {
                    _t.fatalf(("RotateLeft64(%#016x, %d) == %#016x; want %#016x" : GoString), Go.toInterface(_x64), Go.toInterface(_k), Go.toInterface(_got64), Go.toInterface(_want64));
                };
                _got64 = rotateLeft64(_want64, -(_k : GoInt));
                if (_got64 != (_x64)) {
                    _t.fatalf(("RotateLeft64(%#016x, -%d) == %#016x; want %#016x" : GoString), Go.toInterface(_want64), Go.toInterface(_k), Go.toInterface(_got64), Go.toInterface(_x64));
                };
                if (false) {
                    var _x:GoUInt = (_m : GoUInt);
                    var _got:GoUInt = rotateLeft(_x, (_k : GoInt));
                    var _want:GoUInt = (_x << (_k & (63u32 : GoUInt))) | (_x >> ((64u32 : GoUInt) - (_k & (63u32 : GoUInt))));
                    if (_got != (_want)) {
                        _t.fatalf(("RotateLeft(%#016x, %d) == %#016x; want %#016x" : GoString), Go.toInterface(_x), Go.toInterface(_k), Go.toInterface(_got), Go.toInterface(_want));
                    };
                    _got = rotateLeft(_want, -(_k : GoInt));
                    if (_got != (_x)) {
                        _t.fatalf(("RotateLeft(%#08x, -%d) == %#08x; want %#08x" : GoString), Go.toInterface(_want), Go.toInterface(_k), Go.toInterface(_got), Go.toInterface(_x));
                    };
                };
            });
        };
    }
function benchmarkRotateLeft(_b:Ref<stdgo.testing.Testing.B>):Void {
        var _s:GoUInt = (0 : GoUInt);
        {
            var _i:GoInt = (0 : GoInt);
            Go.cfor(_i < _b.n, _i++, {
                _s = _s + (rotateLeft((input : GoUInt), _i));
            });
        };
        output = (_s : GoInt);
    }
function benchmarkRotateLeft8(_b:Ref<stdgo.testing.Testing.B>):Void {
        var _s:GoUInt8 = (0 : GoUInt8);
        {
            var _i:GoInt = (0 : GoInt);
            Go.cfor(_i < _b.n, _i++, {
                _s = _s + (rotateLeft8((input : GoUInt8), _i));
            });
        };
        output = (_s : GoInt);
    }
function benchmarkRotateLeft16(_b:Ref<stdgo.testing.Testing.B>):Void {
        var _s:GoUInt16 = (0 : GoUInt16);
        {
            var _i:GoInt = (0 : GoInt);
            Go.cfor(_i < _b.n, _i++, {
                _s = _s + (rotateLeft16((input : GoUInt16), _i));
            });
        };
        output = (_s : GoInt);
    }
function benchmarkRotateLeft32(_b:Ref<stdgo.testing.Testing.B>):Void {
        var _s:GoUInt32 = (0 : GoUInt32);
        {
            var _i:GoInt = (0 : GoInt);
            Go.cfor(_i < _b.n, _i++, {
                _s = _s + (rotateLeft32((input : GoUInt32), _i));
            });
        };
        output = (_s : GoInt);
    }
function benchmarkRotateLeft64(_b:Ref<stdgo.testing.Testing.B>):Void {
        var _s:GoUInt64 = (0 : GoUInt64);
        {
            var _i:GoInt = (0 : GoInt);
            Go.cfor(_i < _b.n, _i++, {
                _s = _s + (rotateLeft64((input : GoUInt64), _i));
            });
        };
        output = (_s : GoInt);
    }
function testReverse(_t:Ref<stdgo.testing.Testing.T>):Void {
        {
            var _i:GoUInt = (0u32 : GoUInt);
            Go.cfor(_i < (64u32 : GoUInt), _i++, {
                _testReverse(_t, (1i64 : GoUInt64) << _i, (1i64 : GoUInt64) << ((63u32 : GoUInt) - _i));
            });
        };
        for (__0 => _test in (new Slice<T__struct_0>(
18,
18,
({ _x : (0i64 : GoUInt64), _r : (0i64 : GoUInt64) } : T__struct_0),
({ _x : (1i64 : GoUInt64), _r : (-9223372036854775808i64 : GoUInt64) } : T__struct_0),
({ _x : (2i64 : GoUInt64), _r : (4611686018427387904i64 : GoUInt64) } : T__struct_0),
({ _x : (3i64 : GoUInt64), _r : (-4611686018427387904i64 : GoUInt64) } : T__struct_0),
({ _x : (4i64 : GoUInt64), _r : (2305843009213693952i64 : GoUInt64) } : T__struct_0),
({ _x : (5i64 : GoUInt64), _r : (-6917529027641081856i64 : GoUInt64) } : T__struct_0),
({ _x : (6i64 : GoUInt64), _r : (6917529027641081856i64 : GoUInt64) } : T__struct_0),
({ _x : (7i64 : GoUInt64), _r : (-2305843009213693952i64 : GoUInt64) } : T__struct_0),
({ _x : (8i64 : GoUInt64), _r : (1152921504606846976i64 : GoUInt64) } : T__struct_0),
({ _x : (9i64 : GoUInt64), _r : (-8070450532247928832i64 : GoUInt64) } : T__struct_0),
({ _x : (10i64 : GoUInt64), _r : (5764607523034234880i64 : GoUInt64) } : T__struct_0),
({ _x : (11i64 : GoUInt64), _r : (-3458764513820540928i64 : GoUInt64) } : T__struct_0),
({ _x : (12i64 : GoUInt64), _r : (3458764513820540928i64 : GoUInt64) } : T__struct_0),
({ _x : (13i64 : GoUInt64), _r : (-5764607523034234880i64 : GoUInt64) } : T__struct_0),
({ _x : (14i64 : GoUInt64), _r : (8070450532247928832i64 : GoUInt64) } : T__struct_0),
({ _x : (15i64 : GoUInt64), _r : (-1152921504606846976i64 : GoUInt64) } : T__struct_0),
({ _x : (90727559i64 : GoUInt64), _r : (-2223064489610182656i64 : GoUInt64) } : T__struct_0),
({ _x : (81985529216486895i64 : GoUInt64), _r : (-597899502893742976i64 : GoUInt64) } : T__struct_0)) : Slice<T__struct_0>)) {
            _testReverse(_t, _test._x, _test._r);
            _testReverse(_t, _test._r, _test._x);
        };
    }
private function _testReverse(_t:Ref<stdgo.testing.Testing.T>, _x64:GoUInt64, _want64:GoUInt64):Void {
        var _x8:GoUInt8 = (_x64 : GoUInt8);
        var _got8:GoUInt8 = reverse8(_x8);
        var _want8:GoUInt8 = (_want64 >> (56i64 : GoUInt64) : GoUInt8);
        if (_got8 != (_want8)) {
            _t.fatalf(("Reverse8(%#02x) == %#02x; want %#02x" : GoString), Go.toInterface(_x8), Go.toInterface(_got8), Go.toInterface(_want8));
        };
        var _x16:GoUInt16 = (_x64 : GoUInt16);
        var _got16:GoUInt16 = reverse16(_x16);
        var _want16:GoUInt16 = (_want64 >> (48i64 : GoUInt64) : GoUInt16);
        if (_got16 != (_want16)) {
            _t.fatalf(("Reverse16(%#04x) == %#04x; want %#04x" : GoString), Go.toInterface(_x16), Go.toInterface(_got16), Go.toInterface(_want16));
        };
        var _x32:GoUInt32 = (_x64 : GoUInt32);
        var _got32:GoUInt32 = reverse32(_x32);
        var _want32:GoUInt32 = (_want64 >> (32i64 : GoUInt64) : GoUInt32);
        if (_got32 != (_want32)) {
            _t.fatalf(("Reverse32(%#08x) == %#08x; want %#08x" : GoString), Go.toInterface(_x32), Go.toInterface(_got32), Go.toInterface(_want32));
        };
        if (true) {
            var _x:GoUInt = (_x32 : GoUInt);
            var _got:GoUInt = reverse(_x);
            var _want:GoUInt = (_want32 : GoUInt);
            if (_got != (_want)) {
                _t.fatalf(("Reverse(%#08x) == %#08x; want %#08x" : GoString), Go.toInterface(_x), Go.toInterface(_got), Go.toInterface(_want));
            };
        };
        var _got64:GoUInt64 = reverse64(_x64);
        if (_got64 != (_want64)) {
            _t.fatalf(("Reverse64(%#016x) == %#016x; want %#016x" : GoString), Go.toInterface(_x64), Go.toInterface(_got64), Go.toInterface(_want64));
        };
        if (false) {
            var _x:GoUInt = (_x64 : GoUInt);
            var _got:GoUInt = reverse(_x);
            var _want:GoUInt = (_want64 : GoUInt);
            if (_got != (_want)) {
                _t.fatalf(("Reverse(%#08x) == %#016x; want %#016x" : GoString), Go.toInterface(_x), Go.toInterface(_got), Go.toInterface(_want));
            };
        };
    }
function benchmarkReverse(_b:Ref<stdgo.testing.Testing.B>):Void {
        var _s:GoUInt = (0 : GoUInt);
        {
            var _i:GoInt = (0 : GoInt);
            Go.cfor(_i < _b.n, _i++, {
                _s = _s + (reverse((_i : GoUInt)));
            });
        };
        output = (_s : GoInt);
    }
function benchmarkReverse8(_b:Ref<stdgo.testing.Testing.B>):Void {
        var _s:GoUInt8 = (0 : GoUInt8);
        {
            var _i:GoInt = (0 : GoInt);
            Go.cfor(_i < _b.n, _i++, {
                _s = _s + (reverse8((_i : GoUInt8)));
            });
        };
        output = (_s : GoInt);
    }
function benchmarkReverse16(_b:Ref<stdgo.testing.Testing.B>):Void {
        var _s:GoUInt16 = (0 : GoUInt16);
        {
            var _i:GoInt = (0 : GoInt);
            Go.cfor(_i < _b.n, _i++, {
                _s = _s + (reverse16((_i : GoUInt16)));
            });
        };
        output = (_s : GoInt);
    }
function benchmarkReverse32(_b:Ref<stdgo.testing.Testing.B>):Void {
        var _s:GoUInt32 = (0 : GoUInt32);
        {
            var _i:GoInt = (0 : GoInt);
            Go.cfor(_i < _b.n, _i++, {
                _s = _s + (reverse32((_i : GoUInt32)));
            });
        };
        output = (_s : GoInt);
    }
function benchmarkReverse64(_b:Ref<stdgo.testing.Testing.B>):Void {
        var _s:GoUInt64 = (0 : GoUInt64);
        {
            var _i:GoInt = (0 : GoInt);
            Go.cfor(_i < _b.n, _i++, {
                _s = _s + (reverse64((_i : GoUInt64)));
            });
        };
        output = (_s : GoInt);
    }
function testReverseBytes(_t:Ref<stdgo.testing.Testing.T>):Void {
        for (__0 => _test in (new Slice<T__struct_0>(
9,
9,
({ _x : (0i64 : GoUInt64), _r : (0i64 : GoUInt64) } : T__struct_0),
({ _x : (1i64 : GoUInt64), _r : (72057594037927936i64 : GoUInt64) } : T__struct_0),
({ _x : (291i64 : GoUInt64), _r : (2522297266304188416i64 : GoUInt64) } : T__struct_0),
({ _x : (74565i64 : GoUInt64), _r : (4981826712313528320i64 : GoUInt64) } : T__struct_0),
({ _x : (19088743i64 : GoUInt64), _r : (7441392446501552128i64 : GoUInt64) } : T__struct_0),
({ _x : (4886718345i64 : GoUInt64), _r : (-8545785751269277696i64 : GoUInt64) } : T__struct_0),
({ _x : (1250999896491i64 : GoUInt64), _r : (-6086219874776842240i64 : GoUInt64) } : T__struct_0),
({ _x : (320255973501901i64 : GoUInt64), _r : (-3626653998282243840i64 : GoUInt64) } : T__struct_0),
({ _x : (81985529216486895i64 : GoUInt64), _r : (-1167088121787636991i64 : GoUInt64) } : T__struct_0)) : Slice<T__struct_0>)) {
            _testReverseBytes(_t, _test._x, _test._r);
            _testReverseBytes(_t, _test._r, _test._x);
        };
    }
private function _testReverseBytes(_t:Ref<stdgo.testing.Testing.T>, _x64:GoUInt64, _want64:GoUInt64):Void {
        var _x16:GoUInt16 = (_x64 : GoUInt16);
        var _got16:GoUInt16 = reverseBytes16(_x16);
        var _want16:GoUInt16 = (_want64 >> (48i64 : GoUInt64) : GoUInt16);
        if (_got16 != (_want16)) {
            _t.fatalf(("ReverseBytes16(%#04x) == %#04x; want %#04x" : GoString), Go.toInterface(_x16), Go.toInterface(_got16), Go.toInterface(_want16));
        };
        var _x32:GoUInt32 = (_x64 : GoUInt32);
        var _got32:GoUInt32 = reverseBytes32(_x32);
        var _want32:GoUInt32 = (_want64 >> (32i64 : GoUInt64) : GoUInt32);
        if (_got32 != (_want32)) {
            _t.fatalf(("ReverseBytes32(%#08x) == %#08x; want %#08x" : GoString), Go.toInterface(_x32), Go.toInterface(_got32), Go.toInterface(_want32));
        };
        if (true) {
            var _x:GoUInt = (_x32 : GoUInt);
            var _got:GoUInt = reverseBytes(_x);
            var _want:GoUInt = (_want32 : GoUInt);
            if (_got != (_want)) {
                _t.fatalf(("ReverseBytes(%#08x) == %#08x; want %#08x" : GoString), Go.toInterface(_x), Go.toInterface(_got), Go.toInterface(_want));
            };
        };
        var _got64:GoUInt64 = reverseBytes64(_x64);
        if (_got64 != (_want64)) {
            _t.fatalf(("ReverseBytes64(%#016x) == %#016x; want %#016x" : GoString), Go.toInterface(_x64), Go.toInterface(_got64), Go.toInterface(_want64));
        };
        if (false) {
            var _x:GoUInt = (_x64 : GoUInt);
            var _got:GoUInt = reverseBytes(_x);
            var _want:GoUInt = (_want64 : GoUInt);
            if (_got != (_want)) {
                _t.fatalf(("ReverseBytes(%#016x) == %#016x; want %#016x" : GoString), Go.toInterface(_x), Go.toInterface(_got), Go.toInterface(_want));
            };
        };
    }
function benchmarkReverseBytes(_b:Ref<stdgo.testing.Testing.B>):Void {
        var _s:GoUInt = (0 : GoUInt);
        {
            var _i:GoInt = (0 : GoInt);
            Go.cfor(_i < _b.n, _i++, {
                _s = _s + (reverseBytes((_i : GoUInt)));
            });
        };
        output = (_s : GoInt);
    }
function benchmarkReverseBytes16(_b:Ref<stdgo.testing.Testing.B>):Void {
        var _s:GoUInt16 = (0 : GoUInt16);
        {
            var _i:GoInt = (0 : GoInt);
            Go.cfor(_i < _b.n, _i++, {
                _s = _s + (reverseBytes16((_i : GoUInt16)));
            });
        };
        output = (_s : GoInt);
    }
function benchmarkReverseBytes32(_b:Ref<stdgo.testing.Testing.B>):Void {
        var _s:GoUInt32 = (0 : GoUInt32);
        {
            var _i:GoInt = (0 : GoInt);
            Go.cfor(_i < _b.n, _i++, {
                _s = _s + (reverseBytes32((_i : GoUInt32)));
            });
        };
        output = (_s : GoInt);
    }
function benchmarkReverseBytes64(_b:Ref<stdgo.testing.Testing.B>):Void {
        var _s:GoUInt64 = (0 : GoUInt64);
        {
            var _i:GoInt = (0 : GoInt);
            Go.cfor(_i < _b.n, _i++, {
                _s = _s + (reverseBytes64((_i : GoUInt64)));
            });
        };
        output = (_s : GoInt);
    }
function testLen(_t:Ref<stdgo.testing.Testing.T>):Void {
        {
            var _i:GoInt = (0 : GoInt);
            Go.cfor(_i < (256 : GoInt), _i++, {
                var _len:GoInt = (8 : GoInt) - _tab[(_i : GoInt)]._nlz;
                {
                    var _k:GoInt = (0 : GoInt);
                    Go.cfor(_k < (56 : GoInt), _k++, {
                        var _x:GoUInt64 = (_i : GoUInt64) << (_k : GoUInt);
                        var _want:GoInt = (0 : GoInt);
                        if (_x != ((0i64 : GoUInt64))) {
                            _want = _len + _k;
                        };
                        if (_x <= (255i64 : GoUInt64)) {
                            var _got:GoInt = len8((_x : GoUInt8));
                            if (_got != (_want)) {
                                _t.fatalf(("Len8(%#02x) == %d; want %d" : GoString), Go.toInterface(_x), Go.toInterface(_got), Go.toInterface(_want));
                            };
                        };
                        if (_x <= (65535i64 : GoUInt64)) {
                            var _got:GoInt = len16((_x : GoUInt16));
                            if (_got != (_want)) {
                                _t.fatalf(("Len16(%#04x) == %d; want %d" : GoString), Go.toInterface(_x), Go.toInterface(_got), Go.toInterface(_want));
                            };
                        };
                        if (_x <= (4294967295i64 : GoUInt64)) {
                            var _got:GoInt = len32((_x : GoUInt32));
                            if (_got != (_want)) {
                                _t.fatalf(("Len32(%#08x) == %d; want %d" : GoString), Go.toInterface(_x), Go.toInterface(_got), Go.toInterface(_want));
                            };
                            if (true) {
                                var _got:GoInt = len((_x : GoUInt));
                                if (_got != (_want)) {
                                    _t.fatalf(("Len(%#08x) == %d; want %d" : GoString), Go.toInterface(_x), Go.toInterface(_got), Go.toInterface(_want));
                                };
                            };
                        };
                        if (_x <= (-1i64 : GoUInt64)) {
                            var _got:GoInt = len64((_x : GoUInt64));
                            if (_got != (_want)) {
                                _t.fatalf(("Len64(%#016x) == %d; want %d" : GoString), Go.toInterface(_x), Go.toInterface(_got), Go.toInterface(_want));
                            };
                            if (false) {
                                var _got:GoInt = len((_x : GoUInt));
                                if (_got != (_want)) {
                                    _t.fatalf(("Len(%#016x) == %d; want %d" : GoString), Go.toInterface(_x), Go.toInterface(_got), Go.toInterface(_want));
                                };
                            };
                        };
                    });
                };
            });
        };
    }
function testAddSubUint(_t:Ref<stdgo.testing.Testing.T>):Void {
        var _test:(GoString, (GoUInt, GoUInt, GoUInt) -> { var _0 : GoUInt; var _1 : GoUInt; }, GoUInt, GoUInt, GoUInt, GoUInt, GoUInt) -> Void = function(_msg:GoString, _f:(_x:GoUInt, _y:GoUInt, _c:GoUInt) -> { var _0 : GoUInt; var _1 : GoUInt; }, _x:GoUInt, _y:GoUInt, _c:GoUInt, _z:GoUInt, _cout:GoUInt):Void {
            var __tmp__ = _f(_x, _y, _c), _z1:GoUInt = __tmp__._0, _cout1:GoUInt = __tmp__._1;
            if ((_z1 != _z) || (_cout1 != _cout)) {
                _t.errorf(("%s: got z:cout = %#x:%#x; want %#x:%#x" : GoString), Go.toInterface(_msg), Go.toInterface(_z1), Go.toInterface(_cout1), Go.toInterface(_z), Go.toInterface(_cout));
            };
        };
        for (__0 => _a in (new Slice<T__struct_1>(
11,
11,
({ _x : (0u32 : GoUInt), _y : (0u32 : GoUInt), _c : (0u32 : GoUInt), _z : (0u32 : GoUInt), _cout : (0u32 : GoUInt) } : T__struct_1),
({ _x : (0u32 : GoUInt), _y : (1u32 : GoUInt), _c : (0u32 : GoUInt), _z : (1u32 : GoUInt), _cout : (0u32 : GoUInt) } : T__struct_1),
({ _x : (0u32 : GoUInt), _y : (0u32 : GoUInt), _c : (1u32 : GoUInt), _z : (1u32 : GoUInt), _cout : (0u32 : GoUInt) } : T__struct_1),
({ _x : (0u32 : GoUInt), _y : (1u32 : GoUInt), _c : (1u32 : GoUInt), _z : (2u32 : GoUInt), _cout : (0u32 : GoUInt) } : T__struct_1),
({ _x : (12345u32 : GoUInt), _y : (67890u32 : GoUInt), _c : (0u32 : GoUInt), _z : (80235u32 : GoUInt), _cout : (0u32 : GoUInt) } : T__struct_1),
({ _x : (12345u32 : GoUInt), _y : (67890u32 : GoUInt), _c : (1u32 : GoUInt), _z : (80236u32 : GoUInt), _cout : (0u32 : GoUInt) } : T__struct_1),
({ _x : (-1u32 : GoUInt), _y : (1u32 : GoUInt), _c : (0u32 : GoUInt), _z : (0u32 : GoUInt), _cout : (1u32 : GoUInt) } : T__struct_1),
({ _x : (-1u32 : GoUInt), _y : (0u32 : GoUInt), _c : (1u32 : GoUInt), _z : (0u32 : GoUInt), _cout : (1u32 : GoUInt) } : T__struct_1),
({ _x : (-1u32 : GoUInt), _y : (1u32 : GoUInt), _c : (1u32 : GoUInt), _z : (1u32 : GoUInt), _cout : (1u32 : GoUInt) } : T__struct_1),
({ _x : (-1u32 : GoUInt), _y : (-1u32 : GoUInt), _c : (0u32 : GoUInt), _z : (-2u32 : GoUInt), _cout : (1u32 : GoUInt) } : T__struct_1),
({ _x : (-1u32 : GoUInt), _y : (-1u32 : GoUInt), _c : (1u32 : GoUInt), _z : (-1u32 : GoUInt), _cout : (1u32 : GoUInt) } : T__struct_1)) : Slice<T__struct_1>)) {
            _test(("Add" : GoString), add, _a._x, _a._y, _a._c, _a._z, _a._cout);
            _test(("Add symmetric" : GoString), add, _a._y, _a._x, _a._c, _a._z, _a._cout);
            _test(("Sub" : GoString), sub, _a._z, _a._x, _a._c, _a._y, _a._cout);
            _test(("Sub symmetric" : GoString), sub, _a._z, _a._y, _a._c, _a._x, _a._cout);
            _test(("Add intrinsic" : GoString), function(_x:GoUInt, _y:GoUInt, _c:GoUInt):{ var _0 : GoUInt; var _1 : GoUInt; } {
                return add(_x, _y, _c);
            }, _a._x, _a._y, _a._c, _a._z, _a._cout);
            _test(("Add intrinsic symmetric" : GoString), function(_x:GoUInt, _y:GoUInt, _c:GoUInt):{ var _0 : GoUInt; var _1 : GoUInt; } {
                return add(_x, _y, _c);
            }, _a._y, _a._x, _a._c, _a._z, _a._cout);
            _test(("Sub intrinsic" : GoString), function(_x:GoUInt, _y:GoUInt, _c:GoUInt):{ var _0 : GoUInt; var _1 : GoUInt; } {
                return sub(_x, _y, _c);
            }, _a._z, _a._x, _a._c, _a._y, _a._cout);
            _test(("Sub intrinsic symmetric" : GoString), function(_x:GoUInt, _y:GoUInt, _c:GoUInt):{ var _0 : GoUInt; var _1 : GoUInt; } {
                return sub(_x, _y, _c);
            }, _a._z, _a._y, _a._c, _a._x, _a._cout);
        };
    }
function testAddSubUint32(_t:Ref<stdgo.testing.Testing.T>):Void {
        var _test:(GoString, (GoUInt32, GoUInt32, GoUInt32) -> { var _0 : GoUInt32; var _1 : GoUInt32; }, GoUInt32, GoUInt32, GoUInt32, GoUInt32, GoUInt32) -> Void = function(_msg:GoString, _f:(_x:GoUInt32, _y:GoUInt32, _c:GoUInt32) -> { var _0 : GoUInt32; var _1 : GoUInt32; }, _x:GoUInt32, _y:GoUInt32, _c:GoUInt32, _z:GoUInt32, _cout:GoUInt32):Void {
            var __tmp__ = _f(_x, _y, _c), _z1:GoUInt32 = __tmp__._0, _cout1:GoUInt32 = __tmp__._1;
            if ((_z1 != _z) || (_cout1 != _cout)) {
                _t.errorf(("%s: got z:cout = %#x:%#x; want %#x:%#x" : GoString), Go.toInterface(_msg), Go.toInterface(_z1), Go.toInterface(_cout1), Go.toInterface(_z), Go.toInterface(_cout));
            };
        };
        for (__0 => _a in (new Slice<T__struct_2>(
11,
11,
({ _x : (0u32 : GoUInt32), _y : (0u32 : GoUInt32), _c : (0u32 : GoUInt32), _z : (0u32 : GoUInt32), _cout : (0u32 : GoUInt32) } : T__struct_2),
({ _x : (0u32 : GoUInt32), _y : (1u32 : GoUInt32), _c : (0u32 : GoUInt32), _z : (1u32 : GoUInt32), _cout : (0u32 : GoUInt32) } : T__struct_2),
({ _x : (0u32 : GoUInt32), _y : (0u32 : GoUInt32), _c : (1u32 : GoUInt32), _z : (1u32 : GoUInt32), _cout : (0u32 : GoUInt32) } : T__struct_2),
({ _x : (0u32 : GoUInt32), _y : (1u32 : GoUInt32), _c : (1u32 : GoUInt32), _z : (2u32 : GoUInt32), _cout : (0u32 : GoUInt32) } : T__struct_2),
({ _x : (12345u32 : GoUInt32), _y : (67890u32 : GoUInt32), _c : (0u32 : GoUInt32), _z : (80235u32 : GoUInt32), _cout : (0u32 : GoUInt32) } : T__struct_2),
({ _x : (12345u32 : GoUInt32), _y : (67890u32 : GoUInt32), _c : (1u32 : GoUInt32), _z : (80236u32 : GoUInt32), _cout : (0u32 : GoUInt32) } : T__struct_2),
({ _x : (-1u32 : GoUInt32), _y : (1u32 : GoUInt32), _c : (0u32 : GoUInt32), _z : (0u32 : GoUInt32), _cout : (1u32 : GoUInt32) } : T__struct_2),
({ _x : (-1u32 : GoUInt32), _y : (0u32 : GoUInt32), _c : (1u32 : GoUInt32), _z : (0u32 : GoUInt32), _cout : (1u32 : GoUInt32) } : T__struct_2),
({ _x : (-1u32 : GoUInt32), _y : (1u32 : GoUInt32), _c : (1u32 : GoUInt32), _z : (1u32 : GoUInt32), _cout : (1u32 : GoUInt32) } : T__struct_2),
({ _x : (-1u32 : GoUInt32), _y : (-1u32 : GoUInt32), _c : (0u32 : GoUInt32), _z : (-2u32 : GoUInt32), _cout : (1u32 : GoUInt32) } : T__struct_2),
({ _x : (-1u32 : GoUInt32), _y : (-1u32 : GoUInt32), _c : (1u32 : GoUInt32), _z : (-1u32 : GoUInt32), _cout : (1u32 : GoUInt32) } : T__struct_2)) : Slice<T__struct_2>)) {
            _test(("Add32" : GoString), add32, _a._x, _a._y, _a._c, _a._z, _a._cout);
            _test(("Add32 symmetric" : GoString), add32, _a._y, _a._x, _a._c, _a._z, _a._cout);
            _test(("Sub32" : GoString), sub32, _a._z, _a._x, _a._c, _a._y, _a._cout);
            _test(("Sub32 symmetric" : GoString), sub32, _a._z, _a._y, _a._c, _a._x, _a._cout);
        };
    }
function testAddSubUint64(_t:Ref<stdgo.testing.Testing.T>):Void {
        var _test:(GoString, (GoUInt64, GoUInt64, GoUInt64) -> { var _0 : GoUInt64; var _1 : GoUInt64; }, GoUInt64, GoUInt64, GoUInt64, GoUInt64, GoUInt64) -> Void = function(_msg:GoString, _f:(_x:GoUInt64, _y:GoUInt64, _c:GoUInt64) -> { var _0 : GoUInt64; var _1 : GoUInt64; }, _x:GoUInt64, _y:GoUInt64, _c:GoUInt64, _z:GoUInt64, _cout:GoUInt64):Void {
            var __tmp__ = _f(_x, _y, _c), _z1:GoUInt64 = __tmp__._0, _cout1:GoUInt64 = __tmp__._1;
            if ((_z1 != _z) || (_cout1 != _cout)) {
                _t.errorf(("%s: got z:cout = %#x:%#x; want %#x:%#x" : GoString), Go.toInterface(_msg), Go.toInterface(_z1), Go.toInterface(_cout1), Go.toInterface(_z), Go.toInterface(_cout));
            };
        };
        for (__0 => _a in (new Slice<T__struct_3>(
11,
11,
({ _x : (0i64 : GoUInt64), _y : (0i64 : GoUInt64), _c : (0i64 : GoUInt64), _z : (0i64 : GoUInt64), _cout : (0i64 : GoUInt64) } : T__struct_3),
({ _x : (0i64 : GoUInt64), _y : (1i64 : GoUInt64), _c : (0i64 : GoUInt64), _z : (1i64 : GoUInt64), _cout : (0i64 : GoUInt64) } : T__struct_3),
({ _x : (0i64 : GoUInt64), _y : (0i64 : GoUInt64), _c : (1i64 : GoUInt64), _z : (1i64 : GoUInt64), _cout : (0i64 : GoUInt64) } : T__struct_3),
({ _x : (0i64 : GoUInt64), _y : (1i64 : GoUInt64), _c : (1i64 : GoUInt64), _z : (2i64 : GoUInt64), _cout : (0i64 : GoUInt64) } : T__struct_3),
({ _x : (12345i64 : GoUInt64), _y : (67890i64 : GoUInt64), _c : (0i64 : GoUInt64), _z : (80235i64 : GoUInt64), _cout : (0i64 : GoUInt64) } : T__struct_3),
({ _x : (12345i64 : GoUInt64), _y : (67890i64 : GoUInt64), _c : (1i64 : GoUInt64), _z : (80236i64 : GoUInt64), _cout : (0i64 : GoUInt64) } : T__struct_3),
({ _x : (-1i64 : GoUInt64), _y : (1i64 : GoUInt64), _c : (0i64 : GoUInt64), _z : (0i64 : GoUInt64), _cout : (1i64 : GoUInt64) } : T__struct_3),
({ _x : (-1i64 : GoUInt64), _y : (0i64 : GoUInt64), _c : (1i64 : GoUInt64), _z : (0i64 : GoUInt64), _cout : (1i64 : GoUInt64) } : T__struct_3),
({ _x : (-1i64 : GoUInt64), _y : (1i64 : GoUInt64), _c : (1i64 : GoUInt64), _z : (1i64 : GoUInt64), _cout : (1i64 : GoUInt64) } : T__struct_3),
({ _x : (-1i64 : GoUInt64), _y : (-1i64 : GoUInt64), _c : (0i64 : GoUInt64), _z : (-2i64 : GoUInt64), _cout : (1i64 : GoUInt64) } : T__struct_3),
({ _x : (-1i64 : GoUInt64), _y : (-1i64 : GoUInt64), _c : (1i64 : GoUInt64), _z : (-1i64 : GoUInt64), _cout : (1i64 : GoUInt64) } : T__struct_3)) : Slice<T__struct_3>)) {
            _test(("Add64" : GoString), add64, _a._x, _a._y, _a._c, _a._z, _a._cout);
            _test(("Add64 symmetric" : GoString), add64, _a._y, _a._x, _a._c, _a._z, _a._cout);
            _test(("Sub64" : GoString), sub64, _a._z, _a._x, _a._c, _a._y, _a._cout);
            _test(("Sub64 symmetric" : GoString), sub64, _a._z, _a._y, _a._c, _a._x, _a._cout);
            _test(("Add64 intrinsic" : GoString), function(_x:GoUInt64, _y:GoUInt64, _c:GoUInt64):{ var _0 : GoUInt64; var _1 : GoUInt64; } {
                return add64(_x, _y, _c);
            }, _a._x, _a._y, _a._c, _a._z, _a._cout);
            _test(("Add64 intrinsic symmetric" : GoString), function(_x:GoUInt64, _y:GoUInt64, _c:GoUInt64):{ var _0 : GoUInt64; var _1 : GoUInt64; } {
                return add64(_x, _y, _c);
            }, _a._y, _a._x, _a._c, _a._z, _a._cout);
            _test(("Sub64 intrinsic" : GoString), function(_x:GoUInt64, _y:GoUInt64, _c:GoUInt64):{ var _0 : GoUInt64; var _1 : GoUInt64; } {
                return sub64(_x, _y, _c);
            }, _a._z, _a._x, _a._c, _a._y, _a._cout);
            _test(("Sub64 intrinsic symmetric" : GoString), function(_x:GoUInt64, _y:GoUInt64, _c:GoUInt64):{ var _0 : GoUInt64; var _1 : GoUInt64; } {
                return sub64(_x, _y, _c);
            }, _a._z, _a._y, _a._c, _a._x, _a._cout);
        };
    }
function testAdd64OverflowPanic(_t:Ref<stdgo.testing.Testing.T>):Void {
        var _tests = (new Slice<(GoUInt64, GoUInt64) -> GoUInt64>(5, 5, function(_a:GoUInt64, _b:GoUInt64):GoUInt64 {
            var __tmp__ = add64(_a, _b, (0i64 : GoUInt64)), _x:GoUInt64 = __tmp__._0, _c:GoUInt64 = __tmp__._1;
            if (_c > (0i64 : GoUInt64)) {
                throw Go.toInterface(("overflow" : GoString));
            };
            return _x;
        }, function(_a:GoUInt64, _b:GoUInt64):GoUInt64 {
            var __tmp__ = add64(_a, _b, (0i64 : GoUInt64)), _x:GoUInt64 = __tmp__._0, _c:GoUInt64 = __tmp__._1;
            if (_c != ((0i64 : GoUInt64))) {
                throw Go.toInterface(("overflow" : GoString));
            };
            return _x;
        }, function(_a:GoUInt64, _b:GoUInt64):GoUInt64 {
            var __tmp__ = add64(_a, _b, (0i64 : GoUInt64)), _x:GoUInt64 = __tmp__._0, _c:GoUInt64 = __tmp__._1;
            if (_c == ((1i64 : GoUInt64))) {
                throw Go.toInterface(("overflow" : GoString));
            };
            return _x;
        }, function(_a:GoUInt64, _b:GoUInt64):GoUInt64 {
            var __tmp__ = add64(_a, _b, (0i64 : GoUInt64)), _x:GoUInt64 = __tmp__._0, _c:GoUInt64 = __tmp__._1;
            if (_c != ((1i64 : GoUInt64))) {
                return _x;
            };
            throw Go.toInterface(("overflow" : GoString));
        }, function(_a:GoUInt64, _b:GoUInt64):GoUInt64 {
            var __tmp__ = add64(_a, _b, (0i64 : GoUInt64)), _x:GoUInt64 = __tmp__._0, _c:GoUInt64 = __tmp__._1;
            if (_c == ((0i64 : GoUInt64))) {
                return _x;
            };
            throw Go.toInterface(("overflow" : GoString));
        }) : Slice<(GoUInt64, GoUInt64) -> GoUInt64>);
        for (__0 => _test in _tests) {
            var _shouldPanic:(() -> Void) -> Void = function(_f:() -> Void):Void {
                var __deferstack__:Array<Void -> Void> = [];
                try {
                    __deferstack__.unshift(() -> {
                        var a = function():Void {
                            {
                                var _err:AnyInterface = ({
                                    final r = Go.recover_exception;
                                    Go.recover_exception = null;
                                    r;
                                });
                                if (_err == null) {
                                    _t.fatalf(("expected panic" : GoString));
                                };
                            };
                        };
                        a();
                    });
                    _f();
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
                    if (!(exe is AnyInterfaceData)) {
                        exe = Go.toInterface(__exception__.message);
                    };
                    Go.recover_exception = exe;
                    for (defer in __deferstack__) {
                        defer();
                    };
                    if (Go.recover_exception != null) throw Go.recover_exception;
                    return;
                };
            };
            _shouldPanic(function():Void {
                _test((-1i64 : GoUInt64), (1i64 : GoUInt64));
            });
            _shouldPanic(function():Void {
                _test((1i64 : GoUInt64), (-1i64 : GoUInt64));
            });
            _shouldPanic(function():Void {
                _test((-1i64 : GoUInt64), (-1i64 : GoUInt64));
            });
            _test((-1i64 : GoUInt64), (0i64 : GoUInt64));
            _test((0i64 : GoUInt64), (0i64 : GoUInt64));
            _test((1i64 : GoUInt64), (1i64 : GoUInt64));
        };
    }
function testSub64OverflowPanic(_t:Ref<stdgo.testing.Testing.T>):Void {
        var _tests = (new Slice<(GoUInt64, GoUInt64) -> GoUInt64>(5, 5, function(_a:GoUInt64, _b:GoUInt64):GoUInt64 {
            var __tmp__ = sub64(_a, _b, (0i64 : GoUInt64)), _x:GoUInt64 = __tmp__._0, _c:GoUInt64 = __tmp__._1;
            if (_c > (0i64 : GoUInt64)) {
                throw Go.toInterface(("overflow" : GoString));
            };
            return _x;
        }, function(_a:GoUInt64, _b:GoUInt64):GoUInt64 {
            var __tmp__ = sub64(_a, _b, (0i64 : GoUInt64)), _x:GoUInt64 = __tmp__._0, _c:GoUInt64 = __tmp__._1;
            if (_c != ((0i64 : GoUInt64))) {
                throw Go.toInterface(("overflow" : GoString));
            };
            return _x;
        }, function(_a:GoUInt64, _b:GoUInt64):GoUInt64 {
            var __tmp__ = sub64(_a, _b, (0i64 : GoUInt64)), _x:GoUInt64 = __tmp__._0, _c:GoUInt64 = __tmp__._1;
            if (_c == ((1i64 : GoUInt64))) {
                throw Go.toInterface(("overflow" : GoString));
            };
            return _x;
        }, function(_a:GoUInt64, _b:GoUInt64):GoUInt64 {
            var __tmp__ = sub64(_a, _b, (0i64 : GoUInt64)), _x:GoUInt64 = __tmp__._0, _c:GoUInt64 = __tmp__._1;
            if (_c != ((1i64 : GoUInt64))) {
                return _x;
            };
            throw Go.toInterface(("overflow" : GoString));
        }, function(_a:GoUInt64, _b:GoUInt64):GoUInt64 {
            var __tmp__ = sub64(_a, _b, (0i64 : GoUInt64)), _x:GoUInt64 = __tmp__._0, _c:GoUInt64 = __tmp__._1;
            if (_c == ((0i64 : GoUInt64))) {
                return _x;
            };
            throw Go.toInterface(("overflow" : GoString));
        }) : Slice<(GoUInt64, GoUInt64) -> GoUInt64>);
        for (__0 => _test in _tests) {
            var _shouldPanic:(() -> Void) -> Void = function(_f:() -> Void):Void {
                var __deferstack__:Array<Void -> Void> = [];
                try {
                    __deferstack__.unshift(() -> {
                        var a = function():Void {
                            {
                                var _err:AnyInterface = ({
                                    final r = Go.recover_exception;
                                    Go.recover_exception = null;
                                    r;
                                });
                                if (_err == null) {
                                    _t.fatalf(("expected panic" : GoString));
                                };
                            };
                        };
                        a();
                    });
                    _f();
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
                    if (!(exe is AnyInterfaceData)) {
                        exe = Go.toInterface(__exception__.message);
                    };
                    Go.recover_exception = exe;
                    for (defer in __deferstack__) {
                        defer();
                    };
                    if (Go.recover_exception != null) throw Go.recover_exception;
                    return;
                };
            };
            _shouldPanic(function():Void {
                _test((0i64 : GoUInt64), (1i64 : GoUInt64));
            });
            _shouldPanic(function():Void {
                _test((1i64 : GoUInt64), (-1i64 : GoUInt64));
            });
            _shouldPanic(function():Void {
                _test((-2i64 : GoUInt64), (-1i64 : GoUInt64));
            });
            _test((-1i64 : GoUInt64), (0i64 : GoUInt64));
            _test((0i64 : GoUInt64), (0i64 : GoUInt64));
            _test((1i64 : GoUInt64), (1i64 : GoUInt64));
        };
    }
function testMulDiv(_t:Ref<stdgo.testing.Testing.T>):Void {
        var _testMul:(GoString, (GoUInt, GoUInt) -> { var _0 : GoUInt; var _1 : GoUInt; }, GoUInt, GoUInt, GoUInt, GoUInt) -> Void = function(_msg:GoString, _f:(_x:GoUInt, _y:GoUInt) -> { var _0 : GoUInt; var _1 : GoUInt; }, _x:GoUInt, _y:GoUInt, _hi:GoUInt, _lo:GoUInt):Void {
            var __tmp__ = _f(_x, _y), _hi1:GoUInt = __tmp__._0, _lo1:GoUInt = __tmp__._1;
            if ((_hi1 != _hi) || (_lo1 != _lo)) {
                _t.errorf(("%s: got hi:lo = %#x:%#x; want %#x:%#x" : GoString), Go.toInterface(_msg), Go.toInterface(_hi1), Go.toInterface(_lo1), Go.toInterface(_hi), Go.toInterface(_lo));
            };
        };
        var _testDiv:(GoString, (GoUInt, GoUInt, GoUInt) -> { var _0 : GoUInt; var _1 : GoUInt; }, GoUInt, GoUInt, GoUInt, GoUInt, GoUInt) -> Void = function(_msg:GoString, _f:(_hi:GoUInt, _lo:GoUInt, _y:GoUInt) -> { var _0 : GoUInt; var _1 : GoUInt; }, _hi:GoUInt, _lo:GoUInt, _y:GoUInt, _q:GoUInt, _r:GoUInt):Void {
            var __tmp__ = _f(_hi, _lo, _y), _q1:GoUInt = __tmp__._0, _r1:GoUInt = __tmp__._1;
            if ((_q1 != _q) || (_r1 != _r)) {
                _t.errorf(("%s: got q:r = %#x:%#x; want %#x:%#x" : GoString), Go.toInterface(_msg), Go.toInterface(_q1), Go.toInterface(_r1), Go.toInterface(_q), Go.toInterface(_r));
            };
        };
        for (__0 => _a in (new Slice<T__struct_4>(2, 2, ({ _x : (-2147483648u32 : GoUInt), _y : (2u32 : GoUInt), _hi : (1u32 : GoUInt), _lo : (0u32 : GoUInt), _r : (1u32 : GoUInt) } : T__struct_4), ({ _x : (-1u32 : GoUInt), _y : (-1u32 : GoUInt), _hi : (-2u32 : GoUInt), _lo : (1u32 : GoUInt), _r : (42u32 : GoUInt) } : T__struct_4)) : Slice<T__struct_4>)) {
            _testMul(("Mul" : GoString), mul, _a._x, _a._y, _a._hi, _a._lo);
            _testMul(("Mul symmetric" : GoString), mul, _a._y, _a._x, _a._hi, _a._lo);
            _testDiv(("Div" : GoString), div, _a._hi, _a._lo + _a._r, _a._y, _a._x, _a._r);
            _testDiv(("Div symmetric" : GoString), div, _a._hi, _a._lo + _a._r, _a._x, _a._y, _a._r);
            _testMul(("Mul intrinsic" : GoString), function(_x:GoUInt, _y:GoUInt):{ var _0 : GoUInt; var _1 : GoUInt; } {
                return mul(_x, _y);
            }, _a._x, _a._y, _a._hi, _a._lo);
            _testMul(("Mul intrinsic symmetric" : GoString), function(_x:GoUInt, _y:GoUInt):{ var _0 : GoUInt; var _1 : GoUInt; } {
                return mul(_x, _y);
            }, _a._y, _a._x, _a._hi, _a._lo);
            _testDiv(("Div intrinsic" : GoString), function(_hi:GoUInt, _lo:GoUInt, _y:GoUInt):{ var _0 : GoUInt; var _1 : GoUInt; } {
                return div(_hi, _lo, _y);
            }, _a._hi, _a._lo + _a._r, _a._y, _a._x, _a._r);
            _testDiv(("Div intrinsic symmetric" : GoString), function(_hi:GoUInt, _lo:GoUInt, _y:GoUInt):{ var _0 : GoUInt; var _1 : GoUInt; } {
                return div(_hi, _lo, _y);
            }, _a._hi, _a._lo + _a._r, _a._x, _a._y, _a._r);
        };
    }
function testMulDiv32(_t:Ref<stdgo.testing.Testing.T>):Void {
        var _testMul:(GoString, (GoUInt32, GoUInt32) -> { var _0 : GoUInt32; var _1 : GoUInt32; }, GoUInt32, GoUInt32, GoUInt32, GoUInt32) -> Void = function(_msg:GoString, _f:(_x:GoUInt32, _y:GoUInt32) -> { var _0 : GoUInt32; var _1 : GoUInt32; }, _x:GoUInt32, _y:GoUInt32, _hi:GoUInt32, _lo:GoUInt32):Void {
            var __tmp__ = _f(_x, _y), _hi1:GoUInt32 = __tmp__._0, _lo1:GoUInt32 = __tmp__._1;
            if ((_hi1 != _hi) || (_lo1 != _lo)) {
                _t.errorf(("%s: got hi:lo = %#x:%#x; want %#x:%#x" : GoString), Go.toInterface(_msg), Go.toInterface(_hi1), Go.toInterface(_lo1), Go.toInterface(_hi), Go.toInterface(_lo));
            };
        };
        var _testDiv:(GoString, (GoUInt32, GoUInt32, GoUInt32) -> { var _0 : GoUInt32; var _1 : GoUInt32; }, GoUInt32, GoUInt32, GoUInt32, GoUInt32, GoUInt32) -> Void = function(_msg:GoString, _f:(_hi:GoUInt32, _lo:GoUInt32, _y:GoUInt32) -> { var _0 : GoUInt32; var _1 : GoUInt32; }, _hi:GoUInt32, _lo:GoUInt32, _y:GoUInt32, _q:GoUInt32, _r:GoUInt32):Void {
            var __tmp__ = _f(_hi, _lo, _y), _q1:GoUInt32 = __tmp__._0, _r1:GoUInt32 = __tmp__._1;
            if ((_q1 != _q) || (_r1 != _r)) {
                _t.errorf(("%s: got q:r = %#x:%#x; want %#x:%#x" : GoString), Go.toInterface(_msg), Go.toInterface(_q1), Go.toInterface(_r1), Go.toInterface(_q), Go.toInterface(_r));
            };
        };
        for (__0 => _a in (new Slice<T__struct_5>(3, 3, ({ _x : (-2147483648u32 : GoUInt32), _y : (2u32 : GoUInt32), _hi : (1u32 : GoUInt32), _lo : (0u32 : GoUInt32), _r : (1u32 : GoUInt32) } : T__struct_5), ({ _x : (-998376820u32 : GoUInt32), _y : (50911u32 : GoUInt32), _hi : (39076u32 : GoUInt32), _lo : (-1719302156u32 : GoUInt32), _r : (13u32 : GoUInt32) } : T__struct_5), ({ _x : (-1u32 : GoUInt32), _y : (-1u32 : GoUInt32), _hi : (-2u32 : GoUInt32), _lo : (1u32 : GoUInt32), _r : (42u32 : GoUInt32) } : T__struct_5)) : Slice<T__struct_5>)) {
            _testMul(("Mul32" : GoString), mul32, _a._x, _a._y, _a._hi, _a._lo);
            _testMul(("Mul32 symmetric" : GoString), mul32, _a._y, _a._x, _a._hi, _a._lo);
            _testDiv(("Div32" : GoString), div32, _a._hi, _a._lo + _a._r, _a._y, _a._x, _a._r);
            _testDiv(("Div32 symmetric" : GoString), div32, _a._hi, _a._lo + _a._r, _a._x, _a._y, _a._r);
        };
    }
function testMulDiv64(_t:Ref<stdgo.testing.Testing.T>):Void {
        var _testMul:(GoString, (GoUInt64, GoUInt64) -> { var _0 : GoUInt64; var _1 : GoUInt64; }, GoUInt64, GoUInt64, GoUInt64, GoUInt64) -> Void = function(_msg:GoString, _f:(_x:GoUInt64, _y:GoUInt64) -> { var _0 : GoUInt64; var _1 : GoUInt64; }, _x:GoUInt64, _y:GoUInt64, _hi:GoUInt64, _lo:GoUInt64):Void {
            var __tmp__ = _f(_x, _y), _hi1:GoUInt64 = __tmp__._0, _lo1:GoUInt64 = __tmp__._1;
            if ((_hi1 != _hi) || (_lo1 != _lo)) {
                _t.errorf(("%s: got hi:lo = %#x:%#x; want %#x:%#x" : GoString), Go.toInterface(_msg), Go.toInterface(_hi1), Go.toInterface(_lo1), Go.toInterface(_hi), Go.toInterface(_lo));
            };
        };
        var _testDiv:(GoString, (GoUInt64, GoUInt64, GoUInt64) -> { var _0 : GoUInt64; var _1 : GoUInt64; }, GoUInt64, GoUInt64, GoUInt64, GoUInt64, GoUInt64) -> Void = function(_msg:GoString, _f:(_hi:GoUInt64, _lo:GoUInt64, _y:GoUInt64) -> { var _0 : GoUInt64; var _1 : GoUInt64; }, _hi:GoUInt64, _lo:GoUInt64, _y:GoUInt64, _q:GoUInt64, _r:GoUInt64):Void {
            var __tmp__ = _f(_hi, _lo, _y), _q1:GoUInt64 = __tmp__._0, _r1:GoUInt64 = __tmp__._1;
            if ((_q1 != _q) || (_r1 != _r)) {
                _t.errorf(("%s: got q:r = %#x:%#x; want %#x:%#x" : GoString), Go.toInterface(_msg), Go.toInterface(_q1), Go.toInterface(_r1), Go.toInterface(_q), Go.toInterface(_r));
            };
        };
        for (__0 => _a in (new Slice<T__struct_6>(3, 3, ({ _x : (-9223372036854775808i64 : GoUInt64), _y : (2i64 : GoUInt64), _hi : (1i64 : GoUInt64), _lo : (0i64 : GoUInt64), _r : (1i64 : GoUInt64) } : T__struct_6), ({ _x : (15241578750190521i64 : GoUInt64), _y : (975461057789971041i64 : GoUInt64), _hi : (805972396572648i64 : GoUInt64), _lo : (-7073286711136648423i64 : GoUInt64), _r : (13i64 : GoUInt64) } : T__struct_6), ({ _x : (-1i64 : GoUInt64), _y : (-1i64 : GoUInt64), _hi : (-2i64 : GoUInt64), _lo : (1i64 : GoUInt64), _r : (42i64 : GoUInt64) } : T__struct_6)) : Slice<T__struct_6>)) {
            _testMul(("Mul64" : GoString), mul64, _a._x, _a._y, _a._hi, _a._lo);
            _testMul(("Mul64 symmetric" : GoString), mul64, _a._y, _a._x, _a._hi, _a._lo);
            _testDiv(("Div64" : GoString), div64, _a._hi, _a._lo + _a._r, _a._y, _a._x, _a._r);
            _testDiv(("Div64 symmetric" : GoString), div64, _a._hi, _a._lo + _a._r, _a._x, _a._y, _a._r);
            _testMul(("Mul64 intrinsic" : GoString), function(_x:GoUInt64, _y:GoUInt64):{ var _0 : GoUInt64; var _1 : GoUInt64; } {
                return mul64(_x, _y);
            }, _a._x, _a._y, _a._hi, _a._lo);
            _testMul(("Mul64 intrinsic symmetric" : GoString), function(_x:GoUInt64, _y:GoUInt64):{ var _0 : GoUInt64; var _1 : GoUInt64; } {
                return mul64(_x, _y);
            }, _a._y, _a._x, _a._hi, _a._lo);
            _testDiv(("Div64 intrinsic" : GoString), function(_hi:GoUInt64, _lo:GoUInt64, _y:GoUInt64):{ var _0 : GoUInt64; var _1 : GoUInt64; } {
                return div64(_hi, _lo, _y);
            }, _a._hi, _a._lo + _a._r, _a._y, _a._x, _a._r);
            _testDiv(("Div64 intrinsic symmetric" : GoString), function(_hi:GoUInt64, _lo:GoUInt64, _y:GoUInt64):{ var _0 : GoUInt64; var _1 : GoUInt64; } {
                return div64(_hi, _lo, _y);
            }, _a._hi, _a._lo + _a._r, _a._x, _a._y, _a._r);
        };
    }
function testDivPanicOverflow(_t:Ref<stdgo.testing.Testing.T>):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            __deferstack__.unshift(() -> {
                var a = function():Void {
                    {
                        var _err:AnyInterface = ({
                            final r = Go.recover_exception;
                            Go.recover_exception = null;
                            r;
                        });
                        if (_err == null) {
                            _t.error(Go.toInterface(("Div should have panicked when y<=hi" : GoString)));
                        } else {
                            var __tmp__ = try {
                                { value : (Go.typeAssert((_err : stdgo.runtime.Runtime.T_error)) : stdgo.runtime.Runtime.T_error), ok : true };
                            } catch(_) {
                                { value : (null : stdgo.runtime.Runtime.T_error), ok : false };
                            }, _e = __tmp__.value, _ok = __tmp__.ok;
                            if (!_ok || (_e.error() != ("runtime error: integer overflow" : GoString))) {
                                _t.errorf(("Div expected panic: %q, got: %q " : GoString), Go.toInterface(("runtime error: integer overflow" : GoString)), Go.toInterface(_e.error()));
                            };
                        };
                    };
                };
                a();
            });
            var __tmp__ = div((1u32 : GoUInt), (0u32 : GoUInt), (1u32 : GoUInt)), _q:GoUInt = __tmp__._0, _r:GoUInt = __tmp__._1;
            _t.errorf(("undefined q, r = %v, %v calculated when Div should have panicked" : GoString), Go.toInterface(_q), Go.toInterface(_r));
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
            if (!(exe is AnyInterfaceData)) {
                exe = Go.toInterface(__exception__.message);
            };
            Go.recover_exception = exe;
            for (defer in __deferstack__) {
                defer();
            };
            if (Go.recover_exception != null) throw Go.recover_exception;
            return;
        };
    }
function testDiv32PanicOverflow(_t:Ref<stdgo.testing.Testing.T>):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            __deferstack__.unshift(() -> {
                var a = function():Void {
                    {
                        var _err:AnyInterface = ({
                            final r = Go.recover_exception;
                            Go.recover_exception = null;
                            r;
                        });
                        if (_err == null) {
                            _t.error(Go.toInterface(("Div32 should have panicked when y<=hi" : GoString)));
                        } else {
                            var __tmp__ = try {
                                { value : (Go.typeAssert((_err : stdgo.runtime.Runtime.T_error)) : stdgo.runtime.Runtime.T_error), ok : true };
                            } catch(_) {
                                { value : (null : stdgo.runtime.Runtime.T_error), ok : false };
                            }, _e = __tmp__.value, _ok = __tmp__.ok;
                            if (!_ok || (_e.error() != ("runtime error: integer overflow" : GoString))) {
                                _t.errorf(("Div32 expected panic: %q, got: %q " : GoString), Go.toInterface(("runtime error: integer overflow" : GoString)), Go.toInterface(_e.error()));
                            };
                        };
                    };
                };
                a();
            });
            var __tmp__ = div32((1u32 : GoUInt32), (0u32 : GoUInt32), (1u32 : GoUInt32)), _q:GoUInt32 = __tmp__._0, _r:GoUInt32 = __tmp__._1;
            _t.errorf(("undefined q, r = %v, %v calculated when Div32 should have panicked" : GoString), Go.toInterface(_q), Go.toInterface(_r));
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
            if (!(exe is AnyInterfaceData)) {
                exe = Go.toInterface(__exception__.message);
            };
            Go.recover_exception = exe;
            for (defer in __deferstack__) {
                defer();
            };
            if (Go.recover_exception != null) throw Go.recover_exception;
            return;
        };
    }
function testDiv64PanicOverflow(_t:Ref<stdgo.testing.Testing.T>):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            __deferstack__.unshift(() -> {
                var a = function():Void {
                    {
                        var _err:AnyInterface = ({
                            final r = Go.recover_exception;
                            Go.recover_exception = null;
                            r;
                        });
                        if (_err == null) {
                            _t.error(Go.toInterface(("Div64 should have panicked when y<=hi" : GoString)));
                        } else {
                            var __tmp__ = try {
                                { value : (Go.typeAssert((_err : stdgo.runtime.Runtime.T_error)) : stdgo.runtime.Runtime.T_error), ok : true };
                            } catch(_) {
                                { value : (null : stdgo.runtime.Runtime.T_error), ok : false };
                            }, _e = __tmp__.value, _ok = __tmp__.ok;
                            if (!_ok || (_e.error() != ("runtime error: integer overflow" : GoString))) {
                                _t.errorf(("Div64 expected panic: %q, got: %q " : GoString), Go.toInterface(("runtime error: integer overflow" : GoString)), Go.toInterface(_e.error()));
                            };
                        };
                    };
                };
                a();
            });
            var __tmp__ = div64((1i64 : GoUInt64), (0i64 : GoUInt64), (1i64 : GoUInt64)), _q:GoUInt64 = __tmp__._0, _r:GoUInt64 = __tmp__._1;
            _t.errorf(("undefined q, r = %v, %v calculated when Div64 should have panicked" : GoString), Go.toInterface(_q), Go.toInterface(_r));
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
            if (!(exe is AnyInterfaceData)) {
                exe = Go.toInterface(__exception__.message);
            };
            Go.recover_exception = exe;
            for (defer in __deferstack__) {
                defer();
            };
            if (Go.recover_exception != null) throw Go.recover_exception;
            return;
        };
    }
function testDivPanicZero(_t:Ref<stdgo.testing.Testing.T>):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            __deferstack__.unshift(() -> {
                var a = function():Void {
                    {
                        var _err:AnyInterface = ({
                            final r = Go.recover_exception;
                            Go.recover_exception = null;
                            r;
                        });
                        if (_err == null) {
                            _t.error(Go.toInterface(("Div should have panicked when y==0" : GoString)));
                        } else {
                            var __tmp__ = try {
                                { value : (Go.typeAssert((_err : stdgo.runtime.Runtime.T_error)) : stdgo.runtime.Runtime.T_error), ok : true };
                            } catch(_) {
                                { value : (null : stdgo.runtime.Runtime.T_error), ok : false };
                            }, _e = __tmp__.value, _ok = __tmp__.ok;
                            if (!_ok || (_e.error() != ("runtime error: integer divide by zero" : GoString))) {
                                _t.errorf(("Div expected panic: %q, got: %q " : GoString), Go.toInterface(("runtime error: integer divide by zero" : GoString)), Go.toInterface(_e.error()));
                            };
                        };
                    };
                };
                a();
            });
            var __tmp__ = div((1u32 : GoUInt), (1u32 : GoUInt), (0u32 : GoUInt)), _q:GoUInt = __tmp__._0, _r:GoUInt = __tmp__._1;
            _t.errorf(("undefined q, r = %v, %v calculated when Div should have panicked" : GoString), Go.toInterface(_q), Go.toInterface(_r));
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
            if (!(exe is AnyInterfaceData)) {
                exe = Go.toInterface(__exception__.message);
            };
            Go.recover_exception = exe;
            for (defer in __deferstack__) {
                defer();
            };
            if (Go.recover_exception != null) throw Go.recover_exception;
            return;
        };
    }
function testDiv32PanicZero(_t:Ref<stdgo.testing.Testing.T>):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            __deferstack__.unshift(() -> {
                var a = function():Void {
                    {
                        var _err:AnyInterface = ({
                            final r = Go.recover_exception;
                            Go.recover_exception = null;
                            r;
                        });
                        if (_err == null) {
                            _t.error(Go.toInterface(("Div32 should have panicked when y==0" : GoString)));
                        } else {
                            var __tmp__ = try {
                                { value : (Go.typeAssert((_err : stdgo.runtime.Runtime.T_error)) : stdgo.runtime.Runtime.T_error), ok : true };
                            } catch(_) {
                                { value : (null : stdgo.runtime.Runtime.T_error), ok : false };
                            }, _e = __tmp__.value, _ok = __tmp__.ok;
                            if (!_ok || (_e.error() != ("runtime error: integer divide by zero" : GoString))) {
                                _t.errorf(("Div32 expected panic: %q, got: %q " : GoString), Go.toInterface(("runtime error: integer divide by zero" : GoString)), Go.toInterface(_e.error()));
                            };
                        };
                    };
                };
                a();
            });
            var __tmp__ = div32((1u32 : GoUInt32), (1u32 : GoUInt32), (0u32 : GoUInt32)), _q:GoUInt32 = __tmp__._0, _r:GoUInt32 = __tmp__._1;
            _t.errorf(("undefined q, r = %v, %v calculated when Div32 should have panicked" : GoString), Go.toInterface(_q), Go.toInterface(_r));
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
            if (!(exe is AnyInterfaceData)) {
                exe = Go.toInterface(__exception__.message);
            };
            Go.recover_exception = exe;
            for (defer in __deferstack__) {
                defer();
            };
            if (Go.recover_exception != null) throw Go.recover_exception;
            return;
        };
    }
function testDiv64PanicZero(_t:Ref<stdgo.testing.Testing.T>):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            __deferstack__.unshift(() -> {
                var a = function():Void {
                    {
                        var _err:AnyInterface = ({
                            final r = Go.recover_exception;
                            Go.recover_exception = null;
                            r;
                        });
                        if (_err == null) {
                            _t.error(Go.toInterface(("Div64 should have panicked when y==0" : GoString)));
                        } else {
                            var __tmp__ = try {
                                { value : (Go.typeAssert((_err : stdgo.runtime.Runtime.T_error)) : stdgo.runtime.Runtime.T_error), ok : true };
                            } catch(_) {
                                { value : (null : stdgo.runtime.Runtime.T_error), ok : false };
                            }, _e = __tmp__.value, _ok = __tmp__.ok;
                            if (!_ok || (_e.error() != ("runtime error: integer divide by zero" : GoString))) {
                                _t.errorf(("Div64 expected panic: %q, got: %q " : GoString), Go.toInterface(("runtime error: integer divide by zero" : GoString)), Go.toInterface(_e.error()));
                            };
                        };
                    };
                };
                a();
            });
            var __tmp__ = div64((1i64 : GoUInt64), (1i64 : GoUInt64), (0i64 : GoUInt64)), _q:GoUInt64 = __tmp__._0, _r:GoUInt64 = __tmp__._1;
            _t.errorf(("undefined q, r = %v, %v calculated when Div64 should have panicked" : GoString), Go.toInterface(_q), Go.toInterface(_r));
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
            if (!(exe is AnyInterfaceData)) {
                exe = Go.toInterface(__exception__.message);
            };
            Go.recover_exception = exe;
            for (defer in __deferstack__) {
                defer();
            };
            if (Go.recover_exception != null) throw Go.recover_exception;
            return;
        };
    }
function testRem32(_t:Ref<stdgo.testing.Testing.T>):Void {
        var __0:GoUInt32 = (510510u32 : GoUInt32), __1:GoUInt32 = (9699690u32 : GoUInt32), __2:GoUInt32 = (510511u32 : GoUInt32), _y:GoUInt32 = __2, _lo:GoUInt32 = __1, _hi:GoUInt32 = __0;
        {
            var _i:GoInt = (0 : GoInt);
            Go.cfor(_i < (1000 : GoInt), _i++, {
                var _r:GoUInt32 = rem32(_hi, _lo, _y);
                var __tmp__ = div32(_hi, _lo, _y), __0:GoUInt32 = __tmp__._0, _r2:GoUInt32 = __tmp__._1;
                if (_r != (_r2)) {
                    _t.errorf(("Rem32(%v, %v, %v) returned %v, but Div32 returned rem %v" : GoString), Go.toInterface(_hi), Go.toInterface(_lo), Go.toInterface(_y), Go.toInterface(_r), Go.toInterface(_r2));
                };
                _y = _y + ((13u32 : GoUInt32));
            });
        };
    }
function testRem32Overflow(_t:Ref<stdgo.testing.Testing.T>):Void {
        var __0:GoUInt32 = (510510u32 : GoUInt32), __1:GoUInt32 = (9699690u32 : GoUInt32), __2:GoUInt32 = (7u32 : GoUInt32), _y:GoUInt32 = __2, _lo:GoUInt32 = __1, _hi:GoUInt32 = __0;
        {
            var _i:GoInt = (0 : GoInt);
            Go.cfor(_i < (1000 : GoInt), _i++, {
                var _r:GoUInt32 = rem32(_hi, _lo, _y);
                var __tmp__ = div64((0i64 : GoUInt64), ((_hi : GoUInt64) << (32i64 : GoUInt64)) | (_lo : GoUInt64), (_y : GoUInt64)), __0:GoUInt64 = __tmp__._0, _r2:GoUInt64 = __tmp__._1;
                if (_r != ((_r2 : GoUInt32))) {
                    _t.errorf(("Rem32(%v, %v, %v) returned %v, but Div64 returned rem %v" : GoString), Go.toInterface(_hi), Go.toInterface(_lo), Go.toInterface(_y), Go.toInterface(_r), Go.toInterface(_r2));
                };
                _y = _y + ((13u32 : GoUInt32));
            });
        };
    }
function testRem64(_t:Ref<stdgo.testing.Testing.T>):Void {
        var __0:GoUInt64 = (510510i64 : GoUInt64), __1:GoUInt64 = (9699690i64 : GoUInt64), __2:GoUInt64 = (510511i64 : GoUInt64), _y:GoUInt64 = __2, _lo:GoUInt64 = __1, _hi:GoUInt64 = __0;
        {
            var _i:GoInt = (0 : GoInt);
            Go.cfor(_i < (1000 : GoInt), _i++, {
                var _r:GoUInt64 = rem64(_hi, _lo, _y);
                var __tmp__ = div64(_hi, _lo, _y), __0:GoUInt64 = __tmp__._0, _r2:GoUInt64 = __tmp__._1;
                if (_r != (_r2)) {
                    _t.errorf(("Rem64(%v, %v, %v) returned %v, but Div64 returned rem %v" : GoString), Go.toInterface(_hi), Go.toInterface(_lo), Go.toInterface(_y), Go.toInterface(_r), Go.toInterface(_r2));
                };
                _y = _y + ((13i64 : GoUInt64));
            });
        };
    }
function testRem64Overflow(_t:Ref<stdgo.testing.Testing.T>):Void {
        var rem64Tests = (new Slice<T__struct_7>(7, 7, ({ _hi : (42i64 : GoUInt64), _lo : (1119i64 : GoUInt64), _y : (42i64 : GoUInt64), _rem : (27i64 : GoUInt64) } : T__struct_7), ({ _hi : (42i64 : GoUInt64), _lo : (1119i64 : GoUInt64), _y : (38i64 : GoUInt64), _rem : (9i64 : GoUInt64) } : T__struct_7), ({ _hi : (42i64 : GoUInt64), _lo : (1119i64 : GoUInt64), _y : (26i64 : GoUInt64), _rem : (23i64 : GoUInt64) } : T__struct_7), ({ _hi : (469i64 : GoUInt64), _lo : (0i64 : GoUInt64), _y : (467i64 : GoUInt64), _rem : (271i64 : GoUInt64) } : T__struct_7), ({ _hi : (469i64 : GoUInt64), _lo : (0i64 : GoUInt64), _y : (113i64 : GoUInt64), _rem : (58i64 : GoUInt64) } : T__struct_7), ({ _hi : (111111i64 : GoUInt64), _lo : (111111i64 : GoUInt64), _y : (1171i64 : GoUInt64), _rem : (803i64 : GoUInt64) } : T__struct_7), ({ _hi : (3968194946088682615i64 : GoUInt64), _lo : (3192705705065114702i64 : GoUInt64), _y : (1000037i64 : GoUInt64), _rem : (56067i64 : GoUInt64) } : T__struct_7)) : Slice<T__struct_7>);
        for (__0 => _rt in rem64Tests) {
            if (_rt._hi < _rt._y) {
                _t.fatalf(("Rem64(%v, %v, %v) is not a test with quo overflow" : GoString), Go.toInterface(_rt._hi), Go.toInterface(_rt._lo), Go.toInterface(_rt._y));
            };
            var _rem:GoUInt64 = rem64(_rt._hi, _rt._lo, _rt._y);
            if (_rem != (_rt._rem)) {
                _t.errorf(("Rem64(%v, %v, %v) returned %v, wanted %v" : GoString), Go.toInterface(_rt._hi), Go.toInterface(_rt._lo), Go.toInterface(_rt._y), Go.toInterface(_rem), Go.toInterface(_rt._rem));
            };
        };
    }
function benchmarkAdd(_b:Ref<stdgo.testing.Testing.B>):Void {
        var __0:GoUInt = (0 : GoUInt), __1:GoUInt = (0 : GoUInt), _c:GoUInt = __1, _z:GoUInt = __0;
        {
            var _i:GoInt = (0 : GoInt);
            Go.cfor(_i < _b.n, _i++, {
                {
                    var __tmp__ = add((input : GoUInt), (_i : GoUInt), _c);
                    _z = __tmp__._0;
                    _c = __tmp__._1;
                };
            });
        };
        output = (_z + _c : GoInt);
    }
function benchmarkAdd32(_b:Ref<stdgo.testing.Testing.B>):Void {
        var __0:GoUInt32 = (0 : GoUInt32), __1:GoUInt32 = (0 : GoUInt32), _c:GoUInt32 = __1, _z:GoUInt32 = __0;
        {
            var _i:GoInt = (0 : GoInt);
            Go.cfor(_i < _b.n, _i++, {
                {
                    var __tmp__ = add32((input : GoUInt32), (_i : GoUInt32), _c);
                    _z = __tmp__._0;
                    _c = __tmp__._1;
                };
            });
        };
        output = (_z + _c : GoInt);
    }
function benchmarkAdd64(_b:Ref<stdgo.testing.Testing.B>):Void {
        var __0:GoUInt64 = (0 : GoUInt64), __1:GoUInt64 = (0 : GoUInt64), _c:GoUInt64 = __1, _z:GoUInt64 = __0;
        {
            var _i:GoInt = (0 : GoInt);
            Go.cfor(_i < _b.n, _i++, {
                {
                    var __tmp__ = add64((input : GoUInt64), (_i : GoUInt64), _c);
                    _z = __tmp__._0;
                    _c = __tmp__._1;
                };
            });
        };
        output = (_z + _c : GoInt);
    }
function benchmarkAdd64multiple(_b:Ref<stdgo.testing.Testing.B>):Void {
        var _z0:GoUInt64 = (input : GoUInt64);
        var _z1:GoUInt64 = (input : GoUInt64);
        var _z2:GoUInt64 = (input : GoUInt64);
        var _z3:GoUInt64 = (input : GoUInt64);
        {
            var _i:GoInt = (0 : GoInt);
            Go.cfor(_i < _b.n, _i++, {
                var _c:GoUInt64 = (0 : GoUInt64);
                {
                    var __tmp__ = add64(_z0, (_i : GoUInt64), _c);
                    _z0 = __tmp__._0;
                    _c = __tmp__._1;
                };
                {
                    var __tmp__ = add64(_z1, (_i : GoUInt64), _c);
                    _z1 = __tmp__._0;
                    _c = __tmp__._1;
                };
                {
                    var __tmp__ = add64(_z2, (_i : GoUInt64), _c);
                    _z2 = __tmp__._0;
                    _c = __tmp__._1;
                };
                {
                    var __tmp__ = add64(_z3, (_i : GoUInt64), _c);
                    _z3 = __tmp__._0;
                };
            });
        };
        output = (((_z0 + _z1) + _z2) + _z3 : GoInt);
    }
function benchmarkSub(_b:Ref<stdgo.testing.Testing.B>):Void {
        var __0:GoUInt = (0 : GoUInt), __1:GoUInt = (0 : GoUInt), _c:GoUInt = __1, _z:GoUInt = __0;
        {
            var _i:GoInt = (0 : GoInt);
            Go.cfor(_i < _b.n, _i++, {
                {
                    var __tmp__ = sub((input : GoUInt), (_i : GoUInt), _c);
                    _z = __tmp__._0;
                    _c = __tmp__._1;
                };
            });
        };
        output = (_z + _c : GoInt);
    }
function benchmarkSub32(_b:Ref<stdgo.testing.Testing.B>):Void {
        var __0:GoUInt32 = (0 : GoUInt32), __1:GoUInt32 = (0 : GoUInt32), _c:GoUInt32 = __1, _z:GoUInt32 = __0;
        {
            var _i:GoInt = (0 : GoInt);
            Go.cfor(_i < _b.n, _i++, {
                {
                    var __tmp__ = sub32((input : GoUInt32), (_i : GoUInt32), _c);
                    _z = __tmp__._0;
                    _c = __tmp__._1;
                };
            });
        };
        output = (_z + _c : GoInt);
    }
function benchmarkSub64(_b:Ref<stdgo.testing.Testing.B>):Void {
        var __0:GoUInt64 = (0 : GoUInt64), __1:GoUInt64 = (0 : GoUInt64), _c:GoUInt64 = __1, _z:GoUInt64 = __0;
        {
            var _i:GoInt = (0 : GoInt);
            Go.cfor(_i < _b.n, _i++, {
                {
                    var __tmp__ = sub64((input : GoUInt64), (_i : GoUInt64), _c);
                    _z = __tmp__._0;
                    _c = __tmp__._1;
                };
            });
        };
        output = (_z + _c : GoInt);
    }
function benchmarkSub64multiple(_b:Ref<stdgo.testing.Testing.B>):Void {
        var _z0:GoUInt64 = (input : GoUInt64);
        var _z1:GoUInt64 = (input : GoUInt64);
        var _z2:GoUInt64 = (input : GoUInt64);
        var _z3:GoUInt64 = (input : GoUInt64);
        {
            var _i:GoInt = (0 : GoInt);
            Go.cfor(_i < _b.n, _i++, {
                var _c:GoUInt64 = (0 : GoUInt64);
                {
                    var __tmp__ = sub64(_z0, (_i : GoUInt64), _c);
                    _z0 = __tmp__._0;
                    _c = __tmp__._1;
                };
                {
                    var __tmp__ = sub64(_z1, (_i : GoUInt64), _c);
                    _z1 = __tmp__._0;
                    _c = __tmp__._1;
                };
                {
                    var __tmp__ = sub64(_z2, (_i : GoUInt64), _c);
                    _z2 = __tmp__._0;
                    _c = __tmp__._1;
                };
                {
                    var __tmp__ = sub64(_z3, (_i : GoUInt64), _c);
                    _z3 = __tmp__._0;
                };
            });
        };
        output = (((_z0 + _z1) + _z2) + _z3 : GoInt);
    }
function benchmarkMul(_b:Ref<stdgo.testing.Testing.B>):Void {
        var __0:GoUInt = (0 : GoUInt), __1:GoUInt = (0 : GoUInt), _lo:GoUInt = __1, _hi:GoUInt = __0;
        {
            var _i:GoInt = (0 : GoInt);
            Go.cfor(_i < _b.n, _i++, {
                {
                    var __tmp__ = mul((input : GoUInt), (_i : GoUInt));
                    _hi = __tmp__._0;
                    _lo = __tmp__._1;
                };
            });
        };
        output = (_hi + _lo : GoInt);
    }
function benchmarkMul32(_b:Ref<stdgo.testing.Testing.B>):Void {
        var __0:GoUInt32 = (0 : GoUInt32), __1:GoUInt32 = (0 : GoUInt32), _lo:GoUInt32 = __1, _hi:GoUInt32 = __0;
        {
            var _i:GoInt = (0 : GoInt);
            Go.cfor(_i < _b.n, _i++, {
                {
                    var __tmp__ = mul32((input : GoUInt32), (_i : GoUInt32));
                    _hi = __tmp__._0;
                    _lo = __tmp__._1;
                };
            });
        };
        output = (_hi + _lo : GoInt);
    }
function benchmarkMul64(_b:Ref<stdgo.testing.Testing.B>):Void {
        var __0:GoUInt64 = (0 : GoUInt64), __1:GoUInt64 = (0 : GoUInt64), _lo:GoUInt64 = __1, _hi:GoUInt64 = __0;
        {
            var _i:GoInt = (0 : GoInt);
            Go.cfor(_i < _b.n, _i++, {
                {
                    var __tmp__ = mul64((input : GoUInt64), (_i : GoUInt64));
                    _hi = __tmp__._0;
                    _lo = __tmp__._1;
                };
            });
        };
        output = (_hi + _lo : GoInt);
    }
function benchmarkDiv(_b:Ref<stdgo.testing.Testing.B>):Void {
        var __0:GoUInt = (0 : GoUInt), __1:GoUInt = (0 : GoUInt), _r:GoUInt = __1, _q:GoUInt = __0;
        {
            var _i:GoInt = (0 : GoInt);
            Go.cfor(_i < _b.n, _i++, {
                {
                    var __tmp__ = div((1u32 : GoUInt), (_i : GoUInt), (input : GoUInt));
                    _q = __tmp__._0;
                    _r = __tmp__._1;
                };
            });
        };
        output = (_q + _r : GoInt);
    }
function benchmarkDiv32(_b:Ref<stdgo.testing.Testing.B>):Void {
        var __0:GoUInt32 = (0 : GoUInt32), __1:GoUInt32 = (0 : GoUInt32), _r:GoUInt32 = __1, _q:GoUInt32 = __0;
        {
            var _i:GoInt = (0 : GoInt);
            Go.cfor(_i < _b.n, _i++, {
                {
                    var __tmp__ = div32((1u32 : GoUInt32), (_i : GoUInt32), (input : GoUInt32));
                    _q = __tmp__._0;
                    _r = __tmp__._1;
                };
            });
        };
        output = (_q + _r : GoInt);
    }
function benchmarkDiv64(_b:Ref<stdgo.testing.Testing.B>):Void {
        var __0:GoUInt64 = (0 : GoUInt64), __1:GoUInt64 = (0 : GoUInt64), _r:GoUInt64 = __1, _q:GoUInt64 = __0;
        {
            var _i:GoInt = (0 : GoInt);
            Go.cfor(_i < _b.n, _i++, {
                {
                    var __tmp__ = div64((1i64 : GoUInt64), (_i : GoUInt64), (input : GoUInt64));
                    _q = __tmp__._0;
                    _r = __tmp__._1;
                };
            });
        };
        output = (_q + _r : GoInt);
    }
function exampleAdd32():Void {
        var _n1 = (new Slice<GoUInt32>(2, 2, (33u32 : GoUInt32), (12u32 : GoUInt32)) : Slice<GoUInt32>);
        var _n2 = (new Slice<GoUInt32>(2, 2, (21u32 : GoUInt32), (23u32 : GoUInt32)) : Slice<GoUInt32>);
        var __tmp__ = stdgo.math.bits.Bits.add32(_n1[(1 : GoInt)], _n2[(1 : GoInt)], (0u32 : GoUInt32)), _d1:GoUInt32 = __tmp__._0, _carry:GoUInt32 = __tmp__._1;
        var __tmp__ = stdgo.math.bits.Bits.add32(_n1[(0 : GoInt)], _n2[(0 : GoInt)], _carry), _d0:GoUInt32 = __tmp__._0, __0:GoUInt32 = __tmp__._1;
        var _nsum = (new Slice<GoUInt32>(2, 2, _d0, _d1) : Slice<GoUInt32>);
        stdgo.fmt.Fmt.printf(("%v + %v = %v (carry bit was %v)\n" : GoString), Go.toInterface(_n1), Go.toInterface(_n2), Go.toInterface(_nsum), Go.toInterface(_carry));
        _n1 = (new Slice<GoUInt32>(2, 2, (1u32 : GoUInt32), (-2147483648u32 : GoUInt32)) : Slice<GoUInt32>);
        _n2 = (new Slice<GoUInt32>(2, 2, (1u32 : GoUInt32), (-2147483648u32 : GoUInt32)) : Slice<GoUInt32>);
        {
            var __tmp__ = stdgo.math.bits.Bits.add32(_n1[(1 : GoInt)], _n2[(1 : GoInt)], (0u32 : GoUInt32));
            _d1 = __tmp__._0;
            _carry = __tmp__._1;
        };
        {
            var __tmp__ = stdgo.math.bits.Bits.add32(_n1[(0 : GoInt)], _n2[(0 : GoInt)], _carry);
            _d0 = __tmp__._0;
        };
        _nsum = (new Slice<GoUInt32>(2, 2, _d0, _d1) : Slice<GoUInt32>);
        stdgo.fmt.Fmt.printf(("%v + %v = %v (carry bit was %v)\n" : GoString), Go.toInterface(_n1), Go.toInterface(_n2), Go.toInterface(_nsum), Go.toInterface(_carry));
    }
function exampleAdd64():Void {
        var _n1 = (new Slice<GoUInt64>(2, 2, (33i64 : GoUInt64), (12i64 : GoUInt64)) : Slice<GoUInt64>);
        var _n2 = (new Slice<GoUInt64>(2, 2, (21i64 : GoUInt64), (23i64 : GoUInt64)) : Slice<GoUInt64>);
        var __tmp__ = stdgo.math.bits.Bits.add64(_n1[(1 : GoInt)], _n2[(1 : GoInt)], (0i64 : GoUInt64)), _d1:GoUInt64 = __tmp__._0, _carry:GoUInt64 = __tmp__._1;
        var __tmp__ = stdgo.math.bits.Bits.add64(_n1[(0 : GoInt)], _n2[(0 : GoInt)], _carry), _d0:GoUInt64 = __tmp__._0, __0:GoUInt64 = __tmp__._1;
        var _nsum = (new Slice<GoUInt64>(2, 2, _d0, _d1) : Slice<GoUInt64>);
        stdgo.fmt.Fmt.printf(("%v + %v = %v (carry bit was %v)\n" : GoString), Go.toInterface(_n1), Go.toInterface(_n2), Go.toInterface(_nsum), Go.toInterface(_carry));
        _n1 = (new Slice<GoUInt64>(2, 2, (1i64 : GoUInt64), (-9223372036854775808i64 : GoUInt64)) : Slice<GoUInt64>);
        _n2 = (new Slice<GoUInt64>(2, 2, (1i64 : GoUInt64), (-9223372036854775808i64 : GoUInt64)) : Slice<GoUInt64>);
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_n1[(1 : GoInt)], _n2[(1 : GoInt)], (0i64 : GoUInt64));
            _d1 = __tmp__._0;
            _carry = __tmp__._1;
        };
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_n1[(0 : GoInt)], _n2[(0 : GoInt)], _carry);
            _d0 = __tmp__._0;
        };
        _nsum = (new Slice<GoUInt64>(2, 2, _d0, _d1) : Slice<GoUInt64>);
        stdgo.fmt.Fmt.printf(("%v + %v = %v (carry bit was %v)\n" : GoString), Go.toInterface(_n1), Go.toInterface(_n2), Go.toInterface(_nsum), Go.toInterface(_carry));
    }
function exampleSub32():Void {
        var _n1 = (new Slice<GoUInt32>(2, 2, (33u32 : GoUInt32), (23u32 : GoUInt32)) : Slice<GoUInt32>);
        var _n2 = (new Slice<GoUInt32>(2, 2, (21u32 : GoUInt32), (12u32 : GoUInt32)) : Slice<GoUInt32>);
        var __tmp__ = stdgo.math.bits.Bits.sub32(_n1[(1 : GoInt)], _n2[(1 : GoInt)], (0u32 : GoUInt32)), _d1:GoUInt32 = __tmp__._0, _carry:GoUInt32 = __tmp__._1;
        var __tmp__ = stdgo.math.bits.Bits.sub32(_n1[(0 : GoInt)], _n2[(0 : GoInt)], _carry), _d0:GoUInt32 = __tmp__._0, __0:GoUInt32 = __tmp__._1;
        var _nsum = (new Slice<GoUInt32>(2, 2, _d0, _d1) : Slice<GoUInt32>);
        stdgo.fmt.Fmt.printf(("%v - %v = %v (carry bit was %v)\n" : GoString), Go.toInterface(_n1), Go.toInterface(_n2), Go.toInterface(_nsum), Go.toInterface(_carry));
        _n1 = (new Slice<GoUInt32>(2, 2, (3u32 : GoUInt32), (2147483647u32 : GoUInt32)) : Slice<GoUInt32>);
        _n2 = (new Slice<GoUInt32>(2, 2, (1u32 : GoUInt32), (-2147483648u32 : GoUInt32)) : Slice<GoUInt32>);
        {
            var __tmp__ = stdgo.math.bits.Bits.sub32(_n1[(1 : GoInt)], _n2[(1 : GoInt)], (0u32 : GoUInt32));
            _d1 = __tmp__._0;
            _carry = __tmp__._1;
        };
        {
            var __tmp__ = stdgo.math.bits.Bits.sub32(_n1[(0 : GoInt)], _n2[(0 : GoInt)], _carry);
            _d0 = __tmp__._0;
        };
        _nsum = (new Slice<GoUInt32>(2, 2, _d0, _d1) : Slice<GoUInt32>);
        stdgo.fmt.Fmt.printf(("%v - %v = %v (carry bit was %v)\n" : GoString), Go.toInterface(_n1), Go.toInterface(_n2), Go.toInterface(_nsum), Go.toInterface(_carry));
    }
function exampleSub64():Void {
        var _n1 = (new Slice<GoUInt64>(2, 2, (33i64 : GoUInt64), (23i64 : GoUInt64)) : Slice<GoUInt64>);
        var _n2 = (new Slice<GoUInt64>(2, 2, (21i64 : GoUInt64), (12i64 : GoUInt64)) : Slice<GoUInt64>);
        var __tmp__ = stdgo.math.bits.Bits.sub64(_n1[(1 : GoInt)], _n2[(1 : GoInt)], (0i64 : GoUInt64)), _d1:GoUInt64 = __tmp__._0, _carry:GoUInt64 = __tmp__._1;
        var __tmp__ = stdgo.math.bits.Bits.sub64(_n1[(0 : GoInt)], _n2[(0 : GoInt)], _carry), _d0:GoUInt64 = __tmp__._0, __0:GoUInt64 = __tmp__._1;
        var _nsum = (new Slice<GoUInt64>(2, 2, _d0, _d1) : Slice<GoUInt64>);
        stdgo.fmt.Fmt.printf(("%v - %v = %v (carry bit was %v)\n" : GoString), Go.toInterface(_n1), Go.toInterface(_n2), Go.toInterface(_nsum), Go.toInterface(_carry));
        _n1 = (new Slice<GoUInt64>(2, 2, (3i64 : GoUInt64), (9223372036854775807i64 : GoUInt64)) : Slice<GoUInt64>);
        _n2 = (new Slice<GoUInt64>(2, 2, (1i64 : GoUInt64), (-9223372036854775808i64 : GoUInt64)) : Slice<GoUInt64>);
        {
            var __tmp__ = stdgo.math.bits.Bits.sub64(_n1[(1 : GoInt)], _n2[(1 : GoInt)], (0i64 : GoUInt64));
            _d1 = __tmp__._0;
            _carry = __tmp__._1;
        };
        {
            var __tmp__ = stdgo.math.bits.Bits.sub64(_n1[(0 : GoInt)], _n2[(0 : GoInt)], _carry);
            _d0 = __tmp__._0;
        };
        _nsum = (new Slice<GoUInt64>(2, 2, _d0, _d1) : Slice<GoUInt64>);
        stdgo.fmt.Fmt.printf(("%v - %v = %v (carry bit was %v)\n" : GoString), Go.toInterface(_n1), Go.toInterface(_n2), Go.toInterface(_nsum), Go.toInterface(_carry));
    }
function exampleMul32():Void {
        var _n1 = (new Slice<GoUInt32>(2, 2, (0u32 : GoUInt32), (12u32 : GoUInt32)) : Slice<GoUInt32>);
        var _n2 = (new Slice<GoUInt32>(2, 2, (0u32 : GoUInt32), (12u32 : GoUInt32)) : Slice<GoUInt32>);
        var __tmp__ = stdgo.math.bits.Bits.mul32(_n1[(1 : GoInt)], _n2[(1 : GoInt)]), _hi:GoUInt32 = __tmp__._0, _lo:GoUInt32 = __tmp__._1;
        var _nsum = (new Slice<GoUInt32>(2, 2, _hi, _lo) : Slice<GoUInt32>);
        stdgo.fmt.Fmt.printf(("%v * %v = %v\n" : GoString), Go.toInterface(_n1[(1 : GoInt)]), Go.toInterface(_n2[(1 : GoInt)]), Go.toInterface(_nsum));
        _n1 = (new Slice<GoUInt32>(2, 2, (0u32 : GoUInt32), (-2147483648u32 : GoUInt32)) : Slice<GoUInt32>);
        _n2 = (new Slice<GoUInt32>(2, 2, (0u32 : GoUInt32), (2u32 : GoUInt32)) : Slice<GoUInt32>);
        {
            var __tmp__ = stdgo.math.bits.Bits.mul32(_n1[(1 : GoInt)], _n2[(1 : GoInt)]);
            _hi = __tmp__._0;
            _lo = __tmp__._1;
        };
        _nsum = (new Slice<GoUInt32>(2, 2, _hi, _lo) : Slice<GoUInt32>);
        stdgo.fmt.Fmt.printf(("%v * %v = %v\n" : GoString), Go.toInterface(_n1[(1 : GoInt)]), Go.toInterface(_n2[(1 : GoInt)]), Go.toInterface(_nsum));
    }
function exampleMul64():Void {
        var _n1 = (new Slice<GoUInt64>(2, 2, (0i64 : GoUInt64), (12i64 : GoUInt64)) : Slice<GoUInt64>);
        var _n2 = (new Slice<GoUInt64>(2, 2, (0i64 : GoUInt64), (12i64 : GoUInt64)) : Slice<GoUInt64>);
        var __tmp__ = stdgo.math.bits.Bits.mul64(_n1[(1 : GoInt)], _n2[(1 : GoInt)]), _hi:GoUInt64 = __tmp__._0, _lo:GoUInt64 = __tmp__._1;
        var _nsum = (new Slice<GoUInt64>(2, 2, _hi, _lo) : Slice<GoUInt64>);
        stdgo.fmt.Fmt.printf(("%v * %v = %v\n" : GoString), Go.toInterface(_n1[(1 : GoInt)]), Go.toInterface(_n2[(1 : GoInt)]), Go.toInterface(_nsum));
        _n1 = (new Slice<GoUInt64>(2, 2, (0i64 : GoUInt64), (-9223372036854775808i64 : GoUInt64)) : Slice<GoUInt64>);
        _n2 = (new Slice<GoUInt64>(2, 2, (0i64 : GoUInt64), (2i64 : GoUInt64)) : Slice<GoUInt64>);
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_n1[(1 : GoInt)], _n2[(1 : GoInt)]);
            _hi = __tmp__._0;
            _lo = __tmp__._1;
        };
        _nsum = (new Slice<GoUInt64>(2, 2, _hi, _lo) : Slice<GoUInt64>);
        stdgo.fmt.Fmt.printf(("%v * %v = %v\n" : GoString), Go.toInterface(_n1[(1 : GoInt)]), Go.toInterface(_n2[(1 : GoInt)]), Go.toInterface(_nsum));
    }
function exampleDiv32():Void {
        var _n1 = (new Slice<GoUInt32>(2, 2, (0u32 : GoUInt32), (6u32 : GoUInt32)) : Slice<GoUInt32>);
        var _n2 = (new Slice<GoUInt32>(2, 2, (0u32 : GoUInt32), (3u32 : GoUInt32)) : Slice<GoUInt32>);
        var __tmp__ = stdgo.math.bits.Bits.div32(_n1[(0 : GoInt)], _n1[(1 : GoInt)], _n2[(1 : GoInt)]), _quo:GoUInt32 = __tmp__._0, _rem:GoUInt32 = __tmp__._1;
        var _nsum = (new Slice<GoUInt32>(2, 2, _quo, _rem) : Slice<GoUInt32>);
        stdgo.fmt.Fmt.printf(("[%v %v] / %v = %v\n" : GoString), Go.toInterface(_n1[(0 : GoInt)]), Go.toInterface(_n1[(1 : GoInt)]), Go.toInterface(_n2[(1 : GoInt)]), Go.toInterface(_nsum));
        _n1 = (new Slice<GoUInt32>(2, 2, (2u32 : GoUInt32), (-2147483648u32 : GoUInt32)) : Slice<GoUInt32>);
        _n2 = (new Slice<GoUInt32>(2, 2, (0u32 : GoUInt32), (-2147483648u32 : GoUInt32)) : Slice<GoUInt32>);
        {
            var __tmp__ = stdgo.math.bits.Bits.div32(_n1[(0 : GoInt)], _n1[(1 : GoInt)], _n2[(1 : GoInt)]);
            _quo = __tmp__._0;
            _rem = __tmp__._1;
        };
        _nsum = (new Slice<GoUInt32>(2, 2, _quo, _rem) : Slice<GoUInt32>);
        stdgo.fmt.Fmt.printf(("[%v %v] / %v = %v\n" : GoString), Go.toInterface(_n1[(0 : GoInt)]), Go.toInterface(_n1[(1 : GoInt)]), Go.toInterface(_n2[(1 : GoInt)]), Go.toInterface(_nsum));
    }
function exampleDiv64():Void {
        var _n1 = (new Slice<GoUInt64>(2, 2, (0i64 : GoUInt64), (6i64 : GoUInt64)) : Slice<GoUInt64>);
        var _n2 = (new Slice<GoUInt64>(2, 2, (0i64 : GoUInt64), (3i64 : GoUInt64)) : Slice<GoUInt64>);
        var __tmp__ = stdgo.math.bits.Bits.div64(_n1[(0 : GoInt)], _n1[(1 : GoInt)], _n2[(1 : GoInt)]), _quo:GoUInt64 = __tmp__._0, _rem:GoUInt64 = __tmp__._1;
        var _nsum = (new Slice<GoUInt64>(2, 2, _quo, _rem) : Slice<GoUInt64>);
        stdgo.fmt.Fmt.printf(("[%v %v] / %v = %v\n" : GoString), Go.toInterface(_n1[(0 : GoInt)]), Go.toInterface(_n1[(1 : GoInt)]), Go.toInterface(_n2[(1 : GoInt)]), Go.toInterface(_nsum));
        _n1 = (new Slice<GoUInt64>(2, 2, (2i64 : GoUInt64), (-9223372036854775808i64 : GoUInt64)) : Slice<GoUInt64>);
        _n2 = (new Slice<GoUInt64>(2, 2, (0i64 : GoUInt64), (-9223372036854775808i64 : GoUInt64)) : Slice<GoUInt64>);
        {
            var __tmp__ = stdgo.math.bits.Bits.div64(_n1[(0 : GoInt)], _n1[(1 : GoInt)], _n2[(1 : GoInt)]);
            _quo = __tmp__._0;
            _rem = __tmp__._1;
        };
        _nsum = (new Slice<GoUInt64>(2, 2, _quo, _rem) : Slice<GoUInt64>);
        stdgo.fmt.Fmt.printf(("[%v %v] / %v = %v\n" : GoString), Go.toInterface(_n1[(0 : GoInt)]), Go.toInterface(_n1[(1 : GoInt)]), Go.toInterface(_n2[(1 : GoInt)]), Go.toInterface(_nsum));
    }
function exampleLeadingZeros8():Void {
        stdgo.fmt.Fmt.printf(("LeadingZeros8(%08b) = %d\n" : GoString), Go.toInterface((1 : GoInt)), Go.toInterface(stdgo.math.bits.Bits.leadingZeros8((1 : GoUInt8))));
    }
function exampleLeadingZeros16():Void {
        stdgo.fmt.Fmt.printf(("LeadingZeros16(%016b) = %d\n" : GoString), Go.toInterface((1 : GoInt)), Go.toInterface(stdgo.math.bits.Bits.leadingZeros16((1 : GoUInt16))));
    }
function exampleLeadingZeros32():Void {
        stdgo.fmt.Fmt.printf(("LeadingZeros32(%032b) = %d\n" : GoString), Go.toInterface((1 : GoInt)), Go.toInterface(stdgo.math.bits.Bits.leadingZeros32((1u32 : GoUInt32))));
    }
function exampleLeadingZeros64():Void {
        stdgo.fmt.Fmt.printf(("LeadingZeros64(%064b) = %d\n" : GoString), Go.toInterface((1 : GoInt)), Go.toInterface(stdgo.math.bits.Bits.leadingZeros64((1i64 : GoUInt64))));
    }
function exampleTrailingZeros8():Void {
        stdgo.fmt.Fmt.printf(("TrailingZeros8(%08b) = %d\n" : GoString), Go.toInterface((14 : GoInt)), Go.toInterface(stdgo.math.bits.Bits.trailingZeros8((14 : GoUInt8))));
    }
function exampleTrailingZeros16():Void {
        stdgo.fmt.Fmt.printf(("TrailingZeros16(%016b) = %d\n" : GoString), Go.toInterface((14 : GoInt)), Go.toInterface(stdgo.math.bits.Bits.trailingZeros16((14 : GoUInt16))));
    }
function exampleTrailingZeros32():Void {
        stdgo.fmt.Fmt.printf(("TrailingZeros32(%032b) = %d\n" : GoString), Go.toInterface((14 : GoInt)), Go.toInterface(stdgo.math.bits.Bits.trailingZeros32((14u32 : GoUInt32))));
    }
function exampleTrailingZeros64():Void {
        stdgo.fmt.Fmt.printf(("TrailingZeros64(%064b) = %d\n" : GoString), Go.toInterface((14 : GoInt)), Go.toInterface(stdgo.math.bits.Bits.trailingZeros64((14i64 : GoUInt64))));
    }
function exampleOnesCount():Void {
        stdgo.fmt.Fmt.printf(("OnesCount(%b) = %d\n" : GoString), Go.toInterface((14 : GoInt)), Go.toInterface(stdgo.math.bits.Bits.onesCount((14u32 : GoUInt))));
    }
function exampleOnesCount8():Void {
        stdgo.fmt.Fmt.printf(("OnesCount8(%08b) = %d\n" : GoString), Go.toInterface((14 : GoInt)), Go.toInterface(stdgo.math.bits.Bits.onesCount8((14 : GoUInt8))));
    }
function exampleOnesCount16():Void {
        stdgo.fmt.Fmt.printf(("OnesCount16(%016b) = %d\n" : GoString), Go.toInterface((14 : GoInt)), Go.toInterface(stdgo.math.bits.Bits.onesCount16((14 : GoUInt16))));
    }
function exampleOnesCount32():Void {
        stdgo.fmt.Fmt.printf(("OnesCount32(%032b) = %d\n" : GoString), Go.toInterface((14 : GoInt)), Go.toInterface(stdgo.math.bits.Bits.onesCount32((14u32 : GoUInt32))));
    }
function exampleOnesCount64():Void {
        stdgo.fmt.Fmt.printf(("OnesCount64(%064b) = %d\n" : GoString), Go.toInterface((14 : GoInt)), Go.toInterface(stdgo.math.bits.Bits.onesCount64((14i64 : GoUInt64))));
    }
function exampleRotateLeft8():Void {
        stdgo.fmt.Fmt.printf(("%08b\n" : GoString), Go.toInterface((15 : GoInt)));
        stdgo.fmt.Fmt.printf(("%08b\n" : GoString), Go.toInterface(stdgo.math.bits.Bits.rotateLeft8((15 : GoUInt8), (2 : GoInt))));
        stdgo.fmt.Fmt.printf(("%08b\n" : GoString), Go.toInterface(stdgo.math.bits.Bits.rotateLeft8((15 : GoUInt8), (-2 : GoInt))));
    }
function exampleRotateLeft16():Void {
        stdgo.fmt.Fmt.printf(("%016b\n" : GoString), Go.toInterface((15 : GoInt)));
        stdgo.fmt.Fmt.printf(("%016b\n" : GoString), Go.toInterface(stdgo.math.bits.Bits.rotateLeft16((15 : GoUInt16), (2 : GoInt))));
        stdgo.fmt.Fmt.printf(("%016b\n" : GoString), Go.toInterface(stdgo.math.bits.Bits.rotateLeft16((15 : GoUInt16), (-2 : GoInt))));
    }
function exampleRotateLeft32():Void {
        stdgo.fmt.Fmt.printf(("%032b\n" : GoString), Go.toInterface((15 : GoInt)));
        stdgo.fmt.Fmt.printf(("%032b\n" : GoString), Go.toInterface(stdgo.math.bits.Bits.rotateLeft32((15u32 : GoUInt32), (2 : GoInt))));
        stdgo.fmt.Fmt.printf(("%032b\n" : GoString), Go.toInterface(stdgo.math.bits.Bits.rotateLeft32((15u32 : GoUInt32), (-2 : GoInt))));
    }
function exampleRotateLeft64():Void {
        stdgo.fmt.Fmt.printf(("%064b\n" : GoString), Go.toInterface((15 : GoInt)));
        stdgo.fmt.Fmt.printf(("%064b\n" : GoString), Go.toInterface(stdgo.math.bits.Bits.rotateLeft64((15i64 : GoUInt64), (2 : GoInt))));
        stdgo.fmt.Fmt.printf(("%064b\n" : GoString), Go.toInterface(stdgo.math.bits.Bits.rotateLeft64((15i64 : GoUInt64), (-2 : GoInt))));
    }
function exampleReverse8():Void {
        stdgo.fmt.Fmt.printf(("%08b\n" : GoString), Go.toInterface((19 : GoInt)));
        stdgo.fmt.Fmt.printf(("%08b\n" : GoString), Go.toInterface(stdgo.math.bits.Bits.reverse8((19 : GoUInt8))));
    }
function exampleReverse16():Void {
        stdgo.fmt.Fmt.printf(("%016b\n" : GoString), Go.toInterface((19 : GoInt)));
        stdgo.fmt.Fmt.printf(("%016b\n" : GoString), Go.toInterface(stdgo.math.bits.Bits.reverse16((19 : GoUInt16))));
    }
function exampleReverse32():Void {
        stdgo.fmt.Fmt.printf(("%032b\n" : GoString), Go.toInterface((19 : GoInt)));
        stdgo.fmt.Fmt.printf(("%032b\n" : GoString), Go.toInterface(stdgo.math.bits.Bits.reverse32((19u32 : GoUInt32))));
    }
function exampleReverse64():Void {
        stdgo.fmt.Fmt.printf(("%064b\n" : GoString), Go.toInterface((19 : GoInt)));
        stdgo.fmt.Fmt.printf(("%064b\n" : GoString), Go.toInterface(stdgo.math.bits.Bits.reverse64((19i64 : GoUInt64))));
    }
function exampleReverseBytes16():Void {
        stdgo.fmt.Fmt.printf(("%016b\n" : GoString), Go.toInterface((15 : GoInt)));
        stdgo.fmt.Fmt.printf(("%016b\n" : GoString), Go.toInterface(stdgo.math.bits.Bits.reverseBytes16((15 : GoUInt16))));
    }
function exampleReverseBytes32():Void {
        stdgo.fmt.Fmt.printf(("%032b\n" : GoString), Go.toInterface((15 : GoInt)));
        stdgo.fmt.Fmt.printf(("%032b\n" : GoString), Go.toInterface(stdgo.math.bits.Bits.reverseBytes32((15u32 : GoUInt32))));
    }
function exampleReverseBytes64():Void {
        stdgo.fmt.Fmt.printf(("%064b\n" : GoString), Go.toInterface((15 : GoInt)));
        stdgo.fmt.Fmt.printf(("%064b\n" : GoString), Go.toInterface(stdgo.math.bits.Bits.reverseBytes64((15i64 : GoUInt64))));
    }
function exampleLen8():Void {
        stdgo.fmt.Fmt.printf(("Len8(%08b) = %d\n" : GoString), Go.toInterface((8 : GoInt)), Go.toInterface(stdgo.math.bits.Bits.len8((8 : GoUInt8))));
    }
function exampleLen16():Void {
        stdgo.fmt.Fmt.printf(("Len16(%016b) = %d\n" : GoString), Go.toInterface((8 : GoInt)), Go.toInterface(stdgo.math.bits.Bits.len16((8 : GoUInt16))));
    }
function exampleLen32():Void {
        stdgo.fmt.Fmt.printf(("Len32(%032b) = %d\n" : GoString), Go.toInterface((8 : GoInt)), Go.toInterface(stdgo.math.bits.Bits.len32((8u32 : GoUInt32))));
    }
function exampleLen64():Void {
        stdgo.fmt.Fmt.printf(("Len64(%064b) = %d\n" : GoString), Go.toInterface((8 : GoInt)), Go.toInterface(stdgo.math.bits.Bits.len64((8i64 : GoUInt64))));
    }
@:keep var _ = {
        try {
            _tab[(0 : GoInt)] = ({ _nlz : (8 : GoInt), _ntz : (8 : GoInt), _pop : (0 : GoInt) } : T_entry);
            {
                var _i:GoInt = (1 : GoInt);
                Go.cfor(_i < (_tab.length), _i++, {
                    var _x:GoInt = _i;
                    var _n:GoInt = (0 : GoInt);
                    while (_x & (128 : GoInt) == ((0 : GoInt))) {
                        _n++;
                        _x = _x << ((1i64 : GoUInt64));
                    };
                    _tab[(_i : GoInt)]._nlz = _n;
                    _x = _i;
                    _n = (0 : GoInt);
                    while (_x & (1 : GoInt) == ((0 : GoInt))) {
                        _n++;
                        _x = _x >> ((1i64 : GoUInt64));
                    };
                    _tab[(_i : GoInt)]._ntz = _n;
                    _x = _i;
                    _n = (0 : GoInt);
                    while (_x != ((0 : GoInt))) {
                        _n = _n + ((_x & (1 : GoInt) : GoInt));
                        _x = _x >> ((1i64 : GoUInt64));
                    };
                    _tab[(_i : GoInt)]._pop = _n;
                });
            };
        } catch(__exception__) if (__exception__.message != "__return__") throw __exception__;
        true;
    };
