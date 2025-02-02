package stdgo._internal.database.sql.driver;
@:interface typedef RowsColumnTypeNullable = stdgo.StructType & {
    > stdgo._internal.database.sql.driver.Driver_Rows.Rows,
    /**
        
        
        
    **/
    @:interfacetypeffun
    public dynamic function columnTypeNullable(_index:stdgo.GoInt):{ var _0 : Bool; var _1 : Bool; };
};
