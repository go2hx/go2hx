package stdgo._internal.database.sql;
@:structInit @:using(stdgo._internal.database.sql.Sql_T_driverConn_static_extension.T_driverConn_static_extension) class T_driverConn {
    public var _db : stdgo.Ref<stdgo._internal.database.sql.Sql_DB.DB> = (null : stdgo.Ref<stdgo._internal.database.sql.Sql_DB.DB>);
    public var _createdAt : stdgo._internal.time.Time_Time.Time = ({} : stdgo._internal.time.Time_Time.Time);
    @:embedded
    public var mutex : stdgo._internal.sync.Sync_Mutex.Mutex = ({} : stdgo._internal.sync.Sync_Mutex.Mutex);
    public var _ci : stdgo._internal.database.sql.driver.Driver_Conn.Conn = (null : stdgo._internal.database.sql.driver.Driver_Conn.Conn);
    public var _needReset : Bool = false;
    public var _closed : Bool = false;
    public var _finalClosed : Bool = false;
    public var _openStmt : stdgo.GoMap<stdgo.Ref<stdgo._internal.database.sql.Sql_T_driverStmt.T_driverStmt>, Bool> = (null : stdgo.GoMap<stdgo.Ref<stdgo._internal.database.sql.Sql_T_driverStmt.T_driverStmt>, Bool>);
    public var _inUse : Bool = false;
    public var _returnedAt : stdgo._internal.time.Time_Time.Time = ({} : stdgo._internal.time.Time_Time.Time);
    public var _onPut : stdgo.Slice<() -> Void> = (null : stdgo.Slice<() -> Void>);
    public var _dbmuClosed : Bool = false;
    public function new(?_db:stdgo.Ref<stdgo._internal.database.sql.Sql_DB.DB>, ?_createdAt:stdgo._internal.time.Time_Time.Time, ?mutex:stdgo._internal.sync.Sync_Mutex.Mutex, ?_ci:stdgo._internal.database.sql.driver.Driver_Conn.Conn, ?_needReset:Bool, ?_closed:Bool, ?_finalClosed:Bool, ?_openStmt:stdgo.GoMap<stdgo.Ref<stdgo._internal.database.sql.Sql_T_driverStmt.T_driverStmt>, Bool>, ?_inUse:Bool, ?_returnedAt:stdgo._internal.time.Time_Time.Time, ?_onPut:stdgo.Slice<() -> Void>, ?_dbmuClosed:Bool) {
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
    @:embedded
    public function lock() this.mutex.lock();
    @:embedded
    public function tryLock():Bool return this.mutex.tryLock();
    @:embedded
    public function unlock() this.mutex.unlock();
    @:embedded
    public function _lockSlow() this.mutex._lockSlow();
    @:embedded
    public function _unlockSlow(_r:stdgo.GoInt32) this.mutex._unlockSlow(_r);
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
