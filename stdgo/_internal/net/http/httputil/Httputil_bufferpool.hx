package stdgo._internal.net.http.httputil;
@:interface typedef BufferPool = stdgo.StructType & {
    /**
        
        
        
    **/
    @:interfacetypeffun
    public dynamic function get():stdgo.Slice<stdgo.GoUInt8>;
    /**
        
        
        
    **/
    @:interfacetypeffun
    public dynamic function put(_0:stdgo.Slice<stdgo.GoUInt8>):Void;
};
