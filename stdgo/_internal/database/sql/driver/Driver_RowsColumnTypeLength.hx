package stdgo._internal.database.sql.driver;
typedef RowsColumnTypeLength = stdgo.StructType & {
    > stdgo._internal.database.sql.driver.Driver_Rows.Rows,
    /**
        
        
        
    **/
    @:interfacetypeffun
    public dynamic function columnTypeLength(_index:stdgo.GoInt):{ var _0 : stdgo.GoInt64; var _1 : Bool; };
};
