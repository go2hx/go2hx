package stdgo._internal.crypto.aes;
function testTe(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (256 : stdgo.GoInt) : Bool)) {
                var _s = (stdgo._internal.crypto.aes.Aes__sbox0._sbox0[(_i : stdgo.GoInt)] : stdgo.GoUInt32);
var _s2 = (stdgo._internal.crypto.aes.Aes__mul._mul(_s, (2u32 : stdgo.GoUInt32)) : stdgo.GoUInt32);
var _s3 = (stdgo._internal.crypto.aes.Aes__mul._mul(_s, (3u32 : stdgo.GoUInt32)) : stdgo.GoUInt32);
var _w = ((((_s2 << (24i64 : stdgo.GoUInt64) : stdgo.GoUInt32) | (_s << (16i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoUInt32) | (_s << (8i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoUInt32) | _s3 : stdgo.GoUInt32);
var _te = (new stdgo.Slice<stdgo.GoArray<stdgo.GoUInt32>>(4, 4, ...[stdgo._internal.crypto.aes.Aes__te0._te0.__copy__(), stdgo._internal.crypto.aes.Aes__te1._te1.__copy__(), stdgo._internal.crypto.aes.Aes__te2._te2.__copy__(), stdgo._internal.crypto.aes.Aes__te3._te3.__copy__()].concat([for (i in 4 ... (4 > 4 ? 4 : 4 : stdgo.GoInt).toBasic()) new stdgo.GoArray<stdgo.GoUInt32>(256, 256).__setNumber32__()])) : stdgo.Slice<stdgo.GoArray<stdgo.GoUInt32>>);
{
                    var _j = (0 : stdgo.GoInt);
                    while ((_j < (4 : stdgo.GoInt) : Bool)) {
                        {
                            var _x = (_te[(_j : stdgo.GoInt)][(_i : stdgo.GoInt)] : stdgo.GoUInt32);
                            if (_x != (_w)) {
                                @:check2r _t.fatalf(("te[%d][%d] = %#x, want %#x" : stdgo.GoString), stdgo.Go.toInterface(_j), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_x), stdgo.Go.toInterface(_w));
                            };
                        };
_w = ((_w << (24i64 : stdgo.GoUInt64) : stdgo.GoUInt32) | (_w >> (8i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoUInt32);
                        _j++;
                    };
                };
                _i++;
            };
        };
    }
