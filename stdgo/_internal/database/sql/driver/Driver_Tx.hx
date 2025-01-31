package stdgo._internal.database.sql.driver;
import stdgo._internal.errors.Errors;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.fmt.Fmt;
@:interface typedef Tx = stdgo.StructType & {
    /**
        
        
        
    **/
    @:interfacetypeffun
    public dynamic function commit():stdgo.Error;
    /**
        
        
        
    **/
    @:interfacetypeffun
    public dynamic function rollback():stdgo.Error;
};
