package stdgo._internal.crypto.cipher;
@:interface typedef T_ctrAble = stdgo.StructType & {
    /**
        
        
        
    **/
    @:interfacetypeffun
    public dynamic function newCTR(_iv:stdgo.Slice<stdgo.GoUInt8>):stdgo._internal.crypto.cipher.Cipher_stream.Stream;
};
