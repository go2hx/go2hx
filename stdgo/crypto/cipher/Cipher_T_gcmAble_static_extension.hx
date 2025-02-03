package stdgo.crypto.cipher;
class T_gcmAble_static_extension {
    static public function newGCM(t:stdgo._internal.crypto.cipher.Cipher_T_gcmAble.T_gcmAble, _nonceSize:StdTypes.Int, _tagSize:StdTypes.Int):stdgo.Tuple<AEAD, stdgo.Error> {
        final _nonceSize = (_nonceSize : stdgo.GoInt);
        final _tagSize = (_tagSize : stdgo.GoInt);
        return {
            final obj = stdgo._internal.crypto.cipher.Cipher_T_gcmAble_static_extension.T_gcmAble_static_extension.newGCM(t, _nonceSize, _tagSize);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
