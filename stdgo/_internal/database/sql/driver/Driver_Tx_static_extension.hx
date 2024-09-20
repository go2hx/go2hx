package stdgo._internal.database.sql.driver;
@:keep class Tx_static_extension {
    static public function rollback(t:stdgo._internal.database.sql.driver.Driver_Tx.Tx):stdgo.Error return t.rollback();
    static public function commit(t:stdgo._internal.database.sql.driver.Driver_Tx.Tx):stdgo.Error return t.commit();
}
