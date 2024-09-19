package _internal.math.bits_test;
import stdgo._internal.math.bits.Bits;
function testRotateLeft(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _m:stdgo.GoUInt64 = (285870213051353865i64 : stdgo.GoUInt64);
        {
            var _k = ((0u32 : stdgo.GoUInt) : stdgo.GoUInt);
            stdgo.Go.cfor((_k < (128u32 : stdgo.GoUInt) : Bool), _k++, {
                var _x8 = (_m : stdgo.GoUInt8);
                var _got8 = (stdgo._internal.math.bits.Bits_rotateLeft8.rotateLeft8(_x8, (_k : stdgo.GoInt)) : stdgo.GoUInt8);
                var _want8 = ((_x8 << ((_k & (7u32 : stdgo.GoUInt) : stdgo.GoUInt)) : stdgo.GoUInt8) | (_x8 >> (((8u32 : stdgo.GoUInt) - (_k & (7u32 : stdgo.GoUInt) : stdgo.GoUInt) : stdgo.GoUInt)) : stdgo.GoUInt8) : stdgo.GoUInt8);
                if (_got8 != (_want8)) {
                    _t.fatalf(("RotateLeft8(%#02x, %d) == %#02x; want %#02x" : stdgo.GoString), stdgo.Go.toInterface(_x8), stdgo.Go.toInterface(_k), stdgo.Go.toInterface(_got8), stdgo.Go.toInterface(_want8));
                };
                _got8 = stdgo._internal.math.bits.Bits_rotateLeft8.rotateLeft8(_want8, -(_k : stdgo.GoInt));
                if (_got8 != (_x8)) {
                    _t.fatalf(("RotateLeft8(%#02x, -%d) == %#02x; want %#02x" : stdgo.GoString), stdgo.Go.toInterface(_want8), stdgo.Go.toInterface(_k), stdgo.Go.toInterface(_got8), stdgo.Go.toInterface(_x8));
                };
                var _x16 = (_m : stdgo.GoUInt16);
                var _got16 = (stdgo._internal.math.bits.Bits_rotateLeft16.rotateLeft16(_x16, (_k : stdgo.GoInt)) : stdgo.GoUInt16);
                var _want16 = ((_x16 << ((_k & (15u32 : stdgo.GoUInt) : stdgo.GoUInt)) : stdgo.GoUInt16) | (_x16 >> (((16u32 : stdgo.GoUInt) - (_k & (15u32 : stdgo.GoUInt) : stdgo.GoUInt) : stdgo.GoUInt)) : stdgo.GoUInt16) : stdgo.GoUInt16);
                if (_got16 != (_want16)) {
                    _t.fatalf(("RotateLeft16(%#04x, %d) == %#04x; want %#04x" : stdgo.GoString), stdgo.Go.toInterface(_x16), stdgo.Go.toInterface(_k), stdgo.Go.toInterface(_got16), stdgo.Go.toInterface(_want16));
                };
                _got16 = stdgo._internal.math.bits.Bits_rotateLeft16.rotateLeft16(_want16, -(_k : stdgo.GoInt));
                if (_got16 != (_x16)) {
                    _t.fatalf(("RotateLeft16(%#04x, -%d) == %#04x; want %#04x" : stdgo.GoString), stdgo.Go.toInterface(_want16), stdgo.Go.toInterface(_k), stdgo.Go.toInterface(_got16), stdgo.Go.toInterface(_x16));
                };
                var _x32 = (_m : stdgo.GoUInt32);
                var _got32 = (stdgo._internal.math.bits.Bits_rotateLeft32.rotateLeft32(_x32, (_k : stdgo.GoInt)) : stdgo.GoUInt32);
                var _want32 = ((_x32 << ((_k & (31u32 : stdgo.GoUInt) : stdgo.GoUInt)) : stdgo.GoUInt32) | (_x32 >> (((32u32 : stdgo.GoUInt) - (_k & (31u32 : stdgo.GoUInt) : stdgo.GoUInt) : stdgo.GoUInt)) : stdgo.GoUInt32) : stdgo.GoUInt32);
                if (_got32 != (_want32)) {
                    _t.fatalf(("RotateLeft32(%#08x, %d) == %#08x; want %#08x" : stdgo.GoString), stdgo.Go.toInterface(_x32), stdgo.Go.toInterface(_k), stdgo.Go.toInterface(_got32), stdgo.Go.toInterface(_want32));
                };
                _got32 = stdgo._internal.math.bits.Bits_rotateLeft32.rotateLeft32(_want32, -(_k : stdgo.GoInt));
                if (_got32 != (_x32)) {
                    _t.fatalf(("RotateLeft32(%#08x, -%d) == %#08x; want %#08x" : stdgo.GoString), stdgo.Go.toInterface(_want32), stdgo.Go.toInterface(_k), stdgo.Go.toInterface(_got32), stdgo.Go.toInterface(_x32));
                };
                if (true) {
                    var _x = (_m : stdgo.GoUInt);
                    var _got = (stdgo._internal.math.bits.Bits_rotateLeft.rotateLeft(_x, (_k : stdgo.GoInt)) : stdgo.GoUInt);
                    var _want = ((_x << ((_k & (31u32 : stdgo.GoUInt) : stdgo.GoUInt)) : stdgo.GoUInt) | (_x >> (((32u32 : stdgo.GoUInt) - (_k & (31u32 : stdgo.GoUInt) : stdgo.GoUInt) : stdgo.GoUInt)) : stdgo.GoUInt) : stdgo.GoUInt);
                    if (_got != (_want)) {
                        _t.fatalf(("RotateLeft(%#08x, %d) == %#08x; want %#08x" : stdgo.GoString), stdgo.Go.toInterface(_x), stdgo.Go.toInterface(_k), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_want));
                    };
                    _got = stdgo._internal.math.bits.Bits_rotateLeft.rotateLeft(_want, -(_k : stdgo.GoInt));
                    if (_got != (_x)) {
                        _t.fatalf(("RotateLeft(%#08x, -%d) == %#08x; want %#08x" : stdgo.GoString), stdgo.Go.toInterface(_want), stdgo.Go.toInterface(_k), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_x));
                    };
                };
                var _x64 = (_m : stdgo.GoUInt64);
                var _got64 = (stdgo._internal.math.bits.Bits_rotateLeft64.rotateLeft64(_x64, (_k : stdgo.GoInt)) : stdgo.GoUInt64);
                var _want64 = ((_x64 << ((_k & (63u32 : stdgo.GoUInt) : stdgo.GoUInt)) : stdgo.GoUInt64) | (_x64 >> (((64u32 : stdgo.GoUInt) - (_k & (63u32 : stdgo.GoUInt) : stdgo.GoUInt) : stdgo.GoUInt)) : stdgo.GoUInt64) : stdgo.GoUInt64);
                if (_got64 != (_want64)) {
                    _t.fatalf(("RotateLeft64(%#016x, %d) == %#016x; want %#016x" : stdgo.GoString), stdgo.Go.toInterface(_x64), stdgo.Go.toInterface(_k), stdgo.Go.toInterface(_got64), stdgo.Go.toInterface(_want64));
                };
                _got64 = stdgo._internal.math.bits.Bits_rotateLeft64.rotateLeft64(_want64, -(_k : stdgo.GoInt));
                if (_got64 != (_x64)) {
                    _t.fatalf(("RotateLeft64(%#016x, -%d) == %#016x; want %#016x" : stdgo.GoString), stdgo.Go.toInterface(_want64), stdgo.Go.toInterface(_k), stdgo.Go.toInterface(_got64), stdgo.Go.toInterface(_x64));
                };
                if (false) {
                    var _x = (_m : stdgo.GoUInt);
                    var _got = (stdgo._internal.math.bits.Bits_rotateLeft.rotateLeft(_x, (_k : stdgo.GoInt)) : stdgo.GoUInt);
                    var _want = ((_x << ((_k & (63u32 : stdgo.GoUInt) : stdgo.GoUInt)) : stdgo.GoUInt) | (_x >> (((64u32 : stdgo.GoUInt) - (_k & (63u32 : stdgo.GoUInt) : stdgo.GoUInt) : stdgo.GoUInt)) : stdgo.GoUInt) : stdgo.GoUInt);
                    if (_got != (_want)) {
                        _t.fatalf(("RotateLeft(%#016x, %d) == %#016x; want %#016x" : stdgo.GoString), stdgo.Go.toInterface(_x), stdgo.Go.toInterface(_k), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_want));
                    };
                    _got = stdgo._internal.math.bits.Bits_rotateLeft.rotateLeft(_want, -(_k : stdgo.GoInt));
                    if (_got != (_x)) {
                        _t.fatalf(("RotateLeft(%#08x, -%d) == %#08x; want %#08x" : stdgo.GoString), stdgo.Go.toInterface(_want), stdgo.Go.toInterface(_k), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_x));
                    };
                };
            });
        };
    }
