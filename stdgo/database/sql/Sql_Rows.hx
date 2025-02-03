package stdgo.database.sql;
@:structInit @:using(stdgo.database.sql.Sql.Rows_static_extension) abstract Rows(stdgo._internal.database.sql.Sql_Rows.Rows) from stdgo._internal.database.sql.Sql_Rows.Rows to stdgo._internal.database.sql.Sql_Rows.Rows {
    public var _dc(get, set) : T_driverConn;
    function get__dc():T_driverConn return this._dc;
    function set__dc(v:T_driverConn):T_driverConn {
        this._dc = (v : stdgo.Ref<stdgo._internal.database.sql.Sql_T_driverConn.T_driverConn>);
        return v;
    }
    public var _releaseConn(get, set) : stdgo.Error -> Void;
    function get__releaseConn():stdgo.Error -> Void return _0 -> this._releaseConn(_0);
    function set__releaseConn(v:stdgo.Error -> Void):stdgo.Error -> Void {
        this._releaseConn = v;
        return v;
    }
    public var _rowsi(get, set) : Rows;
    function get__rowsi():Rows return this._rowsi;
    function set__rowsi(v:Rows):Rows {
        this._rowsi = v;
        return v;
    }
    public var _cancel(get, set) : () -> Void;
    function get__cancel():() -> Void return () -> this._cancel();
    function set__cancel(v:() -> Void):() -> Void {
        this._cancel = v;
        return v;
    }
    public var _closeStmt(get, set) : T_driverStmt;
    function get__closeStmt():T_driverStmt return this._closeStmt;
    function set__closeStmt(v:T_driverStmt):T_driverStmt {
        this._closeStmt = (v : stdgo.Ref<stdgo._internal.database.sql.Sql_T_driverStmt.T_driverStmt>);
        return v;
    }
    public var _contextDone(get, set) : stdgo._internal.sync.atomic_.Atomic__Pointer_.Pointer_<stdgo.Error>;
    function get__contextDone():stdgo._internal.sync.atomic_.Atomic__Pointer_.Pointer_<stdgo.Error> return this._contextDone;
    function set__contextDone(v:stdgo._internal.sync.atomic_.Atomic__Pointer_.Pointer_<stdgo.Error>):stdgo._internal.sync.atomic_.Atomic__Pointer_.Pointer_<stdgo.Error> {
        this._contextDone = v;
        return v;
    }
    public var _closemu(get, set) : stdgo._internal.sync.Sync_RWMutex.RWMutex;
    function get__closemu():stdgo._internal.sync.Sync_RWMutex.RWMutex return this._closemu;
    function set__closemu(v:stdgo._internal.sync.Sync_RWMutex.RWMutex):stdgo._internal.sync.Sync_RWMutex.RWMutex {
        this._closemu = v;
        return v;
    }
    public var _closed(get, set) : Bool;
    function get__closed():Bool return this._closed;
    function set__closed(v:Bool):Bool {
        this._closed = v;
        return v;
    }
    public var _lasterr(get, set) : stdgo.Error;
    function get__lasterr():stdgo.Error return this._lasterr;
    function set__lasterr(v:stdgo.Error):stdgo.Error {
        this._lasterr = (v : stdgo.Error);
        return v;
    }
    public var _lastcols(get, set) : Array<Value>;
    function get__lastcols():Array<Value> return [for (i in this._lastcols) i];
    function set__lastcols(v:Array<Value>):Array<Value> {
        this._lastcols = ([for (i in v) i] : stdgo.Slice<stdgo._internal.database.sql.driver.Driver_Value.Value>);
        return v;
    }
    public var _closemuScanHold(get, set) : Bool;
    function get__closemuScanHold():Bool return this._closemuScanHold;
    function set__closemuScanHold(v:Bool):Bool {
        this._closemuScanHold = v;
        return v;
    }
    public var _hitEOF(get, set) : Bool;
    function get__hitEOF():Bool return this._hitEOF;
    function set__hitEOF(v:Bool):Bool {
        this._hitEOF = v;
        return v;
    }
    public function new(?_dc:T_driverConn, ?_releaseConn:stdgo.Error -> Void, ?_rowsi:Rows, ?_cancel:() -> Void, ?_closeStmt:T_driverStmt, ?_contextDone:stdgo._internal.sync.atomic_.Atomic__Pointer_.Pointer_<stdgo.Error>, ?_closemu:stdgo._internal.sync.Sync_RWMutex.RWMutex, ?_closed:Bool, ?_lasterr:stdgo.Error, ?_lastcols:Array<Value>, ?_closemuScanHold:Bool, ?_hitEOF:Bool) this = new stdgo._internal.database.sql.Sql_Rows.Rows(
(_dc : stdgo.Ref<stdgo._internal.database.sql.Sql_T_driverConn.T_driverConn>),
_releaseConn,
_rowsi,
_cancel,
(_closeStmt : stdgo.Ref<stdgo._internal.database.sql.Sql_T_driverStmt.T_driverStmt>),
_contextDone,
_closemu,
_closed,
(_lasterr : stdgo.Error),
([for (i in _lastcols) i] : stdgo.Slice<stdgo._internal.database.sql.driver.Driver_Value.Value>),
_closemuScanHold,
_hitEOF);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
