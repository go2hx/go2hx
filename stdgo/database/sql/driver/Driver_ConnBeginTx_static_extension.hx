package stdgo.database.sql.driver;
class ConnBeginTx_static_extension {
    static public function beginTx(t:stdgo._internal.database.sql.driver.Driver_ConnBeginTx.ConnBeginTx, _ctx:stdgo._internal.context.Context_Context.Context, _opts:TxOptions):stdgo.Tuple<Tx, stdgo.Error> {
        return {
            final obj = stdgo._internal.database.sql.driver.Driver_ConnBeginTx_static_extension.ConnBeginTx_static_extension.beginTx(t, _ctx, _opts);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
