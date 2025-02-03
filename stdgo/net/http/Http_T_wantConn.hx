package stdgo.net.http;
@:structInit @:using(stdgo.net.http.Http.T_wantConn_static_extension) abstract T_wantConn(stdgo._internal.net.http.Http_T_wantConn.T_wantConn) from stdgo._internal.net.http.Http_T_wantConn.T_wantConn to stdgo._internal.net.http.Http_T_wantConn.T_wantConn {
    public function new() this = new stdgo._internal.net.http.Http_T_wantConn.T_wantConn();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
