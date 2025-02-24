package stdgo._internal.database.sql.driver;
@:interface typedef Stmt = stdgo.StructType & {
    @:interfacetypeffun
    function close():stdgo.Error;
    @:interfacetypeffun
    function numInput():stdgo.GoInt;
    @:interfacetypeffun
    function exec(_args:stdgo.Slice<stdgo._internal.database.sql.driver.Driver_value.Value>):{ var _0 : stdgo._internal.database.sql.driver.Driver_result.Result; var _1 : stdgo.Error; };
    @:interfacetypeffun
    function query(_args:stdgo.Slice<stdgo._internal.database.sql.driver.Driver_value.Value>):{ var _0 : stdgo._internal.database.sql.driver.Driver_rows.Rows; var _1 : stdgo.Error; };
};
