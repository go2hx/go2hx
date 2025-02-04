package stdgo._internal.database.sql;
@:structInit @:using(stdgo._internal.database.sql.Sql_t_driverstmt_static_extension.T_driverStmt_static_extension) class T_driverStmt {
    @:embedded
    public var locker : stdgo._internal.sync.Sync_locker.Locker = (null : stdgo._internal.sync.Sync_locker.Locker);
    public var _si : stdgo._internal.database.sql.driver.Driver_stmt.Stmt = (null : stdgo._internal.database.sql.driver.Driver_stmt.Stmt);
    public var _closed : Bool = false;
    public var _closeErr : stdgo.Error = (null : stdgo.Error);
    public function new(?locker:stdgo._internal.sync.Sync_locker.Locker, ?_si:stdgo._internal.database.sql.driver.Driver_stmt.Stmt, ?_closed:Bool, ?_closeErr:stdgo.Error) {
        if (locker != null) this.locker = locker;
        if (_si != null) this._si = _si;
        if (_closed != null) this._closed = _closed;
        if (_closeErr != null) this._closeErr = _closeErr;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public var lock(get, never) : () -> Void;
    @:embedded
    @:embeddededffieldsffun
    public function get_lock():() -> Void return @:check31 (this.locker ?? throw "null pointer dereference").lock;
    public var unlock(get, never) : () -> Void;
    @:embedded
    @:embeddededffieldsffun
    public function get_unlock():() -> Void return @:check31 (this.locker ?? throw "null pointer dereference").unlock;
    public function __copy__() {
        return new T_driverStmt(locker, _si, _closed, _closeErr);
    }
}
