package stdgo.net.http;
@:structInit @:using(stdgo.net.http.Http.T_persistConn_static_extension) abstract T_persistConn(stdgo._internal.net.http.Http_T_persistConn.T_persistConn) from stdgo._internal.net.http.Http_T_persistConn.T_persistConn to stdgo._internal.net.http.Http_T_persistConn.T_persistConn {
    public function new() this = new stdgo._internal.net.http.Http_T_persistConn.T_persistConn();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
