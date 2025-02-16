package stdgo._internal.database.sql.driver;
@:interface typedef Queryer = stdgo.StructType & {
    @:interfacetypeffun
    function query(_query:stdgo.GoString, _args:stdgo.Slice<stdgo._internal.database.sql.driver.Driver_value.Value>):{ var _0 : stdgo._internal.database.sql.driver.Driver_rows.Rows; var _1 : stdgo.Error; };
};
