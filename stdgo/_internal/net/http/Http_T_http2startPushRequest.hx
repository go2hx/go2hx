package stdgo._internal.net.http;
@:structInit class T_http2startPushRequest {
    public var _parent : stdgo.Ref<stdgo._internal.net.http.Http_T_http2stream.T_http2stream> = (null : stdgo.Ref<stdgo._internal.net.http.Http_T_http2stream.T_http2stream>);
    public var _method : stdgo.GoString = "";
    public var _url : stdgo.Ref<stdgo._internal.net.url.Url_URL.URL> = (null : stdgo.Ref<stdgo._internal.net.url.Url_URL.URL>);
    public var _header : stdgo._internal.net.http.Http_Header.Header = (null : stdgo._internal.net.http.Http_Header.Header);
    public var _done : stdgo.Chan<stdgo.Error> = (null : stdgo.Chan<stdgo.Error>);
    public function new(?_parent:stdgo.Ref<stdgo._internal.net.http.Http_T_http2stream.T_http2stream>, ?_method:stdgo.GoString, ?_url:stdgo.Ref<stdgo._internal.net.url.Url_URL.URL>, ?_header:stdgo._internal.net.http.Http_Header.Header, ?_done:stdgo.Chan<stdgo.Error>) {
        if (_parent != null) this._parent = _parent;
        if (_method != null) this._method = _method;
        if (_url != null) this._url = _url;
        if (_header != null) this._header = _header;
        if (_done != null) this._done = _done;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_http2startPushRequest(_parent, _method, _url, _header, _done);
    }
}
