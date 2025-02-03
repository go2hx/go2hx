package stdgo.database.sql;
private function set_errTxDone(v:stdgo.Error):stdgo.Error {
        stdgo._internal.database.sql.Sql_errTxDone.errTxDone = (v : stdgo.Error);
        return v;
    }
