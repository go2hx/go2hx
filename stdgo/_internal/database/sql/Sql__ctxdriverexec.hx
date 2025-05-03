package stdgo._internal.database.sql;
function _ctxDriverExec(_ctx:stdgo._internal.context.Context_context.Context, _execerCtx:stdgo._internal.database.sql.driver.Driver_execercontext.ExecerContext, _execer:stdgo._internal.database.sql.driver.Driver_execer.Execer, _query:stdgo.GoString, _nvdargs:stdgo.Slice<stdgo._internal.database.sql.driver.Driver_namedvalue.NamedValue>):{ var _0 : stdgo._internal.database.sql.driver.Driver_result.Result; var _1 : stdgo.Error; } {
        //"file:///home/runner/.go/go1.21.3/src/database/sql/ctxutil.go#L30"
        if (_execerCtx != null) {
            //"file:///home/runner/.go/go1.21.3/src/database/sql/ctxutil.go#L31"
            return _execerCtx.execContext(_ctx, _query?.__copy__(), _nvdargs);
        };
        var __tmp__ = stdgo._internal.database.sql.Sql__namedvaluetovalue._namedValueToValue(_nvdargs), _dargs:stdgo.Slice<stdgo._internal.database.sql.driver.Driver_value.Value> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/database/sql/ctxutil.go#L34"
        if (_err != null) {
            //"file:///home/runner/.go/go1.21.3/src/database/sql/ctxutil.go#L35"
            return { _0 : (null : stdgo._internal.database.sql.driver.Driver_result.Result), _1 : _err };
        };
        //"file:///home/runner/.go/go1.21.3/src/database/sql/ctxutil.go#L38"
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
                            //"file:///home/runner/.go/go1.21.3/src/database/sql/ctxutil.go#L41"
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
        //"file:///home/runner/.go/go1.21.3/src/database/sql/ctxutil.go#L43"
        return _execer.exec(_query?.__copy__(), _dargs);
    }
