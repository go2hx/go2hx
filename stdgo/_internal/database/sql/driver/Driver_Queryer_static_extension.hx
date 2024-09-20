package stdgo._internal.database.sql.driver;
@:keep class Queryer_static_extension {
    static public function query(t:stdgo._internal.database.sql.driver.Driver_Queryer.Queryer, _query:stdgo.GoString, _args:stdgo.Slice<stdgo._internal.database.sql.driver.Driver_Value.Value>):{ var _0 : stdgo._internal.database.sql.driver.Driver_Rows.Rows; var _1 : stdgo.Error; } return t.query(_query, _args);
}
