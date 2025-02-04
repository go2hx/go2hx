package stdgo._internal.net.http;
@:keep @:allow(stdgo._internal.net.http.Http.T_http2noCachedConnError_asInterface) class T_http2noCachedConnError_static_extension {
    @:keep
    @:tdfield
    static public function error( _:stdgo._internal.net.http.Http_t_http2nocachedconnerror.T_http2noCachedConnError):stdgo.GoString {
        @:recv var _:stdgo._internal.net.http.Http_t_http2nocachedconnerror.T_http2noCachedConnError = _?.__copy__();
        return ("http2: no cached connection was available" : stdgo.GoString);
    }
    @:keep
    @:tdfield
    static public function isHTTP2NoCachedConnError( _:stdgo._internal.net.http.Http_t_http2nocachedconnerror.T_http2noCachedConnError):Void {
        @:recv var _:stdgo._internal.net.http.Http_t_http2nocachedconnerror.T_http2noCachedConnError = _?.__copy__();
    }
}
