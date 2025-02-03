package stdgo.database.sql;
@:structInit @:using(stdgo.database.sql.Sql.Tx_static_extension) abstract Tx(stdgo._internal.database.sql.Sql_Tx.Tx) from stdgo._internal.database.sql.Sql_Tx.Tx to stdgo._internal.database.sql.Sql_Tx.Tx {
    public var _db(get, set) : DB;
    function get__db():DB return this._db;
    function set__db(v:DB):DB {
        this._db = (v : stdgo.Ref<stdgo._internal.database.sql.Sql_DB.DB>);
        return v;
    }
    public var _closemu(get, set) : stdgo._internal.sync.Sync_RWMutex.RWMutex;
    function get__closemu():stdgo._internal.sync.Sync_RWMutex.RWMutex return this._closemu;
    function set__closemu(v:stdgo._internal.sync.Sync_RWMutex.RWMutex):stdgo._internal.sync.Sync_RWMutex.RWMutex {
        this._closemu = v;
        return v;
    }
    public var _dc(get, set) : T_driverConn;
    function get__dc():T_driverConn return this._dc;
    function set__dc(v:T_driverConn):T_driverConn {
        this._dc = (v : stdgo.Ref<stdgo._internal.database.sql.Sql_T_driverConn.T_driverConn>);
        return v;
    }
    public var _txi(get, set) : Tx;
    function get__txi():Tx return this._txi;
    function set__txi(v:Tx):Tx {
        this._txi = v;
        return v;
    }
    public var _releaseConn(get, set) : stdgo.Error -> Void;
    function get__releaseConn():stdgo.Error -> Void return _0 -> this._releaseConn(_0);
    function set__releaseConn(v:stdgo.Error -> Void):stdgo.Error -> Void {
        this._releaseConn = v;
        return v;
    }
    public var _done(get, set) : stdgo._internal.sync.atomic_.Atomic__Bool_.Bool_;
    function get__done():stdgo._internal.sync.atomic_.Atomic__Bool_.Bool_ return this._done;
    function set__done(v:stdgo._internal.sync.atomic_.Atomic__Bool_.Bool_):stdgo._internal.sync.atomic_.Atomic__Bool_.Bool_ {
        this._done = v;
        return v;
    }
    public var _keepConnOnRollback(get, set) : Bool;
    function get__keepConnOnRollback():Bool return this._keepConnOnRollback;
    function set__keepConnOnRollback(v:Bool):Bool {
        this._keepConnOnRollback = v;
        return v;
    }
    public var _stmts(get, set) : stdgo.Tuple<stdgo._internal.sync.Sync_Mutex.Mutex, Array<Stmt>>;
    function get__stmts():stdgo.Tuple<stdgo._internal.sync.Sync_Mutex.Mutex, Array<Stmt>> return {
        final obj = this._stmts;
        { mutex : obj.mutex, _v : [for (i in obj._v) i] };
    };
    function set__stmts(v:stdgo.Tuple<stdgo._internal.sync.Sync_Mutex.Mutex, Array<Stmt>>):stdgo.Tuple<stdgo._internal.sync.Sync_Mutex.Mutex, Array<Stmt>> {
        this._stmts = {
            final obj = v;
            { mutex : obj.mutex, _v : ([for (i in obj._v) (i : stdgo.Ref<stdgo._internal.database.sql.Sql_Stmt.Stmt>)] : stdgo.Slice<stdgo.Ref<stdgo._internal.database.sql.Sql_Stmt.Stmt>>) };
        };
        return v;
    }
    public var _cancel(get, set) : () -> Void;
    function get__cancel():() -> Void return () -> this._cancel();
    function set__cancel(v:() -> Void):() -> Void {
        this._cancel = v;
        return v;
    }
    public var _ctx(get, set) : stdgo._internal.context.Context_Context.Context;
    function get__ctx():stdgo._internal.context.Context_Context.Context return this._ctx;
    function set__ctx(v:stdgo._internal.context.Context_Context.Context):stdgo._internal.context.Context_Context.Context {
        this._ctx = v;
        return v;
    }
    public function new(?_db:DB, ?_closemu:stdgo._internal.sync.Sync_RWMutex.RWMutex, ?_dc:T_driverConn, ?_txi:Tx, ?_releaseConn:stdgo.Error -> Void, ?_done:stdgo._internal.sync.atomic_.Atomic__Bool_.Bool_, ?_keepConnOnRollback:Bool, ?_stmts:stdgo.Tuple<stdgo._internal.sync.Sync_Mutex.Mutex, Array<Stmt>>, ?_cancel:() -> Void, ?_ctx:stdgo._internal.context.Context_Context.Context) this = new stdgo._internal.database.sql.Sql_Tx.Tx((_db : stdgo.Ref<stdgo._internal.database.sql.Sql_DB.DB>), _closemu, (_dc : stdgo.Ref<stdgo._internal.database.sql.Sql_T_driverConn.T_driverConn>), _txi, _releaseConn, _done, _keepConnOnRollback, {
        final obj = _stmts;
        { mutex : obj.mutex, _v : ([for (i in obj._v) (i : stdgo.Ref<stdgo._internal.database.sql.Sql_Stmt.Stmt>)] : stdgo.Slice<stdgo.Ref<stdgo._internal.database.sql.Sql_Stmt.Stmt>>) };
    }, _cancel, _ctx);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
