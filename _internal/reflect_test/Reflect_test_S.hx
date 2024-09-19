package _internal.reflect_test;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
@:structInit class S {
    public var _i1 : stdgo.GoInt64 = 0;
    public var _i2 : stdgo.GoInt64 = 0;
    public function new(?_i1:stdgo.GoInt64, ?_i2:stdgo.GoInt64) {
        if (_i1 != null) this._i1 = _i1;
        if (_i2 != null) this._i2 = _i2;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new S(_i1, _i2);
    }
}
