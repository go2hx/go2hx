package stdgo._internal.database.sql;
@:structInit @:using(stdgo._internal.database.sql.Sql_T_driverResult_static_extension.T_driverResult_static_extension) class T_driverResult {
    @:embedded
    public var locker : stdgo._internal.sync.Sync_Locker.Locker = (null : stdgo._internal.sync.Sync_Locker.Locker);
    public var _resi : stdgo._internal.database.sql.driver.Driver_Result.Result = (null : stdgo._internal.database.sql.driver.Driver_Result.Result);
    public function new(?locker:stdgo._internal.sync.Sync_Locker.Locker, ?_resi:stdgo._internal.database.sql.driver.Driver_Result.Result) {
        if (locker != null) this.locker = locker;
        if (_resi != null) this._resi = _resi;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    @:embedded
    public function lock() this.locker.lock();
    @:embedded
    public function unlock() this.locker.unlock();
    public function __copy__() {
        return new T_driverResult(locker, _resi);
    }
}
