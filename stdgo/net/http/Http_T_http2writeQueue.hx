package stdgo.net.http;
@:structInit @:using(stdgo.net.http.Http.T_http2writeQueue_static_extension) abstract T_http2writeQueue(stdgo._internal.net.http.Http_T_http2writeQueue.T_http2writeQueue) from stdgo._internal.net.http.Http_T_http2writeQueue.T_http2writeQueue to stdgo._internal.net.http.Http_T_http2writeQueue.T_http2writeQueue {
    public function new() this = new stdgo._internal.net.http.Http_T_http2writeQueue.T_http2writeQueue();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
