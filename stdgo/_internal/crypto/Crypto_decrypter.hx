package stdgo._internal.crypto;
@:interface typedef Decrypter = stdgo.StructType & {
    @:interfacetypeffun
    function public_():stdgo._internal.crypto.Crypto_publickey.PublicKey;
    @:interfacetypeffun
    function decrypt(_rand:stdgo._internal.io.Io_reader.Reader, _msg:stdgo.Slice<stdgo.GoUInt8>, _opts:stdgo._internal.crypto.Crypto_decrypteropts.DecrypterOpts):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; };
};
