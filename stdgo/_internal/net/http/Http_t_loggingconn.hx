package stdgo._internal.net.http;
@:structInit @:using(stdgo._internal.net.http.Http_t_loggingconn_static_extension.T_loggingConn_static_extension) class T_loggingConn {
    @:embedded
    public var conn : stdgo._internal.net.Net_conn.Conn = (null : stdgo._internal.net.Net_conn.Conn);
    public function new(?conn:stdgo._internal.net.Net_conn.Conn) {
        if (conn != null) this.conn = conn;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public var localAddr(get, never) : () -> stdgo._internal.net.Net_addr.Addr;
    @:embedded
    @:embeddededffieldsffun
    public function get_localAddr():() -> stdgo._internal.net.Net_addr.Addr return @:check31 (this.new ?? throw "null pointer dereference").localAddr;
    public var remoteAddr(get, never) : () -> stdgo._internal.net.Net_addr.Addr;
    @:embedded
    @:embeddededffieldsffun
    public function get_remoteAddr():() -> stdgo._internal.net.Net_addr.Addr return @:check31 (this.new ?? throw "null pointer dereference").remoteAddr;
    public var setDeadline(get, never) : stdgo._internal.time.Time_time.Time -> stdgo.Error;
    @:embedded
    @:embeddededffieldsffun
    public function get_setDeadline():stdgo._internal.time.Time_time.Time -> stdgo.Error return @:check31 (this.new ?? throw "null pointer dereference").setDeadline;
    public var setReadDeadline(get, never) : stdgo._internal.time.Time_time.Time -> stdgo.Error;
    @:embedded
    @:embeddededffieldsffun
    public function get_setReadDeadline():stdgo._internal.time.Time_time.Time -> stdgo.Error return @:check31 (this.new ?? throw "null pointer dereference").setReadDeadline;
    public var setWriteDeadline(get, never) : stdgo._internal.time.Time_time.Time -> stdgo.Error;
    @:embedded
    @:embeddededffieldsffun
    public function get_setWriteDeadline():stdgo._internal.time.Time_time.Time -> stdgo.Error return @:check31 (this.new ?? throw "null pointer dereference").setWriteDeadline;
    public function __copy__() {
        return new T_loggingConn(conn);
    }
}
