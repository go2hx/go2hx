package stdgo.database.sql;
@:structInit @:using(stdgo.database.sql.Sql.T_driverResult_static_extension) abstract T_driverResult(stdgo._internal.database.sql.Sql_T_driverResult.T_driverResult) from stdgo._internal.database.sql.Sql_T_driverResult.T_driverResult to stdgo._internal.database.sql.Sql_T_driverResult.T_driverResult {
    public var locker(get, set) : stdgo._internal.sync.Sync_Locker.Locker;
    function get_locker():stdgo._internal.sync.Sync_Locker.Locker return this.locker;
    function set_locker(v:stdgo._internal.sync.Sync_Locker.Locker):stdgo._internal.sync.Sync_Locker.Locker {
        this.locker = v;
        return v;
    }
    public var _resi(get, set) : Result;
    function get__resi():Result return this._resi;
    function set__resi(v:Result):Result {
        this._resi = v;
        return v;
    }
    public function new(?locker:stdgo._internal.sync.Sync_Locker.Locker, ?_resi:Result) this = new stdgo._internal.database.sql.Sql_T_driverResult.T_driverResult(locker, _resi);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
