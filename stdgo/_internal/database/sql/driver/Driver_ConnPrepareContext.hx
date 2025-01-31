package stdgo._internal.database.sql.driver;
import stdgo._internal.errors.Errors;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.fmt.Fmt;
@:interface typedef ConnPrepareContext = stdgo.StructType & {
    /**
        PrepareContext returns a prepared statement, bound to this connection.
        context is for the preparation of the statement,
        it must not store the context within the statement itself.
        
        
    **/
    @:interfacetypeffun
    public dynamic function prepareContext(_ctx:stdgo._internal.context.Context_Context.Context, _query:stdgo.GoString):{ var _0 : stdgo._internal.database.sql.driver.Driver_Stmt.Stmt; var _1 : stdgo.Error; };
};
