package stdgo._internal.database.sql.driver;
import stdgo._internal.errors.Errors;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.fmt.Fmt;
@:interface typedef StmtExecContext = stdgo.StructType & {
    /**
        ExecContext executes a query that doesn't return rows, such
        as an INSERT or UPDATE.
        
        ExecContext must honor the context timeout and return when it is canceled.
        
        
    **/
    @:interfacetypeffun
    public dynamic function execContext(_ctx:stdgo._internal.context.Context_Context.Context, _args:stdgo.Slice<stdgo._internal.database.sql.driver.Driver_NamedValue.NamedValue>):{ var _0 : stdgo._internal.database.sql.driver.Driver_Result.Result; var _1 : stdgo.Error; };
};
