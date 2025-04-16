package stdgo._internal.database.sql.driver;
@:interface typedef RowsColumnTypePrecisionScale = stdgo.StructType & {
    /**
        
        
        
    **/
    @:interfacetypeffun
    public dynamic function columnTypePrecisionScale(_index:stdgo.GoInt):{ var _0 : stdgo.GoInt64; var _1 : stdgo.GoInt64; var _2 : Bool; };
    public dynamic function close():stdgo.Error;
    public dynamic function columns():stdgo.Slice<stdgo.GoString>;
    public dynamic function next(_0:stdgo.Slice<stdgo._internal.database.sql.driver.Driver_value.Value>):stdgo.Error;
};
