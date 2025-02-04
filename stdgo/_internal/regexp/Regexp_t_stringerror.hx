package stdgo._internal.regexp;
@:structInit @:using(stdgo._internal.regexp.Regexp_t_stringerror_static_extension.T_stringError_static_extension) class T_stringError {
    public var _re : stdgo.GoString = "";
    public var _err : stdgo.GoString = "";
    public function new(?_re:stdgo.GoString, ?_err:stdgo.GoString) {
        if (_re != null) this._re = _re;
        if (_err != null) this._err = _err;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_stringError(_re, _err);
    }
}
