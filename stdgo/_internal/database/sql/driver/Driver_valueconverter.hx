package stdgo._internal.database.sql.driver;
@:interface typedef ValueConverter = stdgo.StructType & {
    /**
        * ConvertValue converts a value to a driver Value.
        
        
    **/
    @:interfacetypeffun
    public dynamic function convertValue(_v:stdgo.AnyInterface):{ var _0 : stdgo._internal.database.sql.driver.Driver_value.Value; var _1 : stdgo.Error; };
};
