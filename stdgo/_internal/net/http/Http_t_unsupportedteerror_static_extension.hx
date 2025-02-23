package stdgo._internal.net.http;
@:keep @:allow(stdgo._internal.net.http.Http.T_unsupportedTEError_asInterface) class T_unsupportedTEError_static_extension {
    @:keep
    @:tdfield
    static public function error( _uste:stdgo.Ref<stdgo._internal.net.http.Http_t_unsupportedteerror.T_unsupportedTEError>):stdgo.GoString {
        @:recv var _uste:stdgo.Ref<stdgo._internal.net.http.Http_t_unsupportedteerror.T_unsupportedTEError> = _uste;
        return (@:checkr _uste ?? throw "null pointer dereference")._err?.__copy__();
    }
}
