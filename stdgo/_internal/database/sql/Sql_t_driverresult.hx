package stdgo._internal.database.sql;
@:structInit @:using(stdgo._internal.database.sql.Sql_t_driverresult_static_extension.T_driverResult_static_extension) class T_driverResult {
    @:embedded
    public var locker : stdgo._internal.sync.Sync_locker.Locker = (null : stdgo._internal.sync.Sync_locker.Locker);
    public var _resi : stdgo._internal.database.sql.driver.Driver_result.Result = (null : stdgo._internal.database.sql.driver.Driver_result.Result);
    public function new(?locker:stdgo._internal.sync.Sync_locker.Locker, ?_resi:stdgo._internal.database.sql.driver.Driver_result.Result) {
        if (locker != null) this.locker = locker;
        if (_resi != null) this._resi = _resi;
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
        return new T_driverResult(locker, _resi);
    }
}
