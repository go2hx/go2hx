package stdgo._internal.database.sql.driver;
@:keep class ConnBeginTx_static_extension {
    @:interfacetypeffun
    static public function beginTx(t:stdgo._internal.database.sql.driver.Driver_ConnBeginTx.ConnBeginTx, _ctx:stdgo._internal.context.Context_Context.Context, _opts:stdgo._internal.database.sql.driver.Driver_TxOptions.TxOptions):{ var _0 : stdgo._internal.database.sql.driver.Driver_Tx.Tx; var _1 : stdgo.Error; } return t.beginTx(_ctx, _opts);
}
