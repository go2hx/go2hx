package stdgo._internal.crypto.tls;
@:keep @:allow(stdgo._internal.crypto.tls.Tls.T_permanentError_asInterface) class T_permanentError_static_extension {
    @:keep
    @:tdfield
    static public function temporary( _e:stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_permanenterror.T_permanentError>):Bool {
        @:recv var _e:stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_permanenterror.T_permanentError> = _e;
        return false;
    }
    @:keep
    @:tdfield
    static public function timeout( _e:stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_permanenterror.T_permanentError>):Bool {
        @:recv var _e:stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_permanenterror.T_permanentError> = _e;
        return (@:checkr _e ?? throw "null pointer dereference")._err.timeout();
    }
    @:keep
    @:tdfield
    static public function unwrap( _e:stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_permanenterror.T_permanentError>):stdgo.Error {
        @:recv var _e:stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_permanenterror.T_permanentError> = _e;
        return (@:checkr _e ?? throw "null pointer dereference")._err;
    }
    @:keep
    @:tdfield
    static public function error( _e:stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_permanenterror.T_permanentError>):stdgo.GoString {
        @:recv var _e:stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_permanenterror.T_permanentError> = _e;
        return (@:checkr _e ?? throw "null pointer dereference")._err.error()?.__copy__();
    }
}
