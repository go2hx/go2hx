package stdgo.crypto.tls;
@:structInit @:using(stdgo.crypto.tls.Tls.T_cipherSuiteTLS13_static_extension) abstract T_cipherSuiteTLS13(stdgo._internal.crypto.tls.Tls_T_cipherSuiteTLS13.T_cipherSuiteTLS13) from stdgo._internal.crypto.tls.Tls_T_cipherSuiteTLS13.T_cipherSuiteTLS13 to stdgo._internal.crypto.tls.Tls_T_cipherSuiteTLS13.T_cipherSuiteTLS13 {
    public var _id(get, set) : std.UInt;
    function get__id():std.UInt return this._id;
    function set__id(v:std.UInt):std.UInt {
        this._id = (v : stdgo.GoUInt16);
        return v;
    }
    public var _keyLen(get, set) : StdTypes.Int;
    function get__keyLen():StdTypes.Int return this._keyLen;
    function set__keyLen(v:StdTypes.Int):StdTypes.Int {
        this._keyLen = (v : stdgo.GoInt);
        return v;
    }
    public var _aead(get, set) : (stdgo.Slice<stdgo.GoUInt8>, stdgo.Slice<stdgo.GoUInt8>) -> stdgo._internal.crypto.tls.Tls_T_aead.T_aead;
    function get__aead():(stdgo.Slice<stdgo.GoUInt8>, stdgo.Slice<stdgo.GoUInt8>) -> stdgo._internal.crypto.tls.Tls_T_aead.T_aead return (_0, _1) -> this._aead([for (i in _0) i], [for (i in _1) i]);
    function set__aead(v:(stdgo.Slice<stdgo.GoUInt8>, stdgo.Slice<stdgo.GoUInt8>) -> stdgo._internal.crypto.tls.Tls_T_aead.T_aead):(stdgo.Slice<stdgo.GoUInt8>, stdgo.Slice<stdgo.GoUInt8>) -> stdgo._internal.crypto.tls.Tls_T_aead.T_aead {
        this._aead = v;
        return v;
    }
    public var _hash(get, set) : stdgo._internal.crypto.Crypto_Hash.Hash;
    function get__hash():stdgo._internal.crypto.Crypto_Hash.Hash return this._hash;
    function set__hash(v:stdgo._internal.crypto.Crypto_Hash.Hash):stdgo._internal.crypto.Crypto_Hash.Hash {
        this._hash = v;
        return v;
    }
    public function new(?_id:std.UInt, ?_keyLen:StdTypes.Int, ?_aead:(stdgo.Slice<stdgo.GoUInt8>, stdgo.Slice<stdgo.GoUInt8>) -> stdgo._internal.crypto.tls.Tls_T_aead.T_aead, ?_hash:stdgo._internal.crypto.Crypto_Hash.Hash) this = new stdgo._internal.crypto.tls.Tls_T_cipherSuiteTLS13.T_cipherSuiteTLS13((_id : stdgo.GoUInt16), (_keyLen : stdgo.GoInt), _aead, _hash);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
