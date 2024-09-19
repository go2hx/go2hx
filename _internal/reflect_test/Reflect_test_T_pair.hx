package _internal.reflect_test;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
@:structInit class T_pair {
    public var _i : stdgo.AnyInterface = (null : stdgo.AnyInterface);
    public var _s : stdgo.GoString = "";
    public function new(?_i:stdgo.AnyInterface, ?_s:stdgo.GoString) {
        if (_i != null) this._i = _i;
        if (_s != null) this._s = _s;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_pair(_i, _s);
    }
}
