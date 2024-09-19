package stdgo._internal.crypto.cipher;
@:keep class Block_static_extension {
    static public function decrypt(t:Block, _dst:stdgo.Slice<stdgo.GoUInt8>, _src:stdgo.Slice<stdgo.GoUInt8>):Void t.decrypt(_dst, _src);
    static public function encrypt(t:Block, _dst:stdgo.Slice<stdgo.GoUInt8>, _src:stdgo.Slice<stdgo.GoUInt8>):Void t.encrypt(_dst, _src);
    static public function blockSize(t:Block):stdgo.GoInt return t.blockSize();
}
