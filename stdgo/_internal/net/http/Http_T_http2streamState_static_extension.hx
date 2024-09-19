package stdgo._internal.net.http;
@:keep @:allow(stdgo._internal.net.http.Http.T_http2streamState_asInterface) class T_http2streamState_static_extension {
    @:keep
    static public function string( _st:stdgo._internal.net.http.Http_T_http2streamState.T_http2streamState):stdgo.GoString {
        @:recv var _st:stdgo._internal.net.http.Http_T_http2streamState.T_http2streamState = _st;
        return stdgo._internal.net.http.Http__http2stateName._http2stateName[(_st : stdgo.GoInt)]?.__copy__();
    }
}
