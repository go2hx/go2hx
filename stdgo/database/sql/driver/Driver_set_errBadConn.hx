package stdgo.database.sql.driver;
private function set_errBadConn(v:stdgo.Error):stdgo.Error {
        stdgo._internal.database.sql.driver.Driver_errBadConn.errBadConn = (v : stdgo.Error);
        return v;
    }
