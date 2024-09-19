package stdgo._internal.image.color;
@:keep @:allow(stdgo._internal.image.color.Color.Alpha16_asInterface) class Alpha16_static_extension {
    @:keep
    static public function rgba( _c:stdgo._internal.image.color.Color_Alpha16.Alpha16):{ var _0 : stdgo.GoUInt32; var _1 : stdgo.GoUInt32; var _2 : stdgo.GoUInt32; var _3 : stdgo.GoUInt32; } {
        @:recv var _c:stdgo._internal.image.color.Color_Alpha16.Alpha16 = _c?.__copy__();
        var _r = (0 : stdgo.GoUInt32), _g = (0 : stdgo.GoUInt32), _b = (0 : stdgo.GoUInt32), _a = (0 : stdgo.GoUInt32);
        _a = (_c.a : stdgo.GoUInt32);
        return { _0 : _a, _1 : _a, _2 : _a, _3 : _a };
    }
}
