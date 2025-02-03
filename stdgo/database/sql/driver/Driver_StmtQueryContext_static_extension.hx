package stdgo.database.sql.driver;
class StmtQueryContext_static_extension {
    static public function queryContext(t:stdgo._internal.database.sql.driver.Driver_StmtQueryContext.StmtQueryContext, _ctx:stdgo._internal.context.Context_Context.Context, _args:Array<NamedValue>):stdgo.Tuple<Rows, stdgo.Error> {
        final _args = ([for (i in _args) i] : stdgo.Slice<stdgo._internal.database.sql.driver.Driver_NamedValue.NamedValue>);
        return {
            final obj = stdgo._internal.database.sql.driver.Driver_StmtQueryContext_static_extension.StmtQueryContext_static_extension.queryContext(t, _ctx, _args);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
