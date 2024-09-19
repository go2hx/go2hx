package stdgo._internal.database.sql.driver;
typedef ValueConverter = stdgo.StructType & {
    /**
        ConvertValue converts a value to a driver Value.
        
        
    **/
    public dynamic function convertValue(_v:stdgo.AnyInterface):{ var _0 : stdgo._internal.database.sql.driver.Driver_Value.Value; var _1 : stdgo.Error; };
};
