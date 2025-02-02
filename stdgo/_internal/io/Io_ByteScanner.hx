package stdgo._internal.io;
@:interface typedef ByteScanner = stdgo.StructType & {
    > stdgo._internal.io.Io_ByteReader.ByteReader,
    /**
        
        
        
    **/
    @:interfacetypeffun
    public dynamic function unreadByte():stdgo.Error;
};
