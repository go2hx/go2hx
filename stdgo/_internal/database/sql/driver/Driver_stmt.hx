package stdgo._internal.database.sql.driver;
@:interface typedef Stmt = stdgo.StructType & {
    /**
        * Close closes the statement.
        * 
        * As of Go 1.1, a Stmt will not be closed if it's in use
        * by any queries.
        * 
        * Drivers must ensure all network calls made by Close
        * do not block indefinitely (e.g. apply a timeout).
        
        
    **/
    @:interfacetypeffun
    public dynamic function close():stdgo.Error;
    /**
        * NumInput returns the number of placeholder parameters.
        * 
        * If NumInput returns >= 0, the sql package will sanity check
        * argument counts from callers and return errors to the caller
        * before the statement's Exec or Query methods are called.
        * 
        * NumInput may also return -1, if the driver doesn't know
        * its number of placeholders. In that case, the sql package
        * will not sanity check Exec or Query argument counts.
        
        
    **/
    @:interfacetypeffun
    public dynamic function numInput():stdgo.GoInt;
    /**
        * Exec executes a query that doesn't return rows, such
        * as an INSERT or UPDATE.
        * 
        * Deprecated: Drivers should implement StmtExecContext instead (or additionally).
        
        
    **/
    @:interfacetypeffun
    public dynamic function exec(_args:stdgo.Slice<stdgo._internal.database.sql.driver.Driver_value.Value>):{ var _0 : stdgo._internal.database.sql.driver.Driver_result.Result; var _1 : stdgo.Error; };
    /**
        * Query executes a query that may return rows, such as a
        * SELECT.
        * 
        * Deprecated: Drivers should implement StmtQueryContext instead (or additionally).
        
        
    **/
    @:interfacetypeffun
    public dynamic function query(_args:stdgo.Slice<stdgo._internal.database.sql.driver.Driver_value.Value>):{ var _0 : stdgo._internal.database.sql.driver.Driver_rows.Rows; var _1 : stdgo.Error; };
};
