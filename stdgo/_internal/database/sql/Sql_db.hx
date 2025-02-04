package stdgo._internal.database.sql;
@:structInit @:using(stdgo._internal.database.sql.Sql_db_static_extension.DB_static_extension) class DB {
    public var _waitDuration : stdgo._internal.sync.atomic_.Atomic__int64_.Int64_ = ({} : stdgo._internal.sync.atomic_.Atomic__int64_.Int64_);
    public var _connector : stdgo._internal.database.sql.driver.Driver_connector.Connector = (null : stdgo._internal.database.sql.driver.Driver_connector.Connector);
    public var _numClosed : stdgo._internal.sync.atomic_.Atomic__uint64.Uint64 = ({} : stdgo._internal.sync.atomic_.Atomic__uint64.Uint64);
    public var _mu : stdgo._internal.sync.Sync_mutex.Mutex = ({} : stdgo._internal.sync.Sync_mutex.Mutex);
    public var _freeConn : stdgo.Slice<stdgo.Ref<stdgo._internal.database.sql.Sql_t_driverconn.T_driverConn>> = (null : stdgo.Slice<stdgo.Ref<stdgo._internal.database.sql.Sql_t_driverconn.T_driverConn>>);
    public var _connRequests : stdgo.GoMap<stdgo.GoUInt64, stdgo.Chan<stdgo._internal.database.sql.Sql_t_connrequest.T_connRequest>> = (null : stdgo.GoMap<stdgo.GoUInt64, stdgo.Chan<stdgo._internal.database.sql.Sql_t_connrequest.T_connRequest>>);
    public var _nextRequest : stdgo.GoUInt64 = 0;
    public var _numOpen : stdgo.GoInt = 0;
    public var _openerCh : stdgo.Chan<{ }> = (null : stdgo.Chan<{ }>);
    public var _closed : Bool = false;
    public var _dep : stdgo.GoMap<stdgo._internal.database.sql.Sql_t_finalcloser.T_finalCloser, stdgo._internal.database.sql.Sql_t_depset.T_depSet> = (null : stdgo.GoMap<stdgo._internal.database.sql.Sql_t_finalcloser.T_finalCloser, stdgo._internal.database.sql.Sql_t_depset.T_depSet>);
    public var _lastPut : stdgo.GoMap<stdgo.Ref<stdgo._internal.database.sql.Sql_t_driverconn.T_driverConn>, stdgo.GoString> = (null : stdgo.GoMap<stdgo.Ref<stdgo._internal.database.sql.Sql_t_driverconn.T_driverConn>, stdgo.GoString>);
    public var _maxIdleCount : stdgo.GoInt = 0;
    public var _maxOpen : stdgo.GoInt = 0;
    public var _maxLifetime : stdgo._internal.time.Time_duration.Duration = ((0 : stdgo.GoInt64) : stdgo._internal.time.Time_duration.Duration);
    public var _maxIdleTime : stdgo._internal.time.Time_duration.Duration = ((0 : stdgo.GoInt64) : stdgo._internal.time.Time_duration.Duration);
    public var _cleanerCh : stdgo.Chan<{ }> = (null : stdgo.Chan<{ }>);
    public var _waitCount : stdgo.GoInt64 = 0;
    public var _maxIdleClosed : stdgo.GoInt64 = 0;
    public var _maxIdleTimeClosed : stdgo.GoInt64 = 0;
    public var _maxLifetimeClosed : stdgo.GoInt64 = 0;
    public var _stop : () -> Void = null;
    public function new(?_waitDuration:stdgo._internal.sync.atomic_.Atomic__int64_.Int64_, ?_connector:stdgo._internal.database.sql.driver.Driver_connector.Connector, ?_numClosed:stdgo._internal.sync.atomic_.Atomic__uint64.Uint64, ?_mu:stdgo._internal.sync.Sync_mutex.Mutex, ?_freeConn:stdgo.Slice<stdgo.Ref<stdgo._internal.database.sql.Sql_t_driverconn.T_driverConn>>, ?_connRequests:stdgo.GoMap<stdgo.GoUInt64, stdgo.Chan<stdgo._internal.database.sql.Sql_t_connrequest.T_connRequest>>, ?_nextRequest:stdgo.GoUInt64, ?_numOpen:stdgo.GoInt, ?_openerCh:stdgo.Chan<{ }>, ?_closed:Bool, ?_dep:stdgo.GoMap<stdgo._internal.database.sql.Sql_t_finalcloser.T_finalCloser, stdgo._internal.database.sql.Sql_t_depset.T_depSet>, ?_lastPut:stdgo.GoMap<stdgo.Ref<stdgo._internal.database.sql.Sql_t_driverconn.T_driverConn>, stdgo.GoString>, ?_maxIdleCount:stdgo.GoInt, ?_maxOpen:stdgo.GoInt, ?_maxLifetime:stdgo._internal.time.Time_duration.Duration, ?_maxIdleTime:stdgo._internal.time.Time_duration.Duration, ?_cleanerCh:stdgo.Chan<{ }>, ?_waitCount:stdgo.GoInt64, ?_maxIdleClosed:stdgo.GoInt64, ?_maxIdleTimeClosed:stdgo.GoInt64, ?_maxLifetimeClosed:stdgo.GoInt64, ?_stop:() -> Void) {
        if (_waitDuration != null) this._waitDuration = _waitDuration;
        if (_connector != null) this._connector = _connector;
        if (_numClosed != null) this._numClosed = _numClosed;
        if (_mu != null) this._mu = _mu;
        if (_freeConn != null) this._freeConn = _freeConn;
        if (_connRequests != null) this._connRequests = _connRequests;
        if (_nextRequest != null) this._nextRequest = _nextRequest;
        if (_numOpen != null) this._numOpen = _numOpen;
        if (_openerCh != null) this._openerCh = _openerCh;
        if (_closed != null) this._closed = _closed;
        if (_dep != null) this._dep = _dep;
        if (_lastPut != null) this._lastPut = _lastPut;
        if (_maxIdleCount != null) this._maxIdleCount = _maxIdleCount;
        if (_maxOpen != null) this._maxOpen = _maxOpen;
        if (_maxLifetime != null) this._maxLifetime = _maxLifetime;
        if (_maxIdleTime != null) this._maxIdleTime = _maxIdleTime;
        if (_cleanerCh != null) this._cleanerCh = _cleanerCh;
        if (_waitCount != null) this._waitCount = _waitCount;
        if (_maxIdleClosed != null) this._maxIdleClosed = _maxIdleClosed;
        if (_maxIdleTimeClosed != null) this._maxIdleTimeClosed = _maxIdleTimeClosed;
        if (_maxLifetimeClosed != null) this._maxLifetimeClosed = _maxLifetimeClosed;
        if (_stop != null) this._stop = _stop;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new DB(
_waitDuration,
_connector,
_numClosed,
_mu,
_freeConn,
_connRequests,
_nextRequest,
_numOpen,
_openerCh,
_closed,
_dep,
_lastPut,
_maxIdleCount,
_maxOpen,
_maxLifetime,
_maxIdleTime,
_cleanerCh,
_waitCount,
_maxIdleClosed,
_maxIdleTimeClosed,
_maxLifetimeClosed,
_stop);
    }
}
