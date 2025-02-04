package stdgo._internal.crypto.cipher;
@:keep class Block_static_extension {
    @:interfacetypeffun
    static public function decrypt(t:stdgo._internal.crypto.cipher.Cipher_block.Block, _dst:stdgo.Slice<stdgo.GoUInt8>, _src:stdgo.Slice<stdgo.GoUInt8>):Void t.decrypt(_dst, _src);
    @:interfacetypeffun
    static public function encrypt(t:stdgo._internal.crypto.cipher.Cipher_block.Block, _dst:stdgo.Slice<stdgo.GoUInt8>, _src:stdgo.Slice<stdgo.GoUInt8>):Void t.encrypt(_dst, _src);
    @:interfacetypeffun
    static public function blockSize(t:stdgo._internal.crypto.cipher.Cipher_block.Block):stdgo.GoInt return t.blockSize();
}
