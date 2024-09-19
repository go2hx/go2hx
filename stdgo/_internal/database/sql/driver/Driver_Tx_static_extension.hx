package stdgo._internal.database.sql.driver;
@:keep class Tx_static_extension {
    static public function rollback(t:Tx):stdgo.Error return t.rollback();
    static public function commit(t:Tx):stdgo.Error return t.commit();
}
