package stdgo._internal.net.http;
@:structInit @:using(stdgo._internal.net.http.Http_T_httpError_static_extension.T_httpError_static_extension) class T_httpError {
    public var _err : stdgo.GoString = "";
    public var _timeout : Bool = false;
    public function new(?_err:stdgo.GoString, ?_timeout:Bool) {
        if (_err != null) this._err = _err;
        if (_timeout != null) this._timeout = _timeout;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_httpError(_err, _timeout);
    }
}
