package stdgo._internal.database.sql.driver;
@:keep class Result_static_extension {
    static public function rowsAffected(t:stdgo._internal.database.sql.driver.Driver_Result.Result):{ var _0 : stdgo.GoInt64; var _1 : stdgo.Error; } return t.rowsAffected();
    static public function lastInsertId(t:stdgo._internal.database.sql.driver.Driver_Result.Result):{ var _0 : stdgo.GoInt64; var _1 : stdgo.Error; } return t.lastInsertId();
}
