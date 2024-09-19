package _internal.fmt_test;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.fmt.Fmt;
@:structInit @:using(_internal.fmt_test.Fmt_test_C_static_extension.C_static_extension) class C {
    public var _i : stdgo.GoInt = 0;
    @:embedded
    public var b : _internal.fmt_test.Fmt_test_B.B = ({} : _internal.fmt_test.Fmt_test_B.B);
    public function new(?_i:stdgo.GoInt, ?b:_internal.fmt_test.Fmt_test_B.B) {
        if (_i != null) this._i = _i;
        if (b != null) this.b = b;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new C(_i, b);
    }
}
