package stdgo._internal.database.sql.driver;
import stdgo._internal.errors.Errors;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.fmt.Fmt;
@:interface typedef Pinger = stdgo.StructType & {
    /**
        
        
        
    **/
    @:interfacetypeffun
    public dynamic function ping(_ctx:stdgo._internal.context.Context_Context.Context):stdgo.Error;
};
