package stdgo._internal.net.http;
@:structInit @:using(stdgo._internal.net.http.Http_t_socksconn_static_extension.T_socksConn_static_extension) class T_socksConn {
    @:embedded
    public var conn : stdgo._internal.net.Net_conn.Conn = (null : stdgo._internal.net.Net_conn.Conn);
    public function new(?conn:stdgo._internal.net.Net_conn.Conn) {
        if (conn != null) this.conn = conn;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public var close(get, never) : () -> stdgo.Error;
    @:embedded
    @:embeddededffieldsffun
    public function get_close():() -> stdgo.Error return @:check31 (this.conn ?? throw "null pointer dereference").close;
    public var localAddr(get, never) : () -> stdgo._internal.net.Net_addr.Addr;
    @:embedded
    @:embeddededffieldsffun
    public function get_localAddr():() -> stdgo._internal.net.Net_addr.Addr return @:check31 (this.conn ?? throw "null pointer dereference").localAddr;
    public var read(get, never) : stdgo.Slice<stdgo.GoUInt8> -> { var _0 : stdgo.GoInt; var _1 : stdgo.Error; };
    @:embedded
    @:embeddededffieldsffun
    public function get_read():stdgo.Slice<stdgo.GoUInt8> -> { var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return @:check31 (this.conn ?? throw "null pointer dereference").read;
    public var remoteAddr(get, never) : () -> stdgo._internal.net.Net_addr.Addr;
    @:embedded
    @:embeddededffieldsffun
    public function get_remoteAddr():() -> stdgo._internal.net.Net_addr.Addr return @:check31 (this.conn ?? throw "null pointer dereference").remoteAddr;
    public var setDeadline(get, never) : stdgo._internal.time.Time_time.Time -> stdgo.Error;
    @:embedded
    @:embeddededffieldsffun
    public function get_setDeadline():stdgo._internal.time.Time_time.Time -> stdgo.Error return @:check31 (this.conn ?? throw "null pointer dereference").setDeadline;
    public var setReadDeadline(get, never) : stdgo._internal.time.Time_time.Time -> stdgo.Error;
    @:embedded
    @:embeddededffieldsffun
    public function get_setReadDeadline():stdgo._internal.time.Time_time.Time -> stdgo.Error return @:check31 (this.conn ?? throw "null pointer dereference").setReadDeadline;
    public var setWriteDeadline(get, never) : stdgo._internal.time.Time_time.Time -> stdgo.Error;
    @:embedded
    @:embeddededffieldsffun
    public function get_setWriteDeadline():stdgo._internal.time.Time_time.Time -> stdgo.Error return @:check31 (this.conn ?? throw "null pointer dereference").setWriteDeadline;
    public var write(get, never) : stdgo.Slice<stdgo.GoUInt8> -> { var _0 : stdgo.GoInt; var _1 : stdgo.Error; };
    @:embedded
    @:embeddededffieldsffun
    public function get_write():stdgo.Slice<stdgo.GoUInt8> -> { var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return @:check31 (this.conn ?? throw "null pointer dereference").write;
    public function __copy__() {
        return new T_socksConn(conn);
    }
}
