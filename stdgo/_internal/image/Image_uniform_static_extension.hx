package stdgo._internal.image;
@:keep @:allow(stdgo._internal.image.Image.Uniform_asInterface) class Uniform_static_extension {
    @:keep
    @:tdfield
    static public function opaque( _c:stdgo.Ref<stdgo._internal.image.Image_uniform.Uniform>):Bool {
        @:recv var _c:stdgo.Ref<stdgo._internal.image.Image_uniform.Uniform> = _c;
        var __tmp__ = (@:checkr _c ?? throw "null pointer dereference").c.rGBA(), __0:stdgo.GoUInt32 = __tmp__._0, __1:stdgo.GoUInt32 = __tmp__._1, __2:stdgo.GoUInt32 = __tmp__._2, _a:stdgo.GoUInt32 = __tmp__._3;
        //"file:///home/runner/.go/go1.21.3/src/image/names.go#L52"
        return _a == ((65535u32 : stdgo.GoUInt32));
    }
    @:keep
    @:tdfield
    static public function rGBA64At( _c:stdgo.Ref<stdgo._internal.image.Image_uniform.Uniform>, _x:stdgo.GoInt, _y:stdgo.GoInt):stdgo._internal.image.color.Color_rgba64.RGBA64 {
        @:recv var _c:stdgo.Ref<stdgo._internal.image.Image_uniform.Uniform> = _c;
        var __tmp__ = (@:checkr _c ?? throw "null pointer dereference").c.rGBA(), _r:stdgo.GoUInt32 = __tmp__._0, _g:stdgo.GoUInt32 = __tmp__._1, _b:stdgo.GoUInt32 = __tmp__._2, _a:stdgo.GoUInt32 = __tmp__._3;
        //"file:///home/runner/.go/go1.21.3/src/image/names.go#L46"
        return (new stdgo._internal.image.color.Color_rgba64.RGBA64((_r : stdgo.GoUInt16), (_g : stdgo.GoUInt16), (_b : stdgo.GoUInt16), (_a : stdgo.GoUInt16)) : stdgo._internal.image.color.Color_rgba64.RGBA64);
    }
    @:keep
    @:tdfield
    static public function at( _c:stdgo.Ref<stdgo._internal.image.Image_uniform.Uniform>, _x:stdgo.GoInt, _y:stdgo.GoInt):stdgo._internal.image.color.Color_color.Color {
        @:recv var _c:stdgo.Ref<stdgo._internal.image.Image_uniform.Uniform> = _c;
        //"file:///home/runner/.go/go1.21.3/src/image/names.go#L42"
        return (@:checkr _c ?? throw "null pointer dereference").c;
    }
    @:keep
    @:tdfield
    static public function bounds( _c:stdgo.Ref<stdgo._internal.image.Image_uniform.Uniform>):stdgo._internal.image.Image_rectangle.Rectangle {
        @:recv var _c:stdgo.Ref<stdgo._internal.image.Image_uniform.Uniform> = _c;
        //"file:///home/runner/.go/go1.21.3/src/image/names.go#L40"
        return (new stdgo._internal.image.Image_rectangle.Rectangle((new stdgo._internal.image.Image_point.Point((-1000000000 : stdgo.GoInt), (-1000000000 : stdgo.GoInt)) : stdgo._internal.image.Image_point.Point), (new stdgo._internal.image.Image_point.Point((1000000000 : stdgo.GoInt), (1000000000 : stdgo.GoInt)) : stdgo._internal.image.Image_point.Point)) : stdgo._internal.image.Image_rectangle.Rectangle);
    }
    @:keep
    @:tdfield
    static public function convert( _c:stdgo.Ref<stdgo._internal.image.Image_uniform.Uniform>, _0:stdgo._internal.image.color.Color_color.Color):stdgo._internal.image.color.Color_color.Color {
        @:recv var _c:stdgo.Ref<stdgo._internal.image.Image_uniform.Uniform> = _c;
        //"file:///home/runner/.go/go1.21.3/src/image/names.go#L37"
        return (@:checkr _c ?? throw "null pointer dereference").c;
    }
    @:keep
    @:tdfield
    static public function colorModel( _c:stdgo.Ref<stdgo._internal.image.Image_uniform.Uniform>):stdgo._internal.image.color.Color_model.Model {
        @:recv var _c:stdgo.Ref<stdgo._internal.image.Image_uniform.Uniform> = _c;
        //"file:///home/runner/.go/go1.21.3/src/image/names.go#L33"
        return stdgo.Go.asInterface(_c);
    }
    @:keep
    @:tdfield
    static public function rGBA( _c:stdgo.Ref<stdgo._internal.image.Image_uniform.Uniform>):{ var _0 : stdgo.GoUInt32; var _1 : stdgo.GoUInt32; var _2 : stdgo.GoUInt32; var _3 : stdgo.GoUInt32; } {
        @:recv var _c:stdgo.Ref<stdgo._internal.image.Image_uniform.Uniform> = _c;
        var _r = (0 : stdgo.GoUInt32), _g = (0 : stdgo.GoUInt32), _b = (0 : stdgo.GoUInt32), _a = (0 : stdgo.GoUInt32);
        //"file:///home/runner/.go/go1.21.3/src/image/names.go#L29"
        return (@:checkr _c ?? throw "null pointer dereference").c.rGBA();
    }
}
