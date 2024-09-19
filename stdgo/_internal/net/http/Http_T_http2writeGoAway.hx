package stdgo._internal.net.http;
@:structInit @:using(stdgo._internal.net.http.Http_T_http2writeGoAway_static_extension.T_http2writeGoAway_static_extension) class T_http2writeGoAway {
    public var _maxStreamID : stdgo.GoUInt32 = 0;
    public var _code : stdgo._internal.net.http.Http_T_http2ErrCode.T_http2ErrCode = ((0 : stdgo.GoUInt32) : stdgo._internal.net.http.Http_T_http2ErrCode.T_http2ErrCode);
    public function new(?_maxStreamID:stdgo.GoUInt32, ?_code:stdgo._internal.net.http.Http_T_http2ErrCode.T_http2ErrCode) {
        if (_maxStreamID != null) this._maxStreamID = _maxStreamID;
        if (_code != null) this._code = _code;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_http2writeGoAway(_maxStreamID, _code);
    }
}
