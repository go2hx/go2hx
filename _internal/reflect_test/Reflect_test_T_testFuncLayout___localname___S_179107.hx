package _internal.reflect_test;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
@:structInit class T_testFuncLayout___localname___S_179107 {
    public var _a : stdgo.GoUIntptr = 0;
    public var _b : stdgo.GoUIntptr = 0;
    public var _c : stdgo.Pointer<stdgo.GoUInt8> = (null : stdgo.Pointer<stdgo.GoUInt8>);
    public var _d : stdgo.Pointer<stdgo.GoUInt8> = (null : stdgo.Pointer<stdgo.GoUInt8>);
    public function new(?_a:stdgo.GoUIntptr, ?_b:stdgo.GoUIntptr, ?_c:stdgo.Pointer<stdgo.GoUInt8>, ?_d:stdgo.Pointer<stdgo.GoUInt8>) {
        if (_a != null) this._a = _a;
        if (_b != null) this._b = _b;
        if (_c != null) this._c = _c;
        if (_d != null) this._d = _d;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_testFuncLayout___localname___S_179107(_a, _b, _c, _d);
    }
}
