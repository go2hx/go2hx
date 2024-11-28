package stdgo._internal.image.color;
@:keep @:allow(stdgo._internal.image.color.Color.Gray16_asInterface) class Gray16_static_extension {
    @:keep
    static public function rgba( _c:stdgo._internal.image.color.Color_Gray16.Gray16):{ var _0 : stdgo.GoUInt32; var _1 : stdgo.GoUInt32; var _2 : stdgo.GoUInt32; var _3 : stdgo.GoUInt32; } {
        @:recv var _c:stdgo._internal.image.color.Color_Gray16.Gray16 = _c?.__copy__();
        var _r = (0 : stdgo.GoUInt32), _g = (0 : stdgo.GoUInt32), _b = (0 : stdgo.GoUInt32), _a = (0 : stdgo.GoUInt32);
        var _y = (_c.y : stdgo.GoUInt32);
        return { _0 : _r = _y, _1 : _g = _y, _2 : _b = _y, _3 : _a = (65535u32 : stdgo.GoUInt32) };
    }
}
