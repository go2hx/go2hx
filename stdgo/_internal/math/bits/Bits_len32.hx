package stdgo._internal.math.bits;
import stdgo._internal.unsafe.Unsafe;
function len32(_x:stdgo.GoUInt32):stdgo.GoInt {
        var _n = (0 : stdgo.GoInt);
        if ((_x >= (65536u32 : stdgo.GoUInt32) : Bool)) {
            _x = (_x >> ((16i64 : stdgo.GoUInt64)) : stdgo.GoUInt32);
            _n = (16 : stdgo.GoInt);
        };
        if ((_x >= (256u32 : stdgo.GoUInt32) : Bool)) {
            _x = (_x >> ((8i64 : stdgo.GoUInt64)) : stdgo.GoUInt32);
            _n = (_n + ((8 : stdgo.GoInt)) : stdgo.GoInt);
        };
        return (_n + (stdgo.Go.str(0,
1,
2,
2,
3,
3,
3,
3,
4,
4,
4,
4,
4,
4,
4,
4,
5,
5,
5,
5,
5,
5,
5,
5,
5,
5,
5,
5,
5,
5,
5,
5,
6,
6,
6,
6,
6,
6,
6,
6,
6,
6,
6,
6,
6,
6,
6,
6,
6,
6,
6,
6,
6,
6,
6,
6,
6,
6,
6,
6,
6,
6,
6,
6,
"\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08")[(_x : stdgo.GoInt)] : stdgo.GoInt) : stdgo.GoInt);
    }