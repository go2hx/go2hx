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
@:structInit class T_bigStruct {
    public var _x : stdgo.GoInt64 = 0;
    public var _y : stdgo.GoInt64 = 0;
    public var _z : stdgo.GoInt64 = 0;
    public var _w : stdgo.GoInt64 = 0;
    public var _p : stdgo.GoInt64 = 0;
    public var _q : stdgo.GoInt64 = 0;
    public function new(?_x:stdgo.GoInt64, ?_y:stdgo.GoInt64, ?_z:stdgo.GoInt64, ?_w:stdgo.GoInt64, ?_p:stdgo.GoInt64, ?_q:stdgo.GoInt64) {
        if (_x != null) this._x = _x;
        if (_y != null) this._y = _y;
        if (_z != null) this._z = _z;
        if (_w != null) this._w = _w;
        if (_p != null) this._p = _p;
        if (_q != null) this._q = _q;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_bigStruct(_x, _y, _z, _w, _p, _q);
    }
}
