package stdgo._internal.database.sql.driver;
import stdgo._internal.errors.Errors;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.fmt.Fmt;
@:interface typedef SessionResetter = stdgo.StructType & {
    /**
        ResetSession is called prior to executing a query on the connection
        if the connection has been used before. If the driver returns ErrBadConn
        the connection is discarded.
        
        
    **/
    @:interfacetypeffun
    public dynamic function resetSession(_ctx:stdgo._internal.context.Context_Context.Context):stdgo.Error;
};
