package stdgo._internal.crypto;
import stdgo._internal.strconv.Strconv;
@:keep class Signer_static_extension {
    @:interfacetypeffun
    static public function sign(t:stdgo._internal.crypto.Crypto_Signer.Signer, _rand:stdgo._internal.io.Io_Reader.Reader, _digest:stdgo.Slice<stdgo.GoUInt8>, _opts:stdgo._internal.crypto.Crypto_SignerOpts.SignerOpts):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } return t.sign(_rand, _digest, _opts);
    @:interfacetypeffun
    static public function public_(t:stdgo._internal.crypto.Crypto_Signer.Signer):stdgo._internal.crypto.Crypto_PublicKey.PublicKey return t.public_();
}
