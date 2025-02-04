package stdgo._internal.database.sql.driver;
@:keep class Stmt_static_extension {
    @:interfacetypeffun
    static public function query(t:stdgo._internal.database.sql.driver.Driver_stmt.Stmt, _args:stdgo.Slice<stdgo._internal.database.sql.driver.Driver_value.Value>):{ var _0 : stdgo._internal.database.sql.driver.Driver_rows.Rows; var _1 : stdgo.Error; } return t.query(_args);
    @:interfacetypeffun
    static public function exec(t:stdgo._internal.database.sql.driver.Driver_stmt.Stmt, _args:stdgo.Slice<stdgo._internal.database.sql.driver.Driver_value.Value>):{ var _0 : stdgo._internal.database.sql.driver.Driver_result.Result; var _1 : stdgo.Error; } return t.exec(_args);
    @:interfacetypeffun
    static public function numInput(t:stdgo._internal.database.sql.driver.Driver_stmt.Stmt):stdgo.GoInt return t.numInput();
    @:interfacetypeffun
    static public function close(t:stdgo._internal.database.sql.driver.Driver_stmt.Stmt):stdgo.Error return t.close();
}
