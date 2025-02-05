package stdgo._internal.crypto.cipher;
@:interface typedef Stream = stdgo.StructType & {
    /**
        * XORKeyStream XORs each byte in the given slice with a byte from the
        * cipher's key stream. Dst and src must overlap entirely or not at all.
        * 
        * If len(dst) < len(src), XORKeyStream should panic. It is acceptable
        * to pass a dst bigger than src, and in that case, XORKeyStream will
        * only update dst[:len(src)] and will not touch the rest of dst.
        * 
        * Multiple calls to XORKeyStream behave as if the concatenation of
        * the src buffers was passed in a single run. That is, Stream
        * maintains state and does not reset at each XORKeyStream call.
        
        
    **/
    @:interfacetypeffun
    public dynamic function xORKeyStream(_dst:stdgo.Slice<stdgo.GoUInt8>, _src:stdgo.Slice<stdgo.GoUInt8>):Void;
};
