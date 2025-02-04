package stdgo._internal.errors;
@:structInit @:using(stdgo._internal.errors.Errors_t_errorstring_static_extension.T_errorString_static_extension) class T_errorString {
    public var _s : stdgo.GoString = "";
    public function new(?_s:stdgo.GoString) {
        if (_s != null) this._s = _s;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_errorString(_s);
    }
}
