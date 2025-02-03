package stdgo.image;
class Gray_static_extension {
    static public function opaque(_p:Gray):Bool {
        final _p = (_p : stdgo.Ref<stdgo._internal.image.Image_Gray.Gray>);
        return stdgo._internal.image.Image_Gray_static_extension.Gray_static_extension.opaque(_p);
    }
    static public function subImage(_p:Gray, _r:Rectangle):Image_ {
        final _p = (_p : stdgo.Ref<stdgo._internal.image.Image_Gray.Gray>);
        return stdgo._internal.image.Image_Gray_static_extension.Gray_static_extension.subImage(_p, _r);
    }
    static public function setGray(_p:Gray, _x:StdTypes.Int, _y:StdTypes.Int, _c:Gray):Void {
        final _p = (_p : stdgo.Ref<stdgo._internal.image.Image_Gray.Gray>);
        final _x = (_x : stdgo.GoInt);
        final _y = (_y : stdgo.GoInt);
        stdgo._internal.image.Image_Gray_static_extension.Gray_static_extension.setGray(_p, _x, _y, _c);
    }
    static public function setRGBA64(_p:Gray, _x:StdTypes.Int, _y:StdTypes.Int, _c:RGBA64):Void {
        final _p = (_p : stdgo.Ref<stdgo._internal.image.Image_Gray.Gray>);
        final _x = (_x : stdgo.GoInt);
        final _y = (_y : stdgo.GoInt);
        stdgo._internal.image.Image_Gray_static_extension.Gray_static_extension.setRGBA64(_p, _x, _y, _c);
    }
    static public function set(_p:Gray, _x:StdTypes.Int, _y:StdTypes.Int, _c:Color):Void {
        final _p = (_p : stdgo.Ref<stdgo._internal.image.Image_Gray.Gray>);
        final _x = (_x : stdgo.GoInt);
        final _y = (_y : stdgo.GoInt);
        stdgo._internal.image.Image_Gray_static_extension.Gray_static_extension.set(_p, _x, _y, _c);
    }
    static public function pixOffset(_p:Gray, _x:StdTypes.Int, _y:StdTypes.Int):StdTypes.Int {
        final _p = (_p : stdgo.Ref<stdgo._internal.image.Image_Gray.Gray>);
        final _x = (_x : stdgo.GoInt);
        final _y = (_y : stdgo.GoInt);
        return stdgo._internal.image.Image_Gray_static_extension.Gray_static_extension.pixOffset(_p, _x, _y);
    }
    static public function grayAt(_p:Gray, _x:StdTypes.Int, _y:StdTypes.Int):Gray {
        final _p = (_p : stdgo.Ref<stdgo._internal.image.Image_Gray.Gray>);
        final _x = (_x : stdgo.GoInt);
        final _y = (_y : stdgo.GoInt);
        return stdgo._internal.image.Image_Gray_static_extension.Gray_static_extension.grayAt(_p, _x, _y);
    }
    static public function rGBA64At(_p:Gray, _x:StdTypes.Int, _y:StdTypes.Int):RGBA64 {
        final _p = (_p : stdgo.Ref<stdgo._internal.image.Image_Gray.Gray>);
        final _x = (_x : stdgo.GoInt);
        final _y = (_y : stdgo.GoInt);
        return stdgo._internal.image.Image_Gray_static_extension.Gray_static_extension.rGBA64At(_p, _x, _y);
    }
    static public function at(_p:Gray, _x:StdTypes.Int, _y:StdTypes.Int):Color {
        final _p = (_p : stdgo.Ref<stdgo._internal.image.Image_Gray.Gray>);
        final _x = (_x : stdgo.GoInt);
        final _y = (_y : stdgo.GoInt);
        return stdgo._internal.image.Image_Gray_static_extension.Gray_static_extension.at(_p, _x, _y);
    }
    static public function bounds(_p:Gray):Rectangle {
        final _p = (_p : stdgo.Ref<stdgo._internal.image.Image_Gray.Gray>);
        return stdgo._internal.image.Image_Gray_static_extension.Gray_static_extension.bounds(_p);
    }
    static public function colorModel(_p:Gray):Model {
        final _p = (_p : stdgo.Ref<stdgo._internal.image.Image_Gray.Gray>);
        return stdgo._internal.image.Image_Gray_static_extension.Gray_static_extension.colorModel(_p);
    }
}
