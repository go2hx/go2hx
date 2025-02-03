package stdgo.database.sql;
private function set_errConnDone(v:stdgo.Error):stdgo.Error {
        stdgo._internal.database.sql.Sql_errConnDone.errConnDone = (v : stdgo.Error);
        return v;
    }
