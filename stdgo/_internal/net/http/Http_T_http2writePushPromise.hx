package stdgo._internal.net.http;
@:structInit @:using(stdgo._internal.net.http.Http_T_http2writePushPromise_static_extension.T_http2writePushPromise_static_extension) class T_http2writePushPromise {
    public var _streamID : stdgo.GoUInt32 = 0;
    public var _method : stdgo.GoString = "";
    public var _url : stdgo.Ref<stdgo._internal.net.url.Url_URL.URL> = (null : stdgo.Ref<stdgo._internal.net.url.Url_URL.URL>);
    public var _h : stdgo._internal.net.http.Http_Header.Header = (null : stdgo._internal.net.http.Http_Header.Header);
    public var _allocatePromisedID : () -> { var _0 : stdgo.GoUInt32; var _1 : stdgo.Error; } = null;
    public var _promisedID : stdgo.GoUInt32 = 0;
    public function new(?_streamID:stdgo.GoUInt32, ?_method:stdgo.GoString, ?_url:stdgo.Ref<stdgo._internal.net.url.Url_URL.URL>, ?_h:stdgo._internal.net.http.Http_Header.Header, ?_allocatePromisedID:() -> { var _0 : stdgo.GoUInt32; var _1 : stdgo.Error; }, ?_promisedID:stdgo.GoUInt32) {
        if (_streamID != null) this._streamID = _streamID;
        if (_method != null) this._method = _method;
        if (_url != null) this._url = _url;
        if (_h != null) this._h = _h;
        if (_allocatePromisedID != null) this._allocatePromisedID = _allocatePromisedID;
        if (_promisedID != null) this._promisedID = _promisedID;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_http2writePushPromise(_streamID, _method, _url, _h, _allocatePromisedID, _promisedID);
    }
}
