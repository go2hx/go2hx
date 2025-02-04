package stdgo._internal.database.sql.driver;
@:keep class ConnBeginTx_static_extension {
    @:interfacetypeffun
    static public function beginTx(t:stdgo._internal.database.sql.driver.Driver_connbegintx.ConnBeginTx, _ctx:stdgo._internal.context.Context_context.Context, _opts:stdgo._internal.database.sql.driver.Driver_txoptions.TxOptions):{ var _0 : stdgo._internal.database.sql.driver.Driver_tx.Tx; var _1 : stdgo.Error; } return t.beginTx(_ctx, _opts);
}
