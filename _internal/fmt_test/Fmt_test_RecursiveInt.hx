package _internal.fmt_test;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.fmt.Fmt;
@:structInit @:using(_internal.fmt_test.Fmt_test_RecursiveInt_static_extension.RecursiveInt_static_extension) class RecursiveInt {
    public var _i : stdgo.GoInt = 0;
    public var _next : stdgo.Ref<_internal.fmt_test.Fmt_test_RecursiveInt.RecursiveInt> = (null : stdgo.Ref<_internal.fmt_test.Fmt_test_RecursiveInt.RecursiveInt>);
    public function new(?_i:stdgo.GoInt, ?_next:stdgo.Ref<_internal.fmt_test.Fmt_test_RecursiveInt.RecursiveInt>) {
        if (_i != null) this._i = _i;
        if (_next != null) this._next = _next;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new RecursiveInt(_i, _next);
    }
}
