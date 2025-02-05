package stdgo._internal.database.sql.driver;
@:interface typedef Validator = stdgo.StructType & {
    /**
        * IsValid is called prior to placing the connection into the
        * connection pool. The connection will be discarded if false is returned.
        
        
    **/
    @:interfacetypeffun
    public dynamic function isValid():Bool;
};
