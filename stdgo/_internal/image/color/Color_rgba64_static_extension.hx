package stdgo._internal.image.color;
@:keep @:allow(stdgo._internal.image.color.Color.RGBA64_asInterface) class RGBA64_static_extension {
    @:keep
    @:tdfield
    static public function rGBA( _c:stdgo._internal.image.color.Color_rgba64.RGBA64):{ var _0 : stdgo.GoUInt32; var _1 : stdgo.GoUInt32; var _2 : stdgo.GoUInt32; var _3 : stdgo.GoUInt32; } {
        @:recv var _c:stdgo._internal.image.color.Color_rgba64.RGBA64 = _c?.__copy__();
        var _r = (0 : stdgo.GoUInt32), _g = (0 : stdgo.GoUInt32), _b = (0 : stdgo.GoUInt32), _a = (0 : stdgo.GoUInt32);
        return {
            final __tmp__:{ var _0 : stdgo.GoUInt32; var _1 : stdgo.GoUInt32; var _2 : stdgo.GoUInt32; var _3 : stdgo.GoUInt32; } = { _0 : (_c.r : stdgo.GoUInt32), _1 : (_c.g : stdgo.GoUInt32), _2 : (_c.b : stdgo.GoUInt32), _3 : (_c.a : stdgo.GoUInt32) };
            _r = __tmp__._0;
            _g = __tmp__._1;
            _b = __tmp__._2;
            _a = __tmp__._3;
            __tmp__;
        };
    }
}
