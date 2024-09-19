package stdgo._internal.database.sql;
function _ctxDriverQuery(_ctx:stdgo._internal.context.Context_Context.Context, _queryerCtx:stdgo._internal.database.sql.driver.Driver_QueryerContext.QueryerContext, _queryer:stdgo._internal.database.sql.driver.Driver_Queryer.Queryer, _query:stdgo.GoString, _nvdargs:stdgo.Slice<stdgo._internal.database.sql.driver.Driver_NamedValue.NamedValue>):{ var _0 : stdgo._internal.database.sql.driver.Driver_Rows.Rows; var _1 : stdgo.Error; } {
        if (_queryerCtx != null) {
            return _queryerCtx.queryContext(_ctx, _query?.__copy__(), _nvdargs);
        };
        var __tmp__ = stdgo._internal.database.sql.Sql__namedValueToValue._namedValueToValue(_nvdargs), _dargs:stdgo.Slice<stdgo._internal.database.sql.driver.Driver_Value.Value> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : (null : stdgo._internal.database.sql.driver.Driver_Rows.Rows), _1 : _err };
        };
        {
            var __select__ = true;
            while (__select__) {
                if (_ctx.done() != null && _ctx.done().__isGet__()) {
                    __select__ = false;
                    {
                        _ctx.done().__get__();
                        {
                            return { _0 : (null : stdgo._internal.database.sql.driver.Driver_Rows.Rows), _1 : _ctx.err() };
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
        return _queryer.query(_query?.__copy__(), _dargs);
    }
