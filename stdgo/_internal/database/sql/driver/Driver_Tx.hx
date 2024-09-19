package stdgo._internal.database.sql.driver;
typedef Tx = stdgo.StructType & {
    /**
        
        
        
    **/
    public dynamic function commit():stdgo.Error;
    /**
        
        
        
    **/
    public dynamic function rollback():stdgo.Error;
};
