package stdgo.image;
class NRGBA_static_extension {
    static public function opaque(_p:NRGBA):Bool {
        final _p = (_p : stdgo.Ref<stdgo._internal.image.Image_NRGBA.NRGBA>);
        return stdgo._internal.image.Image_NRGBA_static_extension.NRGBA_static_extension.opaque(_p);
    }
    static public function subImage(_p:NRGBA, _r:Rectangle):Image_ {
        final _p = (_p : stdgo.Ref<stdgo._internal.image.Image_NRGBA.NRGBA>);
        return stdgo._internal.image.Image_NRGBA_static_extension.NRGBA_static_extension.subImage(_p, _r);
    }
    static public function setNRGBA(_p:NRGBA, _x:StdTypes.Int, _y:StdTypes.Int, _c:NRGBA):Void {
        final _p = (_p : stdgo.Ref<stdgo._internal.image.Image_NRGBA.NRGBA>);
        final _x = (_x : stdgo.GoInt);
        final _y = (_y : stdgo.GoInt);
        stdgo._internal.image.Image_NRGBA_static_extension.NRGBA_static_extension.setNRGBA(_p, _x, _y, _c);
    }
    static public function setRGBA64(_p:NRGBA, _x:StdTypes.Int, _y:StdTypes.Int, _c:RGBA64):Void {
        final _p = (_p : stdgo.Ref<stdgo._internal.image.Image_NRGBA.NRGBA>);
        final _x = (_x : stdgo.GoInt);
        final _y = (_y : stdgo.GoInt);
        stdgo._internal.image.Image_NRGBA_static_extension.NRGBA_static_extension.setRGBA64(_p, _x, _y, _c);
    }
    static public function set(_p:NRGBA, _x:StdTypes.Int, _y:StdTypes.Int, _c:Color):Void {
        final _p = (_p : stdgo.Ref<stdgo._internal.image.Image_NRGBA.NRGBA>);
        final _x = (_x : stdgo.GoInt);
        final _y = (_y : stdgo.GoInt);
        stdgo._internal.image.Image_NRGBA_static_extension.NRGBA_static_extension.set(_p, _x, _y, _c);
    }
    static public function pixOffset(_p:NRGBA, _x:StdTypes.Int, _y:StdTypes.Int):StdTypes.Int {
        final _p = (_p : stdgo.Ref<stdgo._internal.image.Image_NRGBA.NRGBA>);
        final _x = (_x : stdgo.GoInt);
        final _y = (_y : stdgo.GoInt);
        return stdgo._internal.image.Image_NRGBA_static_extension.NRGBA_static_extension.pixOffset(_p, _x, _y);
    }
    static public function nRGBAAt(_p:NRGBA, _x:StdTypes.Int, _y:StdTypes.Int):NRGBA {
        final _p = (_p : stdgo.Ref<stdgo._internal.image.Image_NRGBA.NRGBA>);
        final _x = (_x : stdgo.GoInt);
        final _y = (_y : stdgo.GoInt);
        return stdgo._internal.image.Image_NRGBA_static_extension.NRGBA_static_extension.nRGBAAt(_p, _x, _y);
    }
    static public function rGBA64At(_p:NRGBA, _x:StdTypes.Int, _y:StdTypes.Int):RGBA64 {
        final _p = (_p : stdgo.Ref<stdgo._internal.image.Image_NRGBA.NRGBA>);
        final _x = (_x : stdgo.GoInt);
        final _y = (_y : stdgo.GoInt);
        return stdgo._internal.image.Image_NRGBA_static_extension.NRGBA_static_extension.rGBA64At(_p, _x, _y);
    }
    static public function at(_p:NRGBA, _x:StdTypes.Int, _y:StdTypes.Int):Color {
        final _p = (_p : stdgo.Ref<stdgo._internal.image.Image_NRGBA.NRGBA>);
        final _x = (_x : stdgo.GoInt);
        final _y = (_y : stdgo.GoInt);
        return stdgo._internal.image.Image_NRGBA_static_extension.NRGBA_static_extension.at(_p, _x, _y);
    }
    static public function bounds(_p:NRGBA):Rectangle {
        final _p = (_p : stdgo.Ref<stdgo._internal.image.Image_NRGBA.NRGBA>);
        return stdgo._internal.image.Image_NRGBA_static_extension.NRGBA_static_extension.bounds(_p);
    }
    static public function colorModel(_p:NRGBA):Model {
        final _p = (_p : stdgo.Ref<stdgo._internal.image.Image_NRGBA.NRGBA>);
        return stdgo._internal.image.Image_NRGBA_static_extension.NRGBA_static_extension.colorModel(_p);
    }
}
