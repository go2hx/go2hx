package stdgo._internal.image.color;
function yCbCrToRGB(_y:stdgo.GoUInt8, _cb:stdgo.GoUInt8, _cr:stdgo.GoUInt8):{ var _0 : stdgo.GoUInt8; var _1 : stdgo.GoUInt8; var _2 : stdgo.GoUInt8; } {
        var _yy1 = ((_y : stdgo.GoInt32) * (65793 : stdgo.GoInt32) : stdgo.GoInt32);
        var _cb1 = ((_cb : stdgo.GoInt32) - (128 : stdgo.GoInt32) : stdgo.GoInt32);
        var _cr1 = ((_cr : stdgo.GoInt32) - (128 : stdgo.GoInt32) : stdgo.GoInt32);
        var _r = (_yy1 + ((91881 : stdgo.GoInt32) * _cr1 : stdgo.GoInt32) : stdgo.GoInt32);
        if (((_r : stdgo.GoUInt32) & (-16777216u32 : stdgo.GoUInt32) : stdgo.GoUInt32) == ((0u32 : stdgo.GoUInt32))) {
            _r = (_r >> ((16i64 : stdgo.GoUInt64)) : stdgo.GoInt32);
        } else {
            _r = (-1 ^ (_r >> (31i64 : stdgo.GoUInt64) : stdgo.GoInt32));
        };
        var _g = ((_yy1 - ((22554 : stdgo.GoInt32) * _cb1 : stdgo.GoInt32) : stdgo.GoInt32) - ((46802 : stdgo.GoInt32) * _cr1 : stdgo.GoInt32) : stdgo.GoInt32);
        if (((_g : stdgo.GoUInt32) & (-16777216u32 : stdgo.GoUInt32) : stdgo.GoUInt32) == ((0u32 : stdgo.GoUInt32))) {
            _g = (_g >> ((16i64 : stdgo.GoUInt64)) : stdgo.GoInt32);
        } else {
            _g = (-1 ^ (_g >> (31i64 : stdgo.GoUInt64) : stdgo.GoInt32));
        };
        var _b = (_yy1 + ((116130 : stdgo.GoInt32) * _cb1 : stdgo.GoInt32) : stdgo.GoInt32);
        if (((_b : stdgo.GoUInt32) & (-16777216u32 : stdgo.GoUInt32) : stdgo.GoUInt32) == ((0u32 : stdgo.GoUInt32))) {
            _b = (_b >> ((16i64 : stdgo.GoUInt64)) : stdgo.GoInt32);
        } else {
            _b = (-1 ^ (_b >> (31i64 : stdgo.GoUInt64) : stdgo.GoInt32));
        };
        return { _0 : (_r : stdgo.GoUInt8), _1 : (_g : stdgo.GoUInt8), _2 : (_b : stdgo.GoUInt8) };
    }
