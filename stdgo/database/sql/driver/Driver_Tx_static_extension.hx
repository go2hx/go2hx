package stdgo.database.sql.driver;
class Tx_static_extension {
    static public function rollback(t:stdgo._internal.database.sql.driver.Driver_Tx.Tx):stdgo.Error {
        return stdgo._internal.database.sql.driver.Driver_Tx_static_extension.Tx_static_extension.rollback(t);
    }
    static public function commit(t:stdgo._internal.database.sql.driver.Driver_Tx.Tx):stdgo.Error {
        return stdgo._internal.database.sql.driver.Driver_Tx_static_extension.Tx_static_extension.commit(t);
    }
}
