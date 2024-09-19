package _internal.math.bits_test;
import stdgo._internal.math.bits.Bits;
function _testReverse(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>, _x64:stdgo.GoUInt64, _want64:stdgo.GoUInt64):Void {
        var _x8 = (_x64 : stdgo.GoUInt8);
        var _got8 = (stdgo._internal.math.bits.Bits_reverse8.reverse8(_x8) : stdgo.GoUInt8);
        var _want8 = ((_want64 >> (56i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt8);
        if (_got8 != (_want8)) {
            _t.fatalf(("Reverse8(%#02x) == %#02x; want %#02x" : stdgo.GoString), stdgo.Go.toInterface(_x8), stdgo.Go.toInterface(_got8), stdgo.Go.toInterface(_want8));
        };
        var _x16 = (_x64 : stdgo.GoUInt16);
        var _got16 = (stdgo._internal.math.bits.Bits_reverse16.reverse16(_x16) : stdgo.GoUInt16);
        var _want16 = ((_want64 >> (48i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt16);
        if (_got16 != (_want16)) {
            _t.fatalf(("Reverse16(%#04x) == %#04x; want %#04x" : stdgo.GoString), stdgo.Go.toInterface(_x16), stdgo.Go.toInterface(_got16), stdgo.Go.toInterface(_want16));
        };
        var _x32 = (_x64 : stdgo.GoUInt32);
        var _got32 = (stdgo._internal.math.bits.Bits_reverse32.reverse32(_x32) : stdgo.GoUInt32);
        var _want32 = ((_want64 >> (32i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt32);
        if (_got32 != (_want32)) {
            _t.fatalf(("Reverse32(%#08x) == %#08x; want %#08x" : stdgo.GoString), stdgo.Go.toInterface(_x32), stdgo.Go.toInterface(_got32), stdgo.Go.toInterface(_want32));
        };
        if (true) {
            var _x = (_x32 : stdgo.GoUInt);
            var _got = (stdgo._internal.math.bits.Bits_reverse.reverse(_x) : stdgo.GoUInt);
            var _want = (_want32 : stdgo.GoUInt);
            if (_got != (_want)) {
                _t.fatalf(("Reverse(%#08x) == %#08x; want %#08x" : stdgo.GoString), stdgo.Go.toInterface(_x), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_want));
            };
        };
        var _got64 = (stdgo._internal.math.bits.Bits_reverse64.reverse64(_x64) : stdgo.GoUInt64);
        if (_got64 != (_want64)) {
            _t.fatalf(("Reverse64(%#016x) == %#016x; want %#016x" : stdgo.GoString), stdgo.Go.toInterface(_x64), stdgo.Go.toInterface(_got64), stdgo.Go.toInterface(_want64));
        };
        if (false) {
            var _x = (_x64 : stdgo.GoUInt);
            var _got = (stdgo._internal.math.bits.Bits_reverse.reverse(_x) : stdgo.GoUInt);
            var _want = (_want64 : stdgo.GoUInt);
            if (_got != (_want)) {
                _t.fatalf(("Reverse(%#08x) == %#016x; want %#016x" : stdgo.GoString), stdgo.Go.toInterface(_x), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_want));
            };
        };
    }
