package stdgo.image.color;
class RGBA64_static_extension {
    static public function rGBA(_c:RGBA64):stdgo.Tuple.Tuple4<std.UInt, std.UInt, std.UInt, std.UInt> {
        return {
            final obj = stdgo._internal.image.color.Color_RGBA64_static_extension.RGBA64_static_extension.rGBA(_c);
            { _0 : obj._0, _1 : obj._1, _2 : obj._2, _3 : obj._3 };
        };
    }
}
