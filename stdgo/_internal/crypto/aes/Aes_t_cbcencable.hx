package stdgo._internal.crypto.aes;
@:interface typedef T_cbcEncAble = stdgo.StructType & {
    @:interfacetypeffun
    function newCBCEncrypter(_iv:stdgo.Slice<stdgo.GoUInt8>):stdgo._internal.crypto.cipher.Cipher_blockmode.BlockMode;
};
