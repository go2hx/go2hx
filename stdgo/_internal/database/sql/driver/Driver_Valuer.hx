package stdgo._internal.database.sql.driver;
import stdgo._internal.errors.Errors;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.fmt.Fmt;
@:interface typedef Valuer = stdgo.StructType & {
    /**
        Value returns a driver Value.
        Value must not panic.
        
        
    **/
    @:interfacetypeffun
    public dynamic function value():{ var _0 : stdgo._internal.database.sql.driver.Driver_Value.Value; var _1 : stdgo.Error; };
};
