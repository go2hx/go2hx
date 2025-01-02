package stdgo._internal.image.color;
function cMYKToRGB(_c:stdgo.GoUInt8, _m:stdgo.GoUInt8, _y:stdgo.GoUInt8, _k:stdgo.GoUInt8):{ var _0 : stdgo.GoUInt8; var _1 : stdgo.GoUInt8; var _2 : stdgo.GoUInt8; } {
        var _w = ((65535u32 : stdgo.GoUInt32) - ((_k : stdgo.GoUInt32) * (257u32 : stdgo.GoUInt32) : stdgo.GoUInt32) : stdgo.GoUInt32);
        var _r = (((((65535u32 : stdgo.GoUInt32) - ((_c : stdgo.GoUInt32) * (257u32 : stdgo.GoUInt32) : stdgo.GoUInt32) : stdgo.GoUInt32)) * _w : stdgo.GoUInt32) / (65535u32 : stdgo.GoUInt32) : stdgo.GoUInt32);
        var _g = (((((65535u32 : stdgo.GoUInt32) - ((_m : stdgo.GoUInt32) * (257u32 : stdgo.GoUInt32) : stdgo.GoUInt32) : stdgo.GoUInt32)) * _w : stdgo.GoUInt32) / (65535u32 : stdgo.GoUInt32) : stdgo.GoUInt32);
        var _b = (((((65535u32 : stdgo.GoUInt32) - ((_y : stdgo.GoUInt32) * (257u32 : stdgo.GoUInt32) : stdgo.GoUInt32) : stdgo.GoUInt32)) * _w : stdgo.GoUInt32) / (65535u32 : stdgo.GoUInt32) : stdgo.GoUInt32);
        return { _0 : ((_r >> (8i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoUInt8), _1 : ((_g >> (8i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoUInt8), _2 : ((_b >> (8i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoUInt8) };
    }
