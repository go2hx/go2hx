package stdgo._internal.database.sql.driver;
@:interface typedef ColumnConverter = stdgo.StructType & {
    /**
        * ColumnConverter returns a ValueConverter for the provided
        * column index. If the type of a specific column isn't known
        * or shouldn't be handled specially, DefaultValueConverter
        * can be returned.
        
        
    **/
    @:interfacetypeffun
    public dynamic function columnConverter(_idx:stdgo.GoInt):stdgo._internal.database.sql.driver.Driver_valueconverter.ValueConverter;
};
