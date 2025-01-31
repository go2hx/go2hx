package stdgo._internal.image.color;
import stdgo._internal.testing.quick.Quick;
import stdgo._internal.fmt.Fmt;
@:keep @:allow(stdgo._internal.image.color.Color.Gray_asInterface) class Gray_static_extension {
    @:keep
    @:tdfield
    static public function rGBA( _c:stdgo._internal.image.color.Color_Gray.Gray):{ var _0 : stdgo.GoUInt32; var _1 : stdgo.GoUInt32; var _2 : stdgo.GoUInt32; var _3 : stdgo.GoUInt32; } {
        @:recv var _c:stdgo._internal.image.color.Color_Gray.Gray = _c?.__copy__();
        var _r = (0 : stdgo.GoUInt32), _g = (0 : stdgo.GoUInt32), _b = (0 : stdgo.GoUInt32), _a = (0 : stdgo.GoUInt32);
        var _y = (_c.y : stdgo.GoUInt32);
        _y = (_y | ((_y << (8i64 : stdgo.GoUInt64) : stdgo.GoUInt32)) : stdgo.GoUInt32);
        return {
            final __tmp__:{ var _0 : stdgo.GoUInt32; var _1 : stdgo.GoUInt32; var _2 : stdgo.GoUInt32; var _3 : stdgo.GoUInt32; } = { _0 : _y, _1 : _y, _2 : _y, _3 : (65535u32 : stdgo.GoUInt32) };
            _r = __tmp__._0;
            _g = __tmp__._1;
            _b = __tmp__._2;
            _a = __tmp__._3;
            __tmp__;
        };
    }
}
