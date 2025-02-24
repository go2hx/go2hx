package stdgo._internal.database.sql.driver;
@:interface typedef RowsColumnTypeDatabaseTypeName = stdgo.StructType & {
    @:interfacetypeffun
    function columnTypeDatabaseTypeName(_index:stdgo.GoInt):stdgo.GoString;
    function close():stdgo.Error;
    function columns():stdgo.Slice<stdgo.GoString>;
    function next(_0:stdgo.Slice<stdgo._internal.database.sql.driver.Driver_value.Value>):stdgo.Error;
};
