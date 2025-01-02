package stdgo._internal.net.http;
@:structInit @:using(stdgo._internal.net.http.Http_T_loggingConn_static_extension.T_loggingConn_static_extension) class T_loggingConn {
    public var _name : stdgo.GoString = "";
    @:embedded
    public var conn : stdgo._internal.net.Net_Conn.Conn = (null : stdgo._internal.net.Net_Conn.Conn);
    public function new(?_name:stdgo.GoString, ?conn:stdgo._internal.net.Net_Conn.Conn) {
        if (_name != null) this._name = _name;
        if (conn != null) this.conn = conn;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public var localAddr(get, never) : () -> stdgo._internal.net.Net_Addr.Addr;
    @:embedded
    @:embeddededffieldsffun
    public function get_localAddr():() -> stdgo._internal.net.Net_Addr.Addr return @:check3 (this.conn ?? throw "null pointer derefrence").localAddr;
    public var remoteAddr(get, never) : () -> stdgo._internal.net.Net_Addr.Addr;
    @:embedded
    @:embeddededffieldsffun
    public function get_remoteAddr():() -> stdgo._internal.net.Net_Addr.Addr return @:check3 (this.conn ?? throw "null pointer derefrence").remoteAddr;
    public var setDeadline(get, never) : stdgo._internal.time.Time_Time.Time -> stdgo.Error;
    @:embedded
    @:embeddededffieldsffun
    public function get_setDeadline():stdgo._internal.time.Time_Time.Time -> stdgo.Error return @:check3 (this.conn ?? throw "null pointer derefrence").setDeadline;
    public var setReadDeadline(get, never) : stdgo._internal.time.Time_Time.Time -> stdgo.Error;
    @:embedded
    @:embeddededffieldsffun
    public function get_setReadDeadline():stdgo._internal.time.Time_Time.Time -> stdgo.Error return @:check3 (this.conn ?? throw "null pointer derefrence").setReadDeadline;
    public var setWriteDeadline(get, never) : stdgo._internal.time.Time_Time.Time -> stdgo.Error;
    @:embedded
    @:embeddededffieldsffun
    public function get_setWriteDeadline():stdgo._internal.time.Time_Time.Time -> stdgo.Error return @:check3 (this.conn ?? throw "null pointer derefrence").setWriteDeadline;
    public function __copy__() {
        return new T_loggingConn(_name, conn);
    }
}
