package stdgo.database.sql.driver;
class ExecerContext_static_extension {
    static public function execContext(t:stdgo._internal.database.sql.driver.Driver_ExecerContext.ExecerContext, _ctx:stdgo._internal.context.Context_Context.Context, _query:String, _args:Array<NamedValue>):stdgo.Tuple<Result, stdgo.Error> {
        final _query = (_query : stdgo.GoString);
        final _args = ([for (i in _args) i] : stdgo.Slice<stdgo._internal.database.sql.driver.Driver_NamedValue.NamedValue>);
        return {
            final obj = stdgo._internal.database.sql.driver.Driver_ExecerContext_static_extension.ExecerContext_static_extension.execContext(t, _ctx, _query, _args);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
