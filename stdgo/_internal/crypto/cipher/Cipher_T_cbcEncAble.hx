package stdgo._internal.crypto.cipher;
typedef T_cbcEncAble = stdgo.StructType & {
    /**
        
        
        
    **/
    @:interfacetypeffun
    public dynamic function newCBCEncrypter(_iv:stdgo.Slice<stdgo.GoUInt8>):stdgo._internal.crypto.cipher.Cipher_BlockMode.BlockMode;
};
