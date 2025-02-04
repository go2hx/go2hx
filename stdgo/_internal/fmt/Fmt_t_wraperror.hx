package stdgo._internal.fmt;
@:structInit @:using(stdgo._internal.fmt.Fmt_t_wraperror_static_extension.T_wrapError_static_extension) class T_wrapError {
    public var _msg : stdgo.GoString = "";
    public var _err : stdgo.Error = (null : stdgo.Error);
    public function new(?_msg:stdgo.GoString, ?_err:stdgo.Error) {
        if (_msg != null) this._msg = _msg;
        if (_err != null) this._err = _err;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_wrapError(_msg, _err);
    }
}
