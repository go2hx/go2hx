package stdgo._internal.database.sql.driver;
@:interface typedef StmtQueryContext = stdgo.StructType & {
    /**
        * QueryContext executes a query that may return rows, such as a
        * SELECT.
        * 
        * QueryContext must honor the context timeout and return when it is canceled.
        
        
    **/
    @:interfacetypeffun
    public dynamic function queryContext(_ctx:stdgo._internal.context.Context_context.Context, _args:stdgo.Slice<stdgo._internal.database.sql.driver.Driver_namedvalue.NamedValue>):{ var _0 : stdgo._internal.database.sql.driver.Driver_rows.Rows; var _1 : stdgo.Error; };
};
