package stdgo._internal.crypto.aes;
import stdgo._internal.encoding.binary.Binary;
import stdgo._internal.crypto.internal.boring.Boring;
import stdgo._internal.crypto.internal.alias.Alias;
import stdgo._internal.strconv.Strconv;
@:interface typedef T_cbcEncAble = stdgo.StructType & {
    /**
        
        
        
    **/
    @:interfacetypeffun
    public dynamic function newCBCEncrypter(_iv:stdgo.Slice<stdgo.GoUInt8>):stdgo._internal.crypto.cipher.Cipher_BlockMode.BlockMode;
};
