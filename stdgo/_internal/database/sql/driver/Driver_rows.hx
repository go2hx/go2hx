package stdgo._internal.database.sql.driver;
@:interface typedef Rows = stdgo.StructType & {
    /**
        * Columns returns the names of the columns. The number of
        * columns of the result is inferred from the length of the
        * slice. If a particular column name isn't known, an empty
        * string should be returned for that entry.
        
        
    **/
    @:interfacetypeffun
    public dynamic function columns():stdgo.Slice<stdgo.GoString>;
    /**
        * Close closes the rows iterator.
        
        
    **/
    @:interfacetypeffun
    public dynamic function close():stdgo.Error;
    /**
        * Next is called to populate the next row of data into
        * the provided slice. The provided slice will be the same
        * size as the Columns() are wide.
        * 
        * Next should return io.EOF when there are no more rows.
        * 
        * The dest should not be written to outside of Next. Care
        * should be taken when closing Rows not to modify
        * a buffer held in dest.
        
        
    **/
    @:interfacetypeffun
    public dynamic function next(_dest:stdgo.Slice<stdgo._internal.database.sql.driver.Driver_value.Value>):stdgo.Error;
};
