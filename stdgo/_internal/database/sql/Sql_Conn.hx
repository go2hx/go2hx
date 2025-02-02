package stdgo._internal.database.sql;
@:structInit @:using(stdgo._internal.database.sql.Sql_Conn_static_extension.Conn_static_extension) class Conn {
    public var _db : stdgo.Ref<stdgo._internal.database.sql.Sql_DB.DB> = (null : stdgo.Ref<stdgo._internal.database.sql.Sql_DB.DB>);
    public var _closemu : stdgo._internal.sync.Sync_RWMutex.RWMutex = ({} : stdgo._internal.sync.Sync_RWMutex.RWMutex);
    public var _dc : stdgo.Ref<stdgo._internal.database.sql.Sql_T_driverConn.T_driverConn> = (null : stdgo.Ref<stdgo._internal.database.sql.Sql_T_driverConn.T_driverConn>);
    public var _done : stdgo._internal.sync.atomic_.Atomic__Bool_.Bool_ = ({} : stdgo._internal.sync.atomic_.Atomic__Bool_.Bool_);
    public var _releaseConnOnce : stdgo._internal.sync.Sync_Once.Once = ({} : stdgo._internal.sync.Sync_Once.Once);
    public var _releaseConnCache : stdgo._internal.database.sql.Sql_T_releaseConn.T_releaseConn = (null : stdgo._internal.database.sql.Sql_T_releaseConn.T_releaseConn);
    public function new(?_db:stdgo.Ref<stdgo._internal.database.sql.Sql_DB.DB>, ?_closemu:stdgo._internal.sync.Sync_RWMutex.RWMutex, ?_dc:stdgo.Ref<stdgo._internal.database.sql.Sql_T_driverConn.T_driverConn>, ?_done:stdgo._internal.sync.atomic_.Atomic__Bool_.Bool_, ?_releaseConnOnce:stdgo._internal.sync.Sync_Once.Once, ?_releaseConnCache:stdgo._internal.database.sql.Sql_T_releaseConn.T_releaseConn) {
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
