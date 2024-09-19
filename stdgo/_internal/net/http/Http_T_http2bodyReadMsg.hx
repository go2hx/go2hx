package stdgo._internal.net.http;
@:structInit class T_http2bodyReadMsg {
    public var _st : stdgo.Ref<stdgo._internal.net.http.Http_T_http2stream.T_http2stream> = (null : stdgo.Ref<stdgo._internal.net.http.Http_T_http2stream.T_http2stream>);
    public var _n : stdgo.GoInt = 0;
    public function new(?_st:stdgo.Ref<stdgo._internal.net.http.Http_T_http2stream.T_http2stream>, ?_n:stdgo.GoInt) {
        if (_st != null) this._st = _st;
        if (_n != null) this._n = _n;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_http2bodyReadMsg(_st, _n);
    }
}
