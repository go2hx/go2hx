package stdgo._internal.database.sql.driver;
@:interface typedef RowsColumnTypeScanType = stdgo.StructType & {
    > stdgo._internal.database.sql.driver.Driver_Rows.Rows,
    /**
        
        
        
    **/
    @:interfacetypeffun
    public dynamic function columnTypeScanType(_index:stdgo.GoInt):stdgo._internal.reflect.Reflect_Type_.Type_;
};
