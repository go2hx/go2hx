package stdgo._internal.database.sql.driver;
@:interface typedef RowsNextResultSet = stdgo.StructType & {
    @:interfacetypeffun
    function hasNextResultSet():Bool;
    @:interfacetypeffun
    function nextResultSet():stdgo.Error;
    function close():stdgo.Error;
    function columns():stdgo.Slice<stdgo.GoString>;
    function next(_0:stdgo.Slice<stdgo._internal.database.sql.driver.Driver_value.Value>):stdgo.Error;
};
