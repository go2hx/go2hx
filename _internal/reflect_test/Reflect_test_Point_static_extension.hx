package _internal.reflect_test;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
@:keep @:allow(_internal.reflect_test.Reflect_test.Point_asInterface) class Point_static_extension {
    @:keep
    static public function int32Method( _p:stdgo.Ref<_internal.reflect_test.Reflect_test_Point.Point>, _x:stdgo.GoInt32):stdgo.GoInt32 {
        @:recv var _p:stdgo.Ref<_internal.reflect_test.Reflect_test_Point.Point> = _p;
        return _x;
    }
    @:keep
    static public function int64Method( _p:stdgo.Ref<_internal.reflect_test.Reflect_test_Point.Point>, _x:stdgo.GoInt64):stdgo.GoInt64 {
        @:recv var _p:stdgo.Ref<_internal.reflect_test.Reflect_test_Point.Point> = _p;
        return _x;
    }
    @:keep
    static public function totalDist( _p:_internal.reflect_test.Reflect_test_Point.Point, _points:haxe.Rest<_internal.reflect_test.Reflect_test_Point.Point>):stdgo.GoInt {
        var _points = new stdgo.Slice<_internal.reflect_test.Reflect_test_Point.Point>(_points.length, 0, ..._points);
        @:recv var _p:_internal.reflect_test.Reflect_test_Point.Point = _p?.__copy__();
        var _tot = (0 : stdgo.GoInt);
        for (__71 => _q in _points) {
            var _dx = (_q._x - _p._x : stdgo.GoInt);
            var _dy = (_q._y - _p._y : stdgo.GoInt);
            _tot = (_tot + (((_dx * _dx : stdgo.GoInt) + (_dy * _dy : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoInt);
        };
        return _tot;
    }
    @:keep
    static public function noArgs( _p:_internal.reflect_test.Reflect_test_Point.Point):Void {
        @:recv var _p:_internal.reflect_test.Reflect_test_Point.Point = _p?.__copy__();
    }
    @:keep
    static public function gcmethod( _p:_internal.reflect_test.Reflect_test_Point.Point, _k:stdgo.GoInt):stdgo.GoInt {
        @:recv var _p:_internal.reflect_test.Reflect_test_Point.Point = _p?.__copy__();
        stdgo._internal.runtime.Runtime_gc.gc();
        return (_k + _p._x : stdgo.GoInt);
    }
    @:keep
    static public function dist( _p:_internal.reflect_test.Reflect_test_Point.Point, _scale:stdgo.GoInt):stdgo.GoInt {
        @:recv var _p:_internal.reflect_test.Reflect_test_Point.Point = _p?.__copy__();
        return (((_p._x * _p._x : stdgo.GoInt) * _scale : stdgo.GoInt) + ((_p._y * _p._y : stdgo.GoInt) * _scale : stdgo.GoInt) : stdgo.GoInt);
    }
    @:keep
    static public function anotherMethod( _p:_internal.reflect_test.Reflect_test_Point.Point, _scale:stdgo.GoInt):stdgo.GoInt {
        @:recv var _p:_internal.reflect_test.Reflect_test_Point.Point = _p?.__copy__();
        return (-1 : stdgo.GoInt);
    }
}
