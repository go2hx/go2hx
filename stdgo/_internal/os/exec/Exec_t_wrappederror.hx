package stdgo._internal.os.exec;
@:structInit @:using(stdgo._internal.os.exec.Exec_t_wrappederror_static_extension.T_wrappedError_static_extension) class T_wrappedError {
    public var _prefix : stdgo.GoString = "";
    public var _err : stdgo.Error = (null : stdgo.Error);
    public function new(?_prefix:stdgo.GoString, ?_err:stdgo.Error) {
        if (_prefix != null) this._prefix = _prefix;
        if (_err != null) this._err = _err;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_wrappedError(_prefix, _err);
    }
}
