package stdgo._internal.database.sql.driver;
@:interface typedef RowsColumnTypeNullable = stdgo.StructType & {
    /**
        
        
        
    **/
    @:interfacetypeffun
    public dynamic function columnTypeNullable(_index:stdgo.GoInt):{ var _0 : Bool; var _1 : Bool; };
    public dynamic function close():stdgo.Error;
    public dynamic function columns():stdgo.Slice<stdgo.GoString>;
    public dynamic function next(_0:stdgo.Slice<stdgo._internal.database.sql.driver.Driver_value.Value>):stdgo.Error;
};
