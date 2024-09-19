package _internal.reflect_test;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
@:structInit class D2 {
    public var _d : stdgo.GoInt = 0;
    public function new(?_d:stdgo.GoInt) {
        if (_d != null) this._d = _d;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new D2(_d);
    }
}
