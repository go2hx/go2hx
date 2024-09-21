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
@:structInit class ScalarPtr {
    public var _q : stdgo.GoInt = 0;
    public var _w : stdgo.Pointer<stdgo.GoInt> = (null : stdgo.Pointer<stdgo.GoInt>);
    public var _e : stdgo.GoInt = 0;
    public var _r : stdgo.Pointer<stdgo.GoInt> = (null : stdgo.Pointer<stdgo.GoInt>);
    public var _t : stdgo.GoInt = 0;
    public var _y : stdgo.Pointer<stdgo.GoInt> = (null : stdgo.Pointer<stdgo.GoInt>);
    public function new(?_q:stdgo.GoInt, ?_w:stdgo.Pointer<stdgo.GoInt>, ?_e:stdgo.GoInt, ?_r:stdgo.Pointer<stdgo.GoInt>, ?_t:stdgo.GoInt, ?_y:stdgo.Pointer<stdgo.GoInt>) {
        if (_q != null) this._q = _q;
        if (_w != null) this._w = _w;
        if (_e != null) this._e = _e;
        if (_r != null) this._r = _r;
        if (_t != null) this._t = _t;
        if (_y != null) this._y = _y;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new ScalarPtr(_q, _w, _e, _r, _t, _y);
    }
}
