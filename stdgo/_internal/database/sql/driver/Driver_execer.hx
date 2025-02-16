package stdgo._internal.database.sql.driver;
@:interface typedef Execer = stdgo.StructType & {
    @:interfacetypeffun
    function exec(_query:stdgo.GoString, _args:stdgo.Slice<stdgo._internal.database.sql.driver.Driver_value.Value>):{ var _0 : stdgo._internal.database.sql.driver.Driver_result.Result; var _1 : stdgo.Error; };
};
