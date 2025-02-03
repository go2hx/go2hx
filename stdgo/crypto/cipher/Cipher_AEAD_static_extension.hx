package stdgo.crypto.cipher;
class AEAD_static_extension {
    static public function open(t:stdgo._internal.crypto.cipher.Cipher_AEAD.AEAD, _dst:Array<std.UInt>, _nonce:Array<std.UInt>, _ciphertext:Array<std.UInt>, _additionalData:Array<std.UInt>):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        final _dst = ([for (i in _dst) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _nonce = ([for (i in _nonce) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _ciphertext = ([for (i in _ciphertext) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _additionalData = ([for (i in _additionalData) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.crypto.cipher.Cipher_AEAD_static_extension.AEAD_static_extension.open(t, _dst, _nonce, _ciphertext, _additionalData);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    static public function seal(t:stdgo._internal.crypto.cipher.Cipher_AEAD.AEAD, _dst:Array<std.UInt>, _nonce:Array<std.UInt>, _plaintext:Array<std.UInt>, _additionalData:Array<std.UInt>):Array<std.UInt> {
        final _dst = ([for (i in _dst) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _nonce = ([for (i in _nonce) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _plaintext = ([for (i in _plaintext) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _additionalData = ([for (i in _additionalData) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return [for (i in stdgo._internal.crypto.cipher.Cipher_AEAD_static_extension.AEAD_static_extension.seal(t, _dst, _nonce, _plaintext, _additionalData)) i];
    }
    static public function overhead(t:stdgo._internal.crypto.cipher.Cipher_AEAD.AEAD):StdTypes.Int {
        return stdgo._internal.crypto.cipher.Cipher_AEAD_static_extension.AEAD_static_extension.overhead(t);
    }
    static public function nonceSize(t:stdgo._internal.crypto.cipher.Cipher_AEAD.AEAD):StdTypes.Int {
        return stdgo._internal.crypto.cipher.Cipher_AEAD_static_extension.AEAD_static_extension.nonceSize(t);
    }
}
