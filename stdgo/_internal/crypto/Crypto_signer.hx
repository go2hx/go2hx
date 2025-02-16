package stdgo._internal.crypto;
@:interface typedef Signer = stdgo.StructType & {
    @:interfacetypeffun
    function public_():stdgo._internal.crypto.Crypto_publickey.PublicKey;
    @:interfacetypeffun
    function sign(_rand:stdgo._internal.io.Io_reader.Reader, _digest:stdgo.Slice<stdgo.GoUInt8>, _opts:stdgo._internal.crypto.Crypto_signeropts.SignerOpts):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; };
};
