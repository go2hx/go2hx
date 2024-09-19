package _internal.fmt_test;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.fmt.Fmt;
@:structInit class S {
    public var f : _internal.fmt_test.Fmt_test_F.F = ((0 : stdgo.GoInt) : _internal.fmt_test.Fmt_test_F.F);
    public var g : _internal.fmt_test.Fmt_test_G.G = ((0 : stdgo.GoInt) : _internal.fmt_test.Fmt_test_G.G);
    public function new(?f:_internal.fmt_test.Fmt_test_F.F, ?g:_internal.fmt_test.Fmt_test_G.G) {
        if (f != null) this.f = f;
        if (g != null) this.g = g;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new S(f, g);
    }
}
