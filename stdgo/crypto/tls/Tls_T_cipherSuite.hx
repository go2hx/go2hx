package stdgo.crypto.tls;
@:structInit @:using(stdgo.crypto.tls.Tls.T_cipherSuite_static_extension) abstract T_cipherSuite(stdgo._internal.crypto.tls.Tls_T_cipherSuite.T_cipherSuite) from stdgo._internal.crypto.tls.Tls_T_cipherSuite.T_cipherSuite to stdgo._internal.crypto.tls.Tls_T_cipherSuite.T_cipherSuite {
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
    public var _macLen(get, set) : StdTypes.Int;
    function get__macLen():StdTypes.Int return this._macLen;
    function set__macLen(v:StdTypes.Int):StdTypes.Int {
        this._macLen = (v : stdgo.GoInt);
        return v;
    }
    public var _ivLen(get, set) : StdTypes.Int;
    function get__ivLen():StdTypes.Int return this._ivLen;
    function set__ivLen(v:StdTypes.Int):StdTypes.Int {
        this._ivLen = (v : stdgo.GoInt);
        return v;
    }
    public var _ka(get, set) : stdgo.GoUInt16 -> stdgo._internal.crypto.tls.Tls_T_keyAgreement.T_keyAgreement;
    function get__ka():stdgo.GoUInt16 -> stdgo._internal.crypto.tls.Tls_T_keyAgreement.T_keyAgreement return _0 -> this._ka(_0);
    function set__ka(v:stdgo.GoUInt16 -> stdgo._internal.crypto.tls.Tls_T_keyAgreement.T_keyAgreement):stdgo.GoUInt16 -> stdgo._internal.crypto.tls.Tls_T_keyAgreement.T_keyAgreement {
        this._ka = v;
        return v;
    }
    public var _flags(get, set) : StdTypes.Int;
    function get__flags():StdTypes.Int return this._flags;
    function set__flags(v:StdTypes.Int):StdTypes.Int {
        this._flags = (v : stdgo.GoInt);
        return v;
    }
    public var _cipher(get, set) : (stdgo.Slice<stdgo.GoUInt8>, stdgo.Slice<stdgo.GoUInt8>, Bool) -> stdgo.AnyInterface;
    function get__cipher():(stdgo.Slice<stdgo.GoUInt8>, stdgo.Slice<stdgo.GoUInt8>, Bool) -> stdgo.AnyInterface return (_0, _1, _2) -> this._cipher([for (i in _0) i], [for (i in _1) i], _2);
    function set__cipher(v:(stdgo.Slice<stdgo.GoUInt8>, stdgo.Slice<stdgo.GoUInt8>, Bool) -> stdgo.AnyInterface):(stdgo.Slice<stdgo.GoUInt8>, stdgo.Slice<stdgo.GoUInt8>, Bool) -> stdgo.AnyInterface {
        this._cipher = v;
        return v;
    }
    public var _mac(get, set) : stdgo.Slice<stdgo.GoUInt8> -> stdgo._internal.hash.Hash_Hash.Hash;
    function get__mac():stdgo.Slice<stdgo.GoUInt8> -> stdgo._internal.hash.Hash_Hash.Hash return _0 -> this._mac([for (i in _0) i]);
    function set__mac(v:stdgo.Slice<stdgo.GoUInt8> -> stdgo._internal.hash.Hash_Hash.Hash):stdgo.Slice<stdgo.GoUInt8> -> stdgo._internal.hash.Hash_Hash.Hash {
        this._mac = v;
        return v;
    }
    public var _aead(get, set) : (stdgo.Slice<stdgo.GoUInt8>, stdgo.Slice<stdgo.GoUInt8>) -> stdgo._internal.crypto.tls.Tls_T_aead.T_aead;
    function get__aead():(stdgo.Slice<stdgo.GoUInt8>, stdgo.Slice<stdgo.GoUInt8>) -> stdgo._internal.crypto.tls.Tls_T_aead.T_aead return (_0, _1) -> this._aead([for (i in _0) i], [for (i in _1) i]);
    function set__aead(v:(stdgo.Slice<stdgo.GoUInt8>, stdgo.Slice<stdgo.GoUInt8>) -> stdgo._internal.crypto.tls.Tls_T_aead.T_aead):(stdgo.Slice<stdgo.GoUInt8>, stdgo.Slice<stdgo.GoUInt8>) -> stdgo._internal.crypto.tls.Tls_T_aead.T_aead {
        this._aead = v;
        return v;
    }
    public function new(?_id:std.UInt, ?_keyLen:StdTypes.Int, ?_macLen:StdTypes.Int, ?_ivLen:StdTypes.Int, ?_ka:stdgo.GoUInt16 -> stdgo._internal.crypto.tls.Tls_T_keyAgreement.T_keyAgreement, ?_flags:StdTypes.Int, ?_cipher:(stdgo.Slice<stdgo.GoUInt8>, stdgo.Slice<stdgo.GoUInt8>, Bool) -> stdgo.AnyInterface, ?_mac:stdgo.Slice<stdgo.GoUInt8> -> stdgo._internal.hash.Hash_Hash.Hash, ?_aead:(stdgo.Slice<stdgo.GoUInt8>, stdgo.Slice<stdgo.GoUInt8>) -> stdgo._internal.crypto.tls.Tls_T_aead.T_aead) this = new stdgo._internal.crypto.tls.Tls_T_cipherSuite.T_cipherSuite((_id : stdgo.GoUInt16), (_keyLen : stdgo.GoInt), (_macLen : stdgo.GoInt), (_ivLen : stdgo.GoInt), _ka, (_flags : stdgo.GoInt), _cipher, _mac, _aead);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
