package stdgo.crypto.aes;
class T_gcmAble_static_extension {
    static public function newGCM(t:stdgo._internal.crypto.aes.Aes_T_gcmAble.T_gcmAble, _nonceSize:StdTypes.Int, _tagSize:StdTypes.Int):stdgo.Tuple<stdgo._internal.crypto.cipher.Cipher_AEAD.AEAD, stdgo.Error> {
        final _nonceSize = (_nonceSize : stdgo.GoInt);
        final _tagSize = (_tagSize : stdgo.GoInt);
        return {
            final obj = stdgo._internal.crypto.aes.Aes_T_gcmAble_static_extension.T_gcmAble_static_extension.newGCM(t, _nonceSize, _tagSize);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
