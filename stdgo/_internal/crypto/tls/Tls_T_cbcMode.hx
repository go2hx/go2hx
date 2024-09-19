package stdgo._internal.crypto.tls;
typedef T_cbcMode = stdgo.StructType & {
    > stdgo._internal.crypto.cipher.Cipher_BlockMode.BlockMode,
    /**
        
        
        
    **/
    public dynamic function setIV(_0:stdgo.Slice<stdgo.GoUInt8>):Void;
};
