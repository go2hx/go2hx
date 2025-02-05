package stdgo._internal.database.sql.driver;
@:interface typedef RowsNextResultSet = stdgo.StructType & {
    > stdgo._internal.database.sql.driver.Driver_rows.Rows,
    /**
        * HasNextResultSet is called at the end of the current result set and
        * reports whether there is another result set after the current one.
        
        
    **/
    @:interfacetypeffun
    public dynamic function hasNextResultSet():Bool;
    /**
        * NextResultSet advances the driver to the next result set even
        * if there are remaining rows in the current result set.
        * 
        * NextResultSet should return io.EOF when there are no more result sets.
        
        
    **/
    @:interfacetypeffun
    public dynamic function nextResultSet():stdgo.Error;
};
