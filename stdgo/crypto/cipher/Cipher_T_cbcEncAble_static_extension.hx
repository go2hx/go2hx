package stdgo.crypto.cipher;
class T_cbcEncAble_static_extension {
    static public function newCBCEncrypter(t:stdgo._internal.crypto.cipher.Cipher_T_cbcEncAble.T_cbcEncAble, _iv:Array<std.UInt>):BlockMode {
        final _iv = ([for (i in _iv) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.crypto.cipher.Cipher_T_cbcEncAble_static_extension.T_cbcEncAble_static_extension.newCBCEncrypter(t, _iv);
    }
}
