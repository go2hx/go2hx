package _internal.fmt_test;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.fmt.Fmt;
@:structInit @:using(_internal.fmt_test.Fmt_test_Recur_static_extension.Recur_static_extension) class Recur {
    public var _i : stdgo.GoInt = 0;
    public var _failed : stdgo.Pointer<Bool> = (null : stdgo.Pointer<Bool>);
    public function new(?_i:stdgo.GoInt, ?_failed:stdgo.Pointer<Bool>) {
        if (_i != null) this._i = _i;
        if (_failed != null) this._failed = _failed;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Recur(_i, _failed);
    }
}
