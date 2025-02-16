package stdgo._internal.database.sql.driver;
@:interface typedef Rows = stdgo.StructType & {
    @:interfacetypeffun
    function columns():stdgo.Slice<stdgo.GoString>;
    @:interfacetypeffun
    function close():stdgo.Error;
    @:interfacetypeffun
    function next(_dest:stdgo.Slice<stdgo._internal.database.sql.driver.Driver_value.Value>):stdgo.Error;
};
