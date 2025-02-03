package stdgo.net.http;
@:structInit @:using(stdgo.net.http.Http.T_socksConn_static_extension) abstract T_socksConn(stdgo._internal.net.http.Http_T_socksConn.T_socksConn) from stdgo._internal.net.http.Http_T_socksConn.T_socksConn to stdgo._internal.net.http.Http_T_socksConn.T_socksConn {
    public var conn(get, set) : stdgo._internal.net.Net_Conn.Conn;
    function get_conn():stdgo._internal.net.Net_Conn.Conn return this.conn;
    function set_conn(v:stdgo._internal.net.Net_Conn.Conn):stdgo._internal.net.Net_Conn.Conn {
        this.conn = v;
        return v;
    }
    public function new(?conn:stdgo._internal.net.Net_Conn.Conn) this = new stdgo._internal.net.http.Http_T_socksConn.T_socksConn(conn);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
