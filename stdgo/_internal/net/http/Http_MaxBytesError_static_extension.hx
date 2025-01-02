package stdgo._internal.net.http;
@:keep @:allow(stdgo._internal.net.http.Http.MaxBytesError_asInterface) class MaxBytesError_static_extension {
    @:keep
    @:tdfield
    static public function error( _e:stdgo.Ref<stdgo._internal.net.http.Http_MaxBytesError.MaxBytesError>):stdgo.GoString {
        @:recv var _e:stdgo.Ref<stdgo._internal.net.http.Http_MaxBytesError.MaxBytesError> = _e;
        return ("http: request body too large" : stdgo.GoString);
    }
}
