package stdgo.database.sql;
@:structInit @:using(stdgo.database.sql.Sql.Stmt_static_extension) abstract Stmt(stdgo._internal.database.sql.Sql_Stmt.Stmt) from stdgo._internal.database.sql.Sql_Stmt.Stmt to stdgo._internal.database.sql.Sql_Stmt.Stmt {
    public var _db(get, set) : DB;
    function get__db():DB return this._db;
    function set__db(v:DB):DB {
        this._db = (v : stdgo.Ref<stdgo._internal.database.sql.Sql_DB.DB>);
        return v;
    }
    public var _query(get, set) : String;
    function get__query():String return this._query;
    function set__query(v:String):String {
        this._query = (v : stdgo.GoString);
        return v;
    }
    public var _stickyErr(get, set) : stdgo.Error;
    function get__stickyErr():stdgo.Error return this._stickyErr;
    function set__stickyErr(v:stdgo.Error):stdgo.Error {
        this._stickyErr = (v : stdgo.Error);
        return v;
    }
    public var _closemu(get, set) : stdgo._internal.sync.Sync_RWMutex.RWMutex;
    function get__closemu():stdgo._internal.sync.Sync_RWMutex.RWMutex return this._closemu;
    function set__closemu(v:stdgo._internal.sync.Sync_RWMutex.RWMutex):stdgo._internal.sync.Sync_RWMutex.RWMutex {
        this._closemu = v;
        return v;
    }
    public var _cg(get, set) : T_stmtConnGrabber;
    function get__cg():T_stmtConnGrabber return this._cg;
    function set__cg(v:T_stmtConnGrabber):T_stmtConnGrabber {
        this._cg = v;
        return v;
    }
    public var _cgds(get, set) : T_driverStmt;
    function get__cgds():T_driverStmt return this._cgds;
    function set__cgds(v:T_driverStmt):T_driverStmt {
        this._cgds = (v : stdgo.Ref<stdgo._internal.database.sql.Sql_T_driverStmt.T_driverStmt>);
        return v;
    }
    public var _parentStmt(get, set) : Stmt;
    function get__parentStmt():Stmt return this._parentStmt;
    function set__parentStmt(v:Stmt):Stmt {
        this._parentStmt = (v : stdgo.Ref<stdgo._internal.database.sql.Sql_Stmt.Stmt>);
        return v;
    }
    public var _mu(get, set) : stdgo._internal.sync.Sync_Mutex.Mutex;
    function get__mu():stdgo._internal.sync.Sync_Mutex.Mutex return this._mu;
    function set__mu(v:stdgo._internal.sync.Sync_Mutex.Mutex):stdgo._internal.sync.Sync_Mutex.Mutex {
        this._mu = v;
        return v;
    }
    public var _closed(get, set) : Bool;
    function get__closed():Bool return this._closed;
    function set__closed(v:Bool):Bool {
        this._closed = v;
        return v;
    }
    public var _css(get, set) : Array<T_connStmt>;
    function get__css():Array<T_connStmt> return [for (i in this._css) i];
    function set__css(v:Array<T_connStmt>):Array<T_connStmt> {
        this._css = ([for (i in v) i] : stdgo.Slice<stdgo._internal.database.sql.Sql_T_connStmt.T_connStmt>);
        return v;
    }
    public var _lastNumClosed(get, set) : haxe.UInt64;
    function get__lastNumClosed():haxe.UInt64 return this._lastNumClosed;
    function set__lastNumClosed(v:haxe.UInt64):haxe.UInt64 {
        this._lastNumClosed = (v : stdgo.GoUInt64);
        return v;
    }
    public function new(?_db:DB, ?_query:String, ?_stickyErr:stdgo.Error, ?_closemu:stdgo._internal.sync.Sync_RWMutex.RWMutex, ?_cg:T_stmtConnGrabber, ?_cgds:T_driverStmt, ?_parentStmt:Stmt, ?_mu:stdgo._internal.sync.Sync_Mutex.Mutex, ?_closed:Bool, ?_css:Array<T_connStmt>, ?_lastNumClosed:haxe.UInt64) this = new stdgo._internal.database.sql.Sql_Stmt.Stmt(
(_db : stdgo.Ref<stdgo._internal.database.sql.Sql_DB.DB>),
(_query : stdgo.GoString),
(_stickyErr : stdgo.Error),
_closemu,
_cg,
(_cgds : stdgo.Ref<stdgo._internal.database.sql.Sql_T_driverStmt.T_driverStmt>),
(_parentStmt : stdgo.Ref<stdgo._internal.database.sql.Sql_Stmt.Stmt>),
_mu,
_closed,
([for (i in _css) i] : stdgo.Slice<stdgo._internal.database.sql.Sql_T_connStmt.T_connStmt>),
(_lastNumClosed : stdgo.GoUInt64));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
