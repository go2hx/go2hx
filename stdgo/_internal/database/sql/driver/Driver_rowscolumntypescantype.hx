package stdgo._internal.database.sql.driver;
@:interface typedef RowsColumnTypeScanType = stdgo.StructType & {
    /**
        
        
        
    **/
    @:interfacetypeffun
    public dynamic function columnTypeScanType(_index:stdgo.GoInt):stdgo._internal.reflect.Reflect_type_.Type_;
    public dynamic function close():stdgo.Error;
    public dynamic function columns():stdgo.Slice<stdgo.GoString>;
    public dynamic function next(_0:stdgo.Slice<stdgo._internal.database.sql.driver.Driver_value.Value>):stdgo.Error;
};
