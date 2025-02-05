package stdgo._internal.database.sql.driver;
@:interface typedef SessionResetter = stdgo.StructType & {
    /**
        * ResetSession is called prior to executing a query on the connection
        * if the connection has been used before. If the driver returns ErrBadConn
        * the connection is discarded.
        
        
    **/
    @:interfacetypeffun
    public dynamic function resetSession(_ctx:stdgo._internal.context.Context_context.Context):stdgo.Error;
};
