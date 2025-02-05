package stdgo._internal.database.sql.driver;
@:interface typedef StmtExecContext = stdgo.StructType & {
    /**
        * ExecContext executes a query that doesn't return rows, such
        * as an INSERT or UPDATE.
        * 
        * ExecContext must honor the context timeout and return when it is canceled.
        
        
    **/
    @:interfacetypeffun
    public dynamic function execContext(_ctx:stdgo._internal.context.Context_context.Context, _args:stdgo.Slice<stdgo._internal.database.sql.driver.Driver_namedvalue.NamedValue>):{ var _0 : stdgo._internal.database.sql.driver.Driver_result.Result; var _1 : stdgo.Error; };
};
