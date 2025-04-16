package stdgo._internal.database.sql.driver;
@:interface typedef ConnPrepareContext = stdgo.StructType & {
    /**
        * PrepareContext returns a prepared statement, bound to this connection.
        * context is for the preparation of the statement,
        * it must not store the context within the statement itself.
        
        
    **/
    @:interfacetypeffun
    public dynamic function prepareContext(_ctx:stdgo._internal.context.Context_context.Context, _query:stdgo.GoString):{ var _0 : stdgo._internal.database.sql.driver.Driver_stmt.Stmt; var _1 : stdgo.Error; };
};
