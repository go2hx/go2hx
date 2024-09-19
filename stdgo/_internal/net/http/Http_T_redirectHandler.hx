package stdgo._internal.net.http;
@:structInit @:using(stdgo._internal.net.http.Http_T_redirectHandler_static_extension.T_redirectHandler_static_extension) class T_redirectHandler {
    public var _url : stdgo.GoString = "";
    public var _code : stdgo.GoInt = 0;
    public function new(?_url:stdgo.GoString, ?_code:stdgo.GoInt) {
        if (_url != null) this._url = _url;
        if (_code != null) this._code = _code;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_redirectHandler(_url, _code);
    }
}
