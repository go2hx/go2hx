package _internal.errors_test;
@:structInit @:using(_internal.errors_test.Errors_test_T_errorT_static_extension.T_errorT_static_extension) class T_errorT {
    public var _s : stdgo.GoString = "";
    public function new(?_s:stdgo.GoString) {
        if (_s != null) this._s = _s;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_errorT(_s);
    }
}
