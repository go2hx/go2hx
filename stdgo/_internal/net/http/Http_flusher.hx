package stdgo._internal.net.http;
@:interface typedef Flusher = stdgo.StructType & {
    /**
        * Flush sends any buffered data to the client.
        
        
    **/
    @:interfacetypeffun
    public dynamic function flush():Void;
};
