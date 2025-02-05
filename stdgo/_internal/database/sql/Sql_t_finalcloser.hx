package stdgo._internal.database.sql;
@:interface typedef T_finalCloser = stdgo.StructType & {
    /**
        * finalClose is called when the reference count of an object
        * goes to zero. (*DB).mu is not held while calling it.
        
        
    **/
    @:interfacetypeffun
    public dynamic function _finalClose():stdgo.Error;
};
