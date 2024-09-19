package stdgo._internal.net.http;
@:keep @:allow(stdgo._internal.net.http.Http.T_unsupportedTEError_asInterface) class T_unsupportedTEError_static_extension {
    @:keep
    static public function error( _uste:stdgo.Ref<stdgo._internal.net.http.Http_T_unsupportedTEError.T_unsupportedTEError>):stdgo.GoString {
        @:recv var _uste:stdgo.Ref<stdgo._internal.net.http.Http_T_unsupportedTEError.T_unsupportedTEError> = _uste;
        return _uste._err?.__copy__();
    }
}
