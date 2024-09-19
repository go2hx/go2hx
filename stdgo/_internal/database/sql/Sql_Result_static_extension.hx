package stdgo._internal.database.sql;
@:keep class Result_static_extension {
    static public function rowsAffected(t:Result):{ var _0 : stdgo.GoInt64; var _1 : stdgo.Error; } return t.rowsAffected();
    static public function lastInsertId(t:Result):{ var _0 : stdgo.GoInt64; var _1 : stdgo.Error; } return t.lastInsertId();
}
