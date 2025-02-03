package stdgo.log.syslog;
@:structInit @:using(stdgo.log.syslog.Syslog.Writer_static_extension) abstract Writer(stdgo._internal.log.syslog.Syslog_Writer.Writer) from stdgo._internal.log.syslog.Syslog_Writer.Writer to stdgo._internal.log.syslog.Syslog_Writer.Writer {
    public var _priority(get, set) : Priority;
    function get__priority():Priority return this._priority;
    function set__priority(v:Priority):Priority {
        this._priority = v;
        return v;
    }
    public var _tag(get, set) : String;
    function get__tag():String return this._tag;
    function set__tag(v:String):String {
        this._tag = (v : stdgo.GoString);
        return v;
    }
    public var _hostname(get, set) : String;
    function get__hostname():String return this._hostname;
    function set__hostname(v:String):String {
        this._hostname = (v : stdgo.GoString);
        return v;
    }
    public var _network(get, set) : String;
    function get__network():String return this._network;
    function set__network(v:String):String {
        this._network = (v : stdgo.GoString);
        return v;
    }
    public var _raddr(get, set) : String;
    function get__raddr():String return this._raddr;
    function set__raddr(v:String):String {
        this._raddr = (v : stdgo.GoString);
        return v;
    }
    public var _mu(get, set) : stdgo._internal.sync.Sync_Mutex.Mutex;
    function get__mu():stdgo._internal.sync.Sync_Mutex.Mutex return this._mu;
    function set__mu(v:stdgo._internal.sync.Sync_Mutex.Mutex):stdgo._internal.sync.Sync_Mutex.Mutex {
        this._mu = v;
        return v;
    }
    public var _conn(get, set) : T_serverConn;
    function get__conn():T_serverConn return this._conn;
    function set__conn(v:T_serverConn):T_serverConn {
        this._conn = v;
        return v;
    }
    public function new(?_priority:Priority, ?_tag:String, ?_hostname:String, ?_network:String, ?_raddr:String, ?_mu:stdgo._internal.sync.Sync_Mutex.Mutex, ?_conn:T_serverConn) this = new stdgo._internal.log.syslog.Syslog_Writer.Writer(_priority, (_tag : stdgo.GoString), (_hostname : stdgo.GoString), (_network : stdgo.GoString), (_raddr : stdgo.GoString), _mu, _conn);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
