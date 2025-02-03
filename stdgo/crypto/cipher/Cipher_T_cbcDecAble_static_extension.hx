package stdgo.crypto.cipher;
class T_cbcDecAble_static_extension {
    static public function newCBCDecrypter(t:stdgo._internal.crypto.cipher.Cipher_T_cbcDecAble.T_cbcDecAble, _iv:Array<std.UInt>):BlockMode {
        final _iv = ([for (i in _iv) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.crypto.cipher.Cipher_T_cbcDecAble_static_extension.T_cbcDecAble_static_extension.newCBCDecrypter(t, _iv);
    }
}
