package stdgo._internal.database.sql.driver;
typedef RowsColumnTypeDatabaseTypeName = stdgo.StructType & {
    > stdgo._internal.database.sql.driver.Driver_Rows.Rows,
    /**
        
        
        
    **/
    @:interfacetypeffun
    public dynamic function columnTypeDatabaseTypeName(_index:stdgo.GoInt):stdgo.GoString;
};
