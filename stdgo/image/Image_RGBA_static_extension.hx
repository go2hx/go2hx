package stdgo.image;
class RGBA_static_extension {
    static public function opaque(_p:RGBA):Bool {
        final _p = (_p : stdgo.Ref<stdgo._internal.image.Image_RGBA.RGBA>);
        return stdgo._internal.image.Image_RGBA_static_extension.RGBA_static_extension.opaque(_p);
    }
    static public function subImage(_p:RGBA, _r:Rectangle):Image_ {
        final _p = (_p : stdgo.Ref<stdgo._internal.image.Image_RGBA.RGBA>);
        return stdgo._internal.image.Image_RGBA_static_extension.RGBA_static_extension.subImage(_p, _r);
    }
    static public function setRGBA(_p:RGBA, _x:StdTypes.Int, _y:StdTypes.Int, _c:RGBA):Void {
        final _p = (_p : stdgo.Ref<stdgo._internal.image.Image_RGBA.RGBA>);
        final _x = (_x : stdgo.GoInt);
        final _y = (_y : stdgo.GoInt);
        stdgo._internal.image.Image_RGBA_static_extension.RGBA_static_extension.setRGBA(_p, _x, _y, _c);
    }
    static public function setRGBA64(_p:RGBA, _x:StdTypes.Int, _y:StdTypes.Int, _c:RGBA64):Void {
        final _p = (_p : stdgo.Ref<stdgo._internal.image.Image_RGBA.RGBA>);
        final _x = (_x : stdgo.GoInt);
        final _y = (_y : stdgo.GoInt);
        stdgo._internal.image.Image_RGBA_static_extension.RGBA_static_extension.setRGBA64(_p, _x, _y, _c);
    }
    static public function set(_p:RGBA, _x:StdTypes.Int, _y:StdTypes.Int, _c:Color):Void {
        final _p = (_p : stdgo.Ref<stdgo._internal.image.Image_RGBA.RGBA>);
        final _x = (_x : stdgo.GoInt);
        final _y = (_y : stdgo.GoInt);
        stdgo._internal.image.Image_RGBA_static_extension.RGBA_static_extension.set(_p, _x, _y, _c);
    }
    static public function pixOffset(_p:RGBA, _x:StdTypes.Int, _y:StdTypes.Int):StdTypes.Int {
        final _p = (_p : stdgo.Ref<stdgo._internal.image.Image_RGBA.RGBA>);
        final _x = (_x : stdgo.GoInt);
        final _y = (_y : stdgo.GoInt);
        return stdgo._internal.image.Image_RGBA_static_extension.RGBA_static_extension.pixOffset(_p, _x, _y);
    }
    static public function rGBAAt(_p:RGBA, _x:StdTypes.Int, _y:StdTypes.Int):RGBA {
        final _p = (_p : stdgo.Ref<stdgo._internal.image.Image_RGBA.RGBA>);
        final _x = (_x : stdgo.GoInt);
        final _y = (_y : stdgo.GoInt);
        return stdgo._internal.image.Image_RGBA_static_extension.RGBA_static_extension.rGBAAt(_p, _x, _y);
    }
    static public function rGBA64At(_p:RGBA, _x:StdTypes.Int, _y:StdTypes.Int):RGBA64 {
        final _p = (_p : stdgo.Ref<stdgo._internal.image.Image_RGBA.RGBA>);
        final _x = (_x : stdgo.GoInt);
        final _y = (_y : stdgo.GoInt);
        return stdgo._internal.image.Image_RGBA_static_extension.RGBA_static_extension.rGBA64At(_p, _x, _y);
    }
    static public function at(_p:RGBA, _x:StdTypes.Int, _y:StdTypes.Int):Color {
        final _p = (_p : stdgo.Ref<stdgo._internal.image.Image_RGBA.RGBA>);
        final _x = (_x : stdgo.GoInt);
        final _y = (_y : stdgo.GoInt);
        return stdgo._internal.image.Image_RGBA_static_extension.RGBA_static_extension.at(_p, _x, _y);
    }
    static public function bounds(_p:RGBA):Rectangle {
        final _p = (_p : stdgo.Ref<stdgo._internal.image.Image_RGBA.RGBA>);
        return stdgo._internal.image.Image_RGBA_static_extension.RGBA_static_extension.bounds(_p);
    }
    static public function colorModel(_p:RGBA):Model {
        final _p = (_p : stdgo.Ref<stdgo._internal.image.Image_RGBA.RGBA>);
        return stdgo._internal.image.Image_RGBA_static_extension.RGBA_static_extension.colorModel(_p);
    }
}
