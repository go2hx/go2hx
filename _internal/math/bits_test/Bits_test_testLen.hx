package _internal.math.bits_test;
import stdgo._internal.math.bits.Bits;
function testLen(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (256 : stdgo.GoInt) : Bool), _i++, {
                var _len = ((8 : stdgo.GoInt) - _internal.math.bits_test.Bits_test__tab._tab[(_i : stdgo.GoInt)]._nlz : stdgo.GoInt);
                {
                    var _k = (0 : stdgo.GoInt);
                    stdgo.Go.cfor((_k < (56 : stdgo.GoInt) : Bool), _k++, {
                        var _x = ((_i : stdgo.GoUInt64) << (_k : stdgo.GoUInt) : stdgo.GoUInt64);
                        var _want = (0 : stdgo.GoInt);
                        if (_x != ((0i64 : stdgo.GoUInt64))) {
                            _want = (_len + _k : stdgo.GoInt);
                        };
                        if ((_x <= (255i64 : stdgo.GoUInt64) : Bool)) {
                            var _got = (stdgo._internal.math.bits.Bits_len8.len8((_x : stdgo.GoUInt8)) : stdgo.GoInt);
                            if (_got != (_want)) {
                                _t.fatalf(("Len8(%#02x) == %d; want %d" : stdgo.GoString), stdgo.Go.toInterface(_x), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_want));
                            };
                        };
                        if ((_x <= (65535i64 : stdgo.GoUInt64) : Bool)) {
                            var _got = (stdgo._internal.math.bits.Bits_len16.len16((_x : stdgo.GoUInt16)) : stdgo.GoInt);
                            if (_got != (_want)) {
                                _t.fatalf(("Len16(%#04x) == %d; want %d" : stdgo.GoString), stdgo.Go.toInterface(_x), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_want));
                            };
                        };
                        if ((_x <= (4294967295i64 : stdgo.GoUInt64) : Bool)) {
                            var _got = (stdgo._internal.math.bits.Bits_len32.len32((_x : stdgo.GoUInt32)) : stdgo.GoInt);
                            if (_got != (_want)) {
                                _t.fatalf(("Len32(%#08x) == %d; want %d" : stdgo.GoString), stdgo.Go.toInterface(_x), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_want));
                            };
                            if (true) {
                                var _got = (stdgo._internal.math.bits.Bits_len.len((_x : stdgo.GoUInt)) : stdgo.GoInt);
                                if (_got != (_want)) {
                                    _t.fatalf(("Len(%#08x) == %d; want %d" : stdgo.GoString), stdgo.Go.toInterface(_x), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_want));
                                };
                            };
                        };
                        if ((_x <= (-1i64 : stdgo.GoUInt64) : Bool)) {
                            var _got = (stdgo._internal.math.bits.Bits_len64.len64((_x : stdgo.GoUInt64)) : stdgo.GoInt);
                            if (_got != (_want)) {
                                _t.fatalf(("Len64(%#016x) == %d; want %d" : stdgo.GoString), stdgo.Go.toInterface(_x), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_want));
                            };
                            if (false) {
                                var _got = (stdgo._internal.math.bits.Bits_len.len((_x : stdgo.GoUInt)) : stdgo.GoInt);
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
