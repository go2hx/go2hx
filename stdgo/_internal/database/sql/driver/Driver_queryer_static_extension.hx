package stdgo._internal.database.sql.driver;
@:keep class Queryer_static_extension {
    @:interfacetypeffun
    static public function query(t:stdgo._internal.database.sql.driver.Driver_queryer.Queryer, _query:stdgo.GoString, _args:stdgo.Slice<stdgo._internal.database.sql.driver.Driver_value.Value>):{ var _0 : stdgo._internal.database.sql.driver.Driver_rows.Rows; var _1 : stdgo.Error; } return t.query(_query, _args);
}
