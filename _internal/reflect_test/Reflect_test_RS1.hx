package _internal.reflect_test;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
@:structInit class RS1 {
    public var _i : stdgo.GoInt = 0;
    public function new(?_i:stdgo.GoInt) {
        if (_i != null) this._i = _i;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new RS1(_i);
    }
}
