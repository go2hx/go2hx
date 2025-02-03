package stdgo.database.sql;
@:structInit @:using(stdgo.database.sql.Sql.T_driverStmt_static_extension) abstract T_driverStmt(stdgo._internal.database.sql.Sql_T_driverStmt.T_driverStmt) from stdgo._internal.database.sql.Sql_T_driverStmt.T_driverStmt to stdgo._internal.database.sql.Sql_T_driverStmt.T_driverStmt {
    public var locker(get, set) : stdgo._internal.sync.Sync_Locker.Locker;
    function get_locker():stdgo._internal.sync.Sync_Locker.Locker return this.locker;
    function set_locker(v:stdgo._internal.sync.Sync_Locker.Locker):stdgo._internal.sync.Sync_Locker.Locker {
        this.locker = v;
        return v;
    }
    public var _si(get, set) : Stmt;
    function get__si():Stmt return this._si;
    function set__si(v:Stmt):Stmt {
        this._si = v;
        return v;
    }
    public var _closed(get, set) : Bool;
    function get__closed():Bool return this._closed;
    function set__closed(v:Bool):Bool {
        this._closed = v;
        return v;
    }
    public var _closeErr(get, set) : stdgo.Error;
    function get__closeErr():stdgo.Error return this._closeErr;
    function set__closeErr(v:stdgo.Error):stdgo.Error {
        this._closeErr = (v : stdgo.Error);
        return v;
    }
    public function new(?locker:stdgo._internal.sync.Sync_Locker.Locker, ?_si:Stmt, ?_closed:Bool, ?_closeErr:stdgo.Error) this = new stdgo._internal.database.sql.Sql_T_driverStmt.T_driverStmt(locker, _si, _closed, (_closeErr : stdgo.Error));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
