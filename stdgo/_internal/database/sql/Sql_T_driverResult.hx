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
@:structInit @:using(stdgo._internal.database.sql.Sql_T_driverResult_static_extension.T_driverResult_static_extension) class T_driverResult {
    @:embedded
    public var locker : stdgo._internal.sync.Sync_Locker.Locker = (null : stdgo._internal.sync.Sync_Locker.Locker);
    public var _resi : stdgo._internal.database.sql.driver.Driver_Result.Result = (null : stdgo._internal.database.sql.driver.Driver_Result.Result);
    public function new(?locker:stdgo._internal.sync.Sync_Locker.Locker, ?_resi:stdgo._internal.database.sql.driver.Driver_Result.Result) {
        if (locker != null) this.locker = locker;
        if (_resi != null) this._resi = _resi;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public var lock(get, never) : () -> Void;
    @:embedded
    @:embeddededffieldsffun
    public function get_lock():() -> Void return @:check31 (this.locker ?? throw "null pointer dereference").lock;
    public var unlock(get, never) : () -> Void;
    @:embedded
    @:embeddededffieldsffun
    public function get_unlock():() -> Void return @:check31 (this.locker ?? throw "null pointer dereference").unlock;
    public function __copy__() {
        return new T_driverResult(locker, _resi);
    }
}
