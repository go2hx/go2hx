package stdgo._internal.database.sql.driver;
@:keep class Execer_static_extension {
    @:interfacetypeffun
    static public function exec(t:stdgo._internal.database.sql.driver.Driver_Execer.Execer, _query:stdgo.GoString, _args:stdgo.Slice<stdgo._internal.database.sql.driver.Driver_Value.Value>):{ var _0 : stdgo._internal.database.sql.driver.Driver_Result.Result; var _1 : stdgo.Error; } return t.exec(_query, _args);
}
