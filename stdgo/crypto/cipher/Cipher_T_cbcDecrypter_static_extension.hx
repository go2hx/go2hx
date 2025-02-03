package stdgo.crypto.cipher;
class T_cbcDecrypter_static_extension {
    static public function setIV(_x:T_cbcDecrypter, _iv:Array<std.UInt>):Void {
        final _x = (_x : stdgo.Ref<stdgo._internal.crypto.cipher.Cipher_T_cbcDecrypter.T_cbcDecrypter>);
        final _iv = ([for (i in _iv) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        stdgo._internal.crypto.cipher.Cipher_T_cbcDecrypter_static_extension.T_cbcDecrypter_static_extension.setIV(_x, _iv);
    }
    static public function cryptBlocks(_x:T_cbcDecrypter, _dst:Array<std.UInt>, _src:Array<std.UInt>):Void {
        final _x = (_x : stdgo.Ref<stdgo._internal.crypto.cipher.Cipher_T_cbcDecrypter.T_cbcDecrypter>);
        final _dst = ([for (i in _dst) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _src = ([for (i in _src) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        stdgo._internal.crypto.cipher.Cipher_T_cbcDecrypter_static_extension.T_cbcDecrypter_static_extension.cryptBlocks(_x, _dst, _src);
    }
    static public function blockSize(_x:T_cbcDecrypter):StdTypes.Int {
        final _x = (_x : stdgo.Ref<stdgo._internal.crypto.cipher.Cipher_T_cbcDecrypter.T_cbcDecrypter>);
        return stdgo._internal.crypto.cipher.Cipher_T_cbcDecrypter_static_extension.T_cbcDecrypter_static_extension.blockSize(_x);
    }
}
