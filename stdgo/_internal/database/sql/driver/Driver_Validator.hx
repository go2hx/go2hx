package stdgo._internal.database.sql.driver;
import stdgo._internal.errors.Errors;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.fmt.Fmt;
@:interface typedef Validator = stdgo.StructType & {
    /**
        IsValid is called prior to placing the connection into the
        connection pool. The connection will be discarded if false is returned.
        
        
    **/
    @:interfacetypeffun
    public dynamic function isValid():Bool;
};
