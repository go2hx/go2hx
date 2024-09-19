package _internal.runtime_test;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.unsafe.Unsafe;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.unsafe.Unsafe;
import stdgo._internal.unsafe.Unsafe;
@:structInit class T_stkobjT {
    public var _p : stdgo.Ref<_internal.runtime_test.Runtime_test_T_stkobjT.T_stkobjT> = (null : stdgo.Ref<_internal.runtime_test.Runtime_test_T_stkobjT.T_stkobjT>);
    public var _x : stdgo.GoInt64 = 0;
    public var _y : stdgo.GoArray<stdgo.GoInt> = new stdgo.GoArray<stdgo.GoInt>(20, 20, ...[for (i in 0 ... 20) (0 : stdgo.GoInt)]);
    public function new(?_p:stdgo.Ref<_internal.runtime_test.Runtime_test_T_stkobjT.T_stkobjT>, ?_x:stdgo.GoInt64, ?_y:stdgo.GoArray<stdgo.GoInt>) {
        if (_p != null) this._p = _p;
        if (_x != null) this._x = _x;
        if (_y != null) this._y = _y;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_stkobjT(_p, _x, _y);
    }
}
