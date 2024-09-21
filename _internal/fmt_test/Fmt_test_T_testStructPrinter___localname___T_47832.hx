package _internal.fmt_test;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.fmt.Fmt;
@:structInit class T_testStructPrinter___localname___T_47832 {
    public var _a : stdgo.GoString = "";
    public var _b : stdgo.GoString = "";
    public var _c : stdgo.GoInt = 0;
    public function new(?_a:stdgo.GoString, ?_b:stdgo.GoString, ?_c:stdgo.GoInt) {
        if (_a != null) this._a = _a;
        if (_b != null) this._b = _b;
        if (_c != null) this._c = _c;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_testStructPrinter___localname___T_47832(_a, _b, _c);
    }
}
