package stdgo._internal.net.http;
@:keep @:allow(stdgo._internal.net.http.Http.T_httpError_asInterface) class T_httpError_static_extension {
    @:keep
    @:tdfield
    static public function temporary( _e:stdgo.Ref<stdgo._internal.net.http.Http_t_httperror.T_httpError>):Bool {
        @:recv var _e:stdgo.Ref<stdgo._internal.net.http.Http_t_httperror.T_httpError> = _e;
        return true;
    }
    @:keep
    @:tdfield
    static public function timeout( _e:stdgo.Ref<stdgo._internal.net.http.Http_t_httperror.T_httpError>):Bool {
        @:recv var _e:stdgo.Ref<stdgo._internal.net.http.Http_t_httperror.T_httpError> = _e;
        return (@:checkr _e ?? throw "null pointer dereference")._timeout;
    }
    @:keep
    @:tdfield
    static public function error( _e:stdgo.Ref<stdgo._internal.net.http.Http_t_httperror.T_httpError>):stdgo.GoString {
        @:recv var _e:stdgo.Ref<stdgo._internal.net.http.Http_t_httperror.T_httpError> = _e;
        return (@:checkr _e ?? throw "null pointer dereference")._err?.__copy__();
    }
}
