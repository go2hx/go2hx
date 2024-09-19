package _internal.errors_test;
@:structInit @:using(_internal.errors_test.Errors_test_T_poser_static_extension.T_poser_static_extension) class T_poser {
    public var _msg : stdgo.GoString = "";
    public var _f : stdgo.Error -> Bool = null;
    public function new(?_msg:stdgo.GoString, ?_f:stdgo.Error -> Bool) {
        if (_msg != null) this._msg = _msg;
        if (_f != null) this._f = _f;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_poser(_msg, _f);
    }
}
