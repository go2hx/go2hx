package stdgo._internal.crypto.aes;
import stdgo._internal.encoding.binary.Binary;
import stdgo._internal.crypto.internal.boring.Boring;
import stdgo._internal.crypto.internal.alias.Alias;
import stdgo._internal.strconv.Strconv;
@:interface typedef T_gcmAble = stdgo.StructType & {
    /**
        
        
        
    **/
    @:interfacetypeffun
    public dynamic function newGCM(_nonceSize:stdgo.GoInt, _tagSize:stdgo.GoInt):{ var _0 : stdgo._internal.crypto.cipher.Cipher_AEAD.AEAD; var _1 : stdgo.Error; };
};
