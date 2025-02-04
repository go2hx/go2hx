package stdgo._internal.net.http;
@:keep @:allow(stdgo._internal.net.http.Http.T_http2httpError_asInterface) class T_http2httpError_static_extension {
    @:keep
    @:tdfield
    static public function temporary( _e:stdgo.Ref<stdgo._internal.net.http.Http_t_http2httperror.T_http2httpError>):Bool {
        @:recv var _e:stdgo.Ref<stdgo._internal.net.http.Http_t_http2httperror.T_http2httpError> = _e;
        return true;
    }
    @:keep
    @:tdfield
    static public function timeout( _e:stdgo.Ref<stdgo._internal.net.http.Http_t_http2httperror.T_http2httpError>):Bool {
        @:recv var _e:stdgo.Ref<stdgo._internal.net.http.Http_t_http2httperror.T_http2httpError> = _e;
        return (@:checkr _e ?? throw "null pointer dereference")._timeout;
    }
    @:keep
    @:tdfield
    static public function error( _e:stdgo.Ref<stdgo._internal.net.http.Http_t_http2httperror.T_http2httpError>):stdgo.GoString {
        @:recv var _e:stdgo.Ref<stdgo._internal.net.http.Http_t_http2httperror.T_http2httpError> = _e;
        return (@:checkr _e ?? throw "null pointer dereference")._msg?.__copy__();
    }
}
