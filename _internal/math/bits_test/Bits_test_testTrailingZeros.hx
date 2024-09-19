package _internal.math.bits_test;
import stdgo._internal.math.bits.Bits;
function testTrailingZeros(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (256 : stdgo.GoInt) : Bool), _i++, {
                var _ntz = (_internal.math.bits_test.Bits_test__tab._tab[(_i : stdgo.GoInt)]._ntz : stdgo.GoInt);
                {
                    var _k = (0 : stdgo.GoInt);
                    stdgo.Go.cfor((_k < (56 : stdgo.GoInt) : Bool), _k++, {
                        var _x = ((_i : stdgo.GoUInt64) << (_k : stdgo.GoUInt) : stdgo.GoUInt64);
                        var _want = (_ntz + _k : stdgo.GoInt);
                        if ((_x <= (255i64 : stdgo.GoUInt64) : Bool)) {
                            var _got = (stdgo._internal.math.bits.Bits_trailingZeros8.trailingZeros8((_x : stdgo.GoUInt8)) : stdgo.GoInt);
                            if (_x == ((0i64 : stdgo.GoUInt64))) {
                                _want = (8 : stdgo.GoInt);
                            };
                            if (_got != (_want)) {
                                _t.fatalf(("TrailingZeros8(%#02x) == %d; want %d" : stdgo.GoString), stdgo.Go.toInterface(_x), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_want));
                            };
                        };
                        if ((_x <= (65535i64 : stdgo.GoUInt64) : Bool)) {
                            var _got = (stdgo._internal.math.bits.Bits_trailingZeros16.trailingZeros16((_x : stdgo.GoUInt16)) : stdgo.GoInt);
                            if (_x == ((0i64 : stdgo.GoUInt64))) {
                                _want = (16 : stdgo.GoInt);
                            };
                            if (_got != (_want)) {
                                _t.fatalf(("TrailingZeros16(%#04x) == %d; want %d" : stdgo.GoString), stdgo.Go.toInterface(_x), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_want));
                            };
                        };
                        if ((_x <= (4294967295i64 : stdgo.GoUInt64) : Bool)) {
                            var _got = (stdgo._internal.math.bits.Bits_trailingZeros32.trailingZeros32((_x : stdgo.GoUInt32)) : stdgo.GoInt);
                            if (_x == ((0i64 : stdgo.GoUInt64))) {
                                _want = (32 : stdgo.GoInt);
                            };
                            if (_got != (_want)) {
                                _t.fatalf(("TrailingZeros32(%#08x) == %d; want %d" : stdgo.GoString), stdgo.Go.toInterface(_x), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_want));
                            };
                            if (true) {
                                _got = stdgo._internal.math.bits.Bits_trailingZeros.trailingZeros((_x : stdgo.GoUInt));
                                if (_got != (_want)) {
                                    _t.fatalf(("TrailingZeros(%#08x) == %d; want %d" : stdgo.GoString), stdgo.Go.toInterface(_x), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_want));
                                };
                            };
                        };
                        if ((_x <= (-1i64 : stdgo.GoUInt64) : Bool)) {
                            var _got = (stdgo._internal.math.bits.Bits_trailingZeros64.trailingZeros64((_x : stdgo.GoUInt64)) : stdgo.GoInt);
                            if (_x == ((0i64 : stdgo.GoUInt64))) {
                                _want = (64 : stdgo.GoInt);
                            };
                            if (_got != (_want)) {
                                _t.fatalf(("TrailingZeros64(%#016x) == %d; want %d" : stdgo.GoString), stdgo.Go.toInterface(_x), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_want));
                            };
                            if (false) {
                                _got = stdgo._internal.math.bits.Bits_trailingZeros.trailingZeros((_x : stdgo.GoUInt));
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
