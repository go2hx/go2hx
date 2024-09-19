package _internal.errors_test;
@:structInit @:using(_internal.errors_test.Errors_test_T_errorUncomparable_static_extension.T_errorUncomparable_static_extension) class T_errorUncomparable {
    public var _f : stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
    public function new(?_f:stdgo.Slice<stdgo.GoString>) {
        if (_f != null) this._f = _f;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_errorUncomparable(_f);
    }
}
