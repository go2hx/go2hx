package stdgo._internal.database.sql;
@:structInit @:using(stdgo._internal.database.sql.Sql_T_driverStmt_static_extension.T_driverStmt_static_extension) class T_driverStmt {
    @:embedded
    public var locker : stdgo._internal.sync.Sync_Locker.Locker = (null : stdgo._internal.sync.Sync_Locker.Locker);
    public var _si : stdgo._internal.database.sql.driver.Driver_Stmt.Stmt = (null : stdgo._internal.database.sql.driver.Driver_Stmt.Stmt);
    public var _closed : Bool = false;
    public var _closeErr : stdgo.Error = (null : stdgo.Error);
    public function new(?locker:stdgo._internal.sync.Sync_Locker.Locker, ?_si:stdgo._internal.database.sql.driver.Driver_Stmt.Stmt, ?_closed:Bool, ?_closeErr:stdgo.Error) {
        if (locker != null) this.locker = locker;
        if (_si != null) this._si = _si;
        if (_closed != null) this._closed = _closed;
        if (_closeErr != null) this._closeErr = _closeErr;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    @:embedded
    public function lock() this.locker.lock();
    @:embedded
    public function unlock() this.locker.unlock();
    public function __copy__() {
        return new T_driverStmt(locker, _si, _closed, _closeErr);
    }
}
