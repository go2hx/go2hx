package stdgo._internal.database.sql;
function _ctxDriverStmtExec(_ctx:stdgo._internal.context.Context_context.Context, _si:stdgo._internal.database.sql.driver.Driver_stmt.Stmt, _nvdargs:stdgo.Slice<stdgo._internal.database.sql.driver.Driver_namedvalue.NamedValue>):{ var _0 : stdgo._internal.database.sql.driver.Driver_result.Result; var _1 : stdgo.Error; } {
        {
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_si) : stdgo._internal.database.sql.driver.Driver_stmtexeccontext.StmtExecContext)) : stdgo._internal.database.sql.driver.Driver_stmtexeccontext.StmtExecContext), _1 : true };
            } catch(_) {
                { _0 : (null : stdgo._internal.database.sql.driver.Driver_stmtexeccontext.StmtExecContext), _1 : false };
            }, _siCtx = __tmp__._0, _is = __tmp__._1;
            if (_is) {
                return _siCtx.execContext(_ctx, _nvdargs);
            };
        };
        var __tmp__ = stdgo._internal.database.sql.Sql__namedvaluetovalue._namedValueToValue(_nvdargs), _dargs:stdgo.Slice<stdgo._internal.database.sql.driver.Driver_value.Value> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : (null : stdgo._internal.database.sql.driver.Driver_result.Result), _1 : _err };
        };
        {
            var __select__ = true;
            while (__select__) {
                if (_ctx.done() != null && _ctx.done().__isGet__()) {
                    __select__ = false;
                    {
                        _ctx.done().__get__();
                        {
                            return { _0 : (null : stdgo._internal.database.sql.driver.Driver_result.Result), _1 : _ctx.err() };
                        };
                    };
                } else {
                    __select__ = false;
                    {};
                };
                #if !js Sys.sleep(0.01) #else null #end;
                stdgo._internal.internal.Async.tick();
            };
        };
        return _si.exec(_dargs);
    }
