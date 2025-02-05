package stdgo._internal.syscall;
@:interface typedef RawConn = stdgo.StructType & {
    /**
        * Control invokes f on the underlying connection's file
        * descriptor or handle.
        * The file descriptor fd is guaranteed to remain valid while
        * f executes but not after f returns.
        
        
    **/
    @:interfacetypeffun
    public dynamic function control(_f:stdgo.GoUIntptr -> Void):stdgo.Error;
    /**
        * Read invokes f on the underlying connection's file
        * descriptor or handle; f is expected to try to read from the
        * file descriptor.
        * If f returns true, Read returns. Otherwise Read blocks
        * waiting for the connection to be ready for reading and
        * tries again repeatedly.
        * The file descriptor is guaranteed to remain valid while f
        * executes but not after f returns.
        
        
    **/
    @:interfacetypeffun
    public dynamic function read(_f:stdgo.GoUIntptr -> Bool):stdgo.Error;
    /**
        * Write is like Read but for writing.
        
        
    **/
    @:interfacetypeffun
    public dynamic function write(_f:stdgo.GoUIntptr -> Bool):stdgo.Error;
};
