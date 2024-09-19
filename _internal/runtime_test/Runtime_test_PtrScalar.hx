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
@:structInit class PtrScalar {
    public var _q : stdgo.Pointer<stdgo.GoInt> = (null : stdgo.Pointer<stdgo.GoInt>);
    public var _w : stdgo.GoInt = 0;
    public var _e : stdgo.Pointer<stdgo.GoInt> = (null : stdgo.Pointer<stdgo.GoInt>);
    public var _r : stdgo.GoInt = 0;
    public var _t : stdgo.Pointer<stdgo.GoInt> = (null : stdgo.Pointer<stdgo.GoInt>);
    public var _y : stdgo.GoInt = 0;
    public function new(?_q:stdgo.Pointer<stdgo.GoInt>, ?_w:stdgo.GoInt, ?_e:stdgo.Pointer<stdgo.GoInt>, ?_r:stdgo.GoInt, ?_t:stdgo.Pointer<stdgo.GoInt>, ?_y:stdgo.GoInt) {
        if (_q != null) this._q = _q;
        if (_w != null) this._w = _w;
        if (_e != null) this._e = _e;
        if (_r != null) this._r = _r;
        if (_t != null) this._t = _t;
        if (_y != null) this._y = _y;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new PtrScalar(_q, _w, _e, _r, _t, _y);
    }
}
