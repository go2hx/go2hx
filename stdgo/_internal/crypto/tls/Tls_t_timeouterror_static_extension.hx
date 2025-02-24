package stdgo._internal.crypto.tls;
@:keep @:allow(stdgo._internal.crypto.tls.Tls.T_timeoutError_asInterface) class T_timeoutError_static_extension {
    @:keep
    @:tdfield
    static public function temporary( _:stdgo._internal.crypto.tls.Tls_t_timeouterror.T_timeoutError):Bool {
        @:recv var _:stdgo._internal.crypto.tls.Tls_t_timeouterror.T_timeoutError = _?.__copy__();
        return true;
    }
    @:keep
    @:tdfield
    static public function timeout( _:stdgo._internal.crypto.tls.Tls_t_timeouterror.T_timeoutError):Bool {
        @:recv var _:stdgo._internal.crypto.tls.Tls_t_timeouterror.T_timeoutError = _?.__copy__();
        return true;
    }
    @:keep
    @:tdfield
    static public function error( _:stdgo._internal.crypto.tls.Tls_t_timeouterror.T_timeoutError):stdgo.GoString {
        @:recv var _:stdgo._internal.crypto.tls.Tls_t_timeouterror.T_timeoutError = _?.__copy__();
        return ("tls: DialWithDialer timed out" : stdgo.GoString);
    }
}
