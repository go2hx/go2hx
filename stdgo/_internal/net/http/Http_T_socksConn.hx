package stdgo._internal.net.http;
@:structInit @:using(stdgo._internal.net.http.Http_T_socksConn_static_extension.T_socksConn_static_extension) class T_socksConn {
    @:embedded
    public var conn : stdgo._internal.net.Net_Conn.Conn = (null : stdgo._internal.net.Net_Conn.Conn);
    public var _boundAddr : stdgo._internal.net.Net_Addr.Addr = (null : stdgo._internal.net.Net_Addr.Addr);
    public function new(?conn:stdgo._internal.net.Net_Conn.Conn, ?_boundAddr:stdgo._internal.net.Net_Addr.Addr) {
        if (conn != null) this.conn = conn;
        if (_boundAddr != null) this._boundAddr = _boundAddr;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public var close(get, never) : () -> stdgo.Error;
    @:embedded
    @:embeddededffieldsffun
    public function get_close():() -> stdgo.Error return @:check31 (this.conn ?? throw "null pointer derefrence").close;
    public var localAddr(get, never) : () -> stdgo._internal.net.Net_Addr.Addr;
    @:embedded
    @:embeddededffieldsffun
    public function get_localAddr():() -> stdgo._internal.net.Net_Addr.Addr return @:check31 (this.conn ?? throw "null pointer derefrence").localAddr;
    public var read(get, never) : stdgo.Slice<stdgo.GoUInt8> -> { var _0 : stdgo.GoInt; var _1 : stdgo.Error; };
    @:embedded
    @:embeddededffieldsffun
    public function get_read():stdgo.Slice<stdgo.GoUInt8> -> { var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return @:check31 (this.conn ?? throw "null pointer derefrence").read;
    public var remoteAddr(get, never) : () -> stdgo._internal.net.Net_Addr.Addr;
    @:embedded
    @:embeddededffieldsffun
    public function get_remoteAddr():() -> stdgo._internal.net.Net_Addr.Addr return @:check31 (this.conn ?? throw "null pointer derefrence").remoteAddr;
    public var setDeadline(get, never) : stdgo._internal.time.Time_Time.Time -> stdgo.Error;
    @:embedded
    @:embeddededffieldsffun
    public function get_setDeadline():stdgo._internal.time.Time_Time.Time -> stdgo.Error return @:check31 (this.conn ?? throw "null pointer derefrence").setDeadline;
    public var setReadDeadline(get, never) : stdgo._internal.time.Time_Time.Time -> stdgo.Error;
    @:embedded
    @:embeddededffieldsffun
    public function get_setReadDeadline():stdgo._internal.time.Time_Time.Time -> stdgo.Error return @:check31 (this.conn ?? throw "null pointer derefrence").setReadDeadline;
    public var setWriteDeadline(get, never) : stdgo._internal.time.Time_Time.Time -> stdgo.Error;
    @:embedded
    @:embeddededffieldsffun
    public function get_setWriteDeadline():stdgo._internal.time.Time_Time.Time -> stdgo.Error return @:check31 (this.conn ?? throw "null pointer derefrence").setWriteDeadline;
    public var write(get, never) : stdgo.Slice<stdgo.GoUInt8> -> { var _0 : stdgo.GoInt; var _1 : stdgo.Error; };
    @:embedded
    @:embeddededffieldsffun
    public function get_write():stdgo.Slice<stdgo.GoUInt8> -> { var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return @:check31 (this.conn ?? throw "null pointer derefrence").write;
    public function __copy__() {
        return new T_socksConn(conn, _boundAddr);
    }
}
