package stdgo._internal.crypto.cipher;
@:interface typedef T_cbcDecAble = stdgo.StructType & {
    @:interfacetypeffun
    function newCBCDecrypter(_iv:stdgo.Slice<stdgo.GoUInt8>):stdgo._internal.crypto.cipher.Cipher_blockmode.BlockMode;
};
