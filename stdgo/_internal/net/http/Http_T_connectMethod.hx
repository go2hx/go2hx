package stdgo._internal.net.http;
@:structInit @:using(stdgo._internal.net.http.Http_T_connectMethod_static_extension.T_connectMethod_static_extension) class T_connectMethod {
    @:optional
    public var __74 : stdgo._internal.net.http.Http_T_incomparable.T_incomparable = new stdgo._internal.net.http.Http_T_incomparable.T_incomparable(0, 0, ...[for (i in 0 ... 0) null]);
    public var _proxyURL : stdgo.Ref<stdgo._internal.net.url.Url_URL.URL> = (null : stdgo.Ref<stdgo._internal.net.url.Url_URL.URL>);
    public var _targetScheme : stdgo.GoString = "";
    public var _targetAddr : stdgo.GoString = "";
    public var _onlyH1 : Bool = false;
    public function new(?__74:stdgo._internal.net.http.Http_T_incomparable.T_incomparable, ?_proxyURL:stdgo.Ref<stdgo._internal.net.url.Url_URL.URL>, ?_targetScheme:stdgo.GoString, ?_targetAddr:stdgo.GoString, ?_onlyH1:Bool) {
        if (__74 != null) this.__74 = __74;
        if (_proxyURL != null) this._proxyURL = _proxyURL;
        if (_targetScheme != null) this._targetScheme = _targetScheme;
        if (_targetAddr != null) this._targetAddr = _targetAddr;
        if (_onlyH1 != null) this._onlyH1 = _onlyH1;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_connectMethod(__74, _proxyURL, _targetScheme, _targetAddr, _onlyH1);
    }
}
