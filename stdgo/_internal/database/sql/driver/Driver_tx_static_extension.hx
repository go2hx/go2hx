package stdgo._internal.database.sql.driver;
@:keep class Tx_static_extension {
    @:interfacetypeffun
    static public function rollback(t:stdgo._internal.database.sql.driver.Driver_tx.Tx):stdgo.Error return t.rollback();
    @:interfacetypeffun
    static public function commit(t:stdgo._internal.database.sql.driver.Driver_tx.Tx):stdgo.Error return t.commit();
}
