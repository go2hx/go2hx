package stdgo.database.sql.driver;
class StmtExecContext_static_extension {
    static public function execContext(t:stdgo._internal.database.sql.driver.Driver_StmtExecContext.StmtExecContext, _ctx:stdgo._internal.context.Context_Context.Context, _args:Array<NamedValue>):stdgo.Tuple<Result, stdgo.Error> {
        final _args = ([for (i in _args) i] : stdgo.Slice<stdgo._internal.database.sql.driver.Driver_NamedValue.NamedValue>);
        return {
            final obj = stdgo._internal.database.sql.driver.Driver_StmtExecContext_static_extension.StmtExecContext_static_extension.execContext(t, _ctx, _args);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
