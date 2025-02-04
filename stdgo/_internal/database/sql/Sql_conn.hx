package stdgo._internal.database.sql;
@:structInit @:using(stdgo._internal.database.sql.Sql_conn_static_extension.Conn_static_extension) class Conn {
    public var _db : stdgo.Ref<stdgo._internal.database.sql.Sql_db.DB> = (null : stdgo.Ref<stdgo._internal.database.sql.Sql_db.DB>);
    public var _closemu : stdgo._internal.sync.Sync_rwmutex.RWMutex = ({} : stdgo._internal.sync.Sync_rwmutex.RWMutex);
    public var _dc : stdgo.Ref<stdgo._internal.database.sql.Sql_t_driverconn.T_driverConn> = (null : stdgo.Ref<stdgo._internal.database.sql.Sql_t_driverconn.T_driverConn>);
    public var _done : stdgo._internal.sync.atomic_.Atomic__bool_.Bool_ = ({} : stdgo._internal.sync.atomic_.Atomic__bool_.Bool_);
    public var _releaseConnOnce : stdgo._internal.sync.Sync_once.Once = ({} : stdgo._internal.sync.Sync_once.Once);
    public var _releaseConnCache : stdgo._internal.database.sql.Sql_t_releaseconn.T_releaseConn = (null : stdgo._internal.database.sql.Sql_t_releaseconn.T_releaseConn);
    public function new(?_db:stdgo.Ref<stdgo._internal.database.sql.Sql_db.DB>, ?_closemu:stdgo._internal.sync.Sync_rwmutex.RWMutex, ?_dc:stdgo.Ref<stdgo._internal.database.sql.Sql_t_driverconn.T_driverConn>, ?_done:stdgo._internal.sync.atomic_.Atomic__bool_.Bool_, ?_releaseConnOnce:stdgo._internal.sync.Sync_once.Once, ?_releaseConnCache:stdgo._internal.database.sql.Sql_t_releaseconn.T_releaseConn) {
        if (_db != null) this._db = _db;
        if (_closemu != null) this._closemu = _closemu;
        if (_dc != null) this._dc = _dc;
        if (_done != null) this._done = _done;
        if (_releaseConnOnce != null) this._releaseConnOnce = _releaseConnOnce;
        if (_releaseConnCache != null) this._releaseConnCache = _releaseConnCache;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Conn(_db, _closemu, _dc, _done, _releaseConnOnce, _releaseConnCache);
    }
}
