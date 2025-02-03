package stdgo.database.sql.driver;
private function set_errSkip(v:stdgo.Error):stdgo.Error {
        stdgo._internal.database.sql.driver.Driver_errSkip.errSkip = (v : stdgo.Error);
        return v;
    }
