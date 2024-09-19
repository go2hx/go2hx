package stdgo._internal.net.http;
@:structInit @:using(stdgo._internal.net.http.Http_T_unsupportedTEError_static_extension.T_unsupportedTEError_static_extension) class T_unsupportedTEError {
    public var _err : stdgo.GoString = "";
    public function new(?_err:stdgo.GoString) {
        if (_err != null) this._err = _err;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_unsupportedTEError(_err);
    }
}
