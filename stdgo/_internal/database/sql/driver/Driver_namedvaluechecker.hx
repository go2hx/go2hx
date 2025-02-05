package stdgo._internal.database.sql.driver;
@:interface typedef NamedValueChecker = stdgo.StructType & {
    /**
        * CheckNamedValue is called before passing arguments to the driver
        * and is called in place of any ColumnConverter. CheckNamedValue must do type
        * validation and conversion as appropriate for the driver.
        
        
    **/
    @:interfacetypeffun
    public dynamic function checkNamedValue(_0:stdgo.Ref<stdgo._internal.database.sql.driver.Driver_namedvalue.NamedValue>):stdgo.Error;
};
