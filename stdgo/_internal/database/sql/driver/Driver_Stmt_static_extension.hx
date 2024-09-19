package stdgo._internal.database.sql.driver;
@:keep class Stmt_static_extension {
    static public function query(t:Stmt, _args:stdgo.Slice<stdgo._internal.database.sql.driver.Driver_Value.Value>):{ var _0 : stdgo._internal.database.sql.driver.Driver_Rows.Rows; var _1 : stdgo.Error; } return t.query(_args);
    static public function exec(t:Stmt, _args:stdgo.Slice<stdgo._internal.database.sql.driver.Driver_Value.Value>):{ var _0 : stdgo._internal.database.sql.driver.Driver_Result.Result; var _1 : stdgo.Error; } return t.exec(_args);
    static public function numInput(t:Stmt):stdgo.GoInt return t.numInput();
    static public function close(t:Stmt):stdgo.Error return t.close();
}
