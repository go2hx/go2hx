package stdgo.crypto.tls;
import stdgo.StdGoTypes;
import stdgo.Error;
import stdgo.Go;
import stdgo.GoString;
import stdgo.Pointer;
import stdgo.Slice;
import stdgo.GoArray;
import stdgo.GoMap;
import stdgo.Chan;
typedef T_aead = StructType & {
    > stdgo.crypto.cipher.Cipher.AEAD,
    public function _explicitNonceLen():GoInt;
};
typedef T_constantTimeHash = StructType & {
    > stdgo.hash.Hash.Hash,
    public function constantTimeSum(_b:Slice<GoByte>):Slice<GoByte>;
};
typedef ClientSessionCache = StructType & {
    public function get(_sessionKey:GoString):{ var _0 : Pointer<ClientSessionState>; var _1 : Bool; };
    public function put(_sessionKey:GoString, _cs:Pointer<ClientSessionState>):Void;
};
typedef T_handshakeMessage = StructType & {
    public function _marshal():Slice<GoByte>;
    public function _unmarshal(arg0:Slice<GoByte>):Bool;
};
typedef T_cbcMode = StructType & {
    > stdgo.crypto.cipher.Cipher.BlockMode,
    public function setIV(arg0:Slice<GoByte>):Void;
};
typedef T_keyAgreement = StructType & {
    public function _generateServerKeyExchange(arg0:Pointer<Config>, arg1:Pointer<Certificate>, arg2:Pointer<T_clientHelloMsg>, arg3:Pointer<T_serverHelloMsg>):{ var _0 : Pointer<T_serverKeyExchangeMsg>; var _1 : Error; };
    public function _processClientKeyExchange(arg0:Pointer<Config>, arg1:Pointer<Certificate>, arg2:Pointer<T_clientKeyExchangeMsg>, arg3:GoUInt16):{ var _0 : Slice<GoByte>; var _1 : Error; };
    public function _processServerKeyExchange(arg0:Pointer<Config>, arg1:Pointer<T_clientHelloMsg>, arg2:Pointer<T_serverHelloMsg>, arg3:Pointer<stdgo.crypto.x509.X509.Certificate>, arg4:Pointer<T_serverKeyExchangeMsg>):Error;
    public function _generateClientKeyExchange(arg0:Pointer<Config>, arg1:Pointer<T_clientHelloMsg>, arg2:Pointer<stdgo.crypto.x509.X509.Certificate>):{ var _0 : Slice<GoByte>; var _1 : Pointer<T_clientKeyExchangeMsg>; var _2 : Error; };
};
typedef T_ecdheParameters = StructType & {
    public function curveID():CurveID;
    public function publicKey():Slice<GoByte>;
    public function sharedKey(_peerPublicKey:Slice<GoByte>):Slice<GoByte>;
};
@:named class T_alert {
    public function error():GoString {
        var _e = this.__copy__();
        return _e.toString();
    }
    public function toString():GoString {
        var _e = this.__copy__();
        var __tmp__ = _alertText.exists(_e) ? { value : _alertText[_e], ok : true } : { value : _alertText.defaultValue(), ok : false }, _s:GoString = __tmp__.value, _ok:Bool = __tmp__.ok;
        if (_ok) {
            return (("tls: " : GoString)) + _s;
        };
        return (("tls: alert(" : GoString)) + stdgo.strconv.Strconv.itoa(_e.__t__) + ((")" : GoString));
    }
    public var __t__ : GoUInt8;
    public function new(?t:GoUInt8) {
        __t__ = t == null ? 0 : t;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() return new T_alert(__t__);
}
@:structInit class CipherSuite {
    public var id : GoUInt16 = ((0 : GoUInt16));
    public var name : GoString = (("" : GoString));
    public var supportedVersions : Slice<GoUInt16> = new Slice<GoUInt16>().nil();
    public var insecure : Bool = false;
    public function new(?id:GoUInt16, ?name:GoString, ?supportedVersions:Slice<GoUInt16>, ?insecure:Bool) stdgo.internal.Macro.initLocals();
    public function toString() {
        return '{' + Go.string(id) + " " + Go.string(name) + " " + Go.string(supportedVersions) + " " + Go.string(insecure) + "}";
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new CipherSuite(id, name, supportedVersions, insecure);
    }
    public function __set__(__tmp__) {
        this.id = __tmp__.id;
        this.name = __tmp__.name;
        this.supportedVersions = __tmp__.supportedVersions;
        this.insecure = __tmp__.insecure;
        return this;
    }
}
@:structInit class T_cipherSuite {
    public var _id : GoUInt16 = ((0 : GoUInt16));
    public var _keyLen : GoInt = ((0 : GoInt));
    public var _macLen : GoInt = ((0 : GoInt));
    public var _ivLen : GoInt = ((0 : GoInt));
    public var _ka : GoUInt16 -> T_keyAgreement = null;
    public var _flags : GoInt = ((0 : GoInt));
    public var _cipher : (Slice<GoUInt8>, Slice<GoUInt8>, Bool) -> AnyInterface = null;
    public var _mac : Slice<GoUInt8> -> stdgo.hash.Hash.Hash = null;
    public var _aead : (Slice<GoUInt8>, Slice<GoUInt8>) -> T_aead = null;
    public function new(?_id:GoUInt16, ?_keyLen:GoInt, ?_macLen:GoInt, ?_ivLen:GoInt, ?_ka:GoUInt16 -> T_keyAgreement, ?_flags:GoInt, ?_cipher:(Slice<GoUInt8>, Slice<GoUInt8>, Bool) -> AnyInterface, ?_mac:Slice<GoUInt8> -> stdgo.hash.Hash.Hash, ?_aead:(Slice<GoUInt8>, Slice<GoUInt8>) -> T_aead) stdgo.internal.Macro.initLocals();
    public function toString() {
        return '{' + Go.string(_id) + " " + Go.string(_keyLen) + " " + Go.string(_macLen) + " " + Go.string(_ivLen) + " " + Go.string(_ka) + " " + Go.string(_flags) + " " + Go.string(_cipher) + " " + Go.string(_mac) + " " + Go.string(_aead) + "}";
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_cipherSuite(_id, _keyLen, _macLen, _ivLen, _ka, _flags, _cipher, _mac, _aead);
    }
    public function __set__(__tmp__) {
        this._id = __tmp__._id;
        this._keyLen = __tmp__._keyLen;
        this._macLen = __tmp__._macLen;
        this._ivLen = __tmp__._ivLen;
        this._ka = __tmp__._ka;
        this._flags = __tmp__._flags;
        this._cipher = __tmp__._cipher;
        this._mac = __tmp__._mac;
        this._aead = __tmp__._aead;
        return this;
    }
}
@:structInit class T_cipherSuiteTLS13 {
    public function _exportKeyingMaterial(_masterSecret:Slice<GoByte>, _transcript:stdgo.hash.Hash.Hash):(GoString, Slice<GoByte>, GoInt) -> { var _0 : Slice<GoByte>; var _1 : Error; } {
        var _c = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var _expMasterSecret:Slice<GoUInt8> = _c.value._deriveSecret(_masterSecret, _exporterLabel, _transcript);
        return function(_label:GoString, _context:Slice<GoByte>, _length:GoInt):{ var _0 : Slice<GoByte>; var _1 : Error; } {
            var _secret:Slice<GoUInt8> = _c.value._deriveSecret(_expMasterSecret, _label, ((null : stdgo.hash.Hash.Hash)));
            var _h:stdgo.hash.Hash.Hash = _c.value._hash.new_();
            _h.write(_context);
            return { _0 : _c.value._expandLabel(_secret, "exporter", _h.sum(new Slice<GoUInt8>().nil()), _length), _1 : ((null : stdgo.Error)) };
        };
    }
    public function _finishedHash(_baseKey:Slice<GoByte>, _transcript:stdgo.hash.Hash.Hash):Slice<GoByte> {
        var _c = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var _finishedKey:Slice<GoUInt8> = _c.value._expandLabel(_baseKey, "finished", new Slice<GoUInt8>().nil(), _c.value._hash.size());
        var _verifyData:stdgo.hash.Hash.Hash = stdgo.crypto.hmac.Hmac.new_(_c.value._hash.new_, _finishedKey);
        _verifyData.write(_transcript.sum(new Slice<GoUInt8>().nil()));
        return _verifyData.sum(new Slice<GoUInt8>().nil());
    }
    public function _trafficKey(_trafficSecret:Slice<GoByte>):{ var _0 : Slice<GoByte>; var _1 : Slice<GoByte>; } {
        var _c = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var _key:Slice<GoByte> = new Slice<GoUInt8>().nil(), _iv:Slice<GoByte> = new Slice<GoUInt8>().nil();
        _key = _c.value._expandLabel(_trafficSecret, "key", new Slice<GoUInt8>().nil(), _c.value._keyLen);
        _iv = _c.value._expandLabel(_trafficSecret, "iv", new Slice<GoUInt8>().nil(), _aeadNonceLength);
        return { _0 : _key, _1 : _iv };
    }
    public function _nextTrafficSecret(_trafficSecret:Slice<GoByte>):Slice<GoByte> {
        var _c = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        return _c.value._expandLabel(_trafficSecret, _trafficUpdateLabel, new Slice<GoUInt8>().nil(), _c.value._hash.size());
    }
    public function _extract(_newSecret:Slice<GoByte>, _currentSecret:Slice<GoByte>):Slice<GoByte> {
        var _c = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        if (_newSecret == null || _newSecret.isNil()) {
            _newSecret = new Slice<GoUInt8>(...[for (i in 0 ... ((_c.value._hash.size() : GoInt)).toBasic()) ((0 : GoUInt8))]);
        };
        return golang_org.x.crypto.hkdf.Hkdf.extract(_c.value._hash.new_, _newSecret, _currentSecret);
    }
    public function _deriveSecret(_secret:Slice<GoByte>, _label:GoString, _transcript:stdgo.hash.Hash.Hash):Slice<GoByte> {
        var _c = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        if (_transcript == null) {
            _transcript = _c.value._hash.new_();
        };
        return _c.value._expandLabel(_secret, _label, _transcript.sum(new Slice<GoUInt8>().nil()), _c.value._hash.size());
    }
    public function _expandLabel(_secret:Slice<GoByte>, _label:GoString, _context:Slice<GoByte>, _length:GoInt):Slice<GoByte> {
        var _c = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var _hkdfLabel:golang_org.x.crypto.cryptobyte.Cryptobyte.Builder = new vendor.golang_org.x.crypto.cryptobyte.Cryptobyte.Builder();
        _hkdfLabel.addUint16(((_length : GoUInt16)));
        _hkdfLabel.addUint8LengthPrefixed(new vendor.golang_org.x.crypto.cryptobyte.Cryptobyte.BuilderContinuation(function(_b:Pointer<golang_org.x.crypto.cryptobyte.Cryptobyte.Builder>):Void {
            _b.value.addBytes((("tls13 " : Slice<GoByte>)));
            _b.value.addBytes(((_label : Slice<GoByte>)));
        }));
        _hkdfLabel.addUint8LengthPrefixed(new vendor.golang_org.x.crypto.cryptobyte.Cryptobyte.BuilderContinuation(function(_b:Pointer<golang_org.x.crypto.cryptobyte.Cryptobyte.Builder>):Void {
            _b.value.addBytes(_context);
        }));
        var _out:Slice<GoUInt8> = new Slice<GoUInt8>(...[for (i in 0 ... ((_length : GoInt)).toBasic()) ((0 : GoUInt8))]);
        var __tmp__ = golang_org.x.crypto.hkdf.Hkdf.expand(_c.value._hash.new_, _secret, _hkdfLabel.bytesOrPanic()).read(_out), _n:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null || _n != _length) {
            throw "tls: HKDF-Expand-Label invocation failed unexpectedly";
        };
        return _out;
    }
    public var _id : GoUInt16 = ((0 : GoUInt16));
    public var _keyLen : GoInt = ((0 : GoInt));
    public var _aead : (Slice<GoUInt8>, Slice<GoUInt8>) -> T_aead = null;
    public var _hash : stdgo.crypto.Crypto.Hash = new stdgo.crypto.Crypto.Hash();
    public function new(?_id:GoUInt16, ?_keyLen:GoInt, ?_aead:(Slice<GoUInt8>, Slice<GoUInt8>) -> T_aead, ?_hash:stdgo.crypto.Crypto.Hash) stdgo.internal.Macro.initLocals();
    public function toString() {
        return '{' + Go.string(_id) + " " + Go.string(_keyLen) + " " + Go.string(_aead) + " " + Go.string(_hash) + "}";
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_cipherSuiteTLS13(_id, _keyLen, _aead, _hash);
    }
    public function __set__(__tmp__) {
        this._id = __tmp__._id;
        this._keyLen = __tmp__._keyLen;
        this._aead = __tmp__._aead;
        this._hash = __tmp__._hash;
        return this;
    }
}
@:structInit class T_prefixNonceAEAD {
    public function open(_out:Slice<GoByte>, _nonce:Slice<GoByte>, _ciphertext:Slice<GoByte>, _additionalData:Slice<GoByte>):{ var _0 : Slice<GoByte>; var _1 : Error; } {
        var _f = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        Go.copy(_f.value._nonce.__slice__(((4 : GoInt))), _nonce);
        return _f.value._aead.open(_out, _f.value._nonce.__slice__(0), _ciphertext, _additionalData);
    }
    public function seal(_out:Slice<GoByte>, _nonce:Slice<GoByte>, _plaintext:Slice<GoByte>, _additionalData:Slice<GoByte>):Slice<GoByte> {
        var _f = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        Go.copy(_f.value._nonce.__slice__(((4 : GoInt))), _nonce);
        return _f.value._aead.seal(_out, _f.value._nonce.__slice__(0), _plaintext, _additionalData);
    }
    public function _explicitNonceLen():GoInt {
        var _f = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        return _f.value.nonceSize();
    }
    public function overhead():GoInt {
        var _f = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        return _f.value._aead.overhead();
    }
    public function nonceSize():GoInt {
        var _f = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        return _aeadNonceLength - _noncePrefixLength;
    }
    public var _nonce : GoArray<GoUInt8> = new GoArray<GoUInt8>(...[for (i in 0 ... 12) ((0 : GoUInt8))]);
    public var _aead : stdgo.crypto.cipher.Cipher.AEAD = ((null : stdgo.crypto.cipher.Cipher.AEAD));
    public function new(?_nonce:GoArray<GoUInt8>, ?_aead:stdgo.crypto.cipher.Cipher.AEAD) stdgo.internal.Macro.initLocals();
    public function toString() {
        return '{' + Go.string(_nonce) + " " + Go.string(_aead) + "}";
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_prefixNonceAEAD(_nonce, _aead);
    }
    public function __set__(__tmp__) {
        this._nonce = __tmp__._nonce;
        this._aead = __tmp__._aead;
        return this;
    }
}
@:structInit class T_xorNonceAEAD {
    public function open(_out:Slice<GoByte>, _nonce:Slice<GoByte>, _ciphertext:Slice<GoByte>, _additionalData:Slice<GoByte>):{ var _0 : Slice<GoByte>; var _1 : Error; } {
        var _f = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        {
            var _i;
            var _b;
            for (_obj in _nonce.keyValueIterator()) {
                _i = _obj.key;
                _b = _obj.value;
                _f.value._nonceMask[((4 : GoInt)) + _i] = _f.value._nonceMask[((4 : GoInt)) + _i] ^ (_b);
            };
        };
        var __tmp__ = _f.value._aead.open(_out, _f.value._nonceMask.__slice__(0), _ciphertext, _additionalData), _result:Slice<GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        {
            var _i;
            var _b;
            for (_obj in _nonce.keyValueIterator()) {
                _i = _obj.key;
                _b = _obj.value;
                _f.value._nonceMask[((4 : GoInt)) + _i] = _f.value._nonceMask[((4 : GoInt)) + _i] ^ (_b);
            };
        };
        return { _0 : _result, _1 : _err };
    }
    public function seal(_out:Slice<GoByte>, _nonce:Slice<GoByte>, _plaintext:Slice<GoByte>, _additionalData:Slice<GoByte>):Slice<GoByte> {
        var _f = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        {
            var _i;
            var _b;
            for (_obj in _nonce.keyValueIterator()) {
                _i = _obj.key;
                _b = _obj.value;
                _f.value._nonceMask[((4 : GoInt)) + _i] = _f.value._nonceMask[((4 : GoInt)) + _i] ^ (_b);
            };
        };
        var _result:Slice<GoUInt8> = _f.value._aead.seal(_out, _f.value._nonceMask.__slice__(0), _plaintext, _additionalData);
        {
            var _i;
            var _b;
            for (_obj in _nonce.keyValueIterator()) {
                _i = _obj.key;
                _b = _obj.value;
                _f.value._nonceMask[((4 : GoInt)) + _i] = _f.value._nonceMask[((4 : GoInt)) + _i] ^ (_b);
            };
        };
        return _result;
    }
    public function _explicitNonceLen():GoInt {
        var _f = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        return ((0 : GoInt));
    }
    public function overhead():GoInt {
        var _f = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        return _f.value._aead.overhead();
    }
    public function nonceSize():GoInt {
        var _f = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        return ((8 : GoInt));
    }
    public var _nonceMask : GoArray<GoUInt8> = new GoArray<GoUInt8>(...[for (i in 0 ... 12) ((0 : GoUInt8))]);
    public var _aead : stdgo.crypto.cipher.Cipher.AEAD = ((null : stdgo.crypto.cipher.Cipher.AEAD));
    public function new(?_nonceMask:GoArray<GoUInt8>, ?_aead:stdgo.crypto.cipher.Cipher.AEAD) stdgo.internal.Macro.initLocals();
    public function toString() {
        return '{' + Go.string(_nonceMask) + " " + Go.string(_aead) + "}";
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_xorNonceAEAD(_nonceMask, _aead);
    }
    public function __set__(__tmp__) {
        this._nonceMask = __tmp__._nonceMask;
        this._aead = __tmp__._aead;
        return this;
    }
}
@:structInit class T_cthWrapper {
    public function sum(_b:Slice<GoByte>):Slice<GoByte> {
        var _c = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        return _c.value._h.constantTimeSum(_b);
    }
    public function write(_p:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } {
        var _c = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        return _c.value._h.write(_p);
    }
    public function reset():Void {
        var _c = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        _c.value._h.reset();
    }
    public function blockSize():GoInt {
        var _c = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        return _c.value._h.blockSize();
    }
    public function size():GoInt {
        var _c = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        return _c.value._h.size();
    }
    public var _h : T_constantTimeHash = ((null : T_constantTimeHash));
    public function new(?_h:T_constantTimeHash) stdgo.internal.Macro.initLocals();
    public function toString() {
        return '{' + Go.string(_h) + "}";
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_cthWrapper(_h);
    }
    public function __set__(__tmp__) {
        this._h = __tmp__._h;
        return this;
    }
}
@:named class T_recordType {
    public var __t__ : GoUInt8;
    public function new(?t:GoUInt8) {
        __t__ = t == null ? 0 : t;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    @:implicit
    public function toString():GoString return Go.string(__t__);
    public function __copy__() return new T_recordType(__t__);
}
@:named class CurveID {
    public function toString():GoString {
        var _i = this.__copy__();
        if (((23 : GoUInt16)) <= _i.__t__ && _i.__t__ <= ((25 : GoUInt16))) {
            _i = new CurveID(_i.__t__ - (((23 : GoUInt16))));
            return __CurveID_name_0.__slice__(__CurveID_index_0[_i.__t__], __CurveID_index_0[new CurveID(_i.__t__ + ((1 : GoUInt16))).__t__]);
        } else if (_i.__t__ == ((29 : GoUInt16))) {
            return __CurveID_name_1;
        } else {
            return (("CurveID(" : GoString)) + stdgo.strconv.Strconv.formatInt(_i.__t__, ((10 : GoInt))) + ((")" : GoString));
        };
    }
    public var __t__ : GoUInt16;
    public function new(?t:GoUInt16) {
        __t__ = t == null ? 0 : t;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() return new CurveID(__t__);
}
@:structInit class T_keyShare {
    public var _group : CurveID = new CurveID();
    public var _data : Slice<GoUInt8> = new Slice<GoUInt8>().nil();
    public function new(?_group:CurveID, ?_data:Slice<GoUInt8>) stdgo.internal.Macro.initLocals();
    public function toString() {
        return '{' + Go.string(_group) + " " + Go.string(_data) + "}";
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_keyShare(_group, _data);
    }
    public function __set__(__tmp__) {
        this._group = __tmp__._group;
        this._data = __tmp__._data;
        return this;
    }
}
@:structInit class T_pskIdentity {
    public var _label : Slice<GoUInt8> = new Slice<GoUInt8>().nil();
    public var _obfuscatedTicketAge : GoUInt32 = ((0 : GoUInt32));
    public function new(?_label:Slice<GoUInt8>, ?_obfuscatedTicketAge:GoUInt32) stdgo.internal.Macro.initLocals();
    public function toString() {
        return '{' + Go.string(_label) + " " + Go.string(_obfuscatedTicketAge) + "}";
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_pskIdentity(_label, _obfuscatedTicketAge);
    }
    public function __set__(__tmp__) {
        this._label = __tmp__._label;
        this._obfuscatedTicketAge = __tmp__._obfuscatedTicketAge;
        return this;
    }
}
@:structInit class ConnectionState {
    public function exportKeyingMaterial(_label:GoString, _context:Slice<GoByte>, _length:GoInt):{ var _0 : Slice<GoByte>; var _1 : Error; } {
        var _cs = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        return _cs.value._ekm(_label, _context, _length);
    }
    public var version : GoUInt16 = ((0 : GoUInt16));
    public var handshakeComplete : Bool = false;
    public var didResume : Bool = false;
    public var cipherSuite : GoUInt16 = ((0 : GoUInt16));
    public var negotiatedProtocol : GoString = (("" : GoString));
    public var negotiatedProtocolIsMutual : Bool = false;
    public var serverName : GoString = (("" : GoString));
    public var peerCertificates : Slice<Pointer<stdgo.crypto.x509.X509.Certificate>> = new Slice<Pointer<stdgo.crypto.x509.X509.Certificate>>().nil();
    public var verifiedChains : Slice<Slice<Pointer<stdgo.crypto.x509.X509.Certificate>>> = new Slice<Slice<Pointer<stdgo.crypto.x509.X509.Certificate>>>().nil();
    public var signedCertificateTimestamps : Slice<Slice<GoUInt8>> = new Slice<Slice<GoUInt8>>().nil();
    public var ocspresponse : Slice<GoUInt8> = new Slice<GoUInt8>().nil();
    public var tlsunique : Slice<GoUInt8> = new Slice<GoUInt8>().nil();
    public var _ekm : (GoString, Slice<GoUInt8>, GoInt) -> { var _0 : Slice<GoUInt8>; var _1 : stdgo.Error; } = null;
    public function new(?version:GoUInt16, ?handshakeComplete:Bool, ?didResume:Bool, ?cipherSuite:GoUInt16, ?negotiatedProtocol:GoString, ?negotiatedProtocolIsMutual:Bool, ?serverName:GoString, ?peerCertificates:Slice<Pointer<stdgo.crypto.x509.X509.Certificate>>, ?verifiedChains:Slice<Slice<Pointer<stdgo.crypto.x509.X509.Certificate>>>, ?signedCertificateTimestamps:Slice<Slice<GoUInt8>>, ?ocspresponse:Slice<GoUInt8>, ?tlsunique:Slice<GoUInt8>, ?_ekm:(GoString, Slice<GoUInt8>, GoInt) -> { var _0 : Slice<GoUInt8>; var _1 : stdgo.Error; }) stdgo.internal.Macro.initLocals();
    public function toString() {
        return '{' + Go.string(version) + " " + Go.string(handshakeComplete) + " " + Go.string(didResume) + " " + Go.string(cipherSuite) + " " + Go.string(negotiatedProtocol) + " " + Go.string(negotiatedProtocolIsMutual) + " " + Go.string(serverName) + " " + Go.string(peerCertificates) + " " + Go.string(verifiedChains) + " " + Go.string(signedCertificateTimestamps) + " " + Go.string(ocspresponse) + " " + Go.string(tlsunique) + " " + Go.string(_ekm) + "}";
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new ConnectionState(
version,
handshakeComplete,
didResume,
cipherSuite,
negotiatedProtocol,
negotiatedProtocolIsMutual,
serverName,
peerCertificates,
verifiedChains,
signedCertificateTimestamps,
ocspresponse,
tlsunique,
_ekm);
    }
    public function __set__(__tmp__) {
        this.version = __tmp__.version;
        this.handshakeComplete = __tmp__.handshakeComplete;
        this.didResume = __tmp__.didResume;
        this.cipherSuite = __tmp__.cipherSuite;
        this.negotiatedProtocol = __tmp__.negotiatedProtocol;
        this.negotiatedProtocolIsMutual = __tmp__.negotiatedProtocolIsMutual;
        this.serverName = __tmp__.serverName;
        this.peerCertificates = __tmp__.peerCertificates;
        this.verifiedChains = __tmp__.verifiedChains;
        this.signedCertificateTimestamps = __tmp__.signedCertificateTimestamps;
        this.ocspresponse = __tmp__.ocspresponse;
        this.tlsunique = __tmp__.tlsunique;
        this._ekm = __tmp__._ekm;
        return this;
    }
}
@:named class ClientAuthType {
    public function toString():GoString {
        var _i = this.__copy__();
        if (_i.__t__ < ((0 : GoInt)) || _i.__t__ >= new ClientAuthType((__ClientAuthType_index.length - ((1 : GoInt)))).__t__) {
            return (("ClientAuthType(" : GoString)) + stdgo.strconv.Strconv.formatInt(_i.__t__, ((10 : GoInt))) + ((")" : GoString));
        };
        return __ClientAuthType_name.__slice__(__ClientAuthType_index[_i.__t__], __ClientAuthType_index[new ClientAuthType(_i.__t__ + ((1 : GoInt))).__t__]);
    }
    public var __t__ : GoInt;
    public function new(?t:GoInt) {
        __t__ = t == null ? 0 : t;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() return new ClientAuthType(__t__);
}
@:structInit class ClientSessionState {
    public var _sessionTicket : Slice<GoUInt8> = new Slice<GoUInt8>().nil();
    public var _vers : GoUInt16 = ((0 : GoUInt16));
    public var _cipherSuite : GoUInt16 = ((0 : GoUInt16));
    public var _masterSecret : Slice<GoUInt8> = new Slice<GoUInt8>().nil();
    public var _serverCertificates : Slice<Pointer<stdgo.crypto.x509.X509.Certificate>> = new Slice<Pointer<stdgo.crypto.x509.X509.Certificate>>().nil();
    public var _verifiedChains : Slice<Slice<Pointer<stdgo.crypto.x509.X509.Certificate>>> = new Slice<Slice<Pointer<stdgo.crypto.x509.X509.Certificate>>>().nil();
    public var _receivedAt : stdgo.time.Time.Time = new stdgo.time.Time.Time();
    public var _ocspResponse : Slice<GoUInt8> = new Slice<GoUInt8>().nil();
    public var _scts : Slice<Slice<GoUInt8>> = new Slice<Slice<GoUInt8>>().nil();
    public var _nonce : Slice<GoUInt8> = new Slice<GoUInt8>().nil();
    public var _useBy : stdgo.time.Time.Time = new stdgo.time.Time.Time();
    public var _ageAdd : GoUInt32 = ((0 : GoUInt32));
    public function new(?_sessionTicket:Slice<GoUInt8>, ?_vers:GoUInt16, ?_cipherSuite:GoUInt16, ?_masterSecret:Slice<GoUInt8>, ?_serverCertificates:Slice<Pointer<stdgo.crypto.x509.X509.Certificate>>, ?_verifiedChains:Slice<Slice<Pointer<stdgo.crypto.x509.X509.Certificate>>>, ?_receivedAt:stdgo.time.Time.Time, ?_ocspResponse:Slice<GoUInt8>, ?_scts:Slice<Slice<GoUInt8>>, ?_nonce:Slice<GoUInt8>, ?_useBy:stdgo.time.Time.Time, ?_ageAdd:GoUInt32) stdgo.internal.Macro.initLocals();
    public function toString() {
        return '{' + Go.string(_sessionTicket) + " " + Go.string(_vers) + " " + Go.string(_cipherSuite) + " " + Go.string(_masterSecret) + " " + Go.string(_serverCertificates) + " " + Go.string(_verifiedChains) + " " + Go.string(_receivedAt) + " " + Go.string(_ocspResponse) + " " + Go.string(_scts) + " " + Go.string(_nonce) + " " + Go.string(_useBy) + " " + Go.string(_ageAdd) + "}";
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new ClientSessionState(
_sessionTicket,
_vers,
_cipherSuite,
_masterSecret,
_serverCertificates,
_verifiedChains,
_receivedAt,
_ocspResponse,
_scts,
_nonce,
_useBy,
_ageAdd);
    }
    public function __set__(__tmp__) {
        this._sessionTicket = __tmp__._sessionTicket;
        this._vers = __tmp__._vers;
        this._cipherSuite = __tmp__._cipherSuite;
        this._masterSecret = __tmp__._masterSecret;
        this._serverCertificates = __tmp__._serverCertificates;
        this._verifiedChains = __tmp__._verifiedChains;
        this._receivedAt = __tmp__._receivedAt;
        this._ocspResponse = __tmp__._ocspResponse;
        this._scts = __tmp__._scts;
        this._nonce = __tmp__._nonce;
        this._useBy = __tmp__._useBy;
        this._ageAdd = __tmp__._ageAdd;
        return this;
    }
}
@:named class SignatureScheme {
    public function toString():GoString {
        var _i = this.__copy__();
        if (_i.__t__ == ((513 : GoUInt16))) {
            return __SignatureScheme_name_0;
        } else if (_i.__t__ == ((515 : GoUInt16))) {
            return __SignatureScheme_name_1;
        } else if (_i.__t__ == ((1025 : GoUInt16))) {
            return __SignatureScheme_name_2;
        } else if (_i.__t__ == ((1027 : GoUInt16))) {
            return __SignatureScheme_name_3;
        } else if (_i.__t__ == ((1281 : GoUInt16))) {
            return __SignatureScheme_name_4;
        } else if (_i.__t__ == ((1283 : GoUInt16))) {
            return __SignatureScheme_name_5;
        } else if (_i.__t__ == ((1537 : GoUInt16))) {
            return __SignatureScheme_name_6;
        } else if (_i.__t__ == ((1539 : GoUInt16))) {
            return __SignatureScheme_name_7;
        } else if (((2052 : GoUInt16)) <= _i.__t__ && _i.__t__ <= ((2055 : GoUInt16))) {
            _i = new SignatureScheme(_i.__t__ - (((2052 : GoUInt16))));
            return __SignatureScheme_name_8.__slice__(__SignatureScheme_index_8[_i.__t__], __SignatureScheme_index_8[new SignatureScheme(_i.__t__ + ((1 : GoUInt16))).__t__]);
        } else {
            return (("SignatureScheme(" : GoString)) + stdgo.strconv.Strconv.formatInt(_i.__t__, ((10 : GoInt))) + ((")" : GoString));
        };
    }
    public var __t__ : GoUInt16;
    public function new(?t:GoUInt16) {
        __t__ = t == null ? 0 : t;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() return new SignatureScheme(__t__);
}
@:structInit class ClientHelloInfo {
    public function supportsCertificate(_c:Pointer<Certificate>):Error {
        var _chi = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var _config:Pointer<Config> = _chi.value._config;
        if (_config == null || _config.isNil()) {
            _config = Go.pointer(new Config());
        };
        var __tmp__ = _config.value._mutualVersion(_chi.value.supportedVersions), _vers:GoUInt16 = __tmp__._0, _ok:Bool = __tmp__._1;
        if (!_ok) {
            return stdgo.errors.Errors.new_("no mutually supported protocol versions");
        };
        if (_chi.value.serverName != (("" : GoString))) {
            var __tmp__ = _c.value._leaf(), _x509Cert:Pointer<stdgo.crypto.x509.X509.Certificate> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return stdgo.fmt.Fmt.errorf("failed to parse certificate: %w", Go.toInterface(_err));
            };
            {
                var _err:stdgo.Error = _x509Cert.value.verifyHostname(_chi.value.serverName);
                if (_err != null) {
                    return stdgo.fmt.Fmt.errorf("certificate is not valid for requested server name: %w", Go.toInterface(_err));
                };
            };
        };
        var _supportsRSAFallback:stdgo.Error -> stdgo.Error = function(_unsupported:Error):Error {
            if (_vers == versionTLS13) {
                return _unsupported;
            };
            {
                var __tmp__ = try {
                    { value : ((_c.value.privateKey.value : stdgo.crypto.Crypto.Decrypter)), ok : true };
                } catch(_) {
                    { value : ((null : stdgo.crypto.Crypto.Decrypter)), ok : false };
                }, _priv = __tmp__.value, _ok = __tmp__.ok;
                if (_ok) {
                    {
                        var __tmp__ = try {
                            { value : ((_priv.public_().value : Pointer<stdgo.crypto.rsa.Rsa.PublicKey>)), ok : true };
                        } catch(_) {
                            { value : new Pointer<stdgo.crypto.rsa.Rsa.PublicKey>().nil(), ok : false };
                        }, _ = __tmp__.value, _ok = __tmp__.ok;
                        if (!_ok) {
                            return _unsupported;
                        };
                    };
                } else {
                    return _unsupported;
                };
            };
            var _rsaCipherSuite:Pointer<T_cipherSuite> = _selectCipherSuite(_chi.value.cipherSuites, _config.value._cipherSuites(), function(_c:Pointer<T_cipherSuite>):Bool {
                if (_c.value._flags & _suiteECDHE != ((0 : GoInt))) {
                    return false;
                };
                if (_vers < versionTLS12 && _c.value._flags & _suiteTLS12 != ((0 : GoInt))) {
                    return false;
                };
                return true;
            });
            if (_rsaCipherSuite == null || _rsaCipherSuite.isNil()) {
                return _unsupported;
            };
            return ((null : stdgo.Error));
        };
        if (_chi.value.signatureSchemes.length > ((0 : GoInt))) {
            {
                var __tmp__ = _selectSignatureScheme(_vers, _c, _chi.value.signatureSchemes), _:SignatureScheme = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    return _supportsRSAFallback(_err);
                };
            };
        };
        if (_vers == versionTLS13) {
            return ((null : stdgo.Error));
        };
        if (!_supportsECDHE(_config, _chi.value.supportedCurves, _chi.value.supportedPoints)) {
            return _supportsRSAFallback(stdgo.errors.Errors.new_("client doesn\'t support ECDHE, can only use legacy RSA key exchange"));
        };
        var _ecdsaCipherSuite:Bool = false;
        {
            var __tmp__ = try {
                { value : ((_c.value.privateKey.value : stdgo.crypto.Crypto.Signer)), ok : true };
            } catch(_) {
                { value : ((null : stdgo.crypto.Crypto.Signer)), ok : false };
            }, _priv = __tmp__.value, _ok = __tmp__.ok;
            if (_ok) {
                {
                    while (true) {
                        if (Go.assertable(((_priv.public_() : Pointer<stdgo.crypto.ecdsa.Ecdsa.PublicKey>)))) {
                            var _pub:Pointer<stdgo.crypto.ecdsa.Ecdsa.PublicKey> = _priv.public_() == null ? null : _priv.public_().__underlying__() == null ? null : _priv.public_() == null ? null : _priv.public_().__underlying__().value;
                            var _curve:CurveID = new CurveID();
                            if (Go.toInterface(_pub.value.curve) == Go.toInterface(stdgo.crypto.elliptic.Elliptic.p256())) {
                                _curve = curveP256;
                            } else if (Go.toInterface(_pub.value.curve) == Go.toInterface(stdgo.crypto.elliptic.Elliptic.p384())) {
                                _curve = curveP384;
                            } else if (Go.toInterface(_pub.value.curve) == Go.toInterface(stdgo.crypto.elliptic.Elliptic.p521())) {
                                _curve = curveP521;
                            } else {
                                return _supportsRSAFallback(_unsupportedCertificateError(_c));
                            };
                            var _curveOk:Bool = false;
                            for (_c in _chi.value.supportedCurves) {
                                if (_c.__t__ == _curve.__t__ && _config.value._supportsCurve(_c)) {
                                    _curveOk = true;
                                    break;
                                };
                            };
                            if (!_curveOk) {
                                return stdgo.errors.Errors.new_("client doesn\'t support certificate curve");
                            };
                            _ecdsaCipherSuite = true;
                        } else if (Go.assertable(((_priv.public_() : stdgo.crypto.ed25519.Ed25519.PublicKey)))) {
                            var _pub:stdgo.crypto.ed25519.Ed25519.PublicKey = _priv.public_() == null ? null : _priv.public_().__underlying__() == null ? null : _priv.public_() == null ? null : _priv.public_().__underlying__().value;
                            if (_vers < versionTLS12 || _chi.value.signatureSchemes.length == ((0 : GoInt))) {
                                return stdgo.errors.Errors.new_("connection doesn\'t support Ed25519");
                            };
                            _ecdsaCipherSuite = true;
                        } else if (Go.assertable(((_priv.public_() : Pointer<stdgo.crypto.rsa.Rsa.PublicKey>)))) {
                            var _pub:Pointer<stdgo.crypto.rsa.Rsa.PublicKey> = _priv.public_() == null ? null : _priv.public_().__underlying__() == null ? null : _priv.public_() == null ? null : _priv.public_().__underlying__().value;
                        } else {
                            var _pub:stdgo.crypto.Crypto.PublicKey = _priv.public_() == null ? null : _priv.public_().__underlying__();
                            return _supportsRSAFallback(_unsupportedCertificateError(_c));
                        };
                        break;
                    };
                };
            } else {
                return _supportsRSAFallback(_unsupportedCertificateError(_c));
            };
        };
        var _cipherSuite:Pointer<T_cipherSuite> = _selectCipherSuite(_chi.value.cipherSuites, _config.value._cipherSuites(), function(_c:Pointer<T_cipherSuite>):Bool {
            if (_c.value._flags & _suiteECDHE == ((0 : GoInt))) {
                return false;
            };
            if (_c.value._flags & _suiteECSign != ((0 : GoInt))) {
                if (!_ecdsaCipherSuite) {
                    return false;
                };
            } else {
                if (_ecdsaCipherSuite) {
                    return false;
                };
            };
            if (_vers < versionTLS12 && _c.value._flags & _suiteTLS12 != ((0 : GoInt))) {
                return false;
            };
            return true;
        });
        if (_cipherSuite == null || _cipherSuite.isNil()) {
            return _supportsRSAFallback(stdgo.errors.Errors.new_("client doesn\'t support any cipher suites compatible with the certificate"));
        };
        return ((null : stdgo.Error));
    }
    public function context():stdgo.context.Context.Context {
        var _c = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        return _c.value._ctx;
    }
    public var cipherSuites : Slice<GoUInt16> = new Slice<GoUInt16>().nil();
    public var serverName : GoString = (("" : GoString));
    public var supportedCurves : Slice<CurveID> = new Slice<CurveID>().nil();
    public var supportedPoints : Slice<GoUInt8> = new Slice<GoUInt8>().nil();
    public var signatureSchemes : Slice<SignatureScheme> = new Slice<SignatureScheme>().nil();
    public var supportedProtos : Slice<GoString> = new Slice<GoString>().nil();
    public var supportedVersions : Slice<GoUInt16> = new Slice<GoUInt16>().nil();
    public var conn : stdgo.net.Net.Conn = ((null : stdgo.net.Net.Conn));
    public var _config : Pointer<Config> = new Pointer<Config>().nil();
    public var _ctx : stdgo.context.Context.Context = ((null : stdgo.context.Context.Context));
    public function new(?cipherSuites:Slice<GoUInt16>, ?serverName:GoString, ?supportedCurves:Slice<CurveID>, ?supportedPoints:Slice<GoUInt8>, ?signatureSchemes:Slice<SignatureScheme>, ?supportedProtos:Slice<GoString>, ?supportedVersions:Slice<GoUInt16>, ?conn:stdgo.net.Net.Conn, ?_config:Pointer<Config>, ?_ctx:stdgo.context.Context.Context) stdgo.internal.Macro.initLocals();
    public function toString() {
        return '{' + Go.string(cipherSuites) + " " + Go.string(serverName) + " " + Go.string(supportedCurves) + " " + Go.string(supportedPoints) + " " + Go.string(signatureSchemes) + " " + Go.string(supportedProtos) + " " + Go.string(supportedVersions) + " " + Go.string(conn) + " " + Go.string(_config) + " " + Go.string(_ctx) + "}";
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new ClientHelloInfo(cipherSuites, serverName, supportedCurves, supportedPoints, signatureSchemes, supportedProtos, supportedVersions, conn, _config, _ctx);
    }
    public function __set__(__tmp__) {
        this.cipherSuites = __tmp__.cipherSuites;
        this.serverName = __tmp__.serverName;
        this.supportedCurves = __tmp__.supportedCurves;
        this.supportedPoints = __tmp__.supportedPoints;
        this.signatureSchemes = __tmp__.signatureSchemes;
        this.supportedProtos = __tmp__.supportedProtos;
        this.supportedVersions = __tmp__.supportedVersions;
        this.conn = __tmp__.conn;
        this._config = __tmp__._config;
        this._ctx = __tmp__._ctx;
        return this;
    }
}
@:structInit class CertificateRequestInfo {
    public function supportsCertificate(_c:Pointer<Certificate>):Error {
        var _cri = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        {
            var __tmp__ = _selectSignatureScheme(_cri.value.version, _c, _cri.value.signatureSchemes), _:SignatureScheme = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return _err;
            };
        };
        if (_cri.value.acceptableCAs.length == ((0 : GoInt))) {
            return ((null : stdgo.Error));
        };
        {
            var _j;
            var _cert;
            for (_obj in _c.value.certificate.keyValueIterator()) {
                _j = _obj.key;
                _cert = _obj.value;
                var _x509Cert:Pointer<stdgo.crypto.x509.X509.Certificate> = _c.value.leaf;
                if (_j != ((0 : GoInt)) || _x509Cert == null || _x509Cert.isNil()) {
                    var _err:Error = ((null : stdgo.Error));
                    {
                        {
                            var __tmp__ = stdgo.crypto.x509.X509.parseCertificate(_cert);
                            _x509Cert = __tmp__._0;
                            _err = __tmp__._1;
                        };
                        if (_err != null) {
                            return stdgo.fmt.Fmt.errorf("failed to parse certificate #%d in the chain: %w", Go.toInterface(_j), Go.toInterface(_err));
                        };
                    };
                };
                for (_ca in _cri.value.acceptableCAs) {
                    if (stdgo.bytes.Bytes.equal(_x509Cert.value.rawIssuer, _ca)) {
                        return ((null : stdgo.Error));
                    };
                };
            };
        };
        return stdgo.errors.Errors.new_("chain is not signed by an acceptable CA");
    }
    public function context():stdgo.context.Context.Context {
        var _c = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        return _c.value._ctx;
    }
    public var acceptableCAs : Slice<Slice<GoUInt8>> = new Slice<Slice<GoUInt8>>().nil();
    public var signatureSchemes : Slice<SignatureScheme> = new Slice<SignatureScheme>().nil();
    public var version : GoUInt16 = ((0 : GoUInt16));
    public var _ctx : stdgo.context.Context.Context = ((null : stdgo.context.Context.Context));
    public function new(?acceptableCAs:Slice<Slice<GoUInt8>>, ?signatureSchemes:Slice<SignatureScheme>, ?version:GoUInt16, ?_ctx:stdgo.context.Context.Context) stdgo.internal.Macro.initLocals();
    public function toString() {
        return '{' + Go.string(acceptableCAs) + " " + Go.string(signatureSchemes) + " " + Go.string(version) + " " + Go.string(_ctx) + "}";
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new CertificateRequestInfo(acceptableCAs, signatureSchemes, version, _ctx);
    }
    public function __set__(__tmp__) {
        this.acceptableCAs = __tmp__.acceptableCAs;
        this.signatureSchemes = __tmp__.signatureSchemes;
        this.version = __tmp__.version;
        this._ctx = __tmp__._ctx;
        return this;
    }
}
@:named class RenegotiationSupport {
    public var __t__ : GoInt;
    public function new(?t:GoInt) {
        __t__ = t == null ? 0 : t;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    @:implicit
    public function toString():GoString return Go.string(__t__);
    public function __copy__() return new RenegotiationSupport(__t__);
}
@:structInit class Config {
    public function _writeKeyLog(_label:GoString, _clientRandom:Slice<GoByte>, _secret:Slice<GoByte>):Error {
        var _c = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        if (_c.value.keyLogWriter == null) {
            return ((null : stdgo.Error));
        };
        var _logLine:Slice<GoUInt8> = ((stdgo.fmt.Fmt.sprintf("%s %x %x\n", Go.toInterface(_label), Go.toInterface(_clientRandom), Go.toInterface(_secret)) : Slice<GoByte>));
        _writerMutex.lock();
        var __tmp__ = _c.value.keyLogWriter.write(_logLine), _:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        _writerMutex.unlock();
        return _err;
    }
    public function buildNameToCertificate():Void {
        var _c = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        _c.value.nameToCertificate = new GoMap<GoString, Pointer<Certificate>>(new stdgo.reflect.Reflect._Type(stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(string_kind), stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("crypto/tls.Certificate", [], stdgo.reflect.Reflect.GoType.named("crypto/tls.Certificate", [], stdgo.reflect.Reflect.GoType.structType([{ name : "certificate", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(uint8_kind))) }, { name : "privateKey", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("crypto.PrivateKey", [], stdgo.reflect.Reflect.GoType.interfaceType(true, [])) }, { name : "supportedSignatureAlgorithms", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.named("crypto/tls.SignatureScheme", [], stdgo.reflect.Reflect.GoType.basic(uint16_kind))) }, { name : "ocspstaple", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(uint8_kind)) }, { name : "signedCertificateTimestamps", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(uint8_kind))) }, { name : "leaf", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("crypto/x509.Certificate", [], stdgo.reflect.Reflect.GoType.structType([
{ name : "raw", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(uint8_kind)) },
{ name : "rawTBSCertificate", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(uint8_kind)) },
{ name : "rawSubjectPublicKeyInfo", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(uint8_kind)) },
{ name : "rawSubject", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(uint8_kind)) },
{ name : "rawIssuer", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(uint8_kind)) },
{ name : "signature", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(uint8_kind)) },
{ name : "signatureAlgorithm", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("crypto/x509.SignatureAlgorithm", [], stdgo.reflect.Reflect.GoType.basic(int_kind)) },
{ name : "publicKeyAlgorithm", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("crypto/x509.PublicKeyAlgorithm", [], stdgo.reflect.Reflect.GoType.basic(int_kind)) },
{ name : "publicKey", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.interfaceType(true, []) },
{ name : "version", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int_kind) },
{ name : "serialNumber", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("math/big.Int", [], stdgo.reflect.Reflect.GoType.structType([{ name : "_neg", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(bool_kind) }, { name : "_abs", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("math/big.nat", [], stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.named("math/big.Word", [], stdgo.reflect.Reflect.GoType.basic(uint_kind)))) }]))) },
{ name : "issuer", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("crypto/x509/pkix.Name", [], stdgo.reflect.Reflect.GoType.structType([
{ name : "country", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(string_kind)) },
{ name : "organization", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(string_kind)) },
{ name : "organizationalUnit", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(string_kind)) },
{ name : "locality", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(string_kind)) },
{ name : "province", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(string_kind)) },
{ name : "streetAddress", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(string_kind)) },
{ name : "postalCode", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(string_kind)) },
{ name : "serialNumber", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) },
{ name : "commonName", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) },
{ name : "names", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.named("crypto/x509/pkix.AttributeTypeAndValue", [], stdgo.reflect.Reflect.GoType.structType([{ name : "type", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("encoding/asn1.ObjectIdentifier", [], stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(int_kind))) }, { name : "value", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.interfaceType(true, []) }]))) },
{ name : "extraNames", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.named("crypto/x509/pkix.AttributeTypeAndValue", [], stdgo.reflect.Reflect.GoType.invalidType)) }])) },
{ name : "subject", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("crypto/x509/pkix.Name", [], stdgo.reflect.Reflect.GoType.invalidType) },
{ name : "notBefore", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("time.Time", [], stdgo.reflect.Reflect.GoType.structType([{ name : "_wall", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint64_kind) }, { name : "_ext", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int64_kind) }, { name : "_loc", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("time.Location", [], stdgo.reflect.Reflect.GoType.structType([{ name : "_name", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) }, { name : "_zone", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.named("time.zone", [], stdgo.reflect.Reflect.GoType.structType([{ name : "_name", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) }, { name : "_offset", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int_kind) }, { name : "_isDST", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(bool_kind) }]))) }, { name : "_tx", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.named("time.zoneTrans", [], stdgo.reflect.Reflect.GoType.structType([{ name : "_when", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int64_kind) }, { name : "_index", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint8_kind) }, { name : "_isstd", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(bool_kind) }, { name : "_isutc", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(bool_kind) }]))) }, { name : "_extend", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) }, { name : "_cacheStart", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int64_kind) }, { name : "_cacheEnd", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int64_kind) }, { name : "_cacheZone", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("time.zone", [], stdgo.reflect.Reflect.GoType.invalidType)) }]))) }])) },
{ name : "notAfter", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("time.Time", [], stdgo.reflect.Reflect.GoType.invalidType) },
{ name : "keyUsage", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("crypto/x509.KeyUsage", [], stdgo.reflect.Reflect.GoType.basic(int_kind)) },
{ name : "extensions", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.named("crypto/x509/pkix.Extension", [], stdgo.reflect.Reflect.GoType.structType([{ name : "id", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("encoding/asn1.ObjectIdentifier", [], stdgo.reflect.Reflect.GoType.invalidType) }, { name : "critical", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(bool_kind) }, { name : "value", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(uint8_kind)) }]))) },
{ name : "extraExtensions", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.named("crypto/x509/pkix.Extension", [], stdgo.reflect.Reflect.GoType.invalidType)) },
{ name : "unhandledCriticalExtensions", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.named("encoding/asn1.ObjectIdentifier", [], stdgo.reflect.Reflect.GoType.invalidType)) },
{ name : "extKeyUsage", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.named("crypto/x509.ExtKeyUsage", [], stdgo.reflect.Reflect.GoType.basic(int_kind))) },
{ name : "unknownExtKeyUsage", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.named("encoding/asn1.ObjectIdentifier", [], stdgo.reflect.Reflect.GoType.invalidType)) },
{ name : "basicConstraintsValid", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(bool_kind) },
{ name : "isCA", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(bool_kind) },
{ name : "maxPathLen", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int_kind) },
{ name : "maxPathLenZero", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(bool_kind) },
{ name : "subjectKeyId", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(uint8_kind)) },
{ name : "authorityKeyId", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(uint8_kind)) },
{ name : "ocspserver", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(string_kind)) },
{ name : "issuingCertificateURL", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(string_kind)) },
{ name : "dnsnames", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(string_kind)) },
{ name : "emailAddresses", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(string_kind)) },
{ name : "ipaddresses", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.named("net.IP", [], stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(uint8_kind)))) },
{ name : "uris", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("net/url.URL", [], stdgo.reflect.Reflect.GoType.structType([{ name : "scheme", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) }, { name : "opaque", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) }, { name : "user", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("net/url.Userinfo", [], stdgo.reflect.Reflect.GoType.structType([{ name : "_username", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) }, { name : "_password", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) }, { name : "_passwordSet", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(bool_kind) }]))) }, { name : "host", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) }, { name : "path", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) }, { name : "rawPath", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) }, { name : "forceQuery", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(bool_kind) }, { name : "rawQuery", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) }, { name : "fragment", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) }, { name : "rawFragment", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) }])))) },
{ name : "permittedDNSDomainsCritical", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(bool_kind) },
{ name : "permittedDNSDomains", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(string_kind)) },
{ name : "excludedDNSDomains", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(string_kind)) },
{ name : "permittedIPRanges", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("net.IPNet", [], stdgo.reflect.Reflect.GoType.structType([{ name : "ip", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("net.IP", [], stdgo.reflect.Reflect.GoType.invalidType) }, { name : "mask", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("net.IPMask", [], stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(uint8_kind))) }])))) },
{ name : "excludedIPRanges", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("net.IPNet", [], stdgo.reflect.Reflect.GoType.invalidType))) },
{ name : "permittedEmailAddresses", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(string_kind)) },
{ name : "excludedEmailAddresses", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(string_kind)) },
{ name : "permittedURIDomains", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(string_kind)) },
{ name : "excludedURIDomains", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(string_kind)) },
{ name : "crldistributionPoints", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(string_kind)) },
{ name : "policyIdentifiers", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.named("encoding/asn1.ObjectIdentifier", [], stdgo.reflect.Reflect.GoType.invalidType)) }]))) }])))))));
        {
            var _i;
            for (_obj in _c.value.certificates.keyValueIterator()) {
                _i = _obj.key;
                var _cert:Pointer<Certificate> = Go.pointer(_c.value.certificates[_i]);
                var __tmp__ = _cert.value._leaf(), _x509Cert:Pointer<stdgo.crypto.x509.X509.Certificate> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    continue;
                };
                if (_x509Cert.value.subject.commonName != (("" : GoString)) && _x509Cert.value.dnsnames.length == ((0 : GoInt))) {
                    _c.value.nameToCertificate[_x509Cert.value.subject.commonName] = _cert;
                };
                for (_san in _x509Cert.value.dnsnames) {
                    _c.value.nameToCertificate[_san] = _cert;
                };
            };
        };
    }
    public function _getCertificate(_clientHello:Pointer<ClientHelloInfo>):{ var _0 : Pointer<Certificate>; var _1 : Error; } {
        var _c = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        if (_c.value.getCertificate != null && (_c.value.certificates.length == ((0 : GoInt)) || _clientHello.value.serverName.length > ((0 : GoInt)))) {
            var __tmp__ = _c.value.getCertificate(_clientHello), _cert:Pointer<Certificate> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_cert != null && !_cert.isNil() || _err != null) {
                return { _0 : _cert, _1 : _err };
            };
        };
        if (_c.value.certificates.length == ((0 : GoInt))) {
            return { _0 : new Pointer<Certificate>().nil(), _1 : _errNoCertificates };
        };
        if (_c.value.certificates.length == ((1 : GoInt))) {
            return { _0 : Go.pointer(_c.value.certificates[((0 : GoInt))]), _1 : ((null : stdgo.Error)) };
        };
        if (_c.value.nameToCertificate != null && !_c.value.nameToCertificate.isNil()) {
            var _name:GoString = stdgo.strings.Strings.toLower(_clientHello.value.serverName);
            {
                var __tmp__ = _c.value.nameToCertificate.exists(_name) ? { value : _c.value.nameToCertificate[_name], ok : true } : { value : _c.value.nameToCertificate.defaultValue(), ok : false }, _cert:Pointer<Certificate> = __tmp__.value, _ok:Bool = __tmp__.ok;
                if (_ok) {
                    return { _0 : _cert, _1 : ((null : stdgo.Error)) };
                };
            };
            if (_name.length > ((0 : GoInt))) {
                var _labels:Slice<GoString> = stdgo.strings.Strings.split(_name, ".");
                _labels[((0 : GoInt))] = "*";
                var _wildcardName:GoString = stdgo.strings.Strings.join(_labels, ".");
                {
                    var __tmp__ = _c.value.nameToCertificate.exists(_wildcardName) ? { value : _c.value.nameToCertificate[_wildcardName], ok : true } : { value : _c.value.nameToCertificate.defaultValue(), ok : false }, _cert:Pointer<Certificate> = __tmp__.value, _ok:Bool = __tmp__.ok;
                    if (_ok) {
                        return { _0 : _cert, _1 : ((null : stdgo.Error)) };
                    };
                };
            };
        };
        for (_cert in _c.value.certificates) {
            {
                var _err:stdgo.Error = _clientHello.value.supportsCertificate(Go.pointer(_cert));
                if (_err == null) {
                    return { _0 : Go.pointer(_cert), _1 : ((null : stdgo.Error)) };
                };
            };
        };
        return { _0 : Go.pointer(_c.value.certificates[((0 : GoInt))]), _1 : ((null : stdgo.Error)) };
    }
    public function _mutualVersion(_peerVersions:Slice<GoUInt16>):{ var _0 : GoUInt16; var _1 : Bool; } {
        var _c = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var _supportedVersions:Slice<GoUInt16> = _c.value._supportedVersions();
        for (_peerVersion in _peerVersions) {
            for (_v in Tls._supportedVersions) {
                if (_v == _peerVersion) {
                    return { _0 : _v, _1 : true };
                };
            };
        };
        return { _0 : ((0 : GoUInt16)), _1 : false };
    }
    public function _supportsCurve(_curve:CurveID):Bool {
        var _c = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        for (_cc in _c.value._curvePreferences()) {
            if (_cc.__t__ == _curve.__t__) {
                return true;
            };
        };
        return false;
    }
    public function _curvePreferences():Slice<CurveID> {
        var _c = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        if (_c == null || _c.isNil() || _c.value.curvePreferences.length == ((0 : GoInt))) {
            return _defaultCurvePreferences;
        };
        return _c.value.curvePreferences;
    }
    public function _maxSupportedVersion():GoUInt16 {
        var _c = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var _supportedVersions:Slice<GoUInt16> = _c.value._supportedVersions();
        if (Tls._supportedVersions.length == ((0 : GoInt))) {
            return ((0 : GoUInt16));
        };
        return Tls._supportedVersions[((0 : GoInt))];
    }
    public function _supportedVersions():Slice<GoUInt16> {
        var _c = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var _versions:Slice<GoUInt16> = new Slice<GoUInt16>(...[for (i in 0 ... ((((0 : GoInt)) : GoInt)).toBasic()) ((0 : GoUInt16))]).setCap(((Tls._supportedVersions.length : GoInt)).toBasic());
        for (_v in Tls._supportedVersions) {
            if (_c != null && !_c.isNil() && _c.value.minVersion != ((0 : GoUInt16)) && _v < _c.value.minVersion) {
                continue;
            };
            if (_c != null && !_c.isNil() && _c.value.maxVersion != ((0 : GoUInt16)) && _v > _c.value.maxVersion) {
                continue;
            };
            _versions = _versions.__append__(_v);
        };
        return _versions;
    }
    public function _cipherSuites():Slice<GoUInt16> {
        var _c = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        if (_c.value.cipherSuites != null && !_c.value.cipherSuites.isNil()) {
            return _c.value.cipherSuites;
        };
        return _defaultCipherSuites;
    }
    public function _time():stdgo.time.Time.Time {
        var _c = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var _t:() -> stdgo.time.Time.Time = _c.value.time;
        if (_t == null) {
            _t = stdgo.time.Time.now;
        };
        return _t().__copy__();
    }
    public function _rand():stdgo.io.Io.Reader {
        var _c = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var _r:stdgo.io.Io.Reader = _c.value.rand;
        if (_r == null) {
            return stdgo.crypto.rand.Rand.reader;
        };
        return _r;
    }
    public function setSessionTicketKeys(_keys:Slice<GoArray<GoByte>>):Void {
        var _c = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        if (_keys.length == ((0 : GoInt))) {
            throw "tls: keys must have at least one key";
        };
        var _newKeys:Slice<T_ticketKey> = new Slice<T_ticketKey>(...[for (i in 0 ... ((_keys.length : GoInt)).toBasic()) new T_ticketKey()]);
        {
            var _i;
            var _bytes;
            for (_obj in _keys.keyValueIterator()) {
                _i = _obj.key;
                _bytes = _obj.value;
                _newKeys[_i] = _c.value._ticketKeyFromBytes(_bytes.copy()).__copy__();
            };
        };
        _c.value._mutex.lock();
        _c.value._sessionTicketKeys = _newKeys;
        _c.value._mutex.unlock();
    }
    public function _ticketKeys(_configForClient:Pointer<Config>):Slice<T_ticketKey> {
        var _c = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var recover_exception:Error = null;
        var deferstack:Array<Void -> Void> = [];
        if (_configForClient != null && !_configForClient.isNil()) {
            _configForClient.value._mutex.rlock();
            if (_configForClient.value.sessionTicketsDisabled) {
                return new Slice<T_ticketKey>().nil();
            };
            _configForClient.value._initLegacySessionTicketKeyRLocked();
            if (_configForClient.value._sessionTicketKeys.length != ((0 : GoInt))) {
                var _ret:Slice<T_ticketKey> = _configForClient.value._sessionTicketKeys;
                _configForClient.value._mutex.runlock();
                return _ret;
            };
            _configForClient.value._mutex.runlock();
        };
        try {
            _c.value._mutex.rlock();
            deferstack.unshift(() -> _c.value._mutex.runlock());
            if (_c.value.sessionTicketsDisabled) {
                {
                    for (defer in deferstack) {
                        defer();
                    };
                    return new Slice<T_ticketKey>().nil();
                };
            };
            _c.value._initLegacySessionTicketKeyRLocked();
            if (_c.value._sessionTicketKeys.length != ((0 : GoInt))) {
                {
                    for (defer in deferstack) {
                        defer();
                    };
                    return _c.value._sessionTicketKeys;
                };
            };
            if (_c.value._autoSessionTicketKeys.length > ((0 : GoInt)) && _c.value._time().sub(_c.value._autoSessionTicketKeys[((0 : GoInt))]._created.__copy__()).__t__ < _ticketKeyRotation.__t__) {
                {
                    for (defer in deferstack) {
                        defer();
                    };
                    return _c.value._autoSessionTicketKeys;
                };
            };
            _c.value._mutex.runlock();
            deferstack.unshift(() -> _c.value._mutex.rlock());
            _c.value._mutex.lock();
            deferstack.unshift(() -> _c.value._mutex.unlock());
            if (_c.value._autoSessionTicketKeys.length == ((0 : GoInt)) || _c.value._time().sub(_c.value._autoSessionTicketKeys[((0 : GoInt))]._created.__copy__()).__t__ >= _ticketKeyRotation.__t__) {
                var _newKey:GoArray<GoByte> = new GoArray<GoUInt8>(...[for (i in 0 ... 32) ((0 : GoUInt8))]);
                {
                    var __tmp__ = stdgo.io.Io.readFull(_c.value._rand(), _newKey.__slice__(0)), _:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                    if (_err != null) {
                        throw stdgo.fmt.Fmt.sprintf("unable to generate random session ticket key: %v", Go.toInterface(_err));
                    };
                };
                var _valid:Slice<T_ticketKey> = new Slice<T_ticketKey>(...[for (i in 0 ... ((((0 : GoInt)) : GoInt)).toBasic()) new T_ticketKey()]).setCap(((_c.value._autoSessionTicketKeys.length + ((1 : GoInt)) : GoInt)).toBasic());
                _valid = _valid.__append__(_c.value._ticketKeyFromBytes(_newKey.copy()).__copy__());
                for (_k in _c.value._autoSessionTicketKeys) {
                    if (_c.value._time().sub(_k._created.__copy__()).__t__ < _ticketKeyLifetime.__t__) {
                        _valid = _valid.__append__(_k.__copy__());
                    };
                };
                _c.value._autoSessionTicketKeys = _valid;
            };
            {
                for (defer in deferstack) {
                    defer();
                };
                return _c.value._autoSessionTicketKeys;
            };
            for (defer in deferstack) {
                defer();
            };
        } catch(e) {
            recover_exception = stdgo.runtime.Runtime.newRuntime(e.message);
            {
                for (defer in deferstack) {
                    defer();
                };
                if (recover_exception != null) throw recover_exception;
                return new Slice<T_ticketKey>().nil();
            };
        };
    }
    public function _initLegacySessionTicketKeyRLocked():Void {
        var _c = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var recover_exception:Error = null;
        var deferstack:Array<Void -> Void> = [];
        try {
            if (!{
                var bool = true;
                for (i in 0 ... _c.value.sessionTicketKey.length.toBasic()) {
                    if (Go.toInterface(_c.value.sessionTicketKey[i]) != Go.toInterface(new GoArray<GoUInt8>(...([].concat([for (i in 0 ... 32) 0])))[i])) {
                        bool = false;
                        break;
                    };
                };
                bool;
            } && (stdgo.bytes.Bytes.hasPrefix(_c.value.sessionTicketKey.__slice__(0), _deprecatedSessionTicketKey) || _c.value._sessionTicketKeys.length > ((0 : GoInt)))) {
                return;
            };
            _c.value._mutex.runlock();
            deferstack.unshift(() -> _c.value._mutex.rlock());
            _c.value._mutex.lock();
            deferstack.unshift(() -> _c.value._mutex.unlock());
            if ({
                var bool = true;
                for (i in 0 ... _c.value.sessionTicketKey.length.toBasic()) {
                    if (Go.toInterface(_c.value.sessionTicketKey[i]) != Go.toInterface(new GoArray<GoUInt8>(...([].concat([for (i in 0 ... 32) 0])))[i])) {
                        bool = false;
                        break;
                    };
                };
                bool;
            }) {
                {
                    var __tmp__ = stdgo.io.Io.readFull(_c.value._rand(), _c.value.sessionTicketKey.__slice__(0)), _:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                    if (_err != null) {
                        throw stdgo.fmt.Fmt.sprintf("tls: unable to generate random session ticket key: %v", Go.toInterface(_err));
                    };
                };
                Go.copy(_c.value.sessionTicketKey.__slice__(0), _deprecatedSessionTicketKey);
            } else if (!stdgo.bytes.Bytes.hasPrefix(_c.value.sessionTicketKey.__slice__(0), _deprecatedSessionTicketKey) && _c.value._sessionTicketKeys.length == ((0 : GoInt))) {
                _c.value._sessionTicketKeys = new Slice<T_ticketKey>(_c.value._ticketKeyFromBytes(_c.value.sessionTicketKey.copy()).__copy__());
            };
            for (defer in deferstack) {
                defer();
            };
        } catch(e) {
            recover_exception = stdgo.runtime.Runtime.newRuntime(e.message);
            {
                for (defer in deferstack) {
                    defer();
                };
                if (recover_exception != null) throw recover_exception;
                return;
            };
        };
    }
    public function clone():Pointer<Config> {
        var _c = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var recover_exception:Error = null;
        var deferstack:Array<Void -> Void> = [];
        if (_c == null || _c.isNil()) {
            return new Pointer<Config>().nil();
        };
        try {
            _c.value._mutex.rlock();
            deferstack.unshift(() -> _c.value._mutex.runlock());
            {
                for (defer in deferstack) {
                    defer();
                };
                return Go.pointer((({ rand : _c.value.rand, time : _c.value.time, certificates : _c.value.certificates, nameToCertificate : _c.value.nameToCertificate, getCertificate : _c.value.getCertificate, getClientCertificate : _c.value.getClientCertificate, getConfigForClient : _c.value.getConfigForClient, verifyPeerCertificate : _c.value.verifyPeerCertificate, verifyConnection : _c.value.verifyConnection, rootCAs : _c.value.rootCAs, nextProtos : _c.value.nextProtos, serverName : _c.value.serverName, clientAuth : _c.value.clientAuth, clientCAs : _c.value.clientCAs, insecureSkipVerify : _c.value.insecureSkipVerify, cipherSuites : _c.value.cipherSuites, preferServerCipherSuites : _c.value.preferServerCipherSuites, sessionTicketsDisabled : _c.value.sessionTicketsDisabled, sessionTicketKey : _c.value.sessionTicketKey.copy(), clientSessionCache : _c.value.clientSessionCache, minVersion : _c.value.minVersion, maxVersion : _c.value.maxVersion, curvePreferences : _c.value.curvePreferences, dynamicRecordSizingDisabled : _c.value.dynamicRecordSizingDisabled, renegotiation : _c.value.renegotiation, keyLogWriter : _c.value.keyLogWriter, _sessionTicketKeys : _c.value._sessionTicketKeys, _autoSessionTicketKeys : _c.value._autoSessionTicketKeys, _mutex : new stdgo.sync.Sync.RWMutex() } : Config)));
            };
            for (defer in deferstack) {
                defer();
            };
        } catch(e) {
            recover_exception = stdgo.runtime.Runtime.newRuntime(e.message);
            {
                for (defer in deferstack) {
                    defer();
                };
                if (recover_exception != null) throw recover_exception;
                return new Pointer<Config>().nil();
            };
        };
    }
    public function _ticketKeyFromBytes(_b:GoArray<GoByte>):T_ticketKey {
        var _c = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var _key:T_ticketKey = new T_ticketKey();
        var _hashed:GoArray<GoUInt8> = stdgo.crypto.sha512.Sha512.sum512(_b.__slice__(0)).copy();
        Go.copy(_key._keyName.__slice__(0), _hashed.__slice__(0, _ticketKeyNameLen));
        Go.copy(_key._aesKey.__slice__(0), _hashed.__slice__(_ticketKeyNameLen, _ticketKeyNameLen + ((16 : GoUnTypedInt))));
        Go.copy(_key._hmacKey.__slice__(0), _hashed.__slice__(_ticketKeyNameLen + ((16 : GoUnTypedInt)), _ticketKeyNameLen + ((32 : GoUnTypedInt))));
        _key._created = _c.value._time().__copy__();
        return _key.__copy__();
    }
    public var rand : stdgo.io.Io.Reader = ((null : stdgo.io.Io.Reader));
    public var time : () -> stdgo.time.Time.Time = null;
    public var certificates : Slice<Certificate> = new Slice<Certificate>().nil();
    public var nameToCertificate : GoMap<GoString, Pointer<Certificate>> = new GoMap<GoString, Pointer<Certificate>>(new stdgo.reflect.Reflect._Type(stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(string_kind), stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("crypto/tls.Certificate", [], stdgo.reflect.Reflect.GoType.structType([{ name : "certificate", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(uint8_kind))) }, { name : "privateKey", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("crypto.PrivateKey", [], stdgo.reflect.Reflect.GoType.interfaceType(true, [])) }, { name : "supportedSignatureAlgorithms", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.named("crypto/tls.SignatureScheme", [], stdgo.reflect.Reflect.GoType.basic(uint16_kind))) }, { name : "ocspstaple", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(uint8_kind)) }, { name : "signedCertificateTimestamps", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(uint8_kind))) }, { name : "leaf", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("crypto/x509.Certificate", [], stdgo.reflect.Reflect.GoType.structType([
{ name : "raw", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(uint8_kind)) },
{ name : "rawTBSCertificate", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(uint8_kind)) },
{ name : "rawSubjectPublicKeyInfo", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(uint8_kind)) },
{ name : "rawSubject", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(uint8_kind)) },
{ name : "rawIssuer", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(uint8_kind)) },
{ name : "signature", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(uint8_kind)) },
{ name : "signatureAlgorithm", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("crypto/x509.SignatureAlgorithm", [], stdgo.reflect.Reflect.GoType.basic(int_kind)) },
{ name : "publicKeyAlgorithm", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("crypto/x509.PublicKeyAlgorithm", [], stdgo.reflect.Reflect.GoType.basic(int_kind)) },
{ name : "publicKey", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.interfaceType(true, []) },
{ name : "version", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int_kind) },
{ name : "serialNumber", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("math/big.Int", [], stdgo.reflect.Reflect.GoType.structType([{ name : "_neg", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(bool_kind) }, { name : "_abs", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("math/big.nat", [], stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.named("math/big.Word", [], stdgo.reflect.Reflect.GoType.basic(uint_kind)))) }]))) },
{ name : "issuer", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("crypto/x509/pkix.Name", [], stdgo.reflect.Reflect.GoType.structType([
{ name : "country", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(string_kind)) },
{ name : "organization", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(string_kind)) },
{ name : "organizationalUnit", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(string_kind)) },
{ name : "locality", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(string_kind)) },
{ name : "province", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(string_kind)) },
{ name : "streetAddress", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(string_kind)) },
{ name : "postalCode", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(string_kind)) },
{ name : "serialNumber", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) },
{ name : "commonName", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) },
{ name : "names", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.named("crypto/x509/pkix.AttributeTypeAndValue", [], stdgo.reflect.Reflect.GoType.structType([{ name : "type", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("encoding/asn1.ObjectIdentifier", [], stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(int_kind))) }, { name : "value", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.interfaceType(true, []) }]))) },
{ name : "extraNames", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.named("crypto/x509/pkix.AttributeTypeAndValue", [], stdgo.reflect.Reflect.GoType.invalidType)) }])) },
{ name : "subject", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("crypto/x509/pkix.Name", [], stdgo.reflect.Reflect.GoType.invalidType) },
{ name : "notBefore", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("time.Time", [], stdgo.reflect.Reflect.GoType.structType([{ name : "_wall", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint64_kind) }, { name : "_ext", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int64_kind) }, { name : "_loc", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("time.Location", [], stdgo.reflect.Reflect.GoType.structType([{ name : "_name", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) }, { name : "_zone", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.named("time.zone", [], stdgo.reflect.Reflect.GoType.structType([{ name : "_name", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) }, { name : "_offset", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int_kind) }, { name : "_isDST", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(bool_kind) }]))) }, { name : "_tx", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.named("time.zoneTrans", [], stdgo.reflect.Reflect.GoType.structType([{ name : "_when", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int64_kind) }, { name : "_index", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint8_kind) }, { name : "_isstd", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(bool_kind) }, { name : "_isutc", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(bool_kind) }]))) }, { name : "_extend", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) }, { name : "_cacheStart", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int64_kind) }, { name : "_cacheEnd", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int64_kind) }, { name : "_cacheZone", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("time.zone", [], stdgo.reflect.Reflect.GoType.invalidType)) }]))) }])) },
{ name : "notAfter", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("time.Time", [], stdgo.reflect.Reflect.GoType.invalidType) },
{ name : "keyUsage", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("crypto/x509.KeyUsage", [], stdgo.reflect.Reflect.GoType.basic(int_kind)) },
{ name : "extensions", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.named("crypto/x509/pkix.Extension", [], stdgo.reflect.Reflect.GoType.structType([{ name : "id", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("encoding/asn1.ObjectIdentifier", [], stdgo.reflect.Reflect.GoType.invalidType) }, { name : "critical", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(bool_kind) }, { name : "value", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(uint8_kind)) }]))) },
{ name : "extraExtensions", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.named("crypto/x509/pkix.Extension", [], stdgo.reflect.Reflect.GoType.invalidType)) },
{ name : "unhandledCriticalExtensions", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.named("encoding/asn1.ObjectIdentifier", [], stdgo.reflect.Reflect.GoType.invalidType)) },
{ name : "extKeyUsage", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.named("crypto/x509.ExtKeyUsage", [], stdgo.reflect.Reflect.GoType.basic(int_kind))) },
{ name : "unknownExtKeyUsage", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.named("encoding/asn1.ObjectIdentifier", [], stdgo.reflect.Reflect.GoType.invalidType)) },
{ name : "basicConstraintsValid", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(bool_kind) },
{ name : "isCA", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(bool_kind) },
{ name : "maxPathLen", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int_kind) },
{ name : "maxPathLenZero", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(bool_kind) },
{ name : "subjectKeyId", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(uint8_kind)) },
{ name : "authorityKeyId", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(uint8_kind)) },
{ name : "ocspserver", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(string_kind)) },
{ name : "issuingCertificateURL", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(string_kind)) },
{ name : "dnsnames", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(string_kind)) },
{ name : "emailAddresses", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(string_kind)) },
{ name : "ipaddresses", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.named("net.IP", [], stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(uint8_kind)))) },
{ name : "uris", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("net/url.URL", [], stdgo.reflect.Reflect.GoType.structType([{ name : "scheme", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) }, { name : "opaque", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) }, { name : "user", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("net/url.Userinfo", [], stdgo.reflect.Reflect.GoType.structType([{ name : "_username", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) }, { name : "_password", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) }, { name : "_passwordSet", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(bool_kind) }]))) }, { name : "host", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) }, { name : "path", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) }, { name : "rawPath", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) }, { name : "forceQuery", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(bool_kind) }, { name : "rawQuery", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) }, { name : "fragment", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) }, { name : "rawFragment", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) }])))) },
{ name : "permittedDNSDomainsCritical", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(bool_kind) },
{ name : "permittedDNSDomains", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(string_kind)) },
{ name : "excludedDNSDomains", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(string_kind)) },
{ name : "permittedIPRanges", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("net.IPNet", [], stdgo.reflect.Reflect.GoType.structType([{ name : "ip", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("net.IP", [], stdgo.reflect.Reflect.GoType.invalidType) }, { name : "mask", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("net.IPMask", [], stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(uint8_kind))) }])))) },
{ name : "excludedIPRanges", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("net.IPNet", [], stdgo.reflect.Reflect.GoType.invalidType))) },
{ name : "permittedEmailAddresses", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(string_kind)) },
{ name : "excludedEmailAddresses", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(string_kind)) },
{ name : "permittedURIDomains", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(string_kind)) },
{ name : "excludedURIDomains", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(string_kind)) },
{ name : "crldistributionPoints", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(string_kind)) },
{ name : "policyIdentifiers", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.named("encoding/asn1.ObjectIdentifier", [], stdgo.reflect.Reflect.GoType.invalidType)) }]))) }])))))).nil();
    public var getCertificate : Pointer<ClientHelloInfo> -> { var _0 : Pointer<Certificate>; var _1 : stdgo.Error; } = null;
    public var getClientCertificate : Pointer<CertificateRequestInfo> -> { var _0 : Pointer<Certificate>; var _1 : stdgo.Error; } = null;
    public var getConfigForClient : Pointer<ClientHelloInfo> -> { var _0 : Pointer<Config>; var _1 : stdgo.Error; } = null;
    public var verifyPeerCertificate : (Slice<Slice<GoUInt8>>, Slice<Slice<Pointer<stdgo.crypto.x509.X509.Certificate>>>) -> stdgo.Error = null;
    public var verifyConnection : ConnectionState -> stdgo.Error = null;
    public var rootCAs : Pointer<stdgo.crypto.x509.X509.CertPool> = new Pointer<stdgo.crypto.x509.X509.CertPool>().nil();
    public var nextProtos : Slice<GoString> = new Slice<GoString>().nil();
    public var serverName : GoString = (("" : GoString));
    public var clientAuth : ClientAuthType = new ClientAuthType();
    public var clientCAs : Pointer<stdgo.crypto.x509.X509.CertPool> = new Pointer<stdgo.crypto.x509.X509.CertPool>().nil();
    public var insecureSkipVerify : Bool = false;
    public var cipherSuites : Slice<GoUInt16> = new Slice<GoUInt16>().nil();
    public var preferServerCipherSuites : Bool = false;
    public var sessionTicketsDisabled : Bool = false;
    public var sessionTicketKey : GoArray<GoUInt8> = new GoArray<GoUInt8>(...[for (i in 0 ... 32) ((0 : GoUInt8))]);
    public var clientSessionCache : ClientSessionCache = ((null : ClientSessionCache));
    public var minVersion : GoUInt16 = ((0 : GoUInt16));
    public var maxVersion : GoUInt16 = ((0 : GoUInt16));
    public var curvePreferences : Slice<CurveID> = new Slice<CurveID>().nil();
    public var dynamicRecordSizingDisabled : Bool = false;
    public var renegotiation : RenegotiationSupport = new RenegotiationSupport();
    public var keyLogWriter : stdgo.io.Io.Writer = ((null : stdgo.io.Io.Writer));
    public var _mutex : stdgo.sync.Sync.RWMutex = new stdgo.sync.Sync.RWMutex();
    public var _sessionTicketKeys : Slice<T_ticketKey> = new Slice<T_ticketKey>().nil();
    public var _autoSessionTicketKeys : Slice<T_ticketKey> = new Slice<T_ticketKey>().nil();
    public function new(?rand:stdgo.io.Io.Reader, ?time:() -> stdgo.time.Time.Time, ?certificates:Slice<Certificate>, ?nameToCertificate:GoMap<GoString, Pointer<Certificate>>, ?getCertificate:Pointer<ClientHelloInfo> -> { var _0 : Pointer<Certificate>; var _1 : stdgo.Error; }, ?getClientCertificate:Pointer<CertificateRequestInfo> -> { var _0 : Pointer<Certificate>; var _1 : stdgo.Error; }, ?getConfigForClient:Pointer<ClientHelloInfo> -> { var _0 : Pointer<Config>; var _1 : stdgo.Error; }, ?verifyPeerCertificate:(Slice<Slice<GoUInt8>>, Slice<Slice<Pointer<stdgo.crypto.x509.X509.Certificate>>>) -> stdgo.Error, ?verifyConnection:ConnectionState -> stdgo.Error, ?rootCAs:Pointer<stdgo.crypto.x509.X509.CertPool>, ?nextProtos:Slice<GoString>, ?serverName:GoString, ?clientAuth:ClientAuthType, ?clientCAs:Pointer<stdgo.crypto.x509.X509.CertPool>, ?insecureSkipVerify:Bool, ?cipherSuites:Slice<GoUInt16>, ?preferServerCipherSuites:Bool, ?sessionTicketsDisabled:Bool, ?sessionTicketKey:GoArray<GoUInt8>, ?clientSessionCache:ClientSessionCache, ?minVersion:GoUInt16, ?maxVersion:GoUInt16, ?curvePreferences:Slice<CurveID>, ?dynamicRecordSizingDisabled:Bool, ?renegotiation:RenegotiationSupport, ?keyLogWriter:stdgo.io.Io.Writer, ?_mutex:stdgo.sync.Sync.RWMutex, ?_sessionTicketKeys:Slice<T_ticketKey>, ?_autoSessionTicketKeys:Slice<T_ticketKey>) stdgo.internal.Macro.initLocals();
    public function toString() {
        return '{' + Go.string(rand) + " " + Go.string(time) + " " + Go.string(certificates) + " " + Go.string(nameToCertificate) + " " + Go.string(getCertificate) + " " + Go.string(getClientCertificate) + " " + Go.string(getConfigForClient) + " " + Go.string(verifyPeerCertificate) + " " + Go.string(verifyConnection) + " " + Go.string(rootCAs) + " " + Go.string(nextProtos) + " " + Go.string(serverName) + " " + Go.string(clientAuth) + " " + Go.string(clientCAs) + " " + Go.string(insecureSkipVerify) + " " + Go.string(cipherSuites) + " " + Go.string(preferServerCipherSuites) + " " + Go.string(sessionTicketsDisabled) + " " + Go.string(sessionTicketKey) + " " + Go.string(clientSessionCache) + " " + Go.string(minVersion) + " " + Go.string(maxVersion) + " " + Go.string(curvePreferences) + " " + Go.string(dynamicRecordSizingDisabled) + " " + Go.string(renegotiation) + " " + Go.string(keyLogWriter) + " " + Go.string(_mutex) + " " + Go.string(_sessionTicketKeys) + " " + Go.string(_autoSessionTicketKeys) + "}";
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new Config(
rand,
time,
certificates,
nameToCertificate,
getCertificate,
getClientCertificate,
getConfigForClient,
verifyPeerCertificate,
verifyConnection,
rootCAs,
nextProtos,
serverName,
clientAuth,
clientCAs,
insecureSkipVerify,
cipherSuites,
preferServerCipherSuites,
sessionTicketsDisabled,
sessionTicketKey,
clientSessionCache,
minVersion,
maxVersion,
curvePreferences,
dynamicRecordSizingDisabled,
renegotiation,
keyLogWriter,
_mutex,
_sessionTicketKeys,
_autoSessionTicketKeys);
    }
    public function __set__(__tmp__) {
        this.rand = __tmp__.rand;
        this.time = __tmp__.time;
        this.certificates = __tmp__.certificates;
        this.nameToCertificate = __tmp__.nameToCertificate;
        this.getCertificate = __tmp__.getCertificate;
        this.getClientCertificate = __tmp__.getClientCertificate;
        this.getConfigForClient = __tmp__.getConfigForClient;
        this.verifyPeerCertificate = __tmp__.verifyPeerCertificate;
        this.verifyConnection = __tmp__.verifyConnection;
        this.rootCAs = __tmp__.rootCAs;
        this.nextProtos = __tmp__.nextProtos;
        this.serverName = __tmp__.serverName;
        this.clientAuth = __tmp__.clientAuth;
        this.clientCAs = __tmp__.clientCAs;
        this.insecureSkipVerify = __tmp__.insecureSkipVerify;
        this.cipherSuites = __tmp__.cipherSuites;
        this.preferServerCipherSuites = __tmp__.preferServerCipherSuites;
        this.sessionTicketsDisabled = __tmp__.sessionTicketsDisabled;
        this.sessionTicketKey = __tmp__.sessionTicketKey;
        this.clientSessionCache = __tmp__.clientSessionCache;
        this.minVersion = __tmp__.minVersion;
        this.maxVersion = __tmp__.maxVersion;
        this.curvePreferences = __tmp__.curvePreferences;
        this.dynamicRecordSizingDisabled = __tmp__.dynamicRecordSizingDisabled;
        this.renegotiation = __tmp__.renegotiation;
        this.keyLogWriter = __tmp__.keyLogWriter;
        this._mutex = __tmp__._mutex;
        this._sessionTicketKeys = __tmp__._sessionTicketKeys;
        this._autoSessionTicketKeys = __tmp__._autoSessionTicketKeys;
        return this;
    }
}
@:structInit class T_ticketKey {
    public var _keyName : GoArray<GoUInt8> = new GoArray<GoUInt8>(...[for (i in 0 ... 16) ((0 : GoUInt8))]);
    public var _aesKey : GoArray<GoUInt8> = new GoArray<GoUInt8>(...[for (i in 0 ... 16) ((0 : GoUInt8))]);
    public var _hmacKey : GoArray<GoUInt8> = new GoArray<GoUInt8>(...[for (i in 0 ... 16) ((0 : GoUInt8))]);
    public var _created : stdgo.time.Time.Time = new stdgo.time.Time.Time();
    public function new(?_keyName:GoArray<GoUInt8>, ?_aesKey:GoArray<GoUInt8>, ?_hmacKey:GoArray<GoUInt8>, ?_created:stdgo.time.Time.Time) stdgo.internal.Macro.initLocals();
    public function toString() {
        return '{' + Go.string(_keyName) + " " + Go.string(_aesKey) + " " + Go.string(_hmacKey) + " " + Go.string(_created) + "}";
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_ticketKey(_keyName, _aesKey, _hmacKey, _created);
    }
    public function __set__(__tmp__) {
        this._keyName = __tmp__._keyName;
        this._aesKey = __tmp__._aesKey;
        this._hmacKey = __tmp__._hmacKey;
        this._created = __tmp__._created;
        return this;
    }
}
@:structInit class Certificate {
    public function _leaf():{ var _0 : Pointer<stdgo.crypto.x509.X509.Certificate>; var _1 : Error; } {
        var _c = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        if (_c.value.leaf != null && !_c.value.leaf.isNil()) {
            return { _0 : _c.value.leaf, _1 : ((null : stdgo.Error)) };
        };
        return stdgo.crypto.x509.X509.parseCertificate(_c.value.certificate[((0 : GoInt))]);
    }
    public var certificate : Slice<Slice<GoUInt8>> = new Slice<Slice<GoUInt8>>().nil();
    public var privateKey : stdgo.crypto.Crypto.PrivateKey = ((null : stdgo.crypto.Crypto.PrivateKey));
    public var supportedSignatureAlgorithms : Slice<SignatureScheme> = new Slice<SignatureScheme>().nil();
    public var ocspstaple : Slice<GoUInt8> = new Slice<GoUInt8>().nil();
    public var signedCertificateTimestamps : Slice<Slice<GoUInt8>> = new Slice<Slice<GoUInt8>>().nil();
    public var leaf : Pointer<stdgo.crypto.x509.X509.Certificate> = new Pointer<stdgo.crypto.x509.X509.Certificate>().nil();
    public function new(?certificate:Slice<Slice<GoUInt8>>, ?privateKey:stdgo.crypto.Crypto.PrivateKey, ?supportedSignatureAlgorithms:Slice<SignatureScheme>, ?ocspstaple:Slice<GoUInt8>, ?signedCertificateTimestamps:Slice<Slice<GoUInt8>>, ?leaf:Pointer<stdgo.crypto.x509.X509.Certificate>) stdgo.internal.Macro.initLocals();
    public function toString() {
        return '{' + Go.string(certificate) + " " + Go.string(privateKey) + " " + Go.string(supportedSignatureAlgorithms) + " " + Go.string(ocspstaple) + " " + Go.string(signedCertificateTimestamps) + " " + Go.string(leaf) + "}";
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new Certificate(certificate, privateKey, supportedSignatureAlgorithms, ocspstaple, signedCertificateTimestamps, leaf);
    }
    public function __set__(__tmp__) {
        this.certificate = __tmp__.certificate;
        this.privateKey = __tmp__.privateKey;
        this.supportedSignatureAlgorithms = __tmp__.supportedSignatureAlgorithms;
        this.ocspstaple = __tmp__.ocspstaple;
        this.signedCertificateTimestamps = __tmp__.signedCertificateTimestamps;
        this.leaf = __tmp__.leaf;
        return this;
    }
}
@:structInit class T_lruSessionCache {
    public function get(_sessionKey:GoString):{ var _0 : Pointer<ClientSessionState>; var _1 : Bool; } {
        var _c = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var recover_exception:Error = null;
        var deferstack:Array<Void -> Void> = [];
        _c.value.lock();
        deferstack.unshift(() -> _c.value.unlock());
        try {
            {
                var __tmp__ = _c.value._m.exists(_sessionKey) ? { value : _c.value._m[_sessionKey], ok : true } : { value : _c.value._m.defaultValue(), ok : false }, _elem:Pointer<stdgo.container.list.List.Element> = __tmp__.value, _ok:Bool = __tmp__.ok;
                if (_ok) {
                    _c.value._q.value.moveToFront(_elem);
                    {
                        for (defer in deferstack) {
                            defer();
                        };
                        return { _0 : ((_elem.value.value.value : Pointer<T_lruSessionCacheEntry>)).value._state, _1 : true };
                    };
                };
            };
            {
                for (defer in deferstack) {
                    defer();
                };
                return { _0 : new Pointer<ClientSessionState>().nil(), _1 : false };
            };
            for (defer in deferstack) {
                defer();
            };
        } catch(e) {
            recover_exception = stdgo.runtime.Runtime.newRuntime(e.message);
            {
                for (defer in deferstack) {
                    defer();
                };
                if (recover_exception != null) throw recover_exception;
                return { _0 : new Pointer<ClientSessionState>().nil(), _1 : false };
            };
        };
    }
    public function put(_sessionKey:GoString, _cs:Pointer<ClientSessionState>):Void {
        var _c = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var recover_exception:Error = null;
        var deferstack:Array<Void -> Void> = [];
        try {
            _c.value.lock();
            deferstack.unshift(() -> _c.value.unlock());
            {
                var __tmp__ = _c.value._m.exists(_sessionKey) ? { value : _c.value._m[_sessionKey], ok : true } : { value : _c.value._m.defaultValue(), ok : false }, _elem:Pointer<stdgo.container.list.List.Element> = __tmp__.value, _ok:Bool = __tmp__.ok;
                if (_ok) {
                    if (_cs == null || _cs.isNil()) {
                        _c.value._q.value.remove(_elem);
                        _c.value._m.remove(_sessionKey);
                    } else {
                        var _entry:Pointer<T_lruSessionCacheEntry> = ((_elem.value.value.value : Pointer<T_lruSessionCacheEntry>));
                        _entry.value._state = _cs;
                        _c.value._q.value.moveToFront(_elem);
                    };
                    {
                        for (defer in deferstack) {
                            defer();
                        };
                        return;
                    };
                };
            };
            if (_c.value._q.value.len() < _c.value._capacity) {
                var _entry:Pointer<T_lruSessionCacheEntry> = Go.pointer(new T_lruSessionCacheEntry(_sessionKey, _cs));
                _c.value._m[_sessionKey] = _c.value._q.value.pushFront(Go.toInterface(_entry));
                {
                    for (defer in deferstack) {
                        defer();
                    };
                    return;
                };
            };
            var _elem:Pointer<stdgo.container.list.List.Element> = _c.value._q.value.back();
            var _entry:Pointer<T_lruSessionCacheEntry> = ((_elem.value.value.value : Pointer<T_lruSessionCacheEntry>));
            _c.value._m.remove(_entry.value._sessionKey);
            _entry.value._sessionKey = _sessionKey;
            _entry.value._state = _cs;
            _c.value._q.value.moveToFront(_elem);
            _c.value._m[_sessionKey] = _elem;
            for (defer in deferstack) {
                defer();
            };
        } catch(e) {
            recover_exception = stdgo.runtime.Runtime.newRuntime(e.message);
            {
                for (defer in deferstack) {
                    defer();
                };
                if (recover_exception != null) throw recover_exception;
                return;
            };
        };
    }
    @:embedded
    public var mutex : stdgo.sync.Sync.Mutex = new stdgo.sync.Sync.Mutex();
    public var _m : GoMap<GoString, Pointer<stdgo.container.list.List.Element>> = new GoMap<GoString, Pointer<stdgo.container.list.List.Element>>(new stdgo.reflect.Reflect._Type(stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(string_kind), stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("container/list.Element", [], stdgo.reflect.Reflect.GoType.structType([{ name : "_next", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("container/list.Element", [], stdgo.reflect.Reflect.GoType.invalidType)) }, { name : "_prev", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("container/list.Element", [], stdgo.reflect.Reflect.GoType.invalidType)) }, { name : "_list", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("container/list.List", [], stdgo.reflect.Reflect.GoType.structType([{ name : "_root", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("container/list.Element", [], stdgo.reflect.Reflect.GoType.invalidType) }, { name : "_len", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int_kind) }]))) }, { name : "value", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.interfaceType(true, []) }])))))).nil();
    public var _q : Pointer<stdgo.container.list.List.List_> = new Pointer<stdgo.container.list.List.List_>().nil();
    public var _capacity : GoInt = ((0 : GoInt));
    public function new(?mutex:stdgo.sync.Sync.Mutex, ?_m:GoMap<GoString, Pointer<stdgo.container.list.List.Element>>, ?_q:Pointer<stdgo.container.list.List.List_>, ?_capacity:GoInt) stdgo.internal.Macro.initLocals();
    public function toString() {
        return '{' + Go.string(mutex) + " " + Go.string(_m) + " " + Go.string(_q) + " " + Go.string(_capacity) + "}";
    }
    public function lock() mutex.lock();
    public function unlock() mutex.unlock();
    public function _lockSlow() mutex._lockSlow();
    public function _unlockSlow(_new:GoInt32) mutex._unlockSlow(_0);
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_lruSessionCache(mutex, _m, _q, _capacity);
    }
    public function __set__(__tmp__) {
        this.mutex = __tmp__.mutex;
        this._m = __tmp__._m;
        this._q = __tmp__._q;
        this._capacity = __tmp__._capacity;
        return this;
    }
}
@:structInit class T_lruSessionCacheEntry {
    public var _sessionKey : GoString = (("" : GoString));
    public var _state : Pointer<ClientSessionState> = new Pointer<ClientSessionState>().nil();
    public function new(?_sessionKey:GoString, ?_state:Pointer<ClientSessionState>) stdgo.internal.Macro.initLocals();
    public function toString() {
        return '{' + Go.string(_sessionKey) + " " + Go.string(_state) + "}";
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_lruSessionCacheEntry(_sessionKey, _state);
    }
    public function __set__(__tmp__) {
        this._sessionKey = __tmp__._sessionKey;
        this._state = __tmp__._state;
        return this;
    }
}
@:structInit class Conn {
    public function _decryptTicket(_encrypted:Slice<GoByte>):{ var _0 : Slice<GoByte>; var _1 : Bool; } {
        var _c = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var _plaintext:Slice<GoByte> = new Slice<GoUInt8>().nil(), _usedOldKey:Bool = false;
        if (_encrypted.length < _ticketKeyNameLen + stdgo.crypto.aes.Aes.blockSize + stdgo.crypto.sha256.Sha256.size) {
            return { _0 : new Slice<GoUInt8>().nil(), _1 : false };
        };
        var _keyName:Slice<GoUInt8> = _encrypted.__slice__(0, _ticketKeyNameLen);
        var _iv:Slice<GoUInt8> = _encrypted.__slice__(_ticketKeyNameLen, _ticketKeyNameLen + stdgo.crypto.aes.Aes.blockSize);
        var _macBytes:Slice<GoUInt8> = _encrypted.__slice__(_encrypted.length - stdgo.crypto.sha256.Sha256.size);
        var _ciphertext:Slice<GoUInt8> = _encrypted.__slice__(_ticketKeyNameLen + stdgo.crypto.aes.Aes.blockSize, _encrypted.length - stdgo.crypto.sha256.Sha256.size);
        var _keyIndex:GoInt = -((1 : GoUnTypedInt));
        {
            var _i;
            var _candidateKey;
            for (_obj in _c.value._ticketKeys.keyValueIterator()) {
                _i = _obj.key;
                _candidateKey = _obj.value;
                if (stdgo.bytes.Bytes.equal(_keyName, _candidateKey._keyName.__slice__(0))) {
                    _keyIndex = _i;
                    break;
                };
            };
        };
        if (_keyIndex == -((1 : GoUnTypedInt))) {
            return { _0 : new Slice<GoUInt8>().nil(), _1 : false };
        };
        var _key:Pointer<T_ticketKey> = Go.pointer(_c.value._ticketKeys[_keyIndex]);
        var _mac:stdgo.hash.Hash.Hash = stdgo.crypto.hmac.Hmac.new_(stdgo.crypto.sha256.Sha256.new_, _key.value._hmacKey.__slice__(0));
        _mac.write(_encrypted.__slice__(0, _encrypted.length - stdgo.crypto.sha256.Sha256.size));
        var _expected:Slice<GoUInt8> = _mac.sum(new Slice<GoUInt8>().nil());
        if (stdgo.crypto.subtle.Subtle.constantTimeCompare(_macBytes, _expected) != ((1 : GoInt))) {
            return { _0 : new Slice<GoUInt8>().nil(), _1 : false };
        };
        var __tmp__ = stdgo.crypto.aes.Aes.newCipher(_key.value._aesKey.__slice__(0)), _block:stdgo.crypto.cipher.Cipher.Block = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : new Slice<GoUInt8>().nil(), _1 : false };
        };
        _plaintext = new Slice<GoUInt8>(...[for (i in 0 ... ((_ciphertext.length : GoInt)).toBasic()) ((0 : GoUInt8))]);
        stdgo.crypto.cipher.Cipher.newCTR(_block, _iv).xorkeyStream(_plaintext, _ciphertext);
        return { _0 : _plaintext, _1 : _keyIndex > ((0 : GoInt)) };
    }
    public function _encryptTicket(_state:Slice<GoByte>):{ var _0 : Slice<GoByte>; var _1 : Error; } {
        var _c = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        if (_c.value._ticketKeys.length == ((0 : GoInt))) {
            return { _0 : new Slice<GoUInt8>().nil(), _1 : stdgo.errors.Errors.new_("tls: internal error: session ticket keys unavailable") };
        };
        var _encrypted:Slice<GoUInt8> = new Slice<GoUInt8>(...[for (i in 0 ... ((_ticketKeyNameLen + stdgo.crypto.aes.Aes.blockSize + _state.length + stdgo.crypto.sha256.Sha256.size : GoInt)).toBasic()) ((0 : GoUInt8))]);
        var _keyName:Slice<GoUInt8> = _encrypted.__slice__(0, _ticketKeyNameLen);
        var _iv:Slice<GoUInt8> = _encrypted.__slice__(_ticketKeyNameLen, _ticketKeyNameLen + stdgo.crypto.aes.Aes.blockSize);
        var _macBytes:Slice<GoUInt8> = _encrypted.__slice__(_encrypted.length - stdgo.crypto.sha256.Sha256.size);
        {
            var __tmp__ = stdgo.io.Io.readFull(_c.value._config.value._rand(), _iv), _:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return { _0 : new Slice<GoUInt8>().nil(), _1 : _err };
            };
        };
        var _key:T_ticketKey = _c.value._ticketKeys[((0 : GoInt))].__copy__();
        Go.copy(_keyName, _key._keyName.__slice__(0));
        var __tmp__ = stdgo.crypto.aes.Aes.newCipher(_key._aesKey.__slice__(0)), _block:stdgo.crypto.cipher.Cipher.Block = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : new Slice<GoUInt8>().nil(), _1 : stdgo.errors.Errors.new_((("tls: failed to create cipher while encrypting ticket: " : GoString)) + _err.error()) };
        };
        stdgo.crypto.cipher.Cipher.newCTR(_block, _iv).xorkeyStream(_encrypted.__slice__(_ticketKeyNameLen + stdgo.crypto.aes.Aes.blockSize), _state);
        var _mac:stdgo.hash.Hash.Hash = stdgo.crypto.hmac.Hmac.new_(stdgo.crypto.sha256.Sha256.new_, _key._hmacKey.__slice__(0));
        _mac.write(_encrypted.__slice__(0, _encrypted.length - stdgo.crypto.sha256.Sha256.size));
        _mac.sum(_macBytes.__slice__(0, ((0 : GoInt))));
        return { _0 : _encrypted, _1 : ((null : stdgo.Error)) };
    }
    public function _processCertsFromClient(_certificate:Certificate):Error {
        var _c = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var _certificates:Slice<Slice<GoUInt8>> = _certificate.certificate;
        var _certs:Slice<Pointer<stdgo.crypto.x509.X509.Certificate>> = new Slice<Pointer<stdgo.crypto.x509.X509.Certificate>>(...[for (i in 0 ... ((_certificates.length : GoInt)).toBasic()) new Pointer<stdgo.crypto.x509.X509.Certificate>().nil()]);
        var _err:Error = ((null : stdgo.Error));
        {
            var _i;
            var _asn1Data;
            for (_obj in _certificates.keyValueIterator()) {
                _i = _obj.key;
                _asn1Data = _obj.value;
                {
                    {
                        var __tmp__ = stdgo.crypto.x509.X509.parseCertificate(_asn1Data);
                        _certs[_i] = __tmp__._0;
                        _err = __tmp__._1;
                    };
                    if (_err != null) {
                        _c.value._sendAlert(_alertBadCertificate);
                        return stdgo.errors.Errors.new_((("tls: failed to parse client certificate: " : GoString)) + _err.error());
                    };
                };
            };
        };
        if (_certs.length == ((0 : GoInt)) && _requiresClientCert(_c.value._config.value.clientAuth)) {
            _c.value._sendAlert(_alertBadCertificate);
            return stdgo.errors.Errors.new_("tls: client didn\'t provide a certificate");
        };
        if (_c.value._config.value.clientAuth.__t__ >= verifyClientCertIfGiven.__t__ && _certs.length > ((0 : GoInt))) {
            var _opts:stdgo.crypto.x509.X509.VerifyOptions = (({ roots : _c.value._config.value.clientCAs, currentTime : new stdgo.time.Time.Time(_c.value._config.value._time().__copy__().__copy__()), intermediates : stdgo.crypto.x509.X509.newCertPool(), keyUsages : new Slice<stdgo.crypto.x509.X509.ExtKeyUsage>(stdgo.crypto.x509.X509.extKeyUsageClientAuth), dnsname : "", maxConstraintComparisions : 0 } : stdgo.crypto.x509.X509.VerifyOptions)).__copy__();
            for (_cert in _certs.__slice__(((1 : GoInt)))) {
                _opts.intermediates.value.addCert(_cert);
            };
            var __tmp__ = _certs[((0 : GoInt))].value.verify(_opts.__copy__()), _chains:Slice<Slice<Pointer<stdgo.crypto.x509.X509.Certificate>>> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _c.value._sendAlert(_alertBadCertificate);
                return stdgo.errors.Errors.new_((("tls: failed to verify client certificate: " : GoString)) + _err.error());
            };
            _c.value._verifiedChains = _chains;
        };
        _c.value._peerCertificates = _certs;
        _c.value._ocspResponse = _certificate.ocspstaple;
        _c.value._scts = _certificate.signedCertificateTimestamps;
        if (_certs.length > ((0 : GoInt))) {
            if (Go.assertable(((_certs[((0 : GoInt))].value.publicKey : Pointer<stdgo.crypto.ecdsa.Ecdsa.PublicKey>))) || Go.assertable(((_certs[((0 : GoInt))].value.publicKey : Pointer<stdgo.crypto.rsa.Rsa.PublicKey>))) || Go.assertable(((_certs[((0 : GoInt))].value.publicKey : stdgo.crypto.ed25519.Ed25519.PublicKey)))) {} else {
                _c.value._sendAlert(_alertUnsupportedCertificate);
                return stdgo.fmt.Fmt.errorf("tls: client certificate contains an unsupported public key of type %T", Go.toInterface(_certs[((0 : GoInt))].value.publicKey));
            };
        };
        if (_c.value._config.value.verifyPeerCertificate != null) {
            {
                var _err:stdgo.Error = _c.value._config.value.verifyPeerCertificate(_certificates, _c.value._verifiedChains);
                if (_err != null) {
                    _c.value._sendAlert(_alertBadCertificate);
                    return _err;
                };
            };
        };
        return ((null : stdgo.Error));
    }
    public function _readClientHello(_ctx:stdgo.context.Context.Context):{ var _0 : Pointer<T_clientHelloMsg>; var _1 : Error; } {
        var _c = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var __tmp__ = _c.value._readHandshake(), _msg:AnyInterface = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : new Pointer<T_clientHelloMsg>().nil(), _1 : _err };
        };
        var __tmp__ = try {
            { value : ((_msg.value : Pointer<T_clientHelloMsg>)), ok : true };
        } catch(_) {
            { value : new Pointer<T_clientHelloMsg>().nil(), ok : false };
        }, _clientHello = __tmp__.value, _ok = __tmp__.ok;
        if (!_ok) {
            _c.value._sendAlert(_alertUnexpectedMessage);
            return { _0 : new Pointer<T_clientHelloMsg>().nil(), _1 : _unexpectedMessageError(Go.toInterface(_clientHello), Go.toInterface(_msg)) };
        };
        var _configForClient:Pointer<Config> = new Pointer<Config>().nil();
        var _originalConfig:Pointer<Config> = _c.value._config;
        if (_c.value._config.value.getConfigForClient != null) {
            var _chi:Pointer<ClientHelloInfo> = _clientHelloInfo(_ctx, _c, _clientHello);
            {
                {
                    var __tmp__ = _c.value._config.value.getConfigForClient(_chi);
                    _configForClient = __tmp__._0;
                    _err = __tmp__._1;
                };
                if (_err != null) {
                    _c.value._sendAlert(_alertInternalError);
                    return { _0 : new Pointer<T_clientHelloMsg>().nil(), _1 : _err };
                } else if (_configForClient != null && !_configForClient.isNil()) {
                    _c.value._config = _configForClient;
                };
            };
        };
        _c.value._ticketKeys = _originalConfig.value._ticketKeys(_configForClient);
        var _clientVersions:Slice<GoUInt16> = _clientHello.value._supportedVersions;
        if (_clientHello.value._supportedVersions.length == ((0 : GoInt))) {
            _clientVersions = _supportedVersionsFromMax(_clientHello.value._vers);
        };
        {
            var __tmp__ = _c.value._config.value._mutualVersion(_clientVersions);
            _c.value._vers = __tmp__._0;
            _ok = __tmp__._1;
        };
        if (!_ok) {
            _c.value._sendAlert(_alertProtocolVersion);
            return { _0 : new Pointer<T_clientHelloMsg>().nil(), _1 : stdgo.fmt.Fmt.errorf("tls: client offered only unsupported versions: %x", Go.toInterface(_clientVersions)) };
        };
        _c.value._haveVers = true;
        _c.value._in._version = _c.value._vers;
        _c.value._out._version = _c.value._vers;
        return { _0 : _clientHello, _1 : ((null : stdgo.Error)) };
    }
    public function _serverHandshake(_ctx:stdgo.context.Context.Context):Error {
        var _c = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var __tmp__ = _c.value._readClientHello(_ctx), _clientHello:Pointer<T_clientHelloMsg> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return _err;
        };
        if (_c.value._vers == versionTLS13) {
            var _hs:T_serverHandshakeStateTLS13 = (({ _c : _c, _ctx : _ctx, _clientHello : _clientHello, _hello : new Pointer<T_serverHelloMsg>().nil(), _sentDummyCCS : false, _usingPSK : false, _suite : new Pointer<T_cipherSuiteTLS13>().nil(), _cert : new Pointer<Certificate>().nil(), _sigAlg : new SignatureScheme(), _earlySecret : new Slice<GoUInt8>().nil(), _sharedKey : new Slice<GoUInt8>().nil(), _handshakeSecret : new Slice<GoUInt8>().nil(), _masterSecret : new Slice<GoUInt8>().nil(), _trafficSecret : new Slice<GoUInt8>().nil(), _transcript : ((null : stdgo.hash.Hash.Hash)), _clientFinished : new Slice<GoUInt8>().nil() } : T_serverHandshakeStateTLS13)).__copy__();
            return _hs._handshake();
        };
        var _hs:T_serverHandshakeState = (({ _c : _c, _ctx : _ctx, _clientHello : _clientHello, _hello : new Pointer<T_serverHelloMsg>().nil(), _suite : new Pointer<T_cipherSuite>().nil(), _ecdheOk : false, _ecSignOk : false, _rsaDecryptOk : false, _rsaSignOk : false, _sessionState : new Pointer<T_sessionState>().nil(), _finishedHash : new T_finishedHash(), _masterSecret : new Slice<GoUInt8>().nil(), _cert : new Pointer<Certificate>().nil() } : T_serverHandshakeState)).__copy__();
        return _hs._handshake();
    }
    public function _handleNewSessionTicket(_msg:Pointer<T_newSessionTicketMsgTLS13>):Error {
        var _c = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        if (!_c.value._isClient) {
            _c.value._sendAlert(_alertUnexpectedMessage);
            return stdgo.errors.Errors.new_("tls: received new session ticket from a client");
        };
        if (_c.value._config.value.sessionTicketsDisabled || _c.value._config.value.clientSessionCache == null) {
            return ((null : stdgo.Error));
        };
        if (_msg.value._lifetime == ((0 : GoUInt32))) {
            return ((null : stdgo.Error));
        };
        var _lifetime:stdgo.time.Time.Duration = new stdgo.time.Time.Duration(new stdgo.time.Time.Duration(_msg.value._lifetime).__t__ * stdgo.time.Time.second.__t__);
        if (_lifetime.__t__ > _maxSessionTicketLifetime.__t__) {
            _c.value._sendAlert(_alertIllegalParameter);
            return stdgo.errors.Errors.new_("tls: received a session ticket with invalid lifetime");
        };
        var _cipherSuite:Pointer<T_cipherSuiteTLS13> = _cipherSuiteTLS13ByID(_c.value._cipherSuite);
        if (_cipherSuite == null || _cipherSuite.isNil() || _c.value._resumptionSecret == null || _c.value._resumptionSecret.isNil()) {
            return _c.value._sendAlert(_alertInternalError);
        };
        var _session:Pointer<ClientSessionState> = Go.pointer((({ _sessionTicket : _msg.value._label, _vers : _c.value._vers, _cipherSuite : _c.value._cipherSuite, _masterSecret : _c.value._resumptionSecret, _serverCertificates : _c.value._peerCertificates, _verifiedChains : _c.value._verifiedChains, _receivedAt : _c.value._config.value._time().__copy__(), _nonce : _msg.value._nonce, _useBy : _c.value._config.value._time().add(_lifetime).__copy__(), _ageAdd : _msg.value._ageAdd, _ocspResponse : _c.value._ocspResponse, _scts : _c.value._scts } : ClientSessionState)));
        var _cacheKey:GoString = _clientSessionCacheKey(_c.value._conn.remoteAddr(), _c.value._config);
        _c.value._config.value.clientSessionCache.put(_cacheKey, _session);
        return ((null : stdgo.Error));
    }
    public function _getClientCertificate(_cri:Pointer<CertificateRequestInfo>):{ var _0 : Pointer<Certificate>; var _1 : Error; } {
        var _c = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        if (_c.value._config.value.getClientCertificate != null) {
            return _c.value._config.value.getClientCertificate(_cri);
        };
        for (_chain in _c.value._config.value.certificates) {
            {
                var _err:stdgo.Error = _cri.value.supportsCertificate(Go.pointer(_chain));
                if (_err != null) {
                    continue;
                };
            };
            return { _0 : Go.pointer(_chain), _1 : ((null : stdgo.Error)) };
        };
        return { _0 : Go.pointer(new Certificate()), _1 : ((null : stdgo.Error)) };
    }
    public function _verifyServerCertificate(_certificates:Slice<Slice<GoByte>>):Error {
        var _c = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var _certs:Slice<Pointer<stdgo.crypto.x509.X509.Certificate>> = new Slice<Pointer<stdgo.crypto.x509.X509.Certificate>>(...[for (i in 0 ... ((_certificates.length : GoInt)).toBasic()) new Pointer<stdgo.crypto.x509.X509.Certificate>().nil()]);
        {
            var _i;
            var _asn1Data;
            for (_obj in _certificates.keyValueIterator()) {
                _i = _obj.key;
                _asn1Data = _obj.value;
                var __tmp__ = stdgo.crypto.x509.X509.parseCertificate(_asn1Data), _cert:Pointer<stdgo.crypto.x509.X509.Certificate> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    _c.value._sendAlert(_alertBadCertificate);
                    return stdgo.errors.Errors.new_((("tls: failed to parse certificate from server: " : GoString)) + _err.error());
                };
                _certs[_i] = _cert;
            };
        };
        if (!_c.value._config.value.insecureSkipVerify) {
            var _opts:stdgo.crypto.x509.X509.VerifyOptions = (({ roots : _c.value._config.value.rootCAs, currentTime : new stdgo.time.Time.Time(_c.value._config.value._time().__copy__().__copy__()), dnsname : _c.value._config.value.serverName, intermediates : stdgo.crypto.x509.X509.newCertPool(), keyUsages : new Slice<stdgo.crypto.x509.X509.ExtKeyUsage>().nil(), maxConstraintComparisions : 0 } : stdgo.crypto.x509.X509.VerifyOptions)).__copy__();
            for (_cert in _certs.__slice__(((1 : GoInt)))) {
                _opts.intermediates.value.addCert(_cert);
            };
            var _err:Error = ((null : stdgo.Error));
            {
                var __tmp__ = _certs[((0 : GoInt))].value.verify(_opts.__copy__());
                _c.value._verifiedChains = __tmp__._0;
                _err = __tmp__._1;
            };
            if (_err != null) {
                _c.value._sendAlert(_alertBadCertificate);
                return _err;
            };
        };
        {
            while (true) {
                if (Go.assertable(((_certs[((0 : GoInt))].value.publicKey : Pointer<stdgo.crypto.rsa.Rsa.PublicKey>))) || Go.assertable(((_certs[((0 : GoInt))].value.publicKey : Pointer<stdgo.crypto.ecdsa.Ecdsa.PublicKey>))) || Go.assertable(((_certs[((0 : GoInt))].value.publicKey : stdgo.crypto.ed25519.Ed25519.PublicKey)))) {
                    break;
                } else {
                    _c.value._sendAlert(_alertUnsupportedCertificate);
                    return stdgo.fmt.Fmt.errorf("tls: server\'s certificate contains an unsupported type of public key: %T", Go.toInterface(_certs[((0 : GoInt))].value.publicKey));
                };
                break;
            };
        };
        _c.value._peerCertificates = _certs;
        if (_c.value._config.value.verifyPeerCertificate != null) {
            {
                var _err:stdgo.Error = _c.value._config.value.verifyPeerCertificate(_certificates, _c.value._verifiedChains);
                if (_err != null) {
                    _c.value._sendAlert(_alertBadCertificate);
                    return _err;
                };
            };
        };
        if (_c.value._config.value.verifyConnection != null) {
            {
                var _err:stdgo.Error = _c.value._config.value.verifyConnection(_c.value._connectionStateLocked().__copy__());
                if (_err != null) {
                    _c.value._sendAlert(_alertBadCertificate);
                    return _err;
                };
            };
        };
        return ((null : stdgo.Error));
    }
    public function _pickTLSVersion(_serverHello:Pointer<T_serverHelloMsg>):Error {
        var _c = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var _peerVersion:GoUInt16 = _serverHello.value._vers;
        if (_serverHello.value._supportedVersion != ((0 : GoUInt16))) {
            _peerVersion = _serverHello.value._supportedVersion;
        };
        var __tmp__ = _c.value._config.value._mutualVersion(new Slice<GoUInt16>(_peerVersion)), _vers:GoUInt16 = __tmp__._0, _ok:Bool = __tmp__._1;
        if (!_ok) {
            _c.value._sendAlert(_alertProtocolVersion);
            return stdgo.fmt.Fmt.errorf("tls: server selected unsupported protocol version %x", Go.toInterface(_peerVersion));
        };
        _c.value._vers = _vers;
        _c.value._haveVers = true;
        _c.value._in._version = _vers;
        _c.value._out._version = _vers;
        return ((null : stdgo.Error));
    }
    public function _loadSession(_hello:Pointer<T_clientHelloMsg>):{ var _0 : GoString; var _1 : Pointer<ClientSessionState>; var _2 : Slice<GoByte>; var _3 : Slice<GoByte>; } {
        var _c = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var _cacheKey:GoString = (("" : GoString)), _session:Pointer<ClientSessionState> = new Pointer<ClientSessionState>().nil(), _earlySecret:Slice<GoByte> = new Slice<GoUInt8>().nil(), _binderKey:Slice<GoByte> = new Slice<GoUInt8>().nil();
        if (_c.value._config.value.sessionTicketsDisabled || _c.value._config.value.clientSessionCache == null) {
            return { _0 : "", _1 : new Pointer<ClientSessionState>().nil(), _2 : new Slice<GoUInt8>().nil(), _3 : new Slice<GoUInt8>().nil() };
        };
        _hello.value._ticketSupported = true;
        if (_hello.value._supportedVersions[((0 : GoInt))] == versionTLS13) {
            _hello.value._pskModes = new Slice<GoUInt8>(_pskModeDHE);
        };
        if (_c.value._handshakes != ((0 : GoInt))) {
            return { _0 : "", _1 : new Pointer<ClientSessionState>().nil(), _2 : new Slice<GoUInt8>().nil(), _3 : new Slice<GoUInt8>().nil() };
        };
        _cacheKey = _clientSessionCacheKey(_c.value._conn.remoteAddr(), _c.value._config);
        var __tmp__ = _c.value._config.value.clientSessionCache.get(_cacheKey), _session:Pointer<ClientSessionState> = __tmp__._0, _ok:Bool = __tmp__._1;
        if (!_ok || _session == null || _session.isNil()) {
            return { _0 : _cacheKey, _1 : new Pointer<ClientSessionState>().nil(), _2 : new Slice<GoUInt8>().nil(), _3 : new Slice<GoUInt8>().nil() };
        };
        var _versOk:Bool = false;
        for (_v in _hello.value._supportedVersions) {
            if (_v == _session.value._vers) {
                _versOk = true;
                break;
            };
        };
        if (!_versOk) {
            return { _0 : _cacheKey, _1 : new Pointer<ClientSessionState>().nil(), _2 : new Slice<GoUInt8>().nil(), _3 : new Slice<GoUInt8>().nil() };
        };
        if (!_c.value._config.value.insecureSkipVerify) {
            if (_session.value._verifiedChains.length == ((0 : GoInt))) {
                return { _0 : _cacheKey, _1 : new Pointer<ClientSessionState>().nil(), _2 : new Slice<GoUInt8>().nil(), _3 : new Slice<GoUInt8>().nil() };
            };
            var _serverCert:Pointer<stdgo.crypto.x509.X509.Certificate> = _session.value._serverCertificates[((0 : GoInt))];
            if (_c.value._config.value._time().after(_serverCert.value.notAfter.__copy__())) {
                _c.value._config.value.clientSessionCache.put(_cacheKey, new Pointer<ClientSessionState>().nil());
                return { _0 : _cacheKey, _1 : new Pointer<ClientSessionState>().nil(), _2 : new Slice<GoUInt8>().nil(), _3 : new Slice<GoUInt8>().nil() };
            };
            {
                var _err:stdgo.Error = _serverCert.value.verifyHostname(_c.value._config.value.serverName);
                if (_err != null) {
                    return { _0 : _cacheKey, _1 : new Pointer<ClientSessionState>().nil(), _2 : new Slice<GoUInt8>().nil(), _3 : new Slice<GoUInt8>().nil() };
                };
            };
        };
        if (_session.value._vers != versionTLS13) {
            if (_mutualCipherSuite(_hello.value._cipherSuites, _session.value._cipherSuite) == null || _mutualCipherSuite(_hello.value._cipherSuites, _session.value._cipherSuite).isNil()) {
                return { _0 : _cacheKey, _1 : new Pointer<ClientSessionState>().nil(), _2 : new Slice<GoUInt8>().nil(), _3 : new Slice<GoUInt8>().nil() };
            };
            _hello.value._sessionTicket = _session.value._sessionTicket;
            return { _0 : _cacheKey, _1 : _session, _2 : _earlySecret, _3 : _binderKey };
        };
        if (_c.value._config.value._time().after(_session.value._useBy.__copy__())) {
            _c.value._config.value.clientSessionCache.put(_cacheKey, new Pointer<ClientSessionState>().nil());
            return { _0 : _cacheKey, _1 : new Pointer<ClientSessionState>().nil(), _2 : new Slice<GoUInt8>().nil(), _3 : new Slice<GoUInt8>().nil() };
        };
        var _cipherSuite:Pointer<T_cipherSuiteTLS13> = _cipherSuiteTLS13ByID(_session.value._cipherSuite);
        if (_cipherSuite == null || _cipherSuite.isNil()) {
            return { _0 : _cacheKey, _1 : new Pointer<ClientSessionState>().nil(), _2 : new Slice<GoUInt8>().nil(), _3 : new Slice<GoUInt8>().nil() };
        };
        var _cipherSuiteOk:Bool = false;
        for (_offeredID in _hello.value._cipherSuites) {
            var _offeredSuite:Pointer<T_cipherSuiteTLS13> = _cipherSuiteTLS13ByID(_offeredID);
            if (_offeredSuite != null && !_offeredSuite.isNil() && _offeredSuite.value._hash.__t__ == _cipherSuite.value._hash.__t__) {
                _cipherSuiteOk = true;
                break;
            };
        };
        if (!_cipherSuiteOk) {
            return { _0 : _cacheKey, _1 : new Pointer<ClientSessionState>().nil(), _2 : new Slice<GoUInt8>().nil(), _3 : new Slice<GoUInt8>().nil() };
        };
        var _ticketAge:GoUInt32 = new stdgo.time.Time.Duration(_c.value._config.value._time().sub(_session.value._receivedAt.__copy__()).__t__ / stdgo.time.Time.millisecond.__t__).__t__;
        var _identity:T_pskIdentity = (({ _label : _session.value._sessionTicket, _obfuscatedTicketAge : _ticketAge + _session.value._ageAdd } : T_pskIdentity)).__copy__();
        _hello.value._pskIdentities = new Slice<T_pskIdentity>(_identity.__copy__());
        _hello.value._pskBinders = new Slice<Slice<GoUInt8>>(new Slice<GoUInt8>(...[for (i in 0 ... ((_cipherSuite.value._hash.size() : GoInt)).toBasic()) ((0 : GoUInt8))]));
        var _psk:Slice<GoUInt8> = _cipherSuite.value._expandLabel(_session.value._masterSecret, "resumption", _session.value._nonce, _cipherSuite.value._hash.size());
        _earlySecret = _cipherSuite.value._extract(_psk, new Slice<GoUInt8>().nil());
        _binderKey = _cipherSuite.value._deriveSecret(_earlySecret, _resumptionBinderLabel, ((null : stdgo.hash.Hash.Hash)));
        var _transcript:stdgo.hash.Hash.Hash = _cipherSuite.value._hash.new_();
        _transcript.write(_hello.value._marshalWithoutBinders());
        var _pskBinders:Slice<Slice<GoUInt8>> = new Slice<Slice<GoUInt8>>(_cipherSuite.value._finishedHash(_binderKey, _transcript));
        _hello.value._updateBinders(_pskBinders);
        return { _0 : _cacheKey, _1 : _session, _2 : _earlySecret, _3 : _binderKey };
    }
    public function _clientHandshake(_ctx:stdgo.context.Context.Context):Error {
        var _c = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var recover_exception:Error = null;
        var deferstack:Array<Void -> Void> = [];
        var _err:Error = ((null : stdgo.Error));
        try {
            if (_c.value._config == null || _c.value._config.isNil()) {
                _c.value._config = _defaultConfig();
            };
            _c.value._didResume = false;
            var __tmp__ = _c.value._makeClientHello(), _hello:Pointer<T_clientHelloMsg> = __tmp__._0, _ecdheParams:T_ecdheParameters = __tmp__._1, _err:stdgo.Error = __tmp__._2;
            if (_err != null) {
                return _err;
            };
            _c.value._serverName = _hello.value._serverName;
            var __tmp__ = _c.value._loadSession(_hello), _cacheKey:GoString = __tmp__._0, _session:Pointer<ClientSessionState> = __tmp__._1, _earlySecret:Slice<GoUInt8> = __tmp__._2, _binderKey:Slice<GoUInt8> = __tmp__._3;
            if (_cacheKey != (("" : GoString)) && _session != null && !_session.isNil()) {
                {
                    deferstack.unshift(() -> {
                        var a = function():Void {
                            if (_err != null) {
                                _c.value._config.value.clientSessionCache.put(_cacheKey, new Pointer<ClientSessionState>().nil());
                            };
                        };
                        a();
                    });
                };
            };
            {
                var __tmp__ = _c.value._writeRecord(_recordTypeHandshake, _hello.value._marshal()), _:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    {
                        for (defer in deferstack) {
                            defer();
                        };
                        return _err;
                    };
                };
            };
            var __tmp__ = _c.value._readHandshake(), _msg:AnyInterface = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                {
                    for (defer in deferstack) {
                        defer();
                    };
                    return _err;
                };
            };
            var __tmp__ = try {
                { value : ((_msg.value : Pointer<T_serverHelloMsg>)), ok : true };
            } catch(_) {
                { value : new Pointer<T_serverHelloMsg>().nil(), ok : false };
            }, _serverHello = __tmp__.value, _ok = __tmp__.ok;
            if (!_ok) {
                _c.value._sendAlert(_alertUnexpectedMessage);
                {
                    for (defer in deferstack) {
                        defer();
                    };
                    return _unexpectedMessageError(Go.toInterface(_serverHello), Go.toInterface(_msg));
                };
            };
            {
                var _err:stdgo.Error = _c.value._pickTLSVersion(_serverHello);
                if (_err != null) {
                    {
                        for (defer in deferstack) {
                            defer();
                        };
                        return _err;
                    };
                };
            };
            var _maxVers:GoUInt16 = _c.value._config.value._maxSupportedVersion();
            var _tls12Downgrade:Bool = ((_serverHello.value._random.__slice__(((24 : GoInt))) : GoString)) == _downgradeCanaryTLS12;
            var _tls11Downgrade:Bool = ((_serverHello.value._random.__slice__(((24 : GoInt))) : GoString)) == _downgradeCanaryTLS11;
            if (_maxVers == versionTLS13 && _c.value._vers <= versionTLS12 && (_tls12Downgrade || _tls11Downgrade) || _maxVers == versionTLS12 && _c.value._vers <= versionTLS11 && _tls11Downgrade) {
                _c.value._sendAlert(_alertIllegalParameter);
                {
                    for (defer in deferstack) {
                        defer();
                    };
                    return stdgo.errors.Errors.new_("tls: downgrade attempt detected, possibly due to a MitM attack or a broken middlebox");
                };
            };
            if (_c.value._vers == versionTLS13) {
                var _hs:Pointer<T_clientHandshakeStateTLS13> = Go.pointer((({ _c : _c, _ctx : _ctx, _serverHello : _serverHello, _hello : _hello, _ecdheParams : _ecdheParams, _session : _session, _earlySecret : _earlySecret, _binderKey : _binderKey, _certReq : new Pointer<T_certificateRequestMsgTLS13>().nil(), _usingPSK : false, _sentDummyCCS : false, _suite : new Pointer<T_cipherSuiteTLS13>().nil(), _transcript : ((null : stdgo.hash.Hash.Hash)), _masterSecret : new Slice<GoUInt8>().nil(), _trafficSecret : new Slice<GoUInt8>().nil() } : T_clientHandshakeStateTLS13)));
                {
                    for (defer in deferstack) {
                        defer();
                    };
                    return _hs.value._handshake();
                };
            };
            var _hs:Pointer<T_clientHandshakeState> = Go.pointer((({ _c : _c, _ctx : _ctx, _serverHello : _serverHello, _hello : _hello, _session : _session, _suite : new Pointer<T_cipherSuite>().nil(), _finishedHash : new T_finishedHash(), _masterSecret : new Slice<GoUInt8>().nil() } : T_clientHandshakeState)));
            {
                var _err:stdgo.Error = _hs.value._handshake();
                if (_err != null) {
                    {
                        for (defer in deferstack) {
                            defer();
                        };
                        return _err;
                    };
                };
            };
            if (_cacheKey != (("" : GoString)) && _hs.value._session != null && !_hs.value._session.isNil() && _session != _hs.value._session) {
                _c.value._config.value.clientSessionCache.put(_cacheKey, _hs.value._session);
            };
            {
                for (defer in deferstack) {
                    defer();
                };
                return ((null : stdgo.Error));
            };
            for (defer in deferstack) {
                defer();
            };
        } catch(e) {
            recover_exception = stdgo.runtime.Runtime.newRuntime(e.message);
            {
                for (defer in deferstack) {
                    defer();
                };
                if (recover_exception != null) throw recover_exception;
                return _err;
            };
        };
    }
    public function _makeClientHello():{ var _0 : Pointer<T_clientHelloMsg>; var _1 : T_ecdheParameters; var _2 : Error; } {
        var _c = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var _config:Pointer<Config> = _c.value._config;
        if (_config.value.serverName.length == ((0 : GoInt)) && !_config.value.insecureSkipVerify) {
            return { _0 : new Pointer<T_clientHelloMsg>().nil(), _1 : ((null : T_ecdheParameters)), _2 : stdgo.errors.Errors.new_("tls: either ServerName or InsecureSkipVerify must be specified in the tls.Config") };
        };
        var _nextProtosLength:GoInt = ((0 : GoInt));
        for (_proto in _config.value.nextProtos) {
            {
                var _l:GoInt = _proto.length;
                if (_l == ((0 : GoInt)) || _l > ((255 : GoInt))) {
                    return { _0 : new Pointer<T_clientHelloMsg>().nil(), _1 : ((null : T_ecdheParameters)), _2 : stdgo.errors.Errors.new_("tls: invalid NextProtos value") };
                } else {
                    _nextProtosLength = _nextProtosLength + (((1 : GoInt)) + _l);
                };
            };
        };
        if (_nextProtosLength > ((65535 : GoInt))) {
            return { _0 : new Pointer<T_clientHelloMsg>().nil(), _1 : ((null : T_ecdheParameters)), _2 : stdgo.errors.Errors.new_("tls: NextProtos values too large") };
        };
        var _supportedVersions:Slice<GoUInt16> = _config.value._supportedVersions();
        if (_supportedVersions.length == ((0 : GoInt))) {
            return { _0 : new Pointer<T_clientHelloMsg>().nil(), _1 : ((null : T_ecdheParameters)), _2 : stdgo.errors.Errors.new_("tls: no supported versions satisfy MinVersion and MaxVersion") };
        };
        var _clientHelloVersion:GoUInt16 = _config.value._maxSupportedVersion();
        if (_clientHelloVersion > versionTLS12) {
            _clientHelloVersion = versionTLS12;
        };
        var _hello:Pointer<T_clientHelloMsg> = Go.pointer((({ _vers : _clientHelloVersion, _compressionMethods : new Slice<GoUInt8>(_compressionNone), _random : new Slice<GoUInt8>(...[for (i in 0 ... ((((32 : GoInt)) : GoInt)).toBasic()) ((0 : GoUInt8))]), _sessionId : new Slice<GoUInt8>(...[for (i in 0 ... ((((32 : GoInt)) : GoInt)).toBasic()) ((0 : GoUInt8))]), _ocspStapling : true, _scts : true, _serverName : _hostnameInSNI(_config.value.serverName), _supportedCurves : _config.value._curvePreferences(), _supportedPoints : new Slice<GoUInt8>(_pointFormatUncompressed), _secureRenegotiationSupported : true, _alpnProtocols : _config.value.nextProtos, _supportedVersions : _supportedVersions, _raw : new Slice<GoUInt8>().nil(), _cipherSuites : new Slice<GoUInt16>().nil(), _ticketSupported : false, _sessionTicket : new Slice<GoUInt8>().nil(), _supportedSignatureAlgorithms : new Slice<SignatureScheme>().nil(), _supportedSignatureAlgorithmsCert : new Slice<SignatureScheme>().nil(), _secureRenegotiation : new Slice<GoUInt8>().nil(), _cookie : new Slice<GoUInt8>().nil(), _keyShares : new Slice<T_keyShare>().nil(), _earlyData : false, _pskModes : new Slice<GoUInt8>().nil(), _pskIdentities : new Slice<T_pskIdentity>().nil(), _pskBinders : new Slice<Slice<GoUInt8>>().nil() } : T_clientHelloMsg)));
        if (_c.value._handshakes > ((0 : GoInt))) {
            _hello.value._secureRenegotiation = _c.value._clientFinished.__slice__(0);
        };
        var _preferenceOrder:Slice<GoUInt16> = _cipherSuitesPreferenceOrder;
        if (!_hasAESGCMHardwareSupport) {
            _preferenceOrder = _cipherSuitesPreferenceOrderNoAES;
        };
        var _configCipherSuites:Slice<GoUInt16> = _config.value._cipherSuites();
        _hello.value._cipherSuites = new Slice<GoUInt16>(...[for (i in 0 ... ((((0 : GoInt)) : GoInt)).toBasic()) ((0 : GoUInt16))]).setCap(((_configCipherSuites.length : GoInt)).toBasic());
        for (_suiteId in _preferenceOrder) {
            var _suite:Pointer<T_cipherSuite> = _mutualCipherSuite(_configCipherSuites, _suiteId);
            if (_suite == null || _suite.isNil()) {
                continue;
            };
            if (_hello.value._vers < versionTLS12 && _suite.value._flags & _suiteTLS12 != ((0 : GoInt))) {
                continue;
            };
            _hello.value._cipherSuites = _hello.value._cipherSuites.__append__(_suiteId);
        };
        var __tmp__ = stdgo.io.Io.readFull(_config.value._rand(), _hello.value._random), _:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : new Pointer<T_clientHelloMsg>().nil(), _1 : ((null : T_ecdheParameters)), _2 : stdgo.errors.Errors.new_((("tls: short read from Rand: " : GoString)) + _err.error()) };
        };
        {
            var __tmp__ = stdgo.io.Io.readFull(_config.value._rand(), _hello.value._sessionId), _:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return { _0 : new Pointer<T_clientHelloMsg>().nil(), _1 : ((null : T_ecdheParameters)), _2 : stdgo.errors.Errors.new_((("tls: short read from Rand: " : GoString)) + _err.error()) };
            };
        };
        if (_hello.value._vers >= versionTLS12) {
            _hello.value._supportedSignatureAlgorithms = _supportedSignatureAlgorithms;
        };
        var _params:T_ecdheParameters = ((null : T_ecdheParameters));
        if (_hello.value._supportedVersions[((0 : GoInt))] == versionTLS13) {
            if (_hasAESGCMHardwareSupport) {
                _hello.value._cipherSuites = _hello.value._cipherSuites.__append__(..._defaultCipherSuitesTLS13.toArray());
            } else {
                _hello.value._cipherSuites = _hello.value._cipherSuites.__append__(..._defaultCipherSuitesTLS13NoAES.toArray());
            };
            var _curveID:CurveID = _config.value._curvePreferences()[((0 : GoInt))];
            {
                var __tmp__ = _curveForCurveID(_curveID), _:stdgo.crypto.elliptic.Elliptic.Curve = __tmp__._0, _ok:Bool = __tmp__._1;
                if (_curveID.__t__ != x25519.__t__ && !_ok) {
                    return { _0 : new Pointer<T_clientHelloMsg>().nil(), _1 : ((null : T_ecdheParameters)), _2 : stdgo.errors.Errors.new_("tls: CurvePreferences includes unsupported curve") };
                };
            };
            {
                var __tmp__ = _generateECDHEParameters(_config.value._rand(), _curveID);
                _params = __tmp__._0;
                _err = __tmp__._1;
            };
            if (_err != null) {
                return { _0 : new Pointer<T_clientHelloMsg>().nil(), _1 : ((null : T_ecdheParameters)), _2 : _err };
            };
            _hello.value._keyShares = new Slice<T_keyShare>((({ _group : _curveID, _data : _params.publicKey() } : T_keyShare)).__copy__());
        };
        return { _0 : _hello, _1 : _params, _2 : ((null : stdgo.Error)) };
    }
    public function _handshakeComplete():Bool {
        var _c = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        return stdgo.sync.atomic.Atomic.loadUint32(Go.pointer(_c.value._handshakeStatus)) == ((1 : GoUInt32));
    }
    public function verifyHostname(_host:GoString):Error {
        var _c = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var recover_exception:Error = null;
        var deferstack:Array<Void -> Void> = [];
        _c.value._handshakeMutex.lock();
        try {
            deferstack.unshift(() -> _c.value._handshakeMutex.unlock());
            if (!_c.value._isClient) {
                {
                    for (defer in deferstack) {
                        defer();
                    };
                    return stdgo.errors.Errors.new_("tls: VerifyHostname called on TLS server connection");
                };
            };
            if (!_c.value._handshakeComplete()) {
                {
                    for (defer in deferstack) {
                        defer();
                    };
                    return stdgo.errors.Errors.new_("tls: handshake has not yet been performed");
                };
            };
            if (_c.value._verifiedChains.length == ((0 : GoInt))) {
                {
                    for (defer in deferstack) {
                        defer();
                    };
                    return stdgo.errors.Errors.new_("tls: handshake did not verify certificate chain");
                };
            };
            {
                for (defer in deferstack) {
                    defer();
                };
                return _c.value._peerCertificates[((0 : GoInt))].value.verifyHostname(_host);
            };
            for (defer in deferstack) {
                defer();
            };
        } catch(e) {
            recover_exception = stdgo.runtime.Runtime.newRuntime(e.message);
            {
                for (defer in deferstack) {
                    defer();
                };
                if (recover_exception != null) throw recover_exception;
                return ((null : stdgo.Error));
            };
        };
    }
    public function ocspresponse():Slice<GoByte> {
        var _c = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var recover_exception:Error = null;
        var deferstack:Array<Void -> Void> = [];
        _c.value._handshakeMutex.lock();
        try {
            deferstack.unshift(() -> _c.value._handshakeMutex.unlock());
            {
                for (defer in deferstack) {
                    defer();
                };
                return _c.value._ocspResponse;
            };
            for (defer in deferstack) {
                defer();
            };
        } catch(e) {
            recover_exception = stdgo.runtime.Runtime.newRuntime(e.message);
            {
                for (defer in deferstack) {
                    defer();
                };
                if (recover_exception != null) throw recover_exception;
                return new Slice<GoUInt8>().nil();
            };
        };
    }
    public function _connectionStateLocked():ConnectionState {
        var _c = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var _state:ConnectionState = new ConnectionState();
        _state.handshakeComplete = _c.value._handshakeComplete();
        _state.version = _c.value._vers;
        _state.negotiatedProtocol = _c.value._clientProtocol;
        _state.didResume = _c.value._didResume;
        _state.negotiatedProtocolIsMutual = true;
        _state.serverName = _c.value._serverName;
        _state.cipherSuite = _c.value._cipherSuite;
        _state.peerCertificates = _c.value._peerCertificates;
        _state.verifiedChains = _c.value._verifiedChains;
        _state.signedCertificateTimestamps = _c.value._scts;
        _state.ocspresponse = _c.value._ocspResponse;
        if (!_c.value._didResume && _c.value._vers != versionTLS13) {
            if (_c.value._clientFinishedIsFirst) {
                _state.tlsunique = _c.value._clientFinished.__slice__(0);
            } else {
                _state.tlsunique = _c.value._serverFinished.__slice__(0);
            };
        };
        if (_c.value._config.value.renegotiation.__t__ != renegotiateNever.__t__) {
            _state._ekm = _noExportedKeyingMaterial;
        } else {
            _state._ekm = _c.value._ekm;
        };
        return _state.__copy__();
    }
    public function connectionState():ConnectionState {
        var _c = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var recover_exception:Error = null;
        var deferstack:Array<Void -> Void> = [];
        _c.value._handshakeMutex.lock();
        try {
            deferstack.unshift(() -> _c.value._handshakeMutex.unlock());
            {
                for (defer in deferstack) {
                    defer();
                };
                return _c.value._connectionStateLocked().__copy__();
            };
            for (defer in deferstack) {
                defer();
            };
        } catch(e) {
            recover_exception = stdgo.runtime.Runtime.newRuntime(e.message);
            {
                for (defer in deferstack) {
                    defer();
                };
                if (recover_exception != null) throw recover_exception;
                return new ConnectionState();
            };
        };
    }
    public function _handshakeContext(_ctx:stdgo.context.Context.Context):Error {
        var _c = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var recover_exception:Error = null;
        var deferstack:Array<Void -> Void> = [];
        var _ret:Error = ((null : stdgo.Error));
        try {
            var __tmp__ = stdgo.context.Context.withCancel(_ctx), _handshakeCtx:stdgo.context.Context.Context = __tmp__._0, _cancel:stdgo.context.Context.CancelFunc = __tmp__._1;
            deferstack.unshift(() -> _cancel.__t__());
            if (_ctx.done() != null && !_ctx.done().isNil()) {
                var _done:Chan<T_endOfEarlyDataMsg> = new Chan<T_endOfEarlyDataMsg>(0, () -> new T_endOfEarlyDataMsg());
                var _interruptRes:Chan<stdgo.Error> = new Chan<stdgo.Error>(((((1 : GoInt)) : GoInt)).toBasic(), () -> ((null : stdgo.Error)));
                {
                    deferstack.unshift(() -> {
                        var a = function():Void {
                            _done.close();
                            {
                                var _ctxErr:stdgo.Error = _interruptRes.get();
                                if (_ctxErr != null) {
                                    _ret = _ctxErr;
                                };
                            };
                        };
                        a();
                    });
                };
                Go.routine({
                    var a = function():Void {
                        {
                            {
                                _handshakeCtx.done().get();
                                _c.value._conn.close();
                                _interruptRes.send(_handshakeCtx.err());
                            };
                            {
                                _done.get();
                                _interruptRes.send(null);
                            };
                        };
                    };
                    a();
                });
            };
            _c.value._handshakeMutex.lock();
            deferstack.unshift(() -> _c.value._handshakeMutex.unlock());
            {
                var _err:stdgo.Error = _c.value._handshakeErr;
                if (_err != null) {
                    {
                        for (defer in deferstack) {
                            defer();
                        };
                        return _err;
                    };
                };
            };
            if (_c.value._handshakeComplete()) {
                {
                    for (defer in deferstack) {
                        defer();
                    };
                    return ((null : stdgo.Error));
                };
            };
            _c.value._in.lock();
            deferstack.unshift(() -> _c.value._in.unlock());
            _c.value._handshakeErr = _c.value._handshakeFn(_handshakeCtx);
            if (_c.value._handshakeErr == null) {
                _c.value._handshakes++;
            } else {
                _c.value._flush();
            };
            if (_c.value._handshakeErr == null && !_c.value._handshakeComplete()) {
                _c.value._handshakeErr = stdgo.errors.Errors.new_("tls: internal error: handshake should have had a result");
            };
            {
                for (defer in deferstack) {
                    defer();
                };
                return _c.value._handshakeErr;
            };
            for (defer in deferstack) {
                defer();
            };
        } catch(e) {
            recover_exception = stdgo.runtime.Runtime.newRuntime(e.message);
            {
                for (defer in deferstack) {
                    defer();
                };
                if (recover_exception != null) throw recover_exception;
                return _ret;
            };
        };
    }
    public function handshakeContext(_ctx:stdgo.context.Context.Context):Error {
        var _c = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        return _c.value._handshakeContext(_ctx);
    }
    public function handshake():Error {
        var _c = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        return _c.value.handshakeContext(stdgo.context.Context.background());
    }
    public function _closeNotify():Error {
        var _c = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var recover_exception:Error = null;
        var deferstack:Array<Void -> Void> = [];
        _c.value._out.lock();
        try {
            deferstack.unshift(() -> _c.value._out.unlock());
            if (!_c.value._closeNotifySent) {
                _c.value.setWriteDeadline(stdgo.time.Time.now().add(new stdgo.time.Time.Duration(stdgo.time.Time.second.__t__ * ((5 : GoInt64)))).__copy__());
                _c.value._closeNotifyErr = _c.value._sendAlertLocked(_alertCloseNotify);
                _c.value._closeNotifySent = true;
                _c.value.setWriteDeadline(stdgo.time.Time.now().__copy__());
            };
            {
                for (defer in deferstack) {
                    defer();
                };
                return _c.value._closeNotifyErr;
            };
            for (defer in deferstack) {
                defer();
            };
        } catch(e) {
            recover_exception = stdgo.runtime.Runtime.newRuntime(e.message);
            {
                for (defer in deferstack) {
                    defer();
                };
                if (recover_exception != null) throw recover_exception;
                return ((null : stdgo.Error));
            };
        };
    }
    public function closeWrite():Error {
        var _c = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        if (!_c.value._handshakeComplete()) {
            return _errEarlyCloseWrite;
        };
        return _c.value._closeNotify();
    }
    public function close():Error {
        var _c = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var _x:GoInt32 = ((0 : GoInt32));
        while (true) {
            _x = stdgo.sync.atomic.Atomic.loadInt32(Go.pointer(_c.value._activeCall));
            if (_x & ((1 : GoInt32)) != ((0 : GoInt32))) {
                return stdgo.net.Net.errClosed;
            };
            if (stdgo.sync.atomic.Atomic.compareAndSwapInt32(Go.pointer(_c.value._activeCall), _x, _x | ((1 : GoInt32)))) {
                break;
            };
        };
        if (_x != ((0 : GoInt32))) {
            return _c.value._conn.close();
        };
        var _alertErr:Error = ((null : stdgo.Error));
        if (_c.value._handshakeComplete()) {
            {
                var _err:stdgo.Error = _c.value._closeNotify();
                if (_err != null) {
                    _alertErr = stdgo.fmt.Fmt.errorf("tls: failed to send closeNotify alert (but connection was closed anyway): %w", Go.toInterface(_err));
                };
            };
        };
        {
            var _err:stdgo.Error = _c.value._conn.close();
            if (_err != null) {
                return _err;
            };
        };
        return _alertErr;
    }
    public function read(_b:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } {
        var _c = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var recover_exception:Error = null;
        var deferstack:Array<Void -> Void> = [];
        {
            var _err:stdgo.Error = _c.value.handshake();
            if (_err != null) {
                return { _0 : ((0 : GoInt)), _1 : _err };
            };
        };
        if (_b.length == ((0 : GoInt))) {
            return { _0 : ((0 : GoInt)), _1 : ((null : stdgo.Error)) };
        };
        try {
            _c.value._in.lock();
            deferstack.unshift(() -> _c.value._in.unlock());
            while (_c.value._input.len() == ((0 : GoInt))) {
                {
                    var _err:stdgo.Error = _c.value._readRecord();
                    if (_err != null) {
                        {
                            for (defer in deferstack) {
                                defer();
                            };
                            return { _0 : ((0 : GoInt)), _1 : _err };
                        };
                    };
                };
                while (_c.value._hand.len() > ((0 : GoInt))) {
                    {
                        var _err:stdgo.Error = _c.value._handlePostHandshakeMessage();
                        if (_err != null) {
                            {
                                for (defer in deferstack) {
                                    defer();
                                };
                                return { _0 : ((0 : GoInt)), _1 : _err };
                            };
                        };
                    };
                };
            };
            var __tmp__ = _c.value._input.read(_b), _n:GoInt = __tmp__._0, _:stdgo.Error = __tmp__._1;
            if (_n != ((0 : GoInt)) && _c.value._input.len() == ((0 : GoInt)) && _c.value._rawInput.len() > ((0 : GoInt)) && new T_recordType(_c.value._rawInput.bytes()[((0 : GoInt))]).__t__ == _recordTypeAlert.__t__) {
                {
                    var _err:stdgo.Error = _c.value._readRecord();
                    if (_err != null) {
                        {
                            for (defer in deferstack) {
                                defer();
                            };
                            return { _0 : _n, _1 : _err };
                        };
                    };
                };
            };
            {
                for (defer in deferstack) {
                    defer();
                };
                return { _0 : _n, _1 : ((null : stdgo.Error)) };
            };
            for (defer in deferstack) {
                defer();
            };
        } catch(e) {
            recover_exception = stdgo.runtime.Runtime.newRuntime(e.message);
            {
                for (defer in deferstack) {
                    defer();
                };
                if (recover_exception != null) throw recover_exception;
                return { _0 : ((0 : GoInt)), _1 : ((null : stdgo.Error)) };
            };
        };
    }
    public function _handleKeyUpdate(_keyUpdate:Pointer<T_keyUpdateMsg>):Error {
        var _c = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var recover_exception:Error = null;
        var deferstack:Array<Void -> Void> = [];
        var _cipherSuite:Pointer<T_cipherSuiteTLS13> = _cipherSuiteTLS13ByID(_c.value._cipherSuite);
        try {
            if (_cipherSuite == null || _cipherSuite.isNil()) {
                return _c.value._in._setErrorLocked(_c.value._sendAlert(_alertInternalError));
            };
            var _newSecret:Slice<GoUInt8> = _cipherSuite.value._nextTrafficSecret(_c.value._in._trafficSecret);
            _c.value._in._setTrafficSecret(_cipherSuite, _newSecret);
            if (_keyUpdate.value._updateRequested) {
                _c.value._out.lock();
                deferstack.unshift(() -> _c.value._out.unlock());
                var _msg:Pointer<T_keyUpdateMsg> = Go.pointer(new T_keyUpdateMsg());
                var __tmp__ = _c.value._writeRecordLocked(_recordTypeHandshake, _msg.value._marshal()), _:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    _c.value._out._setErrorLocked(_err);
                    {
                        for (defer in deferstack) {
                            defer();
                        };
                        return ((null : stdgo.Error));
                    };
                };
                var _newSecret:Slice<GoUInt8> = _cipherSuite.value._nextTrafficSecret(_c.value._out._trafficSecret);
                _c.value._out._setTrafficSecret(_cipherSuite, _newSecret);
            };
            {
                for (defer in deferstack) {
                    defer();
                };
                return ((null : stdgo.Error));
            };
            for (defer in deferstack) {
                defer();
            };
        } catch(e) {
            recover_exception = stdgo.runtime.Runtime.newRuntime(e.message);
            {
                for (defer in deferstack) {
                    defer();
                };
                if (recover_exception != null) throw recover_exception;
                return ((null : stdgo.Error));
            };
        };
    }
    public function _handlePostHandshakeMessage():Error {
        var _c = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        if (_c.value._vers != versionTLS13) {
            return _c.value._handleRenegotiation();
        };
        var __tmp__ = _c.value._readHandshake(), _msg:AnyInterface = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return _err;
        };
        _c.value._retryCount++;
        if (_c.value._retryCount > _maxUselessRecords) {
            _c.value._sendAlert(_alertUnexpectedMessage);
            return _c.value._in._setErrorLocked(stdgo.errors.Errors.new_("tls: too many non-advancing records"));
        };
        if (Go.assertable(((_msg : Pointer<T_newSessionTicketMsgTLS13>)))) {
            var _msg:Pointer<T_newSessionTicketMsgTLS13> = _msg == null ? null : _msg.__underlying__() == null ? null : _msg == null ? null : _msg.__underlying__().value;
            return _c.value._handleNewSessionTicket(_msg);
        } else if (Go.assertable(((_msg : Pointer<T_keyUpdateMsg>)))) {
            var _msg:Pointer<T_keyUpdateMsg> = _msg == null ? null : _msg.__underlying__() == null ? null : _msg == null ? null : _msg.__underlying__().value;
            return _c.value._handleKeyUpdate(_msg);
        } else {
            var _msg:AnyInterface = _msg == null ? null : _msg.__underlying__();
            _c.value._sendAlert(_alertUnexpectedMessage);
            return stdgo.fmt.Fmt.errorf("tls: received unexpected handshake message of type %T", Go.toInterface(_msg));
        };
    }
    public function _handleRenegotiation():Error {
        var _c = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var recover_exception:Error = null;
        var deferstack:Array<Void -> Void> = [];
        if (_c.value._vers == versionTLS13) {
            return stdgo.errors.Errors.new_("tls: internal error: unexpected renegotiation");
        };
        try {
            var __tmp__ = _c.value._readHandshake(), _msg:AnyInterface = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return _err;
            };
            var __tmp__ = try {
                { value : ((_msg.value : Pointer<T_helloRequestMsg>)), ok : true };
            } catch(_) {
                { value : new Pointer<T_helloRequestMsg>().nil(), ok : false };
            }, _helloReq = __tmp__.value, _ok = __tmp__.ok;
            if (!_ok) {
                _c.value._sendAlert(_alertUnexpectedMessage);
                return _unexpectedMessageError(Go.toInterface(_helloReq), Go.toInterface(_msg));
            };
            if (!_c.value._isClient) {
                return _c.value._sendAlert(_alertNoRenegotiation);
            };
            if (_c.value._config.value.renegotiation.__t__ == renegotiateNever.__t__) {
                return _c.value._sendAlert(_alertNoRenegotiation);
            } else if (_c.value._config.value.renegotiation.__t__ == renegotiateOnceAsClient.__t__) {
                if (_c.value._handshakes > ((1 : GoInt))) {
                    return _c.value._sendAlert(_alertNoRenegotiation);
                };
            } else if (_c.value._config.value.renegotiation.__t__ == renegotiateFreelyAsClient.__t__) {} else {
                _c.value._sendAlert(_alertInternalError);
                return stdgo.errors.Errors.new_("tls: unknown Renegotiation value");
            };
            _c.value._handshakeMutex.lock();
            deferstack.unshift(() -> _c.value._handshakeMutex.unlock());
            stdgo.sync.atomic.Atomic.storeUint32(Go.pointer(_c.value._handshakeStatus), ((0 : GoUInt32)));
            {
                _c.value._handshakeErr = _c.value._clientHandshake(stdgo.context.Context.background());
                if (_c.value._handshakeErr == null) {
                    _c.value._handshakes++;
                };
            };
            {
                for (defer in deferstack) {
                    defer();
                };
                return _c.value._handshakeErr;
            };
            for (defer in deferstack) {
                defer();
            };
        } catch(e) {
            recover_exception = stdgo.runtime.Runtime.newRuntime(e.message);
            {
                for (defer in deferstack) {
                    defer();
                };
                if (recover_exception != null) throw recover_exception;
                return ((null : stdgo.Error));
            };
        };
    }
    public function write(_b:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } {
        var _c = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var recover_exception:Error = null;
        var deferstack:Array<Void -> Void> = [];
        while (true) {
            var _x:GoInt32 = stdgo.sync.atomic.Atomic.loadInt32(Go.pointer(_c.value._activeCall));
            if (_x & ((1 : GoInt32)) != ((0 : GoInt32))) {
                return { _0 : ((0 : GoInt)), _1 : stdgo.net.Net.errClosed };
            };
            if (stdgo.sync.atomic.Atomic.compareAndSwapInt32(Go.pointer(_c.value._activeCall), _x, _x + ((2 : GoInt32)))) {
                break;
            };
        };
        {
            var a0 = Go.pointer(_c.value._activeCall);
            var a1 = -((2 : GoUnTypedInt));
            deferstack.unshift(() -> stdgo.sync.atomic.Atomic.addInt32(a0, a1));
        };
        try {
            {
                var _err:stdgo.Error = _c.value.handshake();
                if (_err != null) {
                    {
                        for (defer in deferstack) {
                            defer();
                        };
                        return { _0 : ((0 : GoInt)), _1 : _err };
                    };
                };
            };
            _c.value._out.lock();
            deferstack.unshift(() -> _c.value._out.unlock());
            {
                var _err:stdgo.Error = _c.value._out._err;
                if (_err != null) {
                    {
                        for (defer in deferstack) {
                            defer();
                        };
                        return { _0 : ((0 : GoInt)), _1 : _err };
                    };
                };
            };
            if (!_c.value._handshakeComplete()) {
                {
                    for (defer in deferstack) {
                        defer();
                    };
                    return { _0 : ((0 : GoInt)), _1 : _alertInternalError };
                };
            };
            if (_c.value._closeNotifySent) {
                {
                    for (defer in deferstack) {
                        defer();
                    };
                    return { _0 : ((0 : GoInt)), _1 : _errShutdown };
                };
            };
            var _m:GoInt = ((0 : GoInt));
            if (_b.length > ((1 : GoInt)) && _c.value._vers == versionTLS10) {
                {
                    var __tmp__ = try {
                        { value : ((_c.value._out._cipher.value : stdgo.crypto.cipher.Cipher.BlockMode)), ok : true };
                    } catch(_) {
                        { value : ((null : stdgo.crypto.cipher.Cipher.BlockMode)), ok : false };
                    }, _ = __tmp__.value, _ok = __tmp__.ok;
                    if (_ok) {
                        var __tmp__ = _c.value._writeRecordLocked(_recordTypeApplicationData, _b.__slice__(0, ((1 : GoInt)))), _n:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                        if (_err != null) {
                            {
                                for (defer in deferstack) {
                                    defer();
                                };
                                return { _0 : _n, _1 : _c.value._out._setErrorLocked(_err) };
                            };
                        };
                        {
                            final __tmp__0 = ((1 : GoInt));
                            final __tmp__1 = _b.__slice__(((1 : GoInt)));
                            _m = __tmp__0;
                            _b = __tmp__1;
                        };
                    };
                };
            };
            var __tmp__ = _c.value._writeRecordLocked(_recordTypeApplicationData, _b), _n:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            {
                for (defer in deferstack) {
                    defer();
                };
                return { _0 : _n + _m, _1 : _c.value._out._setErrorLocked(_err) };
            };
            for (defer in deferstack) {
                defer();
            };
        } catch(e) {
            recover_exception = stdgo.runtime.Runtime.newRuntime(e.message);
            {
                for (defer in deferstack) {
                    defer();
                };
                if (recover_exception != null) throw recover_exception;
                return { _0 : ((0 : GoInt)), _1 : ((null : stdgo.Error)) };
            };
        };
    }
    public function _readHandshake():{ var _0 : AnyInterface; var _1 : Error; } {
        var _c = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        while (_c.value._hand.len() < ((4 : GoInt))) {
            {
                var _err:stdgo.Error = _c.value._readRecord();
                if (_err != null) {
                    return { _0 : ((null : AnyInterface)), _1 : _err };
                };
            };
        };
        var _data:Slice<GoUInt8> = _c.value._hand.bytes();
        var _n:GoInt = (((_data[((1 : GoInt))] : GoInt)) << ((16 : GoUnTypedInt))) | (((_data[((2 : GoInt))] : GoInt)) << ((8 : GoUnTypedInt))) | ((_data[((3 : GoInt))] : GoInt));
        if (_n > _maxHandshake) {
            _c.value._sendAlertLocked(_alertInternalError);
            return { _0 : ((null : AnyInterface)), _1 : _c.value._in._setErrorLocked(stdgo.fmt.Fmt.errorf("tls: handshake message of length %d bytes exceeds maximum of %d bytes", Go.toInterface(_n), Go.toInterface(_maxHandshake))) };
        };
        while (_c.value._hand.len() < ((4 : GoInt)) + _n) {
            {
                var _err:stdgo.Error = _c.value._readRecord();
                if (_err != null) {
                    return { _0 : ((null : AnyInterface)), _1 : _err };
                };
            };
        };
        _data = _c.value._hand.next(((4 : GoInt)) + _n);
        var _m:T_handshakeMessage = ((null : T_handshakeMessage));
        if (_data[((0 : GoInt))] == _typeHelloRequest) {
            _m = Go.pointer(new T_helloRequestMsg()).value;
        } else if (_data[((0 : GoInt))] == _typeClientHello) {
            _m = Go.pointer(new T_clientHelloMsg()).value;
        } else if (_data[((0 : GoInt))] == _typeServerHello) {
            _m = Go.pointer(new T_serverHelloMsg()).value;
        } else if (_data[((0 : GoInt))] == _typeNewSessionTicket) {
            if (_c.value._vers == versionTLS13) {
                _m = Go.pointer(new T_newSessionTicketMsgTLS13()).value;
            } else {
                _m = Go.pointer(new T_newSessionTicketMsg()).value;
            };
        } else if (_data[((0 : GoInt))] == _typeCertificate) {
            if (_c.value._vers == versionTLS13) {
                _m = Go.pointer(new T_certificateMsgTLS13()).value;
            } else {
                _m = Go.pointer(new T_certificateMsg()).value;
            };
        } else if (_data[((0 : GoInt))] == _typeCertificateRequest) {
            if (_c.value._vers == versionTLS13) {
                _m = Go.pointer(new T_certificateRequestMsgTLS13()).value;
            } else {
                _m = Go.pointer((({ _hasSignatureAlgorithm : _c.value._vers >= versionTLS12, _raw : new Slice<GoUInt8>().nil(), _certificateTypes : new Slice<GoUInt8>().nil(), _supportedSignatureAlgorithms : new Slice<SignatureScheme>().nil(), _certificateAuthorities : new Slice<Slice<GoUInt8>>().nil() } : T_certificateRequestMsg))).value;
            };
        } else if (_data[((0 : GoInt))] == _typeCertificateStatus) {
            _m = Go.pointer(new T_certificateStatusMsg()).value;
        } else if (_data[((0 : GoInt))] == _typeServerKeyExchange) {
            _m = Go.pointer(new T_serverKeyExchangeMsg()).value;
        } else if (_data[((0 : GoInt))] == _typeServerHelloDone) {
            _m = Go.pointer(new T_serverHelloDoneMsg()).value;
        } else if (_data[((0 : GoInt))] == _typeClientKeyExchange) {
            _m = Go.pointer(new T_clientKeyExchangeMsg()).value;
        } else if (_data[((0 : GoInt))] == _typeCertificateVerify) {
            _m = Go.pointer((({ _hasSignatureAlgorithm : _c.value._vers >= versionTLS12, _raw : new Slice<GoUInt8>().nil(), _signatureAlgorithm : new SignatureScheme(), _signature : new Slice<GoUInt8>().nil() } : T_certificateVerifyMsg))).value;
        } else if (_data[((0 : GoInt))] == _typeFinished) {
            _m = Go.pointer(new T_finishedMsg()).value;
        } else if (_data[((0 : GoInt))] == _typeEncryptedExtensions) {
            _m = Go.pointer(new T_encryptedExtensionsMsg()).value;
        } else if (_data[((0 : GoInt))] == _typeEndOfEarlyData) {
            _m = Go.pointer(new T_endOfEarlyDataMsg()).value;
        } else if (_data[((0 : GoInt))] == _typeKeyUpdate) {
            _m = Go.pointer(new T_keyUpdateMsg()).value;
        } else {
            return { _0 : ((null : AnyInterface)), _1 : _c.value._in._setErrorLocked(_c.value._sendAlert(_alertUnexpectedMessage)) };
        };
        _data = ((new Slice<GoUInt8>().nil() : Slice<GoByte>)).__append__(..._data.toArray());
        if (!_m._unmarshal(_data)) {
            return { _0 : ((null : AnyInterface)), _1 : _c.value._in._setErrorLocked(_c.value._sendAlert(_alertUnexpectedMessage)) };
        };
        return { _0 : Go.toInterface(_m), _1 : ((null : stdgo.Error)) };
    }
    public function _writeRecord(_typ:T_recordType, _data:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } {
        var _c = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var recover_exception:Error = null;
        var deferstack:Array<Void -> Void> = [];
        _c.value._out.lock();
        deferstack.unshift(() -> _c.value._out.unlock());
        try {
            {
                for (defer in deferstack) {
                    defer();
                };
                return _c.value._writeRecordLocked(_typ, _data);
            };
            for (defer in deferstack) {
                defer();
            };
        } catch(e) {
            recover_exception = stdgo.runtime.Runtime.newRuntime(e.message);
            {
                for (defer in deferstack) {
                    defer();
                };
                if (recover_exception != null) throw recover_exception;
                return { _0 : ((0 : GoInt)), _1 : ((null : stdgo.Error)) };
            };
        };
    }
    public function _writeRecordLocked(_typ:T_recordType, _data:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } {
        var _c = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var recover_exception:Error = null;
        var deferstack:Array<Void -> Void> = [];
        var _outBufPtr:Pointer<Slice<GoUInt8>> = ((_outBufPool.get().value : Pointer<Slice<GoByte>>));
        var _outBuf:Slice<GoUInt8> = _outBufPtr.value;
        try {
            {
                deferstack.unshift(() -> {
                    var a = function():Void {
                        _outBufPtr.value = _outBuf;
                        _outBufPool.put(Go.toInterface(_outBufPtr));
                    };
                    a();
                });
            };
            var _n:GoInt = ((0 : GoInt));
            while (_data.length > ((0 : GoInt))) {
                var _m:GoInt = _data.length;
                {
                    var _maxPayload:GoInt = _c.value._maxPayloadSizeForWrite(_typ);
                    if (_m > _maxPayload) {
                        _m = _maxPayload;
                    };
                };
                {
                    var __tmp__ = _sliceForAppend(_outBuf.__slice__(0, ((0 : GoInt))), _recordHeaderLen);
                    _outBuf = __tmp__._1;
                };
                _outBuf[((0 : GoInt))] = _typ.__t__;
                var _vers:GoUInt16 = _c.value._vers;
                if (_vers == ((0 : GoUInt16))) {
                    _vers = versionTLS10;
                } else if (_vers == versionTLS13) {
                    _vers = versionTLS12;
                };
                _outBuf[((1 : GoInt))] = (((_vers >> ((8 : GoUnTypedInt))) : GoByte));
                _outBuf[((2 : GoInt))] = ((_vers : GoByte));
                _outBuf[((3 : GoInt))] = (((_m >> ((8 : GoUnTypedInt))) : GoByte));
                _outBuf[((4 : GoInt))] = ((_m : GoByte));
                var _err:Error = ((null : stdgo.Error));
                {
                    var __tmp__ = _c.value._out._encrypt(_outBuf, _data.__slice__(0, _m), _c.value._config.value._rand());
                    _outBuf = __tmp__._0;
                    _err = __tmp__._1;
                };
                if (_err != null) {
                    {
                        for (defer in deferstack) {
                            defer();
                        };
                        return { _0 : _n, _1 : _err };
                    };
                };
                {
                    var __tmp__ = _c.value._write(_outBuf), _:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                    if (_err != null) {
                        {
                            for (defer in deferstack) {
                                defer();
                            };
                            return { _0 : _n, _1 : _err };
                        };
                    };
                };
                _n = _n + (_m);
                _data = _data.__slice__(_m);
            };
            if (_typ.__t__ == _recordTypeChangeCipherSpec.__t__ && _c.value._vers != versionTLS13) {
                {
                    var _err:stdgo.Error = _c.value._out._changeCipherSpec();
                    if (_err != null) {
                        {
                            for (defer in deferstack) {
                                defer();
                            };
                            return { _0 : _n, _1 : _c.value._sendAlertLocked(new T_alert(_err)) };
                        };
                    };
                };
            };
            {
                for (defer in deferstack) {
                    defer();
                };
                return { _0 : _n, _1 : ((null : stdgo.Error)) };
            };
            for (defer in deferstack) {
                defer();
            };
        } catch(e) {
            recover_exception = stdgo.runtime.Runtime.newRuntime(e.message);
            {
                for (defer in deferstack) {
                    defer();
                };
                if (recover_exception != null) throw recover_exception;
                return { _0 : ((0 : GoInt)), _1 : ((null : stdgo.Error)) };
            };
        };
    }
    public function _flush():{ var _0 : GoInt; var _1 : Error; } {
        var _c = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        if (_c.value._sendBuf.length == ((0 : GoInt))) {
            return { _0 : ((0 : GoInt)), _1 : ((null : stdgo.Error)) };
        };
        var __tmp__ = _c.value._conn.write(_c.value._sendBuf), _n:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        _c.value._bytesSent = _c.value._bytesSent + (((_n : GoInt64)));
        _c.value._sendBuf = new Slice<GoUInt8>().nil();
        _c.value._buffering = false;
        return { _0 : _n, _1 : _err };
    }
    public function _write(_data:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } {
        var _c = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        if (_c.value._buffering) {
            _c.value._sendBuf = _c.value._sendBuf.__append__(..._data.toArray());
            return { _0 : _data.length, _1 : ((null : stdgo.Error)) };
        };
        var __tmp__ = _c.value._conn.write(_data), _n:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        _c.value._bytesSent = _c.value._bytesSent + (((_n : GoInt64)));
        return { _0 : _n, _1 : _err };
    }
    public function _maxPayloadSizeForWrite(_typ:T_recordType):GoInt {
        var _c = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        if (_c.value._config.value.dynamicRecordSizingDisabled || _typ.__t__ != _recordTypeApplicationData.__t__) {
            return _maxPlaintext;
        };
        if (_c.value._bytesSent >= _recordSizeBoostThreshold) {
            return _maxPlaintext;
        };
        var _payloadBytes:GoInt = _tcpMSSEstimate - _recordHeaderLen - _c.value._out._explicitNonceLen();
        if (_c.value._out._cipher != null) {
            if (Go.assertable(((_c.value._out._cipher : stdgo.crypto.cipher.Cipher.Stream)))) {
                var _ciph:stdgo.crypto.cipher.Cipher.Stream = _c.value._out._cipher == null ? null : _c.value._out._cipher.__underlying__() == null ? null : _c.value._out._cipher == null ? null : _c.value._out._cipher.__underlying__().value;
                _payloadBytes = _payloadBytes - (_c.value._out._mac.size());
            } else if (Go.assertable(((_c.value._out._cipher : stdgo.crypto.cipher.Cipher.AEAD)))) {
                var _ciph:stdgo.crypto.cipher.Cipher.AEAD = _c.value._out._cipher == null ? null : _c.value._out._cipher.__underlying__() == null ? null : _c.value._out._cipher == null ? null : _c.value._out._cipher.__underlying__().value;
                _payloadBytes = _payloadBytes - (_ciph.overhead());
            } else if (Go.assertable(((_c.value._out._cipher : T_cbcMode)))) {
                var _ciph:T_cbcMode = _c.value._out._cipher == null ? null : _c.value._out._cipher.__underlying__() == null ? null : _c.value._out._cipher == null ? null : _c.value._out._cipher.__underlying__().value;
                var _blockSize:GoInt = _ciph.blockSize();
                _payloadBytes = (_payloadBytes & -1 ^ (_blockSize - ((1 : GoInt)))) - ((1 : GoInt));
                _payloadBytes = _payloadBytes - (_c.value._out._mac.size());
            } else {
                var _ciph:AnyInterface = _c.value._out._cipher == null ? null : _c.value._out._cipher.__underlying__();
                throw "unknown cipher type";
            };
        };
        if (_c.value._vers == versionTLS13) {
            _payloadBytes--;
        };
        var _pkt:GoInt64 = _c.value._packetsSent;
        _c.value._packetsSent++;
        if (_pkt > ((1000 : GoInt64))) {
            return _maxPlaintext;
        };
        var _n:GoInt = _payloadBytes * (((_pkt + ((1 : GoInt64))) : GoInt));
        if (_n > _maxPlaintext) {
            _n = _maxPlaintext;
        };
        return _n;
    }
    public function _sendAlert(_err:T_alert):Error {
        var _c = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var recover_exception:Error = null;
        var deferstack:Array<Void -> Void> = [];
        _c.value._out.lock();
        try {
            deferstack.unshift(() -> _c.value._out.unlock());
            {
                for (defer in deferstack) {
                    defer();
                };
                return _c.value._sendAlertLocked(_err);
            };
            for (defer in deferstack) {
                defer();
            };
        } catch(e) {
            recover_exception = stdgo.runtime.Runtime.newRuntime(e.message);
            {
                for (defer in deferstack) {
                    defer();
                };
                if (recover_exception != null) throw recover_exception;
                return ((null : stdgo.Error));
            };
        };
    }
    public function _sendAlertLocked(_err:T_alert):Error {
        var _c = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        if (_err.__t__ == _alertNoRenegotiation.__t__ || _err.__t__ == _alertCloseNotify.__t__) {
            _c.value._tmp[((0 : GoInt))] = _alertLevelWarning;
        } else {
            _c.value._tmp[((0 : GoInt))] = _alertLevelError;
        };
        _c.value._tmp[((1 : GoInt))] = _err.__t__;
        var __tmp__ = _c.value._writeRecordLocked(_recordTypeAlert, _c.value._tmp.__slice__(((0 : GoInt)), ((2 : GoInt)))), _:GoInt = __tmp__._0, _writeErr:stdgo.Error = __tmp__._1;
        if (_err.__t__ == _alertCloseNotify.__t__) {
            return _writeErr;
        };
        return _c.value._out._setErrorLocked(Go.pointer((({ op : "local error", err : _err, net : "", source : ((null : stdgo.net.Net.Addr)), addr : ((null : stdgo.net.Net.Addr)) } : stdgo.net.Net.OpError))).value);
    }
    public function _readFromUntil(_r:stdgo.io.Io.Reader, _n:GoInt):Error {
        var _c = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        if (_c.value._rawInput.len() >= _n) {
            return ((null : stdgo.Error));
        };
        var _needs:GoInt = _n - _c.value._rawInput.len();
        _c.value._rawInput.grow(_needs + stdgo.bytes.Bytes.minRead);
        var __tmp__ = _c.value._rawInput.readFrom(Go.pointer(new T_atLeastReader(_r, ((_needs : GoInt64)))).value), _:GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        return _err;
    }
    public function _retryReadRecord(_expectChangeCipherSpec:Bool):Error {
        var _c = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        _c.value._retryCount++;
        if (_c.value._retryCount > _maxUselessRecords) {
            _c.value._sendAlert(_alertUnexpectedMessage);
            return _c.value._in._setErrorLocked(stdgo.errors.Errors.new_("tls: too many ignored records"));
        };
        return _c.value._readRecordOrCCS(_expectChangeCipherSpec);
    }
    public function _readRecordOrCCS(_expectChangeCipherSpec:Bool):Error {
        var _c = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        if (_c.value._in._err != null) {
            return _c.value._in._err;
        };
        var _handshakeComplete:Bool = _c.value._handshakeComplete();
        if (_c.value._input.len() != ((0 : GoInt))) {
            return _c.value._in._setErrorLocked(stdgo.errors.Errors.new_("tls: internal error: attempted to read record with pending application data"));
        };
        _c.value._input.reset(new Slice<GoUInt8>().nil());
        {
            var _err:stdgo.Error = _c.value._readFromUntil(_c.value._conn, _recordHeaderLen);
            if (_err != null) {
                if (Go.toInterface(_err) == Go.toInterface(stdgo.io.Io.errUnexpectedEOF) && _c.value._rawInput.len() == ((0 : GoInt))) {
                    _err = stdgo.io.Io.eof;
                };
                {
                    var __tmp__ = try {
                        { value : ((_err.__underlying__().value : stdgo.net.Net.Error)), ok : true };
                    } catch(_) {
                        { value : ((null : stdgo.net.Net.Error)), ok : false };
                    }, _e = __tmp__.value, _ok = __tmp__.ok;
                    if (!_ok || !_e.temporary()) {
                        _c.value._in._setErrorLocked(_err);
                    };
                };
                return _err;
            };
        };
        var _hdr:Slice<GoUInt8> = _c.value._rawInput.bytes().__slice__(0, _recordHeaderLen);
        var _typ:T_recordType = new T_recordType(_hdr[((0 : GoInt))]);
        if (!_handshakeComplete && _typ.__t__ == ((128 : GoUInt8))) {
            _c.value._sendAlert(_alertProtocolVersion);
            return _c.value._in._setErrorLocked(_c.value._newRecordHeaderError(((null : stdgo.net.Net.Conn)), "unsupported SSLv2 handshake received").__copy__());
        };
        var _vers:GoUInt16 = (((_hdr[((1 : GoInt))] : GoUInt16)) << ((8 : GoUnTypedInt))) | ((_hdr[((2 : GoInt))] : GoUInt16));
        var _n:GoInt = (((_hdr[((3 : GoInt))] : GoInt)) << ((8 : GoUnTypedInt))) | ((_hdr[((4 : GoInt))] : GoInt));
        if (_c.value._haveVers && _c.value._vers != versionTLS13 && _vers != _c.value._vers) {
            _c.value._sendAlert(_alertProtocolVersion);
            var _msg:GoString = stdgo.fmt.Fmt.sprintf("received record with version %x when expecting version %x", Go.toInterface(_vers), Go.toInterface(_c.value._vers));
            return _c.value._in._setErrorLocked(_c.value._newRecordHeaderError(((null : stdgo.net.Net.Conn)), _msg).__copy__());
        };
        if (!_c.value._haveVers) {
            if ((_typ.__t__ != _recordTypeAlert.__t__ && _typ.__t__ != _recordTypeHandshake.__t__) || _vers >= ((4096 : GoUInt16))) {
                return _c.value._in._setErrorLocked(_c.value._newRecordHeaderError(_c.value._conn, "first record does not look like a TLS handshake").__copy__());
            };
        };
        if (_c.value._vers == versionTLS13 && _n > _maxCiphertextTLS13 || _n > _maxCiphertext) {
            _c.value._sendAlert(_alertRecordOverflow);
            var _msg:GoString = stdgo.fmt.Fmt.sprintf("oversized record received with length %d", Go.toInterface(_n));
            return _c.value._in._setErrorLocked(_c.value._newRecordHeaderError(((null : stdgo.net.Net.Conn)), _msg).__copy__());
        };
        {
            var _err:stdgo.Error = _c.value._readFromUntil(_c.value._conn, _recordHeaderLen + _n);
            if (_err != null) {
                {
                    var __tmp__ = try {
                        { value : ((_err.__underlying__().value : stdgo.net.Net.Error)), ok : true };
                    } catch(_) {
                        { value : ((null : stdgo.net.Net.Error)), ok : false };
                    }, _e = __tmp__.value, _ok = __tmp__.ok;
                    if (!_ok || !_e.temporary()) {
                        _c.value._in._setErrorLocked(_err);
                    };
                };
                return _err;
            };
        };
        var _record:Slice<GoUInt8> = _c.value._rawInput.next(_recordHeaderLen + _n);
        var __tmp__ = _c.value._in._decrypt(_record), _data:Slice<GoUInt8> = __tmp__._0, _typ:T_recordType = __tmp__._1, _err:stdgo.Error = __tmp__._2;
        if (_err != null) {
            return _c.value._in._setErrorLocked(_c.value._sendAlert(new T_alert(_err)));
        };
        if (_data.length > _maxPlaintext) {
            return _c.value._in._setErrorLocked(_c.value._sendAlert(_alertRecordOverflow));
        };
        if (_c.value._in._cipher == null && _typ.__t__ == _recordTypeApplicationData.__t__) {
            return _c.value._in._setErrorLocked(_c.value._sendAlert(_alertUnexpectedMessage));
        };
        if (_typ.__t__ != _recordTypeAlert.__t__ && _typ.__t__ != _recordTypeChangeCipherSpec.__t__ && _data.length > ((0 : GoInt))) {
            _c.value._retryCount = ((0 : GoInt));
        };
        if (_c.value._vers == versionTLS13 && _typ.__t__ != _recordTypeHandshake.__t__ && _c.value._hand.len() > ((0 : GoInt))) {
            return _c.value._in._setErrorLocked(_c.value._sendAlert(_alertUnexpectedMessage));
        };
        if (_typ.__t__ == _recordTypeAlert.__t__) {
            if (_data.length != ((2 : GoInt))) {
                return _c.value._in._setErrorLocked(_c.value._sendAlert(_alertUnexpectedMessage));
            };
            if (new T_alert(_data[((1 : GoInt))]).__t__ == _alertCloseNotify.__t__) {
                return _c.value._in._setErrorLocked(stdgo.io.Io.eof);
            };
            if (_c.value._vers == versionTLS13) {
                return _c.value._in._setErrorLocked(Go.pointer((({ op : "remote error", err : new T_alert(_data[((1 : GoInt))]), net : "", source : ((null : stdgo.net.Net.Addr)), addr : ((null : stdgo.net.Net.Addr)) } : stdgo.net.Net.OpError))).value);
            };
            if (_data[((0 : GoInt))] == _alertLevelWarning) {
                return _c.value._retryReadRecord(_expectChangeCipherSpec);
            } else if (_data[((0 : GoInt))] == _alertLevelError) {
                return _c.value._in._setErrorLocked(Go.pointer((({ op : "remote error", err : new T_alert(_data[((1 : GoInt))]), net : "", source : ((null : stdgo.net.Net.Addr)), addr : ((null : stdgo.net.Net.Addr)) } : stdgo.net.Net.OpError))).value);
            } else {
                return _c.value._in._setErrorLocked(_c.value._sendAlert(_alertUnexpectedMessage));
            };
        } else if (_typ.__t__ == _recordTypeChangeCipherSpec.__t__) {
            if (_data.length != ((1 : GoInt)) || _data[((0 : GoInt))] != ((1 : GoUInt8))) {
                return _c.value._in._setErrorLocked(_c.value._sendAlert(_alertDecodeError));
            };
            if (_c.value._hand.len() > ((0 : GoInt))) {
                return _c.value._in._setErrorLocked(_c.value._sendAlert(_alertUnexpectedMessage));
            };
            if (_c.value._vers == versionTLS13) {
                return _c.value._retryReadRecord(_expectChangeCipherSpec);
            };
            if (!_expectChangeCipherSpec) {
                return _c.value._in._setErrorLocked(_c.value._sendAlert(_alertUnexpectedMessage));
            };
            {
                var _err:stdgo.Error = _c.value._in._changeCipherSpec();
                if (_err != null) {
                    return _c.value._in._setErrorLocked(_c.value._sendAlert(new T_alert(_err)));
                };
            };
        } else if (_typ.__t__ == _recordTypeApplicationData.__t__) {
            if (!_handshakeComplete || _expectChangeCipherSpec) {
                return _c.value._in._setErrorLocked(_c.value._sendAlert(_alertUnexpectedMessage));
            };
            if (_data.length == ((0 : GoInt))) {
                return _c.value._retryReadRecord(_expectChangeCipherSpec);
            };
            _c.value._input.reset(_data);
        } else if (_typ.__t__ == _recordTypeHandshake.__t__) {
            if (_data.length == ((0 : GoInt)) || _expectChangeCipherSpec) {
                return _c.value._in._setErrorLocked(_c.value._sendAlert(_alertUnexpectedMessage));
            };
            _c.value._hand.write(_data);
        };
        return ((null : stdgo.Error));
    }
    public function _readChangeCipherSpec():Error {
        var _c = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        return _c.value._readRecordOrCCS(true);
    }
    public function _readRecord():Error {
        var _c = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        return _c.value._readRecordOrCCS(false);
    }
    public function _newRecordHeaderError(_conn:stdgo.net.Net.Conn, _msg:GoString):RecordHeaderError {
        var _c = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var _err:RecordHeaderError = new RecordHeaderError();
        _err.msg = _msg;
        _err.conn = _conn;
        Go.copy(_err.recordHeader.__slice__(0), _c.value._rawInput.bytes());
        return _err.__copy__();
    }
    public function setWriteDeadline(_t:stdgo.time.Time.Time):Error {
        var _c = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        return _c.value._conn.setWriteDeadline(_t.__copy__());
    }
    public function setReadDeadline(_t:stdgo.time.Time.Time):Error {
        var _c = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        return _c.value._conn.setReadDeadline(_t.__copy__());
    }
    public function setDeadline(_t:stdgo.time.Time.Time):Error {
        var _c = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        return _c.value._conn.setDeadline(_t.__copy__());
    }
    public function remoteAddr():stdgo.net.Net.Addr {
        var _c = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        return _c.value._conn.remoteAddr();
    }
    public function localAddr():stdgo.net.Net.Addr {
        var _c = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        return _c.value._conn.localAddr();
    }
    public var _conn : stdgo.net.Net.Conn = ((null : stdgo.net.Net.Conn));
    public var _isClient : Bool = false;
    public var _handshakeFn : stdgo.context.Context.Context -> stdgo.Error = null;
    public var _handshakeStatus : GoUInt32 = ((0 : GoUInt32));
    public var _handshakeMutex : stdgo.sync.Sync.Mutex = new stdgo.sync.Sync.Mutex();
    public var _handshakeErr : stdgo.Error = ((null : stdgo.Error));
    public var _vers : GoUInt16 = ((0 : GoUInt16));
    public var _haveVers : Bool = false;
    public var _config : Pointer<Config> = new Pointer<Config>().nil();
    public var _handshakes : GoInt = ((0 : GoInt));
    public var _didResume : Bool = false;
    public var _cipherSuite : GoUInt16 = ((0 : GoUInt16));
    public var _ocspResponse : Slice<GoUInt8> = new Slice<GoUInt8>().nil();
    public var _scts : Slice<Slice<GoUInt8>> = new Slice<Slice<GoUInt8>>().nil();
    public var _peerCertificates : Slice<Pointer<stdgo.crypto.x509.X509.Certificate>> = new Slice<Pointer<stdgo.crypto.x509.X509.Certificate>>().nil();
    public var _verifiedChains : Slice<Slice<Pointer<stdgo.crypto.x509.X509.Certificate>>> = new Slice<Slice<Pointer<stdgo.crypto.x509.X509.Certificate>>>().nil();
    public var _serverName : GoString = (("" : GoString));
    public var _secureRenegotiation : Bool = false;
    public var _ekm : (GoString, Slice<GoUInt8>, GoInt) -> { var _0 : Slice<GoUInt8>; var _1 : stdgo.Error; } = null;
    public var _resumptionSecret : Slice<GoUInt8> = new Slice<GoUInt8>().nil();
    public var _ticketKeys : Slice<T_ticketKey> = new Slice<T_ticketKey>().nil();
    public var _clientFinishedIsFirst : Bool = false;
    public var _closeNotifyErr : stdgo.Error = ((null : stdgo.Error));
    public var _closeNotifySent : Bool = false;
    public var _clientFinished : GoArray<GoUInt8> = new GoArray<GoUInt8>(...[for (i in 0 ... 12) ((0 : GoUInt8))]);
    public var _serverFinished : GoArray<GoUInt8> = new GoArray<GoUInt8>(...[for (i in 0 ... 12) ((0 : GoUInt8))]);
    public var _clientProtocol : GoString = (("" : GoString));
    public var _in : T_halfConn = new T_halfConn();
    public var _out : T_halfConn = new T_halfConn();
    public var _rawInput : stdgo.bytes.Bytes.Buffer = new stdgo.bytes.Bytes.Buffer();
    public var _input : stdgo.bytes.Bytes.Reader = new stdgo.bytes.Bytes.Reader();
    public var _hand : stdgo.bytes.Bytes.Buffer = new stdgo.bytes.Bytes.Buffer();
    public var _buffering : Bool = false;
    public var _sendBuf : Slice<GoUInt8> = new Slice<GoUInt8>().nil();
    public var _bytesSent : GoInt64 = ((0 : GoInt64));
    public var _packetsSent : GoInt64 = ((0 : GoInt64));
    public var _retryCount : GoInt = ((0 : GoInt));
    public var _activeCall : GoInt32 = ((0 : GoInt32));
    public var _tmp : GoArray<GoUInt8> = new GoArray<GoUInt8>(...[for (i in 0 ... 16) ((0 : GoUInt8))]);
    public function new(?_conn:stdgo.net.Net.Conn, ?_isClient:Bool, ?_handshakeFn:stdgo.context.Context.Context -> stdgo.Error, ?_handshakeStatus:GoUInt32, ?_handshakeMutex:stdgo.sync.Sync.Mutex, ?_handshakeErr:stdgo.Error, ?_vers:GoUInt16, ?_haveVers:Bool, ?_config:Pointer<Config>, ?_handshakes:GoInt, ?_didResume:Bool, ?_cipherSuite:GoUInt16, ?_ocspResponse:Slice<GoUInt8>, ?_scts:Slice<Slice<GoUInt8>>, ?_peerCertificates:Slice<Pointer<stdgo.crypto.x509.X509.Certificate>>, ?_verifiedChains:Slice<Slice<Pointer<stdgo.crypto.x509.X509.Certificate>>>, ?_serverName:GoString, ?_secureRenegotiation:Bool, ?_ekm:(GoString, Slice<GoUInt8>, GoInt) -> { var _0 : Slice<GoUInt8>; var _1 : stdgo.Error; }, ?_resumptionSecret:Slice<GoUInt8>, ?_ticketKeys:Slice<T_ticketKey>, ?_clientFinishedIsFirst:Bool, ?_closeNotifyErr:stdgo.Error, ?_closeNotifySent:Bool, ?_clientFinished:GoArray<GoUInt8>, ?_serverFinished:GoArray<GoUInt8>, ?_clientProtocol:GoString, ?_in:T_halfConn, ?_out:T_halfConn, ?_rawInput:stdgo.bytes.Bytes.Buffer, ?_input:stdgo.bytes.Bytes.Reader, ?_hand:stdgo.bytes.Bytes.Buffer, ?_buffering:Bool, ?_sendBuf:Slice<GoUInt8>, ?_bytesSent:GoInt64, ?_packetsSent:GoInt64, ?_retryCount:GoInt, ?_activeCall:GoInt32, ?_tmp:GoArray<GoUInt8>) stdgo.internal.Macro.initLocals();
    public function toString() {
        return '{' + Go.string(_conn) + " " + Go.string(_isClient) + " " + Go.string(_handshakeFn) + " " + Go.string(_handshakeStatus) + " " + Go.string(_handshakeMutex) + " " + Go.string(_handshakeErr) + " " + Go.string(_vers) + " " + Go.string(_haveVers) + " " + Go.string(_config) + " " + Go.string(_handshakes) + " " + Go.string(_didResume) + " " + Go.string(_cipherSuite) + " " + Go.string(_ocspResponse) + " " + Go.string(_scts) + " " + Go.string(_peerCertificates) + " " + Go.string(_verifiedChains) + " " + Go.string(_serverName) + " " + Go.string(_secureRenegotiation) + " " + Go.string(_ekm) + " " + Go.string(_resumptionSecret) + " " + Go.string(_ticketKeys) + " " + Go.string(_clientFinishedIsFirst) + " " + Go.string(_closeNotifyErr) + " " + Go.string(_closeNotifySent) + " " + Go.string(_clientFinished) + " " + Go.string(_serverFinished) + " " + Go.string(_clientProtocol) + " " + Go.string(_in) + " " + Go.string(_out) + " " + Go.string(_rawInput) + " " + Go.string(_input) + " " + Go.string(_hand) + " " + Go.string(_buffering) + " " + Go.string(_sendBuf) + " " + Go.string(_bytesSent) + " " + Go.string(_packetsSent) + " " + Go.string(_retryCount) + " " + Go.string(_activeCall) + " " + Go.string(_tmp) + "}";
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new Conn(
_conn,
_isClient,
_handshakeFn,
_handshakeStatus,
_handshakeMutex,
_handshakeErr,
_vers,
_haveVers,
_config,
_handshakes,
_didResume,
_cipherSuite,
_ocspResponse,
_scts,
_peerCertificates,
_verifiedChains,
_serverName,
_secureRenegotiation,
_ekm,
_resumptionSecret,
_ticketKeys,
_clientFinishedIsFirst,
_closeNotifyErr,
_closeNotifySent,
_clientFinished,
_serverFinished,
_clientProtocol,
_in,
_out,
_rawInput,
_input,
_hand,
_buffering,
_sendBuf,
_bytesSent,
_packetsSent,
_retryCount,
_activeCall,
_tmp);
    }
    public function __set__(__tmp__) {
        this._conn = __tmp__._conn;
        this._isClient = __tmp__._isClient;
        this._handshakeFn = __tmp__._handshakeFn;
        this._handshakeStatus = __tmp__._handshakeStatus;
        this._handshakeMutex = __tmp__._handshakeMutex;
        this._handshakeErr = __tmp__._handshakeErr;
        this._vers = __tmp__._vers;
        this._haveVers = __tmp__._haveVers;
        this._config = __tmp__._config;
        this._handshakes = __tmp__._handshakes;
        this._didResume = __tmp__._didResume;
        this._cipherSuite = __tmp__._cipherSuite;
        this._ocspResponse = __tmp__._ocspResponse;
        this._scts = __tmp__._scts;
        this._peerCertificates = __tmp__._peerCertificates;
        this._verifiedChains = __tmp__._verifiedChains;
        this._serverName = __tmp__._serverName;
        this._secureRenegotiation = __tmp__._secureRenegotiation;
        this._ekm = __tmp__._ekm;
        this._resumptionSecret = __tmp__._resumptionSecret;
        this._ticketKeys = __tmp__._ticketKeys;
        this._clientFinishedIsFirst = __tmp__._clientFinishedIsFirst;
        this._closeNotifyErr = __tmp__._closeNotifyErr;
        this._closeNotifySent = __tmp__._closeNotifySent;
        this._clientFinished = __tmp__._clientFinished;
        this._serverFinished = __tmp__._serverFinished;
        this._clientProtocol = __tmp__._clientProtocol;
        this._in = __tmp__._in;
        this._out = __tmp__._out;
        this._rawInput = __tmp__._rawInput;
        this._input = __tmp__._input;
        this._hand = __tmp__._hand;
        this._buffering = __tmp__._buffering;
        this._sendBuf = __tmp__._sendBuf;
        this._bytesSent = __tmp__._bytesSent;
        this._packetsSent = __tmp__._packetsSent;
        this._retryCount = __tmp__._retryCount;
        this._activeCall = __tmp__._activeCall;
        this._tmp = __tmp__._tmp;
        return this;
    }
}
@:structInit class T_halfConn {
    public function _encrypt(_record:Slice<GoByte>, _payload:Slice<GoByte>, _rand:stdgo.io.Io.Reader):{ var _0 : Slice<GoByte>; var _1 : Error; } {
        var _hc = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        if (_hc.value._cipher == null) {
            return { _0 : _record.__append__(..._payload.toArray()), _1 : ((null : stdgo.Error)) };
        };
        var _explicitNonce:Slice<GoByte> = new Slice<GoUInt8>().nil();
        {
            var _explicitNonceLen:GoInt = _hc.value._explicitNonceLen();
            if (_explicitNonceLen > ((0 : GoInt))) {
                {
                    var __tmp__ = _sliceForAppend(_record, _explicitNonceLen);
                    _record = __tmp__._0;
                    _explicitNonce = __tmp__._1;
                };
                {
                    var __tmp__ = try {
                        { value : ((_hc.value._cipher.value : T_cbcMode)), ok : true };
                    } catch(_) {
                        { value : ((null : T_cbcMode)), ok : false };
                    }, _ = __tmp__.value, _isCBC = __tmp__.ok;
                    if (!_isCBC && _explicitNonceLen < ((16 : GoInt))) {
                        Go.copy(_explicitNonce, _hc.value._seq.__slice__(0));
                    } else {
                        {
                            var __tmp__ = stdgo.io.Io.readFull(_rand, _explicitNonce), _:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                            if (_err != null) {
                                return { _0 : new Slice<GoUInt8>().nil(), _1 : _err };
                            };
                        };
                    };
                };
            };
        };
        var _dst:Slice<GoByte> = new Slice<GoUInt8>().nil();
        if (Go.assertable(((_hc.value._cipher : stdgo.crypto.cipher.Cipher.Stream)))) {
            var _c:stdgo.crypto.cipher.Cipher.Stream = _hc.value._cipher == null ? null : _hc.value._cipher.__underlying__() == null ? null : _hc.value._cipher == null ? null : _hc.value._cipher.__underlying__().value;
            var _mac:Slice<GoUInt8> = _tls10MAC(_hc.value._mac, _hc.value._scratchBuf.__slice__(0, ((0 : GoInt))), _hc.value._seq.__slice__(0), _record.__slice__(0, _recordHeaderLen), _payload, new Slice<GoUInt8>().nil());
            {
                var __tmp__ = _sliceForAppend(_record, _payload.length + _mac.length);
                _record = __tmp__._0;
                _dst = __tmp__._1;
            };
            _c.xorkeyStream(_dst.__slice__(0, _payload.length), _payload);
            _c.xorkeyStream(_dst.__slice__(_payload.length), _mac);
        } else if (Go.assertable(((_hc.value._cipher : T_aead)))) {
            var _c:T_aead = _hc.value._cipher == null ? null : _hc.value._cipher.__underlying__() == null ? null : _hc.value._cipher == null ? null : _hc.value._cipher.__underlying__().value;
            var _nonce:Slice<GoUInt8> = _explicitNonce;
            if (_nonce.length == ((0 : GoInt))) {
                _nonce = _hc.value._seq.__slice__(0);
            };
            if (_hc.value._version == versionTLS13) {
                _record = _record.__append__(..._payload.toArray());
                _record = _record.__append__(_record[((0 : GoInt))]);
                _record[((0 : GoInt))] = _recordTypeApplicationData.__t__;
                var _n:GoInt = _payload.length + ((1 : GoInt)) + _c.overhead();
                _record[((3 : GoInt))] = (((_n >> ((8 : GoUnTypedInt))) : GoByte));
                _record[((4 : GoInt))] = ((_n : GoByte));
                _record = _c.seal(_record.__slice__(0, _recordHeaderLen), _nonce, _record.__slice__(_recordHeaderLen), _record.__slice__(0, _recordHeaderLen));
            } else {
                var _additionalData:Slice<GoUInt8> = _hc.value._scratchBuf.__slice__(0, ((0 : GoInt))).__append__(..._hc.value._seq.__slice__(0).toArray());
                _additionalData = _additionalData.__append__(..._record.__slice__(0, _recordHeaderLen).toArray());
                _record = _c.seal(_record, _nonce, _payload, _additionalData);
            };
        } else if (Go.assertable(((_hc.value._cipher : T_cbcMode)))) {
            var _c:T_cbcMode = _hc.value._cipher == null ? null : _hc.value._cipher.__underlying__() == null ? null : _hc.value._cipher == null ? null : _hc.value._cipher.__underlying__().value;
            var _mac:Slice<GoUInt8> = _tls10MAC(_hc.value._mac, _hc.value._scratchBuf.__slice__(0, ((0 : GoInt))), _hc.value._seq.__slice__(0), _record.__slice__(0, _recordHeaderLen), _payload, new Slice<GoUInt8>().nil());
            var _blockSize:GoInt = _c.blockSize();
            var _plaintextLen:GoInt = _payload.length + _mac.length;
            var _paddingLen:GoInt = _blockSize - _plaintextLen % _blockSize;
            {
                var __tmp__ = _sliceForAppend(_record, _plaintextLen + _paddingLen);
                _record = __tmp__._0;
                _dst = __tmp__._1;
            };
            Go.copy(_dst, _payload);
            Go.copy(_dst.__slice__(_payload.length), _mac);
            {
                var _i:GoInt = _plaintextLen;
                Go.cfor(_i < _dst.length, _i++, {
                    _dst[_i] = (((_paddingLen - ((1 : GoInt))) : GoByte));
                });
            };
            if (_explicitNonce.length > ((0 : GoInt))) {
                _c.setIV(_explicitNonce);
            };
            _c.cryptBlocks(_dst, _dst);
        } else {
            var _c:AnyInterface = _hc.value._cipher == null ? null : _hc.value._cipher.__underlying__();
            throw "unknown cipher type";
        };
        var _n:GoInt = _record.length - _recordHeaderLen;
        _record[((3 : GoInt))] = (((_n >> ((8 : GoUnTypedInt))) : GoByte));
        _record[((4 : GoInt))] = ((_n : GoByte));
        _hc.value._incSeq();
        return { _0 : _record, _1 : ((null : stdgo.Error)) };
    }
    public function _decrypt(_record:Slice<GoByte>):{ var _0 : Slice<GoByte>; var _1 : T_recordType; var _2 : Error; } {
        var _hc = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var _plaintext:Slice<GoByte> = new Slice<GoUInt8>().nil();
        var _typ:T_recordType = new T_recordType(_record[((0 : GoInt))]);
        var _payload:Slice<GoUInt8> = _record.__slice__(_recordHeaderLen);
        if (_hc.value._version == versionTLS13 && _typ.__t__ == _recordTypeChangeCipherSpec.__t__) {
            return { _0 : _payload, _1 : _typ, _2 : ((null : stdgo.Error)) };
        };
        var _paddingGood:GoUInt8 = ((((255 : GoUInt8)) : GoByte));
        var _paddingLen:GoInt = ((0 : GoInt));
        var _explicitNonceLen:GoInt = _hc.value._explicitNonceLen();
        if (_hc.value._cipher != null) {
            if (Go.assertable(((_hc.value._cipher : stdgo.crypto.cipher.Cipher.Stream)))) {
                var _c:stdgo.crypto.cipher.Cipher.Stream = _hc.value._cipher == null ? null : _hc.value._cipher.__underlying__() == null ? null : _hc.value._cipher == null ? null : _hc.value._cipher.__underlying__().value;
                _c.xorkeyStream(_payload, _payload);
            } else if (Go.assertable(((_hc.value._cipher : T_aead)))) {
                var _c:T_aead = _hc.value._cipher == null ? null : _hc.value._cipher.__underlying__() == null ? null : _hc.value._cipher == null ? null : _hc.value._cipher.__underlying__().value;
                if (_payload.length < _explicitNonceLen) {
                    return { _0 : new Slice<GoUInt8>().nil(), _1 : new T_recordType(((0 : GoUInt8))), _2 : _alertBadRecordMAC };
                };
                var _nonce:Slice<GoUInt8> = _payload.__slice__(0, _explicitNonceLen);
                if (_nonce.length == ((0 : GoInt))) {
                    _nonce = _hc.value._seq.__slice__(0);
                };
                _payload = _payload.__slice__(_explicitNonceLen);
                var _additionalData:Slice<GoByte> = new Slice<GoUInt8>().nil();
                if (_hc.value._version == versionTLS13) {
                    _additionalData = _record.__slice__(0, _recordHeaderLen);
                } else {
                    _additionalData = _hc.value._scratchBuf.__slice__(0, ((0 : GoInt))).__append__(..._hc.value._seq.__slice__(0).toArray());
                    _additionalData = _additionalData.__append__(..._record.__slice__(0, ((3 : GoInt))).toArray());
                    var _n:GoInt = _payload.length - _c.overhead();
                    _additionalData = _additionalData.__append__((((_n >> ((8 : GoUnTypedInt))) : GoByte)), ((_n : GoByte)));
                };
                var _err:Error = ((null : stdgo.Error));
                {
                    var __tmp__ = _c.open(_payload.__slice__(0, ((0 : GoInt))), _nonce, _payload, _additionalData);
                    _plaintext = __tmp__._0;
                    _err = __tmp__._1;
                };
                if (_err != null) {
                    return { _0 : new Slice<GoUInt8>().nil(), _1 : new T_recordType(((0 : GoUInt8))), _2 : _alertBadRecordMAC };
                };
            } else if (Go.assertable(((_hc.value._cipher : T_cbcMode)))) {
                var _c:T_cbcMode = _hc.value._cipher == null ? null : _hc.value._cipher.__underlying__() == null ? null : _hc.value._cipher == null ? null : _hc.value._cipher.__underlying__().value;
                var _blockSize:GoInt = _c.blockSize();
                var _minPayload:GoInt = _explicitNonceLen + _roundUp(_hc.value._mac.size() + ((1 : GoInt)), _blockSize);
                if (_payload.length % _blockSize != ((0 : GoInt)) || _payload.length < _minPayload) {
                    return { _0 : new Slice<GoUInt8>().nil(), _1 : new T_recordType(((0 : GoUInt8))), _2 : _alertBadRecordMAC };
                };
                if (_explicitNonceLen > ((0 : GoInt))) {
                    _c.setIV(_payload.__slice__(0, _explicitNonceLen));
                    _payload = _payload.__slice__(_explicitNonceLen);
                };
                _c.cryptBlocks(_payload, _payload);
                {
                    var __tmp__ = _extractPadding(_payload);
                    _paddingLen = __tmp__._0;
                    _paddingGood = __tmp__._1;
                };
            } else {
                var _c:AnyInterface = _hc.value._cipher == null ? null : _hc.value._cipher.__underlying__();
                throw "unknown cipher type";
            };
            if (_hc.value._version == versionTLS13) {
                if (_typ.__t__ != _recordTypeApplicationData.__t__) {
                    return { _0 : new Slice<GoUInt8>().nil(), _1 : new T_recordType(((0 : GoUInt8))), _2 : _alertUnexpectedMessage };
                };
                if (_plaintext.length > _maxPlaintext + ((1 : GoUnTypedInt))) {
                    return { _0 : new Slice<GoUInt8>().nil(), _1 : new T_recordType(((0 : GoUInt8))), _2 : _alertRecordOverflow };
                };
                {
                    var _i:GoInt = _plaintext.length - ((1 : GoInt));
                    Go.cfor(_i >= ((0 : GoInt)), _i--, {
                        if (_plaintext[_i] != ((0 : GoUInt8))) {
                            _typ = new T_recordType(_plaintext[_i]);
                            _plaintext = _plaintext.__slice__(0, _i);
                            break;
                        };
                        if (_i == ((0 : GoInt))) {
                            return { _0 : new Slice<GoUInt8>().nil(), _1 : new T_recordType(((0 : GoUInt8))), _2 : _alertUnexpectedMessage };
                        };
                    });
                };
            };
        } else {
            _plaintext = _payload;
        };
        if (_hc.value._mac != null) {
            var _macSize:GoInt = _hc.value._mac.size();
            if (_payload.length < _macSize) {
                return { _0 : new Slice<GoUInt8>().nil(), _1 : new T_recordType(((0 : GoUInt8))), _2 : _alertBadRecordMAC };
            };
            var _n:GoInt = _payload.length - _macSize - _paddingLen;
            _n = stdgo.crypto.subtle.Subtle.constantTimeSelect((((((_n : GoUInt32)) >> ((31 : GoUnTypedInt))) : GoInt)), ((0 : GoInt)), _n);
            _record[((3 : GoInt))] = (((_n >> ((8 : GoUnTypedInt))) : GoByte));
            _record[((4 : GoInt))] = ((_n : GoByte));
            var _remoteMAC:Slice<GoUInt8> = _payload.__slice__(_n, _n + _macSize);
            var _localMAC:Slice<GoUInt8> = _tls10MAC(_hc.value._mac, _hc.value._scratchBuf.__slice__(0, ((0 : GoInt))), _hc.value._seq.__slice__(0), _record.__slice__(0, _recordHeaderLen), _payload.__slice__(0, _n), _payload.__slice__(_n + _macSize));
            var _macAndPaddingGood:GoInt = stdgo.crypto.subtle.Subtle.constantTimeCompare(_localMAC, _remoteMAC) & ((_paddingGood : GoInt));
            if (_macAndPaddingGood != ((1 : GoInt))) {
                return { _0 : new Slice<GoUInt8>().nil(), _1 : new T_recordType(((0 : GoUInt8))), _2 : _alertBadRecordMAC };
            };
            _plaintext = _payload.__slice__(0, _n);
        };
        _hc.value._incSeq();
        return { _0 : _plaintext, _1 : _typ, _2 : ((null : stdgo.Error)) };
    }
    public function _explicitNonceLen():GoInt {
        var _hc = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        if (_hc.value._cipher == null) {
            return ((0 : GoInt));
        };
        if (Go.assertable(((_hc.value._cipher : stdgo.crypto.cipher.Cipher.Stream)))) {
            var _c:stdgo.crypto.cipher.Cipher.Stream = _hc.value._cipher == null ? null : _hc.value._cipher.__underlying__() == null ? null : _hc.value._cipher == null ? null : _hc.value._cipher.__underlying__().value;
            return ((0 : GoInt));
        } else if (Go.assertable(((_hc.value._cipher : T_aead)))) {
            var _c:T_aead = _hc.value._cipher == null ? null : _hc.value._cipher.__underlying__() == null ? null : _hc.value._cipher == null ? null : _hc.value._cipher.__underlying__().value;
            return _c._explicitNonceLen();
        } else if (Go.assertable(((_hc.value._cipher : T_cbcMode)))) {
            var _c:T_cbcMode = _hc.value._cipher == null ? null : _hc.value._cipher.__underlying__() == null ? null : _hc.value._cipher == null ? null : _hc.value._cipher.__underlying__().value;
            if (_hc.value._version >= versionTLS11) {
                return _c.blockSize();
            };
            return ((0 : GoInt));
        } else {
            var _c:AnyInterface = _hc.value._cipher == null ? null : _hc.value._cipher.__underlying__();
            throw "unknown cipher type";
        };
    }
    public function _incSeq():Void {
        var _hc = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        {
            var _i:GoInt = ((7 : GoInt));
            Go.cfor(_i >= ((0 : GoInt)), _i--, {
                _hc.value._seq[_i]++;
                if (_hc.value._seq[_i] != ((0 : GoUInt8))) {
                    return;
                };
            });
        };
        throw "TLS: sequence number wraparound";
    }
    public function _setTrafficSecret(_suite:Pointer<T_cipherSuiteTLS13>, _secret:Slice<GoByte>):Void {
        var _hc = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        _hc.value._trafficSecret = _secret;
        var __tmp__ = _suite.value._trafficKey(_secret), _key:Slice<GoUInt8> = __tmp__._0, _iv:Slice<GoUInt8> = __tmp__._1;
        _hc.value._cipher = Go.toInterface(_suite.value._aead(_key, _iv));
        {
            var _i;
            for (_obj in _hc.value._seq.keyValueIterator()) {
                _i = _obj.key;
                _hc.value._seq[_i] = ((0 : GoUInt8));
            };
        };
    }
    public function _changeCipherSpec():Error {
        var _hc = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        if (_hc.value._nextCipher == null || _hc.value._version == versionTLS13) {
            return _alertInternalError;
        };
        _hc.value._cipher = Go.toInterface(_hc.value._nextCipher);
        _hc.value._mac = _hc.value._nextMac;
        _hc.value._nextCipher = ((null : AnyInterface));
        _hc.value._nextMac = ((null : stdgo.hash.Hash.Hash));
        {
            var _i;
            for (_obj in _hc.value._seq.keyValueIterator()) {
                _i = _obj.key;
                _hc.value._seq[_i] = ((0 : GoUInt8));
            };
        };
        return ((null : stdgo.Error));
    }
    public function _prepareCipherSpec(_version:GoUInt16, _cipher:AnyInterface, _mac:stdgo.hash.Hash.Hash):Void {
        var _hc = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        _hc.value._version = _version;
        _hc.value._nextCipher = Go.toInterface(_cipher);
        _hc.value._nextMac = _mac;
    }
    public function _setErrorLocked(_err:Error):Error {
        var _hc = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        {
            var __tmp__ = try {
                { value : ((_err.__underlying__().value : stdgo.net.Net.Error)), ok : true };
            } catch(_) {
                { value : ((null : stdgo.net.Net.Error)), ok : false };
            }, _e = __tmp__.value, _ok = __tmp__.ok;
            if (_ok) {
                _hc.value._err = Go.pointer((({ _err : _e } : T_permanentError))).value;
            } else {
                _hc.value._err = _err;
            };
        };
        return _hc.value._err;
    }
    @:embedded
    public var mutex : stdgo.sync.Sync.Mutex = new stdgo.sync.Sync.Mutex();
    public var _err : stdgo.Error = ((null : stdgo.Error));
    public var _version : GoUInt16 = ((0 : GoUInt16));
    public var _cipher : AnyInterface = ((null : AnyInterface));
    public var _mac : stdgo.hash.Hash.Hash = ((null : stdgo.hash.Hash.Hash));
    public var _seq : GoArray<GoUInt8> = new GoArray<GoUInt8>(...[for (i in 0 ... 8) ((0 : GoUInt8))]);
    public var _scratchBuf : GoArray<GoUInt8> = new GoArray<GoUInt8>(...[for (i in 0 ... 13) ((0 : GoUInt8))]);
    public var _nextCipher : AnyInterface = ((null : AnyInterface));
    public var _nextMac : stdgo.hash.Hash.Hash = ((null : stdgo.hash.Hash.Hash));
    public var _trafficSecret : Slice<GoUInt8> = new Slice<GoUInt8>().nil();
    public function new(?mutex:stdgo.sync.Sync.Mutex, ?_err:stdgo.Error, ?_version:GoUInt16, ?_cipher:AnyInterface, ?_mac:stdgo.hash.Hash.Hash, ?_seq:GoArray<GoUInt8>, ?_scratchBuf:GoArray<GoUInt8>, ?_nextCipher:AnyInterface, ?_nextMac:stdgo.hash.Hash.Hash, ?_trafficSecret:Slice<GoUInt8>) stdgo.internal.Macro.initLocals();
    public function toString() {
        return '{' + Go.string(mutex) + " " + Go.string(_err) + " " + Go.string(_version) + " " + Go.string(_cipher) + " " + Go.string(_mac) + " " + Go.string(_seq) + " " + Go.string(_scratchBuf) + " " + Go.string(_nextCipher) + " " + Go.string(_nextMac) + " " + Go.string(_trafficSecret) + "}";
    }
    public function lock() mutex.lock();
    public function unlock() mutex.unlock();
    public function _lockSlow() mutex._lockSlow();
    public function _unlockSlow(_new:GoInt32) mutex._unlockSlow(_0);
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_halfConn(mutex, _err, _version, _cipher, _mac, _seq, _scratchBuf, _nextCipher, _nextMac, _trafficSecret);
    }
    public function __set__(__tmp__) {
        this.mutex = __tmp__.mutex;
        this._err = __tmp__._err;
        this._version = __tmp__._version;
        this._cipher = __tmp__._cipher;
        this._mac = __tmp__._mac;
        this._seq = __tmp__._seq;
        this._scratchBuf = __tmp__._scratchBuf;
        this._nextCipher = __tmp__._nextCipher;
        this._nextMac = __tmp__._nextMac;
        this._trafficSecret = __tmp__._trafficSecret;
        return this;
    }
}
@:structInit class T_permanentError {
    public function temporary():Bool {
        var _e = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        return false;
    }
    public function timeout():Bool {
        var _e = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        return _e.value._err.timeout();
    }
    public function unwrap():Error {
        var _e = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        return _e.value._err;
    }
    public function error():GoString {
        var _e = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        return _e.value._err.error();
    }
    public var _err : stdgo.net.Net.Error = ((null : stdgo.net.Net.Error));
    public function new(?_err:stdgo.net.Net.Error) stdgo.internal.Macro.initLocals();
    public function toString() {
        return '{' + Go.string(_err) + "}";
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_permanentError(_err);
    }
    public function __set__(__tmp__) {
        this._err = __tmp__._err;
        return this;
    }
}
@:structInit class RecordHeaderError {
    public function error():GoString {
        var _e = this.__copy__();
        return (("tls: " : GoString)) + _e.msg;
    }
    public var msg : GoString = (("" : GoString));
    public var recordHeader : GoArray<GoUInt8> = new GoArray<GoUInt8>(...[for (i in 0 ... 5) ((0 : GoUInt8))]);
    public var conn : stdgo.net.Net.Conn = ((null : stdgo.net.Net.Conn));
    public function new(?msg:GoString, ?recordHeader:GoArray<GoUInt8>, ?conn:stdgo.net.Net.Conn) stdgo.internal.Macro.initLocals();
    public function toString() {
        return '{' + Go.string(msg) + " " + Go.string(recordHeader) + " " + Go.string(conn) + "}";
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new RecordHeaderError(msg, recordHeader, conn);
    }
    public function __set__(__tmp__) {
        this.msg = __tmp__.msg;
        this.recordHeader = __tmp__.recordHeader;
        this.conn = __tmp__.conn;
        return this;
    }
}
@:structInit class T_atLeastReader {
    public function read(_p:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } {
        var _r = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        if (_r.value.n <= ((0 : GoInt64))) {
            return { _0 : ((0 : GoInt)), _1 : stdgo.io.Io.eof };
        };
        var __tmp__ = _r.value.r.read(_p), _n:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        _r.value.n = _r.value.n - (((_n : GoInt64)));
        if (_r.value.n > ((0 : GoInt64)) && Go.toInterface(_err) == Go.toInterface(stdgo.io.Io.eof)) {
            return { _0 : _n, _1 : stdgo.io.Io.errUnexpectedEOF };
        };
        if (_r.value.n <= ((0 : GoInt64)) && _err == null) {
            return { _0 : _n, _1 : stdgo.io.Io.eof };
        };
        return { _0 : _n, _1 : _err };
    }
    public var r : stdgo.io.Io.Reader = ((null : stdgo.io.Io.Reader));
    public var n : GoInt64 = ((0 : GoInt64));
    public function new(?r:stdgo.io.Io.Reader, ?n:GoInt64) stdgo.internal.Macro.initLocals();
    public function toString() {
        return '{' + Go.string(r) + " " + Go.string(n) + "}";
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_atLeastReader(r, n);
    }
    public function __set__(__tmp__) {
        this.r = __tmp__.r;
        this.n = __tmp__.n;
        return this;
    }
}
@:structInit class T_clientHandshakeState {
    public function _sendFinished(_out:Slice<GoByte>):Error {
        var _hs = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var _c:Pointer<Conn> = _hs.value._c;
        {
            var __tmp__ = _c.value._writeRecord(_recordTypeChangeCipherSpec, new Slice<GoUInt8>(((1 : GoUInt8)))), _:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return _err;
            };
        };
        var _finished:Pointer<T_finishedMsg> = Go.pointer(new T_finishedMsg());
        _finished.value._verifyData = _hs.value._finishedHash._clientSum(_hs.value._masterSecret);
        _hs.value._finishedHash.write(_finished.value._marshal());
        {
            var __tmp__ = _c.value._writeRecord(_recordTypeHandshake, _finished.value._marshal()), _:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return _err;
            };
        };
        Go.copy(_out, _finished.value._verifyData);
        return ((null : stdgo.Error));
    }
    public function _readSessionTicket():Error {
        var _hs = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        if (!_hs.value._serverHello.value._ticketSupported) {
            return ((null : stdgo.Error));
        };
        var _c:Pointer<Conn> = _hs.value._c;
        var __tmp__ = _c.value._readHandshake(), _msg:AnyInterface = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return _err;
        };
        var __tmp__ = try {
            { value : ((_msg.value : Pointer<T_newSessionTicketMsg>)), ok : true };
        } catch(_) {
            { value : new Pointer<T_newSessionTicketMsg>().nil(), ok : false };
        }, _sessionTicketMsg = __tmp__.value, _ok = __tmp__.ok;
        if (!_ok) {
            _c.value._sendAlert(_alertUnexpectedMessage);
            return _unexpectedMessageError(Go.toInterface(_sessionTicketMsg), Go.toInterface(_msg));
        };
        _hs.value._finishedHash.write(_sessionTicketMsg.value._marshal());
        _hs.value._session = Go.pointer((({ _sessionTicket : _sessionTicketMsg.value._ticket, _vers : _c.value._vers, _cipherSuite : _hs.value._suite.value._id, _masterSecret : _hs.value._masterSecret, _serverCertificates : _c.value._peerCertificates, _verifiedChains : _c.value._verifiedChains, _receivedAt : _c.value._config.value._time().__copy__(), _ocspResponse : _c.value._ocspResponse, _scts : _c.value._scts, _nonce : new Slice<GoUInt8>().nil(), _useBy : new stdgo.time.Time.Time(), _ageAdd : 0 } : ClientSessionState)));
        return ((null : stdgo.Error));
    }
    public function _readFinished(_out:Slice<GoByte>):Error {
        var _hs = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var _c:Pointer<Conn> = _hs.value._c;
        {
            var _err:stdgo.Error = _c.value._readChangeCipherSpec();
            if (_err != null) {
                return _err;
            };
        };
        var __tmp__ = _c.value._readHandshake(), _msg:AnyInterface = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return _err;
        };
        var __tmp__ = try {
            { value : ((_msg.value : Pointer<T_finishedMsg>)), ok : true };
        } catch(_) {
            { value : new Pointer<T_finishedMsg>().nil(), ok : false };
        }, _serverFinished = __tmp__.value, _ok = __tmp__.ok;
        if (!_ok) {
            _c.value._sendAlert(_alertUnexpectedMessage);
            return _unexpectedMessageError(Go.toInterface(_serverFinished), Go.toInterface(_msg));
        };
        var _verify:Slice<GoUInt8> = _hs.value._finishedHash._serverSum(_hs.value._masterSecret);
        if (_verify.length != _serverFinished.value._verifyData.length || stdgo.crypto.subtle.Subtle.constantTimeCompare(_verify, _serverFinished.value._verifyData) != ((1 : GoInt))) {
            _c.value._sendAlert(_alertHandshakeFailure);
            return stdgo.errors.Errors.new_("tls: server\'s Finished message was incorrect");
        };
        _hs.value._finishedHash.write(_serverFinished.value._marshal());
        Go.copy(_out, _verify);
        return ((null : stdgo.Error));
    }
    public function _processServerHello():{ var _0 : Bool; var _1 : Error; } {
        var _hs = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var _c:Pointer<Conn> = _hs.value._c;
        {
            var _err:stdgo.Error = _hs.value._pickCipherSuite();
            if (_err != null) {
                return { _0 : false, _1 : _err };
            };
        };
        if (_hs.value._serverHello.value._compressionMethod != _compressionNone) {
            _c.value._sendAlert(_alertUnexpectedMessage);
            return { _0 : false, _1 : stdgo.errors.Errors.new_("tls: server selected unsupported compression format") };
        };
        if (_c.value._handshakes == ((0 : GoInt)) && _hs.value._serverHello.value._secureRenegotiationSupported) {
            _c.value._secureRenegotiation = true;
            if (_hs.value._serverHello.value._secureRenegotiation.length != ((0 : GoInt))) {
                _c.value._sendAlert(_alertHandshakeFailure);
                return { _0 : false, _1 : stdgo.errors.Errors.new_("tls: initial handshake had non-empty renegotiation extension") };
            };
        };
        if (_c.value._handshakes > ((0 : GoInt)) && _c.value._secureRenegotiation) {
            var _expectedSecureRenegotiation:GoArray<GoByte> = new GoArray<GoUInt8>(...[for (i in 0 ... 24) ((0 : GoUInt8))]);
            Go.copy(_expectedSecureRenegotiation.__slice__(0), _c.value._clientFinished.__slice__(0));
            Go.copy(_expectedSecureRenegotiation.__slice__(((12 : GoInt))), _c.value._serverFinished.__slice__(0));
            if (!stdgo.bytes.Bytes.equal(_hs.value._serverHello.value._secureRenegotiation, _expectedSecureRenegotiation.__slice__(0))) {
                _c.value._sendAlert(_alertHandshakeFailure);
                return { _0 : false, _1 : stdgo.errors.Errors.new_("tls: incorrect renegotiation extension contents") };
            };
        };
        {
            var _err:stdgo.Error = _checkALPN(_hs.value._hello.value._alpnProtocols, _hs.value._serverHello.value._alpnProtocol);
            if (_err != null) {
                _c.value._sendAlert(_alertUnsupportedExtension);
                return { _0 : false, _1 : _err };
            };
        };
        _c.value._clientProtocol = _hs.value._serverHello.value._alpnProtocol;
        _c.value._scts = _hs.value._serverHello.value._scts;
        if (!_hs.value._serverResumedSession()) {
            return { _0 : false, _1 : ((null : stdgo.Error)) };
        };
        if (_hs.value._session.value._vers != _c.value._vers) {
            _c.value._sendAlert(_alertHandshakeFailure);
            return { _0 : false, _1 : stdgo.errors.Errors.new_("tls: server resumed a session with a different version") };
        };
        if (_hs.value._session.value._cipherSuite != _hs.value._suite.value._id) {
            _c.value._sendAlert(_alertHandshakeFailure);
            return { _0 : false, _1 : stdgo.errors.Errors.new_("tls: server resumed a session with a different cipher suite") };
        };
        _hs.value._masterSecret = _hs.value._session.value._masterSecret;
        _c.value._peerCertificates = _hs.value._session.value._serverCertificates;
        _c.value._verifiedChains = _hs.value._session.value._verifiedChains;
        _c.value._ocspResponse = _hs.value._session.value._ocspResponse;
        if (_c.value._scts.length == ((0 : GoInt)) && _hs.value._session.value._scts.length != ((0 : GoInt))) {
            _c.value._scts = _hs.value._session.value._scts;
        };
        return { _0 : true, _1 : ((null : stdgo.Error)) };
    }
    public function _serverResumedSession():Bool {
        var _hs = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        return _hs.value._session != null && !_hs.value._session.isNil() && _hs.value._hello.value._sessionId != null && !_hs.value._hello.value._sessionId.isNil() && stdgo.bytes.Bytes.equal(_hs.value._serverHello.value._sessionId, _hs.value._hello.value._sessionId);
    }
    public function _establishKeys():Error {
        var _hs = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var _c:Pointer<Conn> = _hs.value._c;
        var __tmp__ = _keysFromMasterSecret(_c.value._vers, _hs.value._suite, _hs.value._masterSecret, _hs.value._hello.value._random, _hs.value._serverHello.value._random, _hs.value._suite.value._macLen, _hs.value._suite.value._keyLen, _hs.value._suite.value._ivLen), _clientMAC:Slice<GoUInt8> = __tmp__._0, _serverMAC:Slice<GoUInt8> = __tmp__._1, _clientKey:Slice<GoUInt8> = __tmp__._2, _serverKey:Slice<GoUInt8> = __tmp__._3, _clientIV:Slice<GoUInt8> = __tmp__._4, _serverIV:Slice<GoUInt8> = __tmp__._5;
        var _clientCipher:AnyInterface = ((null : AnyInterface)), _serverCipher:AnyInterface = ((null : AnyInterface));
        var _clientHash:stdgo.hash.Hash.Hash = ((null : stdgo.hash.Hash.Hash)), _serverHash:stdgo.hash.Hash.Hash = ((null : stdgo.hash.Hash.Hash));
        if (_hs.value._suite.value._cipher != null) {
            _clientCipher = Go.toInterface(_hs.value._suite.value._cipher(_clientKey, _clientIV, false));
            _clientHash = _hs.value._suite.value._mac(_clientMAC);
            _serverCipher = Go.toInterface(_hs.value._suite.value._cipher(_serverKey, _serverIV, true));
            _serverHash = _hs.value._suite.value._mac(_serverMAC);
        } else {
            _clientCipher = Go.toInterface(_hs.value._suite.value._aead(_clientKey, _clientIV));
            _serverCipher = Go.toInterface(_hs.value._suite.value._aead(_serverKey, _serverIV));
        };
        _c.value._in._prepareCipherSpec(_c.value._vers, Go.toInterface(_serverCipher), _serverHash);
        _c.value._out._prepareCipherSpec(_c.value._vers, Go.toInterface(_clientCipher), _clientHash);
        return ((null : stdgo.Error));
    }
    public function _doFullHandshake():Error {
        var _hs = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var _c:Pointer<Conn> = _hs.value._c;
        var __tmp__ = _c.value._readHandshake(), _msg:AnyInterface = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return _err;
        };
        var __tmp__ = try {
            { value : ((_msg.value : Pointer<T_certificateMsg>)), ok : true };
        } catch(_) {
            { value : new Pointer<T_certificateMsg>().nil(), ok : false };
        }, _certMsg = __tmp__.value, _ok = __tmp__.ok;
        if (!_ok || _certMsg.value._certificates.length == ((0 : GoInt))) {
            _c.value._sendAlert(_alertUnexpectedMessage);
            return _unexpectedMessageError(Go.toInterface(_certMsg), Go.toInterface(_msg));
        };
        _hs.value._finishedHash.write(_certMsg.value._marshal());
        {
            var __tmp__ = _c.value._readHandshake();
            _msg = Go.toInterface(__tmp__._0);
            _err = __tmp__._1;
        };
        if (_err != null) {
            return _err;
        };
        var __tmp__ = try {
            { value : ((_msg.value : Pointer<T_certificateStatusMsg>)), ok : true };
        } catch(_) {
            { value : new Pointer<T_certificateStatusMsg>().nil(), ok : false };
        }, _cs = __tmp__.value, _ok = __tmp__.ok;
        if (_ok) {
            if (!_hs.value._serverHello.value._ocspStapling) {
                _c.value._sendAlert(_alertUnexpectedMessage);
                return stdgo.errors.Errors.new_("tls: received unexpected CertificateStatus message");
            };
            _hs.value._finishedHash.write(_cs.value._marshal());
            _c.value._ocspResponse = _cs.value._response;
            {
                var __tmp__ = _c.value._readHandshake();
                _msg = Go.toInterface(__tmp__._0);
                _err = __tmp__._1;
            };
            if (_err != null) {
                return _err;
            };
        };
        if (_c.value._handshakes == ((0 : GoInt))) {
            {
                var _err:stdgo.Error = _c.value._verifyServerCertificate(_certMsg.value._certificates);
                if (_err != null) {
                    return _err;
                };
            };
        } else {
            if (!stdgo.bytes.Bytes.equal(_c.value._peerCertificates[((0 : GoInt))].value.raw, _certMsg.value._certificates[((0 : GoInt))])) {
                _c.value._sendAlert(_alertBadCertificate);
                return stdgo.errors.Errors.new_("tls: server\'s identity changed during renegotiation");
            };
        };
        var _keyAgreement:T_keyAgreement = _hs.value._suite.value._ka(_c.value._vers);
        var __tmp__ = try {
            { value : ((_msg.value : Pointer<T_serverKeyExchangeMsg>)), ok : true };
        } catch(_) {
            { value : new Pointer<T_serverKeyExchangeMsg>().nil(), ok : false };
        }, _skx = __tmp__.value, _ok = __tmp__.ok;
        if (_ok) {
            _hs.value._finishedHash.write(_skx.value._marshal());
            _err = _keyAgreement._processServerKeyExchange(_c.value._config, _hs.value._hello, _hs.value._serverHello, _c.value._peerCertificates[((0 : GoInt))], _skx);
            if (_err != null) {
                _c.value._sendAlert(_alertUnexpectedMessage);
                return _err;
            };
            {
                var __tmp__ = _c.value._readHandshake();
                _msg = Go.toInterface(__tmp__._0);
                _err = __tmp__._1;
            };
            if (_err != null) {
                return _err;
            };
        };
        var _chainToSend:Pointer<Certificate> = new Pointer<Certificate>().nil();
        var _certRequested:Bool = false;
        var __tmp__ = try {
            { value : ((_msg.value : Pointer<T_certificateRequestMsg>)), ok : true };
        } catch(_) {
            { value : new Pointer<T_certificateRequestMsg>().nil(), ok : false };
        }, _certReq = __tmp__.value, _ok = __tmp__.ok;
        if (_ok) {
            _certRequested = true;
            _hs.value._finishedHash.write(_certReq.value._marshal());
            var _cri:Pointer<CertificateRequestInfo> = _certificateRequestInfoFromMsg(_hs.value._ctx, _c.value._vers, _certReq);
            {
                {
                    var __tmp__ = _c.value._getClientCertificate(_cri);
                    _chainToSend = __tmp__._0;
                    _err = __tmp__._1;
                };
                if (_err != null) {
                    _c.value._sendAlert(_alertInternalError);
                    return _err;
                };
            };
            {
                var __tmp__ = _c.value._readHandshake();
                _msg = Go.toInterface(__tmp__._0);
                _err = __tmp__._1;
            };
            if (_err != null) {
                return _err;
            };
        };
        var __tmp__ = try {
            { value : ((_msg.value : Pointer<T_serverHelloDoneMsg>)), ok : true };
        } catch(_) {
            { value : new Pointer<T_serverHelloDoneMsg>().nil(), ok : false };
        }, _shd = __tmp__.value, _ok = __tmp__.ok;
        if (!_ok) {
            _c.value._sendAlert(_alertUnexpectedMessage);
            return _unexpectedMessageError(Go.toInterface(_shd), Go.toInterface(_msg));
        };
        _hs.value._finishedHash.write(_shd.value._marshal());
        if (_certRequested) {
            _certMsg = Go.pointer(new T_certificateMsg());
            _certMsg.value._certificates = _chainToSend.value.certificate;
            _hs.value._finishedHash.write(_certMsg.value._marshal());
            {
                var __tmp__ = _c.value._writeRecord(_recordTypeHandshake, _certMsg.value._marshal()), _:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    return _err;
                };
            };
        };
        var __tmp__ = _keyAgreement._generateClientKeyExchange(_c.value._config, _hs.value._hello, _c.value._peerCertificates[((0 : GoInt))]), _preMasterSecret:Slice<GoUInt8> = __tmp__._0, _ckx:Pointer<T_clientKeyExchangeMsg> = __tmp__._1, _err:stdgo.Error = __tmp__._2;
        if (_err != null) {
            _c.value._sendAlert(_alertInternalError);
            return _err;
        };
        if (_ckx != null && !_ckx.isNil()) {
            _hs.value._finishedHash.write(_ckx.value._marshal());
            {
                var __tmp__ = _c.value._writeRecord(_recordTypeHandshake, _ckx.value._marshal()), _:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    return _err;
                };
            };
        };
        if (_chainToSend != null && !_chainToSend.isNil() && _chainToSend.value.certificate.length > ((0 : GoInt))) {
            var _certVerify:Pointer<T_certificateVerifyMsg> = Go.pointer(new T_certificateVerifyMsg());
            var __tmp__ = try {
                { value : ((_chainToSend.value.privateKey.value : stdgo.crypto.Crypto.Signer)), ok : true };
            } catch(_) {
                { value : ((null : stdgo.crypto.Crypto.Signer)), ok : false };
            }, _key = __tmp__.value, _ok = __tmp__.ok;
            if (!_ok) {
                _c.value._sendAlert(_alertInternalError);
                return stdgo.fmt.Fmt.errorf("tls: client certificate private key of type %T does not implement crypto.Signer", Go.toInterface(_chainToSend.value.privateKey));
            };
            var _sigType:GoUInt8 = ((0 : GoUInt8));
            var _sigHash:stdgo.crypto.Crypto.Hash = new stdgo.crypto.Crypto.Hash();
            if (_c.value._vers >= versionTLS12) {
                var __tmp__ = _selectSignatureScheme(_c.value._vers, _chainToSend, _certReq.value._supportedSignatureAlgorithms), _signatureAlgorithm:SignatureScheme = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    _c.value._sendAlert(_alertIllegalParameter);
                    return _err;
                };
                {
                    var __tmp__ = _typeAndHashFromSignatureScheme(_signatureAlgorithm);
                    _sigType = __tmp__._0;
                    _sigHash = __tmp__._1;
                    _err = __tmp__._2;
                };
                if (_err != null) {
                    return _c.value._sendAlert(_alertInternalError);
                };
                _certVerify.value._hasSignatureAlgorithm = true;
                _certVerify.value._signatureAlgorithm = _signatureAlgorithm;
            } else {
                {
                    var __tmp__ = _legacyTypeAndHashFromPublicKey(Go.toInterface(_key.public_()));
                    _sigType = __tmp__._0;
                    _sigHash = __tmp__._1;
                    _err = __tmp__._2;
                };
                if (_err != null) {
                    _c.value._sendAlert(_alertIllegalParameter);
                    return _err;
                };
            };
            var _signed:Slice<GoUInt8> = _hs.value._finishedHash._hashForClientCertificate(_sigType, _sigHash, _hs.value._masterSecret);
            var _signOpts:stdgo.crypto.Crypto.SignerOpts = ((_sigHash : stdgo.crypto.Crypto.SignerOpts));
            if (_sigType == _signatureRSAPSS) {
                _signOpts = Go.pointer((({ saltLength : stdgo.crypto.rsa.Rsa.psssaltLengthEqualsHash, hash : _sigHash } : stdgo.crypto.rsa.Rsa.PSSOptions))).value;
            };
            {
                var __tmp__ = _key.sign(_c.value._config.value._rand(), _signed, _signOpts);
                _certVerify.value._signature = __tmp__._0;
                _err = __tmp__._1;
            };
            if (_err != null) {
                _c.value._sendAlert(_alertInternalError);
                return _err;
            };
            _hs.value._finishedHash.write(_certVerify.value._marshal());
            {
                var __tmp__ = _c.value._writeRecord(_recordTypeHandshake, _certVerify.value._marshal()), _:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    return _err;
                };
            };
        };
        _hs.value._masterSecret = _masterFromPreMasterSecret(_c.value._vers, _hs.value._suite, _preMasterSecret, _hs.value._hello.value._random, _hs.value._serverHello.value._random);
        {
            var _err:stdgo.Error = _c.value._config.value._writeKeyLog(_keyLogLabelTLS12, _hs.value._hello.value._random, _hs.value._masterSecret);
            if (_err != null) {
                _c.value._sendAlert(_alertInternalError);
                return stdgo.errors.Errors.new_((("tls: failed to write to key log: " : GoString)) + _err.error());
            };
        };
        _hs.value._finishedHash._discardHandshakeBuffer();
        return ((null : stdgo.Error));
    }
    public function _pickCipherSuite():Error {
        var _hs = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        {
            _hs.value._suite = _mutualCipherSuite(_hs.value._hello.value._cipherSuites, _hs.value._serverHello.value._cipherSuite);
            if (_hs.value._suite == null || _hs.value._suite.isNil()) {
                _hs.value._c.value._sendAlert(_alertHandshakeFailure);
                return stdgo.errors.Errors.new_("tls: server chose an unconfigured cipher suite");
            };
        };
        _hs.value._c.value._cipherSuite = _hs.value._suite.value._id;
        return ((null : stdgo.Error));
    }
    public function _handshake():Error {
        var _hs = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var _c:Pointer<Conn> = _hs.value._c;
        var __tmp__ = _hs.value._processServerHello(), _isResume:Bool = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return _err;
        };
        _hs.value._finishedHash = _newFinishedHash(_c.value._vers, _hs.value._suite).__copy__();
        if (_isResume || (_c.value._config.value.certificates.length == ((0 : GoInt)) && _c.value._config.value.getClientCertificate == null)) {
            _hs.value._finishedHash._discardHandshakeBuffer();
        };
        _hs.value._finishedHash.write(_hs.value._hello.value._marshal());
        _hs.value._finishedHash.write(_hs.value._serverHello.value._marshal());
        _c.value._buffering = true;
        _c.value._didResume = _isResume;
        if (_isResume) {
            {
                var _err:stdgo.Error = _hs.value._establishKeys();
                if (_err != null) {
                    return _err;
                };
            };
            {
                var _err:stdgo.Error = _hs.value._readSessionTicket();
                if (_err != null) {
                    return _err;
                };
            };
            {
                var _err:stdgo.Error = _hs.value._readFinished(_c.value._serverFinished.__slice__(0));
                if (_err != null) {
                    return _err;
                };
            };
            _c.value._clientFinishedIsFirst = false;
            if (_c.value._config.value.verifyConnection != null) {
                {
                    var _err:stdgo.Error = _c.value._config.value.verifyConnection(_c.value._connectionStateLocked().__copy__());
                    if (_err != null) {
                        _c.value._sendAlert(_alertBadCertificate);
                        return _err;
                    };
                };
            };
            {
                var _err:stdgo.Error = _hs.value._sendFinished(_c.value._clientFinished.__slice__(0));
                if (_err != null) {
                    return _err;
                };
            };
            {
                var __tmp__ = _c.value._flush(), _:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    return _err;
                };
            };
        } else {
            {
                var _err:stdgo.Error = _hs.value._doFullHandshake();
                if (_err != null) {
                    return _err;
                };
            };
            {
                var _err:stdgo.Error = _hs.value._establishKeys();
                if (_err != null) {
                    return _err;
                };
            };
            {
                var _err:stdgo.Error = _hs.value._sendFinished(_c.value._clientFinished.__slice__(0));
                if (_err != null) {
                    return _err;
                };
            };
            {
                var __tmp__ = _c.value._flush(), _:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    return _err;
                };
            };
            _c.value._clientFinishedIsFirst = true;
            {
                var _err:stdgo.Error = _hs.value._readSessionTicket();
                if (_err != null) {
                    return _err;
                };
            };
            {
                var _err:stdgo.Error = _hs.value._readFinished(_c.value._serverFinished.__slice__(0));
                if (_err != null) {
                    return _err;
                };
            };
        };
        _c.value._ekm = _ekmFromMasterSecret(_c.value._vers, _hs.value._suite, _hs.value._masterSecret, _hs.value._hello.value._random, _hs.value._serverHello.value._random);
        stdgo.sync.atomic.Atomic.storeUint32(Go.pointer(_c.value._handshakeStatus), ((1 : GoUInt32)));
        return ((null : stdgo.Error));
    }
    public var _c : Pointer<Conn> = new Pointer<Conn>().nil();
    public var _ctx : stdgo.context.Context.Context = ((null : stdgo.context.Context.Context));
    public var _serverHello : Pointer<T_serverHelloMsg> = new Pointer<T_serverHelloMsg>().nil();
    public var _hello : Pointer<T_clientHelloMsg> = new Pointer<T_clientHelloMsg>().nil();
    public var _suite : Pointer<T_cipherSuite> = new Pointer<T_cipherSuite>().nil();
    public var _finishedHash : T_finishedHash = new T_finishedHash();
    public var _masterSecret : Slice<GoUInt8> = new Slice<GoUInt8>().nil();
    public var _session : Pointer<ClientSessionState> = new Pointer<ClientSessionState>().nil();
    public function new(?_c:Pointer<Conn>, ?_ctx:stdgo.context.Context.Context, ?_serverHello:Pointer<T_serverHelloMsg>, ?_hello:Pointer<T_clientHelloMsg>, ?_suite:Pointer<T_cipherSuite>, ?_finishedHash:T_finishedHash, ?_masterSecret:Slice<GoUInt8>, ?_session:Pointer<ClientSessionState>) stdgo.internal.Macro.initLocals();
    public function toString() {
        return '{' + Go.string(_c) + " " + Go.string(_ctx) + " " + Go.string(_serverHello) + " " + Go.string(_hello) + " " + Go.string(_suite) + " " + Go.string(_finishedHash) + " " + Go.string(_masterSecret) + " " + Go.string(_session) + "}";
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_clientHandshakeState(_c, _ctx, _serverHello, _hello, _suite, _finishedHash, _masterSecret, _session);
    }
    public function __set__(__tmp__) {
        this._c = __tmp__._c;
        this._ctx = __tmp__._ctx;
        this._serverHello = __tmp__._serverHello;
        this._hello = __tmp__._hello;
        this._suite = __tmp__._suite;
        this._finishedHash = __tmp__._finishedHash;
        this._masterSecret = __tmp__._masterSecret;
        this._session = __tmp__._session;
        return this;
    }
}
@:structInit class T_clientHandshakeStateTLS13 {
    public function _sendClientFinished():Error {
        var _hs = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var _c:Pointer<Conn> = _hs.value._c;
        var _finished:Pointer<T_finishedMsg> = Go.pointer((({ _verifyData : _hs.value._suite.value._finishedHash(_c.value._out._trafficSecret, _hs.value._transcript), _raw : new Slice<GoUInt8>().nil() } : T_finishedMsg)));
        _hs.value._transcript.write(_finished.value._marshal());
        {
            var __tmp__ = _c.value._writeRecord(_recordTypeHandshake, _finished.value._marshal()), _:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return _err;
            };
        };
        _c.value._out._setTrafficSecret(_hs.value._suite, _hs.value._trafficSecret);
        if (!_c.value._config.value.sessionTicketsDisabled && _c.value._config.value.clientSessionCache != null) {
            _c.value._resumptionSecret = _hs.value._suite.value._deriveSecret(_hs.value._masterSecret, _resumptionLabel, _hs.value._transcript);
        };
        return ((null : stdgo.Error));
    }
    public function _sendClientCertificate():Error {
        var _hs = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var _c:Pointer<Conn> = _hs.value._c;
        if (_hs.value._certReq == null || _hs.value._certReq.isNil()) {
            return ((null : stdgo.Error));
        };
        var __tmp__ = _c.value._getClientCertificate(Go.pointer((({ acceptableCAs : _hs.value._certReq.value._certificateAuthorities, signatureSchemes : _hs.value._certReq.value._supportedSignatureAlgorithms, version : _c.value._vers, _ctx : _hs.value._ctx } : CertificateRequestInfo)))), _cert:Pointer<Certificate> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return _err;
        };
        var _certMsg:Pointer<T_certificateMsgTLS13> = Go.pointer(new T_certificateMsgTLS13());
        _certMsg.value._certificate = _cert.value.__copy__();
        _certMsg.value._scts = _hs.value._certReq.value._scts && _cert.value.signedCertificateTimestamps.length > ((0 : GoInt));
        _certMsg.value._ocspStapling = _hs.value._certReq.value._ocspStapling && _cert.value.ocspstaple.length > ((0 : GoInt));
        _hs.value._transcript.write(_certMsg.value._marshal());
        {
            var __tmp__ = _c.value._writeRecord(_recordTypeHandshake, _certMsg.value._marshal()), _:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return _err;
            };
        };
        if (_cert.value.certificate.length == ((0 : GoInt))) {
            return ((null : stdgo.Error));
        };
        var _certVerifyMsg:Pointer<T_certificateVerifyMsg> = Go.pointer(new T_certificateVerifyMsg());
        _certVerifyMsg.value._hasSignatureAlgorithm = true;
        {
            var __tmp__ = _selectSignatureScheme(_c.value._vers, _cert, _hs.value._certReq.value._supportedSignatureAlgorithms);
            _certVerifyMsg.value._signatureAlgorithm = __tmp__._0;
            _err = __tmp__._1;
        };
        if (_err != null) {
            _c.value._sendAlert(_alertHandshakeFailure);
            return _err;
        };
        var __tmp__ = _typeAndHashFromSignatureScheme(_certVerifyMsg.value._signatureAlgorithm), _sigType:GoUInt8 = __tmp__._0, _sigHash:stdgo.crypto.Crypto.Hash = __tmp__._1, _err:stdgo.Error = __tmp__._2;
        if (_err != null) {
            return _c.value._sendAlert(_alertInternalError);
        };
        var _signed:Slice<GoUInt8> = _signedMessage(_sigHash, _clientSignatureContext, _hs.value._transcript);
        var _signOpts:stdgo.crypto.Crypto.SignerOpts = ((_sigHash : stdgo.crypto.Crypto.SignerOpts));
        if (_sigType == _signatureRSAPSS) {
            _signOpts = Go.pointer((({ saltLength : stdgo.crypto.rsa.Rsa.psssaltLengthEqualsHash, hash : _sigHash } : stdgo.crypto.rsa.Rsa.PSSOptions))).value;
        };
        var __tmp__ = ((_cert.value.privateKey.value : stdgo.crypto.Crypto.Signer)).sign(_c.value._config.value._rand(), _signed, _signOpts), _sig:Slice<GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _c.value._sendAlert(_alertInternalError);
            return stdgo.errors.Errors.new_((("tls: failed to sign handshake: " : GoString)) + _err.error());
        };
        _certVerifyMsg.value._signature = _sig;
        _hs.value._transcript.write(_certVerifyMsg.value._marshal());
        {
            var __tmp__ = _c.value._writeRecord(_recordTypeHandshake, _certVerifyMsg.value._marshal()), _:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return _err;
            };
        };
        return ((null : stdgo.Error));
    }
    public function _readServerFinished():Error {
        var _hs = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var _c:Pointer<Conn> = _hs.value._c;
        var __tmp__ = _c.value._readHandshake(), _msg:AnyInterface = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return _err;
        };
        var __tmp__ = try {
            { value : ((_msg.value : Pointer<T_finishedMsg>)), ok : true };
        } catch(_) {
            { value : new Pointer<T_finishedMsg>().nil(), ok : false };
        }, _finished = __tmp__.value, _ok = __tmp__.ok;
        if (!_ok) {
            _c.value._sendAlert(_alertUnexpectedMessage);
            return _unexpectedMessageError(Go.toInterface(_finished), Go.toInterface(_msg));
        };
        var _expectedMAC:Slice<GoUInt8> = _hs.value._suite.value._finishedHash(_c.value._in._trafficSecret, _hs.value._transcript);
        if (!stdgo.crypto.hmac.Hmac.equal(_expectedMAC, _finished.value._verifyData)) {
            _c.value._sendAlert(_alertDecryptError);
            return stdgo.errors.Errors.new_("tls: invalid server finished hash");
        };
        _hs.value._transcript.write(_finished.value._marshal());
        _hs.value._trafficSecret = _hs.value._suite.value._deriveSecret(_hs.value._masterSecret, _clientApplicationTrafficLabel, _hs.value._transcript);
        var _serverSecret:Slice<GoUInt8> = _hs.value._suite.value._deriveSecret(_hs.value._masterSecret, _serverApplicationTrafficLabel, _hs.value._transcript);
        _c.value._in._setTrafficSecret(_hs.value._suite, _serverSecret);
        _err = _c.value._config.value._writeKeyLog(_keyLogLabelClientTraffic, _hs.value._hello.value._random, _hs.value._trafficSecret);
        if (_err != null) {
            _c.value._sendAlert(_alertInternalError);
            return _err;
        };
        _err = _c.value._config.value._writeKeyLog(_keyLogLabelServerTraffic, _hs.value._hello.value._random, _serverSecret);
        if (_err != null) {
            _c.value._sendAlert(_alertInternalError);
            return _err;
        };
        _c.value._ekm = _hs.value._suite.value._exportKeyingMaterial(_hs.value._masterSecret, _hs.value._transcript);
        return ((null : stdgo.Error));
    }
    public function _readServerCertificate():Error {
        var _hs = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var _c:Pointer<Conn> = _hs.value._c;
        if (_hs.value._usingPSK) {
            if (_c.value._config.value.verifyConnection != null) {
                {
                    var _err:stdgo.Error = _c.value._config.value.verifyConnection(_c.value._connectionStateLocked().__copy__());
                    if (_err != null) {
                        _c.value._sendAlert(_alertBadCertificate);
                        return _err;
                    };
                };
            };
            return ((null : stdgo.Error));
        };
        var __tmp__ = _c.value._readHandshake(), _msg:AnyInterface = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return _err;
        };
        var __tmp__ = try {
            { value : ((_msg.value : Pointer<T_certificateRequestMsgTLS13>)), ok : true };
        } catch(_) {
            { value : new Pointer<T_certificateRequestMsgTLS13>().nil(), ok : false };
        }, _certReq = __tmp__.value, _ok = __tmp__.ok;
        if (_ok) {
            _hs.value._transcript.write(_certReq.value._marshal());
            _hs.value._certReq = _certReq;
            {
                var __tmp__ = _c.value._readHandshake();
                _msg = Go.toInterface(__tmp__._0);
                _err = __tmp__._1;
            };
            if (_err != null) {
                return _err;
            };
        };
        var __tmp__ = try {
            { value : ((_msg.value : Pointer<T_certificateMsgTLS13>)), ok : true };
        } catch(_) {
            { value : new Pointer<T_certificateMsgTLS13>().nil(), ok : false };
        }, _certMsg = __tmp__.value, _ok = __tmp__.ok;
        if (!_ok) {
            _c.value._sendAlert(_alertUnexpectedMessage);
            return _unexpectedMessageError(Go.toInterface(_certMsg), Go.toInterface(_msg));
        };
        if (_certMsg.value._certificate.certificate.length == ((0 : GoInt))) {
            _c.value._sendAlert(_alertDecodeError);
            return stdgo.errors.Errors.new_("tls: received empty certificates message");
        };
        _hs.value._transcript.write(_certMsg.value._marshal());
        _c.value._scts = _certMsg.value._certificate.signedCertificateTimestamps;
        _c.value._ocspResponse = _certMsg.value._certificate.ocspstaple;
        {
            var _err:stdgo.Error = _c.value._verifyServerCertificate(_certMsg.value._certificate.certificate);
            if (_err != null) {
                return _err;
            };
        };
        {
            var __tmp__ = _c.value._readHandshake();
            _msg = Go.toInterface(__tmp__._0);
            _err = __tmp__._1;
        };
        if (_err != null) {
            return _err;
        };
        var __tmp__ = try {
            { value : ((_msg.value : Pointer<T_certificateVerifyMsg>)), ok : true };
        } catch(_) {
            { value : new Pointer<T_certificateVerifyMsg>().nil(), ok : false };
        }, _certVerify = __tmp__.value, _ok = __tmp__.ok;
        if (!_ok) {
            _c.value._sendAlert(_alertUnexpectedMessage);
            return _unexpectedMessageError(Go.toInterface(_certVerify), Go.toInterface(_msg));
        };
        if (!_isSupportedSignatureAlgorithm(_certVerify.value._signatureAlgorithm, _supportedSignatureAlgorithms)) {
            _c.value._sendAlert(_alertIllegalParameter);
            return stdgo.errors.Errors.new_("tls: certificate used with invalid signature algorithm");
        };
        var __tmp__ = _typeAndHashFromSignatureScheme(_certVerify.value._signatureAlgorithm), _sigType:GoUInt8 = __tmp__._0, _sigHash:stdgo.crypto.Crypto.Hash = __tmp__._1, _err:stdgo.Error = __tmp__._2;
        if (_err != null) {
            return _c.value._sendAlert(_alertInternalError);
        };
        if (_sigType == _signaturePKCS1v15 || _sigHash.__t__ == stdgo.crypto.Crypto.sha1.__t__) {
            _c.value._sendAlert(_alertIllegalParameter);
            return stdgo.errors.Errors.new_("tls: certificate used with invalid signature algorithm");
        };
        var _signed:Slice<GoUInt8> = _signedMessage(_sigHash, _serverSignatureContext, _hs.value._transcript);
        {
            var _err:stdgo.Error = _verifyHandshakeSignature(_sigType, Go.toInterface(_c.value._peerCertificates[((0 : GoInt))].value.publicKey), _sigHash, _signed, _certVerify.value._signature);
            if (_err != null) {
                _c.value._sendAlert(_alertDecryptError);
                return stdgo.errors.Errors.new_((("tls: invalid signature by the server certificate: " : GoString)) + _err.error());
            };
        };
        _hs.value._transcript.write(_certVerify.value._marshal());
        return ((null : stdgo.Error));
    }
    public function _readServerParameters():Error {
        var _hs = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var _c:Pointer<Conn> = _hs.value._c;
        var __tmp__ = _c.value._readHandshake(), _msg:AnyInterface = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return _err;
        };
        var __tmp__ = try {
            { value : ((_msg.value : Pointer<T_encryptedExtensionsMsg>)), ok : true };
        } catch(_) {
            { value : new Pointer<T_encryptedExtensionsMsg>().nil(), ok : false };
        }, _encryptedExtensions = __tmp__.value, _ok = __tmp__.ok;
        if (!_ok) {
            _c.value._sendAlert(_alertUnexpectedMessage);
            return _unexpectedMessageError(Go.toInterface(_encryptedExtensions), Go.toInterface(_msg));
        };
        _hs.value._transcript.write(_encryptedExtensions.value._marshal());
        {
            var _err:stdgo.Error = _checkALPN(_hs.value._hello.value._alpnProtocols, _encryptedExtensions.value._alpnProtocol);
            if (_err != null) {
                _c.value._sendAlert(_alertUnsupportedExtension);
                return _err;
            };
        };
        _c.value._clientProtocol = _encryptedExtensions.value._alpnProtocol;
        return ((null : stdgo.Error));
    }
    public function _establishHandshakeKeys():Error {
        var _hs = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var _c:Pointer<Conn> = _hs.value._c;
        var _sharedKey:Slice<GoUInt8> = _hs.value._ecdheParams.sharedKey(_hs.value._serverHello.value._serverShare._data);
        if (_sharedKey == null || _sharedKey.isNil()) {
            _c.value._sendAlert(_alertIllegalParameter);
            return stdgo.errors.Errors.new_("tls: invalid server key share");
        };
        var _earlySecret:Slice<GoUInt8> = _hs.value._earlySecret;
        if (!_hs.value._usingPSK) {
            _earlySecret = _hs.value._suite.value._extract(new Slice<GoUInt8>().nil(), new Slice<GoUInt8>().nil());
        };
        var _handshakeSecret:Slice<GoUInt8> = _hs.value._suite.value._extract(_sharedKey, _hs.value._suite.value._deriveSecret(_earlySecret, "derived", ((null : stdgo.hash.Hash.Hash))));
        var _clientSecret:Slice<GoUInt8> = _hs.value._suite.value._deriveSecret(_handshakeSecret, _clientHandshakeTrafficLabel, _hs.value._transcript);
        _c.value._out._setTrafficSecret(_hs.value._suite, _clientSecret);
        var _serverSecret:Slice<GoUInt8> = _hs.value._suite.value._deriveSecret(_handshakeSecret, _serverHandshakeTrafficLabel, _hs.value._transcript);
        _c.value._in._setTrafficSecret(_hs.value._suite, _serverSecret);
        var _err:stdgo.Error = _c.value._config.value._writeKeyLog(_keyLogLabelClientHandshake, _hs.value._hello.value._random, _clientSecret);
        if (_err != null) {
            _c.value._sendAlert(_alertInternalError);
            return _err;
        };
        _err = _c.value._config.value._writeKeyLog(_keyLogLabelServerHandshake, _hs.value._hello.value._random, _serverSecret);
        if (_err != null) {
            _c.value._sendAlert(_alertInternalError);
            return _err;
        };
        _hs.value._masterSecret = _hs.value._suite.value._extract(new Slice<GoUInt8>().nil(), _hs.value._suite.value._deriveSecret(_handshakeSecret, "derived", ((null : stdgo.hash.Hash.Hash))));
        return ((null : stdgo.Error));
    }
    public function _processServerHello():Error {
        var _hs = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var _c:Pointer<Conn> = _hs.value._c;
        if (stdgo.bytes.Bytes.equal(_hs.value._serverHello.value._random, _helloRetryRequestRandom)) {
            _c.value._sendAlert(_alertUnexpectedMessage);
            return stdgo.errors.Errors.new_("tls: server sent two HelloRetryRequest messages");
        };
        if (_hs.value._serverHello.value._cookie.length != ((0 : GoInt))) {
            _c.value._sendAlert(_alertUnsupportedExtension);
            return stdgo.errors.Errors.new_("tls: server sent a cookie in a normal ServerHello");
        };
        if (_hs.value._serverHello.value._selectedGroup.__t__ != ((0 : GoUInt16))) {
            _c.value._sendAlert(_alertDecodeError);
            return stdgo.errors.Errors.new_("tls: malformed key_share extension");
        };
        if (_hs.value._serverHello.value._serverShare._group.__t__ == ((0 : GoUInt16))) {
            _c.value._sendAlert(_alertIllegalParameter);
            return stdgo.errors.Errors.new_("tls: server did not send a key share");
        };
        if (_hs.value._serverHello.value._serverShare._group.__t__ != _hs.value._ecdheParams.curveID().__t__) {
            _c.value._sendAlert(_alertIllegalParameter);
            return stdgo.errors.Errors.new_("tls: server selected unsupported group");
        };
        if (!_hs.value._serverHello.value._selectedIdentityPresent) {
            return ((null : stdgo.Error));
        };
        if (((_hs.value._serverHello.value._selectedIdentity : GoInt)) >= _hs.value._hello.value._pskIdentities.length) {
            _c.value._sendAlert(_alertIllegalParameter);
            return stdgo.errors.Errors.new_("tls: server selected an invalid PSK");
        };
        if (_hs.value._hello.value._pskIdentities.length != ((1 : GoInt)) || _hs.value._session == null || _hs.value._session.isNil()) {
            return _c.value._sendAlert(_alertInternalError);
        };
        var _pskSuite:Pointer<T_cipherSuiteTLS13> = _cipherSuiteTLS13ByID(_hs.value._session.value._cipherSuite);
        if (_pskSuite == null || _pskSuite.isNil()) {
            return _c.value._sendAlert(_alertInternalError);
        };
        if (_pskSuite.value._hash.__t__ != _hs.value._suite.value._hash.__t__) {
            _c.value._sendAlert(_alertIllegalParameter);
            return stdgo.errors.Errors.new_("tls: server selected an invalid PSK and cipher suite pair");
        };
        _hs.value._usingPSK = true;
        _c.value._didResume = true;
        _c.value._peerCertificates = _hs.value._session.value._serverCertificates;
        _c.value._verifiedChains = _hs.value._session.value._verifiedChains;
        _c.value._ocspResponse = _hs.value._session.value._ocspResponse;
        _c.value._scts = _hs.value._session.value._scts;
        return ((null : stdgo.Error));
    }
    public function _processHelloRetryRequest():Error {
        var _hs = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var _c:Pointer<Conn> = _hs.value._c;
        var _chHash:Slice<GoUInt8> = _hs.value._transcript.sum(new Slice<GoUInt8>().nil());
        _hs.value._transcript.reset();
        _hs.value._transcript.write(new Slice<GoUInt8>(_typeMessageHash, ((0 : GoUInt8)), ((0 : GoUInt8)), ((_chHash.length : GoUInt8))));
        _hs.value._transcript.write(_chHash);
        _hs.value._transcript.write(_hs.value._serverHello.value._marshal());
        if (_hs.value._serverHello.value._selectedGroup.__t__ == ((0 : GoUInt16)) && _hs.value._serverHello.value._cookie == null || _hs.value._serverHello.value._cookie.isNil()) {
            _c.value._sendAlert(_alertIllegalParameter);
            return stdgo.errors.Errors.new_("tls: server sent an unnecessary HelloRetryRequest message");
        };
        if (_hs.value._serverHello.value._cookie != null && !_hs.value._serverHello.value._cookie.isNil()) {
            _hs.value._hello.value._cookie = _hs.value._serverHello.value._cookie;
        };
        if (_hs.value._serverHello.value._serverShare._group.__t__ != ((0 : GoUInt16))) {
            _c.value._sendAlert(_alertDecodeError);
            return stdgo.errors.Errors.new_("tls: received malformed key_share extension");
        };
        {
            var _curveID:CurveID = _hs.value._serverHello.value._selectedGroup;
            if (_curveID.__t__ != ((0 : GoUInt16))) {
                var _curveOK:Bool = false;
                for (_id in _hs.value._hello.value._supportedCurves) {
                    if (_id.__t__ == _curveID.__t__) {
                        _curveOK = true;
                        break;
                    };
                };
                if (!_curveOK) {
                    _c.value._sendAlert(_alertIllegalParameter);
                    return stdgo.errors.Errors.new_("tls: server selected unsupported group");
                };
                if (_hs.value._ecdheParams.curveID().__t__ == _curveID.__t__) {
                    _c.value._sendAlert(_alertIllegalParameter);
                    return stdgo.errors.Errors.new_("tls: server sent an unnecessary HelloRetryRequest key_share");
                };
                {
                    var __tmp__ = _curveForCurveID(_curveID), _:stdgo.crypto.elliptic.Elliptic.Curve = __tmp__._0, _ok:Bool = __tmp__._1;
                    if (_curveID.__t__ != x25519.__t__ && !_ok) {
                        _c.value._sendAlert(_alertInternalError);
                        return stdgo.errors.Errors.new_("tls: CurvePreferences includes unsupported curve");
                    };
                };
                var __tmp__ = _generateECDHEParameters(_c.value._config.value._rand(), _curveID), _params:T_ecdheParameters = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    _c.value._sendAlert(_alertInternalError);
                    return _err;
                };
                _hs.value._ecdheParams = _params;
                _hs.value._hello.value._keyShares = new Slice<T_keyShare>((({ _group : _curveID, _data : _params.publicKey() } : T_keyShare)).__copy__());
            };
        };
        _hs.value._hello.value._raw = new Slice<GoUInt8>().nil();
        if (_hs.value._hello.value._pskIdentities.length > ((0 : GoInt))) {
            var _pskSuite:Pointer<T_cipherSuiteTLS13> = _cipherSuiteTLS13ByID(_hs.value._session.value._cipherSuite);
            if (_pskSuite == null || _pskSuite.isNil()) {
                return _c.value._sendAlert(_alertInternalError);
            };
            if (_pskSuite.value._hash.__t__ == _hs.value._suite.value._hash.__t__) {
                var _ticketAge:GoUInt32 = new stdgo.time.Time.Duration(_c.value._config.value._time().sub(_hs.value._session.value._receivedAt.__copy__()).__t__ / stdgo.time.Time.millisecond.__t__).__t__;
                _hs.value._hello.value._pskIdentities[((0 : GoInt))]._obfuscatedTicketAge = _ticketAge + _hs.value._session.value._ageAdd;
                var _transcript:stdgo.hash.Hash.Hash = _hs.value._suite.value._hash.new_();
                _transcript.write(new Slice<GoUInt8>(_typeMessageHash, ((0 : GoUInt8)), ((0 : GoUInt8)), ((_chHash.length : GoUInt8))));
                _transcript.write(_chHash);
                _transcript.write(_hs.value._serverHello.value._marshal());
                _transcript.write(_hs.value._hello.value._marshalWithoutBinders());
                var _pskBinders:Slice<Slice<GoUInt8>> = new Slice<Slice<GoUInt8>>(_hs.value._suite.value._finishedHash(_hs.value._binderKey, _transcript));
                _hs.value._hello.value._updateBinders(_pskBinders);
            } else {
                _hs.value._hello.value._pskIdentities = new Slice<T_pskIdentity>().nil();
                _hs.value._hello.value._pskBinders = new Slice<Slice<GoUInt8>>().nil();
            };
        };
        _hs.value._transcript.write(_hs.value._hello.value._marshal());
        {
            var __tmp__ = _c.value._writeRecord(_recordTypeHandshake, _hs.value._hello.value._marshal()), _:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return _err;
            };
        };
        var __tmp__ = _c.value._readHandshake(), _msg:AnyInterface = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return _err;
        };
        var __tmp__ = try {
            { value : ((_msg.value : Pointer<T_serverHelloMsg>)), ok : true };
        } catch(_) {
            { value : new Pointer<T_serverHelloMsg>().nil(), ok : false };
        }, _serverHello = __tmp__.value, _ok = __tmp__.ok;
        if (!_ok) {
            _c.value._sendAlert(_alertUnexpectedMessage);
            return _unexpectedMessageError(Go.toInterface(_serverHello), Go.toInterface(_msg));
        };
        _hs.value._serverHello = _serverHello;
        {
            var _err:stdgo.Error = _hs.value._checkServerHelloOrHRR();
            if (_err != null) {
                return _err;
            };
        };
        return ((null : stdgo.Error));
    }
    public function _sendDummyChangeCipherSpec():Error {
        var _hs = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        if (_hs.value._sentDummyCCS) {
            return ((null : stdgo.Error));
        };
        _hs.value._sentDummyCCS = true;
        var __tmp__ = _hs.value._c.value._writeRecord(_recordTypeChangeCipherSpec, new Slice<GoUInt8>(((1 : GoUInt8)))), _:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        return _err;
    }
    public function _checkServerHelloOrHRR():Error {
        var _hs = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var _c:Pointer<Conn> = _hs.value._c;
        if (_hs.value._serverHello.value._supportedVersion == ((0 : GoUInt16))) {
            _c.value._sendAlert(_alertMissingExtension);
            return stdgo.errors.Errors.new_("tls: server selected TLS 1.3 using the legacy version field");
        };
        if (_hs.value._serverHello.value._supportedVersion != versionTLS13) {
            _c.value._sendAlert(_alertIllegalParameter);
            return stdgo.errors.Errors.new_("tls: server selected an invalid version after a HelloRetryRequest");
        };
        if (_hs.value._serverHello.value._vers != versionTLS12) {
            _c.value._sendAlert(_alertIllegalParameter);
            return stdgo.errors.Errors.new_("tls: server sent an incorrect legacy version");
        };
        if (_hs.value._serverHello.value._ocspStapling || _hs.value._serverHello.value._ticketSupported || _hs.value._serverHello.value._secureRenegotiationSupported || _hs.value._serverHello.value._secureRenegotiation.length != ((0 : GoInt)) || _hs.value._serverHello.value._alpnProtocol.length != ((0 : GoInt)) || _hs.value._serverHello.value._scts.length != ((0 : GoInt))) {
            _c.value._sendAlert(_alertUnsupportedExtension);
            return stdgo.errors.Errors.new_("tls: server sent a ServerHello extension forbidden in TLS 1.3");
        };
        if (!stdgo.bytes.Bytes.equal(_hs.value._hello.value._sessionId, _hs.value._serverHello.value._sessionId)) {
            _c.value._sendAlert(_alertIllegalParameter);
            return stdgo.errors.Errors.new_("tls: server did not echo the legacy session ID");
        };
        if (_hs.value._serverHello.value._compressionMethod != _compressionNone) {
            _c.value._sendAlert(_alertIllegalParameter);
            return stdgo.errors.Errors.new_("tls: server selected unsupported compression format");
        };
        var _selectedSuite:Pointer<T_cipherSuiteTLS13> = _mutualCipherSuiteTLS13(_hs.value._hello.value._cipherSuites, _hs.value._serverHello.value._cipherSuite);
        if (_hs.value._suite != null && !_hs.value._suite.isNil() && _selectedSuite != _hs.value._suite) {
            _c.value._sendAlert(_alertIllegalParameter);
            return stdgo.errors.Errors.new_("tls: server changed cipher suite after a HelloRetryRequest");
        };
        if (_selectedSuite == null || _selectedSuite.isNil()) {
            _c.value._sendAlert(_alertIllegalParameter);
            return stdgo.errors.Errors.new_("tls: server chose an unconfigured cipher suite");
        };
        _hs.value._suite = _selectedSuite;
        _c.value._cipherSuite = _hs.value._suite.value._id;
        return ((null : stdgo.Error));
    }
    public function _handshake():Error {
        var _hs = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var _c:Pointer<Conn> = _hs.value._c;
        if (_c.value._handshakes > ((0 : GoInt))) {
            _c.value._sendAlert(_alertProtocolVersion);
            return stdgo.errors.Errors.new_("tls: server selected TLS 1.3 in a renegotiation");
        };
        if (_hs.value._ecdheParams == null || _hs.value._hello.value._keyShares.length != ((1 : GoInt))) {
            return _c.value._sendAlert(_alertInternalError);
        };
        {
            var _err:stdgo.Error = _hs.value._checkServerHelloOrHRR();
            if (_err != null) {
                return _err;
            };
        };
        _hs.value._transcript = _hs.value._suite.value._hash.new_();
        _hs.value._transcript.write(_hs.value._hello.value._marshal());
        if (stdgo.bytes.Bytes.equal(_hs.value._serverHello.value._random, _helloRetryRequestRandom)) {
            {
                var _err:stdgo.Error = _hs.value._sendDummyChangeCipherSpec();
                if (_err != null) {
                    return _err;
                };
            };
            {
                var _err:stdgo.Error = _hs.value._processHelloRetryRequest();
                if (_err != null) {
                    return _err;
                };
            };
        };
        _hs.value._transcript.write(_hs.value._serverHello.value._marshal());
        _c.value._buffering = true;
        {
            var _err:stdgo.Error = _hs.value._processServerHello();
            if (_err != null) {
                return _err;
            };
        };
        {
            var _err:stdgo.Error = _hs.value._sendDummyChangeCipherSpec();
            if (_err != null) {
                return _err;
            };
        };
        {
            var _err:stdgo.Error = _hs.value._establishHandshakeKeys();
            if (_err != null) {
                return _err;
            };
        };
        {
            var _err:stdgo.Error = _hs.value._readServerParameters();
            if (_err != null) {
                return _err;
            };
        };
        {
            var _err:stdgo.Error = _hs.value._readServerCertificate();
            if (_err != null) {
                return _err;
            };
        };
        {
            var _err:stdgo.Error = _hs.value._readServerFinished();
            if (_err != null) {
                return _err;
            };
        };
        {
            var _err:stdgo.Error = _hs.value._sendClientCertificate();
            if (_err != null) {
                return _err;
            };
        };
        {
            var _err:stdgo.Error = _hs.value._sendClientFinished();
            if (_err != null) {
                return _err;
            };
        };
        {
            var __tmp__ = _c.value._flush(), _:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return _err;
            };
        };
        stdgo.sync.atomic.Atomic.storeUint32(Go.pointer(_c.value._handshakeStatus), ((1 : GoUInt32)));
        return ((null : stdgo.Error));
    }
    public var _c : Pointer<Conn> = new Pointer<Conn>().nil();
    public var _ctx : stdgo.context.Context.Context = ((null : stdgo.context.Context.Context));
    public var _serverHello : Pointer<T_serverHelloMsg> = new Pointer<T_serverHelloMsg>().nil();
    public var _hello : Pointer<T_clientHelloMsg> = new Pointer<T_clientHelloMsg>().nil();
    public var _ecdheParams : T_ecdheParameters = ((null : T_ecdheParameters));
    public var _session : Pointer<ClientSessionState> = new Pointer<ClientSessionState>().nil();
    public var _earlySecret : Slice<GoUInt8> = new Slice<GoUInt8>().nil();
    public var _binderKey : Slice<GoUInt8> = new Slice<GoUInt8>().nil();
    public var _certReq : Pointer<T_certificateRequestMsgTLS13> = new Pointer<T_certificateRequestMsgTLS13>().nil();
    public var _usingPSK : Bool = false;
    public var _sentDummyCCS : Bool = false;
    public var _suite : Pointer<T_cipherSuiteTLS13> = new Pointer<T_cipherSuiteTLS13>().nil();
    public var _transcript : stdgo.hash.Hash.Hash = ((null : stdgo.hash.Hash.Hash));
    public var _masterSecret : Slice<GoUInt8> = new Slice<GoUInt8>().nil();
    public var _trafficSecret : Slice<GoUInt8> = new Slice<GoUInt8>().nil();
    public function new(?_c:Pointer<Conn>, ?_ctx:stdgo.context.Context.Context, ?_serverHello:Pointer<T_serverHelloMsg>, ?_hello:Pointer<T_clientHelloMsg>, ?_ecdheParams:T_ecdheParameters, ?_session:Pointer<ClientSessionState>, ?_earlySecret:Slice<GoUInt8>, ?_binderKey:Slice<GoUInt8>, ?_certReq:Pointer<T_certificateRequestMsgTLS13>, ?_usingPSK:Bool, ?_sentDummyCCS:Bool, ?_suite:Pointer<T_cipherSuiteTLS13>, ?_transcript:stdgo.hash.Hash.Hash, ?_masterSecret:Slice<GoUInt8>, ?_trafficSecret:Slice<GoUInt8>) stdgo.internal.Macro.initLocals();
    public function toString() {
        return '{' + Go.string(_c) + " " + Go.string(_ctx) + " " + Go.string(_serverHello) + " " + Go.string(_hello) + " " + Go.string(_ecdheParams) + " " + Go.string(_session) + " " + Go.string(_earlySecret) + " " + Go.string(_binderKey) + " " + Go.string(_certReq) + " " + Go.string(_usingPSK) + " " + Go.string(_sentDummyCCS) + " " + Go.string(_suite) + " " + Go.string(_transcript) + " " + Go.string(_masterSecret) + " " + Go.string(_trafficSecret) + "}";
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_clientHandshakeStateTLS13(
_c,
_ctx,
_serverHello,
_hello,
_ecdheParams,
_session,
_earlySecret,
_binderKey,
_certReq,
_usingPSK,
_sentDummyCCS,
_suite,
_transcript,
_masterSecret,
_trafficSecret);
    }
    public function __set__(__tmp__) {
        this._c = __tmp__._c;
        this._ctx = __tmp__._ctx;
        this._serverHello = __tmp__._serverHello;
        this._hello = __tmp__._hello;
        this._ecdheParams = __tmp__._ecdheParams;
        this._session = __tmp__._session;
        this._earlySecret = __tmp__._earlySecret;
        this._binderKey = __tmp__._binderKey;
        this._certReq = __tmp__._certReq;
        this._usingPSK = __tmp__._usingPSK;
        this._sentDummyCCS = __tmp__._sentDummyCCS;
        this._suite = __tmp__._suite;
        this._transcript = __tmp__._transcript;
        this._masterSecret = __tmp__._masterSecret;
        this._trafficSecret = __tmp__._trafficSecret;
        return this;
    }
}
@:named class T_marshalingFunction {
    public function marshal(_b:Pointer<golang_org.x.crypto.cryptobyte.Cryptobyte.Builder>):Error {
        var _f = this.__copy__();
        return _f.__t__(_b);
    }
    public var __t__ : Pointer<vendor.golang_org.x.crypto.cryptobyte.Cryptobyte.Builder> -> stdgo.Error;
    public function new(?t:Pointer<vendor.golang_org.x.crypto.cryptobyte.Cryptobyte.Builder> -> stdgo.Error) {
        __t__ = t == null ? null : t;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    @:implicit
    public function toString():GoString return Go.string(__t__);
    public function __copy__() return new T_marshalingFunction(__t__);
}
@:structInit class T_clientHelloMsg {
    public function _unmarshal(_data:Slice<GoByte>):Bool {
        var _m = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        _m.value = (({ _raw : _data, _vers : 0, _random : new Slice<GoUInt8>().nil(), _sessionId : new Slice<GoUInt8>().nil(), _cipherSuites : new Slice<GoUInt16>().nil(), _compressionMethods : new Slice<GoUInt8>().nil(), _serverName : "", _ocspStapling : false, _supportedCurves : new Slice<CurveID>().nil(), _supportedPoints : new Slice<GoUInt8>().nil(), _ticketSupported : false, _sessionTicket : new Slice<GoUInt8>().nil(), _supportedSignatureAlgorithms : new Slice<SignatureScheme>().nil(), _supportedSignatureAlgorithmsCert : new Slice<SignatureScheme>().nil(), _secureRenegotiationSupported : false, _secureRenegotiation : new Slice<GoUInt8>().nil(), _alpnProtocols : new Slice<GoString>().nil(), _scts : false, _supportedVersions : new Slice<GoUInt16>().nil(), _cookie : new Slice<GoUInt8>().nil(), _keyShares : new Slice<T_keyShare>().nil(), _earlyData : false, _pskModes : new Slice<GoUInt8>().nil(), _pskIdentities : new Slice<T_pskIdentity>().nil(), _pskBinders : new Slice<Slice<GoUInt8>>().nil() } : T_clientHelloMsg)).__copy__();
        var _s:vendor.golang_org.x.crypto.cryptobyte.Cryptobyte.String_ = new golang_org.x.crypto.cryptobyte.Cryptobyte.String_(_data).__copy__();
        if (!_s.skip(((4 : GoInt))) || !_s.readUint16(Go.pointer(_m.value._vers)) || !_s.readBytes(Go.pointer(_m.value._random), ((32 : GoInt))) || !_readUint8LengthPrefixed(Go.pointer(_s), Go.pointer(_m.value._sessionId))) {
            return false;
        };
        var _cipherSuites:golang_org.x.crypto.cryptobyte.Cryptobyte.String_ = new vendor.golang_org.x.crypto.cryptobyte.Cryptobyte.String_();
        if (!_s.readUint16LengthPrefixed(Go.pointer(_cipherSuites))) {
            return false;
        };
        _m.value._cipherSuites = new Slice<GoUInt16>();
        _m.value._secureRenegotiationSupported = false;
        while (!_cipherSuites.empty()) {
            var _suite:GoUInt16 = ((0 : GoUInt16));
            if (!_cipherSuites.readUint16(Go.pointer(_suite))) {
                return false;
            };
            if (_suite == _scsvRenegotiation) {
                _m.value._secureRenegotiationSupported = true;
            };
            _m.value._cipherSuites = _m.value._cipherSuites.__append__(_suite);
        };
        if (!_readUint8LengthPrefixed(Go.pointer(_s), Go.pointer(_m.value._compressionMethods))) {
            return false;
        };
        if (_s.empty()) {
            return true;
        };
        var _extensions:golang_org.x.crypto.cryptobyte.Cryptobyte.String_ = new vendor.golang_org.x.crypto.cryptobyte.Cryptobyte.String_();
        if (!_s.readUint16LengthPrefixed(Go.pointer(_extensions)) || !_s.empty()) {
            return false;
        };
        while (!_extensions.empty()) {
            var _extension:GoUInt16 = ((0 : GoUInt16));
            var _extData:golang_org.x.crypto.cryptobyte.Cryptobyte.String_ = new vendor.golang_org.x.crypto.cryptobyte.Cryptobyte.String_();
            if (!_extensions.readUint16(Go.pointer(_extension)) || !_extensions.readUint16LengthPrefixed(Go.pointer(_extData))) {
                return false;
            };
            if (_extension == _extensionServerName) {
                var _nameList:golang_org.x.crypto.cryptobyte.Cryptobyte.String_ = new vendor.golang_org.x.crypto.cryptobyte.Cryptobyte.String_();
                if (!_extData.readUint16LengthPrefixed(Go.pointer(_nameList)) || _nameList.empty()) {
                    return false;
                };
                while (!_nameList.empty()) {
                    var _nameType:GoUInt8 = ((0 : GoUInt8));
                    var _serverName:golang_org.x.crypto.cryptobyte.Cryptobyte.String_ = new vendor.golang_org.x.crypto.cryptobyte.Cryptobyte.String_();
                    if (!_nameList.readUint8(Go.pointer(_nameType)) || !_nameList.readUint16LengthPrefixed(Go.pointer(_serverName)) || _serverName.empty()) {
                        return false;
                    };
                    if (_nameType != ((0 : GoUInt8))) {
                        continue;
                    };
                    if (_m.value._serverName.length != ((0 : GoInt))) {
                        return false;
                    };
                    _m.value._serverName = _serverName.__t__;
                    if (stdgo.strings.Strings.hasSuffix(_m.value._serverName, ".")) {
                        return false;
                    };
                };
            } else if (_extension == _extensionStatusRequest) {
                var _statusType:GoUInt8 = ((0 : GoUInt8));
                var _ignored:golang_org.x.crypto.cryptobyte.Cryptobyte.String_ = new vendor.golang_org.x.crypto.cryptobyte.Cryptobyte.String_();
                if (!_extData.readUint8(Go.pointer(_statusType)) || !_extData.readUint16LengthPrefixed(Go.pointer(_ignored)) || !_extData.readUint16LengthPrefixed(Go.pointer(_ignored))) {
                    return false;
                };
                _m.value._ocspStapling = _statusType == _statusTypeOCSP;
            } else if (_extension == _extensionSupportedCurves) {
                var _curves:golang_org.x.crypto.cryptobyte.Cryptobyte.String_ = new vendor.golang_org.x.crypto.cryptobyte.Cryptobyte.String_();
                if (!_extData.readUint16LengthPrefixed(Go.pointer(_curves)) || _curves.empty()) {
                    return false;
                };
                while (!_curves.empty()) {
                    var _curve:GoUInt16 = ((0 : GoUInt16));
                    if (!_curves.readUint16(Go.pointer(_curve))) {
                        return false;
                    };
                    _m.value._supportedCurves = _m.value._supportedCurves.__append__(new CurveID(_curve));
                };
            } else if (_extension == _extensionSupportedPoints) {
                if (!_readUint8LengthPrefixed(Go.pointer(_extData), Go.pointer(_m.value._supportedPoints)) || _m.value._supportedPoints.length == ((0 : GoInt))) {
                    return false;
                };
            } else if (_extension == _extensionSessionTicket) {
                _m.value._ticketSupported = true;
                _extData.readBytes(Go.pointer(_m.value._sessionTicket), _extData.__t__.length);
            } else if (_extension == _extensionSignatureAlgorithms) {
                var _sigAndAlgs:golang_org.x.crypto.cryptobyte.Cryptobyte.String_ = new vendor.golang_org.x.crypto.cryptobyte.Cryptobyte.String_();
                if (!_extData.readUint16LengthPrefixed(Go.pointer(_sigAndAlgs)) || _sigAndAlgs.empty()) {
                    return false;
                };
                while (!_sigAndAlgs.empty()) {
                    var _sigAndAlg:GoUInt16 = ((0 : GoUInt16));
                    if (!_sigAndAlgs.readUint16(Go.pointer(_sigAndAlg))) {
                        return false;
                    };
                    _m.value._supportedSignatureAlgorithms = _m.value._supportedSignatureAlgorithms.__append__(new SignatureScheme(_sigAndAlg));
                };
            } else if (_extension == _extensionSignatureAlgorithmsCert) {
                var _sigAndAlgs:golang_org.x.crypto.cryptobyte.Cryptobyte.String_ = new vendor.golang_org.x.crypto.cryptobyte.Cryptobyte.String_();
                if (!_extData.readUint16LengthPrefixed(Go.pointer(_sigAndAlgs)) || _sigAndAlgs.empty()) {
                    return false;
                };
                while (!_sigAndAlgs.empty()) {
                    var _sigAndAlg:GoUInt16 = ((0 : GoUInt16));
                    if (!_sigAndAlgs.readUint16(Go.pointer(_sigAndAlg))) {
                        return false;
                    };
                    _m.value._supportedSignatureAlgorithmsCert = _m.value._supportedSignatureAlgorithmsCert.__append__(new SignatureScheme(_sigAndAlg));
                };
            } else if (_extension == _extensionRenegotiationInfo) {
                if (!_readUint8LengthPrefixed(Go.pointer(_extData), Go.pointer(_m.value._secureRenegotiation))) {
                    return false;
                };
                _m.value._secureRenegotiationSupported = true;
            } else if (_extension == _extensionALPN) {
                var _protoList:golang_org.x.crypto.cryptobyte.Cryptobyte.String_ = new vendor.golang_org.x.crypto.cryptobyte.Cryptobyte.String_();
                if (!_extData.readUint16LengthPrefixed(Go.pointer(_protoList)) || _protoList.empty()) {
                    return false;
                };
                while (!_protoList.empty()) {
                    var _proto:golang_org.x.crypto.cryptobyte.Cryptobyte.String_ = new vendor.golang_org.x.crypto.cryptobyte.Cryptobyte.String_();
                    if (!_protoList.readUint8LengthPrefixed(Go.pointer(_proto)) || _proto.empty()) {
                        return false;
                    };
                    _m.value._alpnProtocols = _m.value._alpnProtocols.__append__(_proto.__t__);
                };
            } else if (_extension == _extensionSCT) {
                _m.value._scts = true;
            } else if (_extension == _extensionSupportedVersions) {
                var _versList:golang_org.x.crypto.cryptobyte.Cryptobyte.String_ = new vendor.golang_org.x.crypto.cryptobyte.Cryptobyte.String_();
                if (!_extData.readUint8LengthPrefixed(Go.pointer(_versList)) || _versList.empty()) {
                    return false;
                };
                while (!_versList.empty()) {
                    var _vers:GoUInt16 = ((0 : GoUInt16));
                    if (!_versList.readUint16(Go.pointer(_vers))) {
                        return false;
                    };
                    _m.value._supportedVersions = _m.value._supportedVersions.__append__(_vers);
                };
            } else if (_extension == _extensionCookie) {
                if (!_readUint16LengthPrefixed(Go.pointer(_extData), Go.pointer(_m.value._cookie)) || _m.value._cookie.length == ((0 : GoInt))) {
                    return false;
                };
            } else if (_extension == _extensionKeyShare) {
                var _clientShares:golang_org.x.crypto.cryptobyte.Cryptobyte.String_ = new vendor.golang_org.x.crypto.cryptobyte.Cryptobyte.String_();
                if (!_extData.readUint16LengthPrefixed(Go.pointer(_clientShares))) {
                    return false;
                };
                while (!_clientShares.empty()) {
                    var _ks:T_keyShare = new T_keyShare();
                    if (!_clientShares.readUint16(new Pointer<GoUInt16>(() -> Go.pointer(_ks._group).value.__t__, v -> (Go.pointer(_ks._group).value = new CurveID(v)).__t__)) || !_readUint16LengthPrefixed(Go.pointer(_clientShares), Go.pointer(_ks._data)) || _ks._data.length == ((0 : GoInt))) {
                        return false;
                    };
                    _m.value._keyShares = _m.value._keyShares.__append__(_ks.__copy__());
                };
            } else if (_extension == _extensionEarlyData) {
                _m.value._earlyData = true;
            } else if (_extension == _extensionPSKModes) {
                if (!_readUint8LengthPrefixed(Go.pointer(_extData), Go.pointer(_m.value._pskModes))) {
                    return false;
                };
            } else if (_extension == _extensionPreSharedKey) {
                if (!_extensions.empty()) {
                    return false;
                };
                var _identities:golang_org.x.crypto.cryptobyte.Cryptobyte.String_ = new vendor.golang_org.x.crypto.cryptobyte.Cryptobyte.String_();
                if (!_extData.readUint16LengthPrefixed(Go.pointer(_identities)) || _identities.empty()) {
                    return false;
                };
                while (!_identities.empty()) {
                    var _psk:T_pskIdentity = new T_pskIdentity();
                    if (!_readUint16LengthPrefixed(Go.pointer(_identities), Go.pointer(_psk._label)) || !_identities.readUint32(Go.pointer(_psk._obfuscatedTicketAge)) || _psk._label.length == ((0 : GoInt))) {
                        return false;
                    };
                    _m.value._pskIdentities = _m.value._pskIdentities.__append__(_psk.__copy__());
                };
                var _binders:golang_org.x.crypto.cryptobyte.Cryptobyte.String_ = new vendor.golang_org.x.crypto.cryptobyte.Cryptobyte.String_();
                if (!_extData.readUint16LengthPrefixed(Go.pointer(_binders)) || _binders.empty()) {
                    return false;
                };
                while (!_binders.empty()) {
                    var _binder:Slice<GoByte> = new Slice<GoUInt8>().nil();
                    if (!_readUint8LengthPrefixed(Go.pointer(_binders), Go.pointer(_binder)) || _binder.length == ((0 : GoInt))) {
                        return false;
                    };
                    _m.value._pskBinders = _m.value._pskBinders.__append__(_binder);
                };
            } else {
                continue;
            };
            if (!_extData.empty()) {
                return false;
            };
        };
        return true;
    }
    public function _updateBinders(_pskBinders:Slice<Slice<GoByte>>):Void {
        var _m = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        if (_pskBinders.length != _m.value._pskBinders.length) {
            throw "tls: internal error: pskBinders length mismatch";
        };
        {
            var _i;
            for (_obj in _m.value._pskBinders.keyValueIterator()) {
                _i = _obj.key;
                if (_pskBinders[_i].length != _m.value._pskBinders[_i].length) {
                    throw "tls: internal error: pskBinders length mismatch";
                };
            };
        };
        _m.value._pskBinders = _pskBinders;
        if (_m.value._raw != null && !_m.value._raw.isNil()) {
            var _lenWithoutBinders:GoInt = _m.value._marshalWithoutBinders().length;
            var _b:Pointer<vendor.golang_org.x.crypto.cryptobyte.Cryptobyte.Builder> = golang_org.x.crypto.cryptobyte.Cryptobyte.newBuilder(_m.value._raw.__slice__(0, _lenWithoutBinders));
            _b.value.addUint16LengthPrefixed(new vendor.golang_org.x.crypto.cryptobyte.Cryptobyte.BuilderContinuation(function(_b:Pointer<golang_org.x.crypto.cryptobyte.Cryptobyte.Builder>):Void {
                for (_binder in _m.value._pskBinders) {
                    _b.value.addUint8LengthPrefixed(new vendor.golang_org.x.crypto.cryptobyte.Cryptobyte.BuilderContinuation(function(_b:Pointer<golang_org.x.crypto.cryptobyte.Cryptobyte.Builder>):Void {
                        _b.value.addBytes(_binder);
                    }));
                };
            }));
            if (_b.value.bytesOrPanic().length != _m.value._raw.length) {
                throw "tls: internal error: failed to update binders";
            };
        };
    }
    public function _marshalWithoutBinders():Slice<GoByte> {
        var _m = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var _bindersLen:GoInt = ((2 : GoInt));
        for (_binder in _m.value._pskBinders) {
            _bindersLen = _bindersLen + (((1 : GoInt)));
            _bindersLen = _bindersLen + (_binder.length);
        };
        var _fullMessage:Slice<GoUInt8> = _m.value._marshal();
        return _fullMessage.__slice__(0, _fullMessage.length - _bindersLen);
    }
    public function _marshal():Slice<GoByte> {
        var _m = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        if (_m.value._raw != null && !_m.value._raw.isNil()) {
            return _m.value._raw;
        };
        var _b:golang_org.x.crypto.cryptobyte.Cryptobyte.Builder = new vendor.golang_org.x.crypto.cryptobyte.Cryptobyte.Builder();
        _b.addUint8(_typeClientHello);
        _b.addUint24LengthPrefixed(new vendor.golang_org.x.crypto.cryptobyte.Cryptobyte.BuilderContinuation(function(_b:Pointer<golang_org.x.crypto.cryptobyte.Cryptobyte.Builder>):Void {
            _b.value.addUint16(_m.value._vers);
            _addBytesWithLength(_b, _m.value._random, ((32 : GoInt)));
            _b.value.addUint8LengthPrefixed(new vendor.golang_org.x.crypto.cryptobyte.Cryptobyte.BuilderContinuation(function(_b:Pointer<golang_org.x.crypto.cryptobyte.Cryptobyte.Builder>):Void {
                _b.value.addBytes(_m.value._sessionId);
            }));
            _b.value.addUint16LengthPrefixed(new vendor.golang_org.x.crypto.cryptobyte.Cryptobyte.BuilderContinuation(function(_b:Pointer<golang_org.x.crypto.cryptobyte.Cryptobyte.Builder>):Void {
                for (_suite in _m.value._cipherSuites) {
                    _b.value.addUint16(_suite);
                };
            }));
            _b.value.addUint8LengthPrefixed(new vendor.golang_org.x.crypto.cryptobyte.Cryptobyte.BuilderContinuation(function(_b:Pointer<golang_org.x.crypto.cryptobyte.Cryptobyte.Builder>):Void {
                _b.value.addBytes(_m.value._compressionMethods);
            }));
            var _extensionsPresent:Bool = false;
            var _bWithoutExtensions:vendor.golang_org.x.crypto.cryptobyte.Cryptobyte.Builder = _b.value.__copy__();
            _b.value.addUint16LengthPrefixed(new vendor.golang_org.x.crypto.cryptobyte.Cryptobyte.BuilderContinuation(function(_b:Pointer<golang_org.x.crypto.cryptobyte.Cryptobyte.Builder>):Void {
                if (_m.value._serverName.length > ((0 : GoInt))) {
                    _b.value.addUint16(_extensionServerName);
                    _b.value.addUint16LengthPrefixed(new vendor.golang_org.x.crypto.cryptobyte.Cryptobyte.BuilderContinuation(function(_b:Pointer<golang_org.x.crypto.cryptobyte.Cryptobyte.Builder>):Void {
                        _b.value.addUint16LengthPrefixed(new vendor.golang_org.x.crypto.cryptobyte.Cryptobyte.BuilderContinuation(function(_b:Pointer<golang_org.x.crypto.cryptobyte.Cryptobyte.Builder>):Void {
                            _b.value.addUint8(((0 : GoUInt8)));
                            _b.value.addUint16LengthPrefixed(new vendor.golang_org.x.crypto.cryptobyte.Cryptobyte.BuilderContinuation(function(_b:Pointer<golang_org.x.crypto.cryptobyte.Cryptobyte.Builder>):Void {
                                _b.value.addBytes(((_m.value._serverName : Slice<GoByte>)));
                            }));
                        }));
                    }));
                };
                if (_m.value._ocspStapling) {
                    _b.value.addUint16(_extensionStatusRequest);
                    _b.value.addUint16LengthPrefixed(new vendor.golang_org.x.crypto.cryptobyte.Cryptobyte.BuilderContinuation(function(_b:Pointer<golang_org.x.crypto.cryptobyte.Cryptobyte.Builder>):Void {
                        _b.value.addUint8(((1 : GoUInt8)));
                        _b.value.addUint16(((0 : GoUInt16)));
                        _b.value.addUint16(((0 : GoUInt16)));
                    }));
                };
                if (_m.value._supportedCurves.length > ((0 : GoInt))) {
                    _b.value.addUint16(_extensionSupportedCurves);
                    _b.value.addUint16LengthPrefixed(new vendor.golang_org.x.crypto.cryptobyte.Cryptobyte.BuilderContinuation(function(_b:Pointer<golang_org.x.crypto.cryptobyte.Cryptobyte.Builder>):Void {
                        _b.value.addUint16LengthPrefixed(new vendor.golang_org.x.crypto.cryptobyte.Cryptobyte.BuilderContinuation(function(_b:Pointer<golang_org.x.crypto.cryptobyte.Cryptobyte.Builder>):Void {
                            for (_curve in _m.value._supportedCurves) {
                                _b.value.addUint16(_curve.__t__);
                            };
                        }));
                    }));
                };
                if (_m.value._supportedPoints.length > ((0 : GoInt))) {
                    _b.value.addUint16(_extensionSupportedPoints);
                    _b.value.addUint16LengthPrefixed(new vendor.golang_org.x.crypto.cryptobyte.Cryptobyte.BuilderContinuation(function(_b:Pointer<golang_org.x.crypto.cryptobyte.Cryptobyte.Builder>):Void {
                        _b.value.addUint8LengthPrefixed(new vendor.golang_org.x.crypto.cryptobyte.Cryptobyte.BuilderContinuation(function(_b:Pointer<golang_org.x.crypto.cryptobyte.Cryptobyte.Builder>):Void {
                            _b.value.addBytes(_m.value._supportedPoints);
                        }));
                    }));
                };
                if (_m.value._ticketSupported) {
                    _b.value.addUint16(_extensionSessionTicket);
                    _b.value.addUint16LengthPrefixed(new vendor.golang_org.x.crypto.cryptobyte.Cryptobyte.BuilderContinuation(function(_b:Pointer<golang_org.x.crypto.cryptobyte.Cryptobyte.Builder>):Void {
                        _b.value.addBytes(_m.value._sessionTicket);
                    }));
                };
                if (_m.value._supportedSignatureAlgorithms.length > ((0 : GoInt))) {
                    _b.value.addUint16(_extensionSignatureAlgorithms);
                    _b.value.addUint16LengthPrefixed(new vendor.golang_org.x.crypto.cryptobyte.Cryptobyte.BuilderContinuation(function(_b:Pointer<golang_org.x.crypto.cryptobyte.Cryptobyte.Builder>):Void {
                        _b.value.addUint16LengthPrefixed(new vendor.golang_org.x.crypto.cryptobyte.Cryptobyte.BuilderContinuation(function(_b:Pointer<golang_org.x.crypto.cryptobyte.Cryptobyte.Builder>):Void {
                            for (_sigAlgo in _m.value._supportedSignatureAlgorithms) {
                                _b.value.addUint16(_sigAlgo.__t__);
                            };
                        }));
                    }));
                };
                if (_m.value._supportedSignatureAlgorithmsCert.length > ((0 : GoInt))) {
                    _b.value.addUint16(_extensionSignatureAlgorithmsCert);
                    _b.value.addUint16LengthPrefixed(new vendor.golang_org.x.crypto.cryptobyte.Cryptobyte.BuilderContinuation(function(_b:Pointer<golang_org.x.crypto.cryptobyte.Cryptobyte.Builder>):Void {
                        _b.value.addUint16LengthPrefixed(new vendor.golang_org.x.crypto.cryptobyte.Cryptobyte.BuilderContinuation(function(_b:Pointer<golang_org.x.crypto.cryptobyte.Cryptobyte.Builder>):Void {
                            for (_sigAlgo in _m.value._supportedSignatureAlgorithmsCert) {
                                _b.value.addUint16(_sigAlgo.__t__);
                            };
                        }));
                    }));
                };
                if (_m.value._secureRenegotiationSupported) {
                    _b.value.addUint16(_extensionRenegotiationInfo);
                    _b.value.addUint16LengthPrefixed(new vendor.golang_org.x.crypto.cryptobyte.Cryptobyte.BuilderContinuation(function(_b:Pointer<golang_org.x.crypto.cryptobyte.Cryptobyte.Builder>):Void {
                        _b.value.addUint8LengthPrefixed(new vendor.golang_org.x.crypto.cryptobyte.Cryptobyte.BuilderContinuation(function(_b:Pointer<golang_org.x.crypto.cryptobyte.Cryptobyte.Builder>):Void {
                            _b.value.addBytes(_m.value._secureRenegotiation);
                        }));
                    }));
                };
                if (_m.value._alpnProtocols.length > ((0 : GoInt))) {
                    _b.value.addUint16(_extensionALPN);
                    _b.value.addUint16LengthPrefixed(new vendor.golang_org.x.crypto.cryptobyte.Cryptobyte.BuilderContinuation(function(_b:Pointer<golang_org.x.crypto.cryptobyte.Cryptobyte.Builder>):Void {
                        _b.value.addUint16LengthPrefixed(new vendor.golang_org.x.crypto.cryptobyte.Cryptobyte.BuilderContinuation(function(_b:Pointer<golang_org.x.crypto.cryptobyte.Cryptobyte.Builder>):Void {
                            for (_proto in _m.value._alpnProtocols) {
                                _b.value.addUint8LengthPrefixed(new vendor.golang_org.x.crypto.cryptobyte.Cryptobyte.BuilderContinuation(function(_b:Pointer<golang_org.x.crypto.cryptobyte.Cryptobyte.Builder>):Void {
                                    _b.value.addBytes(((_proto : Slice<GoByte>)));
                                }));
                            };
                        }));
                    }));
                };
                if (_m.value._scts) {
                    _b.value.addUint16(_extensionSCT);
                    _b.value.addUint16(((0 : GoUInt16)));
                };
                if (_m.value._supportedVersions.length > ((0 : GoInt))) {
                    _b.value.addUint16(_extensionSupportedVersions);
                    _b.value.addUint16LengthPrefixed(new vendor.golang_org.x.crypto.cryptobyte.Cryptobyte.BuilderContinuation(function(_b:Pointer<golang_org.x.crypto.cryptobyte.Cryptobyte.Builder>):Void {
                        _b.value.addUint8LengthPrefixed(new vendor.golang_org.x.crypto.cryptobyte.Cryptobyte.BuilderContinuation(function(_b:Pointer<golang_org.x.crypto.cryptobyte.Cryptobyte.Builder>):Void {
                            for (_vers in _m.value._supportedVersions) {
                                _b.value.addUint16(_vers);
                            };
                        }));
                    }));
                };
                if (_m.value._cookie.length > ((0 : GoInt))) {
                    _b.value.addUint16(_extensionCookie);
                    _b.value.addUint16LengthPrefixed(new vendor.golang_org.x.crypto.cryptobyte.Cryptobyte.BuilderContinuation(function(_b:Pointer<golang_org.x.crypto.cryptobyte.Cryptobyte.Builder>):Void {
                        _b.value.addUint16LengthPrefixed(new vendor.golang_org.x.crypto.cryptobyte.Cryptobyte.BuilderContinuation(function(_b:Pointer<golang_org.x.crypto.cryptobyte.Cryptobyte.Builder>):Void {
                            _b.value.addBytes(_m.value._cookie);
                        }));
                    }));
                };
                if (_m.value._keyShares.length > ((0 : GoInt))) {
                    _b.value.addUint16(_extensionKeyShare);
                    _b.value.addUint16LengthPrefixed(new vendor.golang_org.x.crypto.cryptobyte.Cryptobyte.BuilderContinuation(function(_b:Pointer<golang_org.x.crypto.cryptobyte.Cryptobyte.Builder>):Void {
                        _b.value.addUint16LengthPrefixed(new vendor.golang_org.x.crypto.cryptobyte.Cryptobyte.BuilderContinuation(function(_b:Pointer<golang_org.x.crypto.cryptobyte.Cryptobyte.Builder>):Void {
                            for (_ks in _m.value._keyShares) {
                                _b.value.addUint16(_ks._group.__t__);
                                _b.value.addUint16LengthPrefixed(new vendor.golang_org.x.crypto.cryptobyte.Cryptobyte.BuilderContinuation(function(_b:Pointer<golang_org.x.crypto.cryptobyte.Cryptobyte.Builder>):Void {
                                    _b.value.addBytes(_ks._data);
                                }));
                            };
                        }));
                    }));
                };
                if (_m.value._earlyData) {
                    _b.value.addUint16(_extensionEarlyData);
                    _b.value.addUint16(((0 : GoUInt16)));
                };
                if (_m.value._pskModes.length > ((0 : GoInt))) {
                    _b.value.addUint16(_extensionPSKModes);
                    _b.value.addUint16LengthPrefixed(new vendor.golang_org.x.crypto.cryptobyte.Cryptobyte.BuilderContinuation(function(_b:Pointer<golang_org.x.crypto.cryptobyte.Cryptobyte.Builder>):Void {
                        _b.value.addUint8LengthPrefixed(new vendor.golang_org.x.crypto.cryptobyte.Cryptobyte.BuilderContinuation(function(_b:Pointer<golang_org.x.crypto.cryptobyte.Cryptobyte.Builder>):Void {
                            _b.value.addBytes(_m.value._pskModes);
                        }));
                    }));
                };
                if (_m.value._pskIdentities.length > ((0 : GoInt))) {
                    _b.value.addUint16(_extensionPreSharedKey);
                    _b.value.addUint16LengthPrefixed(new vendor.golang_org.x.crypto.cryptobyte.Cryptobyte.BuilderContinuation(function(_b:Pointer<golang_org.x.crypto.cryptobyte.Cryptobyte.Builder>):Void {
                        _b.value.addUint16LengthPrefixed(new vendor.golang_org.x.crypto.cryptobyte.Cryptobyte.BuilderContinuation(function(_b:Pointer<golang_org.x.crypto.cryptobyte.Cryptobyte.Builder>):Void {
                            for (_psk in _m.value._pskIdentities) {
                                _b.value.addUint16LengthPrefixed(new vendor.golang_org.x.crypto.cryptobyte.Cryptobyte.BuilderContinuation(function(_b:Pointer<golang_org.x.crypto.cryptobyte.Cryptobyte.Builder>):Void {
                                    _b.value.addBytes(_psk._label);
                                }));
                                _b.value.addUint32(_psk._obfuscatedTicketAge);
                            };
                        }));
                        _b.value.addUint16LengthPrefixed(new vendor.golang_org.x.crypto.cryptobyte.Cryptobyte.BuilderContinuation(function(_b:Pointer<golang_org.x.crypto.cryptobyte.Cryptobyte.Builder>):Void {
                            for (_binder in _m.value._pskBinders) {
                                _b.value.addUint8LengthPrefixed(new vendor.golang_org.x.crypto.cryptobyte.Cryptobyte.BuilderContinuation(function(_b:Pointer<golang_org.x.crypto.cryptobyte.Cryptobyte.Builder>):Void {
                                    _b.value.addBytes(_binder);
                                }));
                            };
                        }));
                    }));
                };
                _extensionsPresent = _b.value.bytesOrPanic().length > ((2 : GoInt));
            }));
            if (!_extensionsPresent) {
                _b.value = _bWithoutExtensions.__copy__();
            };
        }));
        _m.value._raw = _b.bytesOrPanic();
        return _m.value._raw;
    }
    public var _raw : Slice<GoUInt8> = new Slice<GoUInt8>().nil();
    public var _vers : GoUInt16 = ((0 : GoUInt16));
    public var _random : Slice<GoUInt8> = new Slice<GoUInt8>().nil();
    public var _sessionId : Slice<GoUInt8> = new Slice<GoUInt8>().nil();
    public var _cipherSuites : Slice<GoUInt16> = new Slice<GoUInt16>().nil();
    public var _compressionMethods : Slice<GoUInt8> = new Slice<GoUInt8>().nil();
    public var _serverName : GoString = (("" : GoString));
    public var _ocspStapling : Bool = false;
    public var _supportedCurves : Slice<CurveID> = new Slice<CurveID>().nil();
    public var _supportedPoints : Slice<GoUInt8> = new Slice<GoUInt8>().nil();
    public var _ticketSupported : Bool = false;
    public var _sessionTicket : Slice<GoUInt8> = new Slice<GoUInt8>().nil();
    public var _supportedSignatureAlgorithms : Slice<SignatureScheme> = new Slice<SignatureScheme>().nil();
    public var _supportedSignatureAlgorithmsCert : Slice<SignatureScheme> = new Slice<SignatureScheme>().nil();
    public var _secureRenegotiationSupported : Bool = false;
    public var _secureRenegotiation : Slice<GoUInt8> = new Slice<GoUInt8>().nil();
    public var _alpnProtocols : Slice<GoString> = new Slice<GoString>().nil();
    public var _scts : Bool = false;
    public var _supportedVersions : Slice<GoUInt16> = new Slice<GoUInt16>().nil();
    public var _cookie : Slice<GoUInt8> = new Slice<GoUInt8>().nil();
    public var _keyShares : Slice<T_keyShare> = new Slice<T_keyShare>().nil();
    public var _earlyData : Bool = false;
    public var _pskModes : Slice<GoUInt8> = new Slice<GoUInt8>().nil();
    public var _pskIdentities : Slice<T_pskIdentity> = new Slice<T_pskIdentity>().nil();
    public var _pskBinders : Slice<Slice<GoUInt8>> = new Slice<Slice<GoUInt8>>().nil();
    public function new(?_raw:Slice<GoUInt8>, ?_vers:GoUInt16, ?_random:Slice<GoUInt8>, ?_sessionId:Slice<GoUInt8>, ?_cipherSuites:Slice<GoUInt16>, ?_compressionMethods:Slice<GoUInt8>, ?_serverName:GoString, ?_ocspStapling:Bool, ?_supportedCurves:Slice<CurveID>, ?_supportedPoints:Slice<GoUInt8>, ?_ticketSupported:Bool, ?_sessionTicket:Slice<GoUInt8>, ?_supportedSignatureAlgorithms:Slice<SignatureScheme>, ?_supportedSignatureAlgorithmsCert:Slice<SignatureScheme>, ?_secureRenegotiationSupported:Bool, ?_secureRenegotiation:Slice<GoUInt8>, ?_alpnProtocols:Slice<GoString>, ?_scts:Bool, ?_supportedVersions:Slice<GoUInt16>, ?_cookie:Slice<GoUInt8>, ?_keyShares:Slice<T_keyShare>, ?_earlyData:Bool, ?_pskModes:Slice<GoUInt8>, ?_pskIdentities:Slice<T_pskIdentity>, ?_pskBinders:Slice<Slice<GoUInt8>>) stdgo.internal.Macro.initLocals();
    public function toString() {
        return '{' + Go.string(_raw) + " " + Go.string(_vers) + " " + Go.string(_random) + " " + Go.string(_sessionId) + " " + Go.string(_cipherSuites) + " " + Go.string(_compressionMethods) + " " + Go.string(_serverName) + " " + Go.string(_ocspStapling) + " " + Go.string(_supportedCurves) + " " + Go.string(_supportedPoints) + " " + Go.string(_ticketSupported) + " " + Go.string(_sessionTicket) + " " + Go.string(_supportedSignatureAlgorithms) + " " + Go.string(_supportedSignatureAlgorithmsCert) + " " + Go.string(_secureRenegotiationSupported) + " " + Go.string(_secureRenegotiation) + " " + Go.string(_alpnProtocols) + " " + Go.string(_scts) + " " + Go.string(_supportedVersions) + " " + Go.string(_cookie) + " " + Go.string(_keyShares) + " " + Go.string(_earlyData) + " " + Go.string(_pskModes) + " " + Go.string(_pskIdentities) + " " + Go.string(_pskBinders) + "}";
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_clientHelloMsg(
_raw,
_vers,
_random,
_sessionId,
_cipherSuites,
_compressionMethods,
_serverName,
_ocspStapling,
_supportedCurves,
_supportedPoints,
_ticketSupported,
_sessionTicket,
_supportedSignatureAlgorithms,
_supportedSignatureAlgorithmsCert,
_secureRenegotiationSupported,
_secureRenegotiation,
_alpnProtocols,
_scts,
_supportedVersions,
_cookie,
_keyShares,
_earlyData,
_pskModes,
_pskIdentities,
_pskBinders);
    }
    public function __set__(__tmp__) {
        this._raw = __tmp__._raw;
        this._vers = __tmp__._vers;
        this._random = __tmp__._random;
        this._sessionId = __tmp__._sessionId;
        this._cipherSuites = __tmp__._cipherSuites;
        this._compressionMethods = __tmp__._compressionMethods;
        this._serverName = __tmp__._serverName;
        this._ocspStapling = __tmp__._ocspStapling;
        this._supportedCurves = __tmp__._supportedCurves;
        this._supportedPoints = __tmp__._supportedPoints;
        this._ticketSupported = __tmp__._ticketSupported;
        this._sessionTicket = __tmp__._sessionTicket;
        this._supportedSignatureAlgorithms = __tmp__._supportedSignatureAlgorithms;
        this._supportedSignatureAlgorithmsCert = __tmp__._supportedSignatureAlgorithmsCert;
        this._secureRenegotiationSupported = __tmp__._secureRenegotiationSupported;
        this._secureRenegotiation = __tmp__._secureRenegotiation;
        this._alpnProtocols = __tmp__._alpnProtocols;
        this._scts = __tmp__._scts;
        this._supportedVersions = __tmp__._supportedVersions;
        this._cookie = __tmp__._cookie;
        this._keyShares = __tmp__._keyShares;
        this._earlyData = __tmp__._earlyData;
        this._pskModes = __tmp__._pskModes;
        this._pskIdentities = __tmp__._pskIdentities;
        this._pskBinders = __tmp__._pskBinders;
        return this;
    }
}
@:structInit class T_serverHelloMsg {
    public function _unmarshal(_data:Slice<GoByte>):Bool {
        var _m = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        _m.value = (({ _raw : _data, _vers : 0, _random : new Slice<GoUInt8>().nil(), _sessionId : new Slice<GoUInt8>().nil(), _cipherSuite : 0, _compressionMethod : 0, _ocspStapling : false, _ticketSupported : false, _secureRenegotiationSupported : false, _secureRenegotiation : new Slice<GoUInt8>().nil(), _alpnProtocol : "", _scts : new Slice<Slice<GoUInt8>>().nil(), _supportedVersion : 0, _serverShare : new T_keyShare(), _selectedIdentityPresent : false, _selectedIdentity : 0, _supportedPoints : new Slice<GoUInt8>().nil(), _cookie : new Slice<GoUInt8>().nil(), _selectedGroup : new CurveID() } : T_serverHelloMsg)).__copy__();
        var _s:vendor.golang_org.x.crypto.cryptobyte.Cryptobyte.String_ = new golang_org.x.crypto.cryptobyte.Cryptobyte.String_(_data).__copy__();
        if (!_s.skip(((4 : GoInt))) || !_s.readUint16(Go.pointer(_m.value._vers)) || !_s.readBytes(Go.pointer(_m.value._random), ((32 : GoInt))) || !_readUint8LengthPrefixed(Go.pointer(_s), Go.pointer(_m.value._sessionId)) || !_s.readUint16(Go.pointer(_m.value._cipherSuite)) || !_s.readUint8(Go.pointer(_m.value._compressionMethod))) {
            return false;
        };
        if (_s.empty()) {
            return true;
        };
        var _extensions:golang_org.x.crypto.cryptobyte.Cryptobyte.String_ = new vendor.golang_org.x.crypto.cryptobyte.Cryptobyte.String_();
        if (!_s.readUint16LengthPrefixed(Go.pointer(_extensions)) || !_s.empty()) {
            return false;
        };
        while (!_extensions.empty()) {
            var _extension:GoUInt16 = ((0 : GoUInt16));
            var _extData:golang_org.x.crypto.cryptobyte.Cryptobyte.String_ = new vendor.golang_org.x.crypto.cryptobyte.Cryptobyte.String_();
            if (!_extensions.readUint16(Go.pointer(_extension)) || !_extensions.readUint16LengthPrefixed(Go.pointer(_extData))) {
                return false;
            };
            if (_extension == _extensionStatusRequest) {
                _m.value._ocspStapling = true;
            } else if (_extension == _extensionSessionTicket) {
                _m.value._ticketSupported = true;
            } else if (_extension == _extensionRenegotiationInfo) {
                if (!_readUint8LengthPrefixed(Go.pointer(_extData), Go.pointer(_m.value._secureRenegotiation))) {
                    return false;
                };
                _m.value._secureRenegotiationSupported = true;
            } else if (_extension == _extensionALPN) {
                var _protoList:golang_org.x.crypto.cryptobyte.Cryptobyte.String_ = new vendor.golang_org.x.crypto.cryptobyte.Cryptobyte.String_();
                if (!_extData.readUint16LengthPrefixed(Go.pointer(_protoList)) || _protoList.empty()) {
                    return false;
                };
                var _proto:golang_org.x.crypto.cryptobyte.Cryptobyte.String_ = new vendor.golang_org.x.crypto.cryptobyte.Cryptobyte.String_();
                if (!_protoList.readUint8LengthPrefixed(Go.pointer(_proto)) || _proto.empty() || !_protoList.empty()) {
                    return false;
                };
                _m.value._alpnProtocol = _proto.__t__;
            } else if (_extension == _extensionSCT) {
                var _sctList:golang_org.x.crypto.cryptobyte.Cryptobyte.String_ = new vendor.golang_org.x.crypto.cryptobyte.Cryptobyte.String_();
                if (!_extData.readUint16LengthPrefixed(Go.pointer(_sctList)) || _sctList.empty()) {
                    return false;
                };
                while (!_sctList.empty()) {
                    var _sct:Slice<GoByte> = new Slice<GoUInt8>().nil();
                    if (!_readUint16LengthPrefixed(Go.pointer(_sctList), Go.pointer(_sct)) || _sct.length == ((0 : GoInt))) {
                        return false;
                    };
                    _m.value._scts = _m.value._scts.__append__(_sct);
                };
            } else if (_extension == _extensionSupportedVersions) {
                if (!_extData.readUint16(Go.pointer(_m.value._supportedVersion))) {
                    return false;
                };
            } else if (_extension == _extensionCookie) {
                if (!_readUint16LengthPrefixed(Go.pointer(_extData), Go.pointer(_m.value._cookie)) || _m.value._cookie.length == ((0 : GoInt))) {
                    return false;
                };
            } else if (_extension == _extensionKeyShare) {
                if (_extData.__t__.length == ((2 : GoInt))) {
                    if (!_extData.readUint16(new Pointer<GoUInt16>(() -> Go.pointer(_m.value._selectedGroup).value.__t__, v -> (Go.pointer(_m.value._selectedGroup).value = new CurveID(v)).__t__))) {
                        return false;
                    };
                } else {
                    if (!_extData.readUint16(new Pointer<GoUInt16>(() -> Go.pointer(_m.value._serverShare._group).value.__t__, v -> (Go.pointer(_m.value._serverShare._group).value = new CurveID(v)).__t__)) || !_readUint16LengthPrefixed(Go.pointer(_extData), Go.pointer(_m.value._serverShare._data))) {
                        return false;
                    };
                };
            } else if (_extension == _extensionPreSharedKey) {
                _m.value._selectedIdentityPresent = true;
                if (!_extData.readUint16(Go.pointer(_m.value._selectedIdentity))) {
                    return false;
                };
            } else if (_extension == _extensionSupportedPoints) {
                if (!_readUint8LengthPrefixed(Go.pointer(_extData), Go.pointer(_m.value._supportedPoints)) || _m.value._supportedPoints.length == ((0 : GoInt))) {
                    return false;
                };
            } else {
                continue;
            };
            if (!_extData.empty()) {
                return false;
            };
        };
        return true;
    }
    public function _marshal():Slice<GoByte> {
        var _m = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        if (_m.value._raw != null && !_m.value._raw.isNil()) {
            return _m.value._raw;
        };
        var _b:golang_org.x.crypto.cryptobyte.Cryptobyte.Builder = new vendor.golang_org.x.crypto.cryptobyte.Cryptobyte.Builder();
        _b.addUint8(_typeServerHello);
        _b.addUint24LengthPrefixed(new vendor.golang_org.x.crypto.cryptobyte.Cryptobyte.BuilderContinuation(function(_b:Pointer<golang_org.x.crypto.cryptobyte.Cryptobyte.Builder>):Void {
            _b.value.addUint16(_m.value._vers);
            _addBytesWithLength(_b, _m.value._random, ((32 : GoInt)));
            _b.value.addUint8LengthPrefixed(new vendor.golang_org.x.crypto.cryptobyte.Cryptobyte.BuilderContinuation(function(_b:Pointer<golang_org.x.crypto.cryptobyte.Cryptobyte.Builder>):Void {
                _b.value.addBytes(_m.value._sessionId);
            }));
            _b.value.addUint16(_m.value._cipherSuite);
            _b.value.addUint8(_m.value._compressionMethod);
            var _extensionsPresent:Bool = false;
            var _bWithoutExtensions:vendor.golang_org.x.crypto.cryptobyte.Cryptobyte.Builder = _b.value.__copy__();
            _b.value.addUint16LengthPrefixed(new vendor.golang_org.x.crypto.cryptobyte.Cryptobyte.BuilderContinuation(function(_b:Pointer<golang_org.x.crypto.cryptobyte.Cryptobyte.Builder>):Void {
                if (_m.value._ocspStapling) {
                    _b.value.addUint16(_extensionStatusRequest);
                    _b.value.addUint16(((0 : GoUInt16)));
                };
                if (_m.value._ticketSupported) {
                    _b.value.addUint16(_extensionSessionTicket);
                    _b.value.addUint16(((0 : GoUInt16)));
                };
                if (_m.value._secureRenegotiationSupported) {
                    _b.value.addUint16(_extensionRenegotiationInfo);
                    _b.value.addUint16LengthPrefixed(new vendor.golang_org.x.crypto.cryptobyte.Cryptobyte.BuilderContinuation(function(_b:Pointer<golang_org.x.crypto.cryptobyte.Cryptobyte.Builder>):Void {
                        _b.value.addUint8LengthPrefixed(new vendor.golang_org.x.crypto.cryptobyte.Cryptobyte.BuilderContinuation(function(_b:Pointer<golang_org.x.crypto.cryptobyte.Cryptobyte.Builder>):Void {
                            _b.value.addBytes(_m.value._secureRenegotiation);
                        }));
                    }));
                };
                if (_m.value._alpnProtocol.length > ((0 : GoInt))) {
                    _b.value.addUint16(_extensionALPN);
                    _b.value.addUint16LengthPrefixed(new vendor.golang_org.x.crypto.cryptobyte.Cryptobyte.BuilderContinuation(function(_b:Pointer<golang_org.x.crypto.cryptobyte.Cryptobyte.Builder>):Void {
                        _b.value.addUint16LengthPrefixed(new vendor.golang_org.x.crypto.cryptobyte.Cryptobyte.BuilderContinuation(function(_b:Pointer<golang_org.x.crypto.cryptobyte.Cryptobyte.Builder>):Void {
                            _b.value.addUint8LengthPrefixed(new vendor.golang_org.x.crypto.cryptobyte.Cryptobyte.BuilderContinuation(function(_b:Pointer<golang_org.x.crypto.cryptobyte.Cryptobyte.Builder>):Void {
                                _b.value.addBytes(((_m.value._alpnProtocol : Slice<GoByte>)));
                            }));
                        }));
                    }));
                };
                if (_m.value._scts.length > ((0 : GoInt))) {
                    _b.value.addUint16(_extensionSCT);
                    _b.value.addUint16LengthPrefixed(new vendor.golang_org.x.crypto.cryptobyte.Cryptobyte.BuilderContinuation(function(_b:Pointer<golang_org.x.crypto.cryptobyte.Cryptobyte.Builder>):Void {
                        _b.value.addUint16LengthPrefixed(new vendor.golang_org.x.crypto.cryptobyte.Cryptobyte.BuilderContinuation(function(_b:Pointer<golang_org.x.crypto.cryptobyte.Cryptobyte.Builder>):Void {
                            for (_sct in _m.value._scts) {
                                _b.value.addUint16LengthPrefixed(new vendor.golang_org.x.crypto.cryptobyte.Cryptobyte.BuilderContinuation(function(_b:Pointer<golang_org.x.crypto.cryptobyte.Cryptobyte.Builder>):Void {
                                    _b.value.addBytes(_sct);
                                }));
                            };
                        }));
                    }));
                };
                if (_m.value._supportedVersion != ((0 : GoUInt16))) {
                    _b.value.addUint16(_extensionSupportedVersions);
                    _b.value.addUint16LengthPrefixed(new vendor.golang_org.x.crypto.cryptobyte.Cryptobyte.BuilderContinuation(function(_b:Pointer<golang_org.x.crypto.cryptobyte.Cryptobyte.Builder>):Void {
                        _b.value.addUint16(_m.value._supportedVersion);
                    }));
                };
                if (_m.value._serverShare._group.__t__ != ((0 : GoUInt16))) {
                    _b.value.addUint16(_extensionKeyShare);
                    _b.value.addUint16LengthPrefixed(new vendor.golang_org.x.crypto.cryptobyte.Cryptobyte.BuilderContinuation(function(_b:Pointer<golang_org.x.crypto.cryptobyte.Cryptobyte.Builder>):Void {
                        _b.value.addUint16(_m.value._serverShare._group.__t__);
                        _b.value.addUint16LengthPrefixed(new vendor.golang_org.x.crypto.cryptobyte.Cryptobyte.BuilderContinuation(function(_b:Pointer<golang_org.x.crypto.cryptobyte.Cryptobyte.Builder>):Void {
                            _b.value.addBytes(_m.value._serverShare._data);
                        }));
                    }));
                };
                if (_m.value._selectedIdentityPresent) {
                    _b.value.addUint16(_extensionPreSharedKey);
                    _b.value.addUint16LengthPrefixed(new vendor.golang_org.x.crypto.cryptobyte.Cryptobyte.BuilderContinuation(function(_b:Pointer<golang_org.x.crypto.cryptobyte.Cryptobyte.Builder>):Void {
                        _b.value.addUint16(_m.value._selectedIdentity);
                    }));
                };
                if (_m.value._cookie.length > ((0 : GoInt))) {
                    _b.value.addUint16(_extensionCookie);
                    _b.value.addUint16LengthPrefixed(new vendor.golang_org.x.crypto.cryptobyte.Cryptobyte.BuilderContinuation(function(_b:Pointer<golang_org.x.crypto.cryptobyte.Cryptobyte.Builder>):Void {
                        _b.value.addUint16LengthPrefixed(new vendor.golang_org.x.crypto.cryptobyte.Cryptobyte.BuilderContinuation(function(_b:Pointer<golang_org.x.crypto.cryptobyte.Cryptobyte.Builder>):Void {
                            _b.value.addBytes(_m.value._cookie);
                        }));
                    }));
                };
                if (_m.value._selectedGroup.__t__ != ((0 : GoUInt16))) {
                    _b.value.addUint16(_extensionKeyShare);
                    _b.value.addUint16LengthPrefixed(new vendor.golang_org.x.crypto.cryptobyte.Cryptobyte.BuilderContinuation(function(_b:Pointer<golang_org.x.crypto.cryptobyte.Cryptobyte.Builder>):Void {
                        _b.value.addUint16(_m.value._selectedGroup.__t__);
                    }));
                };
                if (_m.value._supportedPoints.length > ((0 : GoInt))) {
                    _b.value.addUint16(_extensionSupportedPoints);
                    _b.value.addUint16LengthPrefixed(new vendor.golang_org.x.crypto.cryptobyte.Cryptobyte.BuilderContinuation(function(_b:Pointer<golang_org.x.crypto.cryptobyte.Cryptobyte.Builder>):Void {
                        _b.value.addUint8LengthPrefixed(new vendor.golang_org.x.crypto.cryptobyte.Cryptobyte.BuilderContinuation(function(_b:Pointer<golang_org.x.crypto.cryptobyte.Cryptobyte.Builder>):Void {
                            _b.value.addBytes(_m.value._supportedPoints);
                        }));
                    }));
                };
                _extensionsPresent = _b.value.bytesOrPanic().length > ((2 : GoInt));
            }));
            if (!_extensionsPresent) {
                _b.value = _bWithoutExtensions.__copy__();
            };
        }));
        _m.value._raw = _b.bytesOrPanic();
        return _m.value._raw;
    }
    public var _raw : Slice<GoUInt8> = new Slice<GoUInt8>().nil();
    public var _vers : GoUInt16 = ((0 : GoUInt16));
    public var _random : Slice<GoUInt8> = new Slice<GoUInt8>().nil();
    public var _sessionId : Slice<GoUInt8> = new Slice<GoUInt8>().nil();
    public var _cipherSuite : GoUInt16 = ((0 : GoUInt16));
    public var _compressionMethod : GoUInt8 = ((0 : GoUInt8));
    public var _ocspStapling : Bool = false;
    public var _ticketSupported : Bool = false;
    public var _secureRenegotiationSupported : Bool = false;
    public var _secureRenegotiation : Slice<GoUInt8> = new Slice<GoUInt8>().nil();
    public var _alpnProtocol : GoString = (("" : GoString));
    public var _scts : Slice<Slice<GoUInt8>> = new Slice<Slice<GoUInt8>>().nil();
    public var _supportedVersion : GoUInt16 = ((0 : GoUInt16));
    public var _serverShare : T_keyShare = new T_keyShare();
    public var _selectedIdentityPresent : Bool = false;
    public var _selectedIdentity : GoUInt16 = ((0 : GoUInt16));
    public var _supportedPoints : Slice<GoUInt8> = new Slice<GoUInt8>().nil();
    public var _cookie : Slice<GoUInt8> = new Slice<GoUInt8>().nil();
    public var _selectedGroup : CurveID = new CurveID();
    public function new(?_raw:Slice<GoUInt8>, ?_vers:GoUInt16, ?_random:Slice<GoUInt8>, ?_sessionId:Slice<GoUInt8>, ?_cipherSuite:GoUInt16, ?_compressionMethod:GoUInt8, ?_ocspStapling:Bool, ?_ticketSupported:Bool, ?_secureRenegotiationSupported:Bool, ?_secureRenegotiation:Slice<GoUInt8>, ?_alpnProtocol:GoString, ?_scts:Slice<Slice<GoUInt8>>, ?_supportedVersion:GoUInt16, ?_serverShare:T_keyShare, ?_selectedIdentityPresent:Bool, ?_selectedIdentity:GoUInt16, ?_supportedPoints:Slice<GoUInt8>, ?_cookie:Slice<GoUInt8>, ?_selectedGroup:CurveID) stdgo.internal.Macro.initLocals();
    public function toString() {
        return '{' + Go.string(_raw) + " " + Go.string(_vers) + " " + Go.string(_random) + " " + Go.string(_sessionId) + " " + Go.string(_cipherSuite) + " " + Go.string(_compressionMethod) + " " + Go.string(_ocspStapling) + " " + Go.string(_ticketSupported) + " " + Go.string(_secureRenegotiationSupported) + " " + Go.string(_secureRenegotiation) + " " + Go.string(_alpnProtocol) + " " + Go.string(_scts) + " " + Go.string(_supportedVersion) + " " + Go.string(_serverShare) + " " + Go.string(_selectedIdentityPresent) + " " + Go.string(_selectedIdentity) + " " + Go.string(_supportedPoints) + " " + Go.string(_cookie) + " " + Go.string(_selectedGroup) + "}";
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_serverHelloMsg(
_raw,
_vers,
_random,
_sessionId,
_cipherSuite,
_compressionMethod,
_ocspStapling,
_ticketSupported,
_secureRenegotiationSupported,
_secureRenegotiation,
_alpnProtocol,
_scts,
_supportedVersion,
_serverShare,
_selectedIdentityPresent,
_selectedIdentity,
_supportedPoints,
_cookie,
_selectedGroup);
    }
    public function __set__(__tmp__) {
        this._raw = __tmp__._raw;
        this._vers = __tmp__._vers;
        this._random = __tmp__._random;
        this._sessionId = __tmp__._sessionId;
        this._cipherSuite = __tmp__._cipherSuite;
        this._compressionMethod = __tmp__._compressionMethod;
        this._ocspStapling = __tmp__._ocspStapling;
        this._ticketSupported = __tmp__._ticketSupported;
        this._secureRenegotiationSupported = __tmp__._secureRenegotiationSupported;
        this._secureRenegotiation = __tmp__._secureRenegotiation;
        this._alpnProtocol = __tmp__._alpnProtocol;
        this._scts = __tmp__._scts;
        this._supportedVersion = __tmp__._supportedVersion;
        this._serverShare = __tmp__._serverShare;
        this._selectedIdentityPresent = __tmp__._selectedIdentityPresent;
        this._selectedIdentity = __tmp__._selectedIdentity;
        this._supportedPoints = __tmp__._supportedPoints;
        this._cookie = __tmp__._cookie;
        this._selectedGroup = __tmp__._selectedGroup;
        return this;
    }
}
@:structInit class T_encryptedExtensionsMsg {
    public function _unmarshal(_data:Slice<GoByte>):Bool {
        var _m = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        _m.value = (({ _raw : _data, _alpnProtocol : "" } : T_encryptedExtensionsMsg)).__copy__();
        var _s:vendor.golang_org.x.crypto.cryptobyte.Cryptobyte.String_ = new golang_org.x.crypto.cryptobyte.Cryptobyte.String_(_data).__copy__();
        var _extensions:golang_org.x.crypto.cryptobyte.Cryptobyte.String_ = new vendor.golang_org.x.crypto.cryptobyte.Cryptobyte.String_();
        if (!_s.skip(((4 : GoInt))) || !_s.readUint16LengthPrefixed(Go.pointer(_extensions)) || !_s.empty()) {
            return false;
        };
        while (!_extensions.empty()) {
            var _extension:GoUInt16 = ((0 : GoUInt16));
            var _extData:golang_org.x.crypto.cryptobyte.Cryptobyte.String_ = new vendor.golang_org.x.crypto.cryptobyte.Cryptobyte.String_();
            if (!_extensions.readUint16(Go.pointer(_extension)) || !_extensions.readUint16LengthPrefixed(Go.pointer(_extData))) {
                return false;
            };
            if (_extension == _extensionALPN) {
                var _protoList:golang_org.x.crypto.cryptobyte.Cryptobyte.String_ = new vendor.golang_org.x.crypto.cryptobyte.Cryptobyte.String_();
                if (!_extData.readUint16LengthPrefixed(Go.pointer(_protoList)) || _protoList.empty()) {
                    return false;
                };
                var _proto:golang_org.x.crypto.cryptobyte.Cryptobyte.String_ = new vendor.golang_org.x.crypto.cryptobyte.Cryptobyte.String_();
                if (!_protoList.readUint8LengthPrefixed(Go.pointer(_proto)) || _proto.empty() || !_protoList.empty()) {
                    return false;
                };
                _m.value._alpnProtocol = _proto.__t__;
            } else {
                continue;
            };
            if (!_extData.empty()) {
                return false;
            };
        };
        return true;
    }
    public function _marshal():Slice<GoByte> {
        var _m = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        if (_m.value._raw != null && !_m.value._raw.isNil()) {
            return _m.value._raw;
        };
        var _b:golang_org.x.crypto.cryptobyte.Cryptobyte.Builder = new vendor.golang_org.x.crypto.cryptobyte.Cryptobyte.Builder();
        _b.addUint8(_typeEncryptedExtensions);
        _b.addUint24LengthPrefixed(new vendor.golang_org.x.crypto.cryptobyte.Cryptobyte.BuilderContinuation(function(_b:Pointer<golang_org.x.crypto.cryptobyte.Cryptobyte.Builder>):Void {
            _b.value.addUint16LengthPrefixed(new vendor.golang_org.x.crypto.cryptobyte.Cryptobyte.BuilderContinuation(function(_b:Pointer<golang_org.x.crypto.cryptobyte.Cryptobyte.Builder>):Void {
                if (_m.value._alpnProtocol.length > ((0 : GoInt))) {
                    _b.value.addUint16(_extensionALPN);
                    _b.value.addUint16LengthPrefixed(new vendor.golang_org.x.crypto.cryptobyte.Cryptobyte.BuilderContinuation(function(_b:Pointer<golang_org.x.crypto.cryptobyte.Cryptobyte.Builder>):Void {
                        _b.value.addUint16LengthPrefixed(new vendor.golang_org.x.crypto.cryptobyte.Cryptobyte.BuilderContinuation(function(_b:Pointer<golang_org.x.crypto.cryptobyte.Cryptobyte.Builder>):Void {
                            _b.value.addUint8LengthPrefixed(new vendor.golang_org.x.crypto.cryptobyte.Cryptobyte.BuilderContinuation(function(_b:Pointer<golang_org.x.crypto.cryptobyte.Cryptobyte.Builder>):Void {
                                _b.value.addBytes(((_m.value._alpnProtocol : Slice<GoByte>)));
                            }));
                        }));
                    }));
                };
            }));
        }));
        _m.value._raw = _b.bytesOrPanic();
        return _m.value._raw;
    }
    public var _raw : Slice<GoUInt8> = new Slice<GoUInt8>().nil();
    public var _alpnProtocol : GoString = (("" : GoString));
    public function new(?_raw:Slice<GoUInt8>, ?_alpnProtocol:GoString) stdgo.internal.Macro.initLocals();
    public function toString() {
        return '{' + Go.string(_raw) + " " + Go.string(_alpnProtocol) + "}";
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_encryptedExtensionsMsg(_raw, _alpnProtocol);
    }
    public function __set__(__tmp__) {
        this._raw = __tmp__._raw;
        this._alpnProtocol = __tmp__._alpnProtocol;
        return this;
    }
}
@:structInit class T_endOfEarlyDataMsg {
    public function _unmarshal(_data:Slice<GoByte>):Bool {
        var _m = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        return _data.length == ((4 : GoInt));
    }
    public function _marshal():Slice<GoByte> {
        var _m = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var _x:Slice<GoUInt8> = new Slice<GoUInt8>(...[for (i in 0 ... ((((4 : GoInt)) : GoInt)).toBasic()) ((0 : GoUInt8))]);
        _x[((0 : GoInt))] = _typeEndOfEarlyData;
        return _x;
    }
    public function new() stdgo.internal.Macro.initLocals();
    public function toString() {
        return "{}";
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_endOfEarlyDataMsg();
    }
    public function __set__(__tmp__) {
        return this;
    }
}
@:structInit class T_keyUpdateMsg {
    public function _unmarshal(_data:Slice<GoByte>):Bool {
        var _m = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        _m.value._raw = _data;
        var _s:vendor.golang_org.x.crypto.cryptobyte.Cryptobyte.String_ = new golang_org.x.crypto.cryptobyte.Cryptobyte.String_(_data).__copy__();
        var _updateRequested:GoUInt8 = ((0 : GoUInt8));
        if (!_s.skip(((4 : GoInt))) || !_s.readUint8(Go.pointer(_updateRequested)) || !_s.empty()) {
            return false;
        };
        if (_updateRequested == ((0 : GoUInt8))) {
            _m.value._updateRequested = false;
        } else if (_updateRequested == ((1 : GoUInt8))) {
            _m.value._updateRequested = true;
        } else {
            return false;
        };
        return true;
    }
    public function _marshal():Slice<GoByte> {
        var _m = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        if (_m.value._raw != null && !_m.value._raw.isNil()) {
            return _m.value._raw;
        };
        var _b:golang_org.x.crypto.cryptobyte.Cryptobyte.Builder = new vendor.golang_org.x.crypto.cryptobyte.Cryptobyte.Builder();
        _b.addUint8(_typeKeyUpdate);
        _b.addUint24LengthPrefixed(new vendor.golang_org.x.crypto.cryptobyte.Cryptobyte.BuilderContinuation(function(_b:Pointer<golang_org.x.crypto.cryptobyte.Cryptobyte.Builder>):Void {
            if (_m.value._updateRequested) {
                _b.value.addUint8(((1 : GoUInt8)));
            } else {
                _b.value.addUint8(((0 : GoUInt8)));
            };
        }));
        _m.value._raw = _b.bytesOrPanic();
        return _m.value._raw;
    }
    public var _raw : Slice<GoUInt8> = new Slice<GoUInt8>().nil();
    public var _updateRequested : Bool = false;
    public function new(?_raw:Slice<GoUInt8>, ?_updateRequested:Bool) stdgo.internal.Macro.initLocals();
    public function toString() {
        return '{' + Go.string(_raw) + " " + Go.string(_updateRequested) + "}";
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_keyUpdateMsg(_raw, _updateRequested);
    }
    public function __set__(__tmp__) {
        this._raw = __tmp__._raw;
        this._updateRequested = __tmp__._updateRequested;
        return this;
    }
}
@:structInit class T_newSessionTicketMsgTLS13 {
    public function _unmarshal(_data:Slice<GoByte>):Bool {
        var _m = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        _m.value = (({ _raw : _data, _lifetime : 0, _ageAdd : 0, _nonce : new Slice<GoUInt8>().nil(), _label : new Slice<GoUInt8>().nil(), _maxEarlyData : 0 } : T_newSessionTicketMsgTLS13)).__copy__();
        var _s:vendor.golang_org.x.crypto.cryptobyte.Cryptobyte.String_ = new golang_org.x.crypto.cryptobyte.Cryptobyte.String_(_data).__copy__();
        var _extensions:golang_org.x.crypto.cryptobyte.Cryptobyte.String_ = new vendor.golang_org.x.crypto.cryptobyte.Cryptobyte.String_();
        if (!_s.skip(((4 : GoInt))) || !_s.readUint32(Go.pointer(_m.value._lifetime)) || !_s.readUint32(Go.pointer(_m.value._ageAdd)) || !_readUint8LengthPrefixed(Go.pointer(_s), Go.pointer(_m.value._nonce)) || !_readUint16LengthPrefixed(Go.pointer(_s), Go.pointer(_m.value._label)) || !_s.readUint16LengthPrefixed(Go.pointer(_extensions)) || !_s.empty()) {
            return false;
        };
        while (!_extensions.empty()) {
            var _extension:GoUInt16 = ((0 : GoUInt16));
            var _extData:golang_org.x.crypto.cryptobyte.Cryptobyte.String_ = new vendor.golang_org.x.crypto.cryptobyte.Cryptobyte.String_();
            if (!_extensions.readUint16(Go.pointer(_extension)) || !_extensions.readUint16LengthPrefixed(Go.pointer(_extData))) {
                return false;
            };
            if (_extension == _extensionEarlyData) {
                if (!_extData.readUint32(Go.pointer(_m.value._maxEarlyData))) {
                    return false;
                };
            } else {
                continue;
            };
            if (!_extData.empty()) {
                return false;
            };
        };
        return true;
    }
    public function _marshal():Slice<GoByte> {
        var _m = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        if (_m.value._raw != null && !_m.value._raw.isNil()) {
            return _m.value._raw;
        };
        var _b:golang_org.x.crypto.cryptobyte.Cryptobyte.Builder = new vendor.golang_org.x.crypto.cryptobyte.Cryptobyte.Builder();
        _b.addUint8(_typeNewSessionTicket);
        _b.addUint24LengthPrefixed(new vendor.golang_org.x.crypto.cryptobyte.Cryptobyte.BuilderContinuation(function(_b:Pointer<golang_org.x.crypto.cryptobyte.Cryptobyte.Builder>):Void {
            _b.value.addUint32(_m.value._lifetime);
            _b.value.addUint32(_m.value._ageAdd);
            _b.value.addUint8LengthPrefixed(new vendor.golang_org.x.crypto.cryptobyte.Cryptobyte.BuilderContinuation(function(_b:Pointer<golang_org.x.crypto.cryptobyte.Cryptobyte.Builder>):Void {
                _b.value.addBytes(_m.value._nonce);
            }));
            _b.value.addUint16LengthPrefixed(new vendor.golang_org.x.crypto.cryptobyte.Cryptobyte.BuilderContinuation(function(_b:Pointer<golang_org.x.crypto.cryptobyte.Cryptobyte.Builder>):Void {
                _b.value.addBytes(_m.value._label);
            }));
            _b.value.addUint16LengthPrefixed(new vendor.golang_org.x.crypto.cryptobyte.Cryptobyte.BuilderContinuation(function(_b:Pointer<golang_org.x.crypto.cryptobyte.Cryptobyte.Builder>):Void {
                if (_m.value._maxEarlyData > ((0 : GoUInt32))) {
                    _b.value.addUint16(_extensionEarlyData);
                    _b.value.addUint16LengthPrefixed(new vendor.golang_org.x.crypto.cryptobyte.Cryptobyte.BuilderContinuation(function(_b:Pointer<golang_org.x.crypto.cryptobyte.Cryptobyte.Builder>):Void {
                        _b.value.addUint32(_m.value._maxEarlyData);
                    }));
                };
            }));
        }));
        _m.value._raw = _b.bytesOrPanic();
        return _m.value._raw;
    }
    public var _raw : Slice<GoUInt8> = new Slice<GoUInt8>().nil();
    public var _lifetime : GoUInt32 = ((0 : GoUInt32));
    public var _ageAdd : GoUInt32 = ((0 : GoUInt32));
    public var _nonce : Slice<GoUInt8> = new Slice<GoUInt8>().nil();
    public var _label : Slice<GoUInt8> = new Slice<GoUInt8>().nil();
    public var _maxEarlyData : GoUInt32 = ((0 : GoUInt32));
    public function new(?_raw:Slice<GoUInt8>, ?_lifetime:GoUInt32, ?_ageAdd:GoUInt32, ?_nonce:Slice<GoUInt8>, ?_label:Slice<GoUInt8>, ?_maxEarlyData:GoUInt32) stdgo.internal.Macro.initLocals();
    public function toString() {
        return '{' + Go.string(_raw) + " " + Go.string(_lifetime) + " " + Go.string(_ageAdd) + " " + Go.string(_nonce) + " " + Go.string(_label) + " " + Go.string(_maxEarlyData) + "}";
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_newSessionTicketMsgTLS13(_raw, _lifetime, _ageAdd, _nonce, _label, _maxEarlyData);
    }
    public function __set__(__tmp__) {
        this._raw = __tmp__._raw;
        this._lifetime = __tmp__._lifetime;
        this._ageAdd = __tmp__._ageAdd;
        this._nonce = __tmp__._nonce;
        this._label = __tmp__._label;
        this._maxEarlyData = __tmp__._maxEarlyData;
        return this;
    }
}
@:structInit class T_certificateRequestMsgTLS13 {
    public function _unmarshal(_data:Slice<GoByte>):Bool {
        var _m = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        _m.value = (({ _raw : _data, _ocspStapling : false, _scts : false, _supportedSignatureAlgorithms : new Slice<SignatureScheme>().nil(), _supportedSignatureAlgorithmsCert : new Slice<SignatureScheme>().nil(), _certificateAuthorities : new Slice<Slice<GoUInt8>>().nil() } : T_certificateRequestMsgTLS13)).__copy__();
        var _s:vendor.golang_org.x.crypto.cryptobyte.Cryptobyte.String_ = new golang_org.x.crypto.cryptobyte.Cryptobyte.String_(_data).__copy__();
        var _context:golang_org.x.crypto.cryptobyte.Cryptobyte.String_ = new vendor.golang_org.x.crypto.cryptobyte.Cryptobyte.String_(), _extensions:golang_org.x.crypto.cryptobyte.Cryptobyte.String_ = new vendor.golang_org.x.crypto.cryptobyte.Cryptobyte.String_();
        if (!_s.skip(((4 : GoInt))) || !_s.readUint8LengthPrefixed(Go.pointer(_context)) || !_context.empty() || !_s.readUint16LengthPrefixed(Go.pointer(_extensions)) || !_s.empty()) {
            return false;
        };
        while (!_extensions.empty()) {
            var _extension:GoUInt16 = ((0 : GoUInt16));
            var _extData:golang_org.x.crypto.cryptobyte.Cryptobyte.String_ = new vendor.golang_org.x.crypto.cryptobyte.Cryptobyte.String_();
            if (!_extensions.readUint16(Go.pointer(_extension)) || !_extensions.readUint16LengthPrefixed(Go.pointer(_extData))) {
                return false;
            };
            if (_extension == _extensionStatusRequest) {
                _m.value._ocspStapling = true;
            } else if (_extension == _extensionSCT) {
                _m.value._scts = true;
            } else if (_extension == _extensionSignatureAlgorithms) {
                var _sigAndAlgs:golang_org.x.crypto.cryptobyte.Cryptobyte.String_ = new vendor.golang_org.x.crypto.cryptobyte.Cryptobyte.String_();
                if (!_extData.readUint16LengthPrefixed(Go.pointer(_sigAndAlgs)) || _sigAndAlgs.empty()) {
                    return false;
                };
                while (!_sigAndAlgs.empty()) {
                    var _sigAndAlg:GoUInt16 = ((0 : GoUInt16));
                    if (!_sigAndAlgs.readUint16(Go.pointer(_sigAndAlg))) {
                        return false;
                    };
                    _m.value._supportedSignatureAlgorithms = _m.value._supportedSignatureAlgorithms.__append__(new SignatureScheme(_sigAndAlg));
                };
            } else if (_extension == _extensionSignatureAlgorithmsCert) {
                var _sigAndAlgs:golang_org.x.crypto.cryptobyte.Cryptobyte.String_ = new vendor.golang_org.x.crypto.cryptobyte.Cryptobyte.String_();
                if (!_extData.readUint16LengthPrefixed(Go.pointer(_sigAndAlgs)) || _sigAndAlgs.empty()) {
                    return false;
                };
                while (!_sigAndAlgs.empty()) {
                    var _sigAndAlg:GoUInt16 = ((0 : GoUInt16));
                    if (!_sigAndAlgs.readUint16(Go.pointer(_sigAndAlg))) {
                        return false;
                    };
                    _m.value._supportedSignatureAlgorithmsCert = _m.value._supportedSignatureAlgorithmsCert.__append__(new SignatureScheme(_sigAndAlg));
                };
            } else if (_extension == _extensionCertificateAuthorities) {
                var _auths:golang_org.x.crypto.cryptobyte.Cryptobyte.String_ = new vendor.golang_org.x.crypto.cryptobyte.Cryptobyte.String_();
                if (!_extData.readUint16LengthPrefixed(Go.pointer(_auths)) || _auths.empty()) {
                    return false;
                };
                while (!_auths.empty()) {
                    var _ca:Slice<GoByte> = new Slice<GoUInt8>().nil();
                    if (!_readUint16LengthPrefixed(Go.pointer(_auths), Go.pointer(_ca)) || _ca.length == ((0 : GoInt))) {
                        return false;
                    };
                    _m.value._certificateAuthorities = _m.value._certificateAuthorities.__append__(_ca);
                };
            } else {
                continue;
            };
            if (!_extData.empty()) {
                return false;
            };
        };
        return true;
    }
    public function _marshal():Slice<GoByte> {
        var _m = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        if (_m.value._raw != null && !_m.value._raw.isNil()) {
            return _m.value._raw;
        };
        var _b:golang_org.x.crypto.cryptobyte.Cryptobyte.Builder = new vendor.golang_org.x.crypto.cryptobyte.Cryptobyte.Builder();
        _b.addUint8(_typeCertificateRequest);
        _b.addUint24LengthPrefixed(new vendor.golang_org.x.crypto.cryptobyte.Cryptobyte.BuilderContinuation(function(_b:Pointer<golang_org.x.crypto.cryptobyte.Cryptobyte.Builder>):Void {
            _b.value.addUint8(((0 : GoUInt8)));
            _b.value.addUint16LengthPrefixed(new vendor.golang_org.x.crypto.cryptobyte.Cryptobyte.BuilderContinuation(function(_b:Pointer<golang_org.x.crypto.cryptobyte.Cryptobyte.Builder>):Void {
                if (_m.value._ocspStapling) {
                    _b.value.addUint16(_extensionStatusRequest);
                    _b.value.addUint16(((0 : GoUInt16)));
                };
                if (_m.value._scts) {
                    _b.value.addUint16(_extensionSCT);
                    _b.value.addUint16(((0 : GoUInt16)));
                };
                if (_m.value._supportedSignatureAlgorithms.length > ((0 : GoInt))) {
                    _b.value.addUint16(_extensionSignatureAlgorithms);
                    _b.value.addUint16LengthPrefixed(new vendor.golang_org.x.crypto.cryptobyte.Cryptobyte.BuilderContinuation(function(_b:Pointer<golang_org.x.crypto.cryptobyte.Cryptobyte.Builder>):Void {
                        _b.value.addUint16LengthPrefixed(new vendor.golang_org.x.crypto.cryptobyte.Cryptobyte.BuilderContinuation(function(_b:Pointer<golang_org.x.crypto.cryptobyte.Cryptobyte.Builder>):Void {
                            for (_sigAlgo in _m.value._supportedSignatureAlgorithms) {
                                _b.value.addUint16(_sigAlgo.__t__);
                            };
                        }));
                    }));
                };
                if (_m.value._supportedSignatureAlgorithmsCert.length > ((0 : GoInt))) {
                    _b.value.addUint16(_extensionSignatureAlgorithmsCert);
                    _b.value.addUint16LengthPrefixed(new vendor.golang_org.x.crypto.cryptobyte.Cryptobyte.BuilderContinuation(function(_b:Pointer<golang_org.x.crypto.cryptobyte.Cryptobyte.Builder>):Void {
                        _b.value.addUint16LengthPrefixed(new vendor.golang_org.x.crypto.cryptobyte.Cryptobyte.BuilderContinuation(function(_b:Pointer<golang_org.x.crypto.cryptobyte.Cryptobyte.Builder>):Void {
                            for (_sigAlgo in _m.value._supportedSignatureAlgorithmsCert) {
                                _b.value.addUint16(_sigAlgo.__t__);
                            };
                        }));
                    }));
                };
                if (_m.value._certificateAuthorities.length > ((0 : GoInt))) {
                    _b.value.addUint16(_extensionCertificateAuthorities);
                    _b.value.addUint16LengthPrefixed(new vendor.golang_org.x.crypto.cryptobyte.Cryptobyte.BuilderContinuation(function(_b:Pointer<golang_org.x.crypto.cryptobyte.Cryptobyte.Builder>):Void {
                        _b.value.addUint16LengthPrefixed(new vendor.golang_org.x.crypto.cryptobyte.Cryptobyte.BuilderContinuation(function(_b:Pointer<golang_org.x.crypto.cryptobyte.Cryptobyte.Builder>):Void {
                            for (_ca in _m.value._certificateAuthorities) {
                                _b.value.addUint16LengthPrefixed(new vendor.golang_org.x.crypto.cryptobyte.Cryptobyte.BuilderContinuation(function(_b:Pointer<golang_org.x.crypto.cryptobyte.Cryptobyte.Builder>):Void {
                                    _b.value.addBytes(_ca);
                                }));
                            };
                        }));
                    }));
                };
            }));
        }));
        _m.value._raw = _b.bytesOrPanic();
        return _m.value._raw;
    }
    public var _raw : Slice<GoUInt8> = new Slice<GoUInt8>().nil();
    public var _ocspStapling : Bool = false;
    public var _scts : Bool = false;
    public var _supportedSignatureAlgorithms : Slice<SignatureScheme> = new Slice<SignatureScheme>().nil();
    public var _supportedSignatureAlgorithmsCert : Slice<SignatureScheme> = new Slice<SignatureScheme>().nil();
    public var _certificateAuthorities : Slice<Slice<GoUInt8>> = new Slice<Slice<GoUInt8>>().nil();
    public function new(?_raw:Slice<GoUInt8>, ?_ocspStapling:Bool, ?_scts:Bool, ?_supportedSignatureAlgorithms:Slice<SignatureScheme>, ?_supportedSignatureAlgorithmsCert:Slice<SignatureScheme>, ?_certificateAuthorities:Slice<Slice<GoUInt8>>) stdgo.internal.Macro.initLocals();
    public function toString() {
        return '{' + Go.string(_raw) + " " + Go.string(_ocspStapling) + " " + Go.string(_scts) + " " + Go.string(_supportedSignatureAlgorithms) + " " + Go.string(_supportedSignatureAlgorithmsCert) + " " + Go.string(_certificateAuthorities) + "}";
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_certificateRequestMsgTLS13(_raw, _ocspStapling, _scts, _supportedSignatureAlgorithms, _supportedSignatureAlgorithmsCert, _certificateAuthorities);
    }
    public function __set__(__tmp__) {
        this._raw = __tmp__._raw;
        this._ocspStapling = __tmp__._ocspStapling;
        this._scts = __tmp__._scts;
        this._supportedSignatureAlgorithms = __tmp__._supportedSignatureAlgorithms;
        this._supportedSignatureAlgorithmsCert = __tmp__._supportedSignatureAlgorithmsCert;
        this._certificateAuthorities = __tmp__._certificateAuthorities;
        return this;
    }
}
@:structInit class T_certificateMsg {
    public function _unmarshal(_data:Slice<GoByte>):Bool {
        var _m = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        if (_data.length < ((7 : GoInt))) {
            return false;
        };
        _m.value._raw = _data;
        var _certsLen:GoUInt32 = (((_data[((4 : GoInt))] : GoUInt32)) << ((16 : GoUnTypedInt))) | (((_data[((5 : GoInt))] : GoUInt32)) << ((8 : GoUnTypedInt))) | ((_data[((6 : GoInt))] : GoUInt32));
        if (((_data.length : GoUInt32)) != _certsLen + ((7 : GoUInt32))) {
            return false;
        };
        var _numCerts:GoInt = ((0 : GoInt));
        var _d:Slice<GoUInt8> = _data.__slice__(((7 : GoInt)));
        while (_certsLen > ((0 : GoUInt32))) {
            if (_d.length < ((4 : GoInt))) {
                return false;
            };
            var _certLen:GoUInt32 = (((_d[((0 : GoInt))] : GoUInt32)) << ((16 : GoUnTypedInt))) | (((_d[((1 : GoInt))] : GoUInt32)) << ((8 : GoUnTypedInt))) | ((_d[((2 : GoInt))] : GoUInt32));
            if (((_d.length : GoUInt32)) < ((3 : GoUInt32)) + _certLen) {
                return false;
            };
            _d = _d.__slice__(((3 : GoUInt32)) + _certLen);
            _certsLen = _certsLen - (((3 : GoUInt32)) + _certLen);
            _numCerts++;
        };
        _m.value._certificates = new Slice<Slice<GoUInt8>>(...[for (i in 0 ... ((_numCerts : GoInt)).toBasic()) new Slice<GoUInt8>().nil()]);
        _d = _data.__slice__(((7 : GoInt)));
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < _numCerts, _i++, {
                var _certLen:GoUInt32 = (((_d[((0 : GoInt))] : GoUInt32)) << ((16 : GoUnTypedInt))) | (((_d[((1 : GoInt))] : GoUInt32)) << ((8 : GoUnTypedInt))) | ((_d[((2 : GoInt))] : GoUInt32));
                _m.value._certificates[_i] = _d.__slice__(((3 : GoInt)), ((3 : GoUInt32)) + _certLen);
                _d = _d.__slice__(((3 : GoUInt32)) + _certLen);
            });
        };
        return true;
    }
    public function _marshal():Slice<GoByte> {
        var _m = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var _x:Slice<GoByte> = new Slice<GoUInt8>().nil();
        if (_m.value._raw != null && !_m.value._raw.isNil()) {
            return _m.value._raw;
        };
        var _i:GoInt = ((0 : GoInt));
        for (_slice in _m.value._certificates) {
            _i = _i + (_slice.length);
        };
        var _length:GoInt = ((3 : GoInt)) + ((3 : GoInt)) * _m.value._certificates.length + _i;
        _x = new Slice<GoUInt8>(...[for (i in 0 ... ((((4 : GoInt)) + _length : GoInt)).toBasic()) ((0 : GoUInt8))]);
        _x[((0 : GoInt))] = _typeCertificate;
        _x[((1 : GoInt))] = (((_length >> ((16 : GoUnTypedInt))) : GoUInt8));
        _x[((2 : GoInt))] = (((_length >> ((8 : GoUnTypedInt))) : GoUInt8));
        _x[((3 : GoInt))] = ((_length : GoUInt8));
        var _certificateOctets:GoInt = _length - ((3 : GoInt));
        _x[((4 : GoInt))] = (((_certificateOctets >> ((16 : GoUnTypedInt))) : GoUInt8));
        _x[((5 : GoInt))] = (((_certificateOctets >> ((8 : GoUnTypedInt))) : GoUInt8));
        _x[((6 : GoInt))] = ((_certificateOctets : GoUInt8));
        var _y:Slice<GoUInt8> = _x.__slice__(((7 : GoInt)));
        for (_slice in _m.value._certificates) {
            _y[((0 : GoInt))] = (((_slice.length >> ((16 : GoUnTypedInt))) : GoUInt8));
            _y[((1 : GoInt))] = (((_slice.length >> ((8 : GoUnTypedInt))) : GoUInt8));
            _y[((2 : GoInt))] = ((_slice.length : GoUInt8));
            Go.copy(_y.__slice__(((3 : GoInt))), _slice);
            _y = _y.__slice__(((3 : GoInt)) + _slice.length);
        };
        _m.value._raw = _x;
        return _x;
    }
    public var _raw : Slice<GoUInt8> = new Slice<GoUInt8>().nil();
    public var _certificates : Slice<Slice<GoUInt8>> = new Slice<Slice<GoUInt8>>().nil();
    public function new(?_raw:Slice<GoUInt8>, ?_certificates:Slice<Slice<GoUInt8>>) stdgo.internal.Macro.initLocals();
    public function toString() {
        return '{' + Go.string(_raw) + " " + Go.string(_certificates) + "}";
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_certificateMsg(_raw, _certificates);
    }
    public function __set__(__tmp__) {
        this._raw = __tmp__._raw;
        this._certificates = __tmp__._certificates;
        return this;
    }
}
@:structInit class T_certificateMsgTLS13 {
    public function _unmarshal(_data:Slice<GoByte>):Bool {
        var _m = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        _m.value = (({ _raw : _data, _certificate : new Certificate(), _ocspStapling : false, _scts : false } : T_certificateMsgTLS13)).__copy__();
        var _s:vendor.golang_org.x.crypto.cryptobyte.Cryptobyte.String_ = new golang_org.x.crypto.cryptobyte.Cryptobyte.String_(_data).__copy__();
        var _context:golang_org.x.crypto.cryptobyte.Cryptobyte.String_ = new vendor.golang_org.x.crypto.cryptobyte.Cryptobyte.String_();
        if (!_s.skip(((4 : GoInt))) || !_s.readUint8LengthPrefixed(Go.pointer(_context)) || !_context.empty() || !_unmarshalCertificate(Go.pointer(_s), Go.pointer(_m.value._certificate)) || !_s.empty()) {
            return false;
        };
        _m.value._scts = _m.value._certificate.signedCertificateTimestamps != null && !_m.value._certificate.signedCertificateTimestamps.isNil();
        _m.value._ocspStapling = _m.value._certificate.ocspstaple != null && !_m.value._certificate.ocspstaple.isNil();
        return true;
    }
    public function _marshal():Slice<GoByte> {
        var _m = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        if (_m.value._raw != null && !_m.value._raw.isNil()) {
            return _m.value._raw;
        };
        var _b:golang_org.x.crypto.cryptobyte.Cryptobyte.Builder = new vendor.golang_org.x.crypto.cryptobyte.Cryptobyte.Builder();
        _b.addUint8(_typeCertificate);
        _b.addUint24LengthPrefixed(new vendor.golang_org.x.crypto.cryptobyte.Cryptobyte.BuilderContinuation(function(_b:Pointer<golang_org.x.crypto.cryptobyte.Cryptobyte.Builder>):Void {
            _b.value.addUint8(((0 : GoUInt8)));
            var _certificate:Certificate = _m.value._certificate.__copy__();
            if (!_m.value._ocspStapling) {
                _certificate.ocspstaple = new Slice<GoUInt8>().nil();
            };
            if (!_m.value._scts) {
                _certificate.signedCertificateTimestamps = new Slice<Slice<GoUInt8>>().nil();
            };
            _marshalCertificate(_b, _certificate.__copy__());
        }));
        _m.value._raw = _b.bytesOrPanic();
        return _m.value._raw;
    }
    public var _raw : Slice<GoUInt8> = new Slice<GoUInt8>().nil();
    public var _certificate : Certificate = new Certificate();
    public var _ocspStapling : Bool = false;
    public var _scts : Bool = false;
    public function new(?_raw:Slice<GoUInt8>, ?_certificate:Certificate, ?_ocspStapling:Bool, ?_scts:Bool) stdgo.internal.Macro.initLocals();
    public function toString() {
        return '{' + Go.string(_raw) + " " + Go.string(_certificate) + " " + Go.string(_ocspStapling) + " " + Go.string(_scts) + "}";
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_certificateMsgTLS13(_raw, _certificate, _ocspStapling, _scts);
    }
    public function __set__(__tmp__) {
        this._raw = __tmp__._raw;
        this._certificate = __tmp__._certificate;
        this._ocspStapling = __tmp__._ocspStapling;
        this._scts = __tmp__._scts;
        return this;
    }
}
@:structInit class T_serverKeyExchangeMsg {
    public function _unmarshal(_data:Slice<GoByte>):Bool {
        var _m = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        _m.value._raw = _data;
        if (_data.length < ((4 : GoInt))) {
            return false;
        };
        _m.value._key = _data.__slice__(((4 : GoInt)));
        return true;
    }
    public function _marshal():Slice<GoByte> {
        var _m = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        if (_m.value._raw != null && !_m.value._raw.isNil()) {
            return _m.value._raw;
        };
        var _length:GoInt = _m.value._key.length;
        var _x:Slice<GoUInt8> = new Slice<GoUInt8>(...[for (i in 0 ... ((_length + ((4 : GoInt)) : GoInt)).toBasic()) ((0 : GoUInt8))]);
        _x[((0 : GoInt))] = _typeServerKeyExchange;
        _x[((1 : GoInt))] = (((_length >> ((16 : GoUnTypedInt))) : GoUInt8));
        _x[((2 : GoInt))] = (((_length >> ((8 : GoUnTypedInt))) : GoUInt8));
        _x[((3 : GoInt))] = ((_length : GoUInt8));
        Go.copy(_x.__slice__(((4 : GoInt))), _m.value._key);
        _m.value._raw = _x;
        return _x;
    }
    public var _raw : Slice<GoUInt8> = new Slice<GoUInt8>().nil();
    public var _key : Slice<GoUInt8> = new Slice<GoUInt8>().nil();
    public function new(?_raw:Slice<GoUInt8>, ?_key:Slice<GoUInt8>) stdgo.internal.Macro.initLocals();
    public function toString() {
        return '{' + Go.string(_raw) + " " + Go.string(_key) + "}";
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_serverKeyExchangeMsg(_raw, _key);
    }
    public function __set__(__tmp__) {
        this._raw = __tmp__._raw;
        this._key = __tmp__._key;
        return this;
    }
}
@:structInit class T_certificateStatusMsg {
    public function _unmarshal(_data:Slice<GoByte>):Bool {
        var _m = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        _m.value._raw = _data;
        var _s:vendor.golang_org.x.crypto.cryptobyte.Cryptobyte.String_ = new golang_org.x.crypto.cryptobyte.Cryptobyte.String_(_data).__copy__();
        var _statusType:GoUInt8 = ((0 : GoUInt8));
        if (!_s.skip(((4 : GoInt))) || !_s.readUint8(Go.pointer(_statusType)) || _statusType != _statusTypeOCSP || !_readUint24LengthPrefixed(Go.pointer(_s), Go.pointer(_m.value._response)) || _m.value._response.length == ((0 : GoInt)) || !_s.empty()) {
            return false;
        };
        return true;
    }
    public function _marshal():Slice<GoByte> {
        var _m = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        if (_m.value._raw != null && !_m.value._raw.isNil()) {
            return _m.value._raw;
        };
        var _b:golang_org.x.crypto.cryptobyte.Cryptobyte.Builder = new vendor.golang_org.x.crypto.cryptobyte.Cryptobyte.Builder();
        _b.addUint8(_typeCertificateStatus);
        _b.addUint24LengthPrefixed(new vendor.golang_org.x.crypto.cryptobyte.Cryptobyte.BuilderContinuation(function(_b:Pointer<golang_org.x.crypto.cryptobyte.Cryptobyte.Builder>):Void {
            _b.value.addUint8(_statusTypeOCSP);
            _b.value.addUint24LengthPrefixed(new vendor.golang_org.x.crypto.cryptobyte.Cryptobyte.BuilderContinuation(function(_b:Pointer<golang_org.x.crypto.cryptobyte.Cryptobyte.Builder>):Void {
                _b.value.addBytes(_m.value._response);
            }));
        }));
        _m.value._raw = _b.bytesOrPanic();
        return _m.value._raw;
    }
    public var _raw : Slice<GoUInt8> = new Slice<GoUInt8>().nil();
    public var _response : Slice<GoUInt8> = new Slice<GoUInt8>().nil();
    public function new(?_raw:Slice<GoUInt8>, ?_response:Slice<GoUInt8>) stdgo.internal.Macro.initLocals();
    public function toString() {
        return '{' + Go.string(_raw) + " " + Go.string(_response) + "}";
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_certificateStatusMsg(_raw, _response);
    }
    public function __set__(__tmp__) {
        this._raw = __tmp__._raw;
        this._response = __tmp__._response;
        return this;
    }
}
@:structInit class T_serverHelloDoneMsg {
    public function _unmarshal(_data:Slice<GoByte>):Bool {
        var _m = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        return _data.length == ((4 : GoInt));
    }
    public function _marshal():Slice<GoByte> {
        var _m = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var _x:Slice<GoUInt8> = new Slice<GoUInt8>(...[for (i in 0 ... ((((4 : GoInt)) : GoInt)).toBasic()) ((0 : GoUInt8))]);
        _x[((0 : GoInt))] = _typeServerHelloDone;
        return _x;
    }
    public function new() stdgo.internal.Macro.initLocals();
    public function toString() {
        return "{}";
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_serverHelloDoneMsg();
    }
    public function __set__(__tmp__) {
        return this;
    }
}
@:structInit class T_clientKeyExchangeMsg {
    public function _unmarshal(_data:Slice<GoByte>):Bool {
        var _m = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        _m.value._raw = _data;
        if (_data.length < ((4 : GoInt))) {
            return false;
        };
        var _l:GoInt = (((_data[((1 : GoInt))] : GoInt)) << ((16 : GoUnTypedInt))) | (((_data[((2 : GoInt))] : GoInt)) << ((8 : GoUnTypedInt))) | ((_data[((3 : GoInt))] : GoInt));
        if (_l != _data.length - ((4 : GoInt))) {
            return false;
        };
        _m.value._ciphertext = _data.__slice__(((4 : GoInt)));
        return true;
    }
    public function _marshal():Slice<GoByte> {
        var _m = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        if (_m.value._raw != null && !_m.value._raw.isNil()) {
            return _m.value._raw;
        };
        var _length:GoInt = _m.value._ciphertext.length;
        var _x:Slice<GoUInt8> = new Slice<GoUInt8>(...[for (i in 0 ... ((_length + ((4 : GoInt)) : GoInt)).toBasic()) ((0 : GoUInt8))]);
        _x[((0 : GoInt))] = _typeClientKeyExchange;
        _x[((1 : GoInt))] = (((_length >> ((16 : GoUnTypedInt))) : GoUInt8));
        _x[((2 : GoInt))] = (((_length >> ((8 : GoUnTypedInt))) : GoUInt8));
        _x[((3 : GoInt))] = ((_length : GoUInt8));
        Go.copy(_x.__slice__(((4 : GoInt))), _m.value._ciphertext);
        _m.value._raw = _x;
        return _x;
    }
    public var _raw : Slice<GoUInt8> = new Slice<GoUInt8>().nil();
    public var _ciphertext : Slice<GoUInt8> = new Slice<GoUInt8>().nil();
    public function new(?_raw:Slice<GoUInt8>, ?_ciphertext:Slice<GoUInt8>) stdgo.internal.Macro.initLocals();
    public function toString() {
        return '{' + Go.string(_raw) + " " + Go.string(_ciphertext) + "}";
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_clientKeyExchangeMsg(_raw, _ciphertext);
    }
    public function __set__(__tmp__) {
        this._raw = __tmp__._raw;
        this._ciphertext = __tmp__._ciphertext;
        return this;
    }
}
@:structInit class T_finishedMsg {
    public function _unmarshal(_data:Slice<GoByte>):Bool {
        var _m = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        _m.value._raw = _data;
        var _s:vendor.golang_org.x.crypto.cryptobyte.Cryptobyte.String_ = new golang_org.x.crypto.cryptobyte.Cryptobyte.String_(_data).__copy__();
        return _s.skip(((1 : GoInt))) && _readUint24LengthPrefixed(Go.pointer(_s), Go.pointer(_m.value._verifyData)) && _s.empty();
    }
    public function _marshal():Slice<GoByte> {
        var _m = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        if (_m.value._raw != null && !_m.value._raw.isNil()) {
            return _m.value._raw;
        };
        var _b:golang_org.x.crypto.cryptobyte.Cryptobyte.Builder = new vendor.golang_org.x.crypto.cryptobyte.Cryptobyte.Builder();
        _b.addUint8(_typeFinished);
        _b.addUint24LengthPrefixed(new vendor.golang_org.x.crypto.cryptobyte.Cryptobyte.BuilderContinuation(function(_b:Pointer<golang_org.x.crypto.cryptobyte.Cryptobyte.Builder>):Void {
            _b.value.addBytes(_m.value._verifyData);
        }));
        _m.value._raw = _b.bytesOrPanic();
        return _m.value._raw;
    }
    public var _raw : Slice<GoUInt8> = new Slice<GoUInt8>().nil();
    public var _verifyData : Slice<GoUInt8> = new Slice<GoUInt8>().nil();
    public function new(?_raw:Slice<GoUInt8>, ?_verifyData:Slice<GoUInt8>) stdgo.internal.Macro.initLocals();
    public function toString() {
        return '{' + Go.string(_raw) + " " + Go.string(_verifyData) + "}";
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_finishedMsg(_raw, _verifyData);
    }
    public function __set__(__tmp__) {
        this._raw = __tmp__._raw;
        this._verifyData = __tmp__._verifyData;
        return this;
    }
}
@:structInit class T_certificateRequestMsg {
    public function _unmarshal(_data:Slice<GoByte>):Bool {
        var _m = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        _m.value._raw = _data;
        if (_data.length < ((5 : GoInt))) {
            return false;
        };
        var _length:GoUInt32 = (((_data[((1 : GoInt))] : GoUInt32)) << ((16 : GoUnTypedInt))) | (((_data[((2 : GoInt))] : GoUInt32)) << ((8 : GoUnTypedInt))) | ((_data[((3 : GoInt))] : GoUInt32));
        if (((_data.length : GoUInt32)) - ((4 : GoUInt32)) != _length) {
            return false;
        };
        var _numCertTypes:GoInt = ((_data[((4 : GoInt))] : GoInt));
        _data = _data.__slice__(((5 : GoInt)));
        if (_numCertTypes == ((0 : GoInt)) || _data.length <= _numCertTypes) {
            return false;
        };
        _m.value._certificateTypes = new Slice<GoUInt8>(...[for (i in 0 ... ((_numCertTypes : GoInt)).toBasic()) ((0 : GoUInt8))]);
        if (Go.copy(_m.value._certificateTypes, _data) != _numCertTypes) {
            return false;
        };
        _data = _data.__slice__(_numCertTypes);
        if (_m.value._hasSignatureAlgorithm) {
            if (_data.length < ((2 : GoInt))) {
                return false;
            };
            var _sigAndHashLen:GoUInt16 = (((_data[((0 : GoInt))] : GoUInt16)) << ((8 : GoUnTypedInt))) | ((_data[((1 : GoInt))] : GoUInt16));
            _data = _data.__slice__(((2 : GoInt)));
            if (_sigAndHashLen & ((1 : GoUInt16)) != ((0 : GoUInt16))) {
                return false;
            };
            if (_data.length < ((_sigAndHashLen : GoInt))) {
                return false;
            };
            var _numSigAlgos:GoUInt16 = _sigAndHashLen / ((2 : GoUInt16));
            _m.value._supportedSignatureAlgorithms = new Slice<SignatureScheme>(...[for (i in 0 ... ((_numSigAlgos : GoInt)).toBasic()) new SignatureScheme()]);
            {
                var _i;
                for (_obj in _m.value._supportedSignatureAlgorithms.keyValueIterator()) {
                    _i = _obj.key;
                    _m.value._supportedSignatureAlgorithms[_i] = new SignatureScheme((new SignatureScheme(new SignatureScheme(_data[((0 : GoInt))]).__t__ << ((8 : GoUnTypedInt)))).__t__ | new SignatureScheme(_data[((1 : GoInt))]).__t__);
                    _data = _data.__slice__(((2 : GoInt)));
                };
            };
        };
        if (_data.length < ((2 : GoInt))) {
            return false;
        };
        var _casLength:GoUInt16 = (((_data[((0 : GoInt))] : GoUInt16)) << ((8 : GoUnTypedInt))) | ((_data[((1 : GoInt))] : GoUInt16));
        _data = _data.__slice__(((2 : GoInt)));
        if (_data.length < ((_casLength : GoInt))) {
            return false;
        };
        var _cas:Slice<GoUInt8> = new Slice<GoUInt8>(...[for (i in 0 ... ((_casLength : GoInt)).toBasic()) ((0 : GoUInt8))]);
        Go.copy(_cas, _data);
        _data = _data.__slice__(_casLength);
        _m.value._certificateAuthorities = new Slice<Slice<GoUInt8>>().nil();
        while (_cas.length > ((0 : GoInt))) {
            if (_cas.length < ((2 : GoInt))) {
                return false;
            };
            var _caLen:GoUInt16 = (((_cas[((0 : GoInt))] : GoUInt16)) << ((8 : GoUnTypedInt))) | ((_cas[((1 : GoInt))] : GoUInt16));
            _cas = _cas.__slice__(((2 : GoInt)));
            if (_cas.length < ((_caLen : GoInt))) {
                return false;
            };
            _m.value._certificateAuthorities = _m.value._certificateAuthorities.__append__(_cas.__slice__(0, _caLen));
            _cas = _cas.__slice__(_caLen);
        };
        return _data.length == ((0 : GoInt));
    }
    public function _marshal():Slice<GoByte> {
        var _m = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var _x:Slice<GoByte> = new Slice<GoUInt8>().nil();
        if (_m.value._raw != null && !_m.value._raw.isNil()) {
            return _m.value._raw;
        };
        var _length:GoInt = ((1 : GoInt)) + _m.value._certificateTypes.length + ((2 : GoInt));
        var _casLength:GoInt = ((0 : GoInt));
        for (_ca in _m.value._certificateAuthorities) {
            _casLength = _casLength + (((2 : GoInt)) + _ca.length);
        };
        _length = _length + (_casLength);
        if (_m.value._hasSignatureAlgorithm) {
            _length = _length + (((2 : GoInt)) + ((2 : GoInt)) * _m.value._supportedSignatureAlgorithms.length);
        };
        _x = new Slice<GoUInt8>(...[for (i in 0 ... ((((4 : GoInt)) + _length : GoInt)).toBasic()) ((0 : GoUInt8))]);
        _x[((0 : GoInt))] = _typeCertificateRequest;
        _x[((1 : GoInt))] = (((_length >> ((16 : GoUnTypedInt))) : GoUInt8));
        _x[((2 : GoInt))] = (((_length >> ((8 : GoUnTypedInt))) : GoUInt8));
        _x[((3 : GoInt))] = ((_length : GoUInt8));
        _x[((4 : GoInt))] = ((_m.value._certificateTypes.length : GoUInt8));
        Go.copy(_x.__slice__(((5 : GoInt))), _m.value._certificateTypes);
        var _y:Slice<GoUInt8> = _x.__slice__(((5 : GoInt)) + _m.value._certificateTypes.length);
        if (_m.value._hasSignatureAlgorithm) {
            var _n:GoInt = _m.value._supportedSignatureAlgorithms.length * ((2 : GoInt));
            _y[((0 : GoInt))] = (((_n >> ((8 : GoUnTypedInt))) : GoUInt8));
            _y[((1 : GoInt))] = ((_n : GoUInt8));
            _y = _y.__slice__(((2 : GoInt)));
            for (_sigAlgo in _m.value._supportedSignatureAlgorithms) {
                _y[((0 : GoInt))] = (new SignatureScheme(_sigAlgo.__t__ >> ((8 : GoUnTypedInt)))).__t__;
                _y[((1 : GoInt))] = _sigAlgo.__t__;
                _y = _y.__slice__(((2 : GoInt)));
            };
        };
        _y[((0 : GoInt))] = (((_casLength >> ((8 : GoUnTypedInt))) : GoUInt8));
        _y[((1 : GoInt))] = ((_casLength : GoUInt8));
        _y = _y.__slice__(((2 : GoInt)));
        for (_ca in _m.value._certificateAuthorities) {
            _y[((0 : GoInt))] = (((_ca.length >> ((8 : GoUnTypedInt))) : GoUInt8));
            _y[((1 : GoInt))] = ((_ca.length : GoUInt8));
            _y = _y.__slice__(((2 : GoInt)));
            Go.copy(_y, _ca);
            _y = _y.__slice__(_ca.length);
        };
        _m.value._raw = _x;
        return _x;
    }
    public var _raw : Slice<GoUInt8> = new Slice<GoUInt8>().nil();
    public var _hasSignatureAlgorithm : Bool = false;
    public var _certificateTypes : Slice<GoUInt8> = new Slice<GoUInt8>().nil();
    public var _supportedSignatureAlgorithms : Slice<SignatureScheme> = new Slice<SignatureScheme>().nil();
    public var _certificateAuthorities : Slice<Slice<GoUInt8>> = new Slice<Slice<GoUInt8>>().nil();
    public function new(?_raw:Slice<GoUInt8>, ?_hasSignatureAlgorithm:Bool, ?_certificateTypes:Slice<GoUInt8>, ?_supportedSignatureAlgorithms:Slice<SignatureScheme>, ?_certificateAuthorities:Slice<Slice<GoUInt8>>) stdgo.internal.Macro.initLocals();
    public function toString() {
        return '{' + Go.string(_raw) + " " + Go.string(_hasSignatureAlgorithm) + " " + Go.string(_certificateTypes) + " " + Go.string(_supportedSignatureAlgorithms) + " " + Go.string(_certificateAuthorities) + "}";
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_certificateRequestMsg(_raw, _hasSignatureAlgorithm, _certificateTypes, _supportedSignatureAlgorithms, _certificateAuthorities);
    }
    public function __set__(__tmp__) {
        this._raw = __tmp__._raw;
        this._hasSignatureAlgorithm = __tmp__._hasSignatureAlgorithm;
        this._certificateTypes = __tmp__._certificateTypes;
        this._supportedSignatureAlgorithms = __tmp__._supportedSignatureAlgorithms;
        this._certificateAuthorities = __tmp__._certificateAuthorities;
        return this;
    }
}
@:structInit class T_certificateVerifyMsg {
    public function _unmarshal(_data:Slice<GoByte>):Bool {
        var _m = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        _m.value._raw = _data;
        var _s:vendor.golang_org.x.crypto.cryptobyte.Cryptobyte.String_ = new golang_org.x.crypto.cryptobyte.Cryptobyte.String_(_data).__copy__();
        if (!_s.skip(((4 : GoInt)))) {
            return false;
        };
        if (_m.value._hasSignatureAlgorithm) {
            if (!_s.readUint16(new Pointer<GoUInt16>(() -> Go.pointer(_m.value._signatureAlgorithm).value.__t__, v -> (Go.pointer(_m.value._signatureAlgorithm).value = new SignatureScheme(v)).__t__))) {
                return false;
            };
        };
        return _readUint16LengthPrefixed(Go.pointer(_s), Go.pointer(_m.value._signature)) && _s.empty();
    }
    public function _marshal():Slice<GoByte> {
        var _m = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var _x:Slice<GoByte> = new Slice<GoUInt8>().nil();
        if (_m.value._raw != null && !_m.value._raw.isNil()) {
            return _m.value._raw;
        };
        var _b:golang_org.x.crypto.cryptobyte.Cryptobyte.Builder = new vendor.golang_org.x.crypto.cryptobyte.Cryptobyte.Builder();
        _b.addUint8(_typeCertificateVerify);
        _b.addUint24LengthPrefixed(new vendor.golang_org.x.crypto.cryptobyte.Cryptobyte.BuilderContinuation(function(_b:Pointer<golang_org.x.crypto.cryptobyte.Cryptobyte.Builder>):Void {
            if (_m.value._hasSignatureAlgorithm) {
                _b.value.addUint16(_m.value._signatureAlgorithm.__t__);
            };
            _b.value.addUint16LengthPrefixed(new vendor.golang_org.x.crypto.cryptobyte.Cryptobyte.BuilderContinuation(function(_b:Pointer<golang_org.x.crypto.cryptobyte.Cryptobyte.Builder>):Void {
                _b.value.addBytes(_m.value._signature);
            }));
        }));
        _m.value._raw = _b.bytesOrPanic();
        return _m.value._raw;
    }
    public var _raw : Slice<GoUInt8> = new Slice<GoUInt8>().nil();
    public var _hasSignatureAlgorithm : Bool = false;
    public var _signatureAlgorithm : SignatureScheme = new SignatureScheme();
    public var _signature : Slice<GoUInt8> = new Slice<GoUInt8>().nil();
    public function new(?_raw:Slice<GoUInt8>, ?_hasSignatureAlgorithm:Bool, ?_signatureAlgorithm:SignatureScheme, ?_signature:Slice<GoUInt8>) stdgo.internal.Macro.initLocals();
    public function toString() {
        return '{' + Go.string(_raw) + " " + Go.string(_hasSignatureAlgorithm) + " " + Go.string(_signatureAlgorithm) + " " + Go.string(_signature) + "}";
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_certificateVerifyMsg(_raw, _hasSignatureAlgorithm, _signatureAlgorithm, _signature);
    }
    public function __set__(__tmp__) {
        this._raw = __tmp__._raw;
        this._hasSignatureAlgorithm = __tmp__._hasSignatureAlgorithm;
        this._signatureAlgorithm = __tmp__._signatureAlgorithm;
        this._signature = __tmp__._signature;
        return this;
    }
}
@:structInit class T_newSessionTicketMsg {
    public function _unmarshal(_data:Slice<GoByte>):Bool {
        var _m = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        _m.value._raw = _data;
        if (_data.length < ((10 : GoInt))) {
            return false;
        };
        var _length:GoUInt32 = (((_data[((1 : GoInt))] : GoUInt32)) << ((16 : GoUnTypedInt))) | (((_data[((2 : GoInt))] : GoUInt32)) << ((8 : GoUnTypedInt))) | ((_data[((3 : GoInt))] : GoUInt32));
        if (((_data.length : GoUInt32)) - ((4 : GoUInt32)) != _length) {
            return false;
        };
        var _ticketLen:GoInt = (((_data[((8 : GoInt))] : GoInt)) << ((8 : GoUnTypedInt))) + ((_data[((9 : GoInt))] : GoInt));
        if (_data.length - ((10 : GoInt)) != _ticketLen) {
            return false;
        };
        _m.value._ticket = _data.__slice__(((10 : GoInt)));
        return true;
    }
    public function _marshal():Slice<GoByte> {
        var _m = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var _x:Slice<GoByte> = new Slice<GoUInt8>().nil();
        if (_m.value._raw != null && !_m.value._raw.isNil()) {
            return _m.value._raw;
        };
        var _ticketLen:GoInt = _m.value._ticket.length;
        var _length:GoInt = ((2 : GoUnTypedInt)) + ((4 : GoUnTypedInt)) + _ticketLen;
        _x = new Slice<GoUInt8>(...[for (i in 0 ... ((((4 : GoInt)) + _length : GoInt)).toBasic()) ((0 : GoUInt8))]);
        _x[((0 : GoInt))] = _typeNewSessionTicket;
        _x[((1 : GoInt))] = (((_length >> ((16 : GoUnTypedInt))) : GoUInt8));
        _x[((2 : GoInt))] = (((_length >> ((8 : GoUnTypedInt))) : GoUInt8));
        _x[((3 : GoInt))] = ((_length : GoUInt8));
        _x[((8 : GoInt))] = (((_ticketLen >> ((8 : GoUnTypedInt))) : GoUInt8));
        _x[((9 : GoInt))] = ((_ticketLen : GoUInt8));
        Go.copy(_x.__slice__(((10 : GoInt))), _m.value._ticket);
        _m.value._raw = _x;
        return _x;
    }
    public var _raw : Slice<GoUInt8> = new Slice<GoUInt8>().nil();
    public var _ticket : Slice<GoUInt8> = new Slice<GoUInt8>().nil();
    public function new(?_raw:Slice<GoUInt8>, ?_ticket:Slice<GoUInt8>) stdgo.internal.Macro.initLocals();
    public function toString() {
        return '{' + Go.string(_raw) + " " + Go.string(_ticket) + "}";
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_newSessionTicketMsg(_raw, _ticket);
    }
    public function __set__(__tmp__) {
        this._raw = __tmp__._raw;
        this._ticket = __tmp__._ticket;
        return this;
    }
}
@:structInit class T_helloRequestMsg {
    public function _unmarshal(_data:Slice<GoByte>):Bool {
        return _data.length == ((4 : GoInt));
    }
    public function _marshal():Slice<GoByte> {
        return new Slice<GoUInt8>(_typeHelloRequest, ((0 : GoUInt8)), ((0 : GoUInt8)), ((0 : GoUInt8)));
    }
    public function new() stdgo.internal.Macro.initLocals();
    public function toString() {
        return "{}";
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_helloRequestMsg();
    }
    public function __set__(__tmp__) {
        return this;
    }
}
@:structInit class T_serverHandshakeState {
    public function _sendFinished(_out:Slice<GoByte>):Error {
        var _hs = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var _c:Pointer<Conn> = _hs.value._c;
        {
            var __tmp__ = _c.value._writeRecord(_recordTypeChangeCipherSpec, new Slice<GoUInt8>(((1 : GoUInt8)))), _:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return _err;
            };
        };
        var _finished:Pointer<T_finishedMsg> = Go.pointer(new T_finishedMsg());
        _finished.value._verifyData = _hs.value._finishedHash._serverSum(_hs.value._masterSecret);
        _hs.value._finishedHash.write(_finished.value._marshal());
        {
            var __tmp__ = _c.value._writeRecord(_recordTypeHandshake, _finished.value._marshal()), _:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return _err;
            };
        };
        Go.copy(_out, _finished.value._verifyData);
        return ((null : stdgo.Error));
    }
    public function _sendSessionTicket():Error {
        var _hs = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        if (!_hs.value._hello.value._ticketSupported) {
            return ((null : stdgo.Error));
        };
        var _c:Pointer<Conn> = _hs.value._c;
        var _m:Pointer<T_newSessionTicketMsg> = Go.pointer(new T_newSessionTicketMsg());
        var _createdAt:GoUInt64 = ((_c.value._config.value._time().unix() : GoUInt64));
        if (_hs.value._sessionState != null && !_hs.value._sessionState.isNil()) {
            _createdAt = _hs.value._sessionState.value._createdAt;
        };
        var _certsFromClient:Slice<Slice<GoByte>> = new Slice<Slice<GoUInt8>>().nil();
        for (_cert in _c.value._peerCertificates) {
            _certsFromClient = _certsFromClient.__append__(_cert.value.raw);
        };
        var _state:T_sessionState = (({ _vers : _c.value._vers, _cipherSuite : _hs.value._suite.value._id, _createdAt : _createdAt, _masterSecret : _hs.value._masterSecret, _certificates : _certsFromClient, _usedOldKey : false } : T_sessionState)).__copy__();
        var _err:Error = ((null : stdgo.Error));
        {
            var __tmp__ = _c.value._encryptTicket(_state._marshal());
            _m.value._ticket = __tmp__._0;
            _err = __tmp__._1;
        };
        if (_err != null) {
            return _err;
        };
        _hs.value._finishedHash.write(_m.value._marshal());
        {
            var __tmp__ = _c.value._writeRecord(_recordTypeHandshake, _m.value._marshal()), _:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return _err;
            };
        };
        return ((null : stdgo.Error));
    }
    public function _readFinished(_out:Slice<GoByte>):Error {
        var _hs = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var _c:Pointer<Conn> = _hs.value._c;
        {
            var _err:stdgo.Error = _c.value._readChangeCipherSpec();
            if (_err != null) {
                return _err;
            };
        };
        var __tmp__ = _c.value._readHandshake(), _msg:AnyInterface = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return _err;
        };
        var __tmp__ = try {
            { value : ((_msg.value : Pointer<T_finishedMsg>)), ok : true };
        } catch(_) {
            { value : new Pointer<T_finishedMsg>().nil(), ok : false };
        }, _clientFinished = __tmp__.value, _ok = __tmp__.ok;
        if (!_ok) {
            _c.value._sendAlert(_alertUnexpectedMessage);
            return _unexpectedMessageError(Go.toInterface(_clientFinished), Go.toInterface(_msg));
        };
        var _verify:Slice<GoUInt8> = _hs.value._finishedHash._clientSum(_hs.value._masterSecret);
        if (_verify.length != _clientFinished.value._verifyData.length || stdgo.crypto.subtle.Subtle.constantTimeCompare(_verify, _clientFinished.value._verifyData) != ((1 : GoInt))) {
            _c.value._sendAlert(_alertHandshakeFailure);
            return stdgo.errors.Errors.new_("tls: client\'s Finished message is incorrect");
        };
        _hs.value._finishedHash.write(_clientFinished.value._marshal());
        Go.copy(_out, _verify);
        return ((null : stdgo.Error));
    }
    public function _establishKeys():Error {
        var _hs = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var _c:Pointer<Conn> = _hs.value._c;
        var __tmp__ = _keysFromMasterSecret(_c.value._vers, _hs.value._suite, _hs.value._masterSecret, _hs.value._clientHello.value._random, _hs.value._hello.value._random, _hs.value._suite.value._macLen, _hs.value._suite.value._keyLen, _hs.value._suite.value._ivLen), _clientMAC:Slice<GoUInt8> = __tmp__._0, _serverMAC:Slice<GoUInt8> = __tmp__._1, _clientKey:Slice<GoUInt8> = __tmp__._2, _serverKey:Slice<GoUInt8> = __tmp__._3, _clientIV:Slice<GoUInt8> = __tmp__._4, _serverIV:Slice<GoUInt8> = __tmp__._5;
        var _clientCipher:AnyInterface = ((null : AnyInterface)), _serverCipher:AnyInterface = ((null : AnyInterface));
        var _clientHash:stdgo.hash.Hash.Hash = ((null : stdgo.hash.Hash.Hash)), _serverHash:stdgo.hash.Hash.Hash = ((null : stdgo.hash.Hash.Hash));
        if (_hs.value._suite.value._aead == null) {
            _clientCipher = Go.toInterface(_hs.value._suite.value._cipher(_clientKey, _clientIV, true));
            _clientHash = _hs.value._suite.value._mac(_clientMAC);
            _serverCipher = Go.toInterface(_hs.value._suite.value._cipher(_serverKey, _serverIV, false));
            _serverHash = _hs.value._suite.value._mac(_serverMAC);
        } else {
            _clientCipher = Go.toInterface(_hs.value._suite.value._aead(_clientKey, _clientIV));
            _serverCipher = Go.toInterface(_hs.value._suite.value._aead(_serverKey, _serverIV));
        };
        _c.value._in._prepareCipherSpec(_c.value._vers, Go.toInterface(_clientCipher), _clientHash);
        _c.value._out._prepareCipherSpec(_c.value._vers, Go.toInterface(_serverCipher), _serverHash);
        return ((null : stdgo.Error));
    }
    public function _doFullHandshake():Error {
        var _hs = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var _c:Pointer<Conn> = _hs.value._c;
        if (_hs.value._clientHello.value._ocspStapling && _hs.value._cert.value.ocspstaple.length > ((0 : GoInt))) {
            _hs.value._hello.value._ocspStapling = true;
        };
        _hs.value._hello.value._ticketSupported = _hs.value._clientHello.value._ticketSupported && !_c.value._config.value.sessionTicketsDisabled;
        _hs.value._hello.value._cipherSuite = _hs.value._suite.value._id;
        _hs.value._finishedHash = _newFinishedHash(_hs.value._c.value._vers, _hs.value._suite).__copy__();
        if (_c.value._config.value.clientAuth.__t__ == noClientCert.__t__) {
            _hs.value._finishedHash._discardHandshakeBuffer();
        };
        _hs.value._finishedHash.write(_hs.value._clientHello.value._marshal());
        _hs.value._finishedHash.write(_hs.value._hello.value._marshal());
        {
            var __tmp__ = _c.value._writeRecord(_recordTypeHandshake, _hs.value._hello.value._marshal()), _:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return _err;
            };
        };
        var _certMsg:Pointer<T_certificateMsg> = Go.pointer(new T_certificateMsg());
        _certMsg.value._certificates = _hs.value._cert.value.certificate;
        _hs.value._finishedHash.write(_certMsg.value._marshal());
        {
            var __tmp__ = _c.value._writeRecord(_recordTypeHandshake, _certMsg.value._marshal()), _:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return _err;
            };
        };
        if (_hs.value._hello.value._ocspStapling) {
            var _certStatus:Pointer<T_certificateStatusMsg> = Go.pointer(new T_certificateStatusMsg());
            _certStatus.value._response = _hs.value._cert.value.ocspstaple;
            _hs.value._finishedHash.write(_certStatus.value._marshal());
            {
                var __tmp__ = _c.value._writeRecord(_recordTypeHandshake, _certStatus.value._marshal()), _:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    return _err;
                };
            };
        };
        var _keyAgreement:T_keyAgreement = _hs.value._suite.value._ka(_c.value._vers);
        var __tmp__ = _keyAgreement._generateServerKeyExchange(_c.value._config, _hs.value._cert, _hs.value._clientHello, _hs.value._hello), _skx:Pointer<T_serverKeyExchangeMsg> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _c.value._sendAlert(_alertHandshakeFailure);
            return _err;
        };
        if (_skx != null && !_skx.isNil()) {
            _hs.value._finishedHash.write(_skx.value._marshal());
            {
                var __tmp__ = _c.value._writeRecord(_recordTypeHandshake, _skx.value._marshal()), _:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    return _err;
                };
            };
        };
        var _certReq:Pointer<T_certificateRequestMsg> = new Pointer<T_certificateRequestMsg>().nil();
        if (_c.value._config.value.clientAuth.__t__ >= requestClientCert.__t__) {
            _certReq = Go.pointer(new T_certificateRequestMsg());
            _certReq.value._certificateTypes = new Slice<GoUInt8>(((_certTypeRSASign : GoByte)), ((_certTypeECDSASign : GoByte)));
            if (_c.value._vers >= versionTLS12) {
                _certReq.value._hasSignatureAlgorithm = true;
                _certReq.value._supportedSignatureAlgorithms = _supportedSignatureAlgorithms;
            };
            if (_c.value._config.value.clientCAs != null && !_c.value._config.value.clientCAs.isNil()) {
                _certReq.value._certificateAuthorities = _c.value._config.value.clientCAs.value.subjects();
            };
            _hs.value._finishedHash.write(_certReq.value._marshal());
            {
                var __tmp__ = _c.value._writeRecord(_recordTypeHandshake, _certReq.value._marshal()), _:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    return _err;
                };
            };
        };
        var _helloDone:Pointer<T_serverHelloDoneMsg> = Go.pointer(new T_serverHelloDoneMsg());
        _hs.value._finishedHash.write(_helloDone.value._marshal());
        {
            var __tmp__ = _c.value._writeRecord(_recordTypeHandshake, _helloDone.value._marshal()), _:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return _err;
            };
        };
        {
            var __tmp__ = _c.value._flush(), _:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return _err;
            };
        };
        var _pub:stdgo.crypto.Crypto.PublicKey = ((null : stdgo.crypto.Crypto.PublicKey));
        var __tmp__ = _c.value._readHandshake(), _msg:AnyInterface = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return _err;
        };
        if (_c.value._config.value.clientAuth.__t__ >= requestClientCert.__t__) {
            var __tmp__ = try {
                { value : ((_msg.value : Pointer<T_certificateMsg>)), ok : true };
            } catch(_) {
                { value : new Pointer<T_certificateMsg>().nil(), ok : false };
            }, _certMsg = __tmp__.value, _ok = __tmp__.ok;
            if (!_ok) {
                _c.value._sendAlert(_alertUnexpectedMessage);
                return _unexpectedMessageError(Go.toInterface(_certMsg), Go.toInterface(_msg));
            };
            _hs.value._finishedHash.write(_certMsg.value._marshal());
            {
                var _err:stdgo.Error = _c.value._processCertsFromClient((({ certificate : _certMsg.value._certificates, privateKey : ((null : stdgo.crypto.Crypto.PrivateKey)), supportedSignatureAlgorithms : new Slice<SignatureScheme>().nil(), ocspstaple : new Slice<GoUInt8>().nil(), signedCertificateTimestamps : new Slice<Slice<GoUInt8>>().nil(), leaf : new Pointer<stdgo.crypto.x509.X509.Certificate>().nil() } : Certificate)).__copy__());
                if (_err != null) {
                    return _err;
                };
            };
            if (_certMsg.value._certificates.length != ((0 : GoInt))) {
                _pub = Go.toInterface(_c.value._peerCertificates[((0 : GoInt))].value.publicKey);
            };
            {
                var __tmp__ = _c.value._readHandshake();
                _msg = Go.toInterface(__tmp__._0);
                _err = __tmp__._1;
            };
            if (_err != null) {
                return _err;
            };
        };
        if (_c.value._config.value.verifyConnection != null) {
            {
                var _err:stdgo.Error = _c.value._config.value.verifyConnection(_c.value._connectionStateLocked().__copy__());
                if (_err != null) {
                    _c.value._sendAlert(_alertBadCertificate);
                    return _err;
                };
            };
        };
        var __tmp__ = try {
            { value : ((_msg.value : Pointer<T_clientKeyExchangeMsg>)), ok : true };
        } catch(_) {
            { value : new Pointer<T_clientKeyExchangeMsg>().nil(), ok : false };
        }, _ckx = __tmp__.value, _ok = __tmp__.ok;
        if (!_ok) {
            _c.value._sendAlert(_alertUnexpectedMessage);
            return _unexpectedMessageError(Go.toInterface(_ckx), Go.toInterface(_msg));
        };
        _hs.value._finishedHash.write(_ckx.value._marshal());
        var __tmp__ = _keyAgreement._processClientKeyExchange(_c.value._config, _hs.value._cert, _ckx, _c.value._vers), _preMasterSecret:Slice<GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _c.value._sendAlert(_alertHandshakeFailure);
            return _err;
        };
        _hs.value._masterSecret = _masterFromPreMasterSecret(_c.value._vers, _hs.value._suite, _preMasterSecret, _hs.value._clientHello.value._random, _hs.value._hello.value._random);
        {
            var _err:stdgo.Error = _c.value._config.value._writeKeyLog(_keyLogLabelTLS12, _hs.value._clientHello.value._random, _hs.value._masterSecret);
            if (_err != null) {
                _c.value._sendAlert(_alertInternalError);
                return _err;
            };
        };
        if (_c.value._peerCertificates.length > ((0 : GoInt))) {
            {
                var __tmp__ = _c.value._readHandshake();
                _msg = Go.toInterface(__tmp__._0);
                _err = __tmp__._1;
            };
            if (_err != null) {
                return _err;
            };
            var __tmp__ = try {
                { value : ((_msg.value : Pointer<T_certificateVerifyMsg>)), ok : true };
            } catch(_) {
                { value : new Pointer<T_certificateVerifyMsg>().nil(), ok : false };
            }, _certVerify = __tmp__.value, _ok = __tmp__.ok;
            if (!_ok) {
                _c.value._sendAlert(_alertUnexpectedMessage);
                return _unexpectedMessageError(Go.toInterface(_certVerify), Go.toInterface(_msg));
            };
            var _sigType:GoUInt8 = ((0 : GoUInt8));
            var _sigHash:stdgo.crypto.Crypto.Hash = new stdgo.crypto.Crypto.Hash();
            if (_c.value._vers >= versionTLS12) {
                if (!_isSupportedSignatureAlgorithm(_certVerify.value._signatureAlgorithm, _certReq.value._supportedSignatureAlgorithms)) {
                    _c.value._sendAlert(_alertIllegalParameter);
                    return stdgo.errors.Errors.new_("tls: client certificate used with invalid signature algorithm");
                };
                {
                    var __tmp__ = _typeAndHashFromSignatureScheme(_certVerify.value._signatureAlgorithm);
                    _sigType = __tmp__._0;
                    _sigHash = __tmp__._1;
                    _err = __tmp__._2;
                };
                if (_err != null) {
                    return _c.value._sendAlert(_alertInternalError);
                };
            } else {
                {
                    var __tmp__ = _legacyTypeAndHashFromPublicKey(Go.toInterface(_pub));
                    _sigType = __tmp__._0;
                    _sigHash = __tmp__._1;
                    _err = __tmp__._2;
                };
                if (_err != null) {
                    _c.value._sendAlert(_alertIllegalParameter);
                    return _err;
                };
            };
            var _signed:Slice<GoUInt8> = _hs.value._finishedHash._hashForClientCertificate(_sigType, _sigHash, _hs.value._masterSecret);
            {
                var _err:stdgo.Error = _verifyHandshakeSignature(_sigType, Go.toInterface(_pub), _sigHash, _signed, _certVerify.value._signature);
                if (_err != null) {
                    _c.value._sendAlert(_alertDecryptError);
                    return stdgo.errors.Errors.new_((("tls: invalid signature by the client certificate: " : GoString)) + _err.error());
                };
            };
            _hs.value._finishedHash.write(_certVerify.value._marshal());
        };
        _hs.value._finishedHash._discardHandshakeBuffer();
        return ((null : stdgo.Error));
    }
    public function _doResumeHandshake():Error {
        var _hs = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var _c:Pointer<Conn> = _hs.value._c;
        _hs.value._hello.value._cipherSuite = _hs.value._suite.value._id;
        _c.value._cipherSuite = _hs.value._suite.value._id;
        _hs.value._hello.value._sessionId = _hs.value._clientHello.value._sessionId;
        _hs.value._hello.value._ticketSupported = _hs.value._sessionState.value._usedOldKey;
        _hs.value._finishedHash = _newFinishedHash(_c.value._vers, _hs.value._suite).__copy__();
        _hs.value._finishedHash._discardHandshakeBuffer();
        _hs.value._finishedHash.write(_hs.value._clientHello.value._marshal());
        _hs.value._finishedHash.write(_hs.value._hello.value._marshal());
        {
            var __tmp__ = _c.value._writeRecord(_recordTypeHandshake, _hs.value._hello.value._marshal()), _:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return _err;
            };
        };
        {
            var _err:stdgo.Error = _c.value._processCertsFromClient((({ certificate : _hs.value._sessionState.value._certificates, privateKey : ((null : stdgo.crypto.Crypto.PrivateKey)), supportedSignatureAlgorithms : new Slice<SignatureScheme>().nil(), ocspstaple : new Slice<GoUInt8>().nil(), signedCertificateTimestamps : new Slice<Slice<GoUInt8>>().nil(), leaf : new Pointer<stdgo.crypto.x509.X509.Certificate>().nil() } : Certificate)).__copy__());
            if (_err != null) {
                return _err;
            };
        };
        if (_c.value._config.value.verifyConnection != null) {
            {
                var _err:stdgo.Error = _c.value._config.value.verifyConnection(_c.value._connectionStateLocked().__copy__());
                if (_err != null) {
                    _c.value._sendAlert(_alertBadCertificate);
                    return _err;
                };
            };
        };
        _hs.value._masterSecret = _hs.value._sessionState.value._masterSecret;
        return ((null : stdgo.Error));
    }
    public function _checkForResumption():Bool {
        var _hs = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var _c:Pointer<Conn> = _hs.value._c;
        if (_c.value._config.value.sessionTicketsDisabled) {
            return false;
        };
        var __tmp__ = _c.value._decryptTicket(_hs.value._clientHello.value._sessionTicket), _plaintext:Slice<GoUInt8> = __tmp__._0, _usedOldKey:Bool = __tmp__._1;
        if (_plaintext == null || _plaintext.isNil()) {
            return false;
        };
        _hs.value._sessionState = Go.pointer((({ _usedOldKey : _usedOldKey, _vers : 0, _cipherSuite : 0, _createdAt : 0, _masterSecret : new Slice<GoUInt8>().nil(), _certificates : new Slice<Slice<GoUInt8>>().nil() } : T_sessionState)));
        var _ok:Bool = _hs.value._sessionState.value._unmarshal(_plaintext);
        if (!_ok) {
            return false;
        };
        var _createdAt:stdgo.time.Time.Time = stdgo.time.Time.unix(((_hs.value._sessionState.value._createdAt : GoInt64)), ((0 : GoInt64))).__copy__();
        if (_c.value._config.value._time().sub(_createdAt.__copy__()).__t__ > _maxSessionTicketLifetime.__t__) {
            return false;
        };
        if (_c.value._vers != _hs.value._sessionState.value._vers) {
            return false;
        };
        var _cipherSuiteOk:Bool = false;
        for (_id in _hs.value._clientHello.value._cipherSuites) {
            if (_id == _hs.value._sessionState.value._cipherSuite) {
                _cipherSuiteOk = true;
                break;
            };
        };
        if (!_cipherSuiteOk) {
            return false;
        };
        _hs.value._suite = _selectCipherSuite(new Slice<GoUInt16>(_hs.value._sessionState.value._cipherSuite), _c.value._config.value._cipherSuites(), _hs.value._cipherSuiteOk);
        if (_hs.value._suite == null || _hs.value._suite.isNil()) {
            return false;
        };
        var _sessionHasClientCerts:Bool = _hs.value._sessionState.value._certificates.length != ((0 : GoInt));
        var _needClientCerts:Bool = _requiresClientCert(_c.value._config.value.clientAuth);
        if (_needClientCerts && !_sessionHasClientCerts) {
            return false;
        };
        if (_sessionHasClientCerts && _c.value._config.value.clientAuth.__t__ == noClientCert.__t__) {
            return false;
        };
        return true;
    }
    public function _cipherSuiteOk(_c:Pointer<T_cipherSuite>):Bool {
        var _hs = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        if (_c.value._flags & _suiteECDHE != ((0 : GoInt))) {
            if (!_hs.value._ecdheOk) {
                return false;
            };
            if (_c.value._flags & _suiteECSign != ((0 : GoInt))) {
                if (!_hs.value._ecSignOk) {
                    return false;
                };
            } else if (!_hs.value._rsaSignOk) {
                return false;
            };
        } else if (!_hs.value._rsaDecryptOk) {
            return false;
        };
        if (_hs.value._c.value._vers < versionTLS12 && _c.value._flags & _suiteTLS12 != ((0 : GoInt))) {
            return false;
        };
        return true;
    }
    public function _pickCipherSuite():Error {
        var _hs = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var _c:Pointer<Conn> = _hs.value._c;
        var _preferenceOrder:Slice<GoUInt16> = _cipherSuitesPreferenceOrder;
        if (!_hasAESGCMHardwareSupport || !_aesgcmPreferred(_hs.value._clientHello.value._cipherSuites)) {
            _preferenceOrder = _cipherSuitesPreferenceOrderNoAES;
        };
        var _configCipherSuites:Slice<GoUInt16> = _c.value._config.value._cipherSuites();
        var _preferenceList:Slice<GoUInt16> = new Slice<GoUInt16>(...[for (i in 0 ... ((((0 : GoInt)) : GoInt)).toBasic()) ((0 : GoUInt16))]).setCap(((_configCipherSuites.length : GoInt)).toBasic());
        for (_suiteID in _preferenceOrder) {
            for (_id in _configCipherSuites) {
                if (_id == _suiteID) {
                    _preferenceList = _preferenceList.__append__(_id);
                    break;
                };
            };
        };
        _hs.value._suite = _selectCipherSuite(_preferenceList, _hs.value._clientHello.value._cipherSuites, _hs.value._cipherSuiteOk);
        if (_hs.value._suite == null || _hs.value._suite.isNil()) {
            _c.value._sendAlert(_alertHandshakeFailure);
            return stdgo.errors.Errors.new_("tls: no cipher suite supported by both client and server");
        };
        _c.value._cipherSuite = _hs.value._suite.value._id;
        for (_id in _hs.value._clientHello.value._cipherSuites) {
            if (_id == tls_FALLBACK_SCSV) {
                if (_hs.value._clientHello.value._vers < _c.value._config.value._maxSupportedVersion()) {
                    _c.value._sendAlert(_alertInappropriateFallback);
                    return stdgo.errors.Errors.new_("tls: client using inappropriate protocol fallback");
                };
                break;
            };
        };
        return ((null : stdgo.Error));
    }
    public function _processClientHello():Error {
        var _hs = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var _c:Pointer<Conn> = _hs.value._c;
        _hs.value._hello = Go.pointer(new T_serverHelloMsg());
        _hs.value._hello.value._vers = _c.value._vers;
        var _foundCompression:Bool = false;
        for (_compression in _hs.value._clientHello.value._compressionMethods) {
            if (_compression == _compressionNone) {
                _foundCompression = true;
                break;
            };
        };
        if (!_foundCompression) {
            _c.value._sendAlert(_alertHandshakeFailure);
            return stdgo.errors.Errors.new_("tls: client does not support uncompressed connections");
        };
        _hs.value._hello.value._random = new Slice<GoUInt8>(...[for (i in 0 ... ((((32 : GoInt)) : GoInt)).toBasic()) ((0 : GoUInt8))]);
        var _serverRandom:Slice<GoUInt8> = _hs.value._hello.value._random;
        var _maxVers:GoUInt16 = _c.value._config.value._maxSupportedVersion();
        if (_maxVers >= versionTLS12 && _c.value._vers < _maxVers || _testingOnlyForceDowngradeCanary) {
            if (_c.value._vers == versionTLS12) {
                Go.copy(_serverRandom.__slice__(((24 : GoInt))), _downgradeCanaryTLS12);
            } else {
                Go.copy(_serverRandom.__slice__(((24 : GoInt))), _downgradeCanaryTLS11);
            };
            _serverRandom = _serverRandom.__slice__(0, ((24 : GoInt)));
        };
        var __tmp__ = stdgo.io.Io.readFull(_c.value._config.value._rand(), _serverRandom), _:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _c.value._sendAlert(_alertInternalError);
            return _err;
        };
        if (_hs.value._clientHello.value._secureRenegotiation.length != ((0 : GoInt))) {
            _c.value._sendAlert(_alertHandshakeFailure);
            return stdgo.errors.Errors.new_("tls: initial handshake had non-empty renegotiation extension");
        };
        _hs.value._hello.value._secureRenegotiationSupported = _hs.value._clientHello.value._secureRenegotiationSupported;
        _hs.value._hello.value._compressionMethod = _compressionNone;
        if (_hs.value._clientHello.value._serverName.length > ((0 : GoInt))) {
            _c.value._serverName = _hs.value._clientHello.value._serverName;
        };
        var __tmp__ = _negotiateALPN(_c.value._config.value.nextProtos, _hs.value._clientHello.value._alpnProtocols), _selectedProto:GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _c.value._sendAlert(_alertNoApplicationProtocol);
            return _err;
        };
        _hs.value._hello.value._alpnProtocol = _selectedProto;
        _c.value._clientProtocol = _selectedProto;
        {
            var __tmp__ = _c.value._config.value._getCertificate(_clientHelloInfo(_hs.value._ctx, _c, _hs.value._clientHello));
            _hs.value._cert = __tmp__._0;
            _err = __tmp__._1;
        };
        if (_err != null) {
            if (Go.toInterface(_err) == Go.toInterface(_errNoCertificates)) {
                _c.value._sendAlert(_alertUnrecognizedName);
            } else {
                _c.value._sendAlert(_alertInternalError);
            };
            return _err;
        };
        if (_hs.value._clientHello.value._scts) {
            _hs.value._hello.value._scts = _hs.value._cert.value.signedCertificateTimestamps;
        };
        _hs.value._ecdheOk = _supportsECDHE(_c.value._config, _hs.value._clientHello.value._supportedCurves, _hs.value._clientHello.value._supportedPoints);
        if (_hs.value._ecdheOk) {
            _hs.value._hello.value._supportedPoints = new Slice<GoUInt8>(_pointFormatUncompressed);
        };
        {
            var __tmp__ = try {
                { value : ((_hs.value._cert.value.privateKey.value : stdgo.crypto.Crypto.Signer)), ok : true };
            } catch(_) {
                { value : ((null : stdgo.crypto.Crypto.Signer)), ok : false };
            }, _priv = __tmp__.value, _ok = __tmp__.ok;
            if (_ok) {
                if (Go.assertable(((_priv.public_() : Pointer<stdgo.crypto.ecdsa.Ecdsa.PublicKey>)))) {
                    _hs.value._ecSignOk = true;
                } else if (Go.assertable(((_priv.public_() : stdgo.crypto.ed25519.Ed25519.PublicKey)))) {
                    _hs.value._ecSignOk = true;
                } else if (Go.assertable(((_priv.public_() : Pointer<stdgo.crypto.rsa.Rsa.PublicKey>)))) {
                    _hs.value._rsaSignOk = true;
                } else {
                    _c.value._sendAlert(_alertInternalError);
                    return stdgo.fmt.Fmt.errorf("tls: unsupported signing key type (%T)", Go.toInterface(_priv.public_()));
                };
            };
        };
        {
            var __tmp__ = try {
                { value : ((_hs.value._cert.value.privateKey.value : stdgo.crypto.Crypto.Decrypter)), ok : true };
            } catch(_) {
                { value : ((null : stdgo.crypto.Crypto.Decrypter)), ok : false };
            }, _priv = __tmp__.value, _ok = __tmp__.ok;
            if (_ok) {
                if (Go.assertable(((_priv.public_() : Pointer<stdgo.crypto.rsa.Rsa.PublicKey>)))) {
                    _hs.value._rsaDecryptOk = true;
                } else {
                    _c.value._sendAlert(_alertInternalError);
                    return stdgo.fmt.Fmt.errorf("tls: unsupported decryption key type (%T)", Go.toInterface(_priv.public_()));
                };
            };
        };
        return ((null : stdgo.Error));
    }
    public function _handshake():Error {
        var _hs = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var _c:Pointer<Conn> = _hs.value._c;
        {
            var _err:stdgo.Error = _hs.value._processClientHello();
            if (_err != null) {
                return _err;
            };
        };
        _c.value._buffering = true;
        if (_hs.value._checkForResumption()) {
            _c.value._didResume = true;
            {
                var _err:stdgo.Error = _hs.value._doResumeHandshake();
                if (_err != null) {
                    return _err;
                };
            };
            {
                var _err:stdgo.Error = _hs.value._establishKeys();
                if (_err != null) {
                    return _err;
                };
            };
            {
                var _err:stdgo.Error = _hs.value._sendSessionTicket();
                if (_err != null) {
                    return _err;
                };
            };
            {
                var _err:stdgo.Error = _hs.value._sendFinished(_c.value._serverFinished.__slice__(0));
                if (_err != null) {
                    return _err;
                };
            };
            {
                var __tmp__ = _c.value._flush(), _:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    return _err;
                };
            };
            _c.value._clientFinishedIsFirst = false;
            {
                var _err:stdgo.Error = _hs.value._readFinished(new Slice<GoUInt8>().nil());
                if (_err != null) {
                    return _err;
                };
            };
        } else {
            {
                var _err:stdgo.Error = _hs.value._pickCipherSuite();
                if (_err != null) {
                    return _err;
                };
            };
            {
                var _err:stdgo.Error = _hs.value._doFullHandshake();
                if (_err != null) {
                    return _err;
                };
            };
            {
                var _err:stdgo.Error = _hs.value._establishKeys();
                if (_err != null) {
                    return _err;
                };
            };
            {
                var _err:stdgo.Error = _hs.value._readFinished(_c.value._clientFinished.__slice__(0));
                if (_err != null) {
                    return _err;
                };
            };
            _c.value._clientFinishedIsFirst = true;
            _c.value._buffering = true;
            {
                var _err:stdgo.Error = _hs.value._sendSessionTicket();
                if (_err != null) {
                    return _err;
                };
            };
            {
                var _err:stdgo.Error = _hs.value._sendFinished(new Slice<GoUInt8>().nil());
                if (_err != null) {
                    return _err;
                };
            };
            {
                var __tmp__ = _c.value._flush(), _:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    return _err;
                };
            };
        };
        _c.value._ekm = _ekmFromMasterSecret(_c.value._vers, _hs.value._suite, _hs.value._masterSecret, _hs.value._clientHello.value._random, _hs.value._hello.value._random);
        stdgo.sync.atomic.Atomic.storeUint32(Go.pointer(_c.value._handshakeStatus), ((1 : GoUInt32)));
        return ((null : stdgo.Error));
    }
    public var _c : Pointer<Conn> = new Pointer<Conn>().nil();
    public var _ctx : stdgo.context.Context.Context = ((null : stdgo.context.Context.Context));
    public var _clientHello : Pointer<T_clientHelloMsg> = new Pointer<T_clientHelloMsg>().nil();
    public var _hello : Pointer<T_serverHelloMsg> = new Pointer<T_serverHelloMsg>().nil();
    public var _suite : Pointer<T_cipherSuite> = new Pointer<T_cipherSuite>().nil();
    public var _ecdheOk : Bool = false;
    public var _ecSignOk : Bool = false;
    public var _rsaDecryptOk : Bool = false;
    public var _rsaSignOk : Bool = false;
    public var _sessionState : Pointer<T_sessionState> = new Pointer<T_sessionState>().nil();
    public var _finishedHash : T_finishedHash = new T_finishedHash();
    public var _masterSecret : Slice<GoUInt8> = new Slice<GoUInt8>().nil();
    public var _cert : Pointer<Certificate> = new Pointer<Certificate>().nil();
    public function new(?_c:Pointer<Conn>, ?_ctx:stdgo.context.Context.Context, ?_clientHello:Pointer<T_clientHelloMsg>, ?_hello:Pointer<T_serverHelloMsg>, ?_suite:Pointer<T_cipherSuite>, ?_ecdheOk:Bool, ?_ecSignOk:Bool, ?_rsaDecryptOk:Bool, ?_rsaSignOk:Bool, ?_sessionState:Pointer<T_sessionState>, ?_finishedHash:T_finishedHash, ?_masterSecret:Slice<GoUInt8>, ?_cert:Pointer<Certificate>) stdgo.internal.Macro.initLocals();
    public function toString() {
        return '{' + Go.string(_c) + " " + Go.string(_ctx) + " " + Go.string(_clientHello) + " " + Go.string(_hello) + " " + Go.string(_suite) + " " + Go.string(_ecdheOk) + " " + Go.string(_ecSignOk) + " " + Go.string(_rsaDecryptOk) + " " + Go.string(_rsaSignOk) + " " + Go.string(_sessionState) + " " + Go.string(_finishedHash) + " " + Go.string(_masterSecret) + " " + Go.string(_cert) + "}";
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_serverHandshakeState(
_c,
_ctx,
_clientHello,
_hello,
_suite,
_ecdheOk,
_ecSignOk,
_rsaDecryptOk,
_rsaSignOk,
_sessionState,
_finishedHash,
_masterSecret,
_cert);
    }
    public function __set__(__tmp__) {
        this._c = __tmp__._c;
        this._ctx = __tmp__._ctx;
        this._clientHello = __tmp__._clientHello;
        this._hello = __tmp__._hello;
        this._suite = __tmp__._suite;
        this._ecdheOk = __tmp__._ecdheOk;
        this._ecSignOk = __tmp__._ecSignOk;
        this._rsaDecryptOk = __tmp__._rsaDecryptOk;
        this._rsaSignOk = __tmp__._rsaSignOk;
        this._sessionState = __tmp__._sessionState;
        this._finishedHash = __tmp__._finishedHash;
        this._masterSecret = __tmp__._masterSecret;
        this._cert = __tmp__._cert;
        return this;
    }
}
@:structInit class T_serverHandshakeStateTLS13 {
    public function _readClientFinished():Error {
        var _hs = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var _c:Pointer<Conn> = _hs.value._c;
        var __tmp__ = _c.value._readHandshake(), _msg:AnyInterface = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return _err;
        };
        var __tmp__ = try {
            { value : ((_msg.value : Pointer<T_finishedMsg>)), ok : true };
        } catch(_) {
            { value : new Pointer<T_finishedMsg>().nil(), ok : false };
        }, _finished = __tmp__.value, _ok = __tmp__.ok;
        if (!_ok) {
            _c.value._sendAlert(_alertUnexpectedMessage);
            return _unexpectedMessageError(Go.toInterface(_finished), Go.toInterface(_msg));
        };
        if (!stdgo.crypto.hmac.Hmac.equal(_hs.value._clientFinished, _finished.value._verifyData)) {
            _c.value._sendAlert(_alertDecryptError);
            return stdgo.errors.Errors.new_("tls: invalid client finished hash");
        };
        _c.value._in._setTrafficSecret(_hs.value._suite, _hs.value._trafficSecret);
        return ((null : stdgo.Error));
    }
    public function _readClientCertificate():Error {
        var _hs = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var _c:Pointer<Conn> = _hs.value._c;
        if (!_hs.value._requestClientCert()) {
            if (_c.value._config.value.verifyConnection != null) {
                {
                    var _err:stdgo.Error = _c.value._config.value.verifyConnection(_c.value._connectionStateLocked().__copy__());
                    if (_err != null) {
                        _c.value._sendAlert(_alertBadCertificate);
                        return _err;
                    };
                };
            };
            return ((null : stdgo.Error));
        };
        var __tmp__ = _c.value._readHandshake(), _msg:AnyInterface = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return _err;
        };
        var __tmp__ = try {
            { value : ((_msg.value : Pointer<T_certificateMsgTLS13>)), ok : true };
        } catch(_) {
            { value : new Pointer<T_certificateMsgTLS13>().nil(), ok : false };
        }, _certMsg = __tmp__.value, _ok = __tmp__.ok;
        if (!_ok) {
            _c.value._sendAlert(_alertUnexpectedMessage);
            return _unexpectedMessageError(Go.toInterface(_certMsg), Go.toInterface(_msg));
        };
        _hs.value._transcript.write(_certMsg.value._marshal());
        {
            var _err:stdgo.Error = _c.value._processCertsFromClient(_certMsg.value._certificate.__copy__());
            if (_err != null) {
                return _err;
            };
        };
        if (_c.value._config.value.verifyConnection != null) {
            {
                var _err:stdgo.Error = _c.value._config.value.verifyConnection(_c.value._connectionStateLocked().__copy__());
                if (_err != null) {
                    _c.value._sendAlert(_alertBadCertificate);
                    return _err;
                };
            };
        };
        if (_certMsg.value._certificate.certificate.length != ((0 : GoInt))) {
            {
                var __tmp__ = _c.value._readHandshake();
                _msg = Go.toInterface(__tmp__._0);
                _err = __tmp__._1;
            };
            if (_err != null) {
                return _err;
            };
            var __tmp__ = try {
                { value : ((_msg.value : Pointer<T_certificateVerifyMsg>)), ok : true };
            } catch(_) {
                { value : new Pointer<T_certificateVerifyMsg>().nil(), ok : false };
            }, _certVerify = __tmp__.value, _ok = __tmp__.ok;
            if (!_ok) {
                _c.value._sendAlert(_alertUnexpectedMessage);
                return _unexpectedMessageError(Go.toInterface(_certVerify), Go.toInterface(_msg));
            };
            if (!_isSupportedSignatureAlgorithm(_certVerify.value._signatureAlgorithm, _supportedSignatureAlgorithms)) {
                _c.value._sendAlert(_alertIllegalParameter);
                return stdgo.errors.Errors.new_("tls: client certificate used with invalid signature algorithm");
            };
            var __tmp__ = _typeAndHashFromSignatureScheme(_certVerify.value._signatureAlgorithm), _sigType:GoUInt8 = __tmp__._0, _sigHash:stdgo.crypto.Crypto.Hash = __tmp__._1, _err:stdgo.Error = __tmp__._2;
            if (_err != null) {
                return _c.value._sendAlert(_alertInternalError);
            };
            if (_sigType == _signaturePKCS1v15 || _sigHash.__t__ == stdgo.crypto.Crypto.sha1.__t__) {
                _c.value._sendAlert(_alertIllegalParameter);
                return stdgo.errors.Errors.new_("tls: client certificate used with invalid signature algorithm");
            };
            var _signed:Slice<GoUInt8> = _signedMessage(_sigHash, _clientSignatureContext, _hs.value._transcript);
            {
                var _err:stdgo.Error = _verifyHandshakeSignature(_sigType, Go.toInterface(_c.value._peerCertificates[((0 : GoInt))].value.publicKey), _sigHash, _signed, _certVerify.value._signature);
                if (_err != null) {
                    _c.value._sendAlert(_alertDecryptError);
                    return stdgo.errors.Errors.new_((("tls: invalid signature by the client certificate: " : GoString)) + _err.error());
                };
            };
            _hs.value._transcript.write(_certVerify.value._marshal());
        };
        {
            var _err:stdgo.Error = _hs.value._sendSessionTickets();
            if (_err != null) {
                return _err;
            };
        };
        return ((null : stdgo.Error));
    }
    public function _sendSessionTickets():Error {
        var _hs = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var _c:Pointer<Conn> = _hs.value._c;
        _hs.value._clientFinished = _hs.value._suite.value._finishedHash(_c.value._in._trafficSecret, _hs.value._transcript);
        var _finishedMsg:Pointer<T_finishedMsg> = Go.pointer((({ _verifyData : _hs.value._clientFinished, _raw : new Slice<GoUInt8>().nil() } : T_finishedMsg)));
        _hs.value._transcript.write(_finishedMsg.value._marshal());
        if (!_hs.value._shouldSendSessionTickets()) {
            return ((null : stdgo.Error));
        };
        var _resumptionSecret:Slice<GoUInt8> = _hs.value._suite.value._deriveSecret(_hs.value._masterSecret, _resumptionLabel, _hs.value._transcript);
        var _m:Pointer<T_newSessionTicketMsgTLS13> = Go.pointer(new T_newSessionTicketMsgTLS13());
        var _certsFromClient:Slice<Slice<GoByte>> = new Slice<Slice<GoUInt8>>().nil();
        for (_cert in _c.value._peerCertificates) {
            _certsFromClient = _certsFromClient.__append__(_cert.value.raw);
        };
        var _state:T_sessionStateTLS13 = (({ _cipherSuite : _hs.value._suite.value._id, _createdAt : ((_c.value._config.value._time().unix() : GoUInt64)), _resumptionSecret : _resumptionSecret, _certificate : (({ certificate : _certsFromClient, ocspstaple : _c.value._ocspResponse, signedCertificateTimestamps : _c.value._scts, privateKey : ((null : stdgo.crypto.Crypto.PrivateKey)), supportedSignatureAlgorithms : new Slice<SignatureScheme>().nil(), leaf : new Pointer<stdgo.crypto.x509.X509.Certificate>().nil() } : Certificate)).__copy__() } : T_sessionStateTLS13)).__copy__();
        var _err:Error = ((null : stdgo.Error));
        {
            var __tmp__ = _c.value._encryptTicket(_state._marshal());
            _m.value._label = __tmp__._0;
            _err = __tmp__._1;
        };
        if (_err != null) {
            return _err;
        };
        _m.value._lifetime = new stdgo.time.Time.Duration(_maxSessionTicketLifetime.__t__ / stdgo.time.Time.second.__t__).__t__;
        {
            var __tmp__ = _c.value._writeRecord(_recordTypeHandshake, _m.value._marshal()), _:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return _err;
            };
        };
        return ((null : stdgo.Error));
    }
    public function _shouldSendSessionTickets():Bool {
        var _hs = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        if (_hs.value._c.value._config.value.sessionTicketsDisabled) {
            return false;
        };
        for (_pskMode in _hs.value._clientHello.value._pskModes) {
            if (_pskMode == _pskModeDHE) {
                return true;
            };
        };
        return false;
    }
    public function _sendServerFinished():Error {
        var _hs = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var _c:Pointer<Conn> = _hs.value._c;
        var _finished:Pointer<T_finishedMsg> = Go.pointer((({ _verifyData : _hs.value._suite.value._finishedHash(_c.value._out._trafficSecret, _hs.value._transcript), _raw : new Slice<GoUInt8>().nil() } : T_finishedMsg)));
        _hs.value._transcript.write(_finished.value._marshal());
        {
            var __tmp__ = _c.value._writeRecord(_recordTypeHandshake, _finished.value._marshal()), _:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return _err;
            };
        };
        _hs.value._masterSecret = _hs.value._suite.value._extract(new Slice<GoUInt8>().nil(), _hs.value._suite.value._deriveSecret(_hs.value._handshakeSecret, "derived", ((null : stdgo.hash.Hash.Hash))));
        _hs.value._trafficSecret = _hs.value._suite.value._deriveSecret(_hs.value._masterSecret, _clientApplicationTrafficLabel, _hs.value._transcript);
        var _serverSecret:Slice<GoUInt8> = _hs.value._suite.value._deriveSecret(_hs.value._masterSecret, _serverApplicationTrafficLabel, _hs.value._transcript);
        _c.value._out._setTrafficSecret(_hs.value._suite, _serverSecret);
        var _err:stdgo.Error = _c.value._config.value._writeKeyLog(_keyLogLabelClientTraffic, _hs.value._clientHello.value._random, _hs.value._trafficSecret);
        if (_err != null) {
            _c.value._sendAlert(_alertInternalError);
            return _err;
        };
        _err = _c.value._config.value._writeKeyLog(_keyLogLabelServerTraffic, _hs.value._clientHello.value._random, _serverSecret);
        if (_err != null) {
            _c.value._sendAlert(_alertInternalError);
            return _err;
        };
        _c.value._ekm = _hs.value._suite.value._exportKeyingMaterial(_hs.value._masterSecret, _hs.value._transcript);
        if (!_hs.value._requestClientCert()) {
            {
                var _err:stdgo.Error = _hs.value._sendSessionTickets();
                if (_err != null) {
                    return _err;
                };
            };
        };
        return ((null : stdgo.Error));
    }
    public function _sendServerCertificate():Error {
        var _hs = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var _c:Pointer<Conn> = _hs.value._c;
        if (_hs.value._usingPSK) {
            return ((null : stdgo.Error));
        };
        if (_hs.value._requestClientCert()) {
            var _certReq:Pointer<T_certificateRequestMsgTLS13> = Go.pointer(new T_certificateRequestMsgTLS13());
            _certReq.value._ocspStapling = true;
            _certReq.value._scts = true;
            _certReq.value._supportedSignatureAlgorithms = _supportedSignatureAlgorithms;
            if (_c.value._config.value.clientCAs != null && !_c.value._config.value.clientCAs.isNil()) {
                _certReq.value._certificateAuthorities = _c.value._config.value.clientCAs.value.subjects();
            };
            _hs.value._transcript.write(_certReq.value._marshal());
            {
                var __tmp__ = _c.value._writeRecord(_recordTypeHandshake, _certReq.value._marshal()), _:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    return _err;
                };
            };
        };
        var _certMsg:Pointer<T_certificateMsgTLS13> = Go.pointer(new T_certificateMsgTLS13());
        _certMsg.value._certificate = _hs.value._cert.value.__copy__();
        _certMsg.value._scts = _hs.value._clientHello.value._scts && _hs.value._cert.value.signedCertificateTimestamps.length > ((0 : GoInt));
        _certMsg.value._ocspStapling = _hs.value._clientHello.value._ocspStapling && _hs.value._cert.value.ocspstaple.length > ((0 : GoInt));
        _hs.value._transcript.write(_certMsg.value._marshal());
        {
            var __tmp__ = _c.value._writeRecord(_recordTypeHandshake, _certMsg.value._marshal()), _:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return _err;
            };
        };
        var _certVerifyMsg:Pointer<T_certificateVerifyMsg> = Go.pointer(new T_certificateVerifyMsg());
        _certVerifyMsg.value._hasSignatureAlgorithm = true;
        _certVerifyMsg.value._signatureAlgorithm = _hs.value._sigAlg;
        var __tmp__ = _typeAndHashFromSignatureScheme(_hs.value._sigAlg), _sigType:GoUInt8 = __tmp__._0, _sigHash:stdgo.crypto.Crypto.Hash = __tmp__._1, _err:stdgo.Error = __tmp__._2;
        if (_err != null) {
            return _c.value._sendAlert(_alertInternalError);
        };
        var _signed:Slice<GoUInt8> = _signedMessage(_sigHash, _serverSignatureContext, _hs.value._transcript);
        var _signOpts:stdgo.crypto.Crypto.SignerOpts = ((_sigHash : stdgo.crypto.Crypto.SignerOpts));
        if (_sigType == _signatureRSAPSS) {
            _signOpts = Go.pointer((({ saltLength : stdgo.crypto.rsa.Rsa.psssaltLengthEqualsHash, hash : _sigHash } : stdgo.crypto.rsa.Rsa.PSSOptions))).value;
        };
        var __tmp__ = ((_hs.value._cert.value.privateKey.value : stdgo.crypto.Crypto.Signer)).sign(_c.value._config.value._rand(), _signed, _signOpts), _sig:Slice<GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            var _public:stdgo.crypto.Crypto.PublicKey = Go.toInterface(((_hs.value._cert.value.privateKey.value : stdgo.crypto.Crypto.Signer)).public_());
            {
                var __tmp__ = try {
                    { value : ((_public.value : Pointer<stdgo.crypto.rsa.Rsa.PublicKey>)), ok : true };
                } catch(_) {
                    { value : new Pointer<stdgo.crypto.rsa.Rsa.PublicKey>().nil(), ok : false };
                }, _rsaKey = __tmp__.value, _ok = __tmp__.ok;
                if (_ok && _sigType == _signatureRSAPSS && _rsaKey.value.n.value.bitLen() / ((8 : GoInt)) < _sigHash.size() * ((2 : GoInt)) + ((2 : GoInt))) {
                    _c.value._sendAlert(_alertHandshakeFailure);
                } else {
                    _c.value._sendAlert(_alertInternalError);
                };
            };
            return stdgo.errors.Errors.new_((("tls: failed to sign handshake: " : GoString)) + _err.error());
        };
        _certVerifyMsg.value._signature = _sig;
        _hs.value._transcript.write(_certVerifyMsg.value._marshal());
        {
            var __tmp__ = _c.value._writeRecord(_recordTypeHandshake, _certVerifyMsg.value._marshal()), _:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return _err;
            };
        };
        return ((null : stdgo.Error));
    }
    public function _requestClientCert():Bool {
        var _hs = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        return _hs.value._c.value._config.value.clientAuth.__t__ >= requestClientCert.__t__ && !_hs.value._usingPSK;
    }
    public function _sendServerParameters():Error {
        var _hs = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var _c:Pointer<Conn> = _hs.value._c;
        _hs.value._transcript.write(_hs.value._clientHello.value._marshal());
        _hs.value._transcript.write(_hs.value._hello.value._marshal());
        {
            var __tmp__ = _c.value._writeRecord(_recordTypeHandshake, _hs.value._hello.value._marshal()), _:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return _err;
            };
        };
        {
            var _err:stdgo.Error = _hs.value._sendDummyChangeCipherSpec();
            if (_err != null) {
                return _err;
            };
        };
        var _earlySecret:Slice<GoUInt8> = _hs.value._earlySecret;
        if (_earlySecret == null || _earlySecret.isNil()) {
            _earlySecret = _hs.value._suite.value._extract(new Slice<GoUInt8>().nil(), new Slice<GoUInt8>().nil());
        };
        _hs.value._handshakeSecret = _hs.value._suite.value._extract(_hs.value._sharedKey, _hs.value._suite.value._deriveSecret(_earlySecret, "derived", ((null : stdgo.hash.Hash.Hash))));
        var _clientSecret:Slice<GoUInt8> = _hs.value._suite.value._deriveSecret(_hs.value._handshakeSecret, _clientHandshakeTrafficLabel, _hs.value._transcript);
        _c.value._in._setTrafficSecret(_hs.value._suite, _clientSecret);
        var _serverSecret:Slice<GoUInt8> = _hs.value._suite.value._deriveSecret(_hs.value._handshakeSecret, _serverHandshakeTrafficLabel, _hs.value._transcript);
        _c.value._out._setTrafficSecret(_hs.value._suite, _serverSecret);
        var _err:stdgo.Error = _c.value._config.value._writeKeyLog(_keyLogLabelClientHandshake, _hs.value._clientHello.value._random, _clientSecret);
        if (_err != null) {
            _c.value._sendAlert(_alertInternalError);
            return _err;
        };
        _err = _c.value._config.value._writeKeyLog(_keyLogLabelServerHandshake, _hs.value._clientHello.value._random, _serverSecret);
        if (_err != null) {
            _c.value._sendAlert(_alertInternalError);
            return _err;
        };
        var _encryptedExtensions:Pointer<T_encryptedExtensionsMsg> = Go.pointer(new T_encryptedExtensionsMsg());
        var __tmp__ = _negotiateALPN(_c.value._config.value.nextProtos, _hs.value._clientHello.value._alpnProtocols), _selectedProto:GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _c.value._sendAlert(_alertNoApplicationProtocol);
            return _err;
        };
        _encryptedExtensions.value._alpnProtocol = _selectedProto;
        _c.value._clientProtocol = _selectedProto;
        _hs.value._transcript.write(_encryptedExtensions.value._marshal());
        {
            var __tmp__ = _c.value._writeRecord(_recordTypeHandshake, _encryptedExtensions.value._marshal()), _:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return _err;
            };
        };
        return ((null : stdgo.Error));
    }
    public function _doHelloRetryRequest(_selectedGroup:CurveID):Error {
        var _hs = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var _c:Pointer<Conn> = _hs.value._c;
        _hs.value._transcript.write(_hs.value._clientHello.value._marshal());
        var _chHash:Slice<GoUInt8> = _hs.value._transcript.sum(new Slice<GoUInt8>().nil());
        _hs.value._transcript.reset();
        _hs.value._transcript.write(new Slice<GoUInt8>(_typeMessageHash, ((0 : GoUInt8)), ((0 : GoUInt8)), ((_chHash.length : GoUInt8))));
        _hs.value._transcript.write(_chHash);
        var _helloRetryRequest:Pointer<T_serverHelloMsg> = Go.pointer((({ _vers : _hs.value._hello.value._vers, _random : _helloRetryRequestRandom, _sessionId : _hs.value._hello.value._sessionId, _cipherSuite : _hs.value._hello.value._cipherSuite, _compressionMethod : _hs.value._hello.value._compressionMethod, _supportedVersion : _hs.value._hello.value._supportedVersion, _selectedGroup : _selectedGroup, _raw : new Slice<GoUInt8>().nil(), _ocspStapling : false, _ticketSupported : false, _secureRenegotiationSupported : false, _secureRenegotiation : new Slice<GoUInt8>().nil(), _alpnProtocol : "", _scts : new Slice<Slice<GoUInt8>>().nil(), _serverShare : new T_keyShare(), _selectedIdentityPresent : false, _selectedIdentity : 0, _supportedPoints : new Slice<GoUInt8>().nil(), _cookie : new Slice<GoUInt8>().nil() } : T_serverHelloMsg)));
        _hs.value._transcript.write(_helloRetryRequest.value._marshal());
        {
            var __tmp__ = _c.value._writeRecord(_recordTypeHandshake, _helloRetryRequest.value._marshal()), _:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return _err;
            };
        };
        {
            var _err:stdgo.Error = _hs.value._sendDummyChangeCipherSpec();
            if (_err != null) {
                return _err;
            };
        };
        var __tmp__ = _c.value._readHandshake(), _msg:AnyInterface = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return _err;
        };
        var __tmp__ = try {
            { value : ((_msg.value : Pointer<T_clientHelloMsg>)), ok : true };
        } catch(_) {
            { value : new Pointer<T_clientHelloMsg>().nil(), ok : false };
        }, _clientHello = __tmp__.value, _ok = __tmp__.ok;
        if (!_ok) {
            _c.value._sendAlert(_alertUnexpectedMessage);
            return _unexpectedMessageError(Go.toInterface(_clientHello), Go.toInterface(_msg));
        };
        if (_clientHello.value._keyShares.length != ((1 : GoInt)) || _clientHello.value._keyShares[((0 : GoInt))]._group.__t__ != _selectedGroup.__t__) {
            _c.value._sendAlert(_alertIllegalParameter);
            return stdgo.errors.Errors.new_("tls: client sent invalid key share in second ClientHello");
        };
        if (_clientHello.value._earlyData) {
            _c.value._sendAlert(_alertIllegalParameter);
            return stdgo.errors.Errors.new_("tls: client indicated early data in second ClientHello");
        };
        if (_illegalClientHelloChange(_clientHello, _hs.value._clientHello)) {
            _c.value._sendAlert(_alertIllegalParameter);
            return stdgo.errors.Errors.new_("tls: client illegally modified second ClientHello");
        };
        _hs.value._clientHello = _clientHello;
        return ((null : stdgo.Error));
    }
    public function _sendDummyChangeCipherSpec():Error {
        var _hs = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        if (_hs.value._sentDummyCCS) {
            return ((null : stdgo.Error));
        };
        _hs.value._sentDummyCCS = true;
        var __tmp__ = _hs.value._c.value._writeRecord(_recordTypeChangeCipherSpec, new Slice<GoUInt8>(((1 : GoUInt8)))), _:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        return _err;
    }
    public function _pickCertificate():Error {
        var _hs = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var _c:Pointer<Conn> = _hs.value._c;
        if (_hs.value._usingPSK) {
            return ((null : stdgo.Error));
        };
        if (_hs.value._clientHello.value._supportedSignatureAlgorithms.length == ((0 : GoInt))) {
            return _c.value._sendAlert(_alertMissingExtension);
        };
        var __tmp__ = _c.value._config.value._getCertificate(_clientHelloInfo(_hs.value._ctx, _c, _hs.value._clientHello)), _certificate:Pointer<Certificate> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            if (Go.toInterface(_err) == Go.toInterface(_errNoCertificates)) {
                _c.value._sendAlert(_alertUnrecognizedName);
            } else {
                _c.value._sendAlert(_alertInternalError);
            };
            return _err;
        };
        {
            var __tmp__ = _selectSignatureScheme(_c.value._vers, _certificate, _hs.value._clientHello.value._supportedSignatureAlgorithms);
            _hs.value._sigAlg = __tmp__._0;
            _err = __tmp__._1;
        };
        if (_err != null) {
            _c.value._sendAlert(_alertHandshakeFailure);
            return _err;
        };
        _hs.value._cert = _certificate;
        return ((null : stdgo.Error));
    }
    public function _checkForResumption():Error {
        var _hs = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var _c:Pointer<Conn> = _hs.value._c;
        if (_c.value._config.value.sessionTicketsDisabled) {
            return ((null : stdgo.Error));
        };
        var _modeOK:Bool = false;
        for (_mode in _hs.value._clientHello.value._pskModes) {
            if (_mode == _pskModeDHE) {
                _modeOK = true;
                break;
            };
        };
        if (!_modeOK) {
            return ((null : stdgo.Error));
        };
        if (_hs.value._clientHello.value._pskIdentities.length != _hs.value._clientHello.value._pskBinders.length) {
            _c.value._sendAlert(_alertIllegalParameter);
            return stdgo.errors.Errors.new_("tls: invalid or missing PSK binders");
        };
        if (_hs.value._clientHello.value._pskIdentities.length == ((0 : GoInt))) {
            return ((null : stdgo.Error));
        };
        {
            var _i;
            var _identity;
            for (_obj in _hs.value._clientHello.value._pskIdentities.keyValueIterator()) {
                _i = _obj.key;
                _identity = _obj.value;
                if (_i >= _maxClientPSKIdentities) {
                    break;
                };
                var __tmp__ = _c.value._decryptTicket(_identity._label), _plaintext:Slice<GoUInt8> = __tmp__._0, _:Bool = __tmp__._1;
                if (_plaintext == null || _plaintext.isNil()) {
                    continue;
                };
                var _sessionState:Pointer<T_sessionStateTLS13> = Go.pointer(new T_sessionStateTLS13());
                {
                    var _ok:Bool = _sessionState.value._unmarshal(_plaintext);
                    if (!_ok) {
                        continue;
                    };
                };
                var _createdAt:stdgo.time.Time.Time = stdgo.time.Time.unix(((_sessionState.value._createdAt : GoInt64)), ((0 : GoInt64))).__copy__();
                if (_c.value._config.value._time().sub(_createdAt.__copy__()).__t__ > _maxSessionTicketLifetime.__t__) {
                    continue;
                };
                var _pskSuite:Pointer<T_cipherSuiteTLS13> = _cipherSuiteTLS13ByID(_sessionState.value._cipherSuite);
                if (_pskSuite == null || _pskSuite.isNil() || _pskSuite.value._hash.__t__ != _hs.value._suite.value._hash.__t__) {
                    continue;
                };
                var _sessionHasClientCerts:Bool = _sessionState.value._certificate.certificate.length != ((0 : GoInt));
                var _needClientCerts:Bool = _requiresClientCert(_c.value._config.value.clientAuth);
                if (_needClientCerts && !_sessionHasClientCerts) {
                    continue;
                };
                if (_sessionHasClientCerts && _c.value._config.value.clientAuth.__t__ == noClientCert.__t__) {
                    continue;
                };
                var _psk:Slice<GoUInt8> = _hs.value._suite.value._expandLabel(_sessionState.value._resumptionSecret, "resumption", new Slice<GoUInt8>().nil(), _hs.value._suite.value._hash.size());
                _hs.value._earlySecret = _hs.value._suite.value._extract(_psk, new Slice<GoUInt8>().nil());
                var _binderKey:Slice<GoUInt8> = _hs.value._suite.value._deriveSecret(_hs.value._earlySecret, _resumptionBinderLabel, ((null : stdgo.hash.Hash.Hash)));
                var _transcript:stdgo.hash.Hash.Hash = _cloneHash(_hs.value._transcript, _hs.value._suite.value._hash);
                if (_transcript == null) {
                    _c.value._sendAlert(_alertInternalError);
                    return stdgo.errors.Errors.new_("tls: internal error: failed to clone hash");
                };
                _transcript.write(_hs.value._clientHello.value._marshalWithoutBinders());
                var _pskBinder:Slice<GoUInt8> = _hs.value._suite.value._finishedHash(_binderKey, _transcript);
                if (!stdgo.crypto.hmac.Hmac.equal(_hs.value._clientHello.value._pskBinders[_i], _pskBinder)) {
                    _c.value._sendAlert(_alertDecryptError);
                    return stdgo.errors.Errors.new_("tls: invalid PSK binder");
                };
                _c.value._didResume = true;
                {
                    var _err:stdgo.Error = _c.value._processCertsFromClient(_sessionState.value._certificate.__copy__());
                    if (_err != null) {
                        return _err;
                    };
                };
                _hs.value._hello.value._selectedIdentityPresent = true;
                _hs.value._hello.value._selectedIdentity = ((_i : GoUInt16));
                _hs.value._usingPSK = true;
                return ((null : stdgo.Error));
            };
        };
        return ((null : stdgo.Error));
    }
    public function _processClientHello():Error {
        var _hs = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        return stdgo.internal.Macro.controlFlow({
            var _c:Pointer<Conn> = _hs.value._c;
            _hs.value._hello = Go.pointer(new T_serverHelloMsg());
            _hs.value._hello.value._vers = versionTLS12;
            _hs.value._hello.value._supportedVersion = _c.value._vers;
            if (_hs.value._clientHello.value._supportedVersions.length == ((0 : GoInt))) {
                _c.value._sendAlert(_alertIllegalParameter);
                return stdgo.errors.Errors.new_("tls: client used the legacy version field to negotiate TLS 1.3");
            };
            for (_id in _hs.value._clientHello.value._cipherSuites) {
                if (_id == tls_FALLBACK_SCSV) {
                    if (_c.value._vers < _c.value._config.value._maxSupportedVersion()) {
                        _c.value._sendAlert(_alertInappropriateFallback);
                        return stdgo.errors.Errors.new_("tls: client using inappropriate protocol fallback");
                    };
                    break;
                };
            };
            if (_hs.value._clientHello.value._compressionMethods.length != ((1 : GoInt)) || _hs.value._clientHello.value._compressionMethods[((0 : GoInt))] != _compressionNone) {
                _c.value._sendAlert(_alertIllegalParameter);
                return stdgo.errors.Errors.new_("tls: TLS 1.3 client supports illegal compression methods");
            };
            _hs.value._hello.value._random = new Slice<GoUInt8>(...[for (i in 0 ... ((((32 : GoInt)) : GoInt)).toBasic()) ((0 : GoUInt8))]);
            {
                var __tmp__ = stdgo.io.Io.readFull(_c.value._config.value._rand(), _hs.value._hello.value._random), _:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    _c.value._sendAlert(_alertInternalError);
                    return _err;
                };
            };
            if (_hs.value._clientHello.value._secureRenegotiation.length != ((0 : GoInt))) {
                _c.value._sendAlert(_alertHandshakeFailure);
                return stdgo.errors.Errors.new_("tls: initial handshake had non-empty renegotiation extension");
            };
            if (_hs.value._clientHello.value._earlyData) {
                _c.value._sendAlert(_alertUnsupportedExtension);
                return stdgo.errors.Errors.new_("tls: client sent unexpected early data");
            };
            _hs.value._hello.value._sessionId = _hs.value._clientHello.value._sessionId;
            _hs.value._hello.value._compressionMethod = _compressionNone;
            var _preferenceList:Slice<GoUInt16> = _defaultCipherSuitesTLS13;
            if (!_hasAESGCMHardwareSupport || !_aesgcmPreferred(_hs.value._clientHello.value._cipherSuites)) {
                _preferenceList = _defaultCipherSuitesTLS13NoAES;
            };
            for (_suiteID in _preferenceList) {
                _hs.value._suite = _mutualCipherSuiteTLS13(_hs.value._clientHello.value._cipherSuites, _suiteID);
                if (_hs.value._suite != null && !_hs.value._suite.isNil()) {
                    break;
                };
            };
            if (_hs.value._suite == null || _hs.value._suite.isNil()) {
                _c.value._sendAlert(_alertHandshakeFailure);
                return stdgo.errors.Errors.new_("tls: no cipher suite supported by both client and server");
            };
            _c.value._cipherSuite = _hs.value._suite.value._id;
            _hs.value._hello.value._cipherSuite = _hs.value._suite.value._id;
            _hs.value._transcript = _hs.value._suite.value._hash.new_();
            var _selectedGroup:CurveID = new CurveID();
            var _clientKeyShare:Pointer<T_keyShare> = new Pointer<T_keyShare>().nil();
            @:label("GroupSelection") for (_preferredGroup in _c.value._config.value._curvePreferences()) {
                for (_ks in _hs.value._clientHello.value._keyShares) {
                    if (_ks._group.__t__ == _preferredGroup.__t__) {
                        _selectedGroup = _ks._group;
                        _clientKeyShare = Go.pointer(_ks);
                        @:break {
                            ____exit____ = true;
                            ____break____ = true;
                            break;
                        };
                    };
                };
                if (_selectedGroup.__t__ != ((0 : GoUInt16))) {
                    continue;
                };
                for (_group in _hs.value._clientHello.value._supportedCurves) {
                    if (_group.__t__ == _preferredGroup.__t__) {
                        _selectedGroup = _group;
                        break;
                    };
                };
            };
            if (_selectedGroup.__t__ == ((0 : GoUInt16))) {
                _c.value._sendAlert(_alertHandshakeFailure);
                return stdgo.errors.Errors.new_("tls: no ECDHE curve supported by both client and server");
            };
            if (_clientKeyShare == null || _clientKeyShare.isNil()) {
                {
                    var _err:stdgo.Error = _hs.value._doHelloRetryRequest(_selectedGroup);
                    if (_err != null) {
                        return _err;
                    };
                };
                _clientKeyShare = Go.pointer(_hs.value._clientHello.value._keyShares[((0 : GoInt))]);
            };
            {
                var __tmp__ = _curveForCurveID(_selectedGroup), _:stdgo.crypto.elliptic.Elliptic.Curve = __tmp__._0, _ok:Bool = __tmp__._1;
                if (_selectedGroup.__t__ != x25519.__t__ && !_ok) {
                    _c.value._sendAlert(_alertInternalError);
                    return stdgo.errors.Errors.new_("tls: CurvePreferences includes unsupported curve");
                };
            };
            var __tmp__ = _generateECDHEParameters(_c.value._config.value._rand(), _selectedGroup), _params:T_ecdheParameters = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _c.value._sendAlert(_alertInternalError);
                return _err;
            };
            _hs.value._hello.value._serverShare = (({ _group : _selectedGroup, _data : _params.publicKey() } : T_keyShare)).__copy__();
            _hs.value._sharedKey = _params.sharedKey(_clientKeyShare.value._data);
            if (_hs.value._sharedKey == null || _hs.value._sharedKey.isNil()) {
                _c.value._sendAlert(_alertIllegalParameter);
                return stdgo.errors.Errors.new_("tls: invalid client key share");
            };
            _c.value._serverName = _hs.value._clientHello.value._serverName;
            return ((null : stdgo.Error));
        });
    }
    public function _handshake():Error {
        var _hs = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var _c:Pointer<Conn> = _hs.value._c;
        {
            var _err:stdgo.Error = _hs.value._processClientHello();
            if (_err != null) {
                return _err;
            };
        };
        {
            var _err:stdgo.Error = _hs.value._checkForResumption();
            if (_err != null) {
                return _err;
            };
        };
        {
            var _err:stdgo.Error = _hs.value._pickCertificate();
            if (_err != null) {
                return _err;
            };
        };
        _c.value._buffering = true;
        {
            var _err:stdgo.Error = _hs.value._sendServerParameters();
            if (_err != null) {
                return _err;
            };
        };
        {
            var _err:stdgo.Error = _hs.value._sendServerCertificate();
            if (_err != null) {
                return _err;
            };
        };
        {
            var _err:stdgo.Error = _hs.value._sendServerFinished();
            if (_err != null) {
                return _err;
            };
        };
        {
            var __tmp__ = _c.value._flush(), _:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return _err;
            };
        };
        {
            var _err:stdgo.Error = _hs.value._readClientCertificate();
            if (_err != null) {
                return _err;
            };
        };
        {
            var _err:stdgo.Error = _hs.value._readClientFinished();
            if (_err != null) {
                return _err;
            };
        };
        stdgo.sync.atomic.Atomic.storeUint32(Go.pointer(_c.value._handshakeStatus), ((1 : GoUInt32)));
        return ((null : stdgo.Error));
    }
    public var _c : Pointer<Conn> = new Pointer<Conn>().nil();
    public var _ctx : stdgo.context.Context.Context = ((null : stdgo.context.Context.Context));
    public var _clientHello : Pointer<T_clientHelloMsg> = new Pointer<T_clientHelloMsg>().nil();
    public var _hello : Pointer<T_serverHelloMsg> = new Pointer<T_serverHelloMsg>().nil();
    public var _sentDummyCCS : Bool = false;
    public var _usingPSK : Bool = false;
    public var _suite : Pointer<T_cipherSuiteTLS13> = new Pointer<T_cipherSuiteTLS13>().nil();
    public var _cert : Pointer<Certificate> = new Pointer<Certificate>().nil();
    public var _sigAlg : SignatureScheme = new SignatureScheme();
    public var _earlySecret : Slice<GoUInt8> = new Slice<GoUInt8>().nil();
    public var _sharedKey : Slice<GoUInt8> = new Slice<GoUInt8>().nil();
    public var _handshakeSecret : Slice<GoUInt8> = new Slice<GoUInt8>().nil();
    public var _masterSecret : Slice<GoUInt8> = new Slice<GoUInt8>().nil();
    public var _trafficSecret : Slice<GoUInt8> = new Slice<GoUInt8>().nil();
    public var _transcript : stdgo.hash.Hash.Hash = ((null : stdgo.hash.Hash.Hash));
    public var _clientFinished : Slice<GoUInt8> = new Slice<GoUInt8>().nil();
    public function new(?_c:Pointer<Conn>, ?_ctx:stdgo.context.Context.Context, ?_clientHello:Pointer<T_clientHelloMsg>, ?_hello:Pointer<T_serverHelloMsg>, ?_sentDummyCCS:Bool, ?_usingPSK:Bool, ?_suite:Pointer<T_cipherSuiteTLS13>, ?_cert:Pointer<Certificate>, ?_sigAlg:SignatureScheme, ?_earlySecret:Slice<GoUInt8>, ?_sharedKey:Slice<GoUInt8>, ?_handshakeSecret:Slice<GoUInt8>, ?_masterSecret:Slice<GoUInt8>, ?_trafficSecret:Slice<GoUInt8>, ?_transcript:stdgo.hash.Hash.Hash, ?_clientFinished:Slice<GoUInt8>) stdgo.internal.Macro.initLocals();
    public function toString() {
        return '{' + Go.string(_c) + " " + Go.string(_ctx) + " " + Go.string(_clientHello) + " " + Go.string(_hello) + " " + Go.string(_sentDummyCCS) + " " + Go.string(_usingPSK) + " " + Go.string(_suite) + " " + Go.string(_cert) + " " + Go.string(_sigAlg) + " " + Go.string(_earlySecret) + " " + Go.string(_sharedKey) + " " + Go.string(_handshakeSecret) + " " + Go.string(_masterSecret) + " " + Go.string(_trafficSecret) + " " + Go.string(_transcript) + " " + Go.string(_clientFinished) + "}";
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_serverHandshakeStateTLS13(
_c,
_ctx,
_clientHello,
_hello,
_sentDummyCCS,
_usingPSK,
_suite,
_cert,
_sigAlg,
_earlySecret,
_sharedKey,
_handshakeSecret,
_masterSecret,
_trafficSecret,
_transcript,
_clientFinished);
    }
    public function __set__(__tmp__) {
        this._c = __tmp__._c;
        this._ctx = __tmp__._ctx;
        this._clientHello = __tmp__._clientHello;
        this._hello = __tmp__._hello;
        this._sentDummyCCS = __tmp__._sentDummyCCS;
        this._usingPSK = __tmp__._usingPSK;
        this._suite = __tmp__._suite;
        this._cert = __tmp__._cert;
        this._sigAlg = __tmp__._sigAlg;
        this._earlySecret = __tmp__._earlySecret;
        this._sharedKey = __tmp__._sharedKey;
        this._handshakeSecret = __tmp__._handshakeSecret;
        this._masterSecret = __tmp__._masterSecret;
        this._trafficSecret = __tmp__._trafficSecret;
        this._transcript = __tmp__._transcript;
        this._clientFinished = __tmp__._clientFinished;
        return this;
    }
}
@:structInit class T_rsaKeyAgreement {
    public function _generateClientKeyExchange(_config:Pointer<Config>, _clientHello:Pointer<T_clientHelloMsg>, _cert:Pointer<stdgo.crypto.x509.X509.Certificate>):{ var _0 : Slice<GoByte>; var _1 : Pointer<T_clientKeyExchangeMsg>; var _2 : Error; } {
        var _ka = this.__copy__();
        var _preMasterSecret:Slice<GoUInt8> = new Slice<GoUInt8>(...[for (i in 0 ... ((((48 : GoInt)) : GoInt)).toBasic()) ((0 : GoUInt8))]);
        _preMasterSecret[((0 : GoInt))] = (((_clientHello.value._vers >> ((8 : GoUnTypedInt))) : GoByte));
        _preMasterSecret[((1 : GoInt))] = ((_clientHello.value._vers : GoByte));
        var __tmp__ = stdgo.io.Io.readFull(_config.value._rand(), _preMasterSecret.__slice__(((2 : GoInt)))), _:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : new Slice<GoUInt8>().nil(), _1 : new Pointer<T_clientKeyExchangeMsg>().nil(), _2 : _err };
        };
        var __tmp__ = try {
            { value : ((_cert.value.publicKey.value : Pointer<stdgo.crypto.rsa.Rsa.PublicKey>)), ok : true };
        } catch(_) {
            { value : new Pointer<stdgo.crypto.rsa.Rsa.PublicKey>().nil(), ok : false };
        }, _rsaKey = __tmp__.value, _ok = __tmp__.ok;
        if (!_ok) {
            return { _0 : new Slice<GoUInt8>().nil(), _1 : new Pointer<T_clientKeyExchangeMsg>().nil(), _2 : stdgo.errors.Errors.new_("tls: server certificate contains incorrect key type for selected ciphersuite") };
        };
        var __tmp__ = stdgo.crypto.rsa.Rsa.encryptPKCS1v15(_config.value._rand(), _rsaKey, _preMasterSecret), _encrypted:Slice<GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : new Slice<GoUInt8>().nil(), _1 : new Pointer<T_clientKeyExchangeMsg>().nil(), _2 : _err };
        };
        var _ckx:Pointer<T_clientKeyExchangeMsg> = Go.pointer(new T_clientKeyExchangeMsg());
        _ckx.value._ciphertext = new Slice<GoUInt8>(...[for (i in 0 ... ((_encrypted.length + ((2 : GoInt)) : GoInt)).toBasic()) ((0 : GoUInt8))]);
        _ckx.value._ciphertext[((0 : GoInt))] = (((_encrypted.length >> ((8 : GoUnTypedInt))) : GoByte));
        _ckx.value._ciphertext[((1 : GoInt))] = ((_encrypted.length : GoByte));
        Go.copy(_ckx.value._ciphertext.__slice__(((2 : GoInt))), _encrypted);
        return { _0 : _preMasterSecret, _1 : _ckx, _2 : ((null : stdgo.Error)) };
    }
    public function _processServerKeyExchange(_config:Pointer<Config>, _clientHello:Pointer<T_clientHelloMsg>, _serverHello:Pointer<T_serverHelloMsg>, _cert:Pointer<stdgo.crypto.x509.X509.Certificate>, _skx:Pointer<T_serverKeyExchangeMsg>):Error {
        var _ka = this.__copy__();
        return stdgo.errors.Errors.new_("tls: unexpected ServerKeyExchange");
    }
    public function _processClientKeyExchange(_config:Pointer<Config>, _cert:Pointer<Certificate>, _ckx:Pointer<T_clientKeyExchangeMsg>, _version:GoUInt16):{ var _0 : Slice<GoByte>; var _1 : Error; } {
        var _ka = this.__copy__();
        if (_ckx.value._ciphertext.length < ((2 : GoInt))) {
            return { _0 : new Slice<GoUInt8>().nil(), _1 : _errClientKeyExchange };
        };
        var _ciphertextLen:GoInt = (((_ckx.value._ciphertext[((0 : GoInt))] : GoInt)) << ((8 : GoUnTypedInt))) | ((_ckx.value._ciphertext[((1 : GoInt))] : GoInt));
        if (_ciphertextLen != _ckx.value._ciphertext.length - ((2 : GoInt))) {
            return { _0 : new Slice<GoUInt8>().nil(), _1 : _errClientKeyExchange };
        };
        var _ciphertext:Slice<GoUInt8> = _ckx.value._ciphertext.__slice__(((2 : GoInt)));
        var __tmp__ = try {
            { value : ((_cert.value.privateKey.value : stdgo.crypto.Crypto.Decrypter)), ok : true };
        } catch(_) {
            { value : ((null : stdgo.crypto.Crypto.Decrypter)), ok : false };
        }, _priv = __tmp__.value, _ok = __tmp__.ok;
        if (!_ok) {
            return { _0 : new Slice<GoUInt8>().nil(), _1 : stdgo.errors.Errors.new_("tls: certificate private key does not implement crypto.Decrypter") };
        };
        var __tmp__ = _priv.decrypt(_config.value._rand(), _ciphertext, Go.toInterface(Go.pointer((({ sessionKeyLen : ((48 : GoInt)) } : stdgo.crypto.rsa.Rsa.PKCS1v15DecryptOptions))))), _preMasterSecret:Slice<GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : new Slice<GoUInt8>().nil(), _1 : _err };
        };
        return { _0 : _preMasterSecret, _1 : ((null : stdgo.Error)) };
    }
    public function _generateServerKeyExchange(_config:Pointer<Config>, _cert:Pointer<Certificate>, _clientHello:Pointer<T_clientHelloMsg>, _hello:Pointer<T_serverHelloMsg>):{ var _0 : Pointer<T_serverKeyExchangeMsg>; var _1 : Error; } {
        var _ka = this.__copy__();
        return { _0 : new Pointer<T_serverKeyExchangeMsg>().nil(), _1 : ((null : stdgo.Error)) };
    }
    public function new() stdgo.internal.Macro.initLocals();
    public function toString() {
        return "{}";
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_rsaKeyAgreement();
    }
    public function __set__(__tmp__) {
        return this;
    }
}
@:structInit class T_ecdheKeyAgreement {
    public function _generateClientKeyExchange(_config:Pointer<Config>, _clientHello:Pointer<T_clientHelloMsg>, _cert:Pointer<stdgo.crypto.x509.X509.Certificate>):{ var _0 : Slice<GoByte>; var _1 : Pointer<T_clientKeyExchangeMsg>; var _2 : Error; } {
        var _ka = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        if (_ka.value._ckx == null || _ka.value._ckx.isNil()) {
            return { _0 : new Slice<GoUInt8>().nil(), _1 : new Pointer<T_clientKeyExchangeMsg>().nil(), _2 : stdgo.errors.Errors.new_("tls: missing ServerKeyExchange message") };
        };
        return { _0 : _ka.value._preMasterSecret, _1 : _ka.value._ckx, _2 : ((null : stdgo.Error)) };
    }
    public function _processServerKeyExchange(_config:Pointer<Config>, _clientHello:Pointer<T_clientHelloMsg>, _serverHello:Pointer<T_serverHelloMsg>, _cert:Pointer<stdgo.crypto.x509.X509.Certificate>, _skx:Pointer<T_serverKeyExchangeMsg>):Error {
        var _ka = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        if (_skx.value._key.length < ((4 : GoInt))) {
            return _errServerKeyExchange;
        };
        if (_skx.value._key[((0 : GoInt))] != ((3 : GoUInt8))) {
            return stdgo.errors.Errors.new_("tls: server selected unsupported curve");
        };
        var _curveID:CurveID = new CurveID((new CurveID(new CurveID(_skx.value._key[((1 : GoInt))]).__t__ << ((8 : GoUnTypedInt)))).__t__ | new CurveID(_skx.value._key[((2 : GoInt))]).__t__);
        var _publicLen:GoInt = ((_skx.value._key[((3 : GoInt))] : GoInt));
        if (_publicLen + ((4 : GoInt)) > _skx.value._key.length) {
            return _errServerKeyExchange;
        };
        var _serverECDHEParams:Slice<GoUInt8> = _skx.value._key.__slice__(0, ((4 : GoInt)) + _publicLen);
        var _publicKey:Slice<GoUInt8> = _serverECDHEParams.__slice__(((4 : GoInt)));
        var _sig:Slice<GoUInt8> = _skx.value._key.__slice__(((4 : GoInt)) + _publicLen);
        if (_sig.length < ((2 : GoInt))) {
            return _errServerKeyExchange;
        };
        {
            var __tmp__ = _curveForCurveID(_curveID), _:stdgo.crypto.elliptic.Elliptic.Curve = __tmp__._0, _ok:Bool = __tmp__._1;
            if (_curveID.__t__ != x25519.__t__ && !_ok) {
                return stdgo.errors.Errors.new_("tls: server selected unsupported curve");
            };
        };
        var __tmp__ = _generateECDHEParameters(_config.value._rand(), _curveID), _params:T_ecdheParameters = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return _err;
        };
        _ka.value._params = _params;
        _ka.value._preMasterSecret = _params.sharedKey(_publicKey);
        if (_ka.value._preMasterSecret == null || _ka.value._preMasterSecret.isNil()) {
            return _errServerKeyExchange;
        };
        var _ourPublicKey:Slice<GoUInt8> = _params.publicKey();
        _ka.value._ckx = Go.pointer(new T_clientKeyExchangeMsg());
        _ka.value._ckx.value._ciphertext = new Slice<GoUInt8>(...[for (i in 0 ... ((((1 : GoInt)) + _ourPublicKey.length : GoInt)).toBasic()) ((0 : GoUInt8))]);
        _ka.value._ckx.value._ciphertext[((0 : GoInt))] = ((_ourPublicKey.length : GoByte));
        Go.copy(_ka.value._ckx.value._ciphertext.__slice__(((1 : GoInt))), _ourPublicKey);
        var _sigType:GoUInt8 = ((0 : GoUInt8));
        var _sigHash:stdgo.crypto.Crypto.Hash = new stdgo.crypto.Crypto.Hash();
        if (_ka.value._version >= versionTLS12) {
            var _signatureAlgorithm:SignatureScheme = new SignatureScheme((new SignatureScheme(new SignatureScheme(_sig[((0 : GoInt))]).__t__ << ((8 : GoUnTypedInt)))).__t__ | new SignatureScheme(_sig[((1 : GoInt))]).__t__);
            _sig = _sig.__slice__(((2 : GoInt)));
            if (_sig.length < ((2 : GoInt))) {
                return _errServerKeyExchange;
            };
            if (!_isSupportedSignatureAlgorithm(_signatureAlgorithm, _clientHello.value._supportedSignatureAlgorithms)) {
                return stdgo.errors.Errors.new_("tls: certificate used with invalid signature algorithm");
            };
            {
                var __tmp__ = _typeAndHashFromSignatureScheme(_signatureAlgorithm);
                _sigType = __tmp__._0;
                _sigHash = __tmp__._1;
                _err = __tmp__._2;
            };
            if (_err != null) {
                return _err;
            };
        } else {
            {
                var __tmp__ = _legacyTypeAndHashFromPublicKey(Go.toInterface(_cert.value.publicKey));
                _sigType = __tmp__._0;
                _sigHash = __tmp__._1;
                _err = __tmp__._2;
            };
            if (_err != null) {
                return _err;
            };
        };
        if ((_sigType == _signaturePKCS1v15 || _sigType == _signatureRSAPSS) != _ka.value._isRSA) {
            return _errServerKeyExchange;
        };
        var _sigLen:GoInt = (((_sig[((0 : GoInt))] : GoInt)) << ((8 : GoUnTypedInt))) | ((_sig[((1 : GoInt))] : GoInt));
        if (_sigLen + ((2 : GoInt)) != _sig.length) {
            return _errServerKeyExchange;
        };
        _sig = _sig.__slice__(((2 : GoInt)));
        var _signed:Slice<GoUInt8> = _hashForServerKeyExchange(_sigType, _sigHash, _ka.value._version, _clientHello.value._random, _serverHello.value._random, _serverECDHEParams);
        {
            var _err:stdgo.Error = _verifyHandshakeSignature(_sigType, Go.toInterface(_cert.value.publicKey), _sigHash, _signed, _sig);
            if (_err != null) {
                return stdgo.errors.Errors.new_((("tls: invalid signature by the server certificate: " : GoString)) + _err.error());
            };
        };
        return ((null : stdgo.Error));
    }
    public function _processClientKeyExchange(_config:Pointer<Config>, _cert:Pointer<Certificate>, _ckx:Pointer<T_clientKeyExchangeMsg>, _version:GoUInt16):{ var _0 : Slice<GoByte>; var _1 : Error; } {
        var _ka = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        if (_ckx.value._ciphertext.length == ((0 : GoInt)) || ((_ckx.value._ciphertext[((0 : GoInt))] : GoInt)) != _ckx.value._ciphertext.length - ((1 : GoInt))) {
            return { _0 : new Slice<GoUInt8>().nil(), _1 : _errClientKeyExchange };
        };
        var _preMasterSecret:Slice<GoUInt8> = _ka.value._params.sharedKey(_ckx.value._ciphertext.__slice__(((1 : GoInt))));
        if (_preMasterSecret == null || _preMasterSecret.isNil()) {
            return { _0 : new Slice<GoUInt8>().nil(), _1 : _errClientKeyExchange };
        };
        return { _0 : _preMasterSecret, _1 : ((null : stdgo.Error)) };
    }
    public function _generateServerKeyExchange(_config:Pointer<Config>, _cert:Pointer<Certificate>, _clientHello:Pointer<T_clientHelloMsg>, _hello:Pointer<T_serverHelloMsg>):{ var _0 : Pointer<T_serverKeyExchangeMsg>; var _1 : Error; } {
        var _ka = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var _curveID:CurveID = new CurveID();
        for (_c in _clientHello.value._supportedCurves) {
            if (_config.value._supportsCurve(_c)) {
                _curveID = _c;
                break;
            };
        };
        if (_curveID.__t__ == ((0 : GoUInt16))) {
            return { _0 : new Pointer<T_serverKeyExchangeMsg>().nil(), _1 : stdgo.errors.Errors.new_("tls: no supported elliptic curves offered") };
        };
        {
            var __tmp__ = _curveForCurveID(_curveID), _:stdgo.crypto.elliptic.Elliptic.Curve = __tmp__._0, _ok:Bool = __tmp__._1;
            if (_curveID.__t__ != x25519.__t__ && !_ok) {
                return { _0 : new Pointer<T_serverKeyExchangeMsg>().nil(), _1 : stdgo.errors.Errors.new_("tls: CurvePreferences includes unsupported curve") };
            };
        };
        var __tmp__ = _generateECDHEParameters(_config.value._rand(), _curveID), _params:T_ecdheParameters = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : new Pointer<T_serverKeyExchangeMsg>().nil(), _1 : _err };
        };
        _ka.value._params = _params;
        var _ecdhePublic:Slice<GoUInt8> = _params.publicKey();
        var _serverECDHEParams:Slice<GoUInt8> = new Slice<GoUInt8>(...[for (i in 0 ... ((((1 : GoUnTypedInt)) + ((2 : GoUnTypedInt)) + ((1 : GoUnTypedInt)) + _ecdhePublic.length : GoInt)).toBasic()) ((0 : GoUInt8))]);
        _serverECDHEParams[((0 : GoInt))] = ((3 : GoUInt8));
        _serverECDHEParams[((1 : GoInt))] = (new CurveID(_curveID.__t__ >> ((8 : GoUnTypedInt)))).__t__;
        _serverECDHEParams[((2 : GoInt))] = _curveID.__t__;
        _serverECDHEParams[((3 : GoInt))] = ((_ecdhePublic.length : GoByte));
        Go.copy(_serverECDHEParams.__slice__(((4 : GoInt))), _ecdhePublic);
        var __tmp__ = try {
            { value : ((_cert.value.privateKey.value : stdgo.crypto.Crypto.Signer)), ok : true };
        } catch(_) {
            { value : ((null : stdgo.crypto.Crypto.Signer)), ok : false };
        }, _priv = __tmp__.value, _ok = __tmp__.ok;
        if (!_ok) {
            return { _0 : new Pointer<T_serverKeyExchangeMsg>().nil(), _1 : stdgo.fmt.Fmt.errorf("tls: certificate private key of type %T does not implement crypto.Signer", Go.toInterface(_cert.value.privateKey)) };
        };
        var _signatureAlgorithm:SignatureScheme = new SignatureScheme();
        var _sigType:GoUInt8 = ((0 : GoUInt8));
        var _sigHash:stdgo.crypto.Crypto.Hash = new stdgo.crypto.Crypto.Hash();
        if (_ka.value._version >= versionTLS12) {
            {
                var __tmp__ = _selectSignatureScheme(_ka.value._version, _cert, _clientHello.value._supportedSignatureAlgorithms);
                _signatureAlgorithm = __tmp__._0;
                _err = __tmp__._1;
            };
            if (_err != null) {
                return { _0 : new Pointer<T_serverKeyExchangeMsg>().nil(), _1 : _err };
            };
            {
                var __tmp__ = _typeAndHashFromSignatureScheme(_signatureAlgorithm);
                _sigType = __tmp__._0;
                _sigHash = __tmp__._1;
                _err = __tmp__._2;
            };
            if (_err != null) {
                return { _0 : new Pointer<T_serverKeyExchangeMsg>().nil(), _1 : _err };
            };
        } else {
            {
                var __tmp__ = _legacyTypeAndHashFromPublicKey(Go.toInterface(_priv.public_()));
                _sigType = __tmp__._0;
                _sigHash = __tmp__._1;
                _err = __tmp__._2;
            };
            if (_err != null) {
                return { _0 : new Pointer<T_serverKeyExchangeMsg>().nil(), _1 : _err };
            };
        };
        if ((_sigType == _signaturePKCS1v15 || _sigType == _signatureRSAPSS) != _ka.value._isRSA) {
            return { _0 : new Pointer<T_serverKeyExchangeMsg>().nil(), _1 : stdgo.errors.Errors.new_("tls: certificate cannot be used with the selected cipher suite") };
        };
        var _signed:Slice<GoUInt8> = _hashForServerKeyExchange(_sigType, _sigHash, _ka.value._version, _clientHello.value._random, _hello.value._random, _serverECDHEParams);
        var _signOpts:stdgo.crypto.Crypto.SignerOpts = ((_sigHash : stdgo.crypto.Crypto.SignerOpts));
        if (_sigType == _signatureRSAPSS) {
            _signOpts = Go.pointer((({ saltLength : stdgo.crypto.rsa.Rsa.psssaltLengthEqualsHash, hash : _sigHash } : stdgo.crypto.rsa.Rsa.PSSOptions))).value;
        };
        var __tmp__ = _priv.sign(_config.value._rand(), _signed, _signOpts), _sig:Slice<GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : new Pointer<T_serverKeyExchangeMsg>().nil(), _1 : stdgo.errors.Errors.new_((("tls: failed to sign ECDHE parameters: " : GoString)) + _err.error()) };
        };
        var _skx:Pointer<T_serverKeyExchangeMsg> = Go.pointer(new T_serverKeyExchangeMsg());
        var _sigAndHashLen:GoInt = ((0 : GoInt));
        if (_ka.value._version >= versionTLS12) {
            _sigAndHashLen = ((2 : GoInt));
        };
        _skx.value._key = new Slice<GoUInt8>(...[for (i in 0 ... ((_serverECDHEParams.length + _sigAndHashLen + ((2 : GoInt)) + _sig.length : GoInt)).toBasic()) ((0 : GoUInt8))]);
        Go.copy(_skx.value._key, _serverECDHEParams);
        var _k:Slice<GoUInt8> = _skx.value._key.__slice__(_serverECDHEParams.length);
        if (_ka.value._version >= versionTLS12) {
            _k[((0 : GoInt))] = (new SignatureScheme(_signatureAlgorithm.__t__ >> ((8 : GoUnTypedInt)))).__t__;
            _k[((1 : GoInt))] = _signatureAlgorithm.__t__;
            _k = _k.__slice__(((2 : GoInt)));
        };
        _k[((0 : GoInt))] = (((_sig.length >> ((8 : GoUnTypedInt))) : GoByte));
        _k[((1 : GoInt))] = ((_sig.length : GoByte));
        Go.copy(_k.__slice__(((2 : GoInt))), _sig);
        return { _0 : _skx, _1 : ((null : stdgo.Error)) };
    }
    public var _version : GoUInt16 = ((0 : GoUInt16));
    public var _isRSA : Bool = false;
    public var _params : T_ecdheParameters = ((null : T_ecdheParameters));
    public var _ckx : Pointer<T_clientKeyExchangeMsg> = new Pointer<T_clientKeyExchangeMsg>().nil();
    public var _preMasterSecret : Slice<GoUInt8> = new Slice<GoUInt8>().nil();
    public function new(?_version:GoUInt16, ?_isRSA:Bool, ?_params:T_ecdheParameters, ?_ckx:Pointer<T_clientKeyExchangeMsg>, ?_preMasterSecret:Slice<GoUInt8>) stdgo.internal.Macro.initLocals();
    public function toString() {
        return '{' + Go.string(_version) + " " + Go.string(_isRSA) + " " + Go.string(_params) + " " + Go.string(_ckx) + " " + Go.string(_preMasterSecret) + "}";
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_ecdheKeyAgreement(_version, _isRSA, _params, _ckx, _preMasterSecret);
    }
    public function __set__(__tmp__) {
        this._version = __tmp__._version;
        this._isRSA = __tmp__._isRSA;
        this._params = __tmp__._params;
        this._ckx = __tmp__._ckx;
        this._preMasterSecret = __tmp__._preMasterSecret;
        return this;
    }
}
@:structInit class T_nistParameters {
    public function sharedKey(_peerPublicKey:Slice<GoByte>):Slice<GoByte> {
        var _p = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var __tmp__ = _curveForCurveID(_p.value._curveID), _curve:stdgo.crypto.elliptic.Elliptic.Curve = __tmp__._0, _:Bool = __tmp__._1;
        var __tmp__ = stdgo.crypto.elliptic.Elliptic.unmarshal(_curve, _peerPublicKey), _x:Pointer<stdgo.math.big.Big.Int_> = __tmp__._0, _y:Pointer<stdgo.math.big.Big.Int_> = __tmp__._1;
        if (_x == null || _x.isNil()) {
            return new Slice<GoUInt8>().nil();
        };
        var __tmp__ = _curve.scalarMult(_x, _y, _p.value._privateKey), _xShared:Pointer<stdgo.math.big.Big.Int_> = __tmp__._0, _:Pointer<stdgo.math.big.Big.Int_> = __tmp__._1;
        var _sharedKey:Slice<GoUInt8> = new Slice<GoUInt8>(...[for (i in 0 ... (((_curve.params().value.bitSize + ((7 : GoInt))) / ((8 : GoInt)) : GoInt)).toBasic()) ((0 : GoUInt8))]);
        return _xShared.value.fillBytes(_sharedKey);
    }
    public function publicKey():Slice<GoByte> {
        var _p = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var __tmp__ = _curveForCurveID(_p.value._curveID), _curve:stdgo.crypto.elliptic.Elliptic.Curve = __tmp__._0, _:Bool = __tmp__._1;
        return stdgo.crypto.elliptic.Elliptic.marshal(_curve, _p.value._x, _p.value._y);
    }
    public function curveID():CurveID {
        var _p = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        return _p.value._curveID;
    }
    public var _privateKey : Slice<GoUInt8> = new Slice<GoUInt8>().nil();
    public var _x : Pointer<stdgo.math.big.Big.Int_> = new Pointer<stdgo.math.big.Big.Int_>().nil();
    public var _y : Pointer<stdgo.math.big.Big.Int_> = new Pointer<stdgo.math.big.Big.Int_>().nil();
    public var _curveID : CurveID = new CurveID();
    public function new(?_privateKey:Slice<GoUInt8>, ?_x:Pointer<stdgo.math.big.Big.Int_>, ?_y:Pointer<stdgo.math.big.Big.Int_>, ?_curveID:CurveID) stdgo.internal.Macro.initLocals();
    public function toString() {
        return '{' + Go.string(_privateKey) + " " + Go.string(_x) + " " + Go.string(_y) + " " + Go.string(_curveID) + "}";
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_nistParameters(_privateKey, _x, _y, _curveID);
    }
    public function __set__(__tmp__) {
        this._privateKey = __tmp__._privateKey;
        this._x = __tmp__._x;
        this._y = __tmp__._y;
        this._curveID = __tmp__._curveID;
        return this;
    }
}
@:structInit class T_x25519Parameters {
    public function sharedKey(_peerPublicKey:Slice<GoByte>):Slice<GoByte> {
        var _p = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var __tmp__ = golang_org.x.crypto.curve25519.Curve25519.x25519(_p.value._privateKey, _peerPublicKey), _sharedKey:Slice<GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return new Slice<GoUInt8>().nil();
        };
        return _sharedKey;
    }
    public function publicKey():Slice<GoByte> {
        var _p = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        return _p.value._publicKey.__slice__(0);
    }
    public function curveID():CurveID {
        var _p = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        return x25519;
    }
    public var _privateKey : Slice<GoUInt8> = new Slice<GoUInt8>().nil();
    public var _publicKey : Slice<GoUInt8> = new Slice<GoUInt8>().nil();
    public function new(?_privateKey:Slice<GoUInt8>, ?_publicKey:Slice<GoUInt8>) stdgo.internal.Macro.initLocals();
    public function toString() {
        return '{' + Go.string(_privateKey) + " " + Go.string(_publicKey) + "}";
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_x25519Parameters(_privateKey, _publicKey);
    }
    public function __set__(__tmp__) {
        this._privateKey = __tmp__._privateKey;
        this._publicKey = __tmp__._publicKey;
        return this;
    }
}
@:structInit class T_finishedHash {
    public function _discardHandshakeBuffer():Void {
        var _h = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        _h.value._buffer = new Slice<GoUInt8>().nil();
    }
    public function _hashForClientCertificate(_sigType:GoUInt8, _hashAlg:stdgo.crypto.Crypto.Hash, _masterSecret:Slice<GoByte>):Slice<GoByte> {
        var _h = this.__copy__();
        if ((_h._version >= versionTLS12 || _sigType == _signatureEd25519) && _h._buffer == null || _h._buffer.isNil()) {
            throw "tls: handshake hash for a client certificate requested after discarding the handshake buffer";
        };
        if (_sigType == _signatureEd25519) {
            return _h._buffer;
        };
        if (_h._version >= versionTLS12) {
            var _hash:stdgo.hash.Hash.Hash = _hashAlg.new_();
            _hash.write(_h._buffer);
            return _hash.sum(new Slice<GoUInt8>().nil());
        };
        if (_sigType == _signatureECDSA) {
            return _h._server.sum(new Slice<GoUInt8>().nil());
        };
        return _h.sum();
    }
    public function _serverSum(_masterSecret:Slice<GoByte>):Slice<GoByte> {
        var _h = this.__copy__();
        var _out:Slice<GoUInt8> = new Slice<GoUInt8>(...[for (i in 0 ... ((_finishedVerifyLength : GoInt)).toBasic()) ((0 : GoUInt8))]);
        _h._prf(_out, _masterSecret, _serverFinishedLabel, _h.sum());
        return _out;
    }
    public function _clientSum(_masterSecret:Slice<GoByte>):Slice<GoByte> {
        var _h = this.__copy__();
        var _out:Slice<GoUInt8> = new Slice<GoUInt8>(...[for (i in 0 ... ((_finishedVerifyLength : GoInt)).toBasic()) ((0 : GoUInt8))]);
        _h._prf(_out, _masterSecret, _clientFinishedLabel, _h.sum());
        return _out;
    }
    public function sum():Slice<GoByte> {
        var _h = this.__copy__();
        if (_h._version >= versionTLS12) {
            return _h._client.sum(new Slice<GoUInt8>().nil());
        };
        var _out:Slice<GoUInt8> = new Slice<GoUInt8>(...[for (i in 0 ... ((((0 : GoInt)) : GoInt)).toBasic()) ((0 : GoUInt8))]).setCap(((stdgo.crypto.md5.Md5.size + stdgo.crypto.sha1.Sha1.size : GoInt)).toBasic());
        _out = _h._clientMD5.sum(_out);
        return _h._client.sum(_out);
    }
    public function write(_msg:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } {
        var _h = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var _n:GoInt = ((0 : GoInt)), _err:Error = ((null : stdgo.Error));
        _h.value._client.write(_msg);
        _h.value._server.write(_msg);
        if (_h.value._version < versionTLS12) {
            _h.value._clientMD5.write(_msg);
            _h.value._serverMD5.write(_msg);
        };
        if (_h.value._buffer != null && !_h.value._buffer.isNil()) {
            _h.value._buffer = _h.value._buffer.__append__(..._msg.toArray());
        };
        return { _0 : _msg.length, _1 : ((null : stdgo.Error)) };
    }
    public var _client : stdgo.hash.Hash.Hash = ((null : stdgo.hash.Hash.Hash));
    public var _server : stdgo.hash.Hash.Hash = ((null : stdgo.hash.Hash.Hash));
    public var _clientMD5 : stdgo.hash.Hash.Hash = ((null : stdgo.hash.Hash.Hash));
    public var _serverMD5 : stdgo.hash.Hash.Hash = ((null : stdgo.hash.Hash.Hash));
    public var _buffer : Slice<GoUInt8> = new Slice<GoUInt8>().nil();
    public var _version : GoUInt16 = ((0 : GoUInt16));
    public var _prf : (Slice<GoUInt8>, Slice<GoUInt8>, Slice<GoUInt8>, Slice<GoUInt8>) -> Void = null;
    public function new(?_client:stdgo.hash.Hash.Hash, ?_server:stdgo.hash.Hash.Hash, ?_clientMD5:stdgo.hash.Hash.Hash, ?_serverMD5:stdgo.hash.Hash.Hash, ?_buffer:Slice<GoUInt8>, ?_version:GoUInt16, ?_prf:(Slice<GoUInt8>, Slice<GoUInt8>, Slice<GoUInt8>, Slice<GoUInt8>) -> Void) stdgo.internal.Macro.initLocals();
    public function toString() {
        return '{' + Go.string(_client) + " " + Go.string(_server) + " " + Go.string(_clientMD5) + " " + Go.string(_serverMD5) + " " + Go.string(_buffer) + " " + Go.string(_version) + " " + Go.string(_prf) + "}";
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_finishedHash(_client, _server, _clientMD5, _serverMD5, _buffer, _version, _prf);
    }
    public function __set__(__tmp__) {
        this._client = __tmp__._client;
        this._server = __tmp__._server;
        this._clientMD5 = __tmp__._clientMD5;
        this._serverMD5 = __tmp__._serverMD5;
        this._buffer = __tmp__._buffer;
        this._version = __tmp__._version;
        this._prf = __tmp__._prf;
        return this;
    }
}
@:structInit class T_sessionState {
    public function _unmarshal(_data:Slice<GoByte>):Bool {
        var _m = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        _m.value = (({ _usedOldKey : _m.value._usedOldKey, _vers : 0, _cipherSuite : 0, _createdAt : 0, _masterSecret : new Slice<GoUInt8>().nil(), _certificates : new Slice<Slice<GoUInt8>>().nil() } : T_sessionState)).__copy__();
        var _s:vendor.golang_org.x.crypto.cryptobyte.Cryptobyte.String_ = new golang_org.x.crypto.cryptobyte.Cryptobyte.String_(_data).__copy__();
        {
            var _ok:Bool = _s.readUint16(Go.pointer(_m.value._vers)) && _s.readUint16(Go.pointer(_m.value._cipherSuite)) && _readUint64(Go.pointer(_s), Go.pointer(_m.value._createdAt)) && _readUint16LengthPrefixed(Go.pointer(_s), Go.pointer(_m.value._masterSecret)) && _m.value._masterSecret.length != ((0 : GoInt));
            if (!_ok) {
                return false;
            };
        };
        var _certList:golang_org.x.crypto.cryptobyte.Cryptobyte.String_ = new vendor.golang_org.x.crypto.cryptobyte.Cryptobyte.String_();
        if (!_s.readUint24LengthPrefixed(Go.pointer(_certList))) {
            return false;
        };
        while (!_certList.empty()) {
            var _cert:Slice<GoByte> = new Slice<GoUInt8>().nil();
            if (!_readUint24LengthPrefixed(Go.pointer(_certList), Go.pointer(_cert))) {
                return false;
            };
            _m.value._certificates = _m.value._certificates.__append__(_cert);
        };
        return _s.empty();
    }
    public function _marshal():Slice<GoByte> {
        var _m = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var _b:golang_org.x.crypto.cryptobyte.Cryptobyte.Builder = new vendor.golang_org.x.crypto.cryptobyte.Cryptobyte.Builder();
        _b.addUint16(_m.value._vers);
        _b.addUint16(_m.value._cipherSuite);
        _addUint64(Go.pointer(_b), _m.value._createdAt);
        _b.addUint16LengthPrefixed(new vendor.golang_org.x.crypto.cryptobyte.Cryptobyte.BuilderContinuation(function(_b:Pointer<golang_org.x.crypto.cryptobyte.Cryptobyte.Builder>):Void {
            _b.value.addBytes(_m.value._masterSecret);
        }));
        _b.addUint24LengthPrefixed(new vendor.golang_org.x.crypto.cryptobyte.Cryptobyte.BuilderContinuation(function(_b:Pointer<golang_org.x.crypto.cryptobyte.Cryptobyte.Builder>):Void {
            for (_cert in _m.value._certificates) {
                _b.value.addUint24LengthPrefixed(new vendor.golang_org.x.crypto.cryptobyte.Cryptobyte.BuilderContinuation(function(_b:Pointer<golang_org.x.crypto.cryptobyte.Cryptobyte.Builder>):Void {
                    _b.value.addBytes(_cert);
                }));
            };
        }));
        return _b.bytesOrPanic();
    }
    public var _vers : GoUInt16 = ((0 : GoUInt16));
    public var _cipherSuite : GoUInt16 = ((0 : GoUInt16));
    public var _createdAt : GoUInt64 = ((0 : GoUInt64));
    public var _masterSecret : Slice<GoUInt8> = new Slice<GoUInt8>().nil();
    public var _certificates : Slice<Slice<GoUInt8>> = new Slice<Slice<GoUInt8>>().nil();
    public var _usedOldKey : Bool = false;
    public function new(?_vers:GoUInt16, ?_cipherSuite:GoUInt16, ?_createdAt:GoUInt64, ?_masterSecret:Slice<GoUInt8>, ?_certificates:Slice<Slice<GoUInt8>>, ?_usedOldKey:Bool) stdgo.internal.Macro.initLocals();
    public function toString() {
        return '{' + Go.string(_vers) + " " + Go.string(_cipherSuite) + " " + Go.string(_createdAt) + " " + Go.string(_masterSecret) + " " + Go.string(_certificates) + " " + Go.string(_usedOldKey) + "}";
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_sessionState(_vers, _cipherSuite, _createdAt, _masterSecret, _certificates, _usedOldKey);
    }
    public function __set__(__tmp__) {
        this._vers = __tmp__._vers;
        this._cipherSuite = __tmp__._cipherSuite;
        this._createdAt = __tmp__._createdAt;
        this._masterSecret = __tmp__._masterSecret;
        this._certificates = __tmp__._certificates;
        this._usedOldKey = __tmp__._usedOldKey;
        return this;
    }
}
@:structInit class T_sessionStateTLS13 {
    public function _unmarshal(_data:Slice<GoByte>):Bool {
        var _m = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        _m.value = new T_sessionStateTLS13().__copy__();
        var _s:vendor.golang_org.x.crypto.cryptobyte.Cryptobyte.String_ = new golang_org.x.crypto.cryptobyte.Cryptobyte.String_(_data).__copy__();
        var _version:GoUInt16 = ((0 : GoUInt16));
        var _revision:GoUInt8 = ((0 : GoUInt8));
        return _s.readUint16(Go.pointer(_version)) && _version == versionTLS13 && _s.readUint8(Go.pointer(_revision)) && _revision == ((0 : GoUInt8)) && _s.readUint16(Go.pointer(_m.value._cipherSuite)) && _readUint64(Go.pointer(_s), Go.pointer(_m.value._createdAt)) && _readUint8LengthPrefixed(Go.pointer(_s), Go.pointer(_m.value._resumptionSecret)) && _m.value._resumptionSecret.length != ((0 : GoInt)) && _unmarshalCertificate(Go.pointer(_s), Go.pointer(_m.value._certificate)) && _s.empty();
    }
    public function _marshal():Slice<GoByte> {
        var _m = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var _b:golang_org.x.crypto.cryptobyte.Cryptobyte.Builder = new vendor.golang_org.x.crypto.cryptobyte.Cryptobyte.Builder();
        _b.addUint16(versionTLS13);
        _b.addUint8(((0 : GoUInt8)));
        _b.addUint16(_m.value._cipherSuite);
        _addUint64(Go.pointer(_b), _m.value._createdAt);
        _b.addUint8LengthPrefixed(new vendor.golang_org.x.crypto.cryptobyte.Cryptobyte.BuilderContinuation(function(_b:Pointer<golang_org.x.crypto.cryptobyte.Cryptobyte.Builder>):Void {
            _b.value.addBytes(_m.value._resumptionSecret);
        }));
        _marshalCertificate(Go.pointer(_b), _m.value._certificate.__copy__());
        return _b.bytesOrPanic();
    }
    public var _cipherSuite : GoUInt16 = ((0 : GoUInt16));
    public var _createdAt : GoUInt64 = ((0 : GoUInt64));
    public var _resumptionSecret : Slice<GoUInt8> = new Slice<GoUInt8>().nil();
    public var _certificate : Certificate = new Certificate();
    public function new(?_cipherSuite:GoUInt16, ?_createdAt:GoUInt64, ?_resumptionSecret:Slice<GoUInt8>, ?_certificate:Certificate) stdgo.internal.Macro.initLocals();
    public function toString() {
        return '{' + Go.string(_cipherSuite) + " " + Go.string(_createdAt) + " " + Go.string(_resumptionSecret) + " " + Go.string(_certificate) + "}";
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_sessionStateTLS13(_cipherSuite, _createdAt, _resumptionSecret, _certificate);
    }
    public function __set__(__tmp__) {
        this._cipherSuite = __tmp__._cipherSuite;
        this._createdAt = __tmp__._createdAt;
        this._resumptionSecret = __tmp__._resumptionSecret;
        this._certificate = __tmp__._certificate;
        return this;
    }
}
@:structInit class T_listener {
    public function accept():{ var _0 : stdgo.net.Net.Conn; var _1 : Error; } {
        var _l = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var __tmp__ = _l.value.listener.accept(), _c:stdgo.net.Net.Conn = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : ((null : stdgo.net.Net.Conn)), _1 : _err };
        };
        return { _0 : server(_c, _l.value._config).value, _1 : ((null : stdgo.Error)) };
    }
    @:embedded
    public var listener : stdgo.net.Net.Listener = ((null : stdgo.net.Net.Listener));
    public var _config : Pointer<Config> = new Pointer<Config>().nil();
    public function new(?listener:stdgo.net.Net.Listener, ?_config:Pointer<Config>) stdgo.internal.Macro.initLocals();
    public function toString() {
        return '{' + Go.string(listener) + " " + Go.string(_config) + "}";
    }
    public function addr():stdgo.net.Net.Addr return listener.addr();
    public function close():stdgo.Error return listener.close();
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_listener(listener, _config);
    }
    public function __set__(__tmp__) {
        this.listener = __tmp__.listener;
        this._config = __tmp__._config;
        return this;
    }
}
@:structInit class T_timeoutError {
    public function temporary():Bool {
        return true;
    }
    public function timeout():Bool {
        return true;
    }
    public function error():GoString {
        return "tls: DialWithDialer timed out";
    }
    public function new() stdgo.internal.Macro.initLocals();
    public function toString() {
        return "{}";
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_timeoutError();
    }
    public function __set__(__tmp__) {
        return this;
    }
}
@:structInit class Dialer {
    public function dialContext(_ctx:stdgo.context.Context.Context, _network:GoString, _addr:GoString):{ var _0 : stdgo.net.Net.Conn; var _1 : Error; } {
        var _d = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var __tmp__ = _dial(_ctx, _d.value._netDialer(), _network, _addr, _d.value.config), _c:Pointer<Conn> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : ((null : stdgo.net.Net.Conn)), _1 : _err };
        };
        return { _0 : _c.value, _1 : ((null : stdgo.Error)) };
    }
    public function _netDialer():Pointer<stdgo.net.Net.Dialer> {
        var _d = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        if (_d.value.netDialer != null && !_d.value.netDialer.isNil()) {
            return _d.value.netDialer;
        };
        return Go.pointer(new stdgo.net.Net.Dialer());
    }
    public function dial(_network:GoString, _addr:GoString):{ var _0 : stdgo.net.Net.Conn; var _1 : Error; } {
        var _d = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        return _d.value.dialContext(stdgo.context.Context.background(), _network, _addr);
    }
    public var netDialer : Pointer<stdgo.net.Net.Dialer> = new Pointer<stdgo.net.Net.Dialer>().nil();
    public var config : Pointer<Config> = new Pointer<Config>().nil();
    public function new(?netDialer:Pointer<stdgo.net.Net.Dialer>, ?config:Pointer<Config>) stdgo.internal.Macro.initLocals();
    public function toString() {
        return '{' + Go.string(netDialer) + " " + Go.string(config) + "}";
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new Dialer(netDialer, config);
    }
    public function __set__(__tmp__) {
        this.netDialer = __tmp__.netDialer;
        this.config = __tmp__.config;
        return this;
    }
}
@:structInit @:local class T__struct_59 {
    public var _scheme : SignatureScheme = new SignatureScheme();
    public var _minModulusBytes : GoInt = ((0 : GoInt));
    public var _maxVersion : GoUInt16 = ((0 : GoUInt16));
    public function new(?_scheme:SignatureScheme, ?_minModulusBytes:GoInt, ?_maxVersion:GoUInt16) stdgo.internal.Macro.initLocals();
    public function toString() {
        return '{' + Go.string(_scheme) + " " + Go.string(_minModulusBytes) + " " + Go.string(_maxVersion) + "}";
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T__struct_59(_scheme, _minModulusBytes, _maxVersion);
    }
    public function __set__(__tmp__) {
        this._scheme = __tmp__._scheme;
        this._minModulusBytes = __tmp__._minModulusBytes;
        this._maxVersion = __tmp__._maxVersion;
        return this;
    }
}
@:structInit @:local class T__struct_60 {
    public function new() stdgo.internal.Macro.initLocals();
    public function toString() {
        return "{}";
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T__struct_60();
    }
    public function __set__(__tmp__) {
        return this;
    }
}
var _outBufPool : stdgo.sync.Sync.Pool = (({ new_ : function():AnyInterface {
        return Go.toInterface(Go.pointer(new Slice<GoUInt8>().nil()));
    }, _noCopy : new stdgo.sync.Sync.T_noCopy(), _local : null, _localSize : 0, _victim : null, _victimSize : 0 } : stdgo.sync.Sync.Pool)).__copy__();
final _alertNoRenegotiation : T_alert = new T_alert(((100 : GoUInt8)));
var __SignatureScheme_index_8 : GoArray<GoUInt8> = new GoArray<GoUInt8>(((0 : GoUInt8)), ((13 : GoUInt8)), ((26 : GoUInt8)), ((39 : GoUInt8)), ((46 : GoUInt8))).copy();
final _pskModePlain : GoUInt8 = ((0 : GoUInt8));
final tls_ECDHE_RSA_WITH_AES_128_CBC_SHA256 : GoUInt16 = ((49191 : GoUInt16));
final tls_RSA_WITH_AES_128_GCM_SHA256 : GoUInt16 = ((156 : GoUInt16));
final tls_CHACHA20_POLY1305_SHA256 : GoUInt16 = ((4867 : GoUInt16));
final pkcs1withSHA1 : SignatureScheme = new SignatureScheme(((513 : GoUInt16)));
final _alertCertificateUnknown : T_alert = new T_alert(((46 : GoUInt8)));
final noClientCert : ClientAuthType = new ClientAuthType((0 : GoUnTypedInt));
final _resumptionBinderLabel : GoString = "res binder";
final _keyLogLabelTLS12 : GoString = "CLIENT_RANDOM";
final _ticketKeyLifetime : stdgo.time.Time.Duration = new stdgo.time.Time.Duration(new stdgo.time.Time.Duration(((7 : GoUnTypedInt)) * ((24 : GoUnTypedInt))).__t__ * stdgo.time.Time.hour.__t__);
final _alertIllegalParameter : T_alert = new T_alert(((47 : GoUInt8)));
final x25519 : CurveID = new CurveID(((29 : GoUInt16)));
final _serverSignatureContext : GoString = "TLS 1.3, server CertificateVerify\\x00";
final _keyLogLabelServerTraffic : GoString = "SERVER_TRAFFIC_SECRET_0";
final _alertCertificateUnobtainable : T_alert = new T_alert(((111 : GoUInt8)));
final tls_ECDHE_RSA_WITH_AES_128_GCM_SHA256 : GoUInt16 = ((49199 : GoUInt16));
final tls_AES_128_GCM_SHA256 : GoUInt16 = ((4865 : GoUInt16));
final tls_AES_256_GCM_SHA384 : GoUInt16 = ((4866 : GoUInt16));
var _cipherSuitesTLS13 : Slice<Pointer<T_cipherSuiteTLS13>> = new Slice<Pointer<T_cipherSuiteTLS13>>(Go.pointer(new T_cipherSuiteTLS13(tls_AES_128_GCM_SHA256, ((16 : GoInt)), _aeadAESGCMTLS13, stdgo.crypto.Crypto.sha256)), Go.pointer(new T_cipherSuiteTLS13(tls_CHACHA20_POLY1305_SHA256, ((32 : GoInt)), _aeadChaCha20Poly1305, stdgo.crypto.Crypto.sha256)), Go.pointer(new T_cipherSuiteTLS13(tls_AES_256_GCM_SHA384, ((32 : GoInt)), _aeadAESGCMTLS13, stdgo.crypto.Crypto.sha384)));
final versionTLS10 : GoInt64 = ((769 : GoUnTypedInt));
final versionTLS11 : GoInt64 = ((770 : GoUnTypedInt));
final versionTLS12 : GoInt64 = ((771 : GoUnTypedInt));
var _supportedUpToTLS12 : Slice<GoUInt16> = new Slice<GoUInt16>(versionTLS10, versionTLS11, versionTLS12);
final tls_ECDHE_RSA_WITH_RC4_128_SHA : GoUInt16 = ((49169 : GoUInt16));
final _serverApplicationTrafficLabel : GoString = "s ap traffic";
final _clientApplicationTrafficLabel : GoString = "c ap traffic";
var _helloRetryRequestRandom : Slice<GoUInt8> = new Slice<GoUInt8>(
((207 : GoUInt8)),
((33 : GoUInt8)),
((173 : GoUInt8)),
((116 : GoUInt8)),
((229 : GoUInt8)),
((154 : GoUInt8)),
((97 : GoUInt8)),
((17 : GoUInt8)),
((190 : GoUInt8)),
((29 : GoUInt8)),
((140 : GoUInt8)),
((2 : GoUInt8)),
((30 : GoUInt8)),
((101 : GoUInt8)),
((184 : GoUInt8)),
((145 : GoUInt8)),
((194 : GoUInt8)),
((162 : GoUInt8)),
((17 : GoUInt8)),
((22 : GoUInt8)),
((122 : GoUInt8)),
((187 : GoUInt8)),
((140 : GoUInt8)),
((94 : GoUInt8)),
((7 : GoUInt8)),
((158 : GoUInt8)),
((9 : GoUInt8)),
((226 : GoUInt8)),
((200 : GoUInt8)),
((168 : GoUInt8)),
((51 : GoUInt8)),
((156 : GoUInt8)));
final _alertUnsupportedCertificate : T_alert = new T_alert(((43 : GoUInt8)));
final tls_ECDHE_ECDSA_WITH_AES_128_GCM_SHA256 : GoUInt16 = ((49195 : GoUInt16));
final tls_ECDHE_ECDSA_WITH_AES_256_GCM_SHA384 : GoUInt16 = ((49196 : GoUInt16));
final tls_ECDHE_RSA_WITH_AES_256_GCM_SHA384 : GoUInt16 = ((49200 : GoUInt16));
final tls_ECDHE_ECDSA_WITH_CHACHA20_POLY1305_SHA256 : GoUInt16 = ((52393 : GoUInt16));
final tls_ECDHE_ECDSA_WITH_CHACHA20_POLY1305 : GoUInt16 = tls_ECDHE_ECDSA_WITH_CHACHA20_POLY1305_SHA256;
final tls_ECDHE_RSA_WITH_CHACHA20_POLY1305_SHA256 : GoUInt16 = ((52392 : GoUInt16));
final tls_ECDHE_RSA_WITH_CHACHA20_POLY1305 : GoUInt16 = tls_ECDHE_RSA_WITH_CHACHA20_POLY1305_SHA256;
final tls_ECDHE_ECDSA_WITH_AES_128_CBC_SHA : GoUInt16 = ((49161 : GoUInt16));
final tls_ECDHE_RSA_WITH_AES_128_CBC_SHA : GoUInt16 = ((49171 : GoUInt16));
final tls_ECDHE_ECDSA_WITH_AES_256_CBC_SHA : GoUInt16 = ((49162 : GoUInt16));
final tls_ECDHE_RSA_WITH_AES_256_CBC_SHA : GoUInt16 = ((49172 : GoUInt16));
final tls_RSA_WITH_AES_256_GCM_SHA384 : GoUInt16 = ((157 : GoUInt16));
final tls_RSA_WITH_AES_128_CBC_SHA : GoUInt16 = ((47 : GoUInt16));
final tls_RSA_WITH_AES_256_CBC_SHA : GoUInt16 = ((53 : GoUInt16));
final tls_ECDHE_RSA_WITH_3DES_EDE_CBC_SHA : GoUInt16 = ((49170 : GoUInt16));
final tls_RSA_WITH_3DES_EDE_CBC_SHA : GoUInt16 = ((10 : GoUInt16));
final tls_ECDHE_ECDSA_WITH_AES_128_CBC_SHA256 : GoUInt16 = ((49187 : GoUInt16));
final tls_RSA_WITH_AES_128_CBC_SHA256 : GoUInt16 = ((60 : GoUInt16));
final tls_ECDHE_ECDSA_WITH_RC4_128_SHA : GoUInt16 = ((49159 : GoUInt16));
final tls_RSA_WITH_RC4_128_SHA : GoUInt16 = ((5 : GoUInt16));
var _cipherSuitesPreferenceOrder : Slice<GoUInt16> = new Slice<GoUInt16>(
tls_ECDHE_ECDSA_WITH_AES_128_GCM_SHA256,
tls_ECDHE_RSA_WITH_AES_128_GCM_SHA256,
tls_ECDHE_ECDSA_WITH_AES_256_GCM_SHA384,
tls_ECDHE_RSA_WITH_AES_256_GCM_SHA384,
tls_ECDHE_ECDSA_WITH_CHACHA20_POLY1305,
tls_ECDHE_RSA_WITH_CHACHA20_POLY1305,
tls_ECDHE_ECDSA_WITH_AES_128_CBC_SHA,
tls_ECDHE_RSA_WITH_AES_128_CBC_SHA,
tls_ECDHE_ECDSA_WITH_AES_256_CBC_SHA,
tls_ECDHE_RSA_WITH_AES_256_CBC_SHA,
tls_RSA_WITH_AES_128_GCM_SHA256,
tls_RSA_WITH_AES_256_GCM_SHA384,
tls_RSA_WITH_AES_128_CBC_SHA,
tls_RSA_WITH_AES_256_CBC_SHA,
tls_ECDHE_RSA_WITH_3DES_EDE_CBC_SHA,
tls_RSA_WITH_3DES_EDE_CBC_SHA,
tls_ECDHE_ECDSA_WITH_AES_128_CBC_SHA256,
tls_ECDHE_RSA_WITH_AES_128_CBC_SHA256,
tls_RSA_WITH_AES_128_CBC_SHA256,
tls_ECDHE_ECDSA_WITH_RC4_128_SHA,
tls_ECDHE_RSA_WITH_RC4_128_SHA,
tls_RSA_WITH_RC4_128_SHA);
var _disabledCipherSuites : Slice<GoUInt16> = new Slice<GoUInt16>(tls_ECDHE_ECDSA_WITH_AES_128_CBC_SHA256, tls_ECDHE_RSA_WITH_AES_128_CBC_SHA256, tls_RSA_WITH_AES_128_CBC_SHA256, tls_ECDHE_ECDSA_WITH_RC4_128_SHA, tls_ECDHE_RSA_WITH_RC4_128_SHA, tls_RSA_WITH_RC4_128_SHA);
var _defaultCipherSuitesLen : GoInt = _cipherSuitesPreferenceOrder.length - _disabledCipherSuites.length;
final _alertCertificateExpired : T_alert = new T_alert(((45 : GoUInt8)));
final _alertDecryptError : T_alert = new T_alert(((51 : GoUInt8)));
final _maxCiphertextTLS13 : GoUnTypedInt = ((16384 : GoUnTypedInt)) + ((256 : GoUnTypedInt));
var _hasGCMAsmARM64 : Bool = internal.cpu.Cpu.arm64.hasAES && internal.cpu.Cpu.arm64.hasPMULL;
final __CurveID_name_0 : GoString = "CurveP256CurveP384CurveP521";
final _alertBadCertificateStatusResponse : T_alert = new T_alert(((113 : GoUInt8)));
final _recordSizeBoostThreshold : GoUnTypedInt = ((128 : GoUnTypedInt)) * ((1024 : GoUnTypedInt));
final __CurveID_name_1 : GoString = "X25519";
var _testingOnlyForceDowngradeCanary : Bool = false;
final _pointFormatUncompressed : GoUInt8 = ((0 : GoUInt8));
final _alertProtocolVersion : T_alert = new T_alert(((70 : GoUInt8)));
final _alertCertificateRequired : T_alert = new T_alert(((116 : GoUInt8)));
final _suiteSHA384 = (((1 : GoUnTypedInt)) << (3 : GoUnTypedInt));
final _suiteECSign = (((1 : GoUnTypedInt)) << (1 : GoUnTypedInt));
final _compressionNone : GoUInt8 = ((0 : GoUInt8));
final _alertCloseNotify : T_alert = new T_alert(((0 : GoUInt8)));
final _alertUnexpectedMessage : T_alert = new T_alert(((10 : GoUInt8)));
final _alertBadRecordMAC : T_alert = new T_alert(((20 : GoUInt8)));
final _alertDecryptionFailed : T_alert = new T_alert(((21 : GoUInt8)));
final _alertRecordOverflow : T_alert = new T_alert(((22 : GoUInt8)));
final _alertDecompressionFailure : T_alert = new T_alert(((30 : GoUInt8)));
final _alertHandshakeFailure : T_alert = new T_alert(((40 : GoUInt8)));
final _alertBadCertificate : T_alert = new T_alert(((42 : GoUInt8)));
final _alertCertificateRevoked : T_alert = new T_alert(((44 : GoUInt8)));
final _alertUnknownCA : T_alert = new T_alert(((48 : GoUInt8)));
final _alertAccessDenied : T_alert = new T_alert(((49 : GoUInt8)));
final _alertDecodeError : T_alert = new T_alert(((50 : GoUInt8)));
final _alertExportRestriction : T_alert = new T_alert(((60 : GoUInt8)));
final _alertInsufficientSecurity : T_alert = new T_alert(((71 : GoUInt8)));
final _alertInternalError : T_alert = new T_alert(((80 : GoUInt8)));
final _alertInappropriateFallback : T_alert = new T_alert(((86 : GoUInt8)));
final _alertUserCanceled : T_alert = new T_alert(((90 : GoUInt8)));
final _alertMissingExtension : T_alert = new T_alert(((109 : GoUInt8)));
final _alertUnsupportedExtension : T_alert = new T_alert(((110 : GoUInt8)));
final _alertUnrecognizedName : T_alert = new T_alert(((112 : GoUInt8)));
final _alertBadCertificateHashValue : T_alert = new T_alert(((114 : GoUInt8)));
final _alertUnknownPSKIdentity : T_alert = new T_alert(((115 : GoUInt8)));
final _alertNoApplicationProtocol : T_alert = new T_alert(((120 : GoUInt8)));
var _alertText : GoMap<T_alert, GoString> = new GoMap<T_alert, GoString>(
new stdgo.reflect.Reflect._Type(stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.named("crypto/tls.alert", [], stdgo.reflect.Reflect.GoType.basic(uint8_kind)), stdgo.reflect.Reflect.GoType.basic(string_kind))),
{ key : _alertCloseNotify, value : "close notify" },
{ key : _alertUnexpectedMessage, value : "unexpected message" },
{ key : _alertBadRecordMAC, value : "bad record MAC" },
{ key : _alertDecryptionFailed, value : "decryption failed" },
{ key : _alertRecordOverflow, value : "record overflow" },
{ key : _alertDecompressionFailure, value : "decompression failure" },
{ key : _alertHandshakeFailure, value : "handshake failure" },
{ key : _alertBadCertificate, value : "bad certificate" },
{ key : _alertUnsupportedCertificate, value : "unsupported certificate" },
{ key : _alertCertificateRevoked, value : "revoked certificate" },
{ key : _alertCertificateExpired, value : "expired certificate" },
{ key : _alertCertificateUnknown, value : "unknown certificate" },
{ key : _alertIllegalParameter, value : "illegal parameter" },
{ key : _alertUnknownCA, value : "unknown certificate authority" },
{ key : _alertAccessDenied, value : "access denied" },
{ key : _alertDecodeError, value : "error decoding message" },
{ key : _alertDecryptError, value : "error decrypting message" },
{ key : _alertExportRestriction, value : "export restriction" },
{ key : _alertProtocolVersion, value : "protocol version not supported" },
{ key : _alertInsufficientSecurity, value : "insufficient security level" },
{ key : _alertInternalError, value : "internal error" },
{ key : _alertInappropriateFallback, value : "inappropriate fallback" },
{ key : _alertUserCanceled, value : "user canceled" },
{ key : _alertNoRenegotiation, value : "no renegotiation" },
{ key : _alertMissingExtension, value : "missing extension" },
{ key : _alertUnsupportedExtension, value : "unsupported extension" },
{ key : _alertCertificateUnobtainable, value : "certificate unobtainable" },
{ key : _alertUnrecognizedName, value : "unrecognized name" },
{ key : _alertBadCertificateStatusResponse, value : "bad certificate status response" },
{ key : _alertBadCertificateHashValue, value : "bad certificate hash value" },
{ key : _alertUnknownPSKIdentity, value : "unknown PSK identity" },
{ key : _alertCertificateRequired, value : "certificate required" },
{ key : _alertNoApplicationProtocol, value : "no application protocol" });
final _extensionRenegotiationInfo : GoUInt16 = ((65281 : GoUInt16));
final _extensionALPN : GoUInt16 = ((16 : GoUInt16));
final _finishedVerifyLength : GoInt64 = ((12 : GoUnTypedInt));
var __ClientAuthType_index : GoArray<GoUInt8> = new GoArray<GoUInt8>(((0 : GoUInt8)), ((12 : GoUInt8)), ((29 : GoUInt8)), ((49 : GoUInt8)), ((72 : GoUInt8)), ((98 : GoUInt8))).copy();
final renegotiateFreelyAsClient : RenegotiationSupport = new RenegotiationSupport((2 : GoUnTypedInt));
final _recordTypeChangeCipherSpec : T_recordType = new T_recordType(((20 : GoUInt8)));
final verifyClientCertIfGiven : ClientAuthType = new ClientAuthType((3 : GoUnTypedInt));
final _extensionCertificateAuthorities : GoUInt16 = ((47 : GoUInt16));
final _maxHandshake : GoInt64 = ((65536 : GoUnTypedInt));
var _defaultCipherSuitesTLS13 : Slice<GoUInt16> = new Slice<GoUInt16>(tls_AES_128_GCM_SHA256, tls_AES_256_GCM_SHA384, tls_CHACHA20_POLY1305_SHA256);
final renegotiateNever : RenegotiationSupport = new RenegotiationSupport((0 : GoUnTypedInt));
final _keyLogLabelClientHandshake : GoString = "CLIENT_HANDSHAKE_TRAFFIC_SECRET";
final _typeEncryptedExtensions : GoUInt8 = ((8 : GoUInt8));
final _extensionStatusRequest : GoUInt16 = ((5 : GoUInt16));
var _masterSecretLabel : Slice<GoUInt8> = (("master secret" : Slice<GoByte>));
final _maxUselessRecords : GoInt64 = ((16 : GoUnTypedInt));
final _resumptionLabel : GoString = "res master";
final _extensionServerName : GoUInt16 = ((0 : GoUInt16));
final _keyLogLabelServerHandshake : GoString = "SERVER_HANDSHAKE_TRAFFIC_SECRET";
var _deprecatedSessionTicketKey : Slice<GoUInt8> = (("DEPRECATED" : Slice<GoByte>));
var _nonAESGCMAEADCiphers : GoMap<GoUInt16, Bool> = new GoMap<GoUInt16, Bool>(new stdgo.reflect.Reflect._Type(stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(uint16_kind), stdgo.reflect.Reflect.GoType.basic(bool_kind))), { key : tls_ECDHE_RSA_WITH_CHACHA20_POLY1305, value : true }, { key : tls_ECDHE_ECDSA_WITH_CHACHA20_POLY1305, value : true }, { key : tls_CHACHA20_POLY1305_SHA256, value : true });
final curveP521 : CurveID = new CurveID(((25 : GoUInt16)));
final _typeServerHelloDone : GoUInt8 = ((14 : GoUInt8));
final versionTLS13 : GoInt64 = ((772 : GoUnTypedInt));
var _supportedVersions : Slice<GoUInt16> = new Slice<GoUInt16>(versionTLS13, versionTLS12, versionTLS11, versionTLS10);
final _pskModeDHE : GoUInt8 = ((1 : GoUInt8));
final curveP384 : CurveID = new CurveID(((24 : GoUInt16)));
var _aesgcmCiphers : GoMap<GoUInt16, Bool> = new GoMap<GoUInt16, Bool>(new stdgo.reflect.Reflect._Type(stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(uint16_kind), stdgo.reflect.Reflect.GoType.basic(bool_kind))), { key : tls_ECDHE_RSA_WITH_AES_128_GCM_SHA256, value : true }, { key : tls_ECDHE_RSA_WITH_AES_256_GCM_SHA384, value : true }, { key : tls_ECDHE_ECDSA_WITH_AES_128_GCM_SHA256, value : true }, { key : tls_ECDHE_ECDSA_WITH_AES_256_GCM_SHA384, value : true }, { key : tls_AES_128_GCM_SHA256, value : true }, { key : tls_AES_256_GCM_SHA384, value : true });
final _trafficUpdateLabel : GoString = "traffic upd";
final _serverHandshakeTrafficLabel : GoString = "s hs traffic";
var _errServerKeyExchange : stdgo.Error = stdgo.errors.Errors.new_("tls: invalid ServerKeyExchange message");
final _signatureEd25519 : GoUInt8 = (3 : GoUnTypedInt) + ((225 : GoUnTypedInt));
final _extensionKeyShare : GoUInt16 = ((51 : GoUInt16));
var _clientFinishedLabel : Slice<GoUInt8> = (("client finished" : Slice<GoByte>));
final _extensionPSKModes : GoUInt16 = ((45 : GoUInt16));
final requireAndVerifyClientCert : ClientAuthType = new ClientAuthType((4 : GoUnTypedInt));
final _certTypeRSASign : GoInt64 = ((1 : GoUnTypedInt));
final _recordTypeAlert : T_recordType = new T_recordType(((21 : GoUInt8)));
var _hasGCMAsmAMD64 : Bool = internal.cpu.Cpu.x86.hasAES && internal.cpu.Cpu.x86.hasPCLMULQDQ;
final renegotiateOnceAsClient : RenegotiationSupport = new RenegotiationSupport((1 : GoUnTypedInt));
final curveP256 : CurveID = new CurveID(((23 : GoUInt16)));
final pkcs1withSHA384 : SignatureScheme = new SignatureScheme(((1281 : GoUInt16)));
final _noncePrefixLength : GoInt64 = ((4 : GoUnTypedInt));
final versionSSL30 : GoInt64 = ((768 : GoUnTypedInt));
final _extensionPreSharedKey : GoUInt16 = ((41 : GoUInt16));
final _typeCertificateVerify : GoUInt8 = ((15 : GoUInt8));
final __SignatureScheme_name_0 : GoString = "PKCS1WithSHA1";
var _directSigning : stdgo.crypto.Crypto.Hash = new stdgo.crypto.Crypto.Hash(((0 : GoUInt)));
final _recordTypeHandshake : T_recordType = new T_recordType(((22 : GoUInt8)));
final _clientSignatureContext : GoString = "TLS 1.3, client CertificateVerify\\x00";
final __SignatureScheme_name_1 : GoString = "ECDSAWithSHA1";
final _keyLogLabelClientTraffic : GoString = "CLIENT_TRAFFIC_SECRET_0";
final _extensionCookie : GoUInt16 = ((44 : GoUInt16));
var _defaultCipherSuitesTLS13NoAES : Slice<GoUInt16> = new Slice<GoUInt16>(tls_CHACHA20_POLY1305_SHA256, tls_AES_128_GCM_SHA256, tls_AES_256_GCM_SHA384);
var _errShutdown : stdgo.Error = stdgo.errors.Errors.new_("tls: protocol is shutdown");
final __SignatureScheme_name_2 : GoString = "PKCS1WithSHA256";
var _emptyConfig : Config = new Config();
final __SignatureScheme_name_3 : GoString = "ECDSAWithP256AndSHA256";
final ecdsawithP384AndSHA384 : SignatureScheme = new SignatureScheme(((1283 : GoUInt16)));
final _extensionSupportedCurves : GoUInt16 = ((10 : GoUInt16));
final _aeadNonceLength : GoInt64 = ((12 : GoUnTypedInt));
final _exporterLabel : GoString = "exp master";
final __SignatureScheme_name_4 : GoString = "PKCS1WithSHA384";
final ecdsawithP256AndSHA256 : SignatureScheme = new SignatureScheme(((1027 : GoUInt16)));
final pkcs1withSHA256 : SignatureScheme = new SignatureScheme(((1025 : GoUInt16)));
final _extensionSignatureAlgorithmsCert : GoUInt16 = ((50 : GoUInt16));
final __SignatureScheme_name_5 : GoString = "ECDSAWithP384AndSHA384";
final requireAnyClientCert : ClientAuthType = new ClientAuthType((2 : GoUnTypedInt));
final _certTypeECDSASign : GoInt64 = ((64 : GoUnTypedInt));
final __SignatureScheme_name_6 : GoString = "PKCS1WithSHA512";
final _ticketKeyNameLen : GoInt64 = ((16 : GoUnTypedInt));
final _alertLevelError : GoInt64 = ((2 : GoUnTypedInt));
final _typeKeyUpdate : GoUInt8 = ((24 : GoUInt8));
final __SignatureScheme_name_7 : GoString = "ECDSAWithP521AndSHA512";
var _supportedOnlyTLS12 : Slice<GoUInt16> = new Slice<GoUInt16>(versionTLS12);
final _recordTypeApplicationData : T_recordType = new T_recordType(((23 : GoUInt8)));
final _typeClientHello : GoUInt8 = ((1 : GoUInt8));
var _hasGCMAsmS390X : Bool = internal.cpu.Cpu.s390x.hasAES && internal.cpu.Cpu.s390x.hasAESCBC && internal.cpu.Cpu.s390x.hasAESCTR && (internal.cpu.Cpu.s390x.hasGHASH || internal.cpu.Cpu.s390x.hasAESGCM);
var _hasAESGCMHardwareSupport : Bool = stdgo.runtime.Runtime.goarch == (("amd64" : GoString)) && _hasGCMAsmAMD64 || stdgo.runtime.Runtime.goarch == (("arm64" : GoString)) && _hasGCMAsmARM64 || stdgo.runtime.Runtime.goarch == (("s390x" : GoString)) && _hasGCMAsmS390X;
final _clientHandshakeTrafficLabel : GoString = "c hs traffic";
final __SignatureScheme_name_8 : GoString = "PSSWithSHA256PSSWithSHA384PSSWithSHA512Ed25519";
var _supportedOnlyTLS13 : Slice<GoUInt16> = new Slice<GoUInt16>(versionTLS13);
final _typeFinished : GoUInt8 = ((20 : GoUInt8));
var __CurveID_index_0 : GoArray<GoUInt8> = new GoArray<GoUInt8>(((0 : GoUInt8)), ((9 : GoUInt8)), ((18 : GoUInt8)), ((27 : GoUInt8))).copy();
final psswithSHA384 : SignatureScheme = new SignatureScheme(((2053 : GoUInt16)));
final requestClientCert : ClientAuthType = new ClientAuthType((1 : GoUnTypedInt));
final _typeMessageHash : GoUInt8 = ((254 : GoUInt8));
final _typeNewSessionTicket : GoUInt8 = ((4 : GoUInt8));
final psswithSHA256 : SignatureScheme = new SignatureScheme(((2052 : GoUInt16)));
final ed25519 : SignatureScheme = new SignatureScheme(((2055 : GoUInt16)));
final psswithSHA512 : SignatureScheme = new SignatureScheme(((2054 : GoUInt16)));
final pkcs1withSHA512 : SignatureScheme = new SignatureScheme(((1537 : GoUInt16)));
final ecdsawithP521AndSHA512 : SignatureScheme = new SignatureScheme(((1539 : GoUInt16)));
final ecdsawithSHA1 : SignatureScheme = new SignatureScheme(((515 : GoUInt16)));
var _supportedSignatureAlgorithms : Slice<SignatureScheme> = new Slice<SignatureScheme>(
psswithSHA256,
ecdsawithP256AndSHA256,
ed25519,
psswithSHA384,
psswithSHA512,
pkcs1withSHA256,
pkcs1withSHA384,
pkcs1withSHA512,
ecdsawithP384AndSHA384,
ecdsawithP521AndSHA512,
pkcs1withSHA1,
ecdsawithSHA1);
final _signatureECDSA : GoUInt8 = (2 : GoUnTypedInt) + ((225 : GoUnTypedInt));
var _errEarlyCloseWrite : stdgo.Error = stdgo.errors.Errors.new_("tls: CloseWrite called before handshake complete");
var _signaturePadding : Slice<GoUInt8> = new Slice<GoUInt8>(
((32 : GoUInt8)),
((32 : GoUInt8)),
((32 : GoUInt8)),
((32 : GoUInt8)),
((32 : GoUInt8)),
((32 : GoUInt8)),
((32 : GoUInt8)),
((32 : GoUInt8)),
((32 : GoUInt8)),
((32 : GoUInt8)),
((32 : GoUInt8)),
((32 : GoUInt8)),
((32 : GoUInt8)),
((32 : GoUInt8)),
((32 : GoUInt8)),
((32 : GoUInt8)),
((32 : GoUInt8)),
((32 : GoUInt8)),
((32 : GoUInt8)),
((32 : GoUInt8)),
((32 : GoUInt8)),
((32 : GoUInt8)),
((32 : GoUInt8)),
((32 : GoUInt8)),
((32 : GoUInt8)),
((32 : GoUInt8)),
((32 : GoUInt8)),
((32 : GoUInt8)),
((32 : GoUInt8)),
((32 : GoUInt8)),
((32 : GoUInt8)),
((32 : GoUInt8)),
((32 : GoUInt8)),
((32 : GoUInt8)),
((32 : GoUInt8)),
((32 : GoUInt8)),
((32 : GoUInt8)),
((32 : GoUInt8)),
((32 : GoUInt8)),
((32 : GoUInt8)),
((32 : GoUInt8)),
((32 : GoUInt8)),
((32 : GoUInt8)),
((32 : GoUInt8)),
((32 : GoUInt8)),
((32 : GoUInt8)),
((32 : GoUInt8)),
((32 : GoUInt8)),
((32 : GoUInt8)),
((32 : GoUInt8)),
((32 : GoUInt8)),
((32 : GoUInt8)),
((32 : GoUInt8)),
((32 : GoUInt8)),
((32 : GoUInt8)),
((32 : GoUInt8)),
((32 : GoUInt8)),
((32 : GoUInt8)),
((32 : GoUInt8)),
((32 : GoUInt8)),
((32 : GoUInt8)),
((32 : GoUInt8)),
((32 : GoUInt8)),
((32 : GoUInt8)));
final _typeHelloRequest : GoUInt8 = ((0 : GoUInt8));
final _suiteTLS12 = (((1 : GoUnTypedInt)) << (2 : GoUnTypedInt));
final _typeClientKeyExchange : GoUInt8 = ((16 : GoUInt8));
final _tcpMSSEstimate : GoInt64 = ((1208 : GoUnTypedInt));
var _errNoCertificates : stdgo.Error = stdgo.errors.Errors.new_("tls: no certificates configured");
var _writerMutex : stdgo.sync.Sync.Mutex = new stdgo.sync.Sync.Mutex();
final _typeServerHello : GoUInt8 = ((2 : GoUInt8));
var _defaultCurvePreferences : Slice<CurveID> = new Slice<CurveID>(x25519, curveP256, curveP384, curveP521);
final _maxSessionTicketLifetime : stdgo.time.Time.Duration = new stdgo.time.Time.Duration(new stdgo.time.Time.Duration(((7 : GoUnTypedInt)) * ((24 : GoUnTypedInt))).__t__ * stdgo.time.Time.hour.__t__);
final _signatureRSAPSS : GoUInt8 = (1 : GoUnTypedInt) + ((225 : GoUnTypedInt));
final _extensionSessionTicket : GoUInt16 = ((35 : GoUInt16));
var _errClientKeyExchange : stdgo.Error = stdgo.errors.Errors.new_("tls: invalid ClientKeyExchange message");
final tls_FALLBACK_SCSV : GoUInt16 = ((22016 : GoUInt16));
var _keyExpansionLabel : Slice<GoUInt8> = (("key expansion" : Slice<GoByte>));
final __ClientAuthType_name : GoString = "NoClientCertRequestClientCertRequireAnyClientCertVerifyClientCertIfGivenRequireAndVerifyClientCert";
final _typeEndOfEarlyData : GoUInt8 = ((5 : GoUInt8));
final _extensionSupportedPoints : GoUInt16 = ((11 : GoUInt16));
var _rsaSignatureSchemes : Slice<T__struct_59> = new Slice<T__struct_59>(new T__struct_59(psswithSHA256, stdgo.crypto.Crypto.sha256.size() * ((2 : GoInt)) + ((2 : GoInt)), versionTLS13).__copy__(), new T__struct_59(psswithSHA384, stdgo.crypto.Crypto.sha384.size() * ((2 : GoInt)) + ((2 : GoInt)), versionTLS13).__copy__(), new T__struct_59(psswithSHA512, stdgo.crypto.Crypto.sha512.size() * ((2 : GoInt)) + ((2 : GoInt)), versionTLS13).__copy__(), new T__struct_59(pkcs1withSHA256, ((19 : GoInt)) + stdgo.crypto.Crypto.sha256.size() + ((11 : GoInt)), versionTLS12).__copy__(), new T__struct_59(pkcs1withSHA384, ((19 : GoInt)) + stdgo.crypto.Crypto.sha384.size() + ((11 : GoInt)), versionTLS12).__copy__(), new T__struct_59(pkcs1withSHA512, ((19 : GoInt)) + stdgo.crypto.Crypto.sha512.size() + ((11 : GoInt)), versionTLS12).__copy__(), new T__struct_59(pkcs1withSHA1, ((15 : GoInt)) + stdgo.crypto.Crypto.sha1.size() + ((11 : GoInt)), versionTLS12).__copy__());
var _defaultCipherSuites : Slice<GoUInt16> = _cipherSuitesPreferenceOrder.__slice__(0, _defaultCipherSuitesLen);
final _extensionSCT : GoUInt16 = ((18 : GoUInt16));
final _typeCertificateRequest : GoUInt8 = ((13 : GoUInt8));
final _typeCertificate : GoUInt8 = ((11 : GoUInt8));
var _serverFinishedLabel : Slice<GoUInt8> = (("server finished" : Slice<GoByte>));
final _maxClientPSKIdentities : GoInt64 = ((5 : GoUnTypedInt));
final _suiteECDHE : GoUnTypedInt = (((1 : GoUnTypedInt)) << (0 : GoUnTypedInt));
var _cipherSuites : Slice<Pointer<T_cipherSuite>> = new Slice<Pointer<T_cipherSuite>>(
Go.pointer(new T_cipherSuite(tls_ECDHE_RSA_WITH_CHACHA20_POLY1305, ((32 : GoInt)), ((0 : GoInt)), ((12 : GoInt)), _ecdheRSAKA, _suiteECDHE | _suiteTLS12, null, null, _aeadChaCha20Poly1305)),
Go.pointer(new T_cipherSuite(tls_ECDHE_ECDSA_WITH_CHACHA20_POLY1305, ((32 : GoInt)), ((0 : GoInt)), ((12 : GoInt)), _ecdheECDSAKA, _suiteECDHE | _suiteECSign | _suiteTLS12, null, null, _aeadChaCha20Poly1305)),
Go.pointer(new T_cipherSuite(tls_ECDHE_RSA_WITH_AES_128_GCM_SHA256, ((16 : GoInt)), ((0 : GoInt)), ((4 : GoInt)), _ecdheRSAKA, _suiteECDHE | _suiteTLS12, null, null, _aeadAESGCM)),
Go.pointer(new T_cipherSuite(tls_ECDHE_ECDSA_WITH_AES_128_GCM_SHA256, ((16 : GoInt)), ((0 : GoInt)), ((4 : GoInt)), _ecdheECDSAKA, _suiteECDHE | _suiteECSign | _suiteTLS12, null, null, _aeadAESGCM)),
Go.pointer(new T_cipherSuite(tls_ECDHE_RSA_WITH_AES_256_GCM_SHA384, ((32 : GoInt)), ((0 : GoInt)), ((4 : GoInt)), _ecdheRSAKA, _suiteECDHE | _suiteTLS12 | _suiteSHA384, null, null, _aeadAESGCM)),
Go.pointer(new T_cipherSuite(tls_ECDHE_ECDSA_WITH_AES_256_GCM_SHA384, ((32 : GoInt)), ((0 : GoInt)), ((4 : GoInt)), _ecdheECDSAKA, _suiteECDHE | _suiteECSign | _suiteTLS12 | _suiteSHA384, null, null, _aeadAESGCM)),
Go.pointer(new T_cipherSuite(tls_ECDHE_RSA_WITH_AES_128_CBC_SHA256, ((16 : GoInt)), ((32 : GoInt)), ((16 : GoInt)), _ecdheRSAKA, _suiteECDHE | _suiteTLS12, _cipherAES, _macSHA256, null)),
Go.pointer(new T_cipherSuite(tls_ECDHE_RSA_WITH_AES_128_CBC_SHA, ((16 : GoInt)), ((20 : GoInt)), ((16 : GoInt)), _ecdheRSAKA, _suiteECDHE, _cipherAES, _macSHA1, null)),
Go.pointer(new T_cipherSuite(tls_ECDHE_ECDSA_WITH_AES_128_CBC_SHA256, ((16 : GoInt)), ((32 : GoInt)), ((16 : GoInt)), _ecdheECDSAKA, _suiteECDHE | _suiteECSign | _suiteTLS12, _cipherAES, _macSHA256, null)),
Go.pointer(new T_cipherSuite(tls_ECDHE_ECDSA_WITH_AES_128_CBC_SHA, ((16 : GoInt)), ((20 : GoInt)), ((16 : GoInt)), _ecdheECDSAKA, _suiteECDHE | _suiteECSign, _cipherAES, _macSHA1, null)),
Go.pointer(new T_cipherSuite(tls_ECDHE_RSA_WITH_AES_256_CBC_SHA, ((32 : GoInt)), ((20 : GoInt)), ((16 : GoInt)), _ecdheRSAKA, _suiteECDHE, _cipherAES, _macSHA1, null)),
Go.pointer(new T_cipherSuite(tls_ECDHE_ECDSA_WITH_AES_256_CBC_SHA, ((32 : GoInt)), ((20 : GoInt)), ((16 : GoInt)), _ecdheECDSAKA, _suiteECDHE | _suiteECSign, _cipherAES, _macSHA1, null)),
Go.pointer(new T_cipherSuite(tls_RSA_WITH_AES_128_GCM_SHA256, ((16 : GoInt)), ((0 : GoInt)), ((4 : GoInt)), _rsaKA, _suiteTLS12, null, null, _aeadAESGCM)),
Go.pointer(new T_cipherSuite(tls_RSA_WITH_AES_256_GCM_SHA384, ((32 : GoInt)), ((0 : GoInt)), ((4 : GoInt)), _rsaKA, _suiteTLS12 | _suiteSHA384, null, null, _aeadAESGCM)),
Go.pointer(new T_cipherSuite(tls_RSA_WITH_AES_128_CBC_SHA256, ((16 : GoInt)), ((32 : GoInt)), ((16 : GoInt)), _rsaKA, _suiteTLS12, _cipherAES, _macSHA256, null)),
Go.pointer(new T_cipherSuite(tls_RSA_WITH_AES_128_CBC_SHA, ((16 : GoInt)), ((20 : GoInt)), ((16 : GoInt)), _rsaKA, ((0 : GoInt)), _cipherAES, _macSHA1, null)),
Go.pointer(new T_cipherSuite(tls_RSA_WITH_AES_256_CBC_SHA, ((32 : GoInt)), ((20 : GoInt)), ((16 : GoInt)), _rsaKA, ((0 : GoInt)), _cipherAES, _macSHA1, null)),
Go.pointer(new T_cipherSuite(tls_ECDHE_RSA_WITH_3DES_EDE_CBC_SHA, ((24 : GoInt)), ((20 : GoInt)), ((8 : GoInt)), _ecdheRSAKA, _suiteECDHE, _cipher3DES, _macSHA1, null)),
Go.pointer(new T_cipherSuite(tls_RSA_WITH_3DES_EDE_CBC_SHA, ((24 : GoInt)), ((20 : GoInt)), ((8 : GoInt)), _rsaKA, ((0 : GoInt)), _cipher3DES, _macSHA1, null)),
Go.pointer(new T_cipherSuite(tls_RSA_WITH_RC4_128_SHA, ((16 : GoInt)), ((20 : GoInt)), ((0 : GoInt)), _rsaKA, ((0 : GoInt)), _cipherRC4, _macSHA1, null)),
Go.pointer(new T_cipherSuite(tls_ECDHE_RSA_WITH_RC4_128_SHA, ((16 : GoInt)), ((20 : GoInt)), ((0 : GoInt)), _ecdheRSAKA, _suiteECDHE, _cipherRC4, _macSHA1, null)),
Go.pointer(new T_cipherSuite(tls_ECDHE_ECDSA_WITH_RC4_128_SHA, ((16 : GoInt)), ((20 : GoInt)), ((0 : GoInt)), _ecdheECDSAKA, _suiteECDHE | _suiteECSign, _cipherRC4, _macSHA1, null)));
final _downgradeCanaryTLS11 : GoString = "DOWNGRD\\x00";
final _extensionSignatureAlgorithms : GoUInt16 = ((13 : GoUInt16));
final _downgradeCanaryTLS12 : GoString = "DOWNGRD\\x01";
final _alertLevelWarning : GoInt64 = ((1 : GoUnTypedInt));
final _recordHeaderLen : GoInt64 = ((5 : GoUnTypedInt));
final _extensionEarlyData : GoUInt16 = ((42 : GoUInt16));
final _scsvRenegotiation : GoUInt16 = ((255 : GoUInt16));
final _masterSecretLength : GoInt64 = ((48 : GoUnTypedInt));
final _typeNextProtocol : GoUInt8 = ((67 : GoUInt8));
final _ticketKeyRotation : stdgo.time.Time.Duration = new stdgo.time.Time.Duration(((24 : GoInt64)) * stdgo.time.Time.hour.__t__);
final _statusTypeOCSP : GoUInt8 = ((1 : GoUInt8));
var _cipherSuitesPreferenceOrderNoAES : Slice<GoUInt16> = new Slice<GoUInt16>(
tls_ECDHE_ECDSA_WITH_CHACHA20_POLY1305,
tls_ECDHE_RSA_WITH_CHACHA20_POLY1305,
tls_ECDHE_ECDSA_WITH_AES_128_GCM_SHA256,
tls_ECDHE_RSA_WITH_AES_128_GCM_SHA256,
tls_ECDHE_ECDSA_WITH_AES_256_GCM_SHA384,
tls_ECDHE_RSA_WITH_AES_256_GCM_SHA384,
tls_ECDHE_ECDSA_WITH_AES_128_CBC_SHA,
tls_ECDHE_RSA_WITH_AES_128_CBC_SHA,
tls_ECDHE_ECDSA_WITH_AES_256_CBC_SHA,
tls_ECDHE_RSA_WITH_AES_256_CBC_SHA,
tls_RSA_WITH_AES_128_GCM_SHA256,
tls_RSA_WITH_AES_256_GCM_SHA384,
tls_RSA_WITH_AES_128_CBC_SHA,
tls_RSA_WITH_AES_256_CBC_SHA,
tls_ECDHE_RSA_WITH_3DES_EDE_CBC_SHA,
tls_RSA_WITH_3DES_EDE_CBC_SHA,
tls_ECDHE_ECDSA_WITH_AES_128_CBC_SHA256,
tls_ECDHE_RSA_WITH_AES_128_CBC_SHA256,
tls_RSA_WITH_AES_128_CBC_SHA256,
tls_ECDHE_ECDSA_WITH_RC4_128_SHA,
tls_ECDHE_RSA_WITH_RC4_128_SHA,
tls_RSA_WITH_RC4_128_SHA);
final _extensionSupportedVersions : GoUInt16 = ((43 : GoUInt16));
final _maxCiphertext : GoUnTypedInt = ((16384 : GoUnTypedInt)) + ((2048 : GoUnTypedInt));
final _signaturePKCS1v15 : GoUInt8 = (0 : GoUnTypedInt) + ((225 : GoUnTypedInt));
final _maxPlaintext : GoInt64 = ((16384 : GoUnTypedInt));
final _typeServerKeyExchange : GoUInt8 = ((12 : GoUInt8));
final _typeCertificateStatus : GoUInt8 = ((22 : GoUInt8));
/**
    // verifyHandshakeSignature verifies a signature against pre-hashed
    // (if required) handshake contents.
**/
function _verifyHandshakeSignature(_sigType:GoUInt8, _pubkey:stdgo.crypto.Crypto.PublicKey, _hashFunc:stdgo.crypto.Crypto.Hash, _signed:Slice<GoByte>, _sig:Slice<GoByte>):Error {
        if (_sigType == _signatureECDSA) {
            var __tmp__ = try {
                { value : ((_pubkey.value : Pointer<stdgo.crypto.ecdsa.Ecdsa.PublicKey>)), ok : true };
            } catch(_) {
                { value : new Pointer<stdgo.crypto.ecdsa.Ecdsa.PublicKey>().nil(), ok : false };
            }, _pubKey = __tmp__.value, _ok = __tmp__.ok;
            if (!_ok) {
                return stdgo.fmt.Fmt.errorf("expected an ECDSA public key, got %T", Go.toInterface(_pubkey));
            };
            if (!stdgo.crypto.ecdsa.Ecdsa.verifyASN1(_pubKey, _signed, _sig)) {
                return stdgo.errors.Errors.new_("ECDSA verification failure");
            };
        } else if (_sigType == _signatureEd25519) {
            var __tmp__ = try {
                { value : new stdgo.crypto.ed25519.Ed25519.PublicKey(((_pubkey.value : stdgo.crypto.Crypto.PublicKey))), ok : true };
            } catch(_) {
                { value : new stdgo.crypto.ed25519.Ed25519.PublicKey(), ok : false };
            }, _pubKey = __tmp__.value, _ok = __tmp__.ok;
            if (!_ok) {
                return stdgo.fmt.Fmt.errorf("expected an Ed25519 public key, got %T", Go.toInterface(_pubkey));
            };
            if (!stdgo.crypto.ed25519.Ed25519.verify(_pubKey.__copy__(), _signed, _sig)) {
                return stdgo.errors.Errors.new_("Ed25519 verification failure");
            };
        } else if (_sigType == _signaturePKCS1v15) {
            var __tmp__ = try {
                { value : ((_pubkey.value : Pointer<stdgo.crypto.rsa.Rsa.PublicKey>)), ok : true };
            } catch(_) {
                { value : new Pointer<stdgo.crypto.rsa.Rsa.PublicKey>().nil(), ok : false };
            }, _pubKey = __tmp__.value, _ok = __tmp__.ok;
            if (!_ok) {
                return stdgo.fmt.Fmt.errorf("expected an RSA public key, got %T", Go.toInterface(_pubkey));
            };
            {
                var _err:stdgo.Error = stdgo.crypto.rsa.Rsa.verifyPKCS1v15(_pubKey, _hashFunc, _signed, _sig);
                if (_err != null) {
                    return _err;
                };
            };
        } else if (_sigType == _signatureRSAPSS) {
            var __tmp__ = try {
                { value : ((_pubkey.value : Pointer<stdgo.crypto.rsa.Rsa.PublicKey>)), ok : true };
            } catch(_) {
                { value : new Pointer<stdgo.crypto.rsa.Rsa.PublicKey>().nil(), ok : false };
            }, _pubKey = __tmp__.value, _ok = __tmp__.ok;
            if (!_ok) {
                return stdgo.fmt.Fmt.errorf("expected an RSA public key, got %T", Go.toInterface(_pubkey));
            };
            var _signOpts:Pointer<stdgo.crypto.rsa.Rsa.PSSOptions> = Go.pointer((({ saltLength : stdgo.crypto.rsa.Rsa.psssaltLengthEqualsHash, hash : new stdgo.crypto.Crypto.Hash() } : stdgo.crypto.rsa.Rsa.PSSOptions)));
            {
                var _err:stdgo.Error = stdgo.crypto.rsa.Rsa.verifyPSS(_pubKey, _hashFunc, _signed, _sig, _signOpts);
                if (_err != null) {
                    return _err;
                };
            };
        } else {
            return stdgo.errors.Errors.new_("internal error: unknown signature type");
        };
        return ((null : stdgo.Error));
    }
/**
    // signedMessage returns the pre-hashed (if necessary) message to be signed by
    // certificate keys in TLS 1.3. See RFC 8446, Section 4.4.3.
**/
function _signedMessage(_sigHash:stdgo.crypto.Crypto.Hash, _context:GoString, _transcript:stdgo.hash.Hash.Hash):Slice<GoByte> {
        if (_sigHash.__t__ == _directSigning.__t__) {
            var _b:Pointer<stdgo.bytes.Bytes.Buffer> = Go.pointer(new stdgo.bytes.Bytes.Buffer());
            _b.value.write(_signaturePadding);
            stdgo.io.Io.writeString(_b.value, _context);
            _b.value.write(_transcript.sum(new Slice<GoUInt8>().nil()));
            return _b.value.bytes();
        };
        var _h:stdgo.hash.Hash.Hash = _sigHash.new_();
        _h.write(_signaturePadding);
        stdgo.io.Io.writeString(_h, _context);
        _h.write(_transcript.sum(new Slice<GoUInt8>().nil()));
        return _h.sum(new Slice<GoUInt8>().nil());
    }
/**
    // typeAndHashFromSignatureScheme returns the corresponding signature type and
    // crypto.Hash for a given TLS SignatureScheme.
**/
function _typeAndHashFromSignatureScheme(_signatureAlgorithm:SignatureScheme):{ var _0 : GoUInt8; var _1 : stdgo.crypto.Crypto.Hash; var _2 : Error; } {
        var _sigType:GoUInt8 = ((0 : GoUInt8)), _hash:stdgo.crypto.Crypto.Hash = new stdgo.crypto.Crypto.Hash(), _err:Error = ((null : stdgo.Error));
        if (_signatureAlgorithm.__t__ == pkcs1withSHA1.__t__ || _signatureAlgorithm.__t__ == pkcs1withSHA256.__t__ || _signatureAlgorithm.__t__ == pkcs1withSHA384.__t__ || _signatureAlgorithm.__t__ == pkcs1withSHA512.__t__) {
            _sigType = _signaturePKCS1v15;
        } else if (_signatureAlgorithm.__t__ == psswithSHA256.__t__ || _signatureAlgorithm.__t__ == psswithSHA384.__t__ || _signatureAlgorithm.__t__ == psswithSHA512.__t__) {
            _sigType = _signatureRSAPSS;
        } else if (_signatureAlgorithm.__t__ == ecdsawithSHA1.__t__ || _signatureAlgorithm.__t__ == ecdsawithP256AndSHA256.__t__ || _signatureAlgorithm.__t__ == ecdsawithP384AndSHA384.__t__ || _signatureAlgorithm.__t__ == ecdsawithP521AndSHA512.__t__) {
            _sigType = _signatureECDSA;
        } else if (_signatureAlgorithm.__t__ == ed25519.__t__) {
            _sigType = _signatureEd25519;
        } else {
            return { _0 : ((0 : GoUInt8)), _1 : new stdgo.crypto.Crypto.Hash(((0 : GoUInt))), _2 : stdgo.fmt.Fmt.errorf("unsupported signature algorithm: %v", Go.toInterface(_signatureAlgorithm)) };
        };
        if (_signatureAlgorithm.__t__ == pkcs1withSHA1.__t__ || _signatureAlgorithm.__t__ == ecdsawithSHA1.__t__) {
            stdgo.hash.Hash = stdgo.crypto.Crypto.sha1;
        } else if (_signatureAlgorithm.__t__ == pkcs1withSHA256.__t__ || _signatureAlgorithm.__t__ == psswithSHA256.__t__ || _signatureAlgorithm.__t__ == ecdsawithP256AndSHA256.__t__) {
            stdgo.hash.Hash = stdgo.crypto.Crypto.sha256;
        } else if (_signatureAlgorithm.__t__ == pkcs1withSHA384.__t__ || _signatureAlgorithm.__t__ == psswithSHA384.__t__ || _signatureAlgorithm.__t__ == ecdsawithP384AndSHA384.__t__) {
            stdgo.hash.Hash = stdgo.crypto.Crypto.sha384;
        } else if (_signatureAlgorithm.__t__ == pkcs1withSHA512.__t__ || _signatureAlgorithm.__t__ == psswithSHA512.__t__ || _signatureAlgorithm.__t__ == ecdsawithP521AndSHA512.__t__) {
            stdgo.hash.Hash = stdgo.crypto.Crypto.sha512;
        } else if (_signatureAlgorithm.__t__ == ed25519.__t__) {
            stdgo.hash.Hash = _directSigning;
        } else {
            return { _0 : ((0 : GoUInt8)), _1 : new stdgo.crypto.Crypto.Hash(((0 : GoUInt))), _2 : stdgo.fmt.Fmt.errorf("unsupported signature algorithm: %v", Go.toInterface(_signatureAlgorithm)) };
        };
        return { _0 : _sigType, _1 : stdgo.hash.Hash, _2 : ((null : stdgo.Error)) };
    }
/**
    // legacyTypeAndHashFromPublicKey returns the fixed signature type and crypto.Hash for
    // a given public key used with TLS 1.0 and 1.1, before the introduction of
    // signature algorithm negotiation.
**/
function _legacyTypeAndHashFromPublicKey(_pub:stdgo.crypto.Crypto.PublicKey):{ var _0 : GoUInt8; var _1 : stdgo.crypto.Crypto.Hash; var _2 : Error; } {
        var _sigType:GoUInt8 = ((0 : GoUInt8)), _hash:stdgo.crypto.Crypto.Hash = new stdgo.crypto.Crypto.Hash(), _err:Error = ((null : stdgo.Error));
        if (Go.assertable(((_pub : Pointer<stdgo.crypto.rsa.Rsa.PublicKey>)))) {
            return { _0 : _signaturePKCS1v15, _1 : stdgo.crypto.Crypto.md5sha1, _2 : ((null : stdgo.Error)) };
        } else if (Go.assertable(((_pub : Pointer<stdgo.crypto.ecdsa.Ecdsa.PublicKey>)))) {
            return { _0 : _signatureECDSA, _1 : stdgo.crypto.Crypto.sha1, _2 : ((null : stdgo.Error)) };
        } else if (Go.assertable(((_pub : stdgo.crypto.ed25519.Ed25519.PublicKey)))) {
            return { _0 : ((0 : GoUInt8)), _1 : new stdgo.crypto.Crypto.Hash(((0 : GoUInt))), _2 : stdgo.fmt.Fmt.errorf("tls: Ed25519 public keys are not supported before TLS 1.2") };
        } else {
            return { _0 : ((0 : GoUInt8)), _1 : new stdgo.crypto.Crypto.Hash(((0 : GoUInt))), _2 : stdgo.fmt.Fmt.errorf("tls: unsupported public key: %T", Go.toInterface(_pub)) };
        };
    }
/**
    // signatureSchemesForCertificate returns the list of supported SignatureSchemes
    // for a given certificate, based on the public key and the protocol version,
    // and optionally filtered by its explicit SupportedSignatureAlgorithms.
    //
    // This function must be kept in sync with supportedSignatureAlgorithms.
**/
function _signatureSchemesForCertificate(_version:GoUInt16, _cert:Pointer<Certificate>):Slice<SignatureScheme> {
        var __tmp__ = try {
            { value : ((_cert.value.privateKey.value : stdgo.crypto.Crypto.Signer)), ok : true };
        } catch(_) {
            { value : ((null : stdgo.crypto.Crypto.Signer)), ok : false };
        }, _priv = __tmp__.value, _ok = __tmp__.ok;
        if (!_ok) {
            return new Slice<SignatureScheme>().nil();
        };
        var _sigAlgs:Slice<SignatureScheme> = new Slice<SignatureScheme>().nil();
        if (Go.assertable(((_priv.public_() : Pointer<stdgo.crypto.ecdsa.Ecdsa.PublicKey>)))) {
            var _pub:Pointer<stdgo.crypto.ecdsa.Ecdsa.PublicKey> = _priv.public_() == null ? null : _priv.public_().__underlying__() == null ? null : _priv.public_() == null ? null : _priv.public_().__underlying__().value;
            if (_version != versionTLS13) {
                _sigAlgs = new Slice<SignatureScheme>(ecdsawithP256AndSHA256, ecdsawithP384AndSHA384, ecdsawithP521AndSHA512, ecdsawithSHA1);
                break;
            };
            if (Go.toInterface(_pub.value.curve) == Go.toInterface(stdgo.crypto.elliptic.Elliptic.p256())) {
                _sigAlgs = new Slice<SignatureScheme>(ecdsawithP256AndSHA256);
            } else if (Go.toInterface(_pub.value.curve) == Go.toInterface(stdgo.crypto.elliptic.Elliptic.p384())) {
                _sigAlgs = new Slice<SignatureScheme>(ecdsawithP384AndSHA384);
            } else if (Go.toInterface(_pub.value.curve) == Go.toInterface(stdgo.crypto.elliptic.Elliptic.p521())) {
                _sigAlgs = new Slice<SignatureScheme>(ecdsawithP521AndSHA512);
            } else {
                return new Slice<SignatureScheme>().nil();
            };
        } else if (Go.assertable(((_priv.public_() : Pointer<stdgo.crypto.rsa.Rsa.PublicKey>)))) {
            var _pub:Pointer<stdgo.crypto.rsa.Rsa.PublicKey> = _priv.public_() == null ? null : _priv.public_().__underlying__() == null ? null : _priv.public_() == null ? null : _priv.public_().__underlying__().value;
            var _size:GoInt = _pub.value.size();
            _sigAlgs = new Slice<SignatureScheme>(...[for (i in 0 ... ((((0 : GoInt)) : GoInt)).toBasic()) new SignatureScheme()]).setCap(((_rsaSignatureSchemes.length : GoInt)).toBasic());
            for (_candidate in _rsaSignatureSchemes) {
                if (_size >= _candidate._minModulusBytes && _version <= _candidate._maxVersion) {
                    _sigAlgs = _sigAlgs.__append__(_candidate._scheme);
                };
            };
        } else if (Go.assertable(((_priv.public_() : stdgo.crypto.ed25519.Ed25519.PublicKey)))) {
            var _pub:stdgo.crypto.ed25519.Ed25519.PublicKey = _priv.public_() == null ? null : _priv.public_().__underlying__() == null ? null : _priv.public_() == null ? null : _priv.public_().__underlying__().value;
            _sigAlgs = new Slice<SignatureScheme>(ed25519);
        } else {
            var _pub:stdgo.crypto.Crypto.PublicKey = _priv.public_() == null ? null : _priv.public_().__underlying__();
            return new Slice<SignatureScheme>().nil();
        };
        if (_cert.value.supportedSignatureAlgorithms != null && !_cert.value.supportedSignatureAlgorithms.isNil()) {
            var _filteredSigAlgs:Slice<SignatureScheme> = new Slice<SignatureScheme>().nil();
            for (_sigAlg in _sigAlgs) {
                if (_isSupportedSignatureAlgorithm(_sigAlg, _cert.value.supportedSignatureAlgorithms)) {
                    _filteredSigAlgs = _filteredSigAlgs.__append__(_sigAlg);
                };
            };
            return _filteredSigAlgs;
        };
        return _sigAlgs;
    }
/**
    // selectSignatureScheme picks a SignatureScheme from the peer's preference list
    // that works with the selected certificate. It's only called for protocol
    // versions that support signature algorithms, so TLS 1.2 and 1.3.
**/
function _selectSignatureScheme(_vers:GoUInt16, _c:Pointer<Certificate>, _peerAlgs:Slice<SignatureScheme>):{ var _0 : SignatureScheme; var _1 : Error; } {
        var _supportedAlgs:Slice<SignatureScheme> = _signatureSchemesForCertificate(_vers, _c);
        if (_supportedAlgs.length == ((0 : GoInt))) {
            return { _0 : new SignatureScheme(((0 : GoUInt16))), _1 : _unsupportedCertificateError(_c) };
        };
        if (_peerAlgs.length == ((0 : GoInt)) && _vers == versionTLS12) {
            _peerAlgs = new Slice<SignatureScheme>(pkcs1withSHA1, ecdsawithSHA1);
        };
        for (_preferredAlg in _peerAlgs) {
            if (_isSupportedSignatureAlgorithm(_preferredAlg, _supportedAlgs)) {
                return { _0 : _preferredAlg, _1 : ((null : stdgo.Error)) };
            };
        };
        return { _0 : new SignatureScheme(((0 : GoUInt16))), _1 : stdgo.errors.Errors.new_("tls: peer doesn\'t support any of the certificate\'s signature algorithms") };
    }
/**
    // unsupportedCertificateError returns a helpful error for certificates with
    // an unsupported private key.
**/
function _unsupportedCertificateError(_cert:Pointer<Certificate>):Error {
        if (Go.assertable(((_cert.value.privateKey : stdgo.crypto.rsa.Rsa.PrivateKey))) || Go.assertable(((_cert.value.privateKey : stdgo.crypto.ecdsa.Ecdsa.PrivateKey)))) {
            return stdgo.fmt.Fmt.errorf("tls: unsupported certificate: private key is %T, expected *%T", Go.toInterface(_cert.value.privateKey), Go.toInterface(_cert.value.privateKey));
        } else if (Go.assertable(((_cert.value.privateKey : Pointer<stdgo.crypto.ed25519.Ed25519.PrivateKey>)))) {
            return stdgo.fmt.Fmt.errorf("tls: unsupported certificate: private key is *ed25519.PrivateKey, expected ed25519.PrivateKey");
        };
        var __tmp__ = try {
            { value : ((_cert.value.privateKey.value : stdgo.crypto.Crypto.Signer)), ok : true };
        } catch(_) {
            { value : ((null : stdgo.crypto.Crypto.Signer)), ok : false };
        }, _signer = __tmp__.value, _ok = __tmp__.ok;
        if (!_ok) {
            return stdgo.fmt.Fmt.errorf("tls: certificate private key (%T) does not implement crypto.Signer", Go.toInterface(_cert.value.privateKey));
        };
        if (Go.assertable(((_signer.public_() : Pointer<stdgo.crypto.ecdsa.Ecdsa.PublicKey>)))) {
            var _pub:Pointer<stdgo.crypto.ecdsa.Ecdsa.PublicKey> = _signer.public_() == null ? null : _signer.public_().__underlying__() == null ? null : _signer.public_() == null ? null : _signer.public_().__underlying__().value;
            if (Go.toInterface(_pub.value.curve) == Go.toInterface(stdgo.crypto.elliptic.Elliptic.p256())) {} else if (Go.toInterface(_pub.value.curve) == Go.toInterface(stdgo.crypto.elliptic.Elliptic.p384())) {} else if (Go.toInterface(_pub.value.curve) == Go.toInterface(stdgo.crypto.elliptic.Elliptic.p521())) {} else {
                return stdgo.fmt.Fmt.errorf("tls: unsupported certificate curve (%s)", Go.toInterface(_pub.value.curve.params().value.name));
            };
        } else if (Go.assertable(((_signer.public_() : Pointer<stdgo.crypto.rsa.Rsa.PublicKey>)))) {
            var _pub:Pointer<stdgo.crypto.rsa.Rsa.PublicKey> = _signer.public_() == null ? null : _signer.public_().__underlying__() == null ? null : _signer.public_() == null ? null : _signer.public_().__underlying__().value;
            return stdgo.fmt.Fmt.errorf("tls: certificate RSA key size too small for supported signature algorithms");
        } else if (Go.assertable(((_signer.public_() : stdgo.crypto.ed25519.Ed25519.PublicKey)))) {
            var _pub:stdgo.crypto.ed25519.Ed25519.PublicKey = _signer.public_() == null ? null : _signer.public_().__underlying__() == null ? null : _signer.public_() == null ? null : _signer.public_().__underlying__().value;
        } else {
            var _pub:stdgo.crypto.Crypto.PublicKey = _signer.public_() == null ? null : _signer.public_().__underlying__();
            return stdgo.fmt.Fmt.errorf("tls: unsupported certificate key (%T)", Go.toInterface(_pub));
        };
        if (_cert.value.supportedSignatureAlgorithms != null && !_cert.value.supportedSignatureAlgorithms.isNil()) {
            return stdgo.fmt.Fmt.errorf("tls: peer doesn\'t support the certificate custom signature algorithms");
        };
        return stdgo.fmt.Fmt.errorf("tls: internal error: unsupported key (%T)", Go.toInterface(_cert.value.privateKey));
    }
/**
    // CipherSuites returns a list of cipher suites currently implemented by this
    // package, excluding those with security issues, which are returned by
    // InsecureCipherSuites.
    //
    // The list is sorted by ID. Note that the default cipher suites selected by
    // this package might depend on logic that can't be captured by a static list,
    // and might not match those returned by this function.
**/
function cipherSuites():Slice<Pointer<CipherSuite>> {
        return new Slice<Pointer<CipherSuite>>(
Go.pointer(new CipherSuite(tls_RSA_WITH_AES_128_CBC_SHA, "TLS_RSA_WITH_AES_128_CBC_SHA", _supportedUpToTLS12, false)),
Go.pointer(new CipherSuite(tls_RSA_WITH_AES_256_CBC_SHA, "TLS_RSA_WITH_AES_256_CBC_SHA", _supportedUpToTLS12, false)),
Go.pointer(new CipherSuite(tls_RSA_WITH_AES_128_GCM_SHA256, "TLS_RSA_WITH_AES_128_GCM_SHA256", _supportedOnlyTLS12, false)),
Go.pointer(new CipherSuite(tls_RSA_WITH_AES_256_GCM_SHA384, "TLS_RSA_WITH_AES_256_GCM_SHA384", _supportedOnlyTLS12, false)),
Go.pointer(new CipherSuite(tls_AES_128_GCM_SHA256, "TLS_AES_128_GCM_SHA256", _supportedOnlyTLS13, false)),
Go.pointer(new CipherSuite(tls_AES_256_GCM_SHA384, "TLS_AES_256_GCM_SHA384", _supportedOnlyTLS13, false)),
Go.pointer(new CipherSuite(tls_CHACHA20_POLY1305_SHA256, "TLS_CHACHA20_POLY1305_SHA256", _supportedOnlyTLS13, false)),
Go.pointer(new CipherSuite(tls_ECDHE_ECDSA_WITH_AES_128_CBC_SHA, "TLS_ECDHE_ECDSA_WITH_AES_128_CBC_SHA", _supportedUpToTLS12, false)),
Go.pointer(new CipherSuite(tls_ECDHE_ECDSA_WITH_AES_256_CBC_SHA, "TLS_ECDHE_ECDSA_WITH_AES_256_CBC_SHA", _supportedUpToTLS12, false)),
Go.pointer(new CipherSuite(tls_ECDHE_RSA_WITH_AES_128_CBC_SHA, "TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA", _supportedUpToTLS12, false)),
Go.pointer(new CipherSuite(tls_ECDHE_RSA_WITH_AES_256_CBC_SHA, "TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA", _supportedUpToTLS12, false)),
Go.pointer(new CipherSuite(tls_ECDHE_ECDSA_WITH_AES_128_GCM_SHA256, "TLS_ECDHE_ECDSA_WITH_AES_128_GCM_SHA256", _supportedOnlyTLS12, false)),
Go.pointer(new CipherSuite(tls_ECDHE_ECDSA_WITH_AES_256_GCM_SHA384, "TLS_ECDHE_ECDSA_WITH_AES_256_GCM_SHA384", _supportedOnlyTLS12, false)),
Go.pointer(new CipherSuite(tls_ECDHE_RSA_WITH_AES_128_GCM_SHA256, "TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256", _supportedOnlyTLS12, false)),
Go.pointer(new CipherSuite(tls_ECDHE_RSA_WITH_AES_256_GCM_SHA384, "TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384", _supportedOnlyTLS12, false)),
Go.pointer(new CipherSuite(tls_ECDHE_RSA_WITH_CHACHA20_POLY1305_SHA256, "TLS_ECDHE_RSA_WITH_CHACHA20_POLY1305_SHA256", _supportedOnlyTLS12, false)),
Go.pointer(new CipherSuite(tls_ECDHE_ECDSA_WITH_CHACHA20_POLY1305_SHA256, "TLS_ECDHE_ECDSA_WITH_CHACHA20_POLY1305_SHA256", _supportedOnlyTLS12, false)));
    }
/**
    // InsecureCipherSuites returns a list of cipher suites currently implemented by
    // this package and which have security issues.
    //
    // Most applications should not use the cipher suites in this list, and should
    // only use those returned by CipherSuites.
**/
function insecureCipherSuites():Slice<Pointer<CipherSuite>> {
        return new Slice<Pointer<CipherSuite>>(Go.pointer(new CipherSuite(tls_RSA_WITH_RC4_128_SHA, "TLS_RSA_WITH_RC4_128_SHA", _supportedUpToTLS12, true)), Go.pointer(new CipherSuite(tls_RSA_WITH_3DES_EDE_CBC_SHA, "TLS_RSA_WITH_3DES_EDE_CBC_SHA", _supportedUpToTLS12, true)), Go.pointer(new CipherSuite(tls_RSA_WITH_AES_128_CBC_SHA256, "TLS_RSA_WITH_AES_128_CBC_SHA256", _supportedOnlyTLS12, true)), Go.pointer(new CipherSuite(tls_ECDHE_ECDSA_WITH_RC4_128_SHA, "TLS_ECDHE_ECDSA_WITH_RC4_128_SHA", _supportedUpToTLS12, true)), Go.pointer(new CipherSuite(tls_ECDHE_RSA_WITH_RC4_128_SHA, "TLS_ECDHE_RSA_WITH_RC4_128_SHA", _supportedUpToTLS12, true)), Go.pointer(new CipherSuite(tls_ECDHE_RSA_WITH_3DES_EDE_CBC_SHA, "TLS_ECDHE_RSA_WITH_3DES_EDE_CBC_SHA", _supportedUpToTLS12, true)), Go.pointer(new CipherSuite(tls_ECDHE_ECDSA_WITH_AES_128_CBC_SHA256, "TLS_ECDHE_ECDSA_WITH_AES_128_CBC_SHA256", _supportedOnlyTLS12, true)), Go.pointer(new CipherSuite(tls_ECDHE_RSA_WITH_AES_128_CBC_SHA256, "TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256", _supportedOnlyTLS12, true)));
    }
/**
    // CipherSuiteName returns the standard name for the passed cipher suite ID
    // (e.g. "TLS_ECDHE_ECDSA_WITH_AES_128_GCM_SHA256"), or a fallback representation
    // of the ID value if the cipher suite is not implemented by this package.
**/
function cipherSuiteName(_id:GoUInt16):GoString {
        for (_c in cipherSuites()) {
            if (_c.value.id == _id) {
                return _c.value.name;
            };
        };
        for (_c in insecureCipherSuites()) {
            if (_c.value.id == _id) {
                return _c.value.name;
            };
        };
        return stdgo.fmt.Fmt.sprintf("0x%04X", Go.toInterface(_id));
    }
/**
    // selectCipherSuite returns the first TLS 1.0–1.2 cipher suite from ids which
    // is also in supportedIDs and passes the ok filter.
**/
function _selectCipherSuite(_ids:Slice<GoUInt16>, _supportedIDs:Slice<GoUInt16>, _ok:Pointer<T_cipherSuite> -> Bool):Pointer<T_cipherSuite> {
        for (_id in _ids) {
            var _candidate:Pointer<T_cipherSuite> = _cipherSuiteByID(_id);
            if (_candidate == null || _candidate.isNil() || !_ok(_candidate)) {
                continue;
            };
            for (_suppID in _supportedIDs) {
                if (_id == _suppID) {
                    return _candidate;
                };
            };
        };
        return new Pointer<T_cipherSuite>().nil();
    }
/**
    // aesgcmPreferred returns whether the first known cipher in the preference list
    // is an AES-GCM cipher, implying the peer has hardware support for it.
**/
function _aesgcmPreferred(_ciphers:Slice<GoUInt16>):Bool {
        for (_cID in _ciphers) {
            {
                var _c:Pointer<T_cipherSuite> = _cipherSuiteByID(_cID);
                if (_c != null && !_c.isNil()) {
                    return _aesgcmCiphers[_cID];
                };
            };
            {
                var _c:Pointer<T_cipherSuiteTLS13> = _cipherSuiteTLS13ByID(_cID);
                if (_c != null && !_c.isNil()) {
                    return _aesgcmCiphers[_cID];
                };
            };
        };
        return false;
    }
function _cipherRC4(_key:Slice<GoByte>, _iv:Slice<GoByte>, _isRead:Bool):AnyInterface {
        var __tmp__ = stdgo.crypto.rc4.Rc4.newCipher(_key), _cipher:Pointer<stdgo.crypto.rc4.Rc4.Cipher> = __tmp__._0, _:stdgo.Error = __tmp__._1;
        return Go.toInterface(_cipher);
    }
function _cipher3DES(_key:Slice<GoByte>, _iv:Slice<GoByte>, _isRead:Bool):AnyInterface {
        var __tmp__ = stdgo.crypto.des.Des.newTripleDESCipher(_key), _block:stdgo.crypto.cipher.Cipher.Block = __tmp__._0, _:stdgo.Error = __tmp__._1;
        if (_isRead) {
            return Go.toInterface(stdgo.crypto.cipher.Cipher.newCBCDecrypter(_block, _iv));
        };
        return Go.toInterface(stdgo.crypto.cipher.Cipher.newCBCEncrypter(_block, _iv));
    }
function _cipherAES(_key:Slice<GoByte>, _iv:Slice<GoByte>, _isRead:Bool):AnyInterface {
        var __tmp__ = stdgo.crypto.aes.Aes.newCipher(_key), _block:stdgo.crypto.cipher.Cipher.Block = __tmp__._0, _:stdgo.Error = __tmp__._1;
        if (_isRead) {
            return Go.toInterface(stdgo.crypto.cipher.Cipher.newCBCDecrypter(_block, _iv));
        };
        return Go.toInterface(stdgo.crypto.cipher.Cipher.newCBCEncrypter(_block, _iv));
    }
/**
    // macSHA1 returns a SHA-1 based constant time MAC.
**/
function _macSHA1(_key:Slice<GoByte>):stdgo.hash.Hash.Hash {
        return stdgo.crypto.hmac.Hmac.new_(_newConstantTimeHash(stdgo.crypto.sha1.Sha1.new_), _key);
    }
/**
    // macSHA256 returns a SHA-256 based MAC. This is only supported in TLS 1.2 and
    // is currently only used in disabled-by-default cipher suites.
**/
function _macSHA256(_key:Slice<GoByte>):stdgo.hash.Hash.Hash {
        return stdgo.crypto.hmac.Hmac.new_(stdgo.crypto.sha256.Sha256.new_, _key);
    }
function _aeadAESGCM(_key:Slice<GoByte>, _noncePrefix:Slice<GoByte>):T_aead {
        if (_noncePrefix.length != _noncePrefixLength) {
            throw "tls: internal error: wrong nonce length";
        };
        var __tmp__ = stdgo.crypto.aes.Aes.newCipher(_key), _aes:stdgo.crypto.cipher.Cipher.Block = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            throw _err;
        };
        var __tmp__ = stdgo.crypto.cipher.Cipher.newGCM(_aes), _aead:stdgo.crypto.cipher.Cipher.AEAD = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            throw _err;
        };
        var _ret:Pointer<T_prefixNonceAEAD> = Go.pointer((({ _aead : _aead, _nonce : new GoArray<GoUInt8>(...[for (i in 0 ... 12) ((0 : GoUInt8))]) } : T_prefixNonceAEAD)));
        Go.copy(_ret.value._nonce.__slice__(0), _noncePrefix);
        return _ret.value;
    }
function _aeadAESGCMTLS13(_key:Slice<GoByte>, _nonceMask:Slice<GoByte>):T_aead {
        if (_nonceMask.length != _aeadNonceLength) {
            throw "tls: internal error: wrong nonce length";
        };
        var __tmp__ = stdgo.crypto.aes.Aes.newCipher(_key), _aes:stdgo.crypto.cipher.Cipher.Block = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            throw _err;
        };
        var __tmp__ = stdgo.crypto.cipher.Cipher.newGCM(_aes), _aead:stdgo.crypto.cipher.Cipher.AEAD = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            throw _err;
        };
        var _ret:Pointer<T_xorNonceAEAD> = Go.pointer((({ _aead : _aead, _nonceMask : new GoArray<GoUInt8>(...[for (i in 0 ... 12) ((0 : GoUInt8))]) } : T_xorNonceAEAD)));
        Go.copy(_ret.value._nonceMask.__slice__(0), _nonceMask);
        return _ret.value;
    }
function _aeadChaCha20Poly1305(_key:Slice<GoByte>, _nonceMask:Slice<GoByte>):T_aead {
        if (_nonceMask.length != _aeadNonceLength) {
            throw "tls: internal error: wrong nonce length";
        };
        var __tmp__ = golang_org.x.crypto.chacha20poly1305.Chacha20poly1305.new_(_key), _aead:stdgo.crypto.cipher.Cipher.AEAD = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            throw _err;
        };
        var _ret:Pointer<T_xorNonceAEAD> = Go.pointer((({ _aead : _aead, _nonceMask : new GoArray<GoUInt8>(...[for (i in 0 ... 12) ((0 : GoUInt8))]) } : T_xorNonceAEAD)));
        Go.copy(_ret.value._nonceMask.__slice__(0), _nonceMask);
        return _ret.value;
    }
function _newConstantTimeHash(_h:() -> stdgo.hash.Hash.Hash):() -> stdgo.hash.Hash.Hash {
        return function():stdgo.hash.Hash.Hash {
            return Go.pointer(new T_cthWrapper(((_h().__underlying__().value : T_constantTimeHash)))).value;
        };
    }
/**
    // tls10MAC implements the TLS 1.0 MAC function. RFC 2246, Section 6.2.3.
**/
function _tls10MAC(_h:stdgo.hash.Hash.Hash, _out:Slice<GoByte>, _seq:Slice<GoByte>, _header:Slice<GoByte>, _data:Slice<GoByte>, _extra:Slice<GoByte>):Slice<GoByte> {
        _h.reset();
        _h.write(_seq);
        _h.write(_header);
        _h.write(_data);
        var _res:Slice<GoUInt8> = _h.sum(_out);
        if (_extra != null && !_extra.isNil()) {
            _h.write(_extra);
        };
        return _res;
    }
function _rsaKA(_version:GoUInt16):T_keyAgreement {
        return new T_rsaKeyAgreement().__copy__();
    }
function _ecdheECDSAKA(_version:GoUInt16):T_keyAgreement {
        return Go.pointer((({ _isRSA : false, _version : _version, _params : ((null : T_ecdheParameters)), _ckx : new Pointer<T_clientKeyExchangeMsg>().nil(), _preMasterSecret : new Slice<GoUInt8>().nil() } : T_ecdheKeyAgreement))).value;
    }
function _ecdheRSAKA(_version:GoUInt16):T_keyAgreement {
        return Go.pointer((({ _isRSA : true, _version : _version, _params : ((null : T_ecdheParameters)), _ckx : new Pointer<T_clientKeyExchangeMsg>().nil(), _preMasterSecret : new Slice<GoUInt8>().nil() } : T_ecdheKeyAgreement))).value;
    }
/**
    // mutualCipherSuite returns a cipherSuite given a list of supported
    // ciphersuites and the id requested by the peer.
**/
function _mutualCipherSuite(_have:Slice<GoUInt16>, _want:GoUInt16):Pointer<T_cipherSuite> {
        for (_id in _have) {
            if (_id == _want) {
                return _cipherSuiteByID(_id);
            };
        };
        return new Pointer<T_cipherSuite>().nil();
    }
function _cipherSuiteByID(_id:GoUInt16):Pointer<T_cipherSuite> {
        for (_cipherSuite in _cipherSuites) {
            if (_cipherSuite.value._id == _id) {
                return _cipherSuite;
            };
        };
        return new Pointer<T_cipherSuite>().nil();
    }
function _mutualCipherSuiteTLS13(_have:Slice<GoUInt16>, _want:GoUInt16):Pointer<T_cipherSuiteTLS13> {
        for (_id in _have) {
            if (_id == _want) {
                return _cipherSuiteTLS13ByID(_id);
            };
        };
        return new Pointer<T_cipherSuiteTLS13>().nil();
    }
function _cipherSuiteTLS13ByID(_id:GoUInt16):Pointer<T_cipherSuiteTLS13> {
        for (_cipherSuite in _cipherSuitesTLS13) {
            if (_cipherSuite.value._id == _id) {
                return _cipherSuite;
            };
        };
        return new Pointer<T_cipherSuiteTLS13>().nil();
    }
/**
    // requiresClientCert reports whether the ClientAuthType requires a client
    // certificate to be provided.
**/
function _requiresClientCert(_c:ClientAuthType):Bool {
        if (_c.__t__ == requireAnyClientCert.__t__ || _c.__t__ == requireAndVerifyClientCert.__t__) {
            return true;
        } else {
            return false;
        };
    }
/**
    // supportedVersionsFromMax returns a list of supported versions derived from a
    // legacy maximum version value. Note that only versions supported by this
    // library are returned. Any newer peer will use supportedVersions anyway.
**/
function _supportedVersionsFromMax(_maxVersion:GoUInt16):Slice<GoUInt16> {
        var _versions:Slice<GoUInt16> = new Slice<GoUInt16>(...[for (i in 0 ... ((((0 : GoInt)) : GoInt)).toBasic()) ((0 : GoUInt16))]).setCap(((_supportedVersions.length : GoInt)).toBasic());
        for (_v in _supportedVersions) {
            if (_v > _maxVersion) {
                continue;
            };
            _versions = _versions.__append__(_v);
        };
        return _versions;
    }
/**
    // NewLRUClientSessionCache returns a ClientSessionCache with the given
    // capacity that uses an LRU strategy. If capacity is < 1, a default capacity
    // is used instead.
**/
function newLRUClientSessionCache(_capacity:GoInt):ClientSessionCache {
        final _defaultSessionCacheCapacity:GoUnTypedInt = ((64 : GoUnTypedInt));
        if (_capacity < ((1 : GoInt))) {
            _capacity = _defaultSessionCacheCapacity;
        };
        return Go.pointer((({ _m : new GoMap<GoString, Pointer<stdgo.container.list.List.Element>>(new stdgo.reflect.Reflect._Type(stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(string_kind), stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("container/list.Element", [], stdgo.reflect.Reflect.GoType.structType([{ name : "_next", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("container/list.Element", [], stdgo.reflect.Reflect.GoType.invalidType)) }, { name : "_prev", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("container/list.Element", [], stdgo.reflect.Reflect.GoType.invalidType)) }, { name : "_list", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("container/list.List", [], stdgo.reflect.Reflect.GoType.structType([{ name : "_root", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("container/list.Element", [], stdgo.reflect.Reflect.GoType.invalidType) }, { name : "_len", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int_kind) }]))) }, { name : "value", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.interfaceType(true, []) }])))))), _q : stdgo.container.list.List_.new_(), _capacity : _capacity, mutex : new stdgo.sync.Sync.Mutex() } : T_lruSessionCache))).value;
    }
function _defaultConfig():Pointer<Config> {
        return Go.pointer(_emptyConfig);
    }
function _unexpectedMessageError(_wanted:AnyInterface, _got:AnyInterface):Error {
        return stdgo.fmt.Fmt.errorf("tls: received unexpected handshake message of type %T when waiting for %T", Go.toInterface(_got), Go.toInterface(_wanted));
    }
function _isSupportedSignatureAlgorithm(_sigAlg:SignatureScheme, _supportedSignatureAlgorithms:Slice<SignatureScheme>):Bool {
        for (_s in _supportedSignatureAlgorithms) {
            if (_s.__t__ == _sigAlg.__t__) {
                return true;
            };
        };
        return false;
    }
/**
    // extractPadding returns, in constant time, the length of the padding to remove
    // from the end of payload. It also returns a byte which is equal to 255 if the
    // padding was valid and 0 otherwise. See RFC 2246, Section 6.2.3.2.
**/
function _extractPadding(_payload:Slice<GoByte>):{ var _0 : GoInt; var _1 : GoByte; } {
        var _toRemove:GoInt = ((0 : GoInt)), _good:GoByte = ((0 : GoUInt8));
        if (_payload.length < ((1 : GoInt))) {
            return { _0 : ((0 : GoInt)), _1 : ((0 : GoUInt8)) };
        };
        var _paddingLen:GoUInt8 = _payload[_payload.length - ((1 : GoInt))];
        var _t:GoUInt = (((_payload.length - ((1 : GoInt))) : GoUInt)) - ((_paddingLen : GoUInt));
        _good = ((((((-1 ^ _t) : GoInt32)) >> ((31 : GoUnTypedInt))) : GoByte));
        var _toCheck:GoInt = ((256 : GoInt));
        if (_toCheck > _payload.length) {
            _toCheck = _payload.length;
        };
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < _toCheck, _i++, {
                var _t:GoUInt = ((_paddingLen : GoUInt)) - ((_i : GoUInt));
                var _mask:GoUInt8 = ((((((-1 ^ _t) : GoInt32)) >> ((31 : GoUnTypedInt))) : GoByte));
                var _b:GoUInt8 = _payload[_payload.length - ((1 : GoInt)) - _i];
                _good = (_good & (_mask & _paddingLen ^ _mask & _b)) ^ ((-1 : GoUnTypedInt));
            });
        };
        _good = _good & ((_good << ((4 : GoUnTypedInt))));
        _good = _good & ((_good << ((2 : GoUnTypedInt))));
        _good = _good & ((_good << ((1 : GoUnTypedInt))));
        _good = (((((_good : GoInt8)) >> ((7 : GoUnTypedInt))) : GoUInt8));
        _paddingLen = _paddingLen & (_good);
        _toRemove = ((_paddingLen : GoInt)) + ((1 : GoInt));
        return { _0 : _toRemove, _1 : _good };
    }
function _roundUp(_a:GoInt, _b:GoInt):GoInt {
        return _a + (_b - _a % _b) % _b;
    }
/**
    // sliceForAppend extends the input slice by n bytes. head is the full extended
    // slice, while tail is the appended part. If the original slice has sufficient
    // capacity no allocation is performed.
**/
function _sliceForAppend(_in:Slice<GoByte>, _n:GoInt):{ var _0 : Slice<GoByte>; var _1 : Slice<GoByte>; } {
        var _head:Slice<GoByte> = new Slice<GoUInt8>().nil(), _tail:Slice<GoByte> = new Slice<GoUInt8>().nil();
        {
            var _total:GoInt = _in.length + _n;
            if (_in.cap() >= _total) {
                _head = _in.__slice__(0, _total);
            } else {
                _head = new Slice<GoUInt8>(...[for (i in 0 ... ((_total : GoInt)).toBasic()) ((0 : GoUInt8))]);
                Go.copy(_head, _in);
            };
        };
        _tail = _head.__slice__(_in.length);
        return { _0 : _head, _1 : _tail };
    }
/**
    // checkALPN ensure that the server's choice of ALPN protocol is compatible with
    // the protocols that we advertised in the Client Hello.
**/
function _checkALPN(_clientProtos:Slice<GoString>, _serverProto:GoString):Error {
        if (_serverProto == (("" : GoString))) {
            return ((null : stdgo.Error));
        };
        if (_clientProtos.length == ((0 : GoInt))) {
            return stdgo.errors.Errors.new_("tls: server advertised unrequested ALPN extension");
        };
        for (_proto in _clientProtos) {
            if (_proto == _serverProto) {
                return ((null : stdgo.Error));
            };
        };
        return stdgo.errors.Errors.new_("tls: server selected unadvertised ALPN protocol");
    }
/**
    // certificateRequestInfoFromMsg generates a CertificateRequestInfo from a TLS
    // <= 1.2 CertificateRequest, making an effort to fill in missing information.
**/
function _certificateRequestInfoFromMsg(_ctx:stdgo.context.Context.Context, _vers:GoUInt16, _certReq:Pointer<T_certificateRequestMsg>):Pointer<CertificateRequestInfo> {
        var _cri:Pointer<CertificateRequestInfo> = Go.pointer((({ acceptableCAs : _certReq.value._certificateAuthorities, version : _vers, _ctx : _ctx, signatureSchemes : new Slice<SignatureScheme>().nil() } : CertificateRequestInfo)));
        var _rsaAvail:Bool = false, _ecAvail:Bool = false;
        for (_certType in _certReq.value._certificateTypes) {
            if (_certType == _certTypeRSASign) {
                _rsaAvail = true;
            } else if (_certType == _certTypeECDSASign) {
                _ecAvail = true;
            };
        };
        if (!_certReq.value._hasSignatureAlgorithm) {
            if (_rsaAvail && _ecAvail) {
                _cri.value.signatureSchemes = new Slice<SignatureScheme>(ecdsawithP256AndSHA256, ecdsawithP384AndSHA384, ecdsawithP521AndSHA512, pkcs1withSHA256, pkcs1withSHA384, pkcs1withSHA512, pkcs1withSHA1);
            } else if (_rsaAvail) {
                _cri.value.signatureSchemes = new Slice<SignatureScheme>(pkcs1withSHA256, pkcs1withSHA384, pkcs1withSHA512, pkcs1withSHA1);
            } else if (_ecAvail) {
                _cri.value.signatureSchemes = new Slice<SignatureScheme>(ecdsawithP256AndSHA256, ecdsawithP384AndSHA384, ecdsawithP521AndSHA512);
            };
            return _cri;
        };
        _cri.value.signatureSchemes = new Slice<SignatureScheme>(...[for (i in 0 ... ((((0 : GoInt)) : GoInt)).toBasic()) new SignatureScheme()]).setCap(((_certReq.value._supportedSignatureAlgorithms.length : GoInt)).toBasic());
        for (_sigScheme in _certReq.value._supportedSignatureAlgorithms) {
            var __tmp__ = _typeAndHashFromSignatureScheme(_sigScheme), _sigType:GoUInt8 = __tmp__._0, _:stdgo.crypto.Crypto.Hash = __tmp__._1, _err:stdgo.Error = __tmp__._2;
            if (_err != null) {
                continue;
            };
            if (_sigType == _signatureECDSA || _sigType == _signatureEd25519) {
                if (_ecAvail) {
                    _cri.value.signatureSchemes = _cri.value.signatureSchemes.__append__(_sigScheme);
                };
            } else if (_sigType == _signatureRSAPSS || _sigType == _signaturePKCS1v15) {
                if (_rsaAvail) {
                    _cri.value.signatureSchemes = _cri.value.signatureSchemes.__append__(_sigScheme);
                };
            };
        };
        return _cri;
    }
/**
    // clientSessionCacheKey returns a key used to cache sessionTickets that could
    // be used to resume previously negotiated TLS sessions with a server.
**/
function _clientSessionCacheKey(_serverAddr:stdgo.net.Net.Addr, _config:Pointer<Config>):GoString {
        if (_config.value.serverName.length > ((0 : GoInt))) {
            return _config.value.serverName;
        };
        return _serverAddr.toString();
    }
/**
    // hostnameInSNI converts name into an appropriate hostname for SNI.
    // Literal IP addresses and absolute FQDNs are not permitted as SNI values.
    // See RFC 6066, Section 3.
**/
function _hostnameInSNI(_name:GoString):GoString {
        var _host:GoString = _name;
        if (_host.length > ((0 : GoInt)) && _host[((0 : GoInt))] == (("[".code : GoRune)) && _host[_host.length - ((1 : GoInt))] == (("]".code : GoRune))) {
            _host = _host.__slice__(((1 : GoInt)), _host.length - ((1 : GoInt)));
        };
        {
            var _i:GoInt = stdgo.strings.Strings.lastIndex(_host, "%");
            if (_i > ((0 : GoInt))) {
                _host = _host.__slice__(0, _i);
            };
        };
        if (stdgo.net.Net.parseIP(_host).__t__ != null && !stdgo.net.Net.parseIP(_host).__t__.isNil()) {
            return "";
        };
        while (_name.length > ((0 : GoInt)) && _name[_name.length - ((1 : GoInt))] == ((".".code : GoRune))) {
            _name = _name.__slice__(0, _name.length - ((1 : GoInt)));
        };
        return _name;
    }
/**
    // addBytesWithLength appends a sequence of bytes to the cryptobyte.Builder. If
    // the length of the sequence is not the value specified, it produces an error.
**/
function _addBytesWithLength(_b:Pointer<golang_org.x.crypto.cryptobyte.Cryptobyte.Builder>, _v:Slice<GoByte>, _n:GoInt):Void {
        _b.value.addValue(new T_marshalingFunction(function(_b:Pointer<golang_org.x.crypto.cryptobyte.Cryptobyte.Builder>):Error {
            if (_v.length != _n) {
                return stdgo.fmt.Fmt.errorf("invalid value length: expected %d, got %d", Go.toInterface(_n), Go.toInterface(_v.length));
            };
            _b.value.addBytes(_v);
            return ((null : stdgo.Error));
        }).__copy__());
    }
/**
    // addUint64 appends a big-endian, 64-bit value to the cryptobyte.Builder.
**/
function _addUint64(_b:Pointer<golang_org.x.crypto.cryptobyte.Cryptobyte.Builder>, _v:GoUInt64):Void {
        _b.value.addUint32((((_v >> ((32 : GoUnTypedInt))) : GoUInt32)));
        _b.value.addUint32(((_v : GoUInt32)));
    }
/**
    // readUint64 decodes a big-endian, 64-bit value into out and advances over it.
    // It reports whether the read was successful.
**/
function _readUint64(_s:Pointer<golang_org.x.crypto.cryptobyte.Cryptobyte.String_>, _out:Pointer<GoUInt64>):Bool {
        var _hi:GoUInt32 = ((0 : GoUInt32)), _lo:GoUInt32 = ((0 : GoUInt32));
        if (!_s.value.readUint32(Go.pointer(_hi)) || !_s.value.readUint32(Go.pointer(_lo))) {
            return false;
        };
        _out.value = (((_hi : GoUInt64)) << ((32 : GoUnTypedInt))) | ((_lo : GoUInt64));
        return true;
    }
/**
    // readUint8LengthPrefixed acts like s.ReadUint8LengthPrefixed, but targets a
    // []byte instead of a cryptobyte.String.
**/
function _readUint8LengthPrefixed(_s:Pointer<golang_org.x.crypto.cryptobyte.Cryptobyte.String_>, _out:Pointer<Slice<GoByte>>):Bool {
        return _s.value.readUint8LengthPrefixed(new Pointer<vendor.golang_org.x.crypto.cryptobyte.Cryptobyte.String_>(() -> new vendor.golang_org.x.crypto.cryptobyte.Cryptobyte.String_(_out.value), v -> new vendor.golang_org.x.crypto.cryptobyte.Cryptobyte.String_((_out.value = v.__t__))));
    }
/**
    // readUint16LengthPrefixed acts like s.ReadUint16LengthPrefixed, but targets a
    // []byte instead of a cryptobyte.String.
**/
function _readUint16LengthPrefixed(_s:Pointer<golang_org.x.crypto.cryptobyte.Cryptobyte.String_>, _out:Pointer<Slice<GoByte>>):Bool {
        return _s.value.readUint16LengthPrefixed(new Pointer<vendor.golang_org.x.crypto.cryptobyte.Cryptobyte.String_>(() -> new vendor.golang_org.x.crypto.cryptobyte.Cryptobyte.String_(_out.value), v -> new vendor.golang_org.x.crypto.cryptobyte.Cryptobyte.String_((_out.value = v.__t__))));
    }
/**
    // readUint24LengthPrefixed acts like s.ReadUint24LengthPrefixed, but targets a
    // []byte instead of a cryptobyte.String.
**/
function _readUint24LengthPrefixed(_s:Pointer<golang_org.x.crypto.cryptobyte.Cryptobyte.String_>, _out:Pointer<Slice<GoByte>>):Bool {
        return _s.value.readUint24LengthPrefixed(new Pointer<vendor.golang_org.x.crypto.cryptobyte.Cryptobyte.String_>(() -> new vendor.golang_org.x.crypto.cryptobyte.Cryptobyte.String_(_out.value), v -> new vendor.golang_org.x.crypto.cryptobyte.Cryptobyte.String_((_out.value = v.__t__))));
    }
function _marshalCertificate(_b:Pointer<golang_org.x.crypto.cryptobyte.Cryptobyte.Builder>, _certificate:Certificate):Void {
        _b.value.addUint24LengthPrefixed(new vendor.golang_org.x.crypto.cryptobyte.Cryptobyte.BuilderContinuation(function(_b:Pointer<golang_org.x.crypto.cryptobyte.Cryptobyte.Builder>):Void {
            {
                var _i;
                var _cert;
                for (_obj in _certificate.certificate.keyValueIterator()) {
                    _i = _obj.key;
                    _cert = _obj.value;
                    _b.value.addUint24LengthPrefixed(new vendor.golang_org.x.crypto.cryptobyte.Cryptobyte.BuilderContinuation(function(_b:Pointer<golang_org.x.crypto.cryptobyte.Cryptobyte.Builder>):Void {
                        _b.value.addBytes(_cert);
                    }));
                    _b.value.addUint16LengthPrefixed(new vendor.golang_org.x.crypto.cryptobyte.Cryptobyte.BuilderContinuation(function(_b:Pointer<golang_org.x.crypto.cryptobyte.Cryptobyte.Builder>):Void {
                        if (_i > ((0 : GoInt))) {
                            return;
                        };
                        if (_certificate.ocspstaple != null && !_certificate.ocspstaple.isNil()) {
                            _b.value.addUint16(_extensionStatusRequest);
                            _b.value.addUint16LengthPrefixed(new vendor.golang_org.x.crypto.cryptobyte.Cryptobyte.BuilderContinuation(function(_b:Pointer<golang_org.x.crypto.cryptobyte.Cryptobyte.Builder>):Void {
                                _b.value.addUint8(_statusTypeOCSP);
                                _b.value.addUint24LengthPrefixed(new vendor.golang_org.x.crypto.cryptobyte.Cryptobyte.BuilderContinuation(function(_b:Pointer<golang_org.x.crypto.cryptobyte.Cryptobyte.Builder>):Void {
                                    _b.value.addBytes(_certificate.ocspstaple);
                                }));
                            }));
                        };
                        if (_certificate.signedCertificateTimestamps != null && !_certificate.signedCertificateTimestamps.isNil()) {
                            _b.value.addUint16(_extensionSCT);
                            _b.value.addUint16LengthPrefixed(new vendor.golang_org.x.crypto.cryptobyte.Cryptobyte.BuilderContinuation(function(_b:Pointer<golang_org.x.crypto.cryptobyte.Cryptobyte.Builder>):Void {
                                _b.value.addUint16LengthPrefixed(new vendor.golang_org.x.crypto.cryptobyte.Cryptobyte.BuilderContinuation(function(_b:Pointer<golang_org.x.crypto.cryptobyte.Cryptobyte.Builder>):Void {
                                    for (_sct in _certificate.signedCertificateTimestamps) {
                                        _b.value.addUint16LengthPrefixed(new vendor.golang_org.x.crypto.cryptobyte.Cryptobyte.BuilderContinuation(function(_b:Pointer<golang_org.x.crypto.cryptobyte.Cryptobyte.Builder>):Void {
                                            _b.value.addBytes(_sct);
                                        }));
                                    };
                                }));
                            }));
                        };
                    }));
                };
            };
        }));
    }
function _unmarshalCertificate(_s:Pointer<golang_org.x.crypto.cryptobyte.Cryptobyte.String_>, _certificate:Pointer<Certificate>):Bool {
        var _certList:golang_org.x.crypto.cryptobyte.Cryptobyte.String_ = new vendor.golang_org.x.crypto.cryptobyte.Cryptobyte.String_();
        if (!_s.value.readUint24LengthPrefixed(Go.pointer(_certList))) {
            return false;
        };
        while (!_certList.empty()) {
            var _cert:Slice<GoByte> = new Slice<GoUInt8>().nil();
            var _extensions:golang_org.x.crypto.cryptobyte.Cryptobyte.String_ = new vendor.golang_org.x.crypto.cryptobyte.Cryptobyte.String_();
            if (!_readUint24LengthPrefixed(Go.pointer(_certList), Go.pointer(_cert)) || !_certList.readUint16LengthPrefixed(Go.pointer(_extensions))) {
                return false;
            };
            _certificate.value.certificate = _certificate.value.certificate.__append__(_cert);
            while (!_extensions.empty()) {
                var _extension:GoUInt16 = ((0 : GoUInt16));
                var _extData:golang_org.x.crypto.cryptobyte.Cryptobyte.String_ = new vendor.golang_org.x.crypto.cryptobyte.Cryptobyte.String_();
                if (!_extensions.readUint16(Go.pointer(_extension)) || !_extensions.readUint16LengthPrefixed(Go.pointer(_extData))) {
                    return false;
                };
                if (_certificate.value.certificate.length > ((1 : GoInt))) {
                    continue;
                };
                if (_extension == _extensionStatusRequest) {
                    var _statusType:GoUInt8 = ((0 : GoUInt8));
                    if (!_extData.readUint8(Go.pointer(_statusType)) || _statusType != _statusTypeOCSP || !_readUint24LengthPrefixed(Go.pointer(_extData), Go.pointer(_certificate.value.ocspstaple)) || _certificate.value.ocspstaple.length == ((0 : GoInt))) {
                        return false;
                    };
                } else if (_extension == _extensionSCT) {
                    var _sctList:golang_org.x.crypto.cryptobyte.Cryptobyte.String_ = new vendor.golang_org.x.crypto.cryptobyte.Cryptobyte.String_();
                    if (!_extData.readUint16LengthPrefixed(Go.pointer(_sctList)) || _sctList.empty()) {
                        return false;
                    };
                    while (!_sctList.empty()) {
                        var _sct:Slice<GoByte> = new Slice<GoUInt8>().nil();
                        if (!_readUint16LengthPrefixed(Go.pointer(_sctList), Go.pointer(_sct)) || _sct.length == ((0 : GoInt))) {
                            return false;
                        };
                        _certificate.value.signedCertificateTimestamps = _certificate.value.signedCertificateTimestamps.__append__(_sct);
                    };
                } else {
                    continue;
                };
                if (!_extData.empty()) {
                    return false;
                };
            };
        };
        return true;
    }
/**
    // negotiateALPN picks a shared ALPN protocol that both sides support in server
    // preference order. If ALPN is not configured or the peer doesn't support it,
    // it returns "" and no error.
**/
function _negotiateALPN(_serverProtos:Slice<GoString>, _clientProtos:Slice<GoString>):{ var _0 : GoString; var _1 : Error; } {
        if (_serverProtos.length == ((0 : GoInt)) || _clientProtos.length == ((0 : GoInt))) {
            return { _0 : "", _1 : ((null : stdgo.Error)) };
        };
        var _http11fallback:Bool = false;
        for (_s in _serverProtos) {
            for (_c in _clientProtos) {
                if (_s == _c) {
                    return { _0 : _s, _1 : ((null : stdgo.Error)) };
                };
                if (_s == (("h2" : GoString)) && _c == (("http/1.1" : GoString))) {
                    _http11fallback = true;
                };
            };
        };
        if (_http11fallback) {
            return { _0 : "", _1 : ((null : stdgo.Error)) };
        };
        return { _0 : "", _1 : stdgo.fmt.Fmt.errorf("tls: client requested unsupported application protocols (%s)", Go.toInterface(_clientProtos)) };
    }
/**
    // supportsECDHE returns whether ECDHE key exchanges can be used with this
    // pre-TLS 1.3 client.
**/
function _supportsECDHE(_c:Pointer<Config>, _supportedCurves:Slice<CurveID>, _supportedPoints:Slice<GoUInt8>):Bool {
        var _supportsCurve:Bool = false;
        for (_curve in _supportedCurves) {
            if (_c.value._supportsCurve(_curve)) {
                _supportsCurve = true;
                break;
            };
        };
        var _supportsPointFormat:Bool = false;
        for (_pointFormat in _supportedPoints) {
            if (_pointFormat == _pointFormatUncompressed) {
                _supportsPointFormat = true;
                break;
            };
        };
        return _supportsCurve && _supportsPointFormat;
    }
function _clientHelloInfo(_ctx:stdgo.context.Context.Context, _c:Pointer<Conn>, _clientHello:Pointer<T_clientHelloMsg>):Pointer<ClientHelloInfo> {
        var _supportedVersions:Slice<GoUInt16> = _clientHello.value._supportedVersions;
        if (_clientHello.value._supportedVersions.length == ((0 : GoInt))) {
            _supportedVersions = _supportedVersionsFromMax(_clientHello.value._vers);
        };
        return Go.pointer((({ cipherSuites : _clientHello.value._cipherSuites, serverName : _clientHello.value._serverName, supportedCurves : _clientHello.value._supportedCurves, supportedPoints : _clientHello.value._supportedPoints, signatureSchemes : _clientHello.value._supportedSignatureAlgorithms, supportedProtos : _clientHello.value._alpnProtocols, supportedVersions : _supportedVersions, conn : _c.value._conn, _config : _c.value._config, _ctx : _ctx } : ClientHelloInfo)));
    }
typedef T_binaryMarshaler__cloneHash_0 = StructType & {
    public function marshalBinary():{ var _0 : Slice<GoByte>; var _1 : Error; };
    public function unmarshalBinary(_data:Slice<GoByte>):Error;
};
/**
    // cloneHash uses the encoding.BinaryMarshaler and encoding.BinaryUnmarshaler
    // interfaces implemented by standard library hashes to clone the state of in
    // to a new instance of h. It returns nil if the operation fails.
**/
function _cloneHash(_in:stdgo.hash.Hash.Hash, _h:stdgo.crypto.Crypto.Hash):stdgo.hash.Hash.Hash {
        {};
        var __tmp__ = try {
            { value : ((_in.__underlying__().value : T_binaryMarshaler__cloneHash_0)), ok : true };
        } catch(_) {
            { value : ((null : T_binaryMarshaler__cloneHash_0)), ok : false };
        }, _marshaler = __tmp__.value, _ok = __tmp__.ok;
        if (!_ok) {
            return ((null : stdgo.hash.Hash.Hash));
        };
        var __tmp__ = _marshaler.marshalBinary(), _state:Slice<GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return ((null : stdgo.hash.Hash.Hash));
        };
        var _out:stdgo.hash.Hash.Hash = _h.new_();
        var __tmp__ = try {
            { value : ((_out.__underlying__().value : T_binaryMarshaler__cloneHash_0)), ok : true };
        } catch(_) {
            { value : ((null : T_binaryMarshaler__cloneHash_0)), ok : false };
        }, _unmarshaler = __tmp__.value, _ok = __tmp__.ok;
        if (!_ok) {
            return ((null : stdgo.hash.Hash.Hash));
        };
        {
            var _err:stdgo.Error = _unmarshaler.unmarshalBinary(_state);
            if (_err != null) {
                return ((null : stdgo.hash.Hash.Hash));
            };
        };
        return _out;
    }
/**
    // illegalClientHelloChange reports whether the two ClientHello messages are
    // different, with the exception of the changes allowed before and after a
    // HelloRetryRequest. See RFC 8446, Section 4.1.2.
**/
function _illegalClientHelloChange(_ch:Pointer<T_clientHelloMsg>, _ch1:Pointer<T_clientHelloMsg>):Bool {
        if (_ch.value._supportedVersions.length != _ch1.value._supportedVersions.length || _ch.value._cipherSuites.length != _ch1.value._cipherSuites.length || _ch.value._supportedCurves.length != _ch1.value._supportedCurves.length || _ch.value._supportedSignatureAlgorithms.length != _ch1.value._supportedSignatureAlgorithms.length || _ch.value._supportedSignatureAlgorithmsCert.length != _ch1.value._supportedSignatureAlgorithmsCert.length || _ch.value._alpnProtocols.length != _ch1.value._alpnProtocols.length) {
            return true;
        };
        {
            var _i;
            for (_obj in _ch.value._supportedVersions.keyValueIterator()) {
                _i = _obj.key;
                if (_ch.value._supportedVersions[_i] != _ch1.value._supportedVersions[_i]) {
                    return true;
                };
            };
        };
        {
            var _i;
            for (_obj in _ch.value._cipherSuites.keyValueIterator()) {
                _i = _obj.key;
                if (_ch.value._cipherSuites[_i] != _ch1.value._cipherSuites[_i]) {
                    return true;
                };
            };
        };
        {
            var _i;
            for (_obj in _ch.value._supportedCurves.keyValueIterator()) {
                _i = _obj.key;
                if (_ch.value._supportedCurves[_i].__t__ != _ch1.value._supportedCurves[_i].__t__) {
                    return true;
                };
            };
        };
        {
            var _i;
            for (_obj in _ch.value._supportedSignatureAlgorithms.keyValueIterator()) {
                _i = _obj.key;
                if (_ch.value._supportedSignatureAlgorithms[_i].__t__ != _ch1.value._supportedSignatureAlgorithms[_i].__t__) {
                    return true;
                };
            };
        };
        {
            var _i;
            for (_obj in _ch.value._supportedSignatureAlgorithmsCert.keyValueIterator()) {
                _i = _obj.key;
                if (_ch.value._supportedSignatureAlgorithmsCert[_i].__t__ != _ch1.value._supportedSignatureAlgorithmsCert[_i].__t__) {
                    return true;
                };
            };
        };
        {
            var _i;
            for (_obj in _ch.value._alpnProtocols.keyValueIterator()) {
                _i = _obj.key;
                if (_ch.value._alpnProtocols[_i] != _ch1.value._alpnProtocols[_i]) {
                    return true;
                };
            };
        };
        return _ch.value._vers != _ch1.value._vers || !stdgo.bytes.Bytes.equal(_ch.value._random, _ch1.value._random) || !stdgo.bytes.Bytes.equal(_ch.value._sessionId, _ch1.value._sessionId) || !stdgo.bytes.Bytes.equal(_ch.value._compressionMethods, _ch1.value._compressionMethods) || _ch.value._serverName != _ch1.value._serverName || _ch.value._ocspStapling != _ch1.value._ocspStapling || !stdgo.bytes.Bytes.equal(_ch.value._supportedPoints, _ch1.value._supportedPoints) || _ch.value._ticketSupported != _ch1.value._ticketSupported || !stdgo.bytes.Bytes.equal(_ch.value._sessionTicket, _ch1.value._sessionTicket) || _ch.value._secureRenegotiationSupported != _ch1.value._secureRenegotiationSupported || !stdgo.bytes.Bytes.equal(_ch.value._secureRenegotiation, _ch1.value._secureRenegotiation) || _ch.value._scts != _ch1.value._scts || !stdgo.bytes.Bytes.equal(_ch.value._cookie, _ch1.value._cookie) || !stdgo.bytes.Bytes.equal(_ch.value._pskModes, _ch1.value._pskModes);
    }
/**
    // sha1Hash calculates a SHA1 hash over the given byte slices.
**/
function _sha1Hash(_slices:Slice<Slice<GoByte>>):Slice<GoByte> {
        var _hsha1:stdgo.hash.Hash.Hash = stdgo.crypto.sha1.Sha1.new_();
        for (_slice in _slices) {
            _hsha1.write(_slice);
        };
        return _hsha1.sum(new Slice<GoUInt8>().nil());
    }
/**
    // md5SHA1Hash implements TLS 1.0's hybrid hash function which consists of the
    // concatenation of an MD5 and SHA1 hash.
**/
function _md5SHA1Hash(_slices:Slice<Slice<GoByte>>):Slice<GoByte> {
        var _md5sha1:Slice<GoUInt8> = new Slice<GoUInt8>(...[for (i in 0 ... ((stdgo.crypto.md5.Md5.size + stdgo.crypto.sha1.Sha1.size : GoInt)).toBasic()) ((0 : GoUInt8))]);
        var _hmd5:stdgo.hash.Hash.Hash = stdgo.crypto.md5.Md5.new_();
        for (_slice in _slices) {
            _hmd5.write(_slice);
        };
        Go.copy(_md5sha1, _hmd5.sum(new Slice<GoUInt8>().nil()));
        Go.copy(_md5sha1.__slice__(stdgo.crypto.md5.Md5.size), _sha1Hash(_slices));
        return _md5sha1;
    }
/**
    // hashForServerKeyExchange hashes the given slices and returns their digest
    // using the given hash function (for >= TLS 1.2) or using a default based on
    // the sigType (for earlier TLS versions). For Ed25519 signatures, which don't
    // do pre-hashing, it returns the concatenation of the slices.
**/
function _hashForServerKeyExchange(_sigType:GoUInt8, _hashFunc:stdgo.crypto.Crypto.Hash, _version:GoUInt16, _slices:haxe.Rest<Slice<GoByte>>):Slice<GoByte> {
        var _slices = new Slice<Slice<GoByte>>(..._slices);
        if (_sigType == _signatureEd25519) {
            var _signed:Slice<GoByte> = new Slice<GoUInt8>().nil();
            for (_slice in _slices) {
                _signed = _signed.__append__(..._slice.toArray());
            };
            return _signed;
        };
        if (_version >= versionTLS12) {
            var _h:stdgo.hash.Hash.Hash = _hashFunc.new_();
            for (_slice in _slices) {
                _h.write(_slice);
            };
            var _digest:Slice<GoUInt8> = _h.sum(new Slice<GoUInt8>().nil());
            return _digest;
        };
        if (_sigType == _signatureECDSA) {
            return _sha1Hash(_slices);
        };
        return _md5SHA1Hash(_slices);
    }
function _generateECDHEParameters(_rand:stdgo.io.Io.Reader, _curveID:CurveID):{ var _0 : T_ecdheParameters; var _1 : Error; } {
        if (_curveID.__t__ == x25519.__t__) {
            var _privateKey:Slice<GoUInt8> = new Slice<GoUInt8>(...[for (i in 0 ... ((golang_org.x.crypto.curve25519.Curve25519.scalarSize : GoInt)).toBasic()) ((0 : GoUInt8))]);
            {
                var __tmp__ = stdgo.io.Io.readFull(_rand, _privateKey), _:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    return { _0 : ((null : T_ecdheParameters)), _1 : _err };
                };
            };
            var __tmp__ = golang_org.x.crypto.curve25519.Curve25519.x25519(_privateKey, golang_org.x.crypto.curve25519.Curve25519.basepoint), _publicKey:Slice<GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return { _0 : ((null : T_ecdheParameters)), _1 : _err };
            };
            return { _0 : Go.pointer((({ _privateKey : _privateKey, _publicKey : _publicKey } : T_x25519Parameters))).value, _1 : ((null : stdgo.Error)) };
        };
        var __tmp__ = _curveForCurveID(_curveID), _curve:stdgo.crypto.elliptic.Elliptic.Curve = __tmp__._0, _ok:Bool = __tmp__._1;
        if (!_ok) {
            return { _0 : ((null : T_ecdheParameters)), _1 : stdgo.errors.Errors.new_("tls: internal error: unsupported curve") };
        };
        var _p:Pointer<T_nistParameters> = Go.pointer((({ _curveID : _curveID, _privateKey : new Slice<GoUInt8>().nil(), _x : new Pointer<stdgo.math.big.Big.Int_>().nil(), _y : new Pointer<stdgo.math.big.Big.Int_>().nil() } : T_nistParameters)));
        var _err:Error = ((null : stdgo.Error));
        {
            var __tmp__ = stdgo.crypto.elliptic.Elliptic.generateKey(_curve, _rand);
            _p.value._privateKey = __tmp__._0;
            _p.value._x = __tmp__._1;
            _p.value._y = __tmp__._2;
            _err = __tmp__._3;
        };
        if (_err != null) {
            return { _0 : ((null : T_ecdheParameters)), _1 : _err };
        };
        return { _0 : _p.value, _1 : ((null : stdgo.Error)) };
    }
function _curveForCurveID(_id:CurveID):{ var _0 : stdgo.crypto.elliptic.Elliptic.Curve; var _1 : Bool; } {
        if (_id.__t__ == curveP256.__t__) {
            return { _0 : stdgo.crypto.elliptic.Elliptic.p256(), _1 : true };
        } else if (_id.__t__ == curveP384.__t__) {
            return { _0 : stdgo.crypto.elliptic.Elliptic.p384(), _1 : true };
        } else if (_id.__t__ == curveP521.__t__) {
            return { _0 : stdgo.crypto.elliptic.Elliptic.p521(), _1 : true };
        } else {
            return { _0 : ((null : stdgo.crypto.elliptic.Elliptic.Curve)), _1 : false };
        };
    }
/**
    // Split a premaster secret in two as specified in RFC 4346, Section 5.
**/
function _splitPreMasterSecret(_secret:Slice<GoByte>):{ var _0 : Slice<GoByte>; var _1 : Slice<GoByte>; } {
        var _s1:Slice<GoByte> = new Slice<GoUInt8>().nil(), _s2:Slice<GoByte> = new Slice<GoUInt8>().nil();
        _s1 = _secret.__slice__(((0 : GoInt)), (_secret.length + ((1 : GoInt))) / ((2 : GoInt)));
        _s2 = _secret.__slice__(_secret.length / ((2 : GoInt)));
        return { _0 : _s1, _1 : _s2 };
    }
/**
    // pHash implements the P_hash function, as defined in RFC 4346, Section 5.
**/
function _pHash(_result:Slice<GoByte>, _secret:Slice<GoByte>, _seed:Slice<GoByte>, _hash:() -> stdgo.hash.Hash.Hash):Void {
        var _h:stdgo.hash.Hash.Hash = stdgo.crypto.hmac.Hmac.new_(_hash, _secret);
        _h.write(_seed);
        var _a:Slice<GoUInt8> = _h.sum(new Slice<GoUInt8>().nil());
        var _j:GoInt = ((0 : GoInt));
        while (_j < _result.length) {
            _h.reset();
            _h.write(_a);
            _h.write(_seed);
            var _b:Slice<GoUInt8> = _h.sum(new Slice<GoUInt8>().nil());
            Go.copy(_result.__slice__(_j), _b);
            _j = _j + (_b.length);
            _h.reset();
            _h.write(_a);
            _a = _h.sum(new Slice<GoUInt8>().nil());
        };
    }
/**
    // prf10 implements the TLS 1.0 pseudo-random function, as defined in RFC 2246, Section 5.
**/
function _prf10(_result:Slice<GoByte>, _secret:Slice<GoByte>, _label:Slice<GoByte>, _seed:Slice<GoByte>):Void {
        var _hashSHA1:() -> stdgo.hash.Hash.Hash = stdgo.crypto.sha1.Sha1.new_;
        var _hashMD5:() -> stdgo.hash.Hash.Hash = stdgo.crypto.md5.Md5.new_;
        var _labelAndSeed:Slice<GoUInt8> = new Slice<GoUInt8>(...[for (i in 0 ... ((_label.length + _seed.length : GoInt)).toBasic()) ((0 : GoUInt8))]);
        Go.copy(_labelAndSeed, _label);
        Go.copy(_labelAndSeed.__slice__(_label.length), _seed);
        var __tmp__ = _splitPreMasterSecret(_secret), _s1:Slice<GoUInt8> = __tmp__._0, _s2:Slice<GoUInt8> = __tmp__._1;
        _pHash(_result, _s1, _labelAndSeed, _hashMD5);
        var _result2:Slice<GoUInt8> = new Slice<GoUInt8>(...[for (i in 0 ... ((_result.length : GoInt)).toBasic()) ((0 : GoUInt8))]);
        _pHash(_result2, _s2, _labelAndSeed, _hashSHA1);
        {
            var _i;
            var _b;
            for (_obj in _result2.keyValueIterator()) {
                _i = _obj.key;
                _b = _obj.value;
                _result[_i] = _result[_i] ^ (_b);
            };
        };
    }
/**
    // prf12 implements the TLS 1.2 pseudo-random function, as defined in RFC 5246, Section 5.
**/
function _prf12(_hashFunc:() -> stdgo.hash.Hash.Hash):(_result:Slice<GoByte>, _secret:Slice<GoByte>, _label:Slice<GoByte>, _seed:Slice<GoByte>) -> Void {
        return function(_result:Slice<GoByte>, _secret:Slice<GoByte>, _label:Slice<GoByte>, _seed:Slice<GoByte>):Void {
            var _labelAndSeed:Slice<GoUInt8> = new Slice<GoUInt8>(...[for (i in 0 ... ((_label.length + _seed.length : GoInt)).toBasic()) ((0 : GoUInt8))]);
            Go.copy(_labelAndSeed, _label);
            Go.copy(_labelAndSeed.__slice__(_label.length), _seed);
            _pHash(_result, _secret, _labelAndSeed, _hashFunc);
        };
    }
function _prfAndHashForVersion(_version:GoUInt16, _suite:Pointer<T_cipherSuite>):{ var _0 : (_result:Slice<GoByte>, _secret:Slice<GoByte>, _label:Slice<GoByte>, _seed:Slice<GoByte>) -> Void; var _1 : stdgo.crypto.Crypto.Hash; } {
        if (_version == versionTLS10 || _version == versionTLS11) {
            return { _0 : _prf10, _1 : new stdgo.crypto.Crypto.Hash(((0 : GoUInt))) };
        } else if (_version == versionTLS12) {
            if (_suite.value._flags & _suiteSHA384 != ((0 : GoInt))) {
                return { _0 : _prf12(stdgo.crypto.sha512.Sha512.new384), _1 : stdgo.crypto.Crypto.sha384 };
            };
            return { _0 : _prf12(stdgo.crypto.sha256.Sha256.new_), _1 : stdgo.crypto.Crypto.sha256 };
        } else {
            throw "unknown version";
        };
    }
function _prfForVersion(_version:GoUInt16, _suite:Pointer<T_cipherSuite>):(_result:Slice<GoByte>, _secret:Slice<GoByte>, _label:Slice<GoByte>, _seed:Slice<GoByte>) -> Void {
        var __tmp__ = _prfAndHashForVersion(_version, _suite), _prf:(Slice<GoUInt8>, Slice<GoUInt8>, Slice<GoUInt8>, Slice<GoUInt8>) -> Void = __tmp__._0, _:stdgo.crypto.Crypto.Hash = __tmp__._1;
        return _prf;
    }
/**
    // masterFromPreMasterSecret generates the master secret from the pre-master
    // secret. See RFC 5246, Section 8.1.
**/
function _masterFromPreMasterSecret(_version:GoUInt16, _suite:Pointer<T_cipherSuite>, _preMasterSecret:Slice<GoByte>, _clientRandom:Slice<GoByte>, _serverRandom:Slice<GoByte>):Slice<GoByte> {
        var _seed:Slice<GoUInt8> = new Slice<GoUInt8>(...[for (i in 0 ... ((((0 : GoInt)) : GoInt)).toBasic()) ((0 : GoUInt8))]).setCap(((_clientRandom.length + _serverRandom.length : GoInt)).toBasic());
        _seed = _seed.__append__(..._clientRandom.toArray());
        _seed = _seed.__append__(..._serverRandom.toArray());
        var _masterSecret:Slice<GoUInt8> = new Slice<GoUInt8>(...[for (i in 0 ... ((_masterSecretLength : GoInt)).toBasic()) ((0 : GoUInt8))]);
        _prfForVersion(_version, _suite)(_masterSecret, _preMasterSecret, _masterSecretLabel, _seed);
        return _masterSecret;
    }
/**
    // keysFromMasterSecret generates the connection keys from the master
    // secret, given the lengths of the MAC key, cipher key and IV, as defined in
    // RFC 2246, Section 6.3.
**/
function _keysFromMasterSecret(_version:GoUInt16, _suite:Pointer<T_cipherSuite>, _masterSecret:Slice<GoByte>, _clientRandom:Slice<GoByte>, _serverRandom:Slice<GoByte>, _macLen:GoInt, _keyLen:GoInt, _ivLen:GoInt):{ var _0 : Slice<GoByte>; var _1 : Slice<GoByte>; var _2 : Slice<GoByte>; var _3 : Slice<GoByte>; var _4 : Slice<GoByte>; var _5 : Slice<GoByte>; } {
        var _clientMAC:Slice<GoByte> = new Slice<GoUInt8>().nil(), _serverMAC:Slice<GoByte> = new Slice<GoUInt8>().nil(), _clientKey:Slice<GoByte> = new Slice<GoUInt8>().nil(), _serverKey:Slice<GoByte> = new Slice<GoUInt8>().nil(), _clientIV:Slice<GoByte> = new Slice<GoUInt8>().nil(), _serverIV:Slice<GoByte> = new Slice<GoUInt8>().nil();
        var _seed:Slice<GoUInt8> = new Slice<GoUInt8>(...[for (i in 0 ... ((((0 : GoInt)) : GoInt)).toBasic()) ((0 : GoUInt8))]).setCap(((_serverRandom.length + _clientRandom.length : GoInt)).toBasic());
        _seed = _seed.__append__(..._serverRandom.toArray());
        _seed = _seed.__append__(..._clientRandom.toArray());
        var _n:GoInt = ((2 : GoInt)) * _macLen + ((2 : GoInt)) * _keyLen + ((2 : GoInt)) * _ivLen;
        var _keyMaterial:Slice<GoUInt8> = new Slice<GoUInt8>(...[for (i in 0 ... ((_n : GoInt)).toBasic()) ((0 : GoUInt8))]);
        _prfForVersion(_version, _suite)(_keyMaterial, _masterSecret, _keyExpansionLabel, _seed);
        _clientMAC = _keyMaterial.__slice__(0, _macLen);
        _keyMaterial = _keyMaterial.__slice__(_macLen);
        _serverMAC = _keyMaterial.__slice__(0, _macLen);
        _keyMaterial = _keyMaterial.__slice__(_macLen);
        _clientKey = _keyMaterial.__slice__(0, _keyLen);
        _keyMaterial = _keyMaterial.__slice__(_keyLen);
        _serverKey = _keyMaterial.__slice__(0, _keyLen);
        _keyMaterial = _keyMaterial.__slice__(_keyLen);
        _clientIV = _keyMaterial.__slice__(0, _ivLen);
        _keyMaterial = _keyMaterial.__slice__(_ivLen);
        _serverIV = _keyMaterial.__slice__(0, _ivLen);
        return { _0 : _clientMAC, _1 : _serverMAC, _2 : _clientKey, _3 : _serverKey, _4 : _clientIV, _5 : _serverIV };
    }
function _newFinishedHash(_version:GoUInt16, _cipherSuite:Pointer<T_cipherSuite>):T_finishedHash {
        var _buffer:Slice<GoByte> = new Slice<GoUInt8>().nil();
        if (_version >= versionTLS12) {
            _buffer = new Slice<GoUInt8>();
        };
        var __tmp__ = _prfAndHashForVersion(_version, _cipherSuite), _prf:(Slice<GoUInt8>, Slice<GoUInt8>, Slice<GoUInt8>, Slice<GoUInt8>) -> Void = __tmp__._0, _hash:stdgo.crypto.Crypto.Hash = __tmp__._1;
        if (_hash.__t__ != ((0 : GoUInt))) {
            return new T_finishedHash(_hash.new_(), _hash.new_(), ((null : stdgo.hash.Hash.Hash)), ((null : stdgo.hash.Hash.Hash)), _buffer, _version, _prf).__copy__();
        };
        return new T_finishedHash(stdgo.crypto.sha1.Sha1.new_(), stdgo.crypto.sha1.Sha1.new_(), stdgo.crypto.md5.Md5.new_(), stdgo.crypto.md5.Md5.new_(), _buffer, _version, _prf).__copy__();
    }
/**
    // noExportedKeyingMaterial is used as a value of
    // ConnectionState.ekm when renegotiation is enabled and thus
    // we wish to fail all key-material export requests.
**/
function _noExportedKeyingMaterial(_label:GoString, _context:Slice<GoByte>, _length:GoInt):{ var _0 : Slice<GoByte>; var _1 : Error; } {
        return { _0 : new Slice<GoUInt8>().nil(), _1 : stdgo.errors.Errors.new_("crypto/tls: ExportKeyingMaterial is unavailable when renegotiation is enabled") };
    }
/**
    // ekmFromMasterSecret generates exported keying material as defined in RFC 5705.
**/
function _ekmFromMasterSecret(_version:GoUInt16, _suite:Pointer<T_cipherSuite>, _masterSecret:Slice<GoByte>, _clientRandom:Slice<GoByte>, _serverRandom:Slice<GoByte>):(GoString, Slice<GoByte>, GoInt) -> { var _0 : Slice<GoByte>; var _1 : Error; } {
        return function(_label:GoString, _context:Slice<GoByte>, _length:GoInt):{ var _0 : Slice<GoByte>; var _1 : Error; } {
            if (_label == (("client finished" : GoString)) || _label == (("server finished" : GoString)) || _label == (("master secret" : GoString)) || _label == (("key expansion" : GoString))) {
                return { _0 : new Slice<GoUInt8>().nil(), _1 : stdgo.fmt.Fmt.errorf("crypto/tls: reserved ExportKeyingMaterial label: %s", Go.toInterface(_label)) };
            };
            var _seedLen:GoInt = _serverRandom.length + _clientRandom.length;
            if (_context != null && !_context.isNil()) {
                _seedLen = _seedLen + (((2 : GoInt)) + _context.length);
            };
            var _seed:Slice<GoUInt8> = new Slice<GoUInt8>(...[for (i in 0 ... ((((0 : GoInt)) : GoInt)).toBasic()) ((0 : GoUInt8))]).setCap(((_seedLen : GoInt)).toBasic());
            _seed = _seed.__append__(..._clientRandom.toArray());
            _seed = _seed.__append__(..._serverRandom.toArray());
            if (_context != null && !_context.isNil()) {
                if (_context.length >= (((1 : GoUnTypedInt)) << ((16 : GoUnTypedInt)))) {
                    return { _0 : new Slice<GoUInt8>().nil(), _1 : stdgo.fmt.Fmt.errorf("crypto/tls: ExportKeyingMaterial context too long") };
                };
                _seed = _seed.__append__((((_context.length >> ((8 : GoUnTypedInt))) : GoByte)), ((_context.length : GoByte)));
                _seed = _seed.__append__(..._context.toArray());
            };
            var _keyMaterial:Slice<GoUInt8> = new Slice<GoUInt8>(...[for (i in 0 ... ((_length : GoInt)).toBasic()) ((0 : GoUInt8))]);
            _prfForVersion(_version, _suite)(_keyMaterial, _masterSecret, ((_label : Slice<GoByte>)), _seed);
            return { _0 : _keyMaterial, _1 : ((null : stdgo.Error)) };
        };
    }
/**
    // Server returns a new TLS server side connection
    // using conn as the underlying transport.
    // The configuration config must be non-nil and must include
    // at least one certificate or else set GetCertificate.
**/
function server(_conn:stdgo.net.Net.Conn, _config:Pointer<Config>):Pointer<Conn> {
        var _c:Pointer<Conn> = Go.pointer((({ _conn : _conn, _config : _config, _isClient : false, _handshakeFn : null, _handshakeStatus : 0, _handshakeMutex : new stdgo.sync.Sync.Mutex(), _handshakeErr : ((null : stdgo.Error)), _vers : 0, _haveVers : false, _handshakes : 0, _didResume : false, _cipherSuite : 0, _ocspResponse : new Slice<GoUInt8>().nil(), _scts : new Slice<Slice<GoUInt8>>().nil(), _peerCertificates : new Slice<Pointer<stdgo.crypto.x509.X509.Certificate>>().nil(), _verifiedChains : new Slice<Slice<Pointer<stdgo.crypto.x509.X509.Certificate>>>().nil(), _serverName : "", _secureRenegotiation : false, _ekm : null, _resumptionSecret : new Slice<GoUInt8>().nil(), _ticketKeys : new Slice<T_ticketKey>().nil(), _clientFinishedIsFirst : false, _closeNotifyErr : ((null : stdgo.Error)), _closeNotifySent : false, _clientFinished : new GoArray<GoUInt8>(...[for (i in 0 ... 12) ((0 : GoUInt8))]), _serverFinished : new GoArray<GoUInt8>(...[for (i in 0 ... 12) ((0 : GoUInt8))]), _clientProtocol : "", _in : new T_halfConn(), _out : new T_halfConn(), _rawInput : new stdgo.bytes.Bytes.Buffer(), _input : new stdgo.bytes.Bytes.Reader(), _hand : new stdgo.bytes.Bytes.Buffer(), _buffering : false, _sendBuf : new Slice<GoUInt8>().nil(), _bytesSent : 0, _packetsSent : 0, _retryCount : 0, _activeCall : 0, _tmp : new GoArray<GoUInt8>(...[for (i in 0 ... 16) ((0 : GoUInt8))]) } : Conn)));
        _c.value._handshakeFn = _c.value._serverHandshake;
        return _c;
    }
/**
    // Client returns a new TLS client side connection
    // using conn as the underlying transport.
    // The config cannot be nil: users must set either ServerName or
    // InsecureSkipVerify in the config.
**/
function client(_conn:stdgo.net.Net.Conn, _config:Pointer<Config>):Pointer<Conn> {
        var _c:Pointer<Conn> = Go.pointer((({ _conn : _conn, _config : _config, _isClient : true, _handshakeFn : null, _handshakeStatus : 0, _handshakeMutex : new stdgo.sync.Sync.Mutex(), _handshakeErr : ((null : stdgo.Error)), _vers : 0, _haveVers : false, _handshakes : 0, _didResume : false, _cipherSuite : 0, _ocspResponse : new Slice<GoUInt8>().nil(), _scts : new Slice<Slice<GoUInt8>>().nil(), _peerCertificates : new Slice<Pointer<stdgo.crypto.x509.X509.Certificate>>().nil(), _verifiedChains : new Slice<Slice<Pointer<stdgo.crypto.x509.X509.Certificate>>>().nil(), _serverName : "", _secureRenegotiation : false, _ekm : null, _resumptionSecret : new Slice<GoUInt8>().nil(), _ticketKeys : new Slice<T_ticketKey>().nil(), _clientFinishedIsFirst : false, _closeNotifyErr : ((null : stdgo.Error)), _closeNotifySent : false, _clientFinished : new GoArray<GoUInt8>(...[for (i in 0 ... 12) ((0 : GoUInt8))]), _serverFinished : new GoArray<GoUInt8>(...[for (i in 0 ... 12) ((0 : GoUInt8))]), _clientProtocol : "", _in : new T_halfConn(), _out : new T_halfConn(), _rawInput : new stdgo.bytes.Bytes.Buffer(), _input : new stdgo.bytes.Bytes.Reader(), _hand : new stdgo.bytes.Bytes.Buffer(), _buffering : false, _sendBuf : new Slice<GoUInt8>().nil(), _bytesSent : 0, _packetsSent : 0, _retryCount : 0, _activeCall : 0, _tmp : new GoArray<GoUInt8>(...[for (i in 0 ... 16) ((0 : GoUInt8))]) } : Conn)));
        _c.value._handshakeFn = _c.value._clientHandshake;
        return _c;
    }
/**
    // NewListener creates a Listener which accepts connections from an inner
    // Listener and wraps each connection with Server.
    // The configuration config must be non-nil and must include
    // at least one certificate or else set GetCertificate.
**/
function newListener(_inner:stdgo.net.Net.Listener, _config:Pointer<Config>):stdgo.net.Net.Listener {
        var _l:Pointer<T_listener> = Go.pointer(new T_listener());
        _l.value.listener = _inner;
        _l.value._config = _config;
        return _l.value;
    }
/**
    // Listen creates a TLS listener accepting connections on the
    // given network address using net.Listen.
    // The configuration config must be non-nil and must include
    // at least one certificate or else set GetCertificate.
**/
function listen(_network:GoString, _laddr:GoString, _config:Pointer<Config>):{ var _0 : stdgo.net.Net.Listener; var _1 : Error; } {
        if (_config == null || _config.isNil() || _config.value.certificates.length == ((0 : GoInt)) && _config.value.getCertificate == null && _config.value.getConfigForClient == null) {
            return { _0 : ((null : stdgo.net.Net.Listener)), _1 : stdgo.errors.Errors.new_("tls: neither Certificates, GetCertificate, nor GetConfigForClient set in Config") };
        };
        var __tmp__ = stdgo.net.Net.listen(_network, _laddr), _l:stdgo.net.Net.Listener = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : ((null : stdgo.net.Net.Listener)), _1 : _err };
        };
        return { _0 : newListener(_l, _config), _1 : ((null : stdgo.Error)) };
    }
/**
    // DialWithDialer connects to the given network address using dialer.Dial and
    // then initiates a TLS handshake, returning the resulting TLS connection. Any
    // timeout or deadline given in the dialer apply to connection and TLS
    // handshake as a whole.
    //
    // DialWithDialer interprets a nil configuration as equivalent to the zero
    // configuration; see the documentation of Config for the defaults.
    //
    // DialWithDialer uses context.Background internally; to specify the context,
    // use Dialer.DialContext with NetDialer set to the desired dialer.
**/
function dialWithDialer(_dialer:Pointer<stdgo.net.Net.Dialer>, _network:GoString, _addr:GoString, _config:Pointer<Config>):{ var _0 : Pointer<Conn>; var _1 : Error; } {
        return _dial(stdgo.context.Context.background(), _dialer, _network, _addr, _config);
    }
function _dial(_ctx:stdgo.context.Context.Context, _netDialer:Pointer<stdgo.net.Net.Dialer>, _network:GoString, _addr:GoString, _config:Pointer<Config>):{ var _0 : Pointer<Conn>; var _1 : Error; } {
        var recover_exception:Error = null;
        var deferstack:Array<Void -> Void> = [];
        if (_netDialer.value.timeout.__t__ != ((0 : GoInt64))) {
            var _cancel:stdgo.context.Context.CancelFunc = new stdgo.context.Context.CancelFunc();
            {
                var __tmp__ = stdgo.context.Context.withTimeout(_ctx, _netDialer.value.timeout);
                _ctx = __tmp__._0;
                _cancel = __tmp__._1.__copy__();
            };
            deferstack.unshift(() -> _cancel.__t__());
        };
        if (!_netDialer.value.deadline.isZero()) {
            var _cancel:stdgo.context.Context.CancelFunc = new stdgo.context.Context.CancelFunc();
            {
                var __tmp__ = stdgo.context.Context.withDeadline(_ctx, _netDialer.value.deadline.__copy__());
                _ctx = __tmp__._0;
                _cancel = __tmp__._1.__copy__();
            };
            deferstack.unshift(() -> _cancel.__t__());
        };
        try {
            var __tmp__ = _netDialer.value.dialContext(_ctx, _network, _addr), _rawConn:stdgo.net.Net.Conn = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                {
                    for (defer in deferstack) {
                        defer();
                    };
                    return { _0 : new Pointer<Conn>().nil(), _1 : _err };
                };
            };
            var _colonPos:GoInt = stdgo.strings.Strings.lastIndex(_addr, ":");
            if (_colonPos == -((1 : GoUnTypedInt))) {
                _colonPos = _addr.length;
            };
            var _hostname:GoString = _addr.__slice__(0, _colonPos);
            if (_config == null || _config.isNil()) {
                _config = _defaultConfig();
            };
            if (_config.value.serverName == (("" : GoString))) {
                var _c:Pointer<Config> = _config.value.clone();
                _c.value.serverName = _hostname;
                _config = _c;
            };
            var _conn:Pointer<Conn> = client(_rawConn, _config);
            {
                var _err:stdgo.Error = _conn.value.handshakeContext(_ctx);
                if (_err != null) {
                    _rawConn.close();
                    {
                        for (defer in deferstack) {
                            defer();
                        };
                        return { _0 : new Pointer<Conn>().nil(), _1 : _err };
                    };
                };
            };
            {
                for (defer in deferstack) {
                    defer();
                };
                return { _0 : _conn, _1 : ((null : stdgo.Error)) };
            };
            for (defer in deferstack) {
                defer();
            };
        } catch(e) {
            recover_exception = stdgo.runtime.Runtime.newRuntime(e.message);
            {
                for (defer in deferstack) {
                    defer();
                };
                if (recover_exception != null) throw recover_exception;
                return { _0 : new Pointer<Conn>().nil(), _1 : ((null : stdgo.Error)) };
            };
        };
    }
/**
    // Dial connects to the given network address using net.Dial
    // and then initiates a TLS handshake, returning the resulting
    // TLS connection.
    // Dial interprets a nil configuration as equivalent to
    // the zero configuration; see the documentation of Config
    // for the defaults.
**/
function dial(_network:GoString, _addr:GoString, _config:Pointer<Config>):{ var _0 : Pointer<Conn>; var _1 : Error; } {
        return dialWithDialer(Go.pointer(new stdgo.net.Net.Dialer()), _network, _addr, _config);
    }
/**
    // LoadX509KeyPair reads and parses a public/private key pair from a pair
    // of files. The files must contain PEM encoded data. The certificate file
    // may contain intermediate certificates following the leaf certificate to
    // form a certificate chain. On successful return, Certificate.Leaf will
    // be nil because the parsed form of the certificate is not retained.
**/
function loadX509KeyPair(_certFile:GoString, _keyFile:GoString):{ var _0 : Certificate; var _1 : Error; } {
        var __tmp__ = stdgo.os.Os.readFile(_certFile), _certPEMBlock:Slice<GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : new Certificate().__copy__(), _1 : _err };
        };
        var __tmp__ = stdgo.os.Os.readFile(_keyFile), _keyPEMBlock:Slice<GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : new Certificate().__copy__(), _1 : _err };
        };
        return x509keyPair(_certPEMBlock, _keyPEMBlock);
    }
/**
    // X509KeyPair parses a public/private key pair from a pair of
    // PEM encoded data. On successful return, Certificate.Leaf will be nil because
    // the parsed form of the certificate is not retained.
**/
function x509keyPair(_certPEMBlock:Slice<GoByte>, _keyPEMBlock:Slice<GoByte>):{ var _0 : Certificate; var _1 : Error; } {
        var _fail:stdgo.Error -> { var _0 : Certificate; var _1 : stdgo.Error; } = function(_err:Error):{ var _0 : Certificate; var _1 : Error; } {
            return { _0 : new Certificate().__copy__(), _1 : _err };
        };
        var _cert:Certificate = new Certificate();
        var _skippedBlockTypes:Slice<GoString> = new Slice<GoString>().nil();
        while (true) {
            var _certDERBlock:Pointer<stdgo.encoding.pem.Pem.Block> = new Pointer<stdgo.encoding.pem.Pem.Block>().nil();
            {
                var __tmp__ = stdgo.encoding.pem.Pem.decode(_certPEMBlock);
                _certDERBlock = __tmp__._0;
                _certPEMBlock = __tmp__._1;
            };
            if (_certDERBlock == null || _certDERBlock.isNil()) {
                break;
            };
            if (_certDERBlock.value.type == (("CERTIFICATE" : GoString))) {
                _cert.certificate = _cert.certificate.__append__(_certDERBlock.value.bytes);
            } else {
                _skippedBlockTypes = _skippedBlockTypes.__append__(_certDERBlock.value.type);
            };
        };
        if (_cert.certificate.length == ((0 : GoInt))) {
            if (_skippedBlockTypes.length == ((0 : GoInt))) {
                return _fail(stdgo.errors.Errors.new_("tls: failed to find any PEM data in certificate input"));
            };
            if (_skippedBlockTypes.length == ((1 : GoInt)) && stdgo.strings.Strings.hasSuffix(_skippedBlockTypes[((0 : GoInt))], "PRIVATE KEY")) {
                return _fail(stdgo.errors.Errors.new_("tls: failed to find certificate PEM data in certificate input, but did find a private key; PEM inputs may have been switched"));
            };
            return _fail(stdgo.fmt.Fmt.errorf("tls: failed to find \"CERTIFICATE\" PEM block in certificate input after skipping PEM blocks of the following types: %v", Go.toInterface(_skippedBlockTypes)));
        };
        _skippedBlockTypes = _skippedBlockTypes.__slice__(0, ((0 : GoInt)));
        var _keyDERBlock:Pointer<stdgo.encoding.pem.Pem.Block> = new Pointer<stdgo.encoding.pem.Pem.Block>().nil();
        while (true) {
            {
                var __tmp__ = stdgo.encoding.pem.Pem.decode(_keyPEMBlock);
                _keyDERBlock = __tmp__._0;
                _keyPEMBlock = __tmp__._1;
            };
            if (_keyDERBlock == null || _keyDERBlock.isNil()) {
                if (_skippedBlockTypes.length == ((0 : GoInt))) {
                    return _fail(stdgo.errors.Errors.new_("tls: failed to find any PEM data in key input"));
                };
                if (_skippedBlockTypes.length == ((1 : GoInt)) && _skippedBlockTypes[((0 : GoInt))] == (("CERTIFICATE" : GoString))) {
                    return _fail(stdgo.errors.Errors.new_("tls: found a certificate rather than a key in the PEM for the private key"));
                };
                return _fail(stdgo.fmt.Fmt.errorf("tls: failed to find PEM block with type ending in \"PRIVATE KEY\" in key input after skipping PEM blocks of the following types: %v", Go.toInterface(_skippedBlockTypes)));
            };
            if (_keyDERBlock.value.type == (("PRIVATE KEY" : GoString)) || stdgo.strings.Strings.hasSuffix(_keyDERBlock.value.type, " PRIVATE KEY")) {
                break;
            };
            _skippedBlockTypes = _skippedBlockTypes.__append__(_keyDERBlock.value.type);
        };
        var __tmp__ = stdgo.crypto.x509.X509.parseCertificate(_cert.certificate[((0 : GoInt))]), _x509Cert:Pointer<stdgo.crypto.x509.X509.Certificate> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return _fail(_err);
        };
        {
            var __tmp__ = _parsePrivateKey(_keyDERBlock.value.bytes);
            _cert.privateKey = Go.toInterface(__tmp__._0);
            _err = __tmp__._1;
        };
        if (_err != null) {
            return _fail(_err);
        };
        if (Go.assertable(((_x509Cert.value.publicKey : Pointer<stdgo.crypto.rsa.Rsa.PublicKey>)))) {
            var _pub:Pointer<stdgo.crypto.rsa.Rsa.PublicKey> = _x509Cert.value.publicKey == null ? null : _x509Cert.value.publicKey.__underlying__() == null ? null : _x509Cert.value.publicKey == null ? null : _x509Cert.value.publicKey.__underlying__().value;
            var __tmp__ = try {
                { value : ((_cert.privateKey.value : Pointer<stdgo.crypto.rsa.Rsa.PrivateKey>)), ok : true };
            } catch(_) {
                { value : new Pointer<stdgo.crypto.rsa.Rsa.PrivateKey>().nil(), ok : false };
            }, _priv = __tmp__.value, _ok = __tmp__.ok;
            if (!_ok) {
                return _fail(stdgo.errors.Errors.new_("tls: private key type does not match public key type"));
            };
            if (_pub.value.n.value.cmp(_priv.value.publicKey.n) != ((0 : GoInt))) {
                return _fail(stdgo.errors.Errors.new_("tls: private key does not match public key"));
            };
        } else if (Go.assertable(((_x509Cert.value.publicKey : Pointer<stdgo.crypto.ecdsa.Ecdsa.PublicKey>)))) {
            var _pub:Pointer<stdgo.crypto.ecdsa.Ecdsa.PublicKey> = _x509Cert.value.publicKey == null ? null : _x509Cert.value.publicKey.__underlying__() == null ? null : _x509Cert.value.publicKey == null ? null : _x509Cert.value.publicKey.__underlying__().value;
            var __tmp__ = try {
                { value : ((_cert.privateKey.value : Pointer<stdgo.crypto.ecdsa.Ecdsa.PrivateKey>)), ok : true };
            } catch(_) {
                { value : new Pointer<stdgo.crypto.ecdsa.Ecdsa.PrivateKey>().nil(), ok : false };
            }, _priv = __tmp__.value, _ok = __tmp__.ok;
            if (!_ok) {
                return _fail(stdgo.errors.Errors.new_("tls: private key type does not match public key type"));
            };
            if (_pub.value.x.value.cmp(_priv.value.publicKey.x) != ((0 : GoInt)) || _pub.value.y.value.cmp(_priv.value.publicKey.y) != ((0 : GoInt))) {
                return _fail(stdgo.errors.Errors.new_("tls: private key does not match public key"));
            };
        } else if (Go.assertable(((_x509Cert.value.publicKey : stdgo.crypto.ed25519.Ed25519.PublicKey)))) {
            var _pub:stdgo.crypto.ed25519.Ed25519.PublicKey = _x509Cert.value.publicKey == null ? null : _x509Cert.value.publicKey.__underlying__() == null ? null : _x509Cert.value.publicKey == null ? null : _x509Cert.value.publicKey.__underlying__().value;
            var __tmp__ = try {
                { value : new stdgo.crypto.ed25519.Ed25519.PrivateKey(((_cert.privateKey.value : stdgo.crypto.Crypto.PrivateKey))), ok : true };
            } catch(_) {
                { value : new stdgo.crypto.ed25519.Ed25519.PrivateKey(), ok : false };
            }, _priv = __tmp__.value, _ok = __tmp__.ok;
            if (!_ok) {
                return _fail(stdgo.errors.Errors.new_("tls: private key type does not match public key type"));
            };
            if (!stdgo.bytes.Bytes.equal(new stdgo.crypto.ed25519.Ed25519.PublicKey(((_priv.public_().value : stdgo.crypto.Crypto.PublicKey))).__copy__().__t__, _pub.__copy__().__t__)) {
                return _fail(stdgo.errors.Errors.new_("tls: private key does not match public key"));
            };
        } else {
            var _pub:AnyInterface = _x509Cert.value.publicKey == null ? null : _x509Cert.value.publicKey.__underlying__();
            return _fail(stdgo.errors.Errors.new_("tls: unknown public key algorithm"));
        };
        return { _0 : _cert.__copy__(), _1 : ((null : stdgo.Error)) };
    }
/**
    // Attempt to parse the given private key DER block. OpenSSL 0.9.8 generates
    // PKCS #1 private keys by default, while OpenSSL 1.0.0 generates PKCS #8 keys.
    // OpenSSL ecparam generates SEC1 EC private keys for ECDSA. We try all three.
**/
function _parsePrivateKey(_der:Slice<GoByte>):{ var _0 : stdgo.crypto.Crypto.PrivateKey; var _1 : Error; } {
        {
            var __tmp__ = stdgo.crypto.x509.X509.parsePKCS1PrivateKey(_der), _key:Pointer<stdgo.crypto.rsa.Rsa.PrivateKey> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err == null) {
                return { _0 : Go.toInterface(_key), _1 : ((null : stdgo.Error)) };
            };
        };
        {
            var __tmp__ = stdgo.crypto.x509.X509.parsePKCS8PrivateKey(_der), _key:AnyInterface = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err == null) {
                if (Go.assertable(((_key : Pointer<stdgo.crypto.rsa.Rsa.PrivateKey>))) || Go.assertable(((_key : Pointer<stdgo.crypto.ecdsa.Ecdsa.PrivateKey>))) || Go.assertable(((_key : stdgo.crypto.ed25519.Ed25519.PrivateKey)))) {
                    var _key:AnyInterface = _key == null ? null : _key.__underlying__();
                    return { _0 : Go.toInterface(_key), _1 : ((null : stdgo.Error)) };
                } else {
                    var _key:AnyInterface = _key == null ? null : _key.__underlying__();
                    return { _0 : ((null : stdgo.crypto.Crypto.PrivateKey)), _1 : stdgo.errors.Errors.new_("tls: found unknown private key type in PKCS#8 wrapping") };
                };
            };
        };
        {
            var __tmp__ = stdgo.crypto.x509.X509.parseECPrivateKey(_der), _key:Pointer<stdgo.crypto.ecdsa.Ecdsa.PrivateKey> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err == null) {
                return { _0 : Go.toInterface(_key), _1 : ((null : stdgo.Error)) };
            };
        };
        return { _0 : ((null : stdgo.crypto.Crypto.PrivateKey)), _1 : stdgo.errors.Errors.new_("tls: failed to parse private key") };
    }
class T_alert_extension_fields {
    public function toString(__tmp__):GoString return __tmp__.toString();
    public function error(__tmp__):GoString return __tmp__.error();
}
class T_cipherSuiteTLS13_extension_fields {
    public function _expandLabel(__tmp__, _secret:Slice<GoByte>, _label:GoString, _context:Slice<GoByte>, _length:GoInt):Slice<GoByte> return __tmp__._expandLabel(_secret, _label, _context, _length);
    public function _deriveSecret(__tmp__, _secret:Slice<GoByte>, _label:GoString, _transcript:stdgo.hash.Hash.Hash):Slice<GoByte> return __tmp__._deriveSecret(_secret, _label, _transcript);
    public function _extract(__tmp__, _newSecret:Slice<GoByte>, _currentSecret:Slice<GoByte>):Slice<GoByte> return __tmp__._extract(_newSecret, _currentSecret);
    public function _nextTrafficSecret(__tmp__, _trafficSecret:Slice<GoByte>):Slice<GoByte> return __tmp__._nextTrafficSecret(_trafficSecret);
    public function _trafficKey(__tmp__, _trafficSecret:Slice<GoByte>):{ var _0 : Slice<GoByte>; var _1 : Slice<GoByte>; } return __tmp__._trafficKey(_trafficSecret);
    public function _finishedHash(__tmp__, _baseKey:Slice<GoByte>, _transcript:stdgo.hash.Hash.Hash):Slice<GoByte> return __tmp__._finishedHash(_baseKey, _transcript);
    public function _exportKeyingMaterial(__tmp__, _masterSecret:Slice<GoByte>, _transcript:stdgo.hash.Hash.Hash):(GoString, Slice<GoByte>, GoInt) -> { var _0 : Slice<GoByte>; var _1 : Error; } return __tmp__._exportKeyingMaterial(_masterSecret, _transcript);
}
class T_prefixNonceAEAD_extension_fields {
    public function nonceSize(__tmp__):GoInt return __tmp__.nonceSize();
    public function overhead(__tmp__):GoInt return __tmp__.overhead();
    public function _explicitNonceLen(__tmp__):GoInt return __tmp__._explicitNonceLen();
    public function seal(__tmp__, _out:Slice<GoByte>, _nonce:Slice<GoByte>, _plaintext:Slice<GoByte>, _additionalData:Slice<GoByte>):Slice<GoByte> return __tmp__.seal(_out, _nonce, _plaintext, _additionalData);
    public function open(__tmp__, _out:Slice<GoByte>, _nonce:Slice<GoByte>, _ciphertext:Slice<GoByte>, _additionalData:Slice<GoByte>):{ var _0 : Slice<GoByte>; var _1 : Error; } return __tmp__.open(_out, _nonce, _ciphertext, _additionalData);
}
class T_xorNonceAEAD_extension_fields {
    public function nonceSize(__tmp__):GoInt return __tmp__.nonceSize();
    public function overhead(__tmp__):GoInt return __tmp__.overhead();
    public function _explicitNonceLen(__tmp__):GoInt return __tmp__._explicitNonceLen();
    public function seal(__tmp__, _out:Slice<GoByte>, _nonce:Slice<GoByte>, _plaintext:Slice<GoByte>, _additionalData:Slice<GoByte>):Slice<GoByte> return __tmp__.seal(_out, _nonce, _plaintext, _additionalData);
    public function open(__tmp__, _out:Slice<GoByte>, _nonce:Slice<GoByte>, _ciphertext:Slice<GoByte>, _additionalData:Slice<GoByte>):{ var _0 : Slice<GoByte>; var _1 : Error; } return __tmp__.open(_out, _nonce, _ciphertext, _additionalData);
}
class T_cthWrapper_extension_fields {
    public function size(__tmp__):GoInt return __tmp__.size();
    public function blockSize(__tmp__):GoInt return __tmp__.blockSize();
    public function reset(__tmp__):Void __tmp__.reset();
    public function write(__tmp__, _p:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } return __tmp__.write(_p);
    public function sum(__tmp__, _b:Slice<GoByte>):Slice<GoByte> return __tmp__.sum(_b);
}
class CurveID_extension_fields {
    public function toString(__tmp__):GoString return __tmp__.toString();
}
class ConnectionState_extension_fields {
    public function exportKeyingMaterial(__tmp__, _label:GoString, _context:Slice<GoByte>, _length:GoInt):{ var _0 : Slice<GoByte>; var _1 : Error; } return __tmp__.exportKeyingMaterial(_label, _context, _length);
}
class ClientAuthType_extension_fields {
    public function toString(__tmp__):GoString return __tmp__.toString();
}
class SignatureScheme_extension_fields {
    public function toString(__tmp__):GoString return __tmp__.toString();
}
class ClientHelloInfo_extension_fields {
    public function context(__tmp__):stdgo.context.Context.Context return __tmp__.context();
    public function supportsCertificate(__tmp__, _c:Pointer<Certificate>):Error return __tmp__.supportsCertificate(_c);
}
class CertificateRequestInfo_extension_fields {
    public function context(__tmp__):stdgo.context.Context.Context return __tmp__.context();
    public function supportsCertificate(__tmp__, _c:Pointer<Certificate>):Error return __tmp__.supportsCertificate(_c);
}
class Config_extension_fields {
    public function _ticketKeyFromBytes(__tmp__, _b:GoArray<GoByte>):T_ticketKey return __tmp__._ticketKeyFromBytes(_b);
    public function clone(__tmp__):Pointer<Config> return __tmp__.clone();
    public function _initLegacySessionTicketKeyRLocked(__tmp__):Void __tmp__._initLegacySessionTicketKeyRLocked();
    public function _ticketKeys(__tmp__, _configForClient:Pointer<Config>):Slice<T_ticketKey> return __tmp__._ticketKeys(_configForClient);
    public function setSessionTicketKeys(__tmp__, _keys:Slice<GoArray<GoByte>>):Void __tmp__.setSessionTicketKeys(_keys);
    public function _rand(__tmp__):stdgo.io.Io.Reader return __tmp__._rand();
    public function _time(__tmp__):stdgo.time.Time.Time return __tmp__._time();
    public function _cipherSuites(__tmp__):Slice<GoUInt16> return __tmp__._cipherSuites();
    public function _supportedVersions(__tmp__):Slice<GoUInt16> return __tmp__._supportedVersions();
    public function _maxSupportedVersion(__tmp__):GoUInt16 return __tmp__._maxSupportedVersion();
    public function _curvePreferences(__tmp__):Slice<CurveID> return __tmp__._curvePreferences();
    public function _supportsCurve(__tmp__, _curve:CurveID):Bool return __tmp__._supportsCurve(_curve);
    public function _mutualVersion(__tmp__, _peerVersions:Slice<GoUInt16>):{ var _0 : GoUInt16; var _1 : Bool; } return __tmp__._mutualVersion(_peerVersions);
    public function _getCertificate(__tmp__, _clientHello:Pointer<ClientHelloInfo>):{ var _0 : Pointer<Certificate>; var _1 : Error; } return __tmp__._getCertificate(_clientHello);
    public function buildNameToCertificate(__tmp__):Void __tmp__.buildNameToCertificate();
    public function _writeKeyLog(__tmp__, _label:GoString, _clientRandom:Slice<GoByte>, _secret:Slice<GoByte>):Error return __tmp__._writeKeyLog(_label, _clientRandom, _secret);
}
class Certificate_extension_fields {
    public function _leaf(__tmp__):{ var _0 : Pointer<stdgo.crypto.x509.X509.Certificate>; var _1 : Error; } return __tmp__._leaf();
}
class T_lruSessionCache_extension_fields {
    public function put(__tmp__, _sessionKey:GoString, _cs:Pointer<ClientSessionState>):Void __tmp__.put(_sessionKey, _cs);
    public function get(__tmp__, _sessionKey:GoString):{ var _0 : Pointer<ClientSessionState>; var _1 : Bool; } return __tmp__.get(_sessionKey);
}
class Conn_extension_fields {
    public function localAddr(__tmp__):stdgo.net.Net.Addr return __tmp__.localAddr();
    public function remoteAddr(__tmp__):stdgo.net.Net.Addr return __tmp__.remoteAddr();
    public function setDeadline(__tmp__, _t:stdgo.time.Time.Time):Error return __tmp__.setDeadline(_t);
    public function setReadDeadline(__tmp__, _t:stdgo.time.Time.Time):Error return __tmp__.setReadDeadline(_t);
    public function setWriteDeadline(__tmp__, _t:stdgo.time.Time.Time):Error return __tmp__.setWriteDeadline(_t);
    public function _newRecordHeaderError(__tmp__, _conn:stdgo.net.Net.Conn, _msg:GoString):RecordHeaderError return __tmp__._newRecordHeaderError(_conn, _msg);
    public function _readRecord(__tmp__):Error return __tmp__._readRecord();
    public function _readChangeCipherSpec(__tmp__):Error return __tmp__._readChangeCipherSpec();
    public function _readRecordOrCCS(__tmp__, _expectChangeCipherSpec:Bool):Error return __tmp__._readRecordOrCCS(_expectChangeCipherSpec);
    public function _retryReadRecord(__tmp__, _expectChangeCipherSpec:Bool):Error return __tmp__._retryReadRecord(_expectChangeCipherSpec);
    public function _readFromUntil(__tmp__, _r:stdgo.io.Io.Reader, _n:GoInt):Error return __tmp__._readFromUntil(_r, _n);
    public function _sendAlertLocked(__tmp__, _err:T_alert):Error return __tmp__._sendAlertLocked(_err);
    public function _sendAlert(__tmp__, _err:T_alert):Error return __tmp__._sendAlert(_err);
    public function _maxPayloadSizeForWrite(__tmp__, _typ:T_recordType):GoInt return __tmp__._maxPayloadSizeForWrite(_typ);
    public function _write(__tmp__, _data:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } return __tmp__._write(_data);
    public function _flush(__tmp__):{ var _0 : GoInt; var _1 : Error; } return __tmp__._flush();
    public function _writeRecordLocked(__tmp__, _typ:T_recordType, _data:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } return __tmp__._writeRecordLocked(_typ, _data);
    public function _writeRecord(__tmp__, _typ:T_recordType, _data:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } return __tmp__._writeRecord(_typ, _data);
    public function _readHandshake(__tmp__):{ var _0 : AnyInterface; var _1 : Error; } return __tmp__._readHandshake();
    public function write(__tmp__, _b:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } return __tmp__.write(_b);
    public function _handleRenegotiation(__tmp__):Error return __tmp__._handleRenegotiation();
    public function _handlePostHandshakeMessage(__tmp__):Error return __tmp__._handlePostHandshakeMessage();
    public function _handleKeyUpdate(__tmp__, _keyUpdate:Pointer<T_keyUpdateMsg>):Error return __tmp__._handleKeyUpdate(_keyUpdate);
    public function read(__tmp__, _b:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } return __tmp__.read(_b);
    public function close(__tmp__):Error return __tmp__.close();
    public function closeWrite(__tmp__):Error return __tmp__.closeWrite();
    public function _closeNotify(__tmp__):Error return __tmp__._closeNotify();
    public function handshake(__tmp__):Error return __tmp__.handshake();
    public function handshakeContext(__tmp__, _ctx:stdgo.context.Context.Context):Error return __tmp__.handshakeContext(_ctx);
    public function _handshakeContext(__tmp__, _ctx:stdgo.context.Context.Context):Error return __tmp__._handshakeContext(_ctx);
    public function connectionState(__tmp__):ConnectionState return __tmp__.connectionState();
    public function _connectionStateLocked(__tmp__):ConnectionState return __tmp__._connectionStateLocked();
    public function ocspresponse(__tmp__):Slice<GoByte> return __tmp__.ocspresponse();
    public function verifyHostname(__tmp__, _host:GoString):Error return __tmp__.verifyHostname(_host);
    public function _handshakeComplete(__tmp__):Bool return __tmp__._handshakeComplete();
    public function _makeClientHello(__tmp__):{ var _0 : Pointer<T_clientHelloMsg>; var _1 : T_ecdheParameters; var _2 : Error; } return __tmp__._makeClientHello();
    public function _clientHandshake(__tmp__, _ctx:stdgo.context.Context.Context):Error return __tmp__._clientHandshake(_ctx);
    public function _loadSession(__tmp__, _hello:Pointer<T_clientHelloMsg>):{ var _0 : GoString; var _1 : Pointer<ClientSessionState>; var _2 : Slice<GoByte>; var _3 : Slice<GoByte>; } return __tmp__._loadSession(_hello);
    public function _pickTLSVersion(__tmp__, _serverHello:Pointer<T_serverHelloMsg>):Error return __tmp__._pickTLSVersion(_serverHello);
    public function _verifyServerCertificate(__tmp__, _certificates:Slice<Slice<GoByte>>):Error return __tmp__._verifyServerCertificate(_certificates);
    public function _getClientCertificate(__tmp__, _cri:Pointer<CertificateRequestInfo>):{ var _0 : Pointer<Certificate>; var _1 : Error; } return __tmp__._getClientCertificate(_cri);
    public function _handleNewSessionTicket(__tmp__, _msg:Pointer<T_newSessionTicketMsgTLS13>):Error return __tmp__._handleNewSessionTicket(_msg);
    public function _serverHandshake(__tmp__, _ctx:stdgo.context.Context.Context):Error return __tmp__._serverHandshake(_ctx);
    public function _readClientHello(__tmp__, _ctx:stdgo.context.Context.Context):{ var _0 : Pointer<T_clientHelloMsg>; var _1 : Error; } return __tmp__._readClientHello(_ctx);
    public function _processCertsFromClient(__tmp__, _certificate:Certificate):Error return __tmp__._processCertsFromClient(_certificate);
    public function _encryptTicket(__tmp__, _state:Slice<GoByte>):{ var _0 : Slice<GoByte>; var _1 : Error; } return __tmp__._encryptTicket(_state);
    public function _decryptTicket(__tmp__, _encrypted:Slice<GoByte>):{ var _0 : Slice<GoByte>; var _1 : Bool; } return __tmp__._decryptTicket(_encrypted);
}
class T_halfConn_extension_fields {
    public function _setErrorLocked(__tmp__, _err:Error):Error return __tmp__._setErrorLocked(_err);
    public function _prepareCipherSpec(__tmp__, _version:GoUInt16, _cipher:AnyInterface, _mac:stdgo.hash.Hash.Hash):Void __tmp__._prepareCipherSpec(_version, _cipher, _mac);
    public function _changeCipherSpec(__tmp__):Error return __tmp__._changeCipherSpec();
    public function _setTrafficSecret(__tmp__, _suite:Pointer<T_cipherSuiteTLS13>, _secret:Slice<GoByte>):Void __tmp__._setTrafficSecret(_suite, _secret);
    public function _incSeq(__tmp__):Void __tmp__._incSeq();
    public function _explicitNonceLen(__tmp__):GoInt return __tmp__._explicitNonceLen();
    public function _decrypt(__tmp__, _record:Slice<GoByte>):{ var _0 : Slice<GoByte>; var _1 : T_recordType; var _2 : Error; } return __tmp__._decrypt(_record);
    public function _encrypt(__tmp__, _record:Slice<GoByte>, _payload:Slice<GoByte>, _rand:stdgo.io.Io.Reader):{ var _0 : Slice<GoByte>; var _1 : Error; } return __tmp__._encrypt(_record, _payload, _rand);
}
class T_permanentError_extension_fields {
    public function error(__tmp__):GoString return __tmp__.error();
    public function unwrap(__tmp__):Error return __tmp__.unwrap();
    public function timeout(__tmp__):Bool return __tmp__.timeout();
    public function temporary(__tmp__):Bool return __tmp__.temporary();
}
class RecordHeaderError_extension_fields {
    public function error(__tmp__):GoString return __tmp__.error();
}
class T_atLeastReader_extension_fields {
    public function read(__tmp__, _p:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } return __tmp__.read(_p);
}
class T_clientHandshakeState_extension_fields {
    public function _handshake(__tmp__):Error return __tmp__._handshake();
    public function _pickCipherSuite(__tmp__):Error return __tmp__._pickCipherSuite();
    public function _doFullHandshake(__tmp__):Error return __tmp__._doFullHandshake();
    public function _establishKeys(__tmp__):Error return __tmp__._establishKeys();
    public function _serverResumedSession(__tmp__):Bool return __tmp__._serverResumedSession();
    public function _processServerHello(__tmp__):{ var _0 : Bool; var _1 : Error; } return __tmp__._processServerHello();
    public function _readFinished(__tmp__, _out:Slice<GoByte>):Error return __tmp__._readFinished(_out);
    public function _readSessionTicket(__tmp__):Error return __tmp__._readSessionTicket();
    public function _sendFinished(__tmp__, _out:Slice<GoByte>):Error return __tmp__._sendFinished(_out);
}
class T_clientHandshakeStateTLS13_extension_fields {
    public function _handshake(__tmp__):Error return __tmp__._handshake();
    public function _checkServerHelloOrHRR(__tmp__):Error return __tmp__._checkServerHelloOrHRR();
    public function _sendDummyChangeCipherSpec(__tmp__):Error return __tmp__._sendDummyChangeCipherSpec();
    public function _processHelloRetryRequest(__tmp__):Error return __tmp__._processHelloRetryRequest();
    public function _processServerHello(__tmp__):Error return __tmp__._processServerHello();
    public function _establishHandshakeKeys(__tmp__):Error return __tmp__._establishHandshakeKeys();
    public function _readServerParameters(__tmp__):Error return __tmp__._readServerParameters();
    public function _readServerCertificate(__tmp__):Error return __tmp__._readServerCertificate();
    public function _readServerFinished(__tmp__):Error return __tmp__._readServerFinished();
    public function _sendClientCertificate(__tmp__):Error return __tmp__._sendClientCertificate();
    public function _sendClientFinished(__tmp__):Error return __tmp__._sendClientFinished();
}
class T_marshalingFunction_extension_fields {
    public function marshal(__tmp__, _b:Pointer<golang_org.x.crypto.cryptobyte.Cryptobyte.Builder>):Error return __tmp__.marshal(_b);
}
class T_clientHelloMsg_extension_fields {
    public function _marshal(__tmp__):Slice<GoByte> return __tmp__._marshal();
    public function _marshalWithoutBinders(__tmp__):Slice<GoByte> return __tmp__._marshalWithoutBinders();
    public function _updateBinders(__tmp__, _pskBinders:Slice<Slice<GoByte>>):Void __tmp__._updateBinders(_pskBinders);
    public function _unmarshal(__tmp__, _data:Slice<GoByte>):Bool return __tmp__._unmarshal(_data);
}
class T_serverHelloMsg_extension_fields {
    public function _marshal(__tmp__):Slice<GoByte> return __tmp__._marshal();
    public function _unmarshal(__tmp__, _data:Slice<GoByte>):Bool return __tmp__._unmarshal(_data);
}
class T_encryptedExtensionsMsg_extension_fields {
    public function _marshal(__tmp__):Slice<GoByte> return __tmp__._marshal();
    public function _unmarshal(__tmp__, _data:Slice<GoByte>):Bool return __tmp__._unmarshal(_data);
}
class T_endOfEarlyDataMsg_extension_fields {
    public function _marshal(__tmp__):Slice<GoByte> return __tmp__._marshal();
    public function _unmarshal(__tmp__, _data:Slice<GoByte>):Bool return __tmp__._unmarshal(_data);
}
class T_keyUpdateMsg_extension_fields {
    public function _marshal(__tmp__):Slice<GoByte> return __tmp__._marshal();
    public function _unmarshal(__tmp__, _data:Slice<GoByte>):Bool return __tmp__._unmarshal(_data);
}
class T_newSessionTicketMsgTLS13_extension_fields {
    public function _marshal(__tmp__):Slice<GoByte> return __tmp__._marshal();
    public function _unmarshal(__tmp__, _data:Slice<GoByte>):Bool return __tmp__._unmarshal(_data);
}
class T_certificateRequestMsgTLS13_extension_fields {
    public function _marshal(__tmp__):Slice<GoByte> return __tmp__._marshal();
    public function _unmarshal(__tmp__, _data:Slice<GoByte>):Bool return __tmp__._unmarshal(_data);
}
class T_certificateMsg_extension_fields {
    public function _marshal(__tmp__):Slice<GoByte> return __tmp__._marshal();
    public function _unmarshal(__tmp__, _data:Slice<GoByte>):Bool return __tmp__._unmarshal(_data);
}
class T_certificateMsgTLS13_extension_fields {
    public function _marshal(__tmp__):Slice<GoByte> return __tmp__._marshal();
    public function _unmarshal(__tmp__, _data:Slice<GoByte>):Bool return __tmp__._unmarshal(_data);
}
class T_serverKeyExchangeMsg_extension_fields {
    public function _marshal(__tmp__):Slice<GoByte> return __tmp__._marshal();
    public function _unmarshal(__tmp__, _data:Slice<GoByte>):Bool return __tmp__._unmarshal(_data);
}
class T_certificateStatusMsg_extension_fields {
    public function _marshal(__tmp__):Slice<GoByte> return __tmp__._marshal();
    public function _unmarshal(__tmp__, _data:Slice<GoByte>):Bool return __tmp__._unmarshal(_data);
}
class T_serverHelloDoneMsg_extension_fields {
    public function _marshal(__tmp__):Slice<GoByte> return __tmp__._marshal();
    public function _unmarshal(__tmp__, _data:Slice<GoByte>):Bool return __tmp__._unmarshal(_data);
}
class T_clientKeyExchangeMsg_extension_fields {
    public function _marshal(__tmp__):Slice<GoByte> return __tmp__._marshal();
    public function _unmarshal(__tmp__, _data:Slice<GoByte>):Bool return __tmp__._unmarshal(_data);
}
class T_finishedMsg_extension_fields {
    public function _marshal(__tmp__):Slice<GoByte> return __tmp__._marshal();
    public function _unmarshal(__tmp__, _data:Slice<GoByte>):Bool return __tmp__._unmarshal(_data);
}
class T_certificateRequestMsg_extension_fields {
    public function _marshal(__tmp__):Slice<GoByte> return __tmp__._marshal();
    public function _unmarshal(__tmp__, _data:Slice<GoByte>):Bool return __tmp__._unmarshal(_data);
}
class T_certificateVerifyMsg_extension_fields {
    public function _marshal(__tmp__):Slice<GoByte> return __tmp__._marshal();
    public function _unmarshal(__tmp__, _data:Slice<GoByte>):Bool return __tmp__._unmarshal(_data);
}
class T_newSessionTicketMsg_extension_fields {
    public function _marshal(__tmp__):Slice<GoByte> return __tmp__._marshal();
    public function _unmarshal(__tmp__, _data:Slice<GoByte>):Bool return __tmp__._unmarshal(_data);
}
class T_helloRequestMsg_extension_fields {
    public function _marshal(__tmp__):Slice<GoByte> return __tmp__._marshal();
    public function _unmarshal(__tmp__, _data:Slice<GoByte>):Bool return __tmp__._unmarshal(_data);
}
class T_serverHandshakeState_extension_fields {
    public function _handshake(__tmp__):Error return __tmp__._handshake();
    public function _processClientHello(__tmp__):Error return __tmp__._processClientHello();
    public function _pickCipherSuite(__tmp__):Error return __tmp__._pickCipherSuite();
    public function _cipherSuiteOk(__tmp__, _c:Pointer<T_cipherSuite>):Bool return __tmp__._cipherSuiteOk(_c);
    public function _checkForResumption(__tmp__):Bool return __tmp__._checkForResumption();
    public function _doResumeHandshake(__tmp__):Error return __tmp__._doResumeHandshake();
    public function _doFullHandshake(__tmp__):Error return __tmp__._doFullHandshake();
    public function _establishKeys(__tmp__):Error return __tmp__._establishKeys();
    public function _readFinished(__tmp__, _out:Slice<GoByte>):Error return __tmp__._readFinished(_out);
    public function _sendSessionTicket(__tmp__):Error return __tmp__._sendSessionTicket();
    public function _sendFinished(__tmp__, _out:Slice<GoByte>):Error return __tmp__._sendFinished(_out);
}
class T_serverHandshakeStateTLS13_extension_fields {
    public function _handshake(__tmp__):Error return __tmp__._handshake();
    public function _processClientHello(__tmp__):Error return __tmp__._processClientHello();
    public function _checkForResumption(__tmp__):Error return __tmp__._checkForResumption();
    public function _pickCertificate(__tmp__):Error return __tmp__._pickCertificate();
    public function _sendDummyChangeCipherSpec(__tmp__):Error return __tmp__._sendDummyChangeCipherSpec();
    public function _doHelloRetryRequest(__tmp__, _selectedGroup:CurveID):Error return __tmp__._doHelloRetryRequest(_selectedGroup);
    public function _sendServerParameters(__tmp__):Error return __tmp__._sendServerParameters();
    public function _requestClientCert(__tmp__):Bool return __tmp__._requestClientCert();
    public function _sendServerCertificate(__tmp__):Error return __tmp__._sendServerCertificate();
    public function _sendServerFinished(__tmp__):Error return __tmp__._sendServerFinished();
    public function _shouldSendSessionTickets(__tmp__):Bool return __tmp__._shouldSendSessionTickets();
    public function _sendSessionTickets(__tmp__):Error return __tmp__._sendSessionTickets();
    public function _readClientCertificate(__tmp__):Error return __tmp__._readClientCertificate();
    public function _readClientFinished(__tmp__):Error return __tmp__._readClientFinished();
}
class T_rsaKeyAgreement_extension_fields {
    public function _generateServerKeyExchange(__tmp__, _config:Pointer<Config>, _cert:Pointer<Certificate>, _clientHello:Pointer<T_clientHelloMsg>, _hello:Pointer<T_serverHelloMsg>):{ var _0 : Pointer<T_serverKeyExchangeMsg>; var _1 : Error; } return __tmp__._generateServerKeyExchange(_config, _cert, _clientHello, _hello);
    public function _processClientKeyExchange(__tmp__, _config:Pointer<Config>, _cert:Pointer<Certificate>, _ckx:Pointer<T_clientKeyExchangeMsg>, _version:GoUInt16):{ var _0 : Slice<GoByte>; var _1 : Error; } return __tmp__._processClientKeyExchange(_config, _cert, _ckx, _version);
    public function _processServerKeyExchange(__tmp__, _config:Pointer<Config>, _clientHello:Pointer<T_clientHelloMsg>, _serverHello:Pointer<T_serverHelloMsg>, _cert:Pointer<stdgo.crypto.x509.X509.Certificate>, _skx:Pointer<T_serverKeyExchangeMsg>):Error return __tmp__._processServerKeyExchange(_config, _clientHello, _serverHello, _cert, _skx);
    public function _generateClientKeyExchange(__tmp__, _config:Pointer<Config>, _clientHello:Pointer<T_clientHelloMsg>, _cert:Pointer<stdgo.crypto.x509.X509.Certificate>):{ var _0 : Slice<GoByte>; var _1 : Pointer<T_clientKeyExchangeMsg>; var _2 : Error; } return __tmp__._generateClientKeyExchange(_config, _clientHello, _cert);
}
class T_ecdheKeyAgreement_extension_fields {
    public function _generateServerKeyExchange(__tmp__, _config:Pointer<Config>, _cert:Pointer<Certificate>, _clientHello:Pointer<T_clientHelloMsg>, _hello:Pointer<T_serverHelloMsg>):{ var _0 : Pointer<T_serverKeyExchangeMsg>; var _1 : Error; } return __tmp__._generateServerKeyExchange(_config, _cert, _clientHello, _hello);
    public function _processClientKeyExchange(__tmp__, _config:Pointer<Config>, _cert:Pointer<Certificate>, _ckx:Pointer<T_clientKeyExchangeMsg>, _version:GoUInt16):{ var _0 : Slice<GoByte>; var _1 : Error; } return __tmp__._processClientKeyExchange(_config, _cert, _ckx, _version);
    public function _processServerKeyExchange(__tmp__, _config:Pointer<Config>, _clientHello:Pointer<T_clientHelloMsg>, _serverHello:Pointer<T_serverHelloMsg>, _cert:Pointer<stdgo.crypto.x509.X509.Certificate>, _skx:Pointer<T_serverKeyExchangeMsg>):Error return __tmp__._processServerKeyExchange(_config, _clientHello, _serverHello, _cert, _skx);
    public function _generateClientKeyExchange(__tmp__, _config:Pointer<Config>, _clientHello:Pointer<T_clientHelloMsg>, _cert:Pointer<stdgo.crypto.x509.X509.Certificate>):{ var _0 : Slice<GoByte>; var _1 : Pointer<T_clientKeyExchangeMsg>; var _2 : Error; } return __tmp__._generateClientKeyExchange(_config, _clientHello, _cert);
}
class T_nistParameters_extension_fields {
    public function curveID(__tmp__):CurveID return __tmp__.curveID();
    public function publicKey(__tmp__):Slice<GoByte> return __tmp__.publicKey();
    public function sharedKey(__tmp__, _peerPublicKey:Slice<GoByte>):Slice<GoByte> return __tmp__.sharedKey(_peerPublicKey);
}
class T_x25519Parameters_extension_fields {
    public function curveID(__tmp__):CurveID return __tmp__.curveID();
    public function publicKey(__tmp__):Slice<GoByte> return __tmp__.publicKey();
    public function sharedKey(__tmp__, _peerPublicKey:Slice<GoByte>):Slice<GoByte> return __tmp__.sharedKey(_peerPublicKey);
}
class T_finishedHash_extension_fields {
    public function write(__tmp__, _msg:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } return __tmp__.write(_msg);
    public function sum(__tmp__):Slice<GoByte> return __tmp__.sum();
    public function _clientSum(__tmp__, _masterSecret:Slice<GoByte>):Slice<GoByte> return __tmp__._clientSum(_masterSecret);
    public function _serverSum(__tmp__, _masterSecret:Slice<GoByte>):Slice<GoByte> return __tmp__._serverSum(_masterSecret);
    public function _hashForClientCertificate(__tmp__, _sigType:GoUInt8, _hashAlg:stdgo.crypto.Crypto.Hash, _masterSecret:Slice<GoByte>):Slice<GoByte> return __tmp__._hashForClientCertificate(_sigType, _hashAlg, _masterSecret);
    public function _discardHandshakeBuffer(__tmp__):Void __tmp__._discardHandshakeBuffer();
}
class T_sessionState_extension_fields {
    public function _marshal(__tmp__):Slice<GoByte> return __tmp__._marshal();
    public function _unmarshal(__tmp__, _data:Slice<GoByte>):Bool return __tmp__._unmarshal(_data);
}
class T_sessionStateTLS13_extension_fields {
    public function _marshal(__tmp__):Slice<GoByte> return __tmp__._marshal();
    public function _unmarshal(__tmp__, _data:Slice<GoByte>):Bool return __tmp__._unmarshal(_data);
}
class T_listener_extension_fields {
    public function accept(__tmp__):{ var _0 : stdgo.net.Net.Conn; var _1 : Error; } return __tmp__.accept();
}
class T_timeoutError_extension_fields {
    public function error(__tmp__):GoString return __tmp__.error();
    public function timeout(__tmp__):Bool return __tmp__.timeout();
    public function temporary(__tmp__):Bool return __tmp__.temporary();
}
class Dialer_extension_fields {
    public function dial(__tmp__, _network:GoString, _addr:GoString):{ var _0 : stdgo.net.Net.Conn; var _1 : Error; } return __tmp__.dial(_network, _addr);
    public function _netDialer(__tmp__):Pointer<stdgo.net.Net.Dialer> return __tmp__._netDialer();
    public function dialContext(__tmp__, _ctx:stdgo.context.Context.Context, _network:GoString, _addr:GoString):{ var _0 : stdgo.net.Net.Conn; var _1 : Error; } return __tmp__.dialContext(_ctx, _network, _addr);
}
