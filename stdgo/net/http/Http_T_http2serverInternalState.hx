package stdgo.net.http;
@:structInit @:using(stdgo.net.http.Http.T_http2serverInternalState_static_extension) abstract T_http2serverInternalState(stdgo._internal.net.http.Http_T_http2serverInternalState.T_http2serverInternalState) from stdgo._internal.net.http.Http_T_http2serverInternalState.T_http2serverInternalState to stdgo._internal.net.http.Http_T_http2serverInternalState.T_http2serverInternalState {
    public function new() this = new stdgo._internal.net.http.Http_T_http2serverInternalState.T_http2serverInternalState();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
