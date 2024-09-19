package stdgo._internal.net.http;
@:structInit @:using(stdgo._internal.net.http.Http_T_http2transportResponseBody_static_extension.T_http2transportResponseBody_static_extension) class T_http2transportResponseBody {
    public var _cs : stdgo.Ref<stdgo._internal.net.http.Http_T_http2clientStream.T_http2clientStream> = (null : stdgo.Ref<stdgo._internal.net.http.Http_T_http2clientStream.T_http2clientStream>);
    public function new(?_cs:stdgo.Ref<stdgo._internal.net.http.Http_T_http2clientStream.T_http2clientStream>) {
        if (_cs != null) this._cs = _cs;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_http2transportResponseBody(_cs);
    }
}
