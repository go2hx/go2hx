package stdgo.database.sql.driver;
class ConnPrepareContext_static_extension {
    static public function prepareContext(t:stdgo._internal.database.sql.driver.Driver_ConnPrepareContext.ConnPrepareContext, _ctx:stdgo._internal.context.Context_Context.Context, _query:String):stdgo.Tuple<Stmt, stdgo.Error> {
        final _query = (_query : stdgo.GoString);
        return {
            final obj = stdgo._internal.database.sql.driver.Driver_ConnPrepareContext_static_extension.ConnPrepareContext_static_extension.prepareContext(t, _ctx, _query);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
