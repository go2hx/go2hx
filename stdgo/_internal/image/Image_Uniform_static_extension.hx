package stdgo._internal.image;
@:keep @:allow(stdgo._internal.image.Image.Uniform_asInterface) class Uniform_static_extension {
    @:keep
    static public function opaque( _c:stdgo.Ref<stdgo._internal.image.Image_Uniform.Uniform>):Bool {
        @:recv var _c:stdgo.Ref<stdgo._internal.image.Image_Uniform.Uniform> = _c;
        var __tmp__ = _c.c.rgba(), __0:stdgo.GoUInt32 = __tmp__._0, __1:stdgo.GoUInt32 = __tmp__._1, __2:stdgo.GoUInt32 = __tmp__._2, _a:stdgo.GoUInt32 = __tmp__._3;
        return _a == ((65535u32 : stdgo.GoUInt32));
    }
    @:keep
    static public function rgba64at( _c:stdgo.Ref<stdgo._internal.image.Image_Uniform.Uniform>, _x:stdgo.GoInt, _y:stdgo.GoInt):stdgo._internal.image.color.Color_RGBA64.RGBA64 {
        @:recv var _c:stdgo.Ref<stdgo._internal.image.Image_Uniform.Uniform> = _c;
        var __tmp__ = _c.c.rgba(), _r:stdgo.GoUInt32 = __tmp__._0, _g:stdgo.GoUInt32 = __tmp__._1, _b:stdgo.GoUInt32 = __tmp__._2, _a:stdgo.GoUInt32 = __tmp__._3;
        return (new stdgo._internal.image.color.Color_RGBA64.RGBA64((_r : stdgo.GoUInt16), (_g : stdgo.GoUInt16), (_b : stdgo.GoUInt16), (_a : stdgo.GoUInt16)) : stdgo._internal.image.color.Color_RGBA64.RGBA64);
    }
    @:keep
    static public function at( _c:stdgo.Ref<stdgo._internal.image.Image_Uniform.Uniform>, _x:stdgo.GoInt, _y:stdgo.GoInt):stdgo._internal.image.color.Color_Color.Color {
        @:recv var _c:stdgo.Ref<stdgo._internal.image.Image_Uniform.Uniform> = _c;
        return _c.c;
    }
    @:keep
    static public function bounds( _c:stdgo.Ref<stdgo._internal.image.Image_Uniform.Uniform>):stdgo._internal.image.Image_Rectangle.Rectangle {
        @:recv var _c:stdgo.Ref<stdgo._internal.image.Image_Uniform.Uniform> = _c;
        return (new stdgo._internal.image.Image_Rectangle.Rectangle((new stdgo._internal.image.Image_Point.Point((-1000000000 : stdgo.GoInt), (-1000000000 : stdgo.GoInt)) : stdgo._internal.image.Image_Point.Point), (new stdgo._internal.image.Image_Point.Point((1000000000 : stdgo.GoInt), (1000000000 : stdgo.GoInt)) : stdgo._internal.image.Image_Point.Point)) : stdgo._internal.image.Image_Rectangle.Rectangle);
    }
    @:keep
    static public function convert( _c:stdgo.Ref<stdgo._internal.image.Image_Uniform.Uniform>, _0:stdgo._internal.image.color.Color_Color.Color):stdgo._internal.image.color.Color_Color.Color {
        @:recv var _c:stdgo.Ref<stdgo._internal.image.Image_Uniform.Uniform> = _c;
        return _c.c;
    }
    @:keep
    static public function colorModel( _c:stdgo.Ref<stdgo._internal.image.Image_Uniform.Uniform>):stdgo._internal.image.color.Color_Model.Model {
        @:recv var _c:stdgo.Ref<stdgo._internal.image.Image_Uniform.Uniform> = _c;
        return stdgo.Go.asInterface(_c);
    }
    @:keep
    static public function rgba( _c:stdgo.Ref<stdgo._internal.image.Image_Uniform.Uniform>):{ var _0 : stdgo.GoUInt32; var _1 : stdgo.GoUInt32; var _2 : stdgo.GoUInt32; var _3 : stdgo.GoUInt32; } {
        @:recv var _c:stdgo.Ref<stdgo._internal.image.Image_Uniform.Uniform> = _c;
        var _r = (0 : stdgo.GoUInt32), _g = (0 : stdgo.GoUInt32), _b = (0 : stdgo.GoUInt32), _a = (0 : stdgo.GoUInt32);
        return _c.c.rgba();
    }
}