package stdgo._internal.database.sql.driver;
import stdgo._internal.errors.Errors;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.fmt.Fmt;
@:interface typedef StmtQueryContext = stdgo.StructType & {
    /**
        QueryContext executes a query that may return rows, such as a
        SELECT.
        
        QueryContext must honor the context timeout and return when it is canceled.
        
        
    **/
    @:interfacetypeffun
    public dynamic function queryContext(_ctx:stdgo._internal.context.Context_Context.Context, _args:stdgo.Slice<stdgo._internal.database.sql.driver.Driver_NamedValue.NamedValue>):{ var _0 : stdgo._internal.database.sql.driver.Driver_Rows.Rows; var _1 : stdgo.Error; };
};
