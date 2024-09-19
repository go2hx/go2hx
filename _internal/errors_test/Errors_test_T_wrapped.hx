package _internal.errors_test;
@:structInit @:using(_internal.errors_test.Errors_test_T_wrapped_static_extension.T_wrapped_static_extension) class T_wrapped {
    public var _msg : stdgo.GoString = "";
    public var _err : stdgo.Error = (null : stdgo.Error);
    public function new(?_msg:stdgo.GoString, ?_err:stdgo.Error) {
        if (_msg != null) this._msg = _msg;
        if (_err != null) this._err = _err;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_wrapped(_msg, _err);
    }
}
