package stdgo._internal.database.sql;
function _rowsiFromStatement(_ctx:stdgo._internal.context.Context_Context.Context, _ci:stdgo._internal.database.sql.driver.Driver_Conn.Conn, _ds:stdgo.Ref<stdgo._internal.database.sql.Sql_T_driverStmt.T_driverStmt>, _args:haxe.Rest<stdgo.AnyInterface>):{ var _0 : stdgo._internal.database.sql.driver.Driver_Rows.Rows; var _1 : stdgo.Error; } {
        var _args = new stdgo.Slice<stdgo.AnyInterface>(_args.length, 0, ..._args);
        var __deferstack__:Array<Void -> Void> = [];
        try {
            _ds.lock();
            {
                final __f__ = _ds.unlock;
                __deferstack__.unshift(() -> __f__());
            };
            var __tmp__ = stdgo._internal.database.sql.Sql__driverArgsConnLocked._driverArgsConnLocked(_ci, _ds, _args), _dargs:stdgo.Slice<stdgo._internal.database.sql.driver.Driver_NamedValue.NamedValue> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                {
                    final __ret__:{ var _0 : stdgo._internal.database.sql.driver.Driver_Rows.Rows; var _1 : stdgo.Error; } = { _0 : (null : stdgo._internal.database.sql.driver.Driver_Rows.Rows), _1 : _err };
                    for (defer in __deferstack__) {
                        defer();
                    };
                    return __ret__;
                };
            };
            {
                final __ret__:{ var _0 : stdgo._internal.database.sql.driver.Driver_Rows.Rows; var _1 : stdgo.Error; } = stdgo._internal.database.sql.Sql__ctxDriverStmtQuery._ctxDriverStmtQuery(_ctx, _ds._si, _dargs);
                for (defer in __deferstack__) {
                    defer();
                };
                return __ret__;
            };
            {
                final __ret__:{ var _0 : stdgo._internal.database.sql.driver.Driver_Rows.Rows; var _1 : stdgo.Error; } = { _0 : (null : stdgo._internal.database.sql.driver.Driver_Rows.Rows), _1 : (null : stdgo.Error) };
                for (defer in __deferstack__) {
                    defer();
                };
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                return __ret__;
            };
        } catch(__exception__) {
            var exe:Dynamic = __exception__.native;
            if ((exe is haxe.ValueException)) exe = exe.value;
            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                if (__exception__.message == "__return__") throw "__return__";
                exe = stdgo.Go.toInterface(__exception__.message);
            };
            stdgo.Go.recover_exception = exe;
            final __ret__:{ var _0 : stdgo._internal.database.sql.driver.Driver_Rows.Rows; var _1 : stdgo.Error; } = { _0 : (null : stdgo._internal.database.sql.driver.Driver_Rows.Rows), _1 : (null : stdgo.Error) };
            for (defer in __deferstack__) {
                defer();
            };
            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
            return __ret__;
        };
    }
