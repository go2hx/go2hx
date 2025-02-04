package stdgo._internal.database.sql;
@:structInit @:using(stdgo._internal.database.sql.Sql_t_driverconn_static_extension.T_driverConn_static_extension) class T_driverConn {
    public var _db : stdgo.Ref<stdgo._internal.database.sql.Sql_db.DB> = (null : stdgo.Ref<stdgo._internal.database.sql.Sql_db.DB>);
    public var _createdAt : stdgo._internal.time.Time_time.Time = ({} : stdgo._internal.time.Time_time.Time);
    @:embedded
    public var mutex : stdgo._internal.sync.Sync_mutex.Mutex = ({} : stdgo._internal.sync.Sync_mutex.Mutex);
    public var _ci : stdgo._internal.database.sql.driver.Driver_conn.Conn = (null : stdgo._internal.database.sql.driver.Driver_conn.Conn);
    public var _needReset : Bool = false;
    public var _closed : Bool = false;
    public var _finalClosed : Bool = false;
    public var _openStmt : stdgo.GoMap<stdgo.Ref<stdgo._internal.database.sql.Sql_t_driverstmt.T_driverStmt>, Bool> = (null : stdgo.GoMap<stdgo.Ref<stdgo._internal.database.sql.Sql_t_driverstmt.T_driverStmt>, Bool>);
    public var _inUse : Bool = false;
    public var _returnedAt : stdgo._internal.time.Time_time.Time = ({} : stdgo._internal.time.Time_time.Time);
    public var _onPut : stdgo.Slice<() -> Void> = (null : stdgo.Slice<() -> Void>);
    public var _dbmuClosed : Bool = false;
    public function new(?_db:stdgo.Ref<stdgo._internal.database.sql.Sql_db.DB>, ?_createdAt:stdgo._internal.time.Time_time.Time, ?mutex:stdgo._internal.sync.Sync_mutex.Mutex, ?_ci:stdgo._internal.database.sql.driver.Driver_conn.Conn, ?_needReset:Bool, ?_closed:Bool, ?_finalClosed:Bool, ?_openStmt:stdgo.GoMap<stdgo.Ref<stdgo._internal.database.sql.Sql_t_driverstmt.T_driverStmt>, Bool>, ?_inUse:Bool, ?_returnedAt:stdgo._internal.time.Time_time.Time, ?_onPut:stdgo.Slice<() -> Void>, ?_dbmuClosed:Bool) {
        if (_db != null) this._db = _db;
        if (_createdAt != null) this._createdAt = _createdAt;
        if (mutex != null) this.mutex = mutex;
        if (_ci != null) this._ci = _ci;
        if (_needReset != null) this._needReset = _needReset;
        if (_closed != null) this._closed = _closed;
        if (_finalClosed != null) this._finalClosed = _finalClosed;
        if (_openStmt != null) this._openStmt = _openStmt;
        if (_inUse != null) this._inUse = _inUse;
        if (_returnedAt != null) this._returnedAt = _returnedAt;
        if (_onPut != null) this._onPut = _onPut;
        if (_dbmuClosed != null) this._dbmuClosed = _dbmuClosed;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public var lock(get, never) : () -> Void;
    @:embedded
    @:embeddededffieldsffun
    public function get_lock():() -> Void return @:check32 this.mutex.lock;
    public var tryLock(get, never) : () -> Bool;
    @:embedded
    @:embeddededffieldsffun
    public function get_tryLock():() -> Bool return @:check32 this.mutex.tryLock;
    public var unlock(get, never) : () -> Void;
    @:embedded
    @:embeddededffieldsffun
    public function get_unlock():() -> Void return @:check32 this.mutex.unlock;
    public var _lockSlow(get, never) : () -> Void;
    @:embedded
    @:embeddededffieldsffun
    public function get__lockSlow():() -> Void return @:check32 this.mutex._lockSlow;
    public var _unlockSlow(get, never) : stdgo.GoInt32 -> Void;
    @:embedded
    @:embeddededffieldsffun
    public function get__unlockSlow():stdgo.GoInt32 -> Void return @:check32 this.mutex._unlockSlow;
    public function __copy__() {
        return new T_driverConn(
_db,
_createdAt,
mutex,
_ci,
_needReset,
_closed,
_finalClosed,
_openStmt,
_inUse,
_returnedAt,
_onPut,
_dbmuClosed);
    }
}
