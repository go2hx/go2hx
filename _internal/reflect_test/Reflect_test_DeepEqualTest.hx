package _internal.reflect_test;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
@:structInit class DeepEqualTest {
    public var _a : stdgo.AnyInterface = (null : stdgo.AnyInterface);
    public var _b : stdgo.AnyInterface = (null : stdgo.AnyInterface);
    public var _eq : Bool = false;
    public function new(?_a:stdgo.AnyInterface, ?_b:stdgo.AnyInterface, ?_eq:Bool) {
        if (_a != null) this._a = _a;
        if (_b != null) this._b = _b;
        if (_eq != null) this._eq = _eq;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new DeepEqualTest(_a, _b, _eq);
    }
}
