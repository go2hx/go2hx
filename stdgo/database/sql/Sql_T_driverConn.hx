package stdgo.database.sql;
@:structInit @:using(stdgo.database.sql.Sql.T_driverConn_static_extension) abstract T_driverConn(stdgo._internal.database.sql.Sql_T_driverConn.T_driverConn) from stdgo._internal.database.sql.Sql_T_driverConn.T_driverConn to stdgo._internal.database.sql.Sql_T_driverConn.T_driverConn {
    public var _db(get, set) : DB;
    function get__db():DB return this._db;
    function set__db(v:DB):DB {
        this._db = (v : stdgo.Ref<stdgo._internal.database.sql.Sql_DB.DB>);
        return v;
    }
    public var _createdAt(get, set) : stdgo._internal.time.Time_Time.Time;
    function get__createdAt():stdgo._internal.time.Time_Time.Time return this._createdAt;
    function set__createdAt(v:stdgo._internal.time.Time_Time.Time):stdgo._internal.time.Time_Time.Time {
        this._createdAt = v;
        return v;
    }
    public var mutex(get, set) : stdgo._internal.sync.Sync_Mutex.Mutex;
    function get_mutex():stdgo._internal.sync.Sync_Mutex.Mutex return this.mutex;
    function set_mutex(v:stdgo._internal.sync.Sync_Mutex.Mutex):stdgo._internal.sync.Sync_Mutex.Mutex {
        this.mutex = v;
        return v;
    }
    public var _ci(get, set) : Conn;
    function get__ci():Conn return this._ci;
    function set__ci(v:Conn):Conn {
        this._ci = v;
        return v;
    }
    public var _needReset(get, set) : Bool;
    function get__needReset():Bool return this._needReset;
    function set__needReset(v:Bool):Bool {
        this._needReset = v;
        return v;
    }
    public var _closed(get, set) : Bool;
    function get__closed():Bool return this._closed;
    function set__closed(v:Bool):Bool {
        this._closed = v;
        return v;
    }
    public var _finalClosed(get, set) : Bool;
    function get__finalClosed():Bool return this._finalClosed;
    function set__finalClosed(v:Bool):Bool {
        this._finalClosed = v;
        return v;
    }
    public var _openStmt(get, set) : stdgo.GoMap<stdgo.Ref<stdgo._internal.database.sql.Sql_T_driverStmt.T_driverStmt>, Bool>;
    function get__openStmt():stdgo.GoMap<stdgo.Ref<stdgo._internal.database.sql.Sql_T_driverStmt.T_driverStmt>, Bool> return this._openStmt;
    function set__openStmt(v:stdgo.GoMap<stdgo.Ref<stdgo._internal.database.sql.Sql_T_driverStmt.T_driverStmt>, Bool>):stdgo.GoMap<stdgo.Ref<stdgo._internal.database.sql.Sql_T_driverStmt.T_driverStmt>, Bool> {
        this._openStmt = (v : stdgo.GoMap<stdgo.Ref<stdgo._internal.database.sql.Sql_T_driverStmt.T_driverStmt>, Bool>);
        return v;
    }
    public var _inUse(get, set) : Bool;
    function get__inUse():Bool return this._inUse;
    function set__inUse(v:Bool):Bool {
        this._inUse = v;
        return v;
    }
    public var _returnedAt(get, set) : stdgo._internal.time.Time_Time.Time;
    function get__returnedAt():stdgo._internal.time.Time_Time.Time return this._returnedAt;
    function set__returnedAt(v:stdgo._internal.time.Time_Time.Time):stdgo._internal.time.Time_Time.Time {
        this._returnedAt = v;
        return v;
    }
    public var _onPut(get, set) : Array<() -> Void>;
    function get__onPut():Array<() -> Void> return [for (i in this._onPut) () -> i()];
    function set__onPut(v:Array<() -> Void>):Array<() -> Void> {
        this._onPut = ([for (i in v) i] : stdgo.Slice<() -> Void>);
        return v;
    }
    public var _dbmuClosed(get, set) : Bool;
    function get__dbmuClosed():Bool return this._dbmuClosed;
    function set__dbmuClosed(v:Bool):Bool {
        this._dbmuClosed = v;
        return v;
    }
    public function new(?_db:DB, ?_createdAt:stdgo._internal.time.Time_Time.Time, ?mutex:stdgo._internal.sync.Sync_Mutex.Mutex, ?_ci:Conn, ?_needReset:Bool, ?_closed:Bool, ?_finalClosed:Bool, ?_openStmt:stdgo.GoMap<stdgo.Ref<stdgo._internal.database.sql.Sql_T_driverStmt.T_driverStmt>, Bool>, ?_inUse:Bool, ?_returnedAt:stdgo._internal.time.Time_Time.Time, ?_onPut:Array<() -> Void>, ?_dbmuClosed:Bool) this = new stdgo._internal.database.sql.Sql_T_driverConn.T_driverConn(
(_db : stdgo.Ref<stdgo._internal.database.sql.Sql_DB.DB>),
_createdAt,
mutex,
_ci,
_needReset,
_closed,
_finalClosed,
(_openStmt : stdgo.GoMap<stdgo.Ref<stdgo._internal.database.sql.Sql_T_driverStmt.T_driverStmt>, Bool>),
_inUse,
_returnedAt,
([for (i in _onPut) i] : stdgo.Slice<() -> Void>),
_dbmuClosed);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
