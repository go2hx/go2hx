package stdgo._internal.log.syslog;
@:structInit @:using(stdgo._internal.log.syslog.Syslog_t_netconn_static_extension.T_netConn_static_extension) class T_netConn {
    public var _local : Bool = false;
    public var _conn : stdgo._internal.net.Net_conn.Conn = (null : stdgo._internal.net.Net_conn.Conn);
    public function new(?_local:Bool, ?_conn:stdgo._internal.net.Net_conn.Conn) {
        if (_local != null) this._local = _local;
        if (_conn != null) this._conn = _conn;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_netConn(_local, _conn);
    }
}
