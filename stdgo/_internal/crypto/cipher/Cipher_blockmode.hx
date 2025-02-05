package stdgo._internal.crypto.cipher;
@:interface typedef BlockMode = stdgo.StructType & {
    /**
        * BlockSize returns the mode's block size.
        
        
    **/
    @:interfacetypeffun
    public dynamic function blockSize():stdgo.GoInt;
    /**
        * CryptBlocks encrypts or decrypts a number of blocks. The length of
        * src must be a multiple of the block size. Dst and src must overlap
        * entirely or not at all.
        * 
        * If len(dst) < len(src), CryptBlocks should panic. It is acceptable
        * to pass a dst bigger than src, and in that case, CryptBlocks will
        * only update dst[:len(src)] and will not touch the rest of dst.
        * 
        * Multiple calls to CryptBlocks behave as if the concatenation of
        * the src buffers was passed in a single run. That is, BlockMode
        * maintains state and does not reset at each CryptBlocks call.
        
        
    **/
    @:interfacetypeffun
    public dynamic function cryptBlocks(_dst:stdgo.Slice<stdgo.GoUInt8>, _src:stdgo.Slice<stdgo.GoUInt8>):Void;
};
