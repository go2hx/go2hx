package stdgo._internal.crypto.aes;
typedef T_cbcDecAble = stdgo.StructType & {
    /**
        
        
        
    **/
    public dynamic function newCBCDecrypter(_iv:stdgo.Slice<stdgo.GoUInt8>):stdgo._internal.crypto.cipher.Cipher_BlockMode.BlockMode;
};
