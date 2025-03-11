package stdgo._internal.crypto.aes;
function testTd(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (256 : stdgo.GoInt) : Bool)) {
                var _s = (stdgo._internal.crypto.aes.Aes__sbox1._sbox1[(_i : stdgo.GoInt)] : stdgo.GoUInt32);
var _s9 = (stdgo._internal.crypto.aes.Aes__mul._mul(_s, (9u32 : stdgo.GoUInt32)) : stdgo.GoUInt32);
var _sb = (stdgo._internal.crypto.aes.Aes__mul._mul(_s, (11u32 : stdgo.GoUInt32)) : stdgo.GoUInt32);
var _sd = (stdgo._internal.crypto.aes.Aes__mul._mul(_s, (13u32 : stdgo.GoUInt32)) : stdgo.GoUInt32);
var _se = (stdgo._internal.crypto.aes.Aes__mul._mul(_s, (14u32 : stdgo.GoUInt32)) : stdgo.GoUInt32);
var _w = ((((_se << (24i64 : stdgo.GoUInt64) : stdgo.GoUInt32) | (_s9 << (16i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoUInt32) | (_sd << (8i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoUInt32) | _sb : stdgo.GoUInt32);
var _td = (new stdgo.Slice<stdgo.GoArray<stdgo.GoUInt32>>(4, 4, ...[stdgo._internal.crypto.aes.Aes__td0._td0.__copy__(), stdgo._internal.crypto.aes.Aes__td1._td1.__copy__(), stdgo._internal.crypto.aes.Aes__td2._td2.__copy__(), stdgo._internal.crypto.aes.Aes__td3._td3.__copy__()].concat([for (i in 4 ... (4 > 4 ? 4 : 4 : stdgo.GoInt).toBasic()) new stdgo.GoArray<stdgo.GoUInt32>(256, 256).__setNumber32__()])) : stdgo.Slice<stdgo.GoArray<stdgo.GoUInt32>>);
{
                    var _j = (0 : stdgo.GoInt);
                    while ((_j < (4 : stdgo.GoInt) : Bool)) {
                        {
                            var _x = (_td[(_j : stdgo.GoInt)][(_i : stdgo.GoInt)] : stdgo.GoUInt32);
                            if (_x != (_w)) {
                                @:check2r _t.fatalf(("td[%d][%d] = %#x, want %#x" : stdgo.GoString), stdgo.Go.toInterface(_j), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_x), stdgo.Go.toInterface(_w));
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
