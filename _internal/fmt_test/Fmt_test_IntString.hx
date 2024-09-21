package _internal.fmt_test;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.fmt.Fmt;
@:structInit @:using(_internal.fmt_test.Fmt_test_IntString_static_extension.IntString_static_extension) class IntString {
    public var _i : stdgo.GoInt = 0;
    public var _s : stdgo.GoString = "";
    public function new(?_i:stdgo.GoInt, ?_s:stdgo.GoString) {
        if (_i != null) this._i = _i;
        if (_s != null) this._s = _s;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new IntString(_i, _s);
    }
}
