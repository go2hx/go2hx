package stdgo._internal.database.sql.driver;
typedef Conn = stdgo.StructType & {
    /**
        Prepare returns a prepared statement, bound to this connection.
        
        
    **/
    public dynamic function prepare(_query:stdgo.GoString):{ var _0 : stdgo._internal.database.sql.driver.Driver_Stmt.Stmt; var _1 : stdgo.Error; };
    /**
        Close invalidates and potentially stops any current
        prepared statements and transactions, marking this
        connection as no longer in use.
        
        Because the sql package maintains a free pool of
        connections and only calls Close when there's a surplus of
        idle connections, it shouldn't be necessary for drivers to
        do their own connection caching.
        
        Drivers must ensure all network calls made by Close
        do not block indefinitely (e.g. apply a timeout).
        
        
    **/
    public dynamic function close():stdgo.Error;
    /**
        Begin starts and returns a new transaction.
        
        Deprecated: Drivers should implement ConnBeginTx instead (or additionally).
        
        
    **/
    public dynamic function begin():{ var _0 : stdgo._internal.database.sql.driver.Driver_Tx.Tx; var _1 : stdgo.Error; };
};