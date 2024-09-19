package stdgo._internal.crypto.cipher;
@:keep class BlockMode_static_extension {
    static public function cryptBlocks(t:BlockMode, _dst:stdgo.Slice<stdgo.GoUInt8>, _src:stdgo.Slice<stdgo.GoUInt8>):Void t.cryptBlocks(_dst, _src);
    static public function blockSize(t:BlockMode):stdgo.GoInt return t.blockSize();
}
