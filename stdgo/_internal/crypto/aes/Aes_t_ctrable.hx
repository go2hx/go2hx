package stdgo._internal.crypto.aes;
@:interface typedef T_ctrAble = stdgo.StructType & {
    @:interfacetypeffun
    function newCTR(_iv:stdgo.Slice<stdgo.GoUInt8>):stdgo._internal.crypto.cipher.Cipher_stream.Stream;
};
