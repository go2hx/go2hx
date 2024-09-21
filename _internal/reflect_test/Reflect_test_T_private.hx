package _internal.reflect_test;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
@:structInit @:using(_internal.reflect_test.Reflect_test_T_private_static_extension.T_private_static_extension) class T_private {
    public var z : stdgo.GoInt = 0;
    public var _z : stdgo.GoInt = 0;
    public var s : stdgo.GoString = "";
    public var a : stdgo.GoArray<_internal.reflect_test.Reflect_test_Private.Private> = new stdgo.GoArray<_internal.reflect_test.Reflect_test_Private.Private>(1, 1, ...[for (i in 0 ... 1) ({} : _internal.reflect_test.Reflect_test_Private.Private)]);
    public var t : stdgo.Slice<_internal.reflect_test.Reflect_test_Private.Private> = (null : stdgo.Slice<_internal.reflect_test.Reflect_test_Private.Private>);
    public function new(?z:stdgo.GoInt, ?_z:stdgo.GoInt, ?s:stdgo.GoString, ?a:stdgo.GoArray<_internal.reflect_test.Reflect_test_Private.Private>, ?t:stdgo.Slice<_internal.reflect_test.Reflect_test_Private.Private>) {
        if (z != null) this.z = z;
        if (_z != null) this._z = _z;
        if (s != null) this.s = s;
        if (a != null) this.a = a;
        if (t != null) this.t = t;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_private(z, _z, s, a, t);
    }
}
