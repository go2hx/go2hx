package _internal.reflect_test;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
@:structInit class T_testExported___localname___exportTest_196198 {
    public var _v : stdgo.AnyInterface = (null : stdgo.AnyInterface);
    public var _want : Bool = false;
    public function new(?_v:stdgo.AnyInterface, ?_want:Bool) {
        if (_v != null) this._v = _v;
        if (_want != null) this._want = _want;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_testExported___localname___exportTest_196198(_v, _want);
    }
}
