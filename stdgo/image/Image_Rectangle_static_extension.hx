package stdgo.image;
class Rectangle_static_extension {
    static public function colorModel(_r:Rectangle):Model {
        return stdgo._internal.image.Image_Rectangle_static_extension.Rectangle_static_extension.colorModel(_r);
    }
    static public function bounds(_r:Rectangle):Rectangle {
        return stdgo._internal.image.Image_Rectangle_static_extension.Rectangle_static_extension.bounds(_r);
    }
    static public function rGBA64At(_r:Rectangle, _x:StdTypes.Int, _y:StdTypes.Int):RGBA64 {
        final _x = (_x : stdgo.GoInt);
        final _y = (_y : stdgo.GoInt);
        return stdgo._internal.image.Image_Rectangle_static_extension.Rectangle_static_extension.rGBA64At(_r, _x, _y);
    }
    static public function at(_r:Rectangle, _x:StdTypes.Int, _y:StdTypes.Int):Color {
        final _x = (_x : stdgo.GoInt);
        final _y = (_y : stdgo.GoInt);
        return stdgo._internal.image.Image_Rectangle_static_extension.Rectangle_static_extension.at(_r, _x, _y);
    }
    static public function canon(_r:Rectangle):Rectangle {
        return stdgo._internal.image.Image_Rectangle_static_extension.Rectangle_static_extension.canon(_r);
    }
    static public function in_(_r:Rectangle, _s:Rectangle):Bool {
        return stdgo._internal.image.Image_Rectangle_static_extension.Rectangle_static_extension.in_(_r, _s);
    }
    static public function overlaps(_r:Rectangle, _s:Rectangle):Bool {
        return stdgo._internal.image.Image_Rectangle_static_extension.Rectangle_static_extension.overlaps(_r, _s);
    }
    static public function eq(_r:Rectangle, _s:Rectangle):Bool {
        return stdgo._internal.image.Image_Rectangle_static_extension.Rectangle_static_extension.eq(_r, _s);
    }
    static public function empty(_r:Rectangle):Bool {
        return stdgo._internal.image.Image_Rectangle_static_extension.Rectangle_static_extension.empty(_r);
    }
    static public function union(_r:Rectangle, _s:Rectangle):Rectangle {
        return stdgo._internal.image.Image_Rectangle_static_extension.Rectangle_static_extension.union(_r, _s);
    }
    static public function intersect(_r:Rectangle, _s:Rectangle):Rectangle {
        return stdgo._internal.image.Image_Rectangle_static_extension.Rectangle_static_extension.intersect(_r, _s);
    }
    static public function inset(_r:Rectangle, _n:StdTypes.Int):Rectangle {
        final _n = (_n : stdgo.GoInt);
        return stdgo._internal.image.Image_Rectangle_static_extension.Rectangle_static_extension.inset(_r, _n);
    }
    static public function sub(_r:Rectangle, _p:Point):Rectangle {
        return stdgo._internal.image.Image_Rectangle_static_extension.Rectangle_static_extension.sub(_r, _p);
    }
    static public function add(_r:Rectangle, _p:Point):Rectangle {
        return stdgo._internal.image.Image_Rectangle_static_extension.Rectangle_static_extension.add(_r, _p);
    }
    static public function size(_r:Rectangle):Point {
        return stdgo._internal.image.Image_Rectangle_static_extension.Rectangle_static_extension.size(_r);
    }
    static public function dy(_r:Rectangle):StdTypes.Int {
        return stdgo._internal.image.Image_Rectangle_static_extension.Rectangle_static_extension.dy(_r);
    }
    static public function dx(_r:Rectangle):StdTypes.Int {
        return stdgo._internal.image.Image_Rectangle_static_extension.Rectangle_static_extension.dx(_r);
    }
    static public function string(_r:Rectangle):String {
        return stdgo._internal.image.Image_Rectangle_static_extension.Rectangle_static_extension.string(_r);
    }
}
