package stdgo._internal.net.http;
@:structInit @:using(stdgo._internal.net.http.Http_T_errorReader_static_extension.T_errorReader_static_extension) class T_errorReader {
    public var _err : stdgo.Error = (null : stdgo.Error);
    public function new(?_err:stdgo.Error) {
        if (_err != null) this._err = _err;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_errorReader(_err);
    }
}