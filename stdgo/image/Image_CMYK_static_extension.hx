package stdgo.image;
class CMYK_static_extension {
    static public function opaque(_p:CMYK):Bool {
        final _p = (_p : stdgo.Ref<stdgo._internal.image.Image_CMYK.CMYK>);
        return stdgo._internal.image.Image_CMYK_static_extension.CMYK_static_extension.opaque(_p);
    }
    static public function subImage(_p:CMYK, _r:Rectangle):Image_ {
        final _p = (_p : stdgo.Ref<stdgo._internal.image.Image_CMYK.CMYK>);
        return stdgo._internal.image.Image_CMYK_static_extension.CMYK_static_extension.subImage(_p, _r);
    }
    static public function setCMYK(_p:CMYK, _x:StdTypes.Int, _y:StdTypes.Int, _c:CMYK):Void {
        final _p = (_p : stdgo.Ref<stdgo._internal.image.Image_CMYK.CMYK>);
        final _x = (_x : stdgo.GoInt);
        final _y = (_y : stdgo.GoInt);
        stdgo._internal.image.Image_CMYK_static_extension.CMYK_static_extension.setCMYK(_p, _x, _y, _c);
    }
    static public function setRGBA64(_p:CMYK, _x:StdTypes.Int, _y:StdTypes.Int, _c:RGBA64):Void {
        final _p = (_p : stdgo.Ref<stdgo._internal.image.Image_CMYK.CMYK>);
        final _x = (_x : stdgo.GoInt);
        final _y = (_y : stdgo.GoInt);
        stdgo._internal.image.Image_CMYK_static_extension.CMYK_static_extension.setRGBA64(_p, _x, _y, _c);
    }
    static public function set(_p:CMYK, _x:StdTypes.Int, _y:StdTypes.Int, _c:Color):Void {
        final _p = (_p : stdgo.Ref<stdgo._internal.image.Image_CMYK.CMYK>);
        final _x = (_x : stdgo.GoInt);
        final _y = (_y : stdgo.GoInt);
        stdgo._internal.image.Image_CMYK_static_extension.CMYK_static_extension.set(_p, _x, _y, _c);
    }
    static public function pixOffset(_p:CMYK, _x:StdTypes.Int, _y:StdTypes.Int):StdTypes.Int {
        final _p = (_p : stdgo.Ref<stdgo._internal.image.Image_CMYK.CMYK>);
        final _x = (_x : stdgo.GoInt);
        final _y = (_y : stdgo.GoInt);
        return stdgo._internal.image.Image_CMYK_static_extension.CMYK_static_extension.pixOffset(_p, _x, _y);
    }
    static public function cMYKAt(_p:CMYK, _x:StdTypes.Int, _y:StdTypes.Int):CMYK {
        final _p = (_p : stdgo.Ref<stdgo._internal.image.Image_CMYK.CMYK>);
        final _x = (_x : stdgo.GoInt);
        final _y = (_y : stdgo.GoInt);
        return stdgo._internal.image.Image_CMYK_static_extension.CMYK_static_extension.cMYKAt(_p, _x, _y);
    }
    static public function rGBA64At(_p:CMYK, _x:StdTypes.Int, _y:StdTypes.Int):RGBA64 {
        final _p = (_p : stdgo.Ref<stdgo._internal.image.Image_CMYK.CMYK>);
        final _x = (_x : stdgo.GoInt);
        final _y = (_y : stdgo.GoInt);
        return stdgo._internal.image.Image_CMYK_static_extension.CMYK_static_extension.rGBA64At(_p, _x, _y);
    }
    static public function at(_p:CMYK, _x:StdTypes.Int, _y:StdTypes.Int):Color {
        final _p = (_p : stdgo.Ref<stdgo._internal.image.Image_CMYK.CMYK>);
        final _x = (_x : stdgo.GoInt);
        final _y = (_y : stdgo.GoInt);
        return stdgo._internal.image.Image_CMYK_static_extension.CMYK_static_extension.at(_p, _x, _y);
    }
    static public function bounds(_p:CMYK):Rectangle {
        final _p = (_p : stdgo.Ref<stdgo._internal.image.Image_CMYK.CMYK>);
        return stdgo._internal.image.Image_CMYK_static_extension.CMYK_static_extension.bounds(_p);
    }
    static public function colorModel(_p:CMYK):Model {
        final _p = (_p : stdgo.Ref<stdgo._internal.image.Image_CMYK.CMYK>);
        return stdgo._internal.image.Image_CMYK_static_extension.CMYK_static_extension.colorModel(_p);
    }
}
