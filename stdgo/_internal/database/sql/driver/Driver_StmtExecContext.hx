package stdgo._internal.database.sql.driver;
typedef StmtExecContext = stdgo.StructType & {
    /**
        ExecContext executes a query that doesn't return rows, such
        as an INSERT or UPDATE.
        
        ExecContext must honor the context timeout and return when it is canceled.
        
        
    **/
    public dynamic function execContext(_ctx:stdgo._internal.context.Context_Context.Context, _args:stdgo.Slice<stdgo._internal.database.sql.driver.Driver_NamedValue.NamedValue>):{ var _0 : stdgo._internal.database.sql.driver.Driver_Result.Result; var _1 : stdgo.Error; };
};
