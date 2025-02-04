package stdgo._internal.net.http;
@:keep @:allow(stdgo._internal.net.http.Http.T_tlsHandshakeTimeoutError_asInterface) class T_tlsHandshakeTimeoutError_static_extension {
    @:keep
    @:tdfield
    static public function error( _:stdgo._internal.net.http.Http_t_tlshandshaketimeouterror.T_tlsHandshakeTimeoutError):stdgo.GoString {
        @:recv var _:stdgo._internal.net.http.Http_t_tlshandshaketimeouterror.T_tlsHandshakeTimeoutError = _?.__copy__();
        return ("net/http: TLS handshake timeout" : stdgo.GoString);
    }
    @:keep
    @:tdfield
    static public function temporary( _:stdgo._internal.net.http.Http_t_tlshandshaketimeouterror.T_tlsHandshakeTimeoutError):Bool {
        @:recv var _:stdgo._internal.net.http.Http_t_tlshandshaketimeouterror.T_tlsHandshakeTimeoutError = _?.__copy__();
        return true;
    }
    @:keep
    @:tdfield
    static public function timeout( _:stdgo._internal.net.http.Http_t_tlshandshaketimeouterror.T_tlsHandshakeTimeoutError):Bool {
        @:recv var _:stdgo._internal.net.http.Http_t_tlshandshaketimeouterror.T_tlsHandshakeTimeoutError = _?.__copy__();
        return true;
    }
}
