package stdgo._internal.database.sql;
function _ctxDriverExec(_ctx:stdgo._internal.context.Context_context.Context, _execerCtx:stdgo._internal.database.sql.driver.Driver_execercontext.ExecerContext, _execer:stdgo._internal.database.sql.driver.Driver_execer.Execer, _query:stdgo.GoString, _nvdargs:stdgo.Slice<stdgo._internal.database.sql.driver.Driver_namedvalue.NamedValue>):{ var _0 : stdgo._internal.database.sql.driver.Driver_result.Result; var _1 : stdgo.Error; } {
        if (_execerCtx != null) {
            return _execerCtx.execContext(_ctx, _query?.__copy__(), _nvdargs);
        };
        var __tmp__ = stdgo._internal.database.sql.Sql__namedvaluetovalue._namedValueToValue(_nvdargs), _dargs:stdgo.Slice<stdgo._internal.database.sql.driver.Driver_value.Value> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : (null : stdgo._internal.database.sql.driver.Driver_result.Result), _1 : _err };
        };
        {
            var __select__ = true;
            var __c__0 = _ctx.done();
            while (__select__) {
                if (__c__0 != null && __c__0.__isGet__(true)) {
                    __select__ = false;
                    {
                        __c__0.__get__();
                        {
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
        return _execer.exec(_query?.__copy__(), _dargs);
    }
