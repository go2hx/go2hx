package stdgo._internal.database.sql;
function _ctxDriverPrepare(_ctx:stdgo._internal.context.Context_context.Context, _ci:stdgo._internal.database.sql.driver.Driver_conn.Conn, _query:stdgo.GoString):{ var _0 : stdgo._internal.database.sql.driver.Driver_stmt.Stmt; var _1 : stdgo.Error; } {
        //"file:///home/runner/.go/go1.21.3/src/database/sql/ctxutil.go#L14"
        {
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_ci) : stdgo._internal.database.sql.driver.Driver_connpreparecontext.ConnPrepareContext)) : stdgo._internal.database.sql.driver.Driver_connpreparecontext.ConnPrepareContext), _1 : true };
            } catch(_) {
                { _0 : (null : stdgo._internal.database.sql.driver.Driver_connpreparecontext.ConnPrepareContext), _1 : false };
            }, _ciCtx = __tmp__._0, _is = __tmp__._1;
            if (_is) {
                //"file:///home/runner/.go/go1.21.3/src/database/sql/ctxutil.go#L15"
                return _ciCtx.prepareContext(_ctx, _query?.__copy__());
            };
        };
        var __tmp__ = _ci.prepare(_query?.__copy__()), _si:stdgo._internal.database.sql.driver.Driver_stmt.Stmt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/database/sql/ctxutil.go#L18"
        if (_err == null) {
            //"file:///home/runner/.go/go1.21.3/src/database/sql/ctxutil.go#L19"
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
                                //"file:///home/runner/.go/go1.21.3/src/database/sql/ctxutil.go#L22"
                                _si.close();
                                //"file:///home/runner/.go/go1.21.3/src/database/sql/ctxutil.go#L23"
                                return { _0 : (null : stdgo._internal.database.sql.driver.Driver_stmt.Stmt), _1 : _ctx.err() };
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
        };
        //"file:///home/runner/.go/go1.21.3/src/database/sql/ctxutil.go#L26"
        return { _0 : _si, _1 : _err };
    }
