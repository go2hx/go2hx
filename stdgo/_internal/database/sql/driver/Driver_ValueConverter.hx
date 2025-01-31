package stdgo._internal.database.sql.driver;
import stdgo._internal.errors.Errors;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.fmt.Fmt;
@:interface typedef ValueConverter = stdgo.StructType & {
    /**
        ConvertValue converts a value to a driver Value.
        
        
    **/
    @:interfacetypeffun
    public dynamic function convertValue(_v:stdgo.AnyInterface):{ var _0 : stdgo._internal.database.sql.driver.Driver_Value.Value; var _1 : stdgo.Error; };
};
