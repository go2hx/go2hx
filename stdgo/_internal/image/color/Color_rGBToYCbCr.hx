package stdgo._internal.image.color;
function rGBToYCbCr(_r:stdgo.GoUInt8, _g:stdgo.GoUInt8, _b:stdgo.GoUInt8):{ var _0 : stdgo.GoUInt8; var _1 : stdgo.GoUInt8; var _2 : stdgo.GoUInt8; } {
        var _r1 = (_r : stdgo.GoInt32);
        var _g1 = (_g : stdgo.GoInt32);
        var _b1 = (_b : stdgo.GoInt32);
        var _yy = (((((((19595 : stdgo.GoInt32) * _r1 : stdgo.GoInt32) + ((38470 : stdgo.GoInt32) * _g1 : stdgo.GoInt32) : stdgo.GoInt32) + ((7471 : stdgo.GoInt32) * _b1 : stdgo.GoInt32) : stdgo.GoInt32) + (32768 : stdgo.GoInt32) : stdgo.GoInt32)) >> (16i64 : stdgo.GoUInt64) : stdgo.GoInt32);
        var _cb = (((((-11056 : stdgo.GoInt32) * _r1 : stdgo.GoInt32) - ((21712 : stdgo.GoInt32) * _g1 : stdgo.GoInt32) : stdgo.GoInt32) + ((32768 : stdgo.GoInt32) * _b1 : stdgo.GoInt32) : stdgo.GoInt32) + (8421376 : stdgo.GoInt32) : stdgo.GoInt32);
        if (((_cb : stdgo.GoUInt32) & (-16777216u32 : stdgo.GoUInt32) : stdgo.GoUInt32) == ((0u32 : stdgo.GoUInt32))) {
            _cb = (_cb >> ((16i64 : stdgo.GoUInt64)) : stdgo.GoInt32);
        } else {
            _cb = (-1 ^ (_cb >> (31i64 : stdgo.GoUInt64) : stdgo.GoInt32));
        };
        var _cr = (((((32768 : stdgo.GoInt32) * _r1 : stdgo.GoInt32) - ((27440 : stdgo.GoInt32) * _g1 : stdgo.GoInt32) : stdgo.GoInt32) - ((5328 : stdgo.GoInt32) * _b1 : stdgo.GoInt32) : stdgo.GoInt32) + (8421376 : stdgo.GoInt32) : stdgo.GoInt32);
        if (((_cr : stdgo.GoUInt32) & (-16777216u32 : stdgo.GoUInt32) : stdgo.GoUInt32) == ((0u32 : stdgo.GoUInt32))) {
            _cr = (_cr >> ((16i64 : stdgo.GoUInt64)) : stdgo.GoInt32);
        } else {
            _cr = (-1 ^ (_cr >> (31i64 : stdgo.GoUInt64) : stdgo.GoInt32));
        };
        return { _0 : (_yy : stdgo.GoUInt8), _1 : (_cb : stdgo.GoUInt8), _2 : (_cr : stdgo.GoUInt8) };
    }
