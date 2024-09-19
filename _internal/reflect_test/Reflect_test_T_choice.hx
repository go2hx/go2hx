package _internal.reflect_test;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
@:structInit class T_choice {
    public var _off : stdgo.GoInt = 0;
    public var _n : stdgo.GoInt = 0;
    public var _max : stdgo.GoInt = 0;
    public function new(?_off:stdgo.GoInt, ?_n:stdgo.GoInt, ?_max:stdgo.GoInt) {
        if (_off != null) this._off = _off;
        if (_n != null) this._n = _n;
        if (_max != null) this._max = _max;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_choice(_off, _n, _max);
    }
}
