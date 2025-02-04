package stdgo._internal.image.color;
@:keep @:allow(stdgo._internal.image.color.Color.NYCbCrA_asInterface) class NYCbCrA_static_extension {
    @:keep
    @:tdfield
    static public function rGBA( _c:stdgo._internal.image.color.Color_nycbcra.NYCbCrA):{ var _0 : stdgo.GoUInt32; var _1 : stdgo.GoUInt32; var _2 : stdgo.GoUInt32; var _3 : stdgo.GoUInt32; } {
        @:recv var _c:stdgo._internal.image.color.Color_nycbcra.NYCbCrA = _c?.__copy__();
        var _yy1 = ((_c.yCbCr.y : stdgo.GoInt32) * (65793 : stdgo.GoInt32) : stdgo.GoInt32);
        var _cb1 = ((_c.yCbCr.cb : stdgo.GoInt32) - (128 : stdgo.GoInt32) : stdgo.GoInt32);
        var _cr1 = ((_c.yCbCr.cr : stdgo.GoInt32) - (128 : stdgo.GoInt32) : stdgo.GoInt32);
        var _r = (_yy1 + ((91881 : stdgo.GoInt32) * _cr1 : stdgo.GoInt32) : stdgo.GoInt32);
        if (((_r : stdgo.GoUInt32) & (-16777216u32 : stdgo.GoUInt32) : stdgo.GoUInt32) == ((0u32 : stdgo.GoUInt32))) {
            _r = (_r >> ((8i64 : stdgo.GoUInt64)) : stdgo.GoInt32);
        } else {
            _r = ((-1 ^ (_r >> (31i64 : stdgo.GoUInt64) : stdgo.GoInt32)) & (65535 : stdgo.GoInt32) : stdgo.GoInt32);
        };
        var _g = ((_yy1 - ((22554 : stdgo.GoInt32) * _cb1 : stdgo.GoInt32) : stdgo.GoInt32) - ((46802 : stdgo.GoInt32) * _cr1 : stdgo.GoInt32) : stdgo.GoInt32);
        if (((_g : stdgo.GoUInt32) & (-16777216u32 : stdgo.GoUInt32) : stdgo.GoUInt32) == ((0u32 : stdgo.GoUInt32))) {
            _g = (_g >> ((8i64 : stdgo.GoUInt64)) : stdgo.GoInt32);
        } else {
            _g = ((-1 ^ (_g >> (31i64 : stdgo.GoUInt64) : stdgo.GoInt32)) & (65535 : stdgo.GoInt32) : stdgo.GoInt32);
        };
        var _b = (_yy1 + ((116130 : stdgo.GoInt32) * _cb1 : stdgo.GoInt32) : stdgo.GoInt32);
        if (((_b : stdgo.GoUInt32) & (-16777216u32 : stdgo.GoUInt32) : stdgo.GoUInt32) == ((0u32 : stdgo.GoUInt32))) {
            _b = (_b >> ((8i64 : stdgo.GoUInt64)) : stdgo.GoInt32);
        } else {
            _b = ((-1 ^ (_b >> (31i64 : stdgo.GoUInt64) : stdgo.GoInt32)) & (65535 : stdgo.GoInt32) : stdgo.GoInt32);
        };
        var _a = ((_c.a : stdgo.GoUInt32) * (257u32 : stdgo.GoUInt32) : stdgo.GoUInt32);
        return { _0 : (((_r : stdgo.GoUInt32) * _a : stdgo.GoUInt32) / (65535u32 : stdgo.GoUInt32) : stdgo.GoUInt32), _1 : (((_g : stdgo.GoUInt32) * _a : stdgo.GoUInt32) / (65535u32 : stdgo.GoUInt32) : stdgo.GoUInt32), _2 : (((_b : stdgo.GoUInt32) * _a : stdgo.GoUInt32) / (65535u32 : stdgo.GoUInt32) : stdgo.GoUInt32), _3 : _a };
    }
}
