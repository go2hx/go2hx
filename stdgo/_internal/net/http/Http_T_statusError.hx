package stdgo._internal.net.http;
@:structInit @:using(stdgo._internal.net.http.Http_T_statusError_static_extension.T_statusError_static_extension) class T_statusError {
    public var _code : stdgo.GoInt = 0;
    public var _text : stdgo.GoString = "";
    public function new(?_code:stdgo.GoInt, ?_text:stdgo.GoString) {
        if (_code != null) this._code = _code;
        if (_text != null) this._text = _text;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_statusError(_code, _text);
    }
}
