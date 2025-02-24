package stdgo._internal.crypto.cipher;
@:interface typedef AEAD = stdgo.StructType & {
    @:interfacetypeffun
    function nonceSize():stdgo.GoInt;
    @:interfacetypeffun
    function overhead():stdgo.GoInt;
    @:interfacetypeffun
    function seal(_dst:stdgo.Slice<stdgo.GoUInt8>, _nonce:stdgo.Slice<stdgo.GoUInt8>, _plaintext:stdgo.Slice<stdgo.GoUInt8>, _additionalData:stdgo.Slice<stdgo.GoUInt8>):stdgo.Slice<stdgo.GoUInt8>;
    @:interfacetypeffun
    function open(_dst:stdgo.Slice<stdgo.GoUInt8>, _nonce:stdgo.Slice<stdgo.GoUInt8>, _ciphertext:stdgo.Slice<stdgo.GoUInt8>, _additionalData:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; };
};
