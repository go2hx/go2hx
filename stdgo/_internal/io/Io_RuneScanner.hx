package stdgo._internal.io;
typedef RuneScanner = stdgo.StructType & {
    > stdgo._internal.io.Io_RuneReader.RuneReader,
    /**
        
        
        
    **/
    public dynamic function unreadRune():stdgo.Error;
};
