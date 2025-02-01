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
@:structInit @:using(stdgo._internal.database.sql.Sql_Conn_static_extension.Conn_static_extension) class Conn {
    public var _db : stdgo.Ref<stdgo._internal.database.sql.Sql_DB.DB> = (null : stdgo.Ref<stdgo._internal.database.sql.Sql_DB.DB>);
    public var _closemu : stdgo._internal.sync.Sync_RWMutex.RWMutex = ({} : stdgo._internal.sync.Sync_RWMutex.RWMutex);
    public var _dc : stdgo.Ref<stdgo._internal.database.sql.Sql_T_driverConn.T_driverConn> = (null : stdgo.Ref<stdgo._internal.database.sql.Sql_T_driverConn.T_driverConn>);
    public var _done : _internal.sync.atomic_.Atomic__Bool_.Bool_ = ({} : _internal.sync.atomic_.Atomic__Bool_.Bool_);
    public var _releaseConnOnce : stdgo._internal.sync.Sync_Once.Once = ({} : stdgo._internal.sync.Sync_Once.Once);
    public var _releaseConnCache : stdgo._internal.database.sql.Sql_T_releaseConn.T_releaseConn = (null : stdgo._internal.database.sql.Sql_T_releaseConn.T_releaseConn);
    public function new(?_db:stdgo.Ref<stdgo._internal.database.sql.Sql_DB.DB>, ?_closemu:stdgo._internal.sync.Sync_RWMutex.RWMutex, ?_dc:stdgo.Ref<stdgo._internal.database.sql.Sql_T_driverConn.T_driverConn>, ?_done:_internal.sync.atomic_.Atomic__Bool_.Bool_, ?_releaseConnOnce:stdgo._internal.sync.Sync_Once.Once, ?_releaseConnCache:stdgo._internal.database.sql.Sql_T_releaseConn.T_releaseConn) {
        if (_db != null) this._db = _db;
        if (_closemu != null) this._closemu = _closemu;
        if (_dc != null) this._dc = _dc;
        if (_done != null) this._done = _done;
        if (_releaseConnOnce != null) this._releaseConnOnce = _releaseConnOnce;
        if (_releaseConnCache != null) this._releaseConnCache = _releaseConnCache;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Conn(_db, _closemu, _dc, _done, _releaseConnOnce, _releaseConnCache);
    }
}
