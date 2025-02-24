package stdgo._internal.crypto.tls;
@:structInit @:using(stdgo._internal.crypto.tls.Tls_t_ciphersuitetls13_static_extension.T_cipherSuiteTLS13_static_extension) class T_cipherSuiteTLS13 {
    public var _id : stdgo.GoUInt16 = 0;
    public var _keyLen : stdgo.GoInt = 0;
    public var _aead : (stdgo.Slice<stdgo.GoUInt8>, stdgo.Slice<stdgo.GoUInt8>) -> stdgo._internal.crypto.tls.Tls_t_aead.T_aead = null;
    public var _hash : stdgo._internal.crypto.Crypto_hash.Hash = ((0 : stdgo.GoUInt) : stdgo._internal.crypto.Crypto_hash.Hash);
    public function new(?_id:stdgo.GoUInt16, ?_keyLen:stdgo.GoInt, ?_aead:(stdgo.Slice<stdgo.GoUInt8>, stdgo.Slice<stdgo.GoUInt8>) -> stdgo._internal.crypto.tls.Tls_t_aead.T_aead, ?_hash:stdgo._internal.crypto.Crypto_hash.Hash) {
        if (_id != null) this._id = _id;
        if (_keyLen != null) this._keyLen = _keyLen;
        if (_aead != null) this._aead = _aead;
        if (_hash != null) this._hash = _hash;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_cipherSuiteTLS13(_id, _keyLen, _aead, _hash);
    }
}
