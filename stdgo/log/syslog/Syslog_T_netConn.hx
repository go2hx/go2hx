package stdgo.log.syslog;
@:structInit @:using(stdgo.log.syslog.Syslog.T_netConn_static_extension) abstract T_netConn(stdgo._internal.log.syslog.Syslog_T_netConn.T_netConn) from stdgo._internal.log.syslog.Syslog_T_netConn.T_netConn to stdgo._internal.log.syslog.Syslog_T_netConn.T_netConn {
    public var _local(get, set) : Bool;
    function get__local():Bool return this._local;
    function set__local(v:Bool):Bool {
        this._local = v;
        return v;
    }
    public var _conn(get, set) : stdgo._internal.net.Net_Conn.Conn;
    function get__conn():stdgo._internal.net.Net_Conn.Conn return this._conn;
    function set__conn(v:stdgo._internal.net.Net_Conn.Conn):stdgo._internal.net.Net_Conn.Conn {
        this._conn = v;
        return v;
    }
    public function new(?_local:Bool, ?_conn:stdgo._internal.net.Net_Conn.Conn) this = new stdgo._internal.log.syslog.Syslog_T_netConn.T_netConn(_local, _conn);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
