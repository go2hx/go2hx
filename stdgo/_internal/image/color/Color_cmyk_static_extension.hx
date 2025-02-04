package stdgo._internal.image.color;
@:keep @:allow(stdgo._internal.image.color.Color.CMYK_asInterface) class CMYK_static_extension {
    @:keep
    @:tdfield
    static public function rGBA( _c:stdgo._internal.image.color.Color_cmyk.CMYK):{ var _0 : stdgo.GoUInt32; var _1 : stdgo.GoUInt32; var _2 : stdgo.GoUInt32; var _3 : stdgo.GoUInt32; } {
        @:recv var _c:stdgo._internal.image.color.Color_cmyk.CMYK = _c?.__copy__();
        var _w = ((65535u32 : stdgo.GoUInt32) - ((_c.k : stdgo.GoUInt32) * (257u32 : stdgo.GoUInt32) : stdgo.GoUInt32) : stdgo.GoUInt32);
        var _r = (((((65535u32 : stdgo.GoUInt32) - ((_c.c : stdgo.GoUInt32) * (257u32 : stdgo.GoUInt32) : stdgo.GoUInt32) : stdgo.GoUInt32)) * _w : stdgo.GoUInt32) / (65535u32 : stdgo.GoUInt32) : stdgo.GoUInt32);
        var _g = (((((65535u32 : stdgo.GoUInt32) - ((_c.m : stdgo.GoUInt32) * (257u32 : stdgo.GoUInt32) : stdgo.GoUInt32) : stdgo.GoUInt32)) * _w : stdgo.GoUInt32) / (65535u32 : stdgo.GoUInt32) : stdgo.GoUInt32);
        var _b = (((((65535u32 : stdgo.GoUInt32) - ((_c.y : stdgo.GoUInt32) * (257u32 : stdgo.GoUInt32) : stdgo.GoUInt32) : stdgo.GoUInt32)) * _w : stdgo.GoUInt32) / (65535u32 : stdgo.GoUInt32) : stdgo.GoUInt32);
        return { _0 : _r, _1 : _g, _2 : _b, _3 : (65535u32 : stdgo.GoUInt32) };
    }
}
