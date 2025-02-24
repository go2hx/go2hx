package stdgo._internal.database.sql.driver;
@:interface typedef RowsColumnTypeScanType = stdgo.StructType & {
    @:interfacetypeffun
    function columnTypeScanType(_index:stdgo.GoInt):stdgo._internal.reflect.Reflect_type_.Type_;
    function close():stdgo.Error;
    function columns():stdgo.Slice<stdgo.GoString>;
    function next(_0:stdgo.Slice<stdgo._internal.database.sql.driver.Driver_value.Value>):stdgo.Error;
};
