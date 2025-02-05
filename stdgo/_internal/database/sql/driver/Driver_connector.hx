package stdgo._internal.database.sql.driver;
@:interface typedef Connector = stdgo.StructType & {
    /**
        * Connect returns a connection to the database.
        * Connect may return a cached connection (one previously
        * closed), but doing so is unnecessary; the sql package
        * maintains a pool of idle connections for efficient re-use.
        * 
        * The provided context.Context is for dialing purposes only
        * (see net.DialContext) and should not be stored or used for
        * other purposes. A default timeout should still be used
        * when dialing as a connection pool may call Connect
        * asynchronously to any query.
        * 
        * The returned connection is only used by one goroutine at a
        * time.
        
        
    **/
    @:interfacetypeffun
    public dynamic function connect(_0:stdgo._internal.context.Context_context.Context):{ var _0 : stdgo._internal.database.sql.driver.Driver_conn.Conn; var _1 : stdgo.Error; };
    /**
        * Driver returns the underlying Driver of the Connector,
        * mainly to maintain compatibility with the Driver method
        * on sql.DB.
        
        
    **/
    @:interfacetypeffun
    public dynamic function driver():stdgo._internal.database.sql.driver.Driver_driver.Driver;
};
