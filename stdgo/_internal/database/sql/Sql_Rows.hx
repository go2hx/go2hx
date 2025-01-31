package stdgo._internal.database.sql;
import stdgo._internal.errors.Errors;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.time.Time;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.database.sql.driver.Driver;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.sort.Sort;
import stdgo._internal.context.Context;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.io.Io;
@:structInit @:using(stdgo._internal.database.sql.Sql_Rows_static_extension.Rows_static_extension) class Rows {
    public var _dc : stdgo.Ref<stdgo._internal.database.sql.Sql_T_driverConn.T_driverConn> = (null : stdgo.Ref<stdgo._internal.database.sql.Sql_T_driverConn.T_driverConn>);
    public var _releaseConn : stdgo.Error -> Void = null;
    public var _rowsi : stdgo._internal.database.sql.driver.Driver_Rows.Rows = (null : stdgo._internal.database.sql.driver.Driver_Rows.Rows);
    public var _cancel : () -> Void = null;
    public var _closeStmt : stdgo.Ref<stdgo._internal.database.sql.Sql_T_driverStmt.T_driverStmt> = (null : stdgo.Ref<stdgo._internal.database.sql.Sql_T_driverStmt.T_driverStmt>);
    public var _contextDone : stdgo._internal.sync.atomic_.Atomic__Pointer_.Pointer_<stdgo.Error> = ({} : stdgo._internal.sync.atomic_.Atomic__Pointer_.Pointer_<stdgo.Error>);
    public var _closemu : stdgo._internal.sync.Sync_RWMutex.RWMutex = ({} : stdgo._internal.sync.Sync_RWMutex.RWMutex);
    public var _closed : Bool = false;
    public var _lasterr : stdgo.Error = (null : stdgo.Error);
    public var _lastcols : stdgo.Slice<stdgo._internal.database.sql.driver.Driver_Value.Value> = (null : stdgo.Slice<stdgo._internal.database.sql.driver.Driver_Value.Value>);
    public var _closemuScanHold : Bool = false;
    public var _hitEOF : Bool = false;
    public function new(?_dc:stdgo.Ref<stdgo._internal.database.sql.Sql_T_driverConn.T_driverConn>, ?_releaseConn:stdgo.Error -> Void, ?_rowsi:stdgo._internal.database.sql.driver.Driver_Rows.Rows, ?_cancel:() -> Void, ?_closeStmt:stdgo.Ref<stdgo._internal.database.sql.Sql_T_driverStmt.T_driverStmt>, ?_contextDone:stdgo._internal.sync.atomic_.Atomic__Pointer_.Pointer_<stdgo.Error>, ?_closemu:stdgo._internal.sync.Sync_RWMutex.RWMutex, ?_closed:Bool, ?_lasterr:stdgo.Error, ?_lastcols:stdgo.Slice<stdgo._internal.database.sql.driver.Driver_Value.Value>, ?_closemuScanHold:Bool, ?_hitEOF:Bool) {
        if (_dc != null) this._dc = _dc;
        if (_releaseConn != null) this._releaseConn = _releaseConn;
        if (_rowsi != null) this._rowsi = _rowsi;
        if (_cancel != null) this._cancel = _cancel;
        if (_closeStmt != null) this._closeStmt = _closeStmt;
        if (_contextDone != null) this._contextDone = _contextDone;
        if (_closemu != null) this._closemu = _closemu;
        if (_closed != null) this._closed = _closed;
        if (_lasterr != null) this._lasterr = _lasterr;
        if (_lastcols != null) this._lastcols = _lastcols;
        if (_closemuScanHold != null) this._closemuScanHold = _closemuScanHold;
        if (_hitEOF != null) this._hitEOF = _hitEOF;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Rows(
_dc,
_releaseConn,
_rowsi,
_cancel,
_closeStmt,
_contextDone,
_closemu,
_closed,
_lasterr,
_lastcols,
_closemuScanHold,
_hitEOF);
    }
}
