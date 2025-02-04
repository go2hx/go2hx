package stdgo._internal.database.sql;
function _ctxDriverPrepare(_ctx:stdgo._internal.context.Context_context.Context, _ci:stdgo._internal.database.sql.driver.Driver_conn.Conn, _query:stdgo.GoString):{ var _0 : stdgo._internal.database.sql.driver.Driver_stmt.Stmt; var _1 : stdgo.Error; } {
        {
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_ci) : stdgo._internal.database.sql.driver.Driver_connpreparecontext.ConnPrepareContext)) : stdgo._internal.database.sql.driver.Driver_connpreparecontext.ConnPrepareContext), _1 : true };
            } catch(_) {
                { _0 : (null : stdgo._internal.database.sql.driver.Driver_connpreparecontext.ConnPrepareContext), _1 : false };
            }, _ciCtx = __tmp__._0, _is = __tmp__._1;
            if (_is) {
                return _ciCtx.prepareContext(_ctx, _query?.__copy__());
            };
        };
        var __tmp__ = _ci.prepare(_query?.__copy__()), _si:stdgo._internal.database.sql.driver.Driver_stmt.Stmt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err == null) {
            {
                var __select__ = true;
                while (__select__) {
                    if (_ctx.done() != null && _ctx.done().__isGet__()) {
                        __select__ = false;
                        {
                            _ctx.done().__get__();
                            {
                                _si.close();
                                return { _0 : (null : stdgo._internal.database.sql.driver.Driver_stmt.Stmt), _1 : _ctx.err() };
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
        };
        return { _0 : _si, _1 : _err };
    }
