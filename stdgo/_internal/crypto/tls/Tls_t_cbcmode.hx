package stdgo._internal.crypto.tls;
@:interface typedef T_cbcMode = stdgo.StructType & {
    > stdgo._internal.crypto.cipher.Cipher_blockmode.BlockMode,
    @:interfacetypeffun
    function setIV(_0:stdgo.Slice<stdgo.GoUInt8>):Void;
};
