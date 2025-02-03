package stdgo.crypto.cipher;
class BlockMode_static_extension {
    static public function cryptBlocks(t:stdgo._internal.crypto.cipher.Cipher_BlockMode.BlockMode, _dst:Array<std.UInt>, _src:Array<std.UInt>):Void {
        final _dst = ([for (i in _dst) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _src = ([for (i in _src) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        stdgo._internal.crypto.cipher.Cipher_BlockMode_static_extension.BlockMode_static_extension.cryptBlocks(t, _dst, _src);
    }
    static public function blockSize(t:stdgo._internal.crypto.cipher.Cipher_BlockMode.BlockMode):StdTypes.Int {
        return stdgo._internal.crypto.cipher.Cipher_BlockMode_static_extension.BlockMode_static_extension.blockSize(t);
    }
}
