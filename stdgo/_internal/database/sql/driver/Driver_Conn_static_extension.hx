package stdgo._internal.database.sql.driver;
@:keep class Conn_static_extension {
    static public function begin(t:Conn):{ var _0 : stdgo._internal.database.sql.driver.Driver_Tx.Tx; var _1 : stdgo.Error; } return t.begin();
    static public function close(t:Conn):stdgo.Error return t.close();
    static public function prepare(t:Conn, _query:stdgo.GoString):{ var _0 : stdgo._internal.database.sql.driver.Driver_Stmt.Stmt; var _1 : stdgo.Error; } return t.prepare(_query);
}
