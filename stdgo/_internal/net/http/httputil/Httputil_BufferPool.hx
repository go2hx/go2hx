package stdgo._internal.net.http.httputil;
typedef BufferPool = stdgo.StructType & {
    /**
        
        
        
    **/
    public dynamic function get():stdgo.Slice<stdgo.GoUInt8>;
    /**
        
        
        
    **/
    public dynamic function put(_0:stdgo.Slice<stdgo.GoUInt8>):Void;
};
