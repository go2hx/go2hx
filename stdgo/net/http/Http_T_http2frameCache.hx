package stdgo.net.http;
@:structInit @:using(stdgo.net.http.Http.T_http2frameCache_static_extension) abstract T_http2frameCache(stdgo._internal.net.http.Http_T_http2frameCache.T_http2frameCache) from stdgo._internal.net.http.Http_T_http2frameCache.T_http2frameCache to stdgo._internal.net.http.Http_T_http2frameCache.T_http2frameCache {
    public function new() this = new stdgo._internal.net.http.Http_T_http2frameCache.T_http2frameCache();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
