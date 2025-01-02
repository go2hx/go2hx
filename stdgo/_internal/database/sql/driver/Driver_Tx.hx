package stdgo._internal.database.sql.driver;
typedef Tx = stdgo.StructType & {
    /**
        
        
        
    **/
    @:interfacetypeffun
    public dynamic function commit():stdgo.Error;
    /**
        
        
        
    **/
    @:interfacetypeffun
    public dynamic function rollback():stdgo.Error;
};
