package stdgo._internal.net.http;
@:keep @:allow(stdgo._internal.net.http.Http.T_http2gate_asInterface) class T_http2gate_static_extension {
    @:keep
    static public function wait_( _g:stdgo._internal.net.http.Http_T_http2gate.T_http2gate):Void {
        @:recv var _g:stdgo._internal.net.http.Http_T_http2gate.T_http2gate = _g;
        _g.__get__();
    }
    @:keep
    static public function done( _g:stdgo._internal.net.http.Http_T_http2gate.T_http2gate):Void {
        @:recv var _g:stdgo._internal.net.http.Http_T_http2gate.T_http2gate = _g;
        _g.__send__((new stdgo._internal.net.http.Http_T_http2goAwayFlowError.T_http2goAwayFlowError() : stdgo._internal.net.http.Http_T_http2goAwayFlowError.T_http2goAwayFlowError));
    }
}
