package stdgo._internal.crypto.tls;
@:keep @:allow(stdgo._internal.crypto.tls.Tls.T_permanentError_asInterface) class T_permanentError_static_extension {
    @:keep
    static public function temporary( _e:stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_permanentError.T_permanentError>):Bool {
        @:recv var _e:stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_permanentError.T_permanentError> = _e;
        return false;
    }
    @:keep
    static public function timeout( _e:stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_permanentError.T_permanentError>):Bool {
        @:recv var _e:stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_permanentError.T_permanentError> = _e;
        return _e._err.timeout();
    }
    @:keep
    static public function unwrap( _e:stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_permanentError.T_permanentError>):stdgo.Error {
        @:recv var _e:stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_permanentError.T_permanentError> = _e;
        return _e._err;
    }
    @:keep
    static public function error( _e:stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_permanentError.T_permanentError>):stdgo.GoString {
        @:recv var _e:stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_permanentError.T_permanentError> = _e;
        return _e._err.error()?.__copy__();
    }
}