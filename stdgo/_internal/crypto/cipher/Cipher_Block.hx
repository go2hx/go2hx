package stdgo._internal.crypto.cipher;
typedef Block = stdgo.StructType & {
    /**
        BlockSize returns the cipher's block size.
        
        
    **/
    public dynamic function blockSize():stdgo.GoInt;
    /**
        Encrypt encrypts the first block in src into dst.
        Dst and src must overlap entirely or not at all.
        
        
    **/
    public dynamic function encrypt(_dst:stdgo.Slice<stdgo.GoUInt8>, _src:stdgo.Slice<stdgo.GoUInt8>):Void;
    /**
        Decrypt decrypts the first block in src into dst.
        Dst and src must overlap entirely or not at all.
        
        
    **/
    public dynamic function decrypt(_dst:stdgo.Slice<stdgo.GoUInt8>, _src:stdgo.Slice<stdgo.GoUInt8>):Void;
};
