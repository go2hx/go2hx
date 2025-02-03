package stdgo.net.http;
@:structInit @:using(stdgo.net.http.Http.T_conn_static_extension) abstract T_conn(stdgo._internal.net.http.Http_T_conn.T_conn) from stdgo._internal.net.http.Http_T_conn.T_conn to stdgo._internal.net.http.Http_T_conn.T_conn {
    public function new() this = new stdgo._internal.net.http.Http_T_conn.T_conn();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
