package _internal.fmt_test;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.fmt.Fmt;
@:structInit class B {
    public var i : _internal.fmt_test.Fmt_test_I.I = ((0 : stdgo.GoInt) : _internal.fmt_test.Fmt_test_I.I);
    public var _j : stdgo.GoInt = 0;
    public function new(?i:_internal.fmt_test.Fmt_test_I.I, ?_j:stdgo.GoInt) {
        if (i != null) this.i = i;
        if (_j != null) this._j = _j;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new B(i, _j);
    }
}
