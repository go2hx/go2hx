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
@:structInit class BigStruct {
    public var _q : stdgo.Pointer<stdgo.GoInt> = (null : stdgo.Pointer<stdgo.GoInt>);
    public var _w : stdgo.GoUInt8 = 0;
    public var _e : stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(17, 17, ...[for (i in 0 ... 17) (0 : stdgo.GoUInt8)]);
    public var _r : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public var _t : stdgo.GoInt = 0;
    public var _y : stdgo.GoUInt16 = 0;
    public var _u : stdgo.GoUInt64 = 0;
    public var _i : stdgo.GoString = "";
    public function new(?_q:stdgo.Pointer<stdgo.GoInt>, ?_w:stdgo.GoUInt8, ?_e:stdgo.GoArray<stdgo.GoUInt8>, ?_r:stdgo.Slice<stdgo.GoUInt8>, ?_t:stdgo.GoInt, ?_y:stdgo.GoUInt16, ?_u:stdgo.GoUInt64, ?_i:stdgo.GoString) {
        if (_q != null) this._q = _q;
        if (_w != null) this._w = _w;
        if (_e != null) this._e = _e;
        if (_r != null) this._r = _r;
        if (_t != null) this._t = _t;
        if (_y != null) this._y = _y;
        if (_u != null) this._u = _u;
        if (_i != null) this._i = _i;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new BigStruct(_q, _w, _e, _r, _t, _y, _u, _i);
    }
}
