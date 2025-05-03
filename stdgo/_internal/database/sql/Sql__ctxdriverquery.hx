package stdgo._internal.database.sql;
function _ctxDriverQuery(_ctx:stdgo._internal.context.Context_context.Context, _queryerCtx:stdgo._internal.database.sql.driver.Driver_queryercontext.QueryerContext, _queryer:stdgo._internal.database.sql.driver.Driver_queryer.Queryer, _query:stdgo.GoString, _nvdargs:stdgo.Slice<stdgo._internal.database.sql.driver.Driver_namedvalue.NamedValue>):{ var _0 : stdgo._internal.database.sql.driver.Driver_rows.Rows; var _1 : stdgo.Error; } {
        //"file:///home/runner/.go/go1.21.3/src/database/sql/ctxutil.go#L47"
        if (_queryerCtx != null) {
            //"file:///home/runner/.go/go1.21.3/src/database/sql/ctxutil.go#L48"
            return _queryerCtx.queryContext(_ctx, _query?.__copy__(), _nvdargs);
        };
        var __tmp__ = stdgo._internal.database.sql.Sql__namedvaluetovalue._namedValueToValue(_nvdargs), _dargs:stdgo.Slice<stdgo._internal.database.sql.driver.Driver_value.Value> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/database/sql/ctxutil.go#L51"
        if (_err != null) {
            //"file:///home/runner/.go/go1.21.3/src/database/sql/ctxutil.go#L52"
            return { _0 : (null : stdgo._internal.database.sql.driver.Driver_rows.Rows), _1 : _err };
        };
        //"file:///home/runner/.go/go1.21.3/src/database/sql/ctxutil.go#L55"
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
                            //"file:///home/runner/.go/go1.21.3/src/database/sql/ctxutil.go#L58"
                            return { _0 : (null : stdgo._internal.database.sql.driver.Driver_rows.Rows), _1 : _ctx.err() };
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
        //"file:///home/runner/.go/go1.21.3/src/database/sql/ctxutil.go#L60"
        return _queryer.query(_query?.__copy__(), _dargs);
    }
