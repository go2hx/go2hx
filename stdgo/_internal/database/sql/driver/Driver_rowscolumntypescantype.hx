package stdgo._internal.database.sql.driver;
@:interface typedef RowsColumnTypeScanType = stdgo.StructType & {
    > stdgo._internal.database.sql.driver.Driver_rows.Rows,
    @:interfacetypeffun
    function columnTypeScanType(_index:stdgo.GoInt):stdgo._internal.reflect.Reflect_type_.Type_;
};
