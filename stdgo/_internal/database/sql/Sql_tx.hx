package stdgo._internal.database.sql;
@:structInit @:using(stdgo._internal.database.sql.Sql_tx_static_extension.Tx_static_extension) class Tx {
    public var _db : stdgo.Ref<stdgo._internal.database.sql.Sql_db.DB> = (null : stdgo.Ref<stdgo._internal.database.sql.Sql_db.DB>);
    public var _closemu : stdgo._internal.sync.Sync_rwmutex.RWMutex = ({} : stdgo._internal.sync.Sync_rwmutex.RWMutex);
    public var _dc : stdgo.Ref<stdgo._internal.database.sql.Sql_t_driverconn.T_driverConn> = (null : stdgo.Ref<stdgo._internal.database.sql.Sql_t_driverconn.T_driverConn>);
    public var _txi : stdgo._internal.database.sql.driver.Driver_tx.Tx = (null : stdgo._internal.database.sql.driver.Driver_tx.Tx);
    public var _releaseConn : stdgo.Error -> Void = null;
    public var _done : stdgo._internal.sync.atomic_.Atomic__bool_.Bool_ = ({} : stdgo._internal.sync.atomic_.Atomic__bool_.Bool_);
    public var _keepConnOnRollback : Bool = false;
    public var _stmts : { var mutex : stdgo._internal.sync.Sync_mutex.Mutex; var _v : stdgo.Slice<stdgo.Ref<stdgo._internal.database.sql.Sql_stmt.Stmt>>; } = { mutex : ({} : stdgo._internal.sync.Sync_mutex.Mutex), _v : (null : stdgo.Slice<stdgo.Ref<stdgo._internal.database.sql.Sql_stmt.Stmt>>) };
    public var _cancel : () -> Void = null;
    public var _ctx : stdgo._internal.context.Context_context.Context = (null : stdgo._internal.context.Context_context.Context);
    public function new(?_db:stdgo.Ref<stdgo._internal.database.sql.Sql_db.DB>, ?_closemu:stdgo._internal.sync.Sync_rwmutex.RWMutex, ?_dc:stdgo.Ref<stdgo._internal.database.sql.Sql_t_driverconn.T_driverConn>, ?_txi:stdgo._internal.database.sql.driver.Driver_tx.Tx, ?_releaseConn:stdgo.Error -> Void, ?_done:stdgo._internal.sync.atomic_.Atomic__bool_.Bool_, ?_keepConnOnRollback:Bool, ?_stmts:{ var mutex : stdgo._internal.sync.Sync_mutex.Mutex; var _v : stdgo.Slice<stdgo.Ref<stdgo._internal.database.sql.Sql_stmt.Stmt>>; }, ?_cancel:() -> Void, ?_ctx:stdgo._internal.context.Context_context.Context) {
        if (_db != null) this._db = _db;
        if (_closemu != null) this._closemu = _closemu;
        if (_dc != null) this._dc = _dc;
        if (_txi != null) this._txi = _txi;
        if (_releaseConn != null) this._releaseConn = _releaseConn;
        if (_done != null) this._done = _done;
        if (_keepConnOnRollback != null) this._keepConnOnRollback = _keepConnOnRollback;
        if (_stmts != null) this._stmts = _stmts;
        if (_cancel != null) this._cancel = _cancel;
        if (_ctx != null) this._ctx = _ctx;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Tx(_db, _closemu, _dc, _txi, _releaseConn, _done, _keepConnOnRollback, _stmts, _cancel, _ctx);
    }
}
