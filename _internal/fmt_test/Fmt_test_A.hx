package _internal.fmt_test;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.fmt.Fmt;
@:structInit class A {
    public var _i : stdgo.GoInt = 0;
    public var _j : stdgo.GoUInt = 0;
    public var _s : stdgo.GoString = "";
    public var _x : stdgo.Slice<stdgo.GoInt> = (null : stdgo.Slice<stdgo.GoInt>);
    public function new(?_i:stdgo.GoInt, ?_j:stdgo.GoUInt, ?_s:stdgo.GoString, ?_x:stdgo.Slice<stdgo.GoInt>) {
        if (_i != null) this._i = _i;
        if (_j != null) this._j = _j;
        if (_s != null) this._s = _s;
        if (_x != null) this._x = _x;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new A(_i, _j, _s, _x);
    }
}
