package stdgo._internal.image;
import stdgo._internal.errors.Errors;
import stdgo._internal.image.color.Color;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.math.bits.Bits;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.image.color.palette.Palette;
import stdgo._internal.testing.Testing;
import stdgo._internal.strconv.Strconv;
@:keep @:allow(stdgo._internal.image.Image.Point_asInterface) class Point_static_extension {
    @:keep
    @:tdfield
    static public function eq( _p:stdgo._internal.image.Image_Point.Point, _q:stdgo._internal.image.Image_Point.Point):Bool {
        @:recv var _p:stdgo._internal.image.Image_Point.Point = _p?.__copy__();
        return stdgo.Go.toInterface(_p) == stdgo.Go.toInterface(_q);
    }
    @:keep
    @:tdfield
    static public function mod( _p:stdgo._internal.image.Image_Point.Point, _r:stdgo._internal.image.Image_Rectangle.Rectangle):stdgo._internal.image.Image_Point.Point {
        @:recv var _p:stdgo._internal.image.Image_Point.Point = _p?.__copy__();
        var __0 = (_r.dx() : stdgo.GoInt), __1 = (_r.dy() : stdgo.GoInt);
var _h = __1, _w = __0;
        _p = _p.sub(_r.min?.__copy__())?.__copy__();
        _p.x = (_p.x % _w : stdgo.GoInt);
        if ((_p.x < (0 : stdgo.GoInt) : Bool)) {
            _p.x = (_p.x + (_w) : stdgo.GoInt);
        };
        _p.y = (_p.y % _h : stdgo.GoInt);
        if ((_p.y < (0 : stdgo.GoInt) : Bool)) {
            _p.y = (_p.y + (_h) : stdgo.GoInt);
        };
        return _p.add(_r.min?.__copy__())?.__copy__();
    }
    @:keep
    @:tdfield
    static public function in_( _p:stdgo._internal.image.Image_Point.Point, _r:stdgo._internal.image.Image_Rectangle.Rectangle):Bool {
        @:recv var _p:stdgo._internal.image.Image_Point.Point = _p?.__copy__();
        return ((((_r.min.x <= _p.x : Bool) && (_p.x < _r.max.x : Bool) : Bool) && (_r.min.y <= _p.y : Bool) : Bool) && (_p.y < _r.max.y : Bool) : Bool);
    }
    @:keep
    @:tdfield
    static public function div( _p:stdgo._internal.image.Image_Point.Point, _k:stdgo.GoInt):stdgo._internal.image.Image_Point.Point {
        @:recv var _p:stdgo._internal.image.Image_Point.Point = _p?.__copy__();
        return (new stdgo._internal.image.Image_Point.Point((_p.x / _k : stdgo.GoInt), (_p.y / _k : stdgo.GoInt)) : stdgo._internal.image.Image_Point.Point);
    }
    @:keep
    @:tdfield
    static public function mul( _p:stdgo._internal.image.Image_Point.Point, _k:stdgo.GoInt):stdgo._internal.image.Image_Point.Point {
        @:recv var _p:stdgo._internal.image.Image_Point.Point = _p?.__copy__();
        return (new stdgo._internal.image.Image_Point.Point((_p.x * _k : stdgo.GoInt), (_p.y * _k : stdgo.GoInt)) : stdgo._internal.image.Image_Point.Point);
    }
    @:keep
    @:tdfield
    static public function sub( _p:stdgo._internal.image.Image_Point.Point, _q:stdgo._internal.image.Image_Point.Point):stdgo._internal.image.Image_Point.Point {
        @:recv var _p:stdgo._internal.image.Image_Point.Point = _p?.__copy__();
        return (new stdgo._internal.image.Image_Point.Point((_p.x - _q.x : stdgo.GoInt), (_p.y - _q.y : stdgo.GoInt)) : stdgo._internal.image.Image_Point.Point);
    }
    @:keep
    @:tdfield
    static public function add( _p:stdgo._internal.image.Image_Point.Point, _q:stdgo._internal.image.Image_Point.Point):stdgo._internal.image.Image_Point.Point {
        @:recv var _p:stdgo._internal.image.Image_Point.Point = _p?.__copy__();
        return (new stdgo._internal.image.Image_Point.Point((_p.x + _q.x : stdgo.GoInt), (_p.y + _q.y : stdgo.GoInt)) : stdgo._internal.image.Image_Point.Point);
    }
    @:keep
    @:tdfield
    static public function string( _p:stdgo._internal.image.Image_Point.Point):stdgo.GoString {
        @:recv var _p:stdgo._internal.image.Image_Point.Point = _p?.__copy__();
        return ((((("(" : stdgo.GoString) + stdgo._internal.strconv.Strconv_itoa.itoa(_p.x)?.__copy__() : stdgo.GoString) + ("," : stdgo.GoString)?.__copy__() : stdgo.GoString) + stdgo._internal.strconv.Strconv_itoa.itoa(_p.y)?.__copy__() : stdgo.GoString) + (")" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__();
    }
}
