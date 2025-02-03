package stdgo.database.sql;
@:structInit @:using(stdgo.database.sql.Sql.Conn_static_extension) abstract Conn(stdgo._internal.database.sql.Sql_Conn.Conn) from stdgo._internal.database.sql.Sql_Conn.Conn to stdgo._internal.database.sql.Sql_Conn.Conn {
    public var _db(get, set) : DB;
    function get__db():DB return this._db;
    function set__db(v:DB):DB {
        this._db = (v : stdgo.Ref<stdgo._internal.database.sql.Sql_DB.DB>);
        return v;
    }
    public var _closemu(get, set) : stdgo._internal.sync.Sync_RWMutex.RWMutex;
    function get__closemu():stdgo._internal.sync.Sync_RWMutex.RWMutex return this._closemu;
    function set__closemu(v:stdgo._internal.sync.Sync_RWMutex.RWMutex):stdgo._internal.sync.Sync_RWMutex.RWMutex {
        this._closemu = v;
        return v;
    }
    public var _dc(get, set) : T_driverConn;
    function get__dc():T_driverConn return this._dc;
    function set__dc(v:T_driverConn):T_driverConn {
        this._dc = (v : stdgo.Ref<stdgo._internal.database.sql.Sql_T_driverConn.T_driverConn>);
        return v;
    }
    public var _done(get, set) : stdgo._internal.sync.atomic_.Atomic__Bool_.Bool_;
    function get__done():stdgo._internal.sync.atomic_.Atomic__Bool_.Bool_ return this._done;
    function set__done(v:stdgo._internal.sync.atomic_.Atomic__Bool_.Bool_):stdgo._internal.sync.atomic_.Atomic__Bool_.Bool_ {
        this._done = v;
        return v;
    }
    public var _releaseConnOnce(get, set) : stdgo._internal.sync.Sync_Once.Once;
    function get__releaseConnOnce():stdgo._internal.sync.Sync_Once.Once return this._releaseConnOnce;
    function set__releaseConnOnce(v:stdgo._internal.sync.Sync_Once.Once):stdgo._internal.sync.Sync_Once.Once {
        this._releaseConnOnce = v;
        return v;
    }
    public var _releaseConnCache(get, set) : T_releaseConn;
    function get__releaseConnCache():T_releaseConn return this._releaseConnCache;
    function set__releaseConnCache(v:T_releaseConn):T_releaseConn {
        this._releaseConnCache = v;
        return v;
    }
    public function new(?_db:DB, ?_closemu:stdgo._internal.sync.Sync_RWMutex.RWMutex, ?_dc:T_driverConn, ?_done:stdgo._internal.sync.atomic_.Atomic__Bool_.Bool_, ?_releaseConnOnce:stdgo._internal.sync.Sync_Once.Once, ?_releaseConnCache:T_releaseConn) this = new stdgo._internal.database.sql.Sql_Conn.Conn((_db : stdgo.Ref<stdgo._internal.database.sql.Sql_DB.DB>), _closemu, (_dc : stdgo.Ref<stdgo._internal.database.sql.Sql_T_driverConn.T_driverConn>), _done, _releaseConnOnce, _releaseConnCache);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
