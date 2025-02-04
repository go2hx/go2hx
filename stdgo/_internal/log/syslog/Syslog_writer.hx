package stdgo._internal.log.syslog;
@:structInit @:using(stdgo._internal.log.syslog.Syslog_writer_static_extension.Writer_static_extension) class Writer {
    public var _priority : stdgo._internal.log.syslog.Syslog_priority.Priority = ((0 : stdgo.GoInt) : stdgo._internal.log.syslog.Syslog_priority.Priority);
    public var _tag : stdgo.GoString = "";
    public var _hostname : stdgo.GoString = "";
    public var _network : stdgo.GoString = "";
    public var _raddr : stdgo.GoString = "";
    public var _mu : stdgo._internal.sync.Sync_mutex.Mutex = ({} : stdgo._internal.sync.Sync_mutex.Mutex);
    public var _conn : stdgo._internal.log.syslog.Syslog_t_serverconn.T_serverConn = (null : stdgo._internal.log.syslog.Syslog_t_serverconn.T_serverConn);
    public function new(?_priority:stdgo._internal.log.syslog.Syslog_priority.Priority, ?_tag:stdgo.GoString, ?_hostname:stdgo.GoString, ?_network:stdgo.GoString, ?_raddr:stdgo.GoString, ?_mu:stdgo._internal.sync.Sync_mutex.Mutex, ?_conn:stdgo._internal.log.syslog.Syslog_t_serverconn.T_serverConn) {
        if (_priority != null) this._priority = _priority;
        if (_tag != null) this._tag = _tag;
        if (_hostname != null) this._hostname = _hostname;
        if (_network != null) this._network = _network;
        if (_raddr != null) this._raddr = _raddr;
        if (_mu != null) this._mu = _mu;
        if (_conn != null) this._conn = _conn;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Writer(_priority, _tag, _hostname, _network, _raddr, _mu, _conn);
    }
}
