package _internal.math.bits_test;
import stdgo._internal.math.bits.Bits;
function testLeadingZeros(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (256 : stdgo.GoInt) : Bool), _i++, {
                var _nlz = (_internal.math.bits_test.Bits_test__tab._tab[(_i : stdgo.GoInt)]._nlz : stdgo.GoInt);
                {
                    var _k = (0 : stdgo.GoInt);
                    stdgo.Go.cfor((_k < (56 : stdgo.GoInt) : Bool), _k++, {
                        var _x = ((_i : stdgo.GoUInt64) << (_k : stdgo.GoUInt) : stdgo.GoUInt64);
                        if ((_x <= (255i64 : stdgo.GoUInt64) : Bool)) {
                            var _got = (stdgo._internal.math.bits.Bits_leadingZeros8.leadingZeros8((_x : stdgo.GoUInt8)) : stdgo.GoInt);
                            var _want = ((_nlz - _k : stdgo.GoInt) + (0 : stdgo.GoInt) : stdgo.GoInt);
                            if (_x == ((0i64 : stdgo.GoUInt64))) {
                                _want = (8 : stdgo.GoInt);
                            };
                            if (_got != (_want)) {
                                _t.fatalf(("LeadingZeros8(%#02x) == %d; want %d" : stdgo.GoString), stdgo.Go.toInterface(_x), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_want));
                            };
                        };
                        if ((_x <= (65535i64 : stdgo.GoUInt64) : Bool)) {
                            var _got = (stdgo._internal.math.bits.Bits_leadingZeros16.leadingZeros16((_x : stdgo.GoUInt16)) : stdgo.GoInt);
                            var _want = ((_nlz - _k : stdgo.GoInt) + (8 : stdgo.GoInt) : stdgo.GoInt);
                            if (_x == ((0i64 : stdgo.GoUInt64))) {
                                _want = (16 : stdgo.GoInt);
                            };
                            if (_got != (_want)) {
                                _t.fatalf(("LeadingZeros16(%#04x) == %d; want %d" : stdgo.GoString), stdgo.Go.toInterface(_x), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_want));
                            };
                        };
                        if ((_x <= (4294967295i64 : stdgo.GoUInt64) : Bool)) {
                            var _got = (stdgo._internal.math.bits.Bits_leadingZeros32.leadingZeros32((_x : stdgo.GoUInt32)) : stdgo.GoInt);
                            var _want = ((_nlz - _k : stdgo.GoInt) + (24 : stdgo.GoInt) : stdgo.GoInt);
                            if (_x == ((0i64 : stdgo.GoUInt64))) {
                                _want = (32 : stdgo.GoInt);
                            };
                            if (_got != (_want)) {
                                _t.fatalf(("LeadingZeros32(%#08x) == %d; want %d" : stdgo.GoString), stdgo.Go.toInterface(_x), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_want));
                            };
                            if (true) {
                                _got = stdgo._internal.math.bits.Bits_leadingZeros.leadingZeros((_x : stdgo.GoUInt));
                                if (_got != (_want)) {
                                    _t.fatalf(("LeadingZeros(%#08x) == %d; want %d" : stdgo.GoString), stdgo.Go.toInterface(_x), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_want));
                                };
                            };
                        };
                        if ((_x <= (-1i64 : stdgo.GoUInt64) : Bool)) {
                            var _got = (stdgo._internal.math.bits.Bits_leadingZeros64.leadingZeros64((_x : stdgo.GoUInt64)) : stdgo.GoInt);
                            var _want = ((_nlz - _k : stdgo.GoInt) + (56 : stdgo.GoInt) : stdgo.GoInt);
                            if (_x == ((0i64 : stdgo.GoUInt64))) {
                                _want = (64 : stdgo.GoInt);
                            };
                            if (_got != (_want)) {
                                _t.fatalf(("LeadingZeros64(%#016x) == %d; want %d" : stdgo.GoString), stdgo.Go.toInterface(_x), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_want));
                            };
                            if (false) {
                                _got = stdgo._internal.math.bits.Bits_leadingZeros.leadingZeros((_x : stdgo.GoUInt));
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
