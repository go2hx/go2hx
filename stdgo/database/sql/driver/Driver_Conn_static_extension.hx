package stdgo.database.sql.driver;
class Conn_static_extension {
    static public function begin(t:stdgo._internal.database.sql.driver.Driver_Conn.Conn):stdgo.Tuple<Tx, stdgo.Error> {
        return {
            final obj = stdgo._internal.database.sql.driver.Driver_Conn_static_extension.Conn_static_extension.begin(t);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function close(t:stdgo._internal.database.sql.driver.Driver_Conn.Conn):stdgo.Error {
        return stdgo._internal.database.sql.driver.Driver_Conn_static_extension.Conn_static_extension.close(t);
    }
    static public function prepare(t:stdgo._internal.database.sql.driver.Driver_Conn.Conn, _query:String):stdgo.Tuple<Stmt, stdgo.Error> {
        final _query = (_query : stdgo.GoString);
        return {
            final obj = stdgo._internal.database.sql.driver.Driver_Conn_static_extension.Conn_static_extension.prepare(t, _query);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
