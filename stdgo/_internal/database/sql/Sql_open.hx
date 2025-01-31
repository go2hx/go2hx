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
function open(_driverName:stdgo.GoString, _dataSourceName:stdgo.GoString):{ var _0 : stdgo.Ref<stdgo._internal.database.sql.Sql_DB.DB>; var _1 : stdgo.Error; } {
        @:check2 stdgo._internal.database.sql.Sql__driversMu._driversMu.rLock();
        var __tmp__ = (stdgo._internal.database.sql.Sql__drivers._drivers != null && stdgo._internal.database.sql.Sql__drivers._drivers.exists(_driverName?.__copy__()) ? { _0 : stdgo._internal.database.sql.Sql__drivers._drivers[_driverName?.__copy__()], _1 : true } : { _0 : (null : stdgo._internal.database.sql.driver.Driver_Driver.Driver), _1 : false }), _driveri:stdgo._internal.database.sql.driver.Driver_Driver.Driver = __tmp__._0, _ok:Bool = __tmp__._1;
        @:check2 stdgo._internal.database.sql.Sql__driversMu._driversMu.rUnlock();
        if (!_ok) {
            return { _0 : null, _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("sql: unknown driver %q (forgotten import?)" : stdgo.GoString), stdgo.Go.toInterface(_driverName)) };
        };
        {
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_driveri) : stdgo._internal.database.sql.driver.Driver_DriverContext.DriverContext)) : stdgo._internal.database.sql.driver.Driver_DriverContext.DriverContext), _1 : true };
            } catch(_) {
                { _0 : (null : stdgo._internal.database.sql.driver.Driver_DriverContext.DriverContext), _1 : false };
            }, _driverCtx = __tmp__._0, _ok = __tmp__._1;
            if (_ok) {
                var __tmp__ = _driverCtx.openConnector(_dataSourceName?.__copy__()), _connector:stdgo._internal.database.sql.driver.Driver_Connector.Connector = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    return { _0 : null, _1 : _err };
                };
                return { _0 : stdgo._internal.database.sql.Sql_openDB.openDB(_connector), _1 : (null : stdgo.Error) };
            };
        };
        return { _0 : stdgo._internal.database.sql.Sql_openDB.openDB(stdgo.Go.asInterface(({ _dsn : _dataSourceName?.__copy__(), _driver : _driveri } : stdgo._internal.database.sql.Sql_T_dsnConnector.T_dsnConnector))), _1 : (null : stdgo.Error) };
    }
