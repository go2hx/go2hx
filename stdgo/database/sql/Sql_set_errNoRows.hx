package stdgo.database.sql;
private function set_errNoRows(v:stdgo.Error):stdgo.Error {
        stdgo._internal.database.sql.Sql_errNoRows.errNoRows = (v : stdgo.Error);
        return v;
    }
