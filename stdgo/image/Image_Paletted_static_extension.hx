package stdgo.image;
class Paletted_static_extension {
    static public function opaque(_p:Paletted):Bool {
        final _p = (_p : stdgo.Ref<stdgo._internal.image.Image_Paletted.Paletted>);
        return stdgo._internal.image.Image_Paletted_static_extension.Paletted_static_extension.opaque(_p);
    }
    static public function subImage(_p:Paletted, _r:Rectangle):Image_ {
        final _p = (_p : stdgo.Ref<stdgo._internal.image.Image_Paletted.Paletted>);
        return stdgo._internal.image.Image_Paletted_static_extension.Paletted_static_extension.subImage(_p, _r);
    }
    static public function setColorIndex(_p:Paletted, _x:StdTypes.Int, _y:StdTypes.Int, _index:std.UInt):Void {
        final _p = (_p : stdgo.Ref<stdgo._internal.image.Image_Paletted.Paletted>);
        final _x = (_x : stdgo.GoInt);
        final _y = (_y : stdgo.GoInt);
        final _index = (_index : stdgo.GoUInt8);
        stdgo._internal.image.Image_Paletted_static_extension.Paletted_static_extension.setColorIndex(_p, _x, _y, _index);
    }
    static public function colorIndexAt(_p:Paletted, _x:StdTypes.Int, _y:StdTypes.Int):std.UInt {
        final _p = (_p : stdgo.Ref<stdgo._internal.image.Image_Paletted.Paletted>);
        final _x = (_x : stdgo.GoInt);
        final _y = (_y : stdgo.GoInt);
        return stdgo._internal.image.Image_Paletted_static_extension.Paletted_static_extension.colorIndexAt(_p, _x, _y);
    }
    static public function setRGBA64(_p:Paletted, _x:StdTypes.Int, _y:StdTypes.Int, _c:RGBA64):Void {
        final _p = (_p : stdgo.Ref<stdgo._internal.image.Image_Paletted.Paletted>);
        final _x = (_x : stdgo.GoInt);
        final _y = (_y : stdgo.GoInt);
        stdgo._internal.image.Image_Paletted_static_extension.Paletted_static_extension.setRGBA64(_p, _x, _y, _c);
    }
    static public function set(_p:Paletted, _x:StdTypes.Int, _y:StdTypes.Int, _c:Color):Void {
        final _p = (_p : stdgo.Ref<stdgo._internal.image.Image_Paletted.Paletted>);
        final _x = (_x : stdgo.GoInt);
        final _y = (_y : stdgo.GoInt);
        stdgo._internal.image.Image_Paletted_static_extension.Paletted_static_extension.set(_p, _x, _y, _c);
    }
    static public function pixOffset(_p:Paletted, _x:StdTypes.Int, _y:StdTypes.Int):StdTypes.Int {
        final _p = (_p : stdgo.Ref<stdgo._internal.image.Image_Paletted.Paletted>);
        final _x = (_x : stdgo.GoInt);
        final _y = (_y : stdgo.GoInt);
        return stdgo._internal.image.Image_Paletted_static_extension.Paletted_static_extension.pixOffset(_p, _x, _y);
    }
    static public function rGBA64At(_p:Paletted, _x:StdTypes.Int, _y:StdTypes.Int):RGBA64 {
        final _p = (_p : stdgo.Ref<stdgo._internal.image.Image_Paletted.Paletted>);
        final _x = (_x : stdgo.GoInt);
        final _y = (_y : stdgo.GoInt);
        return stdgo._internal.image.Image_Paletted_static_extension.Paletted_static_extension.rGBA64At(_p, _x, _y);
    }
    static public function at(_p:Paletted, _x:StdTypes.Int, _y:StdTypes.Int):Color {
        final _p = (_p : stdgo.Ref<stdgo._internal.image.Image_Paletted.Paletted>);
        final _x = (_x : stdgo.GoInt);
        final _y = (_y : stdgo.GoInt);
        return stdgo._internal.image.Image_Paletted_static_extension.Paletted_static_extension.at(_p, _x, _y);
    }
    static public function bounds(_p:Paletted):Rectangle {
        final _p = (_p : stdgo.Ref<stdgo._internal.image.Image_Paletted.Paletted>);
        return stdgo._internal.image.Image_Paletted_static_extension.Paletted_static_extension.bounds(_p);
    }
    static public function colorModel(_p:Paletted):Model {
        final _p = (_p : stdgo.Ref<stdgo._internal.image.Image_Paletted.Paletted>);
        return stdgo._internal.image.Image_Paletted_static_extension.Paletted_static_extension.colorModel(_p);
    }
}
