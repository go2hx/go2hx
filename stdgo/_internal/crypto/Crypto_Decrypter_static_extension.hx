package stdgo._internal.crypto;
@:keep class Decrypter_static_extension {
    @:interfacetypeffun
    static public function decrypt(t:stdgo._internal.crypto.Crypto_Decrypter.Decrypter, _rand:stdgo._internal.io.Io_Reader.Reader, _msg:stdgo.Slice<stdgo.GoUInt8>, _opts:stdgo._internal.crypto.Crypto_DecrypterOpts.DecrypterOpts):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } return t.decrypt(_rand, _msg, _opts);
    @:interfacetypeffun
    static public function public_(t:stdgo._internal.crypto.Crypto_Decrypter.Decrypter):stdgo._internal.crypto.Crypto_PublicKey.PublicKey return t.public_();
}
