package _internal.math.bits_test;
import stdgo._internal.math.bits.Bits;
function _testOnesCount(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>, _x:stdgo.GoUInt64, _want:stdgo.GoInt):Void {
        if ((_x <= (255i64 : stdgo.GoUInt64) : Bool)) {
            var _got = (stdgo._internal.math.bits.Bits_onesCount8.onesCount8((_x : stdgo.GoUInt8)) : stdgo.GoInt);
            if (_got != (_want)) {
                _t.fatalf(("OnesCount8(%#02x) == %d; want %d" : stdgo.GoString), stdgo.Go.toInterface((_x : stdgo.GoUInt8)), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_want));
            };
        };
        if ((_x <= (65535i64 : stdgo.GoUInt64) : Bool)) {
            var _got = (stdgo._internal.math.bits.Bits_onesCount16.onesCount16((_x : stdgo.GoUInt16)) : stdgo.GoInt);
            if (_got != (_want)) {
                _t.fatalf(("OnesCount16(%#04x) == %d; want %d" : stdgo.GoString), stdgo.Go.toInterface((_x : stdgo.GoUInt16)), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_want));
            };
        };
        if ((_x <= (4294967295i64 : stdgo.GoUInt64) : Bool)) {
            var _got = (stdgo._internal.math.bits.Bits_onesCount32.onesCount32((_x : stdgo.GoUInt32)) : stdgo.GoInt);
            if (_got != (_want)) {
                _t.fatalf(("OnesCount32(%#08x) == %d; want %d" : stdgo.GoString), stdgo.Go.toInterface((_x : stdgo.GoUInt32)), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_want));
            };
            if (true) {
                _got = stdgo._internal.math.bits.Bits_onesCount.onesCount((_x : stdgo.GoUInt));
                if (_got != (_want)) {
                    _t.fatalf(("OnesCount(%#08x) == %d; want %d" : stdgo.GoString), stdgo.Go.toInterface((_x : stdgo.GoUInt32)), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_want));
                };
            };
        };
        if ((_x <= (-1i64 : stdgo.GoUInt64) : Bool)) {
            var _got = (stdgo._internal.math.bits.Bits_onesCount64.onesCount64((_x : stdgo.GoUInt64)) : stdgo.GoInt);
            if (_got != (_want)) {
                _t.fatalf(("OnesCount64(%#016x) == %d; want %d" : stdgo.GoString), stdgo.Go.toInterface(_x), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_want));
            };
            if (false) {
                _got = stdgo._internal.math.bits.Bits_onesCount.onesCount((_x : stdgo.GoUInt));
                if (_got != (_want)) {
                    _t.fatalf(("OnesCount(%#016x) == %d; want %d" : stdgo.GoString), stdgo.Go.toInterface(_x), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_want));
                };
            };
        };
    }
