package stdgo._internal.database.sql.driver;
@:interface typedef RowsColumnTypeDatabaseTypeName = stdgo.StructType & {
    /**
        
        
        
    **/
    @:interfacetypeffun
    public dynamic function columnTypeDatabaseTypeName(_index:stdgo.GoInt):stdgo.GoString;
    public dynamic function close():stdgo.Error;
    public dynamic function columns():stdgo.Slice<stdgo.GoString>;
    public dynamic function next(_0:stdgo.Slice<stdgo._internal.database.sql.driver.Driver_value.Value>):stdgo.Error;
};
