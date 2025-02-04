package stdgo._internal.database.sql;
@:structInit @:using(stdgo._internal.database.sql.Sql_stmt_static_extension.Stmt_static_extension) class Stmt {
    public var _db : stdgo.Ref<stdgo._internal.database.sql.Sql_db.DB> = (null : stdgo.Ref<stdgo._internal.database.sql.Sql_db.DB>);
    public var _query : stdgo.GoString = "";
    public var _stickyErr : stdgo.Error = (null : stdgo.Error);
    public var _closemu : stdgo._internal.sync.Sync_rwmutex.RWMutex = ({} : stdgo._internal.sync.Sync_rwmutex.RWMutex);
    public var _cg : stdgo._internal.database.sql.Sql_t_stmtconngrabber.T_stmtConnGrabber = (null : stdgo._internal.database.sql.Sql_t_stmtconngrabber.T_stmtConnGrabber);
    public var _cgds : stdgo.Ref<stdgo._internal.database.sql.Sql_t_driverstmt.T_driverStmt> = (null : stdgo.Ref<stdgo._internal.database.sql.Sql_t_driverstmt.T_driverStmt>);
    public var _parentStmt : stdgo.Ref<stdgo._internal.database.sql.Sql_stmt.Stmt> = (null : stdgo.Ref<stdgo._internal.database.sql.Sql_stmt.Stmt>);
    public var _mu : stdgo._internal.sync.Sync_mutex.Mutex = ({} : stdgo._internal.sync.Sync_mutex.Mutex);
    public var _closed : Bool = false;
    public var _css : stdgo.Slice<stdgo._internal.database.sql.Sql_t_connstmt.T_connStmt> = (null : stdgo.Slice<stdgo._internal.database.sql.Sql_t_connstmt.T_connStmt>);
    public var _lastNumClosed : stdgo.GoUInt64 = 0;
    public function new(?_db:stdgo.Ref<stdgo._internal.database.sql.Sql_db.DB>, ?_query:stdgo.GoString, ?_stickyErr:stdgo.Error, ?_closemu:stdgo._internal.sync.Sync_rwmutex.RWMutex, ?_cg:stdgo._internal.database.sql.Sql_t_stmtconngrabber.T_stmtConnGrabber, ?_cgds:stdgo.Ref<stdgo._internal.database.sql.Sql_t_driverstmt.T_driverStmt>, ?_parentStmt:stdgo.Ref<stdgo._internal.database.sql.Sql_stmt.Stmt>, ?_mu:stdgo._internal.sync.Sync_mutex.Mutex, ?_closed:Bool, ?_css:stdgo.Slice<stdgo._internal.database.sql.Sql_t_connstmt.T_connStmt>, ?_lastNumClosed:stdgo.GoUInt64) {
        if (_db != null) this._db = _db;
        if (_query != null) this._query = _query;
        if (_stickyErr != null) this._stickyErr = _stickyErr;
        if (_closemu != null) this._closemu = _closemu;
        if (_cg != null) this._cg = _cg;
        if (_cgds != null) this._cgds = _cgds;
        if (_parentStmt != null) this._parentStmt = _parentStmt;
        if (_mu != null) this._mu = _mu;
        if (_closed != null) this._closed = _closed;
        if (_css != null) this._css = _css;
        if (_lastNumClosed != null) this._lastNumClosed = _lastNumClosed;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Stmt(
_db,
_query,
_stickyErr,
_closemu,
_cg,
_cgds,
_parentStmt,
_mu,
_closed,
_css,
_lastNumClosed);
    }
}
