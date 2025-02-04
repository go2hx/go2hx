package stdgo._internal.fmt;
@:structInit @:using(stdgo._internal.fmt.Fmt_t_scanerror_static_extension.T_scanError_static_extension) class T_scanError {
    public var _err : stdgo.Error = (null : stdgo.Error);
    public function new(?_err:stdgo.Error) {
        if (_err != null) this._err = _err;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_scanError(_err);
    }
}
