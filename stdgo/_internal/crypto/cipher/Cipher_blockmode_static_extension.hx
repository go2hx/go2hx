package stdgo._internal.crypto.cipher;
@:keep class BlockMode_static_extension {
    @:interfacetypeffun
    static public function cryptBlocks(t:stdgo._internal.crypto.cipher.Cipher_blockmode.BlockMode, _dst:stdgo.Slice<stdgo.GoUInt8>, _src:stdgo.Slice<stdgo.GoUInt8>):Void t.cryptBlocks(_dst, _src);
    @:interfacetypeffun
    static public function blockSize(t:stdgo._internal.crypto.cipher.Cipher_blockmode.BlockMode):stdgo.GoInt return t.blockSize();
}
