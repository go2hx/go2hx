package stdgo._internal.database.sql.driver;
typedef RowsColumnTypeScanType = stdgo.StructType & {
    > stdgo._internal.database.sql.driver.Driver_Rows.Rows,
    /**
        
        
        
    **/
    public dynamic function columnTypeScanType(_index:stdgo.GoInt):stdgo._internal.reflect.Reflect_Type_.Type_;
};
