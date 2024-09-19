package stdgo._internal.net.http;
@:keep @:allow(stdgo._internal.net.http.Http.T_http2httpError_asInterface) class T_http2httpError_static_extension {
    @:keep
    static public function temporary( _e:stdgo.Ref<stdgo._internal.net.http.Http_T_http2httpError.T_http2httpError>):Bool {
        @:recv var _e:stdgo.Ref<stdgo._internal.net.http.Http_T_http2httpError.T_http2httpError> = _e;
        return true;
    }
    @:keep
    static public function timeout( _e:stdgo.Ref<stdgo._internal.net.http.Http_T_http2httpError.T_http2httpError>):Bool {
        @:recv var _e:stdgo.Ref<stdgo._internal.net.http.Http_T_http2httpError.T_http2httpError> = _e;
        return _e._timeout;
    }
    @:keep
    static public function error( _e:stdgo.Ref<stdgo._internal.net.http.Http_T_http2httpError.T_http2httpError>):stdgo.GoString {
        @:recv var _e:stdgo.Ref<stdgo._internal.net.http.Http_T_http2httpError.T_http2httpError> = _e;
        return _e._msg?.__copy__();
    }
}
