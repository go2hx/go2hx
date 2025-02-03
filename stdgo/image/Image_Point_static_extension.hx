package stdgo.image;
class Point_static_extension {
    static public function eq(_p:Point, _q:Point):Bool {
        return stdgo._internal.image.Image_Point_static_extension.Point_static_extension.eq(_p, _q);
    }
    static public function mod(_p:Point, _r:Rectangle):Point {
        return stdgo._internal.image.Image_Point_static_extension.Point_static_extension.mod(_p, _r);
    }
    static public function in_(_p:Point, _r:Rectangle):Bool {
        return stdgo._internal.image.Image_Point_static_extension.Point_static_extension.in_(_p, _r);
    }
    static public function div(_p:Point, _k:StdTypes.Int):Point {
        final _k = (_k : stdgo.GoInt);
        return stdgo._internal.image.Image_Point_static_extension.Point_static_extension.div(_p, _k);
    }
    static public function mul(_p:Point, _k:StdTypes.Int):Point {
        final _k = (_k : stdgo.GoInt);
        return stdgo._internal.image.Image_Point_static_extension.Point_static_extension.mul(_p, _k);
    }
    static public function sub(_p:Point, _q:Point):Point {
        return stdgo._internal.image.Image_Point_static_extension.Point_static_extension.sub(_p, _q);
    }
    static public function add(_p:Point, _q:Point):Point {
        return stdgo._internal.image.Image_Point_static_extension.Point_static_extension.add(_p, _q);
    }
    static public function string(_p:Point):String {
        return stdgo._internal.image.Image_Point_static_extension.Point_static_extension.string(_p);
    }
}
