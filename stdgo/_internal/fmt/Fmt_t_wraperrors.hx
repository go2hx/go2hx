package stdgo._internal.fmt;
@:structInit @:using(stdgo._internal.fmt.Fmt_t_wraperrors_static_extension.T_wrapErrors_static_extension) class T_wrapErrors {
    public var _msg : stdgo.GoString = "";
    public var _errs : stdgo.Slice<stdgo.Error> = (null : stdgo.Slice<stdgo.Error>);
    public function new(?_msg:stdgo.GoString, ?_errs:stdgo.Slice<stdgo.Error>) {
        if (_msg != null) this._msg = _msg;
        if (_errs != null) this._errs = _errs;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_wrapErrors(_msg, _errs);
    }
}
