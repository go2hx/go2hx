package stdgo._internal.net.http;
typedef Flusher = stdgo.StructType & {
    /**
        Flush sends any buffered data to the client.
        
        
    **/
    @:interfacetypeffun
    public dynamic function flush():Void;
};
