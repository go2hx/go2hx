package stdgo._internal.net.http;
@:structInit class T_http2requestParam {
    public var _method : stdgo.GoString = "";
    public var _scheme : stdgo.GoString = "";
    public var _authority : stdgo.GoString = "";
    public var _path : stdgo.GoString = "";
    public var _header : stdgo._internal.net.http.Http_Header.Header = (null : stdgo._internal.net.http.Http_Header.Header);
    public function new(?_method:stdgo.GoString, ?_scheme:stdgo.GoString, ?_authority:stdgo.GoString, ?_path:stdgo.GoString, ?_header:stdgo._internal.net.http.Http_Header.Header) {
        if (_method != null) this._method = _method;
        if (_scheme != null) this._scheme = _scheme;
        if (_authority != null) this._authority = _authority;
        if (_path != null) this._path = _path;
        if (_header != null) this._header = _header;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_http2requestParam(_method, _scheme, _authority, _path, _header);
    }
}
