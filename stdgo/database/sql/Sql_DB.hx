package stdgo.database.sql;
@:structInit @:using(stdgo.database.sql.Sql.DB_static_extension) abstract DB(stdgo._internal.database.sql.Sql_DB.DB) from stdgo._internal.database.sql.Sql_DB.DB to stdgo._internal.database.sql.Sql_DB.DB {
    public var _waitDuration(get, set) : stdgo._internal.sync.atomic_.Atomic__Int64_.Int64_;
    function get__waitDuration():stdgo._internal.sync.atomic_.Atomic__Int64_.Int64_ return this._waitDuration;
    function set__waitDuration(v:stdgo._internal.sync.atomic_.Atomic__Int64_.Int64_):stdgo._internal.sync.atomic_.Atomic__Int64_.Int64_ {
        this._waitDuration = v;
        return v;
    }
    public var _connector(get, set) : Connector;
    function get__connector():Connector return this._connector;
    function set__connector(v:Connector):Connector {
        this._connector = v;
        return v;
    }
    public var _numClosed(get, set) : stdgo._internal.sync.atomic_.Atomic__Uint64.Uint64;
    function get__numClosed():stdgo._internal.sync.atomic_.Atomic__Uint64.Uint64 return this._numClosed;
    function set__numClosed(v:stdgo._internal.sync.atomic_.Atomic__Uint64.Uint64):stdgo._internal.sync.atomic_.Atomic__Uint64.Uint64 {
        this._numClosed = v;
        return v;
    }
    public var _mu(get, set) : stdgo._internal.sync.Sync_Mutex.Mutex;
    function get__mu():stdgo._internal.sync.Sync_Mutex.Mutex return this._mu;
    function set__mu(v:stdgo._internal.sync.Sync_Mutex.Mutex):stdgo._internal.sync.Sync_Mutex.Mutex {
        this._mu = v;
        return v;
    }
    public var _freeConn(get, set) : Array<T_driverConn>;
    function get__freeConn():Array<T_driverConn> return [for (i in this._freeConn) i];
    function set__freeConn(v:Array<T_driverConn>):Array<T_driverConn> {
        this._freeConn = ([for (i in v) (i : stdgo.Ref<stdgo._internal.database.sql.Sql_T_driverConn.T_driverConn>)] : stdgo.Slice<stdgo.Ref<stdgo._internal.database.sql.Sql_T_driverConn.T_driverConn>>);
        return v;
    }
    public var _connRequests(get, set) : stdgo.GoMap<stdgo.GoUInt64, stdgo.Chan<stdgo._internal.database.sql.Sql_T_connRequest.T_connRequest>>;
    function get__connRequests():stdgo.GoMap<stdgo.GoUInt64, stdgo.Chan<stdgo._internal.database.sql.Sql_T_connRequest.T_connRequest>> return this._connRequests;
    function set__connRequests(v:stdgo.GoMap<stdgo.GoUInt64, stdgo.Chan<stdgo._internal.database.sql.Sql_T_connRequest.T_connRequest>>):stdgo.GoMap<stdgo.GoUInt64, stdgo.Chan<stdgo._internal.database.sql.Sql_T_connRequest.T_connRequest>> {
        this._connRequests = (v : stdgo.GoMap<stdgo.GoUInt64, stdgo.Chan<stdgo._internal.database.sql.Sql_T_connRequest.T_connRequest>>);
        return v;
    }
    public var _nextRequest(get, set) : haxe.UInt64;
    function get__nextRequest():haxe.UInt64 return this._nextRequest;
    function set__nextRequest(v:haxe.UInt64):haxe.UInt64 {
        this._nextRequest = (v : stdgo.GoUInt64);
        return v;
    }
    public var _numOpen(get, set) : StdTypes.Int;
    function get__numOpen():StdTypes.Int return this._numOpen;
    function set__numOpen(v:StdTypes.Int):StdTypes.Int {
        this._numOpen = (v : stdgo.GoInt);
        return v;
    }
    public var _openerCh(get, set) : stdgo.Chan<{ }>;
    function get__openerCh():stdgo.Chan<{ }> return this._openerCh;
    function set__openerCh(v:stdgo.Chan<{ }>):stdgo.Chan<{ }> {
        this._openerCh = (v : stdgo.Chan<{ }>);
        return v;
    }
    public var _closed(get, set) : Bool;
    function get__closed():Bool return this._closed;
    function set__closed(v:Bool):Bool {
        this._closed = v;
        return v;
    }
    public var _dep(get, set) : stdgo.GoMap<stdgo._internal.database.sql.Sql_T_finalCloser.T_finalCloser, stdgo._internal.database.sql.Sql_T_depSet.T_depSet>;
    function get__dep():stdgo.GoMap<stdgo._internal.database.sql.Sql_T_finalCloser.T_finalCloser, stdgo._internal.database.sql.Sql_T_depSet.T_depSet> return this._dep;
    function set__dep(v:stdgo.GoMap<stdgo._internal.database.sql.Sql_T_finalCloser.T_finalCloser, stdgo._internal.database.sql.Sql_T_depSet.T_depSet>):stdgo.GoMap<stdgo._internal.database.sql.Sql_T_finalCloser.T_finalCloser, stdgo._internal.database.sql.Sql_T_depSet.T_depSet> {
        this._dep = (v : stdgo.GoMap<stdgo._internal.database.sql.Sql_T_finalCloser.T_finalCloser, stdgo._internal.database.sql.Sql_T_depSet.T_depSet>);
        return v;
    }
    public var _lastPut(get, set) : stdgo.GoMap<stdgo.Ref<stdgo._internal.database.sql.Sql_T_driverConn.T_driverConn>, stdgo.GoString>;
    function get__lastPut():stdgo.GoMap<stdgo.Ref<stdgo._internal.database.sql.Sql_T_driverConn.T_driverConn>, stdgo.GoString> return this._lastPut;
    function set__lastPut(v:stdgo.GoMap<stdgo.Ref<stdgo._internal.database.sql.Sql_T_driverConn.T_driverConn>, stdgo.GoString>):stdgo.GoMap<stdgo.Ref<stdgo._internal.database.sql.Sql_T_driverConn.T_driverConn>, stdgo.GoString> {
        this._lastPut = (v : stdgo.GoMap<stdgo.Ref<stdgo._internal.database.sql.Sql_T_driverConn.T_driverConn>, stdgo.GoString>);
        return v;
    }
    public var _maxIdleCount(get, set) : StdTypes.Int;
    function get__maxIdleCount():StdTypes.Int return this._maxIdleCount;
    function set__maxIdleCount(v:StdTypes.Int):StdTypes.Int {
        this._maxIdleCount = (v : stdgo.GoInt);
        return v;
    }
    public var _maxOpen(get, set) : StdTypes.Int;
    function get__maxOpen():StdTypes.Int return this._maxOpen;
    function set__maxOpen(v:StdTypes.Int):StdTypes.Int {
        this._maxOpen = (v : stdgo.GoInt);
        return v;
    }
    public var _maxLifetime(get, set) : stdgo._internal.time.Time_Duration.Duration;
    function get__maxLifetime():stdgo._internal.time.Time_Duration.Duration return this._maxLifetime;
    function set__maxLifetime(v:stdgo._internal.time.Time_Duration.Duration):stdgo._internal.time.Time_Duration.Duration {
        this._maxLifetime = v;
        return v;
    }
    public var _maxIdleTime(get, set) : stdgo._internal.time.Time_Duration.Duration;
    function get__maxIdleTime():stdgo._internal.time.Time_Duration.Duration return this._maxIdleTime;
    function set__maxIdleTime(v:stdgo._internal.time.Time_Duration.Duration):stdgo._internal.time.Time_Duration.Duration {
        this._maxIdleTime = v;
        return v;
    }
    public var _cleanerCh(get, set) : stdgo.Chan<{ }>;
    function get__cleanerCh():stdgo.Chan<{ }> return this._cleanerCh;
    function set__cleanerCh(v:stdgo.Chan<{ }>):stdgo.Chan<{ }> {
        this._cleanerCh = (v : stdgo.Chan<{ }>);
        return v;
    }
    public var _waitCount(get, set) : haxe.Int64;
    function get__waitCount():haxe.Int64 return this._waitCount;
    function set__waitCount(v:haxe.Int64):haxe.Int64 {
        this._waitCount = (v : stdgo.GoInt64);
        return v;
    }
    public var _maxIdleClosed(get, set) : haxe.Int64;
    function get__maxIdleClosed():haxe.Int64 return this._maxIdleClosed;
    function set__maxIdleClosed(v:haxe.Int64):haxe.Int64 {
        this._maxIdleClosed = (v : stdgo.GoInt64);
        return v;
    }
    public var _maxIdleTimeClosed(get, set) : haxe.Int64;
    function get__maxIdleTimeClosed():haxe.Int64 return this._maxIdleTimeClosed;
    function set__maxIdleTimeClosed(v:haxe.Int64):haxe.Int64 {
        this._maxIdleTimeClosed = (v : stdgo.GoInt64);
        return v;
    }
    public var _maxLifetimeClosed(get, set) : haxe.Int64;
    function get__maxLifetimeClosed():haxe.Int64 return this._maxLifetimeClosed;
    function set__maxLifetimeClosed(v:haxe.Int64):haxe.Int64 {
        this._maxLifetimeClosed = (v : stdgo.GoInt64);
        return v;
    }
    public var _stop(get, set) : () -> Void;
    function get__stop():() -> Void return () -> this._stop();
    function set__stop(v:() -> Void):() -> Void {
        this._stop = v;
        return v;
    }
    public function new(?_waitDuration:stdgo._internal.sync.atomic_.Atomic__Int64_.Int64_, ?_connector:Connector, ?_numClosed:stdgo._internal.sync.atomic_.Atomic__Uint64.Uint64, ?_mu:stdgo._internal.sync.Sync_Mutex.Mutex, ?_freeConn:Array<T_driverConn>, ?_connRequests:stdgo.GoMap<stdgo.GoUInt64, stdgo.Chan<stdgo._internal.database.sql.Sql_T_connRequest.T_connRequest>>, ?_nextRequest:haxe.UInt64, ?_numOpen:StdTypes.Int, ?_openerCh:stdgo.Chan<{ }>, ?_closed:Bool, ?_dep:stdgo.GoMap<stdgo._internal.database.sql.Sql_T_finalCloser.T_finalCloser, stdgo._internal.database.sql.Sql_T_depSet.T_depSet>, ?_lastPut:stdgo.GoMap<stdgo.Ref<stdgo._internal.database.sql.Sql_T_driverConn.T_driverConn>, stdgo.GoString>, ?_maxIdleCount:StdTypes.Int, ?_maxOpen:StdTypes.Int, ?_maxLifetime:stdgo._internal.time.Time_Duration.Duration, ?_maxIdleTime:stdgo._internal.time.Time_Duration.Duration, ?_cleanerCh:stdgo.Chan<{ }>, ?_waitCount:haxe.Int64, ?_maxIdleClosed:haxe.Int64, ?_maxIdleTimeClosed:haxe.Int64, ?_maxLifetimeClosed:haxe.Int64, ?_stop:() -> Void) this = new stdgo._internal.database.sql.Sql_DB.DB(
_waitDuration,
_connector,
_numClosed,
_mu,
([for (i in _freeConn) (i : stdgo.Ref<stdgo._internal.database.sql.Sql_T_driverConn.T_driverConn>)] : stdgo.Slice<stdgo.Ref<stdgo._internal.database.sql.Sql_T_driverConn.T_driverConn>>),
(_connRequests : stdgo.GoMap<stdgo.GoUInt64, stdgo.Chan<stdgo._internal.database.sql.Sql_T_connRequest.T_connRequest>>),
(_nextRequest : stdgo.GoUInt64),
(_numOpen : stdgo.GoInt),
(_openerCh : stdgo.Chan<{ }>),
_closed,
(_dep : stdgo.GoMap<stdgo._internal.database.sql.Sql_T_finalCloser.T_finalCloser, stdgo._internal.database.sql.Sql_T_depSet.T_depSet>),
(_lastPut : stdgo.GoMap<stdgo.Ref<stdgo._internal.database.sql.Sql_T_driverConn.T_driverConn>, stdgo.GoString>),
(_maxIdleCount : stdgo.GoInt),
(_maxOpen : stdgo.GoInt),
_maxLifetime,
_maxIdleTime,
(_cleanerCh : stdgo.Chan<{ }>),
(_waitCount : stdgo.GoInt64),
(_maxIdleClosed : stdgo.GoInt64),
(_maxIdleTimeClosed : stdgo.GoInt64),
(_maxLifetimeClosed : stdgo.GoInt64),
_stop);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
