package stdgo.net.http;
@:structInit @:using(stdgo.net.http.Http.T_http2clientConnIdleState_static_extension) abstract T_http2clientConnIdleState(stdgo._internal.net.http.Http_T_http2clientConnIdleState.T_http2clientConnIdleState) from stdgo._internal.net.http.Http_T_http2clientConnIdleState.T_http2clientConnIdleState to stdgo._internal.net.http.Http_T_http2clientConnIdleState.T_http2clientConnIdleState {
    public function new() this = new stdgo._internal.net.http.Http_T_http2clientConnIdleState.T_http2clientConnIdleState();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
