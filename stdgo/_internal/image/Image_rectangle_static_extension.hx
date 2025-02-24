package stdgo._internal.image;
@:keep @:allow(stdgo._internal.image.Image.Rectangle_asInterface) class Rectangle_static_extension {
    @:keep
    @:tdfield
    static public function colorModel( _r:stdgo._internal.image.Image_rectangle.Rectangle):stdgo._internal.image.color.Color_model.Model {
        @:recv var _r:stdgo._internal.image.Image_rectangle.Rectangle = _r?.__copy__();
        return stdgo._internal.image.color.Color_alpha16model.alpha16Model;
    }
    @:keep
    @:tdfield
    static public function bounds( _r:stdgo._internal.image.Image_rectangle.Rectangle):stdgo._internal.image.Image_rectangle.Rectangle {
        @:recv var _r:stdgo._internal.image.Image_rectangle.Rectangle = _r?.__copy__();
        return _r?.__copy__();
    }
    @:keep
    @:tdfield
    static public function rGBA64At( _r:stdgo._internal.image.Image_rectangle.Rectangle, _x:stdgo.GoInt, _y:stdgo.GoInt):stdgo._internal.image.color.Color_rgba64.RGBA64 {
        @:recv var _r:stdgo._internal.image.Image_rectangle.Rectangle = _r?.__copy__();
        if ((new stdgo._internal.image.Image_point.Point(_x, _y) : stdgo._internal.image.Image_point.Point).in_(_r?.__copy__())) {
            return (new stdgo._internal.image.color.Color_rgba64.RGBA64((65535 : stdgo.GoUInt16), (65535 : stdgo.GoUInt16), (65535 : stdgo.GoUInt16), (65535 : stdgo.GoUInt16)) : stdgo._internal.image.color.Color_rgba64.RGBA64);
        };
        return (new stdgo._internal.image.color.Color_rgba64.RGBA64() : stdgo._internal.image.color.Color_rgba64.RGBA64);
    }
    @:keep
    @:tdfield
    static public function at( _r:stdgo._internal.image.Image_rectangle.Rectangle, _x:stdgo.GoInt, _y:stdgo.GoInt):stdgo._internal.image.color.Color_color.Color {
        @:recv var _r:stdgo._internal.image.Image_rectangle.Rectangle = _r?.__copy__();
        if ((new stdgo._internal.image.Image_point.Point(_x, _y) : stdgo._internal.image.Image_point.Point).in_(_r?.__copy__())) {
            return stdgo.Go.asInterface(stdgo._internal.image.color.Color_opaque.opaque);
        };
        return stdgo.Go.asInterface(stdgo._internal.image.color.Color_transparent.transparent);
    }
    @:keep
    @:tdfield
    static public function canon( _r:stdgo._internal.image.Image_rectangle.Rectangle):stdgo._internal.image.Image_rectangle.Rectangle {
        @:recv var _r:stdgo._internal.image.Image_rectangle.Rectangle = _r?.__copy__();
        if ((_r.max.x < _r.min.x : Bool)) {
            {
                final __tmp__0 = _r.max.x;
                final __tmp__1 = _r.min.x;
                _r.min.x = __tmp__0;
                _r.max.x = __tmp__1;
            };
        };
        if ((_r.max.y < _r.min.y : Bool)) {
            {
                final __tmp__0 = _r.max.y;
                final __tmp__1 = _r.min.y;
                _r.min.y = __tmp__0;
                _r.max.y = __tmp__1;
            };
        };
        return _r?.__copy__();
    }
    @:keep
    @:tdfield
    static public function in_( _r:stdgo._internal.image.Image_rectangle.Rectangle, _s:stdgo._internal.image.Image_rectangle.Rectangle):Bool {
        @:recv var _r:stdgo._internal.image.Image_rectangle.Rectangle = _r?.__copy__();
        if (_r.empty()) {
            return true;
        };
        return ((((_s.min.x <= _r.min.x : Bool) && (_r.max.x <= _s.max.x : Bool) : Bool) && (_s.min.y <= _r.min.y : Bool) : Bool) && (_r.max.y <= _s.max.y : Bool) : Bool);
    }
    @:keep
    @:tdfield
    static public function overlaps( _r:stdgo._internal.image.Image_rectangle.Rectangle, _s:stdgo._internal.image.Image_rectangle.Rectangle):Bool {
        @:recv var _r:stdgo._internal.image.Image_rectangle.Rectangle = _r?.__copy__();
        return (((((!_r.empty() && !_s.empty() : Bool) && (_r.min.x < _s.max.x : Bool) : Bool) && (_s.min.x < _r.max.x : Bool) : Bool) && (_r.min.y < _s.max.y : Bool) : Bool) && (_s.min.y < _r.max.y : Bool) : Bool);
    }
    @:keep
    @:tdfield
    static public function eq( _r:stdgo._internal.image.Image_rectangle.Rectangle, _s:stdgo._internal.image.Image_rectangle.Rectangle):Bool {
        @:recv var _r:stdgo._internal.image.Image_rectangle.Rectangle = _r?.__copy__();
        return ((stdgo.Go.toInterface(_r) == stdgo.Go.toInterface(_s)) || (_r.empty() && _s.empty() : Bool) : Bool);
    }
    @:keep
    @:tdfield
    static public function empty( _r:stdgo._internal.image.Image_rectangle.Rectangle):Bool {
        @:recv var _r:stdgo._internal.image.Image_rectangle.Rectangle = _r?.__copy__();
        return ((_r.min.x >= _r.max.x : Bool) || (_r.min.y >= _r.max.y : Bool) : Bool);
    }
    @:keep
    @:tdfield
    static public function union( _r:stdgo._internal.image.Image_rectangle.Rectangle, _s:stdgo._internal.image.Image_rectangle.Rectangle):stdgo._internal.image.Image_rectangle.Rectangle {
        @:recv var _r:stdgo._internal.image.Image_rectangle.Rectangle = _r?.__copy__();
        if (_r.empty()) {
            return _s?.__copy__();
        };
        if (_s.empty()) {
            return _r?.__copy__();
        };
        if ((_r.min.x > _s.min.x : Bool)) {
            _r.min.x = _s.min.x;
        };
        if ((_r.min.y > _s.min.y : Bool)) {
            _r.min.y = _s.min.y;
        };
        if ((_r.max.x < _s.max.x : Bool)) {
            _r.max.x = _s.max.x;
        };
        if ((_r.max.y < _s.max.y : Bool)) {
            _r.max.y = _s.max.y;
        };
        return _r?.__copy__();
    }
    @:keep
    @:tdfield
    static public function intersect( _r:stdgo._internal.image.Image_rectangle.Rectangle, _s:stdgo._internal.image.Image_rectangle.Rectangle):stdgo._internal.image.Image_rectangle.Rectangle {
        @:recv var _r:stdgo._internal.image.Image_rectangle.Rectangle = _r?.__copy__();
        if ((_r.min.x < _s.min.x : Bool)) {
            _r.min.x = _s.min.x;
        };
        if ((_r.min.y < _s.min.y : Bool)) {
            _r.min.y = _s.min.y;
        };
        if ((_r.max.x > _s.max.x : Bool)) {
            _r.max.x = _s.max.x;
        };
        if ((_r.max.y > _s.max.y : Bool)) {
            _r.max.y = _s.max.y;
        };
        if (_r.empty()) {
            return stdgo._internal.image.Image_zr.zR?.__copy__();
        };
        return _r?.__copy__();
    }
    @:keep
    @:tdfield
    static public function inset( _r:stdgo._internal.image.Image_rectangle.Rectangle, _n:stdgo.GoInt):stdgo._internal.image.Image_rectangle.Rectangle {
        @:recv var _r:stdgo._internal.image.Image_rectangle.Rectangle = _r?.__copy__();
        if ((_r.dx() < ((2 : stdgo.GoInt) * _n : stdgo.GoInt) : Bool)) {
            _r.min.x = (((_r.min.x + _r.max.x : stdgo.GoInt)) / (2 : stdgo.GoInt) : stdgo.GoInt);
            _r.max.x = _r.min.x;
        } else {
            _r.min.x = (_r.min.x + (_n) : stdgo.GoInt);
            _r.max.x = (_r.max.x - (_n) : stdgo.GoInt);
        };
        if ((_r.dy() < ((2 : stdgo.GoInt) * _n : stdgo.GoInt) : Bool)) {
            _r.min.y = (((_r.min.y + _r.max.y : stdgo.GoInt)) / (2 : stdgo.GoInt) : stdgo.GoInt);
            _r.max.y = _r.min.y;
        } else {
            _r.min.y = (_r.min.y + (_n) : stdgo.GoInt);
            _r.max.y = (_r.max.y - (_n) : stdgo.GoInt);
        };
        return _r?.__copy__();
    }
    @:keep
    @:tdfield
    static public function sub( _r:stdgo._internal.image.Image_rectangle.Rectangle, _p:stdgo._internal.image.Image_point.Point):stdgo._internal.image.Image_rectangle.Rectangle {
        @:recv var _r:stdgo._internal.image.Image_rectangle.Rectangle = _r?.__copy__();
        return (new stdgo._internal.image.Image_rectangle.Rectangle((new stdgo._internal.image.Image_point.Point((_r.min.x - _p.x : stdgo.GoInt), (_r.min.y - _p.y : stdgo.GoInt)) : stdgo._internal.image.Image_point.Point), (new stdgo._internal.image.Image_point.Point((_r.max.x - _p.x : stdgo.GoInt), (_r.max.y - _p.y : stdgo.GoInt)) : stdgo._internal.image.Image_point.Point)) : stdgo._internal.image.Image_rectangle.Rectangle);
    }
    @:keep
    @:tdfield
    static public function add( _r:stdgo._internal.image.Image_rectangle.Rectangle, _p:stdgo._internal.image.Image_point.Point):stdgo._internal.image.Image_rectangle.Rectangle {
        @:recv var _r:stdgo._internal.image.Image_rectangle.Rectangle = _r?.__copy__();
        return (new stdgo._internal.image.Image_rectangle.Rectangle((new stdgo._internal.image.Image_point.Point((_r.min.x + _p.x : stdgo.GoInt), (_r.min.y + _p.y : stdgo.GoInt)) : stdgo._internal.image.Image_point.Point), (new stdgo._internal.image.Image_point.Point((_r.max.x + _p.x : stdgo.GoInt), (_r.max.y + _p.y : stdgo.GoInt)) : stdgo._internal.image.Image_point.Point)) : stdgo._internal.image.Image_rectangle.Rectangle);
    }
    @:keep
    @:tdfield
    static public function size( _r:stdgo._internal.image.Image_rectangle.Rectangle):stdgo._internal.image.Image_point.Point {
        @:recv var _r:stdgo._internal.image.Image_rectangle.Rectangle = _r?.__copy__();
        return (new stdgo._internal.image.Image_point.Point((_r.max.x - _r.min.x : stdgo.GoInt), (_r.max.y - _r.min.y : stdgo.GoInt)) : stdgo._internal.image.Image_point.Point);
    }
    @:keep
    @:tdfield
    static public function dy( _r:stdgo._internal.image.Image_rectangle.Rectangle):stdgo.GoInt {
        @:recv var _r:stdgo._internal.image.Image_rectangle.Rectangle = _r?.__copy__();
        return (_r.max.y - _r.min.y : stdgo.GoInt);
    }
    @:keep
    @:tdfield
    static public function dx( _r:stdgo._internal.image.Image_rectangle.Rectangle):stdgo.GoInt {
        @:recv var _r:stdgo._internal.image.Image_rectangle.Rectangle = _r?.__copy__();
        return (_r.max.x - _r.min.x : stdgo.GoInt);
    }
    @:keep
    @:tdfield
    static public function string( _r:stdgo._internal.image.Image_rectangle.Rectangle):stdgo.GoString {
        @:recv var _r:stdgo._internal.image.Image_rectangle.Rectangle = _r?.__copy__();
        return (((_r.min.string() : stdgo.GoString) + ("-" : stdgo.GoString)?.__copy__() : stdgo.GoString) + (_r.max.string() : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__();
    }
}
