package stdgo._internal.database.sql.driver;
@:interface typedef ConnBeginTx = stdgo.StructType & {
    @:interfacetypeffun
    function beginTx(_ctx:stdgo._internal.context.Context_context.Context, _opts:stdgo._internal.database.sql.driver.Driver_txoptions.TxOptions):{ var _0 : stdgo._internal.database.sql.driver.Driver_tx.Tx; var _1 : stdgo.Error; };
};
