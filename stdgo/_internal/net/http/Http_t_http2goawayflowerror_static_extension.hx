package stdgo._internal.net.http;
@:keep @:allow(stdgo._internal.net.http.Http.T_http2goAwayFlowError_asInterface) class T_http2goAwayFlowError_static_extension {
    @:keep
    @:tdfield
    static public function error( _:stdgo._internal.net.http.Http_t_http2goawayflowerror.T_http2goAwayFlowError):stdgo.GoString {
        @:recv var _:stdgo._internal.net.http.Http_t_http2goawayflowerror.T_http2goAwayFlowError = _?.__copy__();
        return ("connection exceeded flow control window size" : stdgo.GoString);
    }
}
