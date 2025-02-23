package stdgo._internal.crypto.tls;
@:structInit @:using(stdgo._internal.crypto.tls.Tls_t_ciphersuite_static_extension.T_cipherSuite_static_extension) class T_cipherSuite {
    public var _id : stdgo.GoUInt16 = 0;
    public var _keyLen : stdgo.GoInt = 0;
    public var _macLen : stdgo.GoInt = 0;
    public var _ivLen : stdgo.GoInt = 0;
    public var _ka : stdgo.GoUInt16 -> stdgo._internal.crypto.tls.Tls_t_keyagreement.T_keyAgreement = null;
    public var _flags : stdgo.GoInt = 0;
    public var _cipher : (stdgo.Slice<stdgo.GoUInt8>, stdgo.Slice<stdgo.GoUInt8>, Bool) -> stdgo.AnyInterface = null;
    public var _mac : stdgo.Slice<stdgo.GoUInt8> -> stdgo._internal.hash.Hash_hash.Hash = null;
    public var _aead : (stdgo.Slice<stdgo.GoUInt8>, stdgo.Slice<stdgo.GoUInt8>) -> stdgo._internal.crypto.tls.Tls_t_aead.T_aead = null;
    public function new(?_id:stdgo.GoUInt16, ?_keyLen:stdgo.GoInt, ?_macLen:stdgo.GoInt, ?_ivLen:stdgo.GoInt, ?_ka:stdgo.GoUInt16 -> stdgo._internal.crypto.tls.Tls_t_keyagreement.T_keyAgreement, ?_flags:stdgo.GoInt, ?_cipher:(stdgo.Slice<stdgo.GoUInt8>, stdgo.Slice<stdgo.GoUInt8>, Bool) -> stdgo.AnyInterface, ?_mac:stdgo.Slice<stdgo.GoUInt8> -> stdgo._internal.hash.Hash_hash.Hash, ?_aead:(stdgo.Slice<stdgo.GoUInt8>, stdgo.Slice<stdgo.GoUInt8>) -> stdgo._internal.crypto.tls.Tls_t_aead.T_aead) {
        if (_id != null) this._id = _id;
        if (_keyLen != null) this._keyLen = _keyLen;
        if (_macLen != null) this._macLen = _macLen;
        if (_ivLen != null) this._ivLen = _ivLen;
        if (_ka != null) this._ka = _ka;
        if (_flags != null) this._flags = _flags;
        if (_cipher != null) this._cipher = _cipher;
        if (_mac != null) this._mac = _mac;
        if (_aead != null) this._aead = _aead;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_cipherSuite(_id, _keyLen, _macLen, _ivLen, _ka, _flags, _cipher, _mac, _aead);
    }
}
