package stdgo._internal.net.http;
typedef T_http2pipeBuffer = stdgo.StructType & {
    > stdgo._internal.io.Io_Writer.Writer,
    > stdgo._internal.io.Io_Reader.Reader,
    /**
        
        
        
    **/
    @:interfacetypeffun
    public dynamic function len():stdgo.GoInt;
};
