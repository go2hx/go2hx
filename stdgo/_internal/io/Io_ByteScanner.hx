package stdgo._internal.io;
typedef ByteScanner = stdgo.StructType & {
    > stdgo._internal.io.Io_ByteReader.ByteReader,
    /**
        
        
        
    **/
    public dynamic function unreadByte():stdgo.Error;
};
