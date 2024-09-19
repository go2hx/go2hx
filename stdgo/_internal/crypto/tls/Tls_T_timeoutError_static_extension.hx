package stdgo._internal.crypto.tls;
@:keep @:allow(stdgo._internal.crypto.tls.Tls.T_timeoutError_asInterface) class T_timeoutError_static_extension {
    @:keep
    static public function temporary( _:stdgo._internal.crypto.tls.Tls_T_timeoutError.T_timeoutError):Bool {
        @:recv var _:stdgo._internal.crypto.tls.Tls_T_timeoutError.T_timeoutError = _?.__copy__();
        return true;
    }
    @:keep
    static public function timeout( _:stdgo._internal.crypto.tls.Tls_T_timeoutError.T_timeoutError):Bool {
        @:recv var _:stdgo._internal.crypto.tls.Tls_T_timeoutError.T_timeoutError = _?.__copy__();
        return true;
    }
    @:keep
    static public function error( _:stdgo._internal.crypto.tls.Tls_T_timeoutError.T_timeoutError):stdgo.GoString {
        @:recv var _:stdgo._internal.crypto.tls.Tls_T_timeoutError.T_timeoutError = _?.__copy__();
        return ("tls: DialWithDialer timed out" : stdgo.GoString);
    }
}
