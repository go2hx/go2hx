package stdgo._internal.database.sql.driver;
typedef RowsColumnTypePrecisionScale = stdgo.StructType & {
    > stdgo._internal.database.sql.driver.Driver_Rows.Rows,
    /**
        
        
        
    **/
    public dynamic function columnTypePrecisionScale(_index:stdgo.GoInt):{ var _0 : stdgo.GoInt64; var _1 : stdgo.GoInt64; var _2 : Bool; };
};
