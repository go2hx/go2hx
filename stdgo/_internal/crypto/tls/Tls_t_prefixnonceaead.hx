package stdgo._internal.crypto.tls;
@:structInit @:using(stdgo._internal.crypto.tls.Tls_t_prefixnonceaead_static_extension.T_prefixNonceAEAD_static_extension) class T_prefixNonceAEAD {
    public var _nonce : stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(12, 12).__setNumber32__();
    public var _aead : stdgo._internal.crypto.cipher.Cipher_aead.AEAD = (null : stdgo._internal.crypto.cipher.Cipher_aead.AEAD);
    public function new(?_nonce:stdgo.GoArray<stdgo.GoUInt8>, ?_aead:stdgo._internal.crypto.cipher.Cipher_aead.AEAD) {
        if (_nonce != null) this._nonce = _nonce;
        if (_aead != null) this._aead = _aead;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_prefixNonceAEAD(_nonce, _aead);
    }
}
