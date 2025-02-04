package stdgo._internal.database.sql.driver;
@:keep class Conn_static_extension {
    @:interfacetypeffun
    static public function begin(t:stdgo._internal.database.sql.driver.Driver_conn.Conn):{ var _0 : stdgo._internal.database.sql.driver.Driver_tx.Tx; var _1 : stdgo.Error; } return t.begin();
    @:interfacetypeffun
    static public function close(t:stdgo._internal.database.sql.driver.Driver_conn.Conn):stdgo.Error return t.close();
    @:interfacetypeffun
    static public function prepare(t:stdgo._internal.database.sql.driver.Driver_conn.Conn, _query:stdgo.GoString):{ var _0 : stdgo._internal.database.sql.driver.Driver_stmt.Stmt; var _1 : stdgo.Error; } return t.prepare(_query);
}
