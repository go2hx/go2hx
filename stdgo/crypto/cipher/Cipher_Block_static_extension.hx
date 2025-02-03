package stdgo.crypto.cipher;
class Block_static_extension {
    static public function decrypt(t:stdgo._internal.crypto.cipher.Cipher_Block.Block, _dst:Array<std.UInt>, _src:Array<std.UInt>):Void {
        final _dst = ([for (i in _dst) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _src = ([for (i in _src) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        stdgo._internal.crypto.cipher.Cipher_Block_static_extension.Block_static_extension.decrypt(t, _dst, _src);
    }
    static public function encrypt(t:stdgo._internal.crypto.cipher.Cipher_Block.Block, _dst:Array<std.UInt>, _src:Array<std.UInt>):Void {
        final _dst = ([for (i in _dst) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _src = ([for (i in _src) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        stdgo._internal.crypto.cipher.Cipher_Block_static_extension.Block_static_extension.encrypt(t, _dst, _src);
    }
    static public function blockSize(t:stdgo._internal.crypto.cipher.Cipher_Block.Block):StdTypes.Int {
        return stdgo._internal.crypto.cipher.Cipher_Block_static_extension.Block_static_extension.blockSize(t);
    }
}
