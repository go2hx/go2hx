package stdgo._internal.image;
@:keep @:allow(stdgo._internal.image.Image.Point_asInterface) class Point_static_extension {
    @:keep
    @:tdfield
    static public function eq( _p:stdgo._internal.image.Image_point.Point, _q:stdgo._internal.image.Image_point.Point):Bool {
        @:recv var _p:stdgo._internal.image.Image_point.Point = _p?.__copy__();
        //"file:///home/runner/.go/go1.21.3/src/image/geom.go#L67"
        return stdgo.Go.toInterface(_p) == stdgo.Go.toInterface(_q);
    }
    @:keep
    @:tdfield
    static public function mod( _p:stdgo._internal.image.Image_point.Point, _r:stdgo._internal.image.Image_rectangle.Rectangle):stdgo._internal.image.Image_point.Point {
        @:recv var _p:stdgo._internal.image.Image_point.Point = _p?.__copy__();
        var __0 = (_r.dx() : stdgo.GoInt), __1 = (_r.dy() : stdgo.GoInt);
var _h = __1, _w = __0;
        _p = _p.sub(_r.min?.__copy__())?.__copy__();
        _p.x = (_p.x % _w : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/image/geom.go#L55"
        if ((_p.x < (0 : stdgo.GoInt) : Bool)) {
            _p.x = (_p.x + (_w) : stdgo.GoInt);
        };
        _p.y = (_p.y % _h : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/image/geom.go#L59"
        if ((_p.y < (0 : stdgo.GoInt) : Bool)) {
            _p.y = (_p.y + (_h) : stdgo.GoInt);
        };
        //"file:///home/runner/.go/go1.21.3/src/image/geom.go#L62"
        return _p.add(_r.min?.__copy__())?.__copy__();
    }
    @:keep
    @:tdfield
    static public function in_( _p:stdgo._internal.image.Image_point.Point, _r:stdgo._internal.image.Image_rectangle.Rectangle):Bool {
        @:recv var _p:stdgo._internal.image.Image_point.Point = _p?.__copy__();
        //"file:///home/runner/.go/go1.21.3/src/image/geom.go#L45"
        return ((((_r.min.x <= _p.x : Bool) && (_p.x < _r.max.x : Bool) : Bool) && (_r.min.y <= _p.y : Bool) : Bool) && (_p.y < _r.max.y : Bool) : Bool);
    }
    @:keep
    @:tdfield
    static public function div( _p:stdgo._internal.image.Image_point.Point, _k:stdgo.GoInt):stdgo._internal.image.Image_point.Point {
        @:recv var _p:stdgo._internal.image.Image_point.Point = _p?.__copy__();
        //"file:///home/runner/.go/go1.21.3/src/image/geom.go#L40"
        return (new stdgo._internal.image.Image_point.Point((_p.x / _k : stdgo.GoInt), (_p.y / _k : stdgo.GoInt)) : stdgo._internal.image.Image_point.Point);
    }
    @:keep
    @:tdfield
    static public function mul( _p:stdgo._internal.image.Image_point.Point, _k:stdgo.GoInt):stdgo._internal.image.Image_point.Point {
        @:recv var _p:stdgo._internal.image.Image_point.Point = _p?.__copy__();
        //"file:///home/runner/.go/go1.21.3/src/image/geom.go#L35"
        return (new stdgo._internal.image.Image_point.Point((_p.x * _k : stdgo.GoInt), (_p.y * _k : stdgo.GoInt)) : stdgo._internal.image.Image_point.Point);
    }
    @:keep
    @:tdfield
    static public function sub( _p:stdgo._internal.image.Image_point.Point, _q:stdgo._internal.image.Image_point.Point):stdgo._internal.image.Image_point.Point {
        @:recv var _p:stdgo._internal.image.Image_point.Point = _p?.__copy__();
        //"file:///home/runner/.go/go1.21.3/src/image/geom.go#L30"
        return (new stdgo._internal.image.Image_point.Point((_p.x - _q.x : stdgo.GoInt), (_p.y - _q.y : stdgo.GoInt)) : stdgo._internal.image.Image_point.Point);
    }
    @:keep
    @:tdfield
    static public function add( _p:stdgo._internal.image.Image_point.Point, _q:stdgo._internal.image.Image_point.Point):stdgo._internal.image.Image_point.Point {
        @:recv var _p:stdgo._internal.image.Image_point.Point = _p?.__copy__();
        //"file:///home/runner/.go/go1.21.3/src/image/geom.go#L25"
        return (new stdgo._internal.image.Image_point.Point((_p.x + _q.x : stdgo.GoInt), (_p.y + _q.y : stdgo.GoInt)) : stdgo._internal.image.Image_point.Point);
    }
    @:keep
    @:tdfield
    static public function string( _p:stdgo._internal.image.Image_point.Point):stdgo.GoString {
        @:recv var _p:stdgo._internal.image.Image_point.Point = _p?.__copy__();
        //"file:///home/runner/.go/go1.21.3/src/image/geom.go#L20"
        return ((((("(" : stdgo.GoString) + stdgo._internal.strconv.Strconv_itoa.itoa(_p.x)?.__copy__() : stdgo.GoString) + ("," : stdgo.GoString)?.__copy__() : stdgo.GoString) + stdgo._internal.strconv.Strconv_itoa.itoa(_p.y)?.__copy__() : stdgo.GoString) + (")" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__();
    }
}
