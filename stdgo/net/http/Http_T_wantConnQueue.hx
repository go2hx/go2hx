package stdgo.net.http;
@:structInit @:using(stdgo.net.http.Http.T_wantConnQueue_static_extension) abstract T_wantConnQueue(stdgo._internal.net.http.Http_T_wantConnQueue.T_wantConnQueue) from stdgo._internal.net.http.Http_T_wantConnQueue.T_wantConnQueue to stdgo._internal.net.http.Http_T_wantConnQueue.T_wantConnQueue {
    public function new() this = new stdgo._internal.net.http.Http_T_wantConnQueue.T_wantConnQueue();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
