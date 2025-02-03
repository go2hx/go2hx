package stdgo.database.sql;
class Row_static_extension {
    static public function err(_r:Row):stdgo.Error {
        final _r = (_r : stdgo.Ref<stdgo._internal.database.sql.Sql_Row.Row>);
        return stdgo._internal.database.sql.Sql_Row_static_extension.Row_static_extension.err(_r);
    }
    static public function scan(_r:Row, _dest:haxe.Rest<stdgo.AnyInterface>):stdgo.Error {
        final _r = (_r : stdgo.Ref<stdgo._internal.database.sql.Sql_Row.Row>);
        return stdgo._internal.database.sql.Sql_Row_static_extension.Row_static_extension.scan(_r, ...[for (i in _dest) i]);
    }
}
