package stdgo._internal.database.sql.driver;
@:interface typedef RowsColumnTypeDatabaseTypeName = stdgo.StructType & {
    > stdgo._internal.database.sql.driver.Driver_rows.Rows,
    /**
        
        
        
    **/
    @:interfacetypeffun
    public dynamic function columnTypeDatabaseTypeName(_index:stdgo.GoInt):stdgo.GoString;
};
