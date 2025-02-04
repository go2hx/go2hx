package stdgo._internal.net.http;
@:keep @:allow(stdgo._internal.net.http.Http.T_http2streamState_asInterface) class T_http2streamState_static_extension {
    @:keep
    @:tdfield
    static public function string( _st:stdgo._internal.net.http.Http_t_http2streamstate.T_http2streamState):stdgo.GoString {
        @:recv var _st:stdgo._internal.net.http.Http_t_http2streamstate.T_http2streamState = _st;
        return stdgo._internal.net.http.Http__http2statename._http2stateName[(_st : stdgo.GoInt)]?.__copy__();
    }
}
