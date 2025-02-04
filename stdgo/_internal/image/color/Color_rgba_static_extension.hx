package stdgo._internal.image.color;
@:keep @:allow(stdgo._internal.image.color.Color.RGBA_asInterface) class RGBA_static_extension {
    @:keep
    @:tdfield
    static public function rGBA( _c:stdgo._internal.image.color.Color_rgba.RGBA):{ var _0 : stdgo.GoUInt32; var _1 : stdgo.GoUInt32; var _2 : stdgo.GoUInt32; var _3 : stdgo.GoUInt32; } {
        @:recv var _c:stdgo._internal.image.color.Color_rgba.RGBA = _c?.__copy__();
        var _r = (0 : stdgo.GoUInt32), _g = (0 : stdgo.GoUInt32), _b = (0 : stdgo.GoUInt32), _a = (0 : stdgo.GoUInt32);
        _r = (_c.r : stdgo.GoUInt32);
        _r = (_r | ((_r << (8i64 : stdgo.GoUInt64) : stdgo.GoUInt32)) : stdgo.GoUInt32);
        _g = (_c.g : stdgo.GoUInt32);
        _g = (_g | ((_g << (8i64 : stdgo.GoUInt64) : stdgo.GoUInt32)) : stdgo.GoUInt32);
        _b = (_c.b : stdgo.GoUInt32);
        _b = (_b | ((_b << (8i64 : stdgo.GoUInt64) : stdgo.GoUInt32)) : stdgo.GoUInt32);
        _a = (_c.a : stdgo.GoUInt32);
        _a = (_a | ((_a << (8i64 : stdgo.GoUInt64) : stdgo.GoUInt32)) : stdgo.GoUInt32);
        return { _0 : _r, _1 : _g, _2 : _b, _3 : _a };
    }
}
