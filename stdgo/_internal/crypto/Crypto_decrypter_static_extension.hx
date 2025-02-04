package stdgo._internal.crypto;
@:keep class Decrypter_static_extension {
    @:interfacetypeffun
    static public function decrypt(t:stdgo._internal.crypto.Crypto_decrypter.Decrypter, _rand:stdgo._internal.io.Io_reader.Reader, _msg:stdgo.Slice<stdgo.GoUInt8>, _opts:stdgo._internal.crypto.Crypto_decrypteropts.DecrypterOpts):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } return t.decrypt(_rand, _msg, _opts);
    @:interfacetypeffun
    static public function public_(t:stdgo._internal.crypto.Crypto_decrypter.Decrypter):stdgo._internal.crypto.Crypto_publickey.PublicKey return t.public_();
}
