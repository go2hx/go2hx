package stdgo._internal.database.sql;
@:keep class Result_static_extension {
    @:interfacetypeffun
    static public function rowsAffected(t:stdgo._internal.database.sql.Sql_result.Result):{ var _0 : stdgo.GoInt64; var _1 : stdgo.Error; } return t.rowsAffected();
    @:interfacetypeffun
    static public function lastInsertId(t:stdgo._internal.database.sql.Sql_result.Result):{ var _0 : stdgo.GoInt64; var _1 : stdgo.Error; } return t.lastInsertId();
}
