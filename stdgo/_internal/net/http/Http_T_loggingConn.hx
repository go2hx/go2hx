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
    @:embedded
    public function localAddr():stdgo._internal.net.Net_Addr.Addr return this.conn.localAddr();
    @:embedded
    public function remoteAddr():stdgo._internal.net.Net_Addr.Addr return this.conn.remoteAddr();
    @:embedded
    public function setDeadline(__0:stdgo._internal.time.Time_Time.Time):stdgo.Error return this.conn.setDeadline(__0);
    @:embedded
    public function setReadDeadline(__0:stdgo._internal.time.Time_Time.Time):stdgo.Error return this.conn.setReadDeadline(__0);
    @:embedded
    public function setWriteDeadline(__0:stdgo._internal.time.Time_Time.Time):stdgo.Error return this.conn.setWriteDeadline(__0);
    public function __copy__() {
        return new T_loggingConn(_name, conn);
    }
}
