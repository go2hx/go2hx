package stdgo._internal.io;
import stdgo._internal.errors.Errors;
@:interface typedef ByteScanner = stdgo.StructType & {
    > stdgo._internal.io.Io_ByteReader.ByteReader,
    /**
        
        
        
    **/
    @:interfacetypeffun
    public dynamic function unreadByte():stdgo.Error;
};
