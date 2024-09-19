package stdgo._internal.net.http;
@:structInit @:using(stdgo._internal.net.http.Http_T_transportReadFromServerError_static_extension.T_transportReadFromServerError_static_extension) class T_transportReadFromServerError {
    public var _err : stdgo.Error = (null : stdgo.Error);
    public function new(?_err:stdgo.Error) {
        if (_err != null) this._err = _err;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_transportReadFromServerError(_err);
    }
}
