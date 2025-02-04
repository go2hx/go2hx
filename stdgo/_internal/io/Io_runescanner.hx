package stdgo._internal.io;
@:interface typedef RuneScanner = stdgo.StructType & {
    > stdgo._internal.io.Io_runereader.RuneReader,
    /**
        
        
        
    **/
    @:interfacetypeffun
    public dynamic function unreadRune():stdgo.Error;
};
