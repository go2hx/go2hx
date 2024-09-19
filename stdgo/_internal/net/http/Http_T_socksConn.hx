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
    @:embedded
    public function close():stdgo.Error return this.conn.close();
    @:embedded
    public function localAddr():stdgo._internal.net.Net_Addr.Addr return this.conn.localAddr();
    @:embedded
    public function read(__0:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return this.conn.read(__0);
    @:embedded
    public function remoteAddr():stdgo._internal.net.Net_Addr.Addr return this.conn.remoteAddr();
    @:embedded
    public function setDeadline(__0:stdgo._internal.time.Time_Time.Time):stdgo.Error return this.conn.setDeadline(__0);
    @:embedded
    public function setReadDeadline(__0:stdgo._internal.time.Time_Time.Time):stdgo.Error return this.conn.setReadDeadline(__0);
    @:embedded
    public function setWriteDeadline(__0:stdgo._internal.time.Time_Time.Time):stdgo.Error return this.conn.setWriteDeadline(__0);
    @:embedded
    public function write(__0:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return this.conn.write(__0);
    public function __copy__() {
        return new T_socksConn(conn, _boundAddr);
    }
}
