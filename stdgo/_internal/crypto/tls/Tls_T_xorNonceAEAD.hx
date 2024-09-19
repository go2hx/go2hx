package stdgo._internal.crypto.tls;
@:structInit @:using(stdgo._internal.crypto.tls.Tls_T_xorNonceAEAD_static_extension.T_xorNonceAEAD_static_extension) class T_xorNonceAEAD {
    public var _nonceMask : stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(12, 12, ...[for (i in 0 ... 12) (0 : stdgo.GoUInt8)]);
    public var _aead : stdgo._internal.crypto.cipher.Cipher_AEAD.AEAD = (null : stdgo._internal.crypto.cipher.Cipher_AEAD.AEAD);
    public function new(?_nonceMask:stdgo.GoArray<stdgo.GoUInt8>, ?_aead:stdgo._internal.crypto.cipher.Cipher_AEAD.AEAD) {
        if (_nonceMask != null) this._nonceMask = _nonceMask;
        if (_aead != null) this._aead = _aead;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_xorNonceAEAD(_nonceMask, _aead);
    }
}
