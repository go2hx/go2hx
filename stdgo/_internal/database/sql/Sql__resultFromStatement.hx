package stdgo._internal.database.sql;
function _resultFromStatement(_ctx:stdgo._internal.context.Context_Context.Context, _ci:stdgo._internal.database.sql.driver.Driver_Conn.Conn, _ds:stdgo.Ref<stdgo._internal.database.sql.Sql_T_driverStmt.T_driverStmt>, _args:haxe.Rest<stdgo.AnyInterface>):{ var _0 : stdgo._internal.database.sql.Sql_Result.Result; var _1 : stdgo.Error; } {
        var _args = new stdgo.Slice<stdgo.AnyInterface>(_args.length, 0, ..._args);
        var __deferstack__:Array<Void -> Void> = [];
        try {
            (@:checkr _ds ?? throw "null pointer dereference").lock();
            {
                final __f__ = (@:checkr _ds ?? throw "null pointer dereference").unlock;
                __deferstack__.unshift(() -> __f__());
            };
            var __tmp__ = stdgo._internal.database.sql.Sql__driverArgsConnLocked._driverArgsConnLocked(_ci, _ds, _args), _dargs:stdgo.Slice<stdgo._internal.database.sql.driver.Driver_NamedValue.NamedValue> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                {
                    final __ret__:{ var _0 : stdgo._internal.database.sql.Sql_Result.Result; var _1 : stdgo.Error; } = { _0 : (null : stdgo._internal.database.sql.Sql_Result.Result), _1 : _err };
                    for (defer in __deferstack__) {
                        __deferstack__.remove(defer);
                        defer();
                    };
                    return __ret__;
                };
            };
            var __tmp__ = stdgo._internal.database.sql.Sql__ctxDriverStmtExec._ctxDriverStmtExec(_ctx, (@:checkr _ds ?? throw "null pointer dereference")._si, _dargs), _resi:stdgo._internal.database.sql.driver.Driver_Result.Result = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                {
                    final __ret__:{ var _0 : stdgo._internal.database.sql.Sql_Result.Result; var _1 : stdgo.Error; } = { _0 : (null : stdgo._internal.database.sql.Sql_Result.Result), _1 : _err };
                    for (defer in __deferstack__) {
                        __deferstack__.remove(defer);
                        defer();
                    };
                    return __ret__;
                };
            };
            {
                final __ret__:{ var _0 : stdgo._internal.database.sql.Sql_Result.Result; var _1 : stdgo.Error; } = { _0 : stdgo.Go.asInterface((new stdgo._internal.database.sql.Sql_T_driverResult.T_driverResult((@:checkr _ds ?? throw "null pointer dereference").locker, _resi) : stdgo._internal.database.sql.Sql_T_driverResult.T_driverResult)), _1 : (null : stdgo.Error) };
                for (defer in __deferstack__) {
                    __deferstack__.remove(defer);
                    defer();
                };
                return __ret__;
            };
            {
                for (defer in __deferstack__) {
                    __deferstack__.remove(defer);
                    defer();
                };
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                return { _0 : (null : stdgo._internal.database.sql.Sql_Result.Result), _1 : (null : stdgo.Error) };
            };
        } catch(__exception__) {
            var exe:Dynamic = __exception__.native;
            if ((exe is haxe.ValueException)) exe = exe.value;
            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                if (__exception__.message == "__return__") throw "__return__";
                exe = stdgo.Go.toInterface(__exception__.message);
            };
            stdgo.Go.recover_exception = exe;
            for (defer in __deferstack__) {
                __deferstack__.remove(defer);
                defer();
            };
            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
            return { _0 : (null : stdgo._internal.database.sql.Sql_Result.Result), _1 : (null : stdgo.Error) };
        };
    }
