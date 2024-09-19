package stdgo._internal.database.sql.driver;
typedef Validator = stdgo.StructType & {
    /**
        IsValid is called prior to placing the connection into the
        connection pool. The connection will be discarded if false is returned.
        
        
    **/
    public dynamic function isValid():Bool;
};
