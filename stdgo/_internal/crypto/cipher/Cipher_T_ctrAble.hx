package stdgo._internal.crypto.cipher;
typedef T_ctrAble = stdgo.StructType & {
    /**
        
        
        
    **/
    public dynamic function newCTR(_iv:stdgo.Slice<stdgo.GoUInt8>):stdgo._internal.crypto.cipher.Cipher_Stream.Stream;
};