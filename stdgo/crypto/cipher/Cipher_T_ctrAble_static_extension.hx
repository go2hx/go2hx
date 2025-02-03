package stdgo.crypto.cipher;
class T_ctrAble_static_extension {
    static public function newCTR(t:stdgo._internal.crypto.cipher.Cipher_T_ctrAble.T_ctrAble, _iv:Array<std.UInt>):Stream {
        final _iv = ([for (i in _iv) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.crypto.cipher.Cipher_T_ctrAble_static_extension.T_ctrAble_static_extension.newCTR(t, _iv);
    }
}
