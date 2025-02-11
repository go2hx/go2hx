package stdgo._internal.database.sql;
function open(_driverName:stdgo.GoString, _dataSourceName:stdgo.GoString):{ var _0 : stdgo.Ref<stdgo._internal.database.sql.Sql_db.DB>; var _1 : stdgo.Error; } {
        @:check2 stdgo._internal.database.sql.Sql__driversmu._driversMu.rLock();
        var __tmp__ = (stdgo._internal.database.sql.Sql__drivers._drivers != null && stdgo._internal.database.sql.Sql__drivers._drivers.__exists__(_driverName?.__copy__()) ? { _0 : stdgo._internal.database.sql.Sql__drivers._drivers[_driverName?.__copy__()], _1 : true } : { _0 : (null : stdgo._internal.database.sql.driver.Driver_driver.Driver), _1 : false }), _driveri:stdgo._internal.database.sql.driver.Driver_driver.Driver = __tmp__._0, _ok:Bool = __tmp__._1;
        @:check2 stdgo._internal.database.sql.Sql__driversmu._driversMu.rUnlock();
        if (!_ok) {
            return { _0 : null, _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("sql: unknown driver %q (forgotten import?)" : stdgo.GoString), stdgo.Go.toInterface(_driverName)) };
        };
        {
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_driveri) : stdgo._internal.database.sql.driver.Driver_drivercontext.DriverContext)) : stdgo._internal.database.sql.driver.Driver_drivercontext.DriverContext), _1 : true };
            } catch(_) {
                { _0 : (null : stdgo._internal.database.sql.driver.Driver_drivercontext.DriverContext), _1 : false };
            }, _driverCtx = __tmp__._0, _ok = __tmp__._1;
            if (_ok) {
                var __tmp__ = _driverCtx.openConnector(_dataSourceName?.__copy__()), _connector:stdgo._internal.database.sql.driver.Driver_connector.Connector = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    return { _0 : null, _1 : _err };
                };
                return { _0 : stdgo._internal.database.sql.Sql_opendb.openDB(_connector), _1 : (null : stdgo.Error) };
            };
        };
        return { _0 : stdgo._internal.database.sql.Sql_opendb.openDB(stdgo.Go.asInterface(({ _dsn : _dataSourceName?.__copy__(), _driver : _driveri } : stdgo._internal.database.sql.Sql_t_dsnconnector.T_dsnConnector))), _1 : (null : stdgo.Error) };
    }
