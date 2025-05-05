package stdgo._internal.database.sql;
function _ctxDriverStmtExec(_ctx:stdgo._internal.context.Context_context.Context, _si:stdgo._internal.database.sql.driver.Driver_stmt.Stmt, _nvdargs:stdgo.Slice<stdgo._internal.database.sql.driver.Driver_namedvalue.NamedValue>):{ var _0 : stdgo._internal.database.sql.driver.Driver_result.Result; var _1 : stdgo.Error; } {
        //"file:///home/runner/.go/go1.21.3/src/database/sql/ctxutil.go#L64"
        {
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_si) : stdgo._internal.database.sql.driver.Driver_stmtexeccontext.StmtExecContext)) : stdgo._internal.database.sql.driver.Driver_stmtexeccontext.StmtExecContext), _1 : true };
            } catch(_) {
                { _0 : (null : stdgo._internal.database.sql.driver.Driver_stmtexeccontext.StmtExecContext), _1 : false };
            }, _siCtx = __tmp__._0, _is = __tmp__._1;
            if (_is) {
                //"file:///home/runner/.go/go1.21.3/src/database/sql/ctxutil.go#L65"
                return _siCtx.execContext(_ctx, _nvdargs);
            };
        };
        var __tmp__ = stdgo._internal.database.sql.Sql__namedvaluetovalue._namedValueToValue(_nvdargs), _dargs:stdgo.Slice<stdgo._internal.database.sql.driver.Driver_value.Value> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/database/sql/ctxutil.go#L68"
        if (_err != null) {
            //"file:///home/runner/.go/go1.21.3/src/database/sql/ctxutil.go#L69"
            return { _0 : (null : stdgo._internal.database.sql.driver.Driver_result.Result), _1 : _err };
        };
        //"file:///home/runner/.go/go1.21.3/src/database/sql/ctxutil.go#L72"
        {
            var __select__ = true;
            var __c__0 = null;
            while (__select__) {
                if ({
                    if (__c__0 == null) {
                        __c__0 = _ctx.done();
                    };
                    __c__0 != null && __c__0.__isGet__(true);
                }) {
                    __select__ = false;
                    {
                        __c__0.__get__();
                        {
                            //"file:///home/runner/.go/go1.21.3/src/database/sql/ctxutil.go#L75"
                            return { _0 : (null : stdgo._internal.database.sql.driver.Driver_result.Result), _1 : _ctx.err() };
                        };
                    };
                } else {
                    __select__ = false;
                    {};
                };
                #if (sys || hxnodejs) Sys.sleep(0.01) #else null #end;
                stdgo._internal.internal.Async.tick();
            };
            __c__0.__reset__();
        };
        //"file:///home/runner/.go/go1.21.3/src/database/sql/ctxutil.go#L77"
        return _si.exec(_dargs);
    }
