package stdgo.crypto.x509;

import stdgo.Chan;
import stdgo.Error;
import stdgo.Go;
import stdgo.GoArray;
import stdgo.GoMap;
import stdgo.GoString;
import stdgo.Pointer;
import stdgo.Slice;
import stdgo.StdGoTypes;

@:named class T_sum224 {
	public var __t__:GoArray<GoUInt8>;

	public function new(?t:GoArray<GoUInt8>) {
		__t__ = t == null ? new GoArray<GoUInt8>(...[for (i in 0...28) ((0 : GoUInt8))]) : t;
	}

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	@:implicit
	public function toString():GoString
		return Go.string(__t__);

	public function __copy__()
		return new T_sum224(__t__.copy());

	public function __slice__(low:GoInt, high:GoInt = -1)
		return this.__t__.__slice__(low, high);
}

@:structInit class CertPool {
	public function subjects():Slice<Slice<GoByte>> {
		var _s = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		var _res:Slice<Slice<GoUInt8>> = new Slice<Slice<GoUInt8>>(...[for (i in 0...((_s.value._len() : GoInt)).toBasic()) new Slice<GoUInt8>().nil()]);
		for (_i => _lc in _s.value._lazyCerts) {
			_res[_i] = _lc._rawSubject;
		};
		return _res;
	}

	public function appendCertsFromPEM(_pemCerts:Slice<GoByte>):Bool {
		var _s = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		var _ok:Bool = false;
		while (_pemCerts.length > ((0 : GoInt))) {
			var _block:Pointer<stdgo.encoding.pem.Pem.Block> = new Pointer<stdgo.encoding.pem.Pem.Block>().nil();
			{
				var __tmp__ = stdgo.encoding.pem.Pem.decode(_pemCerts);
				_block = __tmp__._0;
				_pemCerts = __tmp__._1;
			};
			if ((_block == null || _block.isNil())) {
				break;
			};
			if (_block.value.type != (("CERTIFICATE" : GoString))
				|| (_block.value.headers == null ? 0 : _block.value.headers.length) != ((0 : GoInt))) {
				continue;
			};
			var _certBytes:Slice<GoUInt8> = _block.value.bytes;
			var __tmp__ = parseCertificate(_certBytes),
				_cert:Pointer<Certificate> = __tmp__._0,
				_err:stdgo.Error = __tmp__._1;
			if (_err != null) {
				continue;
			};
			var _lazyCert:T__struct_0 = new T__struct_0();
			_s.value._addCertFunc(new T_sum224(stdgo.crypto.sha256.Sha256.sum224(_cert.value.raw).copy().copy()), ((_cert.value.rawSubject : GoString)),
				function():{var _0:Pointer<Certificate>; var _1:Error;
				} {
					_lazyCert.do_(function():Void {
						{
							var __tmp__ = parseCertificate(_certBytes);
							_lazyCert._v = __tmp__._0;
						};
						_certBytes = new Slice<GoUInt8>().nil();
					});
					return {_0: _lazyCert._v, _1: ((null : stdgo.Error))};
				});
			_ok = true;
		};
		return _ok;
	}

	public function _addCertFunc(_rawSum224:T_sum224, _rawSubject:GoString, _getCert:() -> {
		var _0:Pointer<Certificate>;
		var _1:Error;
	}):Void {
		var _s = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		if (_getCert == null) {
			throw "getCert can\'t be nil";
		};
		if (_s.value._haveSum[_rawSum224.__copy__()]) {
			return;
		};
		_s.value._haveSum[_rawSum224.__copy__()] = true;
		_s.value._lazyCerts = _s.value._lazyCerts.__append__((({_rawSubject: ((_rawSubject : Slice<GoByte>)), _getCert: _getCert} : T_lazyCert)).__copy__());
		_s.value._byName[_rawSubject] = _s.value._byName[_rawSubject].__append__(_s.value._lazyCerts.length - ((1 : GoInt)));
	}

	public function addCert(_cert:Pointer<Certificate>):Void {
		var _s = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		if ((_cert == null || _cert.isNil())) {
			throw "adding nil Certificate to CertPool";
		};
		_s.value._addCertFunc(new T_sum224(stdgo.crypto.sha256.Sha256.sum224(_cert.value.raw).copy().copy()), ((_cert.value.rawSubject : GoString)),
			function():{var _0:Pointer<Certificate>; var _1:Error;
			} {
				return {_0: _cert, _1: ((null : stdgo.Error))};
			});
	}

	public function _contains(_cert:Pointer<Certificate>):Bool {
		var _s = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		if ((_s == null || _s.isNil())) {
			return false;
		};
		return _s.value._haveSum[new T_sum224(stdgo.crypto.sha256.Sha256.sum224(_cert.value.raw).copy().copy())];
	}

	public function _findPotentialParents(_cert:Pointer<Certificate>):Slice<Pointer<Certificate>> {
		var _s = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		if ((_s == null || _s.isNil())) {
			return new Slice<Pointer<Certificate>>().nil();
		};
		var _matchingKeyID:Slice<Pointer<Certificate>> = new Slice<Pointer<Certificate>>().nil(),
			_oneKeyID:Slice<Pointer<Certificate>> = new Slice<Pointer<Certificate>>().nil(),
			_mismatchKeyID:Slice<Pointer<Certificate>> = new Slice<Pointer<Certificate>>().nil();
		for (_ => _c in _s.value._byName[((_cert.value.rawIssuer : GoString))]) {
			var __tmp__ = _s.value._cert(_c),
				_candidate:Pointer<Certificate> = __tmp__._0,
				_err:stdgo.Error = __tmp__._1;
			if (_err != null) {
				continue;
			};
			var _kidMatch:Bool = stdgo.bytes.Bytes.equal(_candidate.value.subjectKeyId, _cert.value.authorityKeyId);
			if (_kidMatch) {
				_matchingKeyID = _matchingKeyID.__append__(_candidate);
			} else if ((_candidate.value.subjectKeyId.length == ((0 : GoInt)) && _cert.value.authorityKeyId.length > ((0 : GoInt)))
				|| (_candidate.value.subjectKeyId.length > ((0 : GoInt)) && _cert.value.authorityKeyId.length == ((0 : GoInt)))) {
				_oneKeyID = _oneKeyID.__append__(_candidate);
			} else {
				_mismatchKeyID = _mismatchKeyID.__append__(_candidate);
			};
		};
		var _found:GoInt = _matchingKeyID.length + _oneKeyID.length + _mismatchKeyID.length;
		if (_found == ((0 : GoInt))) {
			return new Slice<Pointer<Certificate>>().nil();
		};
		var _candidates:Slice<Pointer<Certificate>> = new Slice<Pointer<Certificate>>(...[
			for (i in 0...((((0 : GoInt)) : GoInt)).toBasic()) new Pointer<Certificate>().nil()
		]).setCap(((_found : GoInt)).toBasic());
		_candidates = _candidates.__append__(..._matchingKeyID.toArray());
		_candidates = _candidates.__append__(..._oneKeyID.toArray());
		_candidates = _candidates.__append__(..._mismatchKeyID.toArray());
		return _candidates;
	}

	public function _copy():Pointer<CertPool> {
		var _s = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		var _p:Pointer<CertPool> = Go.pointer((({_byName: new GoMap<GoString,
			Slice<GoInt>>(new stdgo.reflect.Reflect._Type(stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(string_kind),
			stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(int_kind))))),
			_lazyCerts: new Slice<T_lazyCert>(...[for (i in 0...((_s.value._lazyCerts.length : GoInt)).toBasic()) new T_lazyCert()]),
			_haveSum: new GoMap<T_sum224,
				Bool>(new stdgo.reflect.Reflect._Type(stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.named("T_sum224", [],
					stdgo.reflect.Reflect.GoType.arrayType(stdgo.reflect.Reflect.GoType.basic(uint8_kind), 28)),
				stdgo.reflect.Reflect.GoType.basic(bool_kind))))} : CertPool)));
		for (_k => _v in _s.value._byName) {
			var _indexes:Slice<GoInt> = new Slice<GoInt>(...[for (i in 0...((_v.length : GoInt)).toBasic()) ((0 : GoInt))]);
			Go.copy(_indexes, _v);
			_p.value._byName[_k] = _indexes;
		};
		for (_k => _ in _s.value._haveSum) {
			_p.value._haveSum[_k.__copy__()] = true;
		};
		Go.copy(_p.value._lazyCerts, _s.value._lazyCerts);
		return _p;
	}

	public function _cert(_n:GoInt):{var _0:Pointer<Certificate>; var _1:Error;} {
		var _s = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		return _s.value._lazyCerts[_n]._getCert();
	}

	public function _len():GoInt {
		var _s = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		if ((_s == null || _s.isNil())) {
			return ((0 : GoInt));
		};
		return _s.value._lazyCerts.length;
	}

	public var _byName:GoMap<GoString, Slice<GoInt>> = new GoMap<GoString,
		Slice<GoInt>>(new stdgo.reflect.Reflect._Type(stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(string_kind),
			stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(int_kind))))).nil();
	public var _lazyCerts:Slice<T_lazyCert> = new Slice<T_lazyCert>().nil();
	public var _haveSum:GoMap<T_sum224, Bool> = new GoMap<T_sum224,
		Bool>(new stdgo.reflect.Reflect._Type(stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.named("T_sum224", [],
			stdgo.reflect.Reflect.GoType.arrayType(stdgo.reflect.Reflect.GoType.basic(uint8_kind), 28)),
		stdgo.reflect.Reflect.GoType.basic(bool_kind)))).nil();

	public function new(?_byName:GoMap<GoString, Slice<GoInt>>, ?_lazyCerts:Slice<T_lazyCert>, ?_haveSum:GoMap<T_sum224, Bool>)
		stdgo.internal.Macro.initLocals();

	public function toString() {
		return '{' + Go.string(_byName) + " " + Go.string(_lazyCerts) + " " + Go.string(_haveSum) + "}";
	}

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	public function __copy__() {
		return new CertPool(_byName, _lazyCerts, _haveSum);
	}

	public function __set__(__tmp__) {
		this._byName = __tmp__._byName;
		this._lazyCerts = __tmp__._lazyCerts;
		this._haveSum = __tmp__._haveSum;
		return this;
	}
}

@:structInit class T_lazyCert {
	public var _rawSubject:Slice<GoUInt8> = new Slice<GoUInt8>().nil();
	public var _getCert:() -> {
		var _0:Pointer<Certificate>;
		var _1:stdgo.Error;
	} = null;

	public function new(?_rawSubject:Slice<GoUInt8>, ?_getCert:() -> {
		var _0:Pointer<Certificate>;
		var _1:stdgo.Error;
	})
		stdgo.internal.Macro.initLocals();

	public function toString() {
		return '{' + Go.string(_rawSubject) + " " + Go.string(_getCert) + "}";
	}

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	public function __copy__() {
		return new T_lazyCert(_rawSubject, _getCert);
	}

	public function __set__(__tmp__) {
		this._rawSubject = __tmp__._rawSubject;
		this._getCert = __tmp__._getCert;
		return this;
	}
}

@:named class PEMCipher {
	public var __t__:GoInt;

	public function new(?t:GoInt) {
		__t__ = t == null ? 0 : t;
	}

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	@:implicit
	public function toString():GoString
		return Go.string(__t__);

	public function __copy__()
		return new PEMCipher(__t__);
}

@:structInit class T_rfc1423Algo {
	public function _deriveKey(_password:Slice<GoByte>, _salt:Slice<GoByte>):Slice<GoByte> {
		var _c = this.__copy__();
		var _hash:stdgo.hash.Hash.Hash = stdgo.crypto.md5.Md5.new_();
		var _out:Slice<GoUInt8> = new Slice<GoUInt8>(...[for (i in 0...((_c._keySize : GoInt)).toBasic()) ((0 : GoUInt8))]);
		var _digest:Slice<GoByte> = new Slice<GoUInt8>().nil();
		{
			var _i:GoInt = ((0 : GoInt));
			Go.cfor(_i < _out.length, _i = _i + (_digest.length), {
				_hash.reset();
				_hash.write(_digest);
				_hash.write(_password);
				_hash.write(_salt);
				_digest = _hash.sum(_digest.__slice__(0, ((0 : GoInt))));
				Go.copy(_out.__slice__(_i), _digest);
			});
		};
		return _out;
	}

	public var _cipher:PEMCipher = new PEMCipher();
	public var _name:GoString = (("" : GoString));
	public var _cipherFunc:Slice<GoUInt8> -> {
		var _0:stdgo.crypto.cipher.Cipher.Block;
		var _1:stdgo.Error;
	} = null;
	public var _keySize:GoInt = ((0 : GoInt));
	public var _blockSize:GoInt = ((0 : GoInt));

	public function new(?_cipher:PEMCipher, ?_name:GoString, ?_cipherFunc:Slice<GoUInt8> -> {
		var _0:stdgo.crypto.cipher.Cipher.Block;
		var _1:stdgo.Error;
	}, ?_keySize:GoInt, ?_blockSize:GoInt)
		stdgo.internal.Macro.initLocals();

	public function toString() {
		return '{' + Go.string(_cipher) + " " + Go.string(_name) + " " + Go.string(_cipherFunc) + " " + Go.string(_keySize) + " " + Go.string(_blockSize) + "}";
	}

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	public function __copy__() {
		return new T_rfc1423Algo(_cipher, _name, _cipherFunc, _keySize, _blockSize);
	}

	public function __set__(__tmp__) {
		this._cipher = __tmp__._cipher;
		this._name = __tmp__._name;
		this._cipherFunc = __tmp__._cipherFunc;
		this._keySize = __tmp__._keySize;
		this._blockSize = __tmp__._blockSize;
		return this;
	}
}

@:structInit class T_pkcs1PrivateKey {
	public var version:GoInt = ((0 : GoInt));
	public var n:Pointer<stdgo.math.big.Big.Int_> = new Pointer<stdgo.math.big.Big.Int_>().nil();
	public var e:GoInt = ((0 : GoInt));
	public var d:Pointer<stdgo.math.big.Big.Int_> = new Pointer<stdgo.math.big.Big.Int_>().nil();
	public var p:Pointer<stdgo.math.big.Big.Int_> = new Pointer<stdgo.math.big.Big.Int_>().nil();
	public var q:Pointer<stdgo.math.big.Big.Int_> = new Pointer<stdgo.math.big.Big.Int_>().nil();
	@:tag("asn1:\"optional\"")
	public var dp:Pointer<stdgo.math.big.Big.Int_> = new Pointer<stdgo.math.big.Big.Int_>().nil();
	@:tag("asn1:\"optional\"")
	public var dq:Pointer<stdgo.math.big.Big.Int_> = new Pointer<stdgo.math.big.Big.Int_>().nil();
	@:tag("asn1:\"optional\"")
	public var qinv:Pointer<stdgo.math.big.Big.Int_> = new Pointer<stdgo.math.big.Big.Int_>().nil();
	@:tag("asn1:\"optional,omitempty\"")
	public var additionalPrimes:Slice<T_pkcs1AdditionalRSAPrime> = new Slice<T_pkcs1AdditionalRSAPrime>().nil();

	public function new(?version:GoInt, ?n:Pointer<stdgo.math.big.Big.Int_>, ?e:GoInt, ?d:Pointer<stdgo.math.big.Big.Int_>,
			?p:Pointer<stdgo.math.big.Big.Int_>, ?q:Pointer<stdgo.math.big.Big.Int_>, ?dp:Pointer<stdgo.math.big.Big.Int_>,
			?dq:Pointer<stdgo.math.big.Big.Int_>, ?qinv:Pointer<stdgo.math.big.Big.Int_>, ?additionalPrimes:Slice<T_pkcs1AdditionalRSAPrime>)
		stdgo.internal.Macro.initLocals();

	public function toString() {
		return '{' + Go.string(version) + " " + Go.string(n) + " " + Go.string(e) + " " + Go.string(d) + " " + Go.string(p) + " " + Go.string(q) + " "
			+ Go.string(dp) + " " + Go.string(dq) + " " + Go.string(qinv) + " " + Go.string(additionalPrimes) + "}";
	}

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	public function __copy__() {
		return new T_pkcs1PrivateKey(version, n, e, d, p, q, dp, dq, qinv, additionalPrimes);
	}

	public function __set__(__tmp__) {
		this.version = __tmp__.version;
		this.n = __tmp__.n;
		this.e = __tmp__.e;
		this.d = __tmp__.d;
		this.p = __tmp__.p;
		this.q = __tmp__.q;
		this.dp = __tmp__.dp;
		this.dq = __tmp__.dq;
		this.qinv = __tmp__.qinv;
		this.additionalPrimes = __tmp__.additionalPrimes;
		return this;
	}
}

@:structInit class T_pkcs1AdditionalRSAPrime {
	public var prime:Pointer<stdgo.math.big.Big.Int_> = new Pointer<stdgo.math.big.Big.Int_>().nil();
	public var exp:Pointer<stdgo.math.big.Big.Int_> = new Pointer<stdgo.math.big.Big.Int_>().nil();
	public var coeff:Pointer<stdgo.math.big.Big.Int_> = new Pointer<stdgo.math.big.Big.Int_>().nil();

	public function new(?prime:Pointer<stdgo.math.big.Big.Int_>, ?exp:Pointer<stdgo.math.big.Big.Int_>, ?coeff:Pointer<stdgo.math.big.Big.Int_>)
		stdgo.internal.Macro.initLocals();

	public function toString() {
		return '{' + Go.string(prime) + " " + Go.string(exp) + " " + Go.string(coeff) + "}";
	}

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	public function __copy__() {
		return new T_pkcs1AdditionalRSAPrime(prime, exp, coeff);
	}

	public function __set__(__tmp__) {
		this.prime = __tmp__.prime;
		this.exp = __tmp__.exp;
		this.coeff = __tmp__.coeff;
		return this;
	}
}

@:structInit class T_pkcs1PublicKey {
	public var n:Pointer<stdgo.math.big.Big.Int_> = new Pointer<stdgo.math.big.Big.Int_>().nil();
	public var e:GoInt = ((0 : GoInt));

	public function new(?n:Pointer<stdgo.math.big.Big.Int_>, ?e:GoInt)
		stdgo.internal.Macro.initLocals();

	public function toString() {
		return '{' + Go.string(n) + " " + Go.string(e) + "}";
	}

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	public function __copy__() {
		return new T_pkcs1PublicKey(n, e);
	}

	public function __set__(__tmp__) {
		this.n = __tmp__.n;
		this.e = __tmp__.e;
		return this;
	}
}

@:structInit class T_pkcs8 {
	public var version:GoInt = ((0 : GoInt));
	public var algo:stdgo.crypto.x509.pkix.Pkix.AlgorithmIdentifier = new stdgo.crypto.x509.pkix.Pkix.AlgorithmIdentifier();
	public var privateKey:Slice<GoUInt8> = new Slice<GoUInt8>().nil();

	public function new(?version:GoInt, ?algo:stdgo.crypto.x509.pkix.Pkix.AlgorithmIdentifier, ?privateKey:Slice<GoUInt8>)
		stdgo.internal.Macro.initLocals();

	public function toString() {
		return '{' + Go.string(version) + " " + Go.string(algo) + " " + Go.string(privateKey) + "}";
	}

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	public function __copy__() {
		return new T_pkcs8(version, algo, privateKey);
	}

	public function __set__(__tmp__) {
		this.version = __tmp__.version;
		this.algo = __tmp__.algo;
		this.privateKey = __tmp__.privateKey;
		return this;
	}
}

@:structInit class T_ecPrivateKey {
	public var version:GoInt = ((0 : GoInt));
	public var privateKey:Slice<GoUInt8> = new Slice<GoUInt8>().nil();
	@:tag("asn1:\"optional,explicit,tag:0\"")
	public var namedCurveOID:stdgo.encoding.asn1.Asn1.ObjectIdentifier = new stdgo.encoding.asn1.Asn1.ObjectIdentifier();
	@:tag("asn1:\"optional,explicit,tag:1\"")
	public var publicKey:stdgo.encoding.asn1.Asn1.BitString = new stdgo.encoding.asn1.Asn1.BitString();

	public function new(?version:GoInt, ?privateKey:Slice<GoUInt8>, ?namedCurveOID:stdgo.encoding.asn1.Asn1.ObjectIdentifier,
			?publicKey:stdgo.encoding.asn1.Asn1.BitString)
		stdgo.internal.Macro.initLocals();

	public function toString() {
		return '{'
			+ Go.string(version)
			+ " "
			+ Go.string(privateKey)
			+ " "
			+ Go.string(namedCurveOID)
			+ " "
			+ Go.string(publicKey)
			+ "}";
	}

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	public function __copy__() {
		return new T_ecPrivateKey(version, privateKey, namedCurveOID, publicKey);
	}

	public function __set__(__tmp__) {
		this.version = __tmp__.version;
		this.privateKey = __tmp__.privateKey;
		this.namedCurveOID = __tmp__.namedCurveOID;
		this.publicKey = __tmp__.publicKey;
		return this;
	}
}

@:named class InvalidReason {
	public var __t__:GoInt;

	public function new(?t:GoInt) {
		__t__ = t == null ? 0 : t;
	}

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	@:implicit
	public function toString():GoString
		return Go.string(__t__);

	public function __copy__()
		return new InvalidReason(__t__);
}

@:structInit class CertificateInvalidError {
	public function error():GoString {
		var _e = this.__copy__();
		if (_e.reason.__t__ == notAuthorizedToSign.__t__) {
			return "x509: certificate is not authorized to sign other certificates";
		} else if (_e.reason.__t__ == expired.__t__) {
			return (("x509: certificate has expired or is not yet valid: " : GoString)) + _e.detail;
		} else if (_e.reason.__t__ == canotAuthorizedForThisName.__t__) {
			return (("x509: a root or intermediate certificate is not authorized to sign for this name: " : GoString)) + _e.detail;
		} else if (_e.reason.__t__ == canotAuthorizedForExtKeyUsage.__t__) {
			return (("x509: a root or intermediate certificate is not authorized for an extended key usage: " : GoString)) + _e.detail;
		} else if (_e.reason.__t__ == tooManyIntermediates.__t__) {
			return "x509: too many intermediates for path length constraint";
		} else if (_e.reason.__t__ == incompatibleUsage.__t__) {
			return "x509: certificate specifies an incompatible key usage";
		} else if (_e.reason.__t__ == nameMismatch.__t__) {
			return "x509: issuer name does not match subject from issuing certificate";
		} else if (_e.reason.__t__ == nameConstraintsWithoutSANs.__t__) {
			return "x509: issuer has name constraints but leaf doesn\'t have a SAN extension";
		} else if (_e.reason.__t__ == unconstrainedName.__t__) {
			return (("x509: issuer has name constraints but leaf contains unknown or unconstrained name: " : GoString)) + _e.detail;
		};
		return "x509: unknown error";
	}

	public var cert:Pointer<Certificate> = new Pointer<Certificate>().nil();
	public var reason:InvalidReason = new InvalidReason();
	public var detail:GoString = (("" : GoString));

	public function new(?cert:Pointer<Certificate>, ?reason:InvalidReason, ?detail:GoString)
		stdgo.internal.Macro.initLocals();

	public function toString() {
		return '{' + Go.string(cert) + " " + Go.string(reason) + " " + Go.string(detail) + "}";
	}

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	public function __copy__() {
		return new CertificateInvalidError(cert, reason, detail);
	}

	public function __set__(__tmp__) {
		this.cert = __tmp__.cert;
		this.reason = __tmp__.reason;
		this.detail = __tmp__.detail;
		return this;
	}
}

@:structInit class HostnameError {
	public function error():GoString {
		var _h = this.__copy__();
		var _c:Pointer<Certificate> = _h.certificate;
		if (!_c.value._hasSANExtension() && _matchHostnames(_c.value.subject.commonName, _h.host)) {
			return "x509: certificate relies on legacy Common Name field, use SANs instead";
		};
		var _valid:GoString = (("" : GoString));
		{
			var _ip:stdgo.net.Net.IP = stdgo.net.Net.parseIP(_h.host).__copy__();
			if ((_ip.__t__ != null && !_ip.__t__.isNil())) {
				if (_c.value.ipaddresses.length == ((0 : GoInt))) {
					return (("x509: cannot validate certificate for " : GoString)) + _h.host + ((" because it doesn\'t contain any IP SANs" : GoString));
				};
				for (_ => _san in _c.value.ipaddresses) {
					if (_valid.length > ((0 : GoInt))) {
						_valid = _valid + (", ");
					};
					_valid = _valid + (_san.toString());
				};
			} else {
				_valid = stdgo.strings.Strings.join(_c.value.dnsnames, ", ");
			};
		};
		if (_valid.length == ((0 : GoInt))) {
			return (("x509: certificate is not valid for any names, but wanted to match " : GoString)) + _h.host;
		};
		return (("x509: certificate is valid for " : GoString)) + _valid + ((", not " : GoString)) + _h.host;
	}

	public var certificate:Pointer<Certificate> = new Pointer<Certificate>().nil();
	public var host:GoString = (("" : GoString));

	public function new(?certificate:Pointer<Certificate>, ?host:GoString)
		stdgo.internal.Macro.initLocals();

	public function toString() {
		return '{' + Go.string(certificate) + " " + Go.string(host) + "}";
	}

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	public function __copy__() {
		return new HostnameError(certificate, host);
	}

	public function __set__(__tmp__) {
		this.certificate = __tmp__.certificate;
		this.host = __tmp__.host;
		return this;
	}
}

@:structInit class UnknownAuthorityError {
	public function error():GoString {
		var _e = this.__copy__();
		var _s:GoString = "x509: certificate signed by unknown authority";
		if (_e._hintErr != null) {
			var _certName:GoString = _e._hintCert.value.subject.commonName;
			if (_certName.length == ((0 : GoInt))) {
				if (_e._hintCert.value.subject.organization.length > ((0 : GoInt))) {
					_certName = _e._hintCert.value.subject.organization[((0 : GoInt))];
				} else {
					_certName = (("serial:" : GoString)) + _e._hintCert.value.serialNumber.value.toString();
				};
			};
			_s = _s
				+ (stdgo.fmt.Fmt.sprintf(" (possibly because of %q while trying to verify candidate authority certificate %q)", Go.toInterface(_e._hintErr),
					Go.toInterface(_certName)));
		};
		return _s;
	}

	public var cert:Pointer<Certificate> = new Pointer<Certificate>().nil();
	public var _hintErr:stdgo.Error = ((null : stdgo.Error));
	public var _hintCert:Pointer<Certificate> = new Pointer<Certificate>().nil();

	public function new(?cert:Pointer<Certificate>, ?_hintErr:stdgo.Error, ?_hintCert:Pointer<Certificate>)
		stdgo.internal.Macro.initLocals();

	public function toString() {
		return '{' + Go.string(cert) + " " + Go.string(_hintErr) + " " + Go.string(_hintCert) + "}";
	}

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	public function __copy__() {
		return new UnknownAuthorityError(cert, _hintErr, _hintCert);
	}

	public function __set__(__tmp__) {
		this.cert = __tmp__.cert;
		this._hintErr = __tmp__._hintErr;
		this._hintCert = __tmp__._hintCert;
		return this;
	}
}

@:structInit class SystemRootsError {
	public function unwrap():Error {
		var _se = this.__copy__();
		return _se.err;
	}

	public function error():GoString {
		var _se = this.__copy__();
		var _msg:GoString = "x509: failed to load system roots and no roots provided";
		if (_se.err != null) {
			return _msg + (("; " : GoString)) + _se.err.error();
		};
		return _msg;
	}

	public var err:stdgo.Error = ((null : stdgo.Error));

	public function new(?err:stdgo.Error)
		stdgo.internal.Macro.initLocals();

	public function toString() {
		return '{' + Go.string(err) + "}";
	}

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	public function __copy__() {
		return new SystemRootsError(err);
	}

	public function __set__(__tmp__) {
		this.err = __tmp__.err;
		return this;
	}
}

@:structInit class VerifyOptions {
	public var dnsname:GoString = (("" : GoString));
	public var intermediates:Pointer<CertPool> = new Pointer<CertPool>().nil();
	public var roots:Pointer<CertPool> = new Pointer<CertPool>().nil();
	public var currentTime:stdgo.time.Time.Time = new stdgo.time.Time.Time();
	public var keyUsages:Slice<ExtKeyUsage> = new Slice<ExtKeyUsage>().nil();
	public var maxConstraintComparisions:GoInt = ((0 : GoInt));

	public function new(?dnsname:GoString, ?intermediates:Pointer<CertPool>, ?roots:Pointer<CertPool>, ?currentTime:stdgo.time.Time.Time,
			?keyUsages:Slice<ExtKeyUsage>, ?maxConstraintComparisions:GoInt)
		stdgo.internal.Macro.initLocals();

	public function toString() {
		return '{' + Go.string(dnsname) + " " + Go.string(intermediates) + " " + Go.string(roots) + " " + Go.string(currentTime) + " "
			+ Go.string(keyUsages) + " " + Go.string(maxConstraintComparisions) + "}";
	}

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	public function __copy__() {
		return new VerifyOptions(dnsname, intermediates, roots, currentTime, keyUsages, maxConstraintComparisions);
	}

	public function __set__(__tmp__) {
		this.dnsname = __tmp__.dnsname;
		this.intermediates = __tmp__.intermediates;
		this.roots = __tmp__.roots;
		this.currentTime = __tmp__.currentTime;
		this.keyUsages = __tmp__.keyUsages;
		this.maxConstraintComparisions = __tmp__.maxConstraintComparisions;
		return this;
	}
}

@:structInit class T_rfc2821Mailbox {
	public var _local:GoString = (("" : GoString));
	public var _domain:GoString = (("" : GoString));

	public function new(?_local:GoString, ?_domain:GoString)
		stdgo.internal.Macro.initLocals();

	public function toString() {
		return '{' + Go.string(_local) + " " + Go.string(_domain) + "}";
	}

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	public function __copy__() {
		return new T_rfc2821Mailbox(_local, _domain);
	}

	public function __set__(__tmp__) {
		this._local = __tmp__._local;
		this._domain = __tmp__._domain;
		return this;
	}
}

@:structInit class T_pkixPublicKey {
	public var algo:stdgo.crypto.x509.pkix.Pkix.AlgorithmIdentifier = new stdgo.crypto.x509.pkix.Pkix.AlgorithmIdentifier();
	public var bitString:stdgo.encoding.asn1.Asn1.BitString = new stdgo.encoding.asn1.Asn1.BitString();

	public function new(?algo:stdgo.crypto.x509.pkix.Pkix.AlgorithmIdentifier, ?bitString:stdgo.encoding.asn1.Asn1.BitString)
		stdgo.internal.Macro.initLocals();

	public function toString() {
		return '{' + Go.string(algo) + " " + Go.string(bitString) + "}";
	}

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	public function __copy__() {
		return new T_pkixPublicKey(algo, bitString);
	}

	public function __set__(__tmp__) {
		this.algo = __tmp__.algo;
		this.bitString = __tmp__.bitString;
		return this;
	}
}

@:structInit class T_certificate {
	public var raw:stdgo.encoding.asn1.Asn1.RawContent = new stdgo.encoding.asn1.Asn1.RawContent();
	public var tbscertificate:T_tbsCertificate = new T_tbsCertificate();
	public var signatureAlgorithm:stdgo.crypto.x509.pkix.Pkix.AlgorithmIdentifier = new stdgo.crypto.x509.pkix.Pkix.AlgorithmIdentifier();
	public var signatureValue:stdgo.encoding.asn1.Asn1.BitString = new stdgo.encoding.asn1.Asn1.BitString();

	public function new(?raw:stdgo.encoding.asn1.Asn1.RawContent, ?tbscertificate:T_tbsCertificate,
			?signatureAlgorithm:stdgo.crypto.x509.pkix.Pkix.AlgorithmIdentifier, ?signatureValue:stdgo.encoding.asn1.Asn1.BitString)
		stdgo.internal.Macro.initLocals();

	public function toString() {
		return '{'
			+ Go.string(raw)
			+ " "
			+ Go.string(tbscertificate)
			+ " "
			+ Go.string(signatureAlgorithm)
			+ " "
			+ Go.string(signatureValue)
			+ "}";
	}

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	public function __copy__() {
		return new T_certificate(raw, tbscertificate, signatureAlgorithm, signatureValue);
	}

	public function __set__(__tmp__) {
		this.raw = __tmp__.raw;
		this.tbscertificate = __tmp__.tbscertificate;
		this.signatureAlgorithm = __tmp__.signatureAlgorithm;
		this.signatureValue = __tmp__.signatureValue;
		return this;
	}
}

@:structInit class T_tbsCertificate {
	public var raw:stdgo.encoding.asn1.Asn1.RawContent = new stdgo.encoding.asn1.Asn1.RawContent();
	@:tag("asn1:\"optional,explicit,default:0,tag:0\"")
	public var version:GoInt = ((0 : GoInt));
	public var serialNumber:Pointer<stdgo.math.big.Big.Int_> = new Pointer<stdgo.math.big.Big.Int_>().nil();
	public var signatureAlgorithm:stdgo.crypto.x509.pkix.Pkix.AlgorithmIdentifier = new stdgo.crypto.x509.pkix.Pkix.AlgorithmIdentifier();
	public var issuer:stdgo.encoding.asn1.Asn1.RawValue = new stdgo.encoding.asn1.Asn1.RawValue();
	public var validity:T_validity = new T_validity();
	public var subject:stdgo.encoding.asn1.Asn1.RawValue = new stdgo.encoding.asn1.Asn1.RawValue();
	public var publicKey:T_publicKeyInfo = new T_publicKeyInfo();
	@:tag("asn1:\"optional,tag:1\"")
	public var uniqueId:stdgo.encoding.asn1.Asn1.BitString = new stdgo.encoding.asn1.Asn1.BitString();
	@:tag("asn1:\"optional,tag:2\"")
	public var subjectUniqueId:stdgo.encoding.asn1.Asn1.BitString = new stdgo.encoding.asn1.Asn1.BitString();
	@:tag("asn1:\"optional,explicit,tag:3\"")
	public var extensions:Slice<stdgo.crypto.x509.pkix.Pkix.Extension> = new Slice<stdgo.crypto.x509.pkix.Pkix.Extension>().nil();

	public function new(?raw:stdgo.encoding.asn1.Asn1.RawContent, ?version:GoInt, ?serialNumber:Pointer<stdgo.math.big.Big.Int_>,
			?signatureAlgorithm:stdgo.crypto.x509.pkix.Pkix.AlgorithmIdentifier, ?issuer:stdgo.encoding.asn1.Asn1.RawValue, ?validity:T_validity,
			?subject:stdgo.encoding.asn1.Asn1.RawValue, ?publicKey:T_publicKeyInfo, ?uniqueId:stdgo.encoding.asn1.Asn1.BitString,
			?subjectUniqueId:stdgo.encoding.asn1.Asn1.BitString, ?extensions:Slice<stdgo.crypto.x509.pkix.Pkix.Extension>)
		stdgo.internal.Macro.initLocals();

	public function toString() {
		return '{' + Go.string(raw) + " " + Go.string(version) + " " + Go.string(serialNumber) + " " + Go.string(signatureAlgorithm) + " "
			+ Go.string(issuer) + " " + Go.string(validity) + " " + Go.string(subject) + " " + Go.string(publicKey) + " " + Go.string(uniqueId) + " "
			+ Go.string(subjectUniqueId) + " " + Go.string(extensions) + "}";
	}

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	public function __copy__() {
		return new T_tbsCertificate(raw, version, serialNumber, signatureAlgorithm, issuer, validity, subject, publicKey, uniqueId, subjectUniqueId,
			extensions);
	}

	public function __set__(__tmp__) {
		this.raw = __tmp__.raw;
		this.version = __tmp__.version;
		this.serialNumber = __tmp__.serialNumber;
		this.signatureAlgorithm = __tmp__.signatureAlgorithm;
		this.issuer = __tmp__.issuer;
		this.validity = __tmp__.validity;
		this.subject = __tmp__.subject;
		this.publicKey = __tmp__.publicKey;
		this.uniqueId = __tmp__.uniqueId;
		this.subjectUniqueId = __tmp__.subjectUniqueId;
		this.extensions = __tmp__.extensions;
		return this;
	}
}

@:structInit class T_dsaAlgorithmParameters {
	public var p:Pointer<stdgo.math.big.Big.Int_> = new Pointer<stdgo.math.big.Big.Int_>().nil();
	public var q:Pointer<stdgo.math.big.Big.Int_> = new Pointer<stdgo.math.big.Big.Int_>().nil();
	public var g:Pointer<stdgo.math.big.Big.Int_> = new Pointer<stdgo.math.big.Big.Int_>().nil();

	public function new(?p:Pointer<stdgo.math.big.Big.Int_>, ?q:Pointer<stdgo.math.big.Big.Int_>, ?g:Pointer<stdgo.math.big.Big.Int_>)
		stdgo.internal.Macro.initLocals();

	public function toString() {
		return '{' + Go.string(p) + " " + Go.string(q) + " " + Go.string(g) + "}";
	}

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	public function __copy__() {
		return new T_dsaAlgorithmParameters(p, q, g);
	}

	public function __set__(__tmp__) {
		this.p = __tmp__.p;
		this.q = __tmp__.q;
		this.g = __tmp__.g;
		return this;
	}
}

@:structInit class T_validity {
	public var notBefore:stdgo.time.Time.Time = new stdgo.time.Time.Time();
	public var notAfter:stdgo.time.Time.Time = new stdgo.time.Time.Time();

	public function new(?notBefore:stdgo.time.Time.Time, ?notAfter:stdgo.time.Time.Time)
		stdgo.internal.Macro.initLocals();

	public function toString() {
		return '{' + Go.string(notBefore) + " " + Go.string(notAfter) + "}";
	}

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	public function __copy__() {
		return new T_validity(notBefore, notAfter);
	}

	public function __set__(__tmp__) {
		this.notBefore = __tmp__.notBefore;
		this.notAfter = __tmp__.notAfter;
		return this;
	}
}

@:structInit class T_publicKeyInfo {
	public var raw:stdgo.encoding.asn1.Asn1.RawContent = new stdgo.encoding.asn1.Asn1.RawContent();
	public var algorithm:stdgo.crypto.x509.pkix.Pkix.AlgorithmIdentifier = new stdgo.crypto.x509.pkix.Pkix.AlgorithmIdentifier();
	public var publicKey:stdgo.encoding.asn1.Asn1.BitString = new stdgo.encoding.asn1.Asn1.BitString();

	public function new(?raw:stdgo.encoding.asn1.Asn1.RawContent, ?algorithm:stdgo.crypto.x509.pkix.Pkix.AlgorithmIdentifier,
			?publicKey:stdgo.encoding.asn1.Asn1.BitString)
		stdgo.internal.Macro.initLocals();

	public function toString() {
		return '{' + Go.string(raw) + " " + Go.string(algorithm) + " " + Go.string(publicKey) + "}";
	}

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	public function __copy__() {
		return new T_publicKeyInfo(raw, algorithm, publicKey);
	}

	public function __set__(__tmp__) {
		this.raw = __tmp__.raw;
		this.algorithm = __tmp__.algorithm;
		this.publicKey = __tmp__.publicKey;
		return this;
	}
}

@:structInit class T_authKeyId {
	@:tag("asn1:\"optional,tag:0\"")
	public var id:Slice<GoUInt8> = new Slice<GoUInt8>().nil();

	public function new(?id:Slice<GoUInt8>)
		stdgo.internal.Macro.initLocals();

	public function toString() {
		return '{' + Go.string(id) + "}";
	}

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	public function __copy__() {
		return new T_authKeyId(id);
	}

	public function __set__(__tmp__) {
		this.id = __tmp__.id;
		return this;
	}
}

@:named class SignatureAlgorithm {
	public function toString():GoString {
		var _algo = this.__copy__();
		for (_ => _details in _signatureAlgorithmDetails) {
			if (_details._algo.__t__ == _algo.__t__) {
				return _details._name;
			};
		};
		return stdgo.strconv.Strconv.itoa(_algo.__t__);
	}

	public function _isRSAPSS():Bool {
		var _algo = this.__copy__();
		if (_algo.__t__ == sha256withRSAPSS.__t__ || _algo.__t__ == sha384withRSAPSS.__t__ || _algo.__t__ == sha512withRSAPSS.__t__) {
			return true;
		} else {
			return false;
		};
	}

	public var __t__:GoInt;

	public function new(?t:GoInt) {
		__t__ = t == null ? 0 : t;
	}

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	public function __copy__()
		return new SignatureAlgorithm(__t__);
}

@:named class PublicKeyAlgorithm {
	public function toString():GoString {
		var _algo = this.__copy__();
		if (((0 : GoInt)) < _algo.__t__ && _algo.__t__ < _publicKeyAlgoName.length) {
			return _publicKeyAlgoName[_algo.__t__];
		};
		return stdgo.strconv.Strconv.itoa(_algo.__t__);
	}

	public var __t__:GoInt;

	public function new(?t:GoInt) {
		__t__ = t == null ? 0 : t;
	}

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	public function __copy__()
		return new PublicKeyAlgorithm(__t__);
}

@:structInit class T_pssParameters {
	@:tag("asn1:\"explicit,tag:0\"")
	public var hash:stdgo.crypto.x509.pkix.Pkix.AlgorithmIdentifier = new stdgo.crypto.x509.pkix.Pkix.AlgorithmIdentifier();
	@:tag("asn1:\"explicit,tag:1\"")
	public var mgf:stdgo.crypto.x509.pkix.Pkix.AlgorithmIdentifier = new stdgo.crypto.x509.pkix.Pkix.AlgorithmIdentifier();
	@:tag("asn1:\"explicit,tag:2\"")
	public var saltLength:GoInt = ((0 : GoInt));
	@:tag("asn1:\"optional,explicit,tag:3,default:1\"")
	public var trailerField:GoInt = ((0 : GoInt));

	public function new(?hash:stdgo.crypto.x509.pkix.Pkix.AlgorithmIdentifier, ?mgf:stdgo.crypto.x509.pkix.Pkix.AlgorithmIdentifier, ?saltLength:GoInt,
			?trailerField:GoInt)
		stdgo.internal.Macro.initLocals();

	public function toString() {
		return '{' + Go.string(hash) + " " + Go.string(mgf) + " " + Go.string(saltLength) + " " + Go.string(trailerField) + "}";
	}

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	public function __copy__() {
		return new T_pssParameters(hash, mgf, saltLength, trailerField);
	}

	public function __set__(__tmp__) {
		this.hash = __tmp__.hash;
		this.mgf = __tmp__.mgf;
		this.saltLength = __tmp__.saltLength;
		this.trailerField = __tmp__.trailerField;
		return this;
	}
}

@:named class KeyUsage {
	public var __t__:GoInt;

	public function new(?t:GoInt) {
		__t__ = t == null ? 0 : t;
	}

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	@:implicit
	public function toString():GoString
		return Go.string(__t__);

	public function __copy__()
		return new KeyUsage(__t__);
}

@:named class ExtKeyUsage {
	public var __t__:GoInt;

	public function new(?t:GoInt) {
		__t__ = t == null ? 0 : t;
	}

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	@:implicit
	public function toString():GoString
		return Go.string(__t__);

	public function __copy__()
		return new ExtKeyUsage(__t__);
}

@:structInit class Certificate {
	public function createCRL(_rand:stdgo.io.Io.Reader, _priv:AnyInterface, _revokedCerts:Slice<stdgo.crypto.x509.pkix.Pkix.RevokedCertificate>,
			_now:stdgo.time.Time.Time, _expiry:stdgo.time.Time.Time):{var _0:Slice<GoByte>; var _1:Error;
	} {
		var _c = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		var _crlBytes:Slice<GoByte> = new Slice<GoUInt8>().nil(),
			_err:Error = ((null : stdgo.Error));
		var __tmp__ = try {
			{value: ((_priv.value : stdgo.crypto.Crypto.Signer)), ok: true};
		} catch (_) {
			{value: ((null : stdgo.crypto.Crypto.Signer)), ok: false};
		}, _key = __tmp__.value, _ok = __tmp__.ok;
		if (!_ok) {
			return {_0: new Slice<GoUInt8>().nil(), _1: stdgo.errors.Errors.new_("x509: certificate private key does not implement crypto.Signer")};
		};
		var __tmp__ = _signingParamsForPublicKey(Go.toInterface(_key.public_()), new SignatureAlgorithm(((0 : GoInt)))),
			_hashFunc:stdgo.crypto.Crypto.Hash = __tmp__._0,
			_signatureAlgorithm:stdgo.crypto.x509.pkix.Pkix.AlgorithmIdentifier = __tmp__._1,
			_err:stdgo.Error = __tmp__._2;
		if (_err != null) {
			return {_0: new Slice<GoUInt8>().nil(), _1: _err};
		};
		var _revokedCertsUTC:Slice<stdgo.crypto.x509.pkix.Pkix.RevokedCertificate> = new Slice<stdgo.crypto.x509.pkix.Pkix.RevokedCertificate>(...[
			for (i in 0...((_revokedCerts.length : GoInt)).toBasic()) new stdgo.crypto.x509.pkix.Pkix.RevokedCertificate()
		]);
		for (_i => _rc in _revokedCerts) {
			_rc.revocationTime = _rc.revocationTime.utc().__copy__();
			_revokedCertsUTC[_i] = _rc.__copy__();
		};
		var _tbsCertList:stdgo.crypto.x509.pkix.Pkix.TBSCertificateList = (({
			version: ((1 : GoInt)),
			signature: _signatureAlgorithm.__copy__(),
			issuer: _c.value.subject.toRDNSequence().__copy__(),
			thisUpdate: _now.utc().__copy__(),
			nextUpdate: new stdgo.time.Time.Time(_expiry.utc().__copy__().__copy__()),
			revokedCertificates: _revokedCertsUTC,
			raw: new stdgo.encoding.asn1.Asn1.RawContent(),
			extensions: new Slice<stdgo.crypto.x509.pkix.Pkix.Extension>().nil()
		} : stdgo.crypto.x509.pkix.Pkix.TBSCertificateList)).__copy__();
		if (_c.value.subjectKeyId.length > ((0 : GoInt))) {
			var _aki:stdgo.crypto.x509.pkix.Pkix.Extension = new stdgo.crypto.x509.pkix.Pkix.Extension();
			_aki.id = new stdgo.encoding.asn1.Asn1.ObjectIdentifier(_oidExtensionAuthorityKeyId);
			{
				var __tmp__ = stdgo.encoding.asn1.Asn1.marshal(Go.toInterface((({id: _c.value.subjectKeyId} : T_authKeyId)).__copy__()));
				_aki.value = __tmp__._0;
				_err = __tmp__._1;
			};
			if (_err != null) {
				return {_0: _crlBytes, _1: _err};
			};
			_tbsCertList.extensions = _tbsCertList.extensions.__append__(_aki.__copy__());
		};
		var __tmp__ = stdgo.encoding.asn1.Asn1.marshal(Go.toInterface(_tbsCertList.__copy__())),
			_tbsCertListContents:Slice<GoUInt8> = __tmp__._0,
			_err:stdgo.Error = __tmp__._1;
		if (_err != null) {
			return {_0: _crlBytes, _1: _err};
		};
		var _signed:Slice<GoUInt8> = _tbsCertListContents;
		if (_hashFunc.__t__ != ((0 : GoUInt))) {
			var _h:stdgo.hash.Hash.Hash = _hashFunc.new_();
			_h.write(_signed);
			_signed = _h.sum(new Slice<GoUInt8>().nil());
		};
		var _signature:Slice<GoByte> = new Slice<GoUInt8>().nil();
		{
			var __tmp__ = _key.sign(_rand, _signed, _hashFunc);
			_signature = __tmp__._0;
			_err = __tmp__._1;
		};
		if (_err != null) {
			return {_0: _crlBytes, _1: _err};
		};
		return stdgo.encoding.asn1.Asn1.marshal(Go.toInterface((({tbscertList: _tbsCertList.__copy__(),
			signatureAlgorithm: new stdgo.crypto.x509.pkix.Pkix.AlgorithmIdentifier(_signatureAlgorithm.__copy__()
			.__copy__()), signatureValue: (({
				bytes: _signature,
				bitLength: _signature.length * ((8 : GoInt))
			} : stdgo.encoding.asn1.Asn1.BitString)).__copy__()} : stdgo.crypto.x509.pkix.Pkix.CertificateList)).__copy__()));
	}

	public function checkCRLSignature(_crl:Pointer<stdgo.crypto.x509.pkix.Pkix.CertificateList>):Error {
		var _c = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		var _algo:SignatureAlgorithm = _getSignatureAlgorithmFromAI(_crl.value.signatureAlgorithm.__copy__());
		return _c.value.checkSignature(_algo, _crl.value.tbscertList.raw.__copy__().__t__, _crl.value.signatureValue.rightAlign());
	}

	public function _getSANExtension():Slice<GoByte> {
		var _c = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		for (_ => _e in _c.value.extensions) {
			if (_e.id.equal(new stdgo.encoding.asn1.Asn1.ObjectIdentifier(_oidExtensionSubjectAltName))) {
				return _e.value;
			};
		};
		return new Slice<GoUInt8>().nil();
	}

	public function _hasNameConstraints():Bool {
		var _c = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		return _oidInExtensions(new stdgo.encoding.asn1.Asn1.ObjectIdentifier(_oidExtensionNameConstraints), _c.value.extensions);
	}

	public function checkSignature(_algo:SignatureAlgorithm, _signed:Slice<GoByte>, _signature:Slice<GoByte>):Error {
		var _c = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		return _checkSignature(_algo, _signed, _signature, Go.toInterface(_c.value.publicKey));
	}

	public function checkSignatureFrom(_parent:Pointer<Certificate>):Error {
		var _c = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		if (_parent.value.version == ((3 : GoInt))
			&& !_parent.value.basicConstraintsValid
			|| _parent.value.basicConstraintsValid
			&& !_parent.value.isCA) {
			return {};
		};
		if (_parent.value.keyUsage.__t__ != ((0 : GoInt))
			&& new KeyUsage(_parent.value.keyUsage.__t__ & keyUsageCertSign.__t__).__t__ == ((0 : GoInt))) {
			return {};
		};
		if (_parent.value.publicKeyAlgorithm.__t__ == unknownPublicKeyAlgorithm.__t__) {
			return errUnsupportedAlgorithm;
		};
		return _parent.value.checkSignature(_c.value.signatureAlgorithm, _c.value.rawTBSCertificate, _c.value.signature);
	}

	public function _hasSANExtension():Bool {
		var _c = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		return _oidInExtensions(new stdgo.encoding.asn1.Asn1.ObjectIdentifier(_oidExtensionSubjectAltName), _c.value.extensions);
	}

	public function equal(_other:Pointer<Certificate>):Bool {
		var _c = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		if ((_c == null || _c.isNil()) || (_other == null || _other.isNil())) {
			return _c == _other;
		};
		return stdgo.bytes.Bytes.equal(_c.value.raw, _other.value.raw);
	}

	public function verifyHostname(_h:GoString):Error {
		var _c = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		var _candidateIP:GoString = _h;
		if (_h.length >= ((3 : GoInt))
			&& _h[((0 : GoInt))] == (("[".code : GoRune))
			&& _h[_h.length - ((1 : GoInt))] == (("]".code : GoRune))) {
			_candidateIP = _h.__slice__(((1 : GoInt)), _h.length - ((1 : GoInt)));
		};
		{
			var _ip:stdgo.net.Net.IP = stdgo.net.Net.parseIP(_candidateIP).__copy__();
			if ((_ip.__t__ != null && !_ip.__t__.isNil())) {
				for (_ => _candidate in _c.value.ipaddresses) {
					if (_ip.equal(_candidate.__copy__())) {
						return ((null : stdgo.Error));
					};
				};
				return new HostnameError(_c, _candidateIP).__copy__();
			};
		};
		var _candidateName:GoString = _toLowerCaseASCII(_h);
		var _validCandidateName:Bool = _validHostnameInput(_candidateName);
		for (_ => _match in _c.value.dnsnames) {
			if (_validCandidateName && _validHostnamePattern(_match)) {
				if (_matchHostnames(_match, _candidateName)) {
					return ((null : stdgo.Error));
				};
			} else {
				if (_matchExactly(_match, _candidateName)) {
					return ((null : stdgo.Error));
				};
			};
		};
		return new HostnameError(_c, _h).__copy__();
	}

	public function _buildChains(_cache:GoMap<Pointer<Certificate>, Slice<Slice<Pointer<Certificate>>>>, _currentChain:Slice<Pointer<Certificate>>,
			_sigChecks:Pointer<GoInt>, _opts:Pointer<VerifyOptions>):{
		var _0:Slice<Slice<Pointer<Certificate>>>;
		var _1:Error;
	} {
		var _c = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		var _chains:Slice<Slice<Pointer<Certificate>>> = new Slice<Slice<Pointer<Certificate>>>().nil(),
			_err:Error = ((null : stdgo.Error));
		var _hintErr:Error = ((null : stdgo.Error)),
			_hintCert:Pointer<Certificate> = new Pointer<Certificate>().nil();
		var _considerCandidate:(GoInt, Pointer<Certificate>) -> Void = function(_certType:GoInt, _candidate:Pointer<Certificate>):Void {
			for (_ => _cert in _currentChain) {
				if (_cert.value.equal(_candidate)) {
					return;
				};
			};
			if ((_sigChecks == null || _sigChecks.isNil())) {
				_sigChecks = Go.pointer(((0 : GoInt)));
			};
			_sigChecks.value++;
			if (_sigChecks.value > _maxChainSignatureChecks) {
				_err = stdgo.errors.Errors.new_("x509: signature check attempts limit reached while verifying certificate chain");
				return;
			};
			{
				var _err:stdgo.Error = _c.value.checkSignatureFrom(_candidate);
				if (_err != null) {
					if (_hintErr == null) {
						_hintErr = _err;
						_hintCert = _candidate;
					};
					return;
				};
			};
			_err = _candidate.value._isValid(_certType, _currentChain, _opts);
			if (_err != null) {
				return;
			};
			if (_certType == _rootCertificate) {
				_chains = _chains.__append__(_appendToFreshChain(_currentChain, _candidate));
			} else if (_certType == _intermediateCertificate) {
				if ((_cache == null || _cache.isNil())) {
					_cache = new GoMap<Pointer<Certificate>,
						Slice<Slice<Pointer<Certificate>>>>(new stdgo.reflect.Reflect._Type(stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("Certificate",
							[],
						stdgo.reflect.Reflect.GoType.named("Certificate", [],
							stdgo.reflect.Reflect.GoType.structType([
								{
									name: "raw",
									embedded: false,
									tag: "",
									type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(uint8_kind))
								},
								{
									name: "rawTBSCertificate",
									embedded: false,
									tag: "",
									type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(uint8_kind))
								},
								{
									name: "rawSubjectPublicKeyInfo",
									embedded: false,
									tag: "",
									type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(uint8_kind))
								},
								{
									name: "rawSubject",
									embedded: false,
									tag: "",
									type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(uint8_kind))
								},
								{
									name: "rawIssuer",
									embedded: false,
									tag: "",
									type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(uint8_kind))
								},
								{
									name: "signature",
									embedded: false,
									tag: "",
									type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(uint8_kind))
								},
								{
									name: "signatureAlgorithm",
									embedded: false,
									tag: "",
									type: stdgo.reflect.Reflect.GoType.named("SignatureAlgorithm", [], stdgo.reflect.Reflect.GoType.basic(int_kind))
								},
								{
									name: "publicKeyAlgorithm",
									embedded: false,
									tag: "",
									type: stdgo.reflect.Reflect.GoType.named("PublicKeyAlgorithm", [], stdgo.reflect.Reflect.GoType.basic(int_kind))
								},
								{
									name: "publicKey",
									embedded: false,
									tag: "",
									type: stdgo.reflect.Reflect.GoType.interfaceType(true, [])
								},
								{
									name: "version",
									embedded: false,
									tag: "",
									type: stdgo.reflect.Reflect.GoType.basic(int_kind)
								},
								{
									name: "serialNumber",
									embedded: false,
									tag: "",
									type: stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("stdgo.math.big.Big.Int_", [],
										stdgo.reflect.Reflect.GoType.structType([
											{
												name: "_neg",
												embedded: false,
												tag: "",
												type: stdgo.reflect.Reflect.GoType.basic(bool_kind)
											},
											{
												name: "_abs",
												embedded: false,
												tag: "",
												type: stdgo.reflect.Reflect.GoType.named("stdgo.math.big.Big.T_nat", [],
													stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.named("stdgo.math.big.Big.Word", [],
														stdgo.reflect.Reflect.GoType.basic(uint_kind))))
											}
										])))
								},
								{
									name: "issuer",
									embedded: false,
									tag: "",
									type: stdgo.reflect.Reflect.GoType.named("stdgo.crypto.x509.pkix.Pkix.Name", [], stdgo.reflect.Reflect.GoType.structType([
										{
											name: "country",
											embedded: false,
											tag: "",
											type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(string_kind))
										},
										{
											name: "organization",
											embedded: false,
											tag: "",
											type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(string_kind))
										},
										{
											name: "organizationalUnit",
											embedded: false,
											tag: "",
											type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(string_kind))
										},
										{
											name: "locality",
											embedded: false,
											tag: "",
											type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(string_kind))
										},
										{
											name: "province",
											embedded: false,
											tag: "",
											type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(string_kind))
										},
										{
											name: "streetAddress",
											embedded: false,
											tag: "",
											type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(string_kind))
										},
										{
											name: "postalCode",
											embedded: false,
											tag: "",
											type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(string_kind))
										},
										{
											name: "serialNumber",
											embedded: false,
											tag: "",
											type: stdgo.reflect.Reflect.GoType.basic(string_kind)
										},
										{
											name: "commonName",
											embedded: false,
											tag: "",
											type: stdgo.reflect.Reflect.GoType.basic(string_kind)
										},
										{
											name: "names",
											embedded: false,
											tag: "",
											type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.named("stdgo.crypto.x509.pkix.Pkix.AttributeTypeAndValue",
													[], stdgo.reflect.Reflect.GoType.structType([
												{
													name: "type",
													embedded: false,
													tag: "",
													type: stdgo.reflect.Reflect.GoType.named("stdgo.encoding.asn1.Asn1.ObjectIdentifier", [],
														stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(int_kind)))
												},
												{
													name: "value",
													embedded: false,
													tag: "",
													type: stdgo.reflect.Reflect.GoType.interfaceType(true, [])
												}
											])))
										},
										{
											name: "extraNames",
											embedded: false,
											tag: "",
											type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.named("stdgo.crypto.x509.pkix.Pkix.AttributeTypeAndValue",
													[], stdgo.reflect.Reflect.GoType.invalidType))
										}
									]))
								},
								{
									name: "subject",
									embedded: false,
									tag: "",
									type: stdgo.reflect.Reflect.GoType.named("stdgo.crypto.x509.pkix.Pkix.Name", [], stdgo.reflect.Reflect.GoType.structType([
										{
											name: "country",
											embedded: false,
											tag: "",
											type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(string_kind))
										},
										{
											name: "organization",
											embedded: false,
											tag: "",
											type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(string_kind))
										},
										{
											name: "organizationalUnit",
											embedded: false,
											tag: "",
											type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(string_kind))
										},
										{
											name: "locality",
											embedded: false,
											tag: "",
											type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(string_kind))
										},
										{
											name: "province",
											embedded: false,
											tag: "",
											type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(string_kind))
										},
										{
											name: "streetAddress",
											embedded: false,
											tag: "",
											type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(string_kind))
										},
										{
											name: "postalCode",
											embedded: false,
											tag: "",
											type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(string_kind))
										},
										{
											name: "serialNumber",
											embedded: false,
											tag: "",
											type: stdgo.reflect.Reflect.GoType.basic(string_kind)
										},
										{
											name: "commonName",
											embedded: false,
											tag: "",
											type: stdgo.reflect.Reflect.GoType.basic(string_kind)
										},
										{
											name: "names",
											embedded: false,
											tag: "",
											type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.named("stdgo.crypto.x509.pkix.Pkix.AttributeTypeAndValue",
													[], stdgo.reflect.Reflect.GoType.structType([
												{
													name: "type",
													embedded: false,
													tag: "",
													type: stdgo.reflect.Reflect.GoType.named("stdgo.encoding.asn1.Asn1.ObjectIdentifier", [],
														stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(int_kind)))
												},
												{
													name: "value",
													embedded: false,
													tag: "",
													type: stdgo.reflect.Reflect.GoType.interfaceType(true, [])
												}
											])))
										},
										{
											name: "extraNames",
											embedded: false,
											tag: "",
											type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.named("stdgo.crypto.x509.pkix.Pkix.AttributeTypeAndValue",
													[], stdgo.reflect.Reflect.GoType.invalidType))
										}
									]))
								},
								{
									name: "notBefore",
									embedded: false,
									tag: "",
									type: stdgo.reflect.Reflect.GoType.named("stdgo.time.Time.Time", [], stdgo.reflect.Reflect.GoType.structType([
										{
											name: "_wall",
											embedded: false,
											tag: "",
											type: stdgo.reflect.Reflect.GoType.basic(uint64_kind)
										},
										{
											name: "_ext",
											embedded: false,
											tag: "",
											type: stdgo.reflect.Reflect.GoType.basic(int64_kind)
										},
										{
											name: "_loc",
											embedded: false,
											tag: "",
											type: stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("stdgo.time.Time.Location", [],
												stdgo.reflect.Reflect.GoType.structType([
													{
														name: "_name",
														embedded: false,
														tag: "",
														type: stdgo.reflect.Reflect.GoType.basic(string_kind)
													},
													{
														name: "_zone",
														embedded: false,
														tag: "",
														type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.named("stdgo.time.Time.T_zone",
																[], stdgo.reflect.Reflect.GoType.structType([
															{
																name: "_name",
																embedded: false,
																tag: "",
																type: stdgo.reflect.Reflect.GoType.basic(string_kind)
															},
															{
																name: "_offset",
																embedded: false,
																tag: "",
																type: stdgo.reflect.Reflect.GoType.basic(int_kind)
															},
															{
																name: "_isDST",
																embedded: false,
																tag: "",
																type: stdgo.reflect.Reflect.GoType.basic(bool_kind)
															}
														])))
													},
													{
														name: "_tx",
														embedded: false,
														tag: "",
														type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.named("stdgo.time.Time.T_zoneTrans",
																[], stdgo.reflect.Reflect.GoType.structType([
															{
																name: "_when",
																embedded: false,
																tag: "",
																type: stdgo.reflect.Reflect.GoType.basic(int64_kind)
															},
															{
																name: "_index",
																embedded: false,
																tag: "",
																type: stdgo.reflect.Reflect.GoType.basic(uint8_kind)
															},
															{
																name: "_isstd",
																embedded: false,
																tag: "",
																type: stdgo.reflect.Reflect.GoType.basic(bool_kind)
															},
															{
																name: "_isutc",
																embedded: false,
																tag: "",
																type: stdgo.reflect.Reflect.GoType.basic(bool_kind)
															}
														])))
													},
													{
														name: "_extend",
														embedded: false,
														tag: "",
														type: stdgo.reflect.Reflect.GoType.basic(string_kind)
													},
													{
														name: "_cacheStart",
														embedded: false,
														tag: "",
														type: stdgo.reflect.Reflect.GoType.basic(int64_kind)
													},
													{
														name: "_cacheEnd",
														embedded: false,
														tag: "",
														type: stdgo.reflect.Reflect.GoType.basic(int64_kind)
													},
													{
														name: "_cacheZone",
														embedded: false,
														tag: "",
														type: stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("stdgo.time.Time.T_zone",
																[], stdgo.reflect.Reflect.GoType.invalidType))
													}
												])))
										}
									]))
								},
								{
									name: "notAfter",
									embedded: false,
									tag: "",
									type: stdgo.reflect.Reflect.GoType.named("stdgo.time.Time.Time", [], stdgo.reflect.Reflect.GoType.structType([
										{
											name: "_wall",
											embedded: false,
											tag: "",
											type: stdgo.reflect.Reflect.GoType.basic(uint64_kind)
										},
										{
											name: "_ext",
											embedded: false,
											tag: "",
											type: stdgo.reflect.Reflect.GoType.basic(int64_kind)
										},
										{
											name: "_loc",
											embedded: false,
											tag: "",
											type: stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("stdgo.time.Time.Location", [],
												stdgo.reflect.Reflect.GoType.structType([
													{
														name: "_name",
														embedded: false,
														tag: "",
														type: stdgo.reflect.Reflect.GoType.basic(string_kind)
													},
													{
														name: "_zone",
														embedded: false,
														tag: "",
														type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.named("stdgo.time.Time.T_zone",
																[], stdgo.reflect.Reflect.GoType.structType([
															{
																name: "_name",
																embedded: false,
																tag: "",
																type: stdgo.reflect.Reflect.GoType.basic(string_kind)
															},
															{
																name: "_offset",
																embedded: false,
																tag: "",
																type: stdgo.reflect.Reflect.GoType.basic(int_kind)
															},
															{
																name: "_isDST",
																embedded: false,
																tag: "",
																type: stdgo.reflect.Reflect.GoType.basic(bool_kind)
															}
														])))
													},
													{
														name: "_tx",
														embedded: false,
														tag: "",
														type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.named("stdgo.time.Time.T_zoneTrans",
																[], stdgo.reflect.Reflect.GoType.structType([
															{
																name: "_when",
																embedded: false,
																tag: "",
																type: stdgo.reflect.Reflect.GoType.basic(int64_kind)
															},
															{
																name: "_index",
																embedded: false,
																tag: "",
																type: stdgo.reflect.Reflect.GoType.basic(uint8_kind)
															},
															{
																name: "_isstd",
																embedded: false,
																tag: "",
																type: stdgo.reflect.Reflect.GoType.basic(bool_kind)
															},
															{
																name: "_isutc",
																embedded: false,
																tag: "",
																type: stdgo.reflect.Reflect.GoType.basic(bool_kind)
															}
														])))
													},
													{
														name: "_extend",
														embedded: false,
														tag: "",
														type: stdgo.reflect.Reflect.GoType.basic(string_kind)
													},
													{
														name: "_cacheStart",
														embedded: false,
														tag: "",
														type: stdgo.reflect.Reflect.GoType.basic(int64_kind)
													},
													{
														name: "_cacheEnd",
														embedded: false,
														tag: "",
														type: stdgo.reflect.Reflect.GoType.basic(int64_kind)
													},
													{
														name: "_cacheZone",
														embedded: false,
														tag: "",
														type: stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("stdgo.time.Time.T_zone",
																[], stdgo.reflect.Reflect.GoType.invalidType))
													}
												])))
										}
									]))
								},
								{
									name: "keyUsage",
									embedded: false,
									tag: "",
									type: stdgo.reflect.Reflect.GoType.named("KeyUsage", [], stdgo.reflect.Reflect.GoType.basic(int_kind))
								},
								{
									name: "extensions",
									embedded: false,
									tag: "",
									type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.named("stdgo.crypto.x509.pkix.Pkix.Extension",
										[], stdgo.reflect.Reflect.GoType.structType([
											{
												name: "id",
												embedded: false,
												tag: "",
												type: stdgo.reflect.Reflect.GoType.named("stdgo.encoding.asn1.Asn1.ObjectIdentifier", [],
													stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(int_kind)))
											},
											{
												name: "critical",
												embedded: false,
												tag: "",
												type: stdgo.reflect.Reflect.GoType.basic(bool_kind)
											},
											{
												name: "value",
												embedded: false,
												tag: "",
												type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(uint8_kind))
											}
										])))
								},
								{
									name: "extraExtensions",
									embedded: false,
									tag: "",
									type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.named("stdgo.crypto.x509.pkix.Pkix.Extension",
										[], stdgo.reflect.Reflect.GoType.structType([
											{
												name: "id",
												embedded: false,
												tag: "",
												type: stdgo.reflect.Reflect.GoType.named("stdgo.encoding.asn1.Asn1.ObjectIdentifier", [],
													stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(int_kind)))
											},
											{
												name: "critical",
												embedded: false,
												tag: "",
												type: stdgo.reflect.Reflect.GoType.basic(bool_kind)
											},
											{
												name: "value",
												embedded: false,
												tag: "",
												type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(uint8_kind))
											}
										])))
								},
								{
									name: "unhandledCriticalExtensions",
									embedded: false,
									tag: "",
									type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.named("stdgo.encoding.asn1.Asn1.ObjectIdentifier",
											[],
										stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(int_kind))))
								},
								{
									name: "extKeyUsage",
									embedded: false,
									tag: "",
									type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.named("ExtKeyUsage", [],
										stdgo.reflect.Reflect.GoType.basic(int_kind)))
								},
								{
									name: "unknownExtKeyUsage",
									embedded: false,
									tag: "",
									type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.named("stdgo.encoding.asn1.Asn1.ObjectIdentifier",
											[],
										stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(int_kind))))
								},
								{
									name: "basicConstraintsValid",
									embedded: false,
									tag: "",
									type: stdgo.reflect.Reflect.GoType.basic(bool_kind)
								},
								{
									name: "isCA",
									embedded: false,
									tag: "",
									type: stdgo.reflect.Reflect.GoType.basic(bool_kind)
								},
								{
									name: "maxPathLen",
									embedded: false,
									tag: "",
									type: stdgo.reflect.Reflect.GoType.basic(int_kind)
								},
								{
									name: "maxPathLenZero",
									embedded: false,
									tag: "",
									type: stdgo.reflect.Reflect.GoType.basic(bool_kind)
								},
								{
									name: "subjectKeyId",
									embedded: false,
									tag: "",
									type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(uint8_kind))
								},
								{
									name: "authorityKeyId",
									embedded: false,
									tag: "",
									type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(uint8_kind))
								},
								{
									name: "ocspserver",
									embedded: false,
									tag: "",
									type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(string_kind))
								},
								{
									name: "issuingCertificateURL",
									embedded: false,
									tag: "",
									type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(string_kind))
								},
								{
									name: "dnsnames",
									embedded: false,
									tag: "",
									type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(string_kind))
								},
								{
									name: "emailAddresses",
									embedded: false,
									tag: "",
									type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(string_kind))
								},
								{
									name: "ipaddresses",
									embedded: false,
									tag: "",
									type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.named("stdgo.net.Net.IP", [],
										stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(uint8_kind))))
								},
								{
									name: "uris",
									embedded: false,
									tag: "",
									type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("stdgo.net.url.Url.URL",
											[], stdgo.reflect.Reflect.GoType.structType([
										{
											name: "scheme",
											embedded: false,
											tag: "",
											type: stdgo.reflect.Reflect.GoType.basic(string_kind)
										},
										{
											name: "opaque",
											embedded: false,
											tag: "",
											type: stdgo.reflect.Reflect.GoType.basic(string_kind)
										},
										{
											name: "user",
											embedded: false,
											tag: "",
											type: stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("stdgo.net.url.Url.Userinfo", [],
												stdgo.reflect.Reflect.GoType.structType([
													{
														name: "_username",
														embedded: false,
														tag: "",
														type: stdgo.reflect.Reflect.GoType.basic(string_kind)
													},
													{
														name: "_password",
														embedded: false,
														tag: "",
														type: stdgo.reflect.Reflect.GoType.basic(string_kind)
													},
													{
														name: "_passwordSet",
														embedded: false,
														tag: "",
														type: stdgo.reflect.Reflect.GoType.basic(bool_kind)
													}
												])))
										},
										{
											name: "host",
											embedded: false,
											tag: "",
											type: stdgo.reflect.Reflect.GoType.basic(string_kind)
										},
										{
											name: "path",
											embedded: false,
											tag: "",
											type: stdgo.reflect.Reflect.GoType.basic(string_kind)
										},
										{
											name: "rawPath",
											embedded: false,
											tag: "",
											type: stdgo.reflect.Reflect.GoType.basic(string_kind)
										},
										{
											name: "forceQuery",
											embedded: false,
											tag: "",
											type: stdgo.reflect.Reflect.GoType.basic(bool_kind)
										},
										{
											name: "rawQuery",
											embedded: false,
											tag: "",
											type: stdgo.reflect.Reflect.GoType.basic(string_kind)
										},
										{
											name: "fragment",
											embedded: false,
											tag: "",
											type: stdgo.reflect.Reflect.GoType.basic(string_kind)
										},
										{
											name: "rawFragment",
											embedded: false,
											tag: "",
											type: stdgo.reflect.Reflect.GoType.basic(string_kind)
										}
									]))))
								},
								{
									name: "permittedDNSDomainsCritical",
									embedded: false,
									tag: "",
									type: stdgo.reflect.Reflect.GoType.basic(bool_kind)
								},
								{
									name: "permittedDNSDomains",
									embedded: false,
									tag: "",
									type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(string_kind))
								},
								{
									name: "excludedDNSDomains",
									embedded: false,
									tag: "",
									type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(string_kind))
								},
								{
									name: "permittedIPRanges",
									embedded: false,
									tag: "",
									type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("stdgo.net.Net.IPNet",
											[], stdgo.reflect.Reflect.GoType.structType([
										{
											name: "ip",
											embedded: false,
											tag: "",
											type: stdgo.reflect.Reflect.GoType.named("stdgo.net.Net.IP", [],
												stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(uint8_kind)))
										},
										{
											name: "mask",
											embedded: false,
											tag: "",
											type: stdgo.reflect.Reflect.GoType.named("stdgo.net.Net.IPMask", [],
												stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(uint8_kind)))
										}
									]))))
								},
								{
									name: "excludedIPRanges",
									embedded: false,
									tag: "",
									type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("stdgo.net.Net.IPNet",
											[], stdgo.reflect.Reflect.GoType.structType([
										{
											name: "ip",
											embedded: false,
											tag: "",
											type: stdgo.reflect.Reflect.GoType.named("stdgo.net.Net.IP", [],
												stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(uint8_kind)))
										},
										{
											name: "mask",
											embedded: false,
											tag: "",
											type: stdgo.reflect.Reflect.GoType.named("stdgo.net.Net.IPMask", [],
												stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(uint8_kind)))
										}
									]))))
								},
								{
									name: "permittedEmailAddresses",
									embedded: false,
									tag: "",
									type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(string_kind))
								},
								{
									name: "excludedEmailAddresses",
									embedded: false,
									tag: "",
									type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(string_kind))
								},
								{
									name: "permittedURIDomains",
									embedded: false,
									tag: "",
									type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(string_kind))
								},
								{
									name: "excludedURIDomains",
									embedded: false,
									tag: "",
									type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(string_kind))
								},
								{
									name: "crldistributionPoints",
									embedded: false,
									tag: "",
									type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(string_kind))
								},
								{
									name: "policyIdentifiers",
									embedded: false,
									tag: "",
									type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.named("stdgo.encoding.asn1.Asn1.ObjectIdentifier",
											[],
										stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(int_kind))))
								}
							])))),
						stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("Certificate",
								[], stdgo.reflect.Reflect.GoType.named("Certificate", [], stdgo.reflect.Reflect.GoType.structType([
							{
								name: "raw",
								embedded: false,
								tag: "",
								type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(uint8_kind))
							},
							{
								name: "rawTBSCertificate",
								embedded: false,
								tag: "",
								type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(uint8_kind))
							},
							{
								name: "rawSubjectPublicKeyInfo",
								embedded: false,
								tag: "",
								type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(uint8_kind))
							},
							{
								name: "rawSubject",
								embedded: false,
								tag: "",
								type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(uint8_kind))
							},
							{
								name: "rawIssuer",
								embedded: false,
								tag: "",
								type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(uint8_kind))
							},
							{
								name: "signature",
								embedded: false,
								tag: "",
								type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(uint8_kind))
							},
							{
								name: "signatureAlgorithm",
								embedded: false,
								tag: "",
								type: stdgo.reflect.Reflect.GoType.named("SignatureAlgorithm", [], stdgo.reflect.Reflect.GoType.basic(int_kind))
							},
							{
								name: "publicKeyAlgorithm",
								embedded: false,
								tag: "",
								type: stdgo.reflect.Reflect.GoType.named("PublicKeyAlgorithm", [], stdgo.reflect.Reflect.GoType.basic(int_kind))
							},
							{
								name: "publicKey",
								embedded: false,
								tag: "",
								type: stdgo.reflect.Reflect.GoType.interfaceType(true, [])
							},
							{
								name: "version",
								embedded: false,
								tag: "",
								type: stdgo.reflect.Reflect.GoType.basic(int_kind)
							},
							{
								name: "serialNumber",
								embedded: false,
								tag: "",
								type: stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("stdgo.math.big.Big.Int_", [],
									stdgo.reflect.Reflect.GoType.structType([
										{
											name: "_neg",
											embedded: false,
											tag: "",
											type: stdgo.reflect.Reflect.GoType.basic(bool_kind)
										},
										{
											name: "_abs",
											embedded: false,
											tag: "",
											type: stdgo.reflect.Reflect.GoType.named("stdgo.math.big.Big.T_nat", [],
												stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.named("stdgo.math.big.Big.Word", [],
													stdgo.reflect.Reflect.GoType.basic(uint_kind))))
										}
									])))
							},
							{
								name: "issuer",
								embedded: false,
								tag: "",
								type: stdgo.reflect.Reflect.GoType.named("stdgo.crypto.x509.pkix.Pkix.Name", [], stdgo.reflect.Reflect.GoType.structType([
									{
										name: "country",
										embedded: false,
										tag: "",
										type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(string_kind))
									},
									{
										name: "organization",
										embedded: false,
										tag: "",
										type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(string_kind))
									},
									{
										name: "organizationalUnit",
										embedded: false,
										tag: "",
										type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(string_kind))
									},
									{
										name: "locality",
										embedded: false,
										tag: "",
										type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(string_kind))
									},
									{
										name: "province",
										embedded: false,
										tag: "",
										type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(string_kind))
									},
									{
										name: "streetAddress",
										embedded: false,
										tag: "",
										type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(string_kind))
									},
									{
										name: "postalCode",
										embedded: false,
										tag: "",
										type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(string_kind))
									},
									{
										name: "serialNumber",
										embedded: false,
										tag: "",
										type: stdgo.reflect.Reflect.GoType.basic(string_kind)
									},
									{
										name: "commonName",
										embedded: false,
										tag: "",
										type: stdgo.reflect.Reflect.GoType.basic(string_kind)
									},
									{
										name: "names",
										embedded: false,
										tag: "",
										type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.named("stdgo.crypto.x509.pkix.Pkix.AttributeTypeAndValue",
													[], stdgo.reflect.Reflect.GoType.structType([
											{
												name: "type",
												embedded: false,
												tag: "",
												type: stdgo.reflect.Reflect.GoType.named("stdgo.encoding.asn1.Asn1.ObjectIdentifier", [],
													stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(int_kind)))
											},
											{
												name: "value",
												embedded: false,
												tag: "",
												type: stdgo.reflect.Reflect.GoType.interfaceType(true, [])
											}
										])))
									},
									{
										name: "extraNames",
										embedded: false,
										tag: "",
										type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.named("stdgo.crypto.x509.pkix.Pkix.AttributeTypeAndValue",
													[], stdgo.reflect.Reflect.GoType.invalidType))
									}
								]))
							},
							{
								name: "subject",
								embedded: false,
								tag: "",
								type: stdgo.reflect.Reflect.GoType.named("stdgo.crypto.x509.pkix.Pkix.Name", [], stdgo.reflect.Reflect.GoType.structType([
									{
										name: "country",
										embedded: false,
										tag: "",
										type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(string_kind))
									},
									{
										name: "organization",
										embedded: false,
										tag: "",
										type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(string_kind))
									},
									{
										name: "organizationalUnit",
										embedded: false,
										tag: "",
										type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(string_kind))
									},
									{
										name: "locality",
										embedded: false,
										tag: "",
										type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(string_kind))
									},
									{
										name: "province",
										embedded: false,
										tag: "",
										type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(string_kind))
									},
									{
										name: "streetAddress",
										embedded: false,
										tag: "",
										type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(string_kind))
									},
									{
										name: "postalCode",
										embedded: false,
										tag: "",
										type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(string_kind))
									},
									{
										name: "serialNumber",
										embedded: false,
										tag: "",
										type: stdgo.reflect.Reflect.GoType.basic(string_kind)
									},
									{
										name: "commonName",
										embedded: false,
										tag: "",
										type: stdgo.reflect.Reflect.GoType.basic(string_kind)
									},
									{
										name: "names",
										embedded: false,
										tag: "",
										type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.named("stdgo.crypto.x509.pkix.Pkix.AttributeTypeAndValue",
													[], stdgo.reflect.Reflect.GoType.structType([
											{
												name: "type",
												embedded: false,
												tag: "",
												type: stdgo.reflect.Reflect.GoType.named("stdgo.encoding.asn1.Asn1.ObjectIdentifier", [],
													stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(int_kind)))
											},
											{
												name: "value",
												embedded: false,
												tag: "",
												type: stdgo.reflect.Reflect.GoType.interfaceType(true, [])
											}
										])))
									},
									{
										name: "extraNames",
										embedded: false,
										tag: "",
										type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.named("stdgo.crypto.x509.pkix.Pkix.AttributeTypeAndValue",
													[], stdgo.reflect.Reflect.GoType.invalidType))
									}
								]))
							},
							{
								name: "notBefore",
								embedded: false,
								tag: "",
								type: stdgo.reflect.Reflect.GoType.named("stdgo.time.Time.Time", [], stdgo.reflect.Reflect.GoType.structType([
									{
										name: "_wall",
										embedded: false,
										tag: "",
										type: stdgo.reflect.Reflect.GoType.basic(uint64_kind)
									},
									{
										name: "_ext",
										embedded: false,
										tag: "",
										type: stdgo.reflect.Reflect.GoType.basic(int64_kind)
									},
									{
										name: "_loc",
										embedded: false,
										tag: "",
										type: stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("stdgo.time.Time.Location", [],
											stdgo.reflect.Reflect.GoType.structType([
												{
													name: "_name",
													embedded: false,
													tag: "",
													type: stdgo.reflect.Reflect.GoType.basic(string_kind)
												},
												{
													name: "_zone",
													embedded: false,
													tag: "",
													type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.named("stdgo.time.Time.T_zone",
														[], stdgo.reflect.Reflect.GoType.structType([
															{
																name: "_name",
																embedded: false,
																tag: "",
																type: stdgo.reflect.Reflect.GoType.basic(string_kind)
															},
															{
																name: "_offset",
																embedded: false,
																tag: "",
																type: stdgo.reflect.Reflect.GoType.basic(int_kind)
															},
															{
																name: "_isDST",
																embedded: false,
																tag: "",
																type: stdgo.reflect.Reflect.GoType.basic(bool_kind)
															}
														])))
												},
												{
													name: "_tx",
													embedded: false,
													tag: "",
													type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.named("stdgo.time.Time.T_zoneTrans",
																[], stdgo.reflect.Reflect.GoType.structType([
														{
															name: "_when",
															embedded: false,
															tag: "",
															type: stdgo.reflect.Reflect.GoType.basic(int64_kind)
														},
														{
															name: "_index",
															embedded: false,
															tag: "",
															type: stdgo.reflect.Reflect.GoType.basic(uint8_kind)
														},
														{
															name: "_isstd",
															embedded: false,
															tag: "",
															type: stdgo.reflect.Reflect.GoType.basic(bool_kind)
														},
														{
															name: "_isutc",
															embedded: false,
															tag: "",
															type: stdgo.reflect.Reflect.GoType.basic(bool_kind)
														}
													])))
												},
												{
													name: "_extend",
													embedded: false,
													tag: "",
													type: stdgo.reflect.Reflect.GoType.basic(string_kind)
												},
												{
													name: "_cacheStart",
													embedded: false,
													tag: "",
													type: stdgo.reflect.Reflect.GoType.basic(int64_kind)
												},
												{
													name: "_cacheEnd",
													embedded: false,
													tag: "",
													type: stdgo.reflect.Reflect.GoType.basic(int64_kind)
												},
												{
													name: "_cacheZone",
													embedded: false,
													tag: "",
													type: stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("stdgo.time.Time.T_zone",
														[], stdgo.reflect.Reflect.GoType.invalidType))
												}
											])))
									}
								]))
							},
							{
								name: "notAfter",
								embedded: false,
								tag: "",
								type: stdgo.reflect.Reflect.GoType.named("stdgo.time.Time.Time", [], stdgo.reflect.Reflect.GoType.structType([
									{
										name: "_wall",
										embedded: false,
										tag: "",
										type: stdgo.reflect.Reflect.GoType.basic(uint64_kind)
									},
									{
										name: "_ext",
										embedded: false,
										tag: "",
										type: stdgo.reflect.Reflect.GoType.basic(int64_kind)
									},
									{
										name: "_loc",
										embedded: false,
										tag: "",
										type: stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("stdgo.time.Time.Location", [],
											stdgo.reflect.Reflect.GoType.structType([
												{
													name: "_name",
													embedded: false,
													tag: "",
													type: stdgo.reflect.Reflect.GoType.basic(string_kind)
												},
												{
													name: "_zone",
													embedded: false,
													tag: "",
													type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.named("stdgo.time.Time.T_zone",
														[], stdgo.reflect.Reflect.GoType.structType([
															{
																name: "_name",
																embedded: false,
																tag: "",
																type: stdgo.reflect.Reflect.GoType.basic(string_kind)
															},
															{
																name: "_offset",
																embedded: false,
																tag: "",
																type: stdgo.reflect.Reflect.GoType.basic(int_kind)
															},
															{
																name: "_isDST",
																embedded: false,
																tag: "",
																type: stdgo.reflect.Reflect.GoType.basic(bool_kind)
															}
														])))
												},
												{
													name: "_tx",
													embedded: false,
													tag: "",
													type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.named("stdgo.time.Time.T_zoneTrans",
																[], stdgo.reflect.Reflect.GoType.structType([
														{
															name: "_when",
															embedded: false,
															tag: "",
															type: stdgo.reflect.Reflect.GoType.basic(int64_kind)
														},
														{
															name: "_index",
															embedded: false,
															tag: "",
															type: stdgo.reflect.Reflect.GoType.basic(uint8_kind)
														},
														{
															name: "_isstd",
															embedded: false,
															tag: "",
															type: stdgo.reflect.Reflect.GoType.basic(bool_kind)
														},
														{
															name: "_isutc",
															embedded: false,
															tag: "",
															type: stdgo.reflect.Reflect.GoType.basic(bool_kind)
														}
													])))
												},
												{
													name: "_extend",
													embedded: false,
													tag: "",
													type: stdgo.reflect.Reflect.GoType.basic(string_kind)
												},
												{
													name: "_cacheStart",
													embedded: false,
													tag: "",
													type: stdgo.reflect.Reflect.GoType.basic(int64_kind)
												},
												{
													name: "_cacheEnd",
													embedded: false,
													tag: "",
													type: stdgo.reflect.Reflect.GoType.basic(int64_kind)
												},
												{
													name: "_cacheZone",
													embedded: false,
													tag: "",
													type: stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("stdgo.time.Time.T_zone",
														[], stdgo.reflect.Reflect.GoType.invalidType))
												}
											])))
									}
								]))
							},
							{
								name: "keyUsage",
								embedded: false,
								tag: "",
								type: stdgo.reflect.Reflect.GoType.named("KeyUsage", [], stdgo.reflect.Reflect.GoType.basic(int_kind))
							},
							{
								name: "extensions",
								embedded: false,
								tag: "",
								type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.named("stdgo.crypto.x509.pkix.Pkix.Extension", [],
									stdgo.reflect.Reflect.GoType.structType([
										{
											name: "id",
											embedded: false,
											tag: "",
											type: stdgo.reflect.Reflect.GoType.named("stdgo.encoding.asn1.Asn1.ObjectIdentifier", [],
												stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(int_kind)))
										},
										{
											name: "critical",
											embedded: false,
											tag: "",
											type: stdgo.reflect.Reflect.GoType.basic(bool_kind)
										},
										{
											name: "value",
											embedded: false,
											tag: "",
											type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(uint8_kind))
										}
									])))
							},
							{
								name: "extraExtensions",
								embedded: false,
								tag: "",
								type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.named("stdgo.crypto.x509.pkix.Pkix.Extension", [],
									stdgo.reflect.Reflect.GoType.structType([
										{
											name: "id",
											embedded: false,
											tag: "",
											type: stdgo.reflect.Reflect.GoType.named("stdgo.encoding.asn1.Asn1.ObjectIdentifier", [],
												stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(int_kind)))
										},
										{
											name: "critical",
											embedded: false,
											tag: "",
											type: stdgo.reflect.Reflect.GoType.basic(bool_kind)
										},
										{
											name: "value",
											embedded: false,
											tag: "",
											type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(uint8_kind))
										}
									])))
							},
							{
								name: "unhandledCriticalExtensions",
								embedded: false,
								tag: "",
								type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.named("stdgo.encoding.asn1.Asn1.ObjectIdentifier",
									[], stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(int_kind))))
							},
							{
								name: "extKeyUsage",
								embedded: false,
								tag: "",
								type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.named("ExtKeyUsage", [],
									stdgo.reflect.Reflect.GoType.basic(int_kind)))
							},
							{
								name: "unknownExtKeyUsage",
								embedded: false,
								tag: "",
								type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.named("stdgo.encoding.asn1.Asn1.ObjectIdentifier",
									[], stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(int_kind))))
							},
							{
								name: "basicConstraintsValid",
								embedded: false,
								tag: "",
								type: stdgo.reflect.Reflect.GoType.basic(bool_kind)
							},
							{
								name: "isCA",
								embedded: false,
								tag: "",
								type: stdgo.reflect.Reflect.GoType.basic(bool_kind)
							},
							{
								name: "maxPathLen",
								embedded: false,
								tag: "",
								type: stdgo.reflect.Reflect.GoType.basic(int_kind)
							},
							{
								name: "maxPathLenZero",
								embedded: false,
								tag: "",
								type: stdgo.reflect.Reflect.GoType.basic(bool_kind)
							},
							{
								name: "subjectKeyId",
								embedded: false,
								tag: "",
								type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(uint8_kind))
							},
							{
								name: "authorityKeyId",
								embedded: false,
								tag: "",
								type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(uint8_kind))
							},
							{
								name: "ocspserver",
								embedded: false,
								tag: "",
								type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(string_kind))
							},
							{
								name: "issuingCertificateURL",
								embedded: false,
								tag: "",
								type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(string_kind))
							},
							{
								name: "dnsnames",
								embedded: false,
								tag: "",
								type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(string_kind))
							},
							{
								name: "emailAddresses",
								embedded: false,
								tag: "",
								type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(string_kind))
							},
							{
								name: "ipaddresses",
								embedded: false,
								tag: "",
								type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.named("stdgo.net.Net.IP", [],
									stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(uint8_kind))))
							},
							{
								name: "uris",
								embedded: false,
								tag: "",
								type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("stdgo.net.url.Url.URL",
											[], stdgo.reflect.Reflect.GoType.structType([
									{
										name: "scheme",
										embedded: false,
										tag: "",
										type: stdgo.reflect.Reflect.GoType.basic(string_kind)
									},
									{
										name: "opaque",
										embedded: false,
										tag: "",
										type: stdgo.reflect.Reflect.GoType.basic(string_kind)
									},
									{
										name: "user",
										embedded: false,
										tag: "",
										type: stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("stdgo.net.url.Url.Userinfo", [],
											stdgo.reflect.Reflect.GoType.structType([
												{
													name: "_username",
													embedded: false,
													tag: "",
													type: stdgo.reflect.Reflect.GoType.basic(string_kind)
												},
												{
													name: "_password",
													embedded: false,
													tag: "",
													type: stdgo.reflect.Reflect.GoType.basic(string_kind)
												},
												{
													name: "_passwordSet",
													embedded: false,
													tag: "",
													type: stdgo.reflect.Reflect.GoType.basic(bool_kind)
												}
											])))
									},
									{
										name: "host",
										embedded: false,
										tag: "",
										type: stdgo.reflect.Reflect.GoType.basic(string_kind)
									},
									{
										name: "path",
										embedded: false,
										tag: "",
										type: stdgo.reflect.Reflect.GoType.basic(string_kind)
									},
									{
										name: "rawPath",
										embedded: false,
										tag: "",
										type: stdgo.reflect.Reflect.GoType.basic(string_kind)
									},
									{
										name: "forceQuery",
										embedded: false,
										tag: "",
										type: stdgo.reflect.Reflect.GoType.basic(bool_kind)
									},
									{
										name: "rawQuery",
										embedded: false,
										tag: "",
										type: stdgo.reflect.Reflect.GoType.basic(string_kind)
									},
									{
										name: "fragment",
										embedded: false,
										tag: "",
										type: stdgo.reflect.Reflect.GoType.basic(string_kind)
									},
									{
										name: "rawFragment",
										embedded: false,
										tag: "",
										type: stdgo.reflect.Reflect.GoType.basic(string_kind)
									}
								]))))
							},
							{
								name: "permittedDNSDomainsCritical",
								embedded: false,
								tag: "",
								type: stdgo.reflect.Reflect.GoType.basic(bool_kind)
							},
							{
								name: "permittedDNSDomains",
								embedded: false,
								tag: "",
								type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(string_kind))
							},
							{
								name: "excludedDNSDomains",
								embedded: false,
								tag: "",
								type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(string_kind))
							},
							{
								name: "permittedIPRanges",
								embedded: false,
								tag: "",
								type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("stdgo.net.Net.IPNet",
											[], stdgo.reflect.Reflect.GoType.structType([
									{
										name: "ip",
										embedded: false,
										tag: "",
										type: stdgo.reflect.Reflect.GoType.named("stdgo.net.Net.IP", [],
											stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(uint8_kind)))
									},
									{
										name: "mask",
										embedded: false,
										tag: "",
										type: stdgo.reflect.Reflect.GoType.named("stdgo.net.Net.IPMask", [],
											stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(uint8_kind)))
									}
								]))))
							},
							{
								name: "excludedIPRanges",
								embedded: false,
								tag: "",
								type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("stdgo.net.Net.IPNet",
											[], stdgo.reflect.Reflect.GoType.structType([
									{
										name: "ip",
										embedded: false,
										tag: "",
										type: stdgo.reflect.Reflect.GoType.named("stdgo.net.Net.IP", [],
											stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(uint8_kind)))
									},
									{
										name: "mask",
										embedded: false,
										tag: "",
										type: stdgo.reflect.Reflect.GoType.named("stdgo.net.Net.IPMask", [],
											stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(uint8_kind)))
									}
								]))))
							},
							{
								name: "permittedEmailAddresses",
								embedded: false,
								tag: "",
								type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(string_kind))
							},
							{
								name: "excludedEmailAddresses",
								embedded: false,
								tag: "",
								type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(string_kind))
							},
							{
								name: "permittedURIDomains",
								embedded: false,
								tag: "",
								type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(string_kind))
							},
							{
								name: "excludedURIDomains",
								embedded: false,
								tag: "",
								type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(string_kind))
							},
							{
								name: "crldistributionPoints",
								embedded: false,
								tag: "",
								type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(string_kind))
							},
							{
								name: "policyIdentifiers",
								embedded: false,
								tag: "",
								type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.named("stdgo.encoding.asn1.Asn1.ObjectIdentifier",
									[], stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(int_kind))))
							}
						])))))))));
				};
				var __tmp__ = _cache.exists(_candidate) ? {value: _cache[_candidate], ok: true} : {value: _cache.defaultValue(), ok: false},
					_childChains:Slice<Slice<Pointer<Certificate>>> = __tmp__.value, _ok:Bool = __tmp__.ok;
				if (!_ok) {
					{
						var __tmp__ = _candidate.value._buildChains(_cache, _appendToFreshChain(_currentChain, _candidate), _sigChecks, _opts);
						_childChains = __tmp__._0;
						_err = __tmp__._1;
					};
					_cache[_candidate] = _childChains;
				};
				_chains = _chains.__append__(..._childChains.toArray());
			};
		};
		for (_ => _root in _opts.value.roots.value._findPotentialParents(_c)) {
			_considerCandidate(_rootCertificate, _root);
		};
		for (_ => _intermediate in _opts.value.intermediates.value._findPotentialParents(_c)) {
			_considerCandidate(_intermediateCertificate, _intermediate);
		};
		if (_chains.length > ((0 : GoInt))) {
			_err = ((null : stdgo.Error));
		};
		if (_chains.length == ((0 : GoInt)) && _err == null) {
			_err = new UnknownAuthorityError(_c, _hintErr, _hintCert).__copy__();
		};
		return {_0: _chains, _1: _err};
	}

	public function verify(_opts:VerifyOptions):{var _0:Slice<Slice<Pointer<Certificate>>>; var _1:Error;} {
		var _c = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		var _chains:Slice<Slice<Pointer<Certificate>>> = new Slice<Slice<Pointer<Certificate>>>().nil(),
			_err:Error = ((null : stdgo.Error));
		if (_c.value.raw.length == ((0 : GoInt))) {
			return {_0: new Slice<Slice<Pointer<Certificate>>>().nil(), _1: _errNotParsed};
		};
		{
			var _i:GoInt = ((0 : GoInt));
			Go.cfor(_i < _opts.intermediates.value._len(), _i++, {
				var __tmp__ = _opts.intermediates.value._cert(_i),
					_c:Pointer<Certificate> = __tmp__._0,
					_err:stdgo.Error = __tmp__._1;
				if (_err != null) {
					return {_0: new Slice<Slice<Pointer<Certificate>>>().nil(), _1: stdgo.fmt.Fmt.errorf("crypto/x509: error fetching intermediate: %w",
						Go.toInterface(_err))};
				};
				if (_c.value.raw.length == ((0 : GoInt))) {
					return {_0: new Slice<Slice<Pointer<Certificate>>>().nil(), _1: _errNotParsed};
				};
			});
		};
		if ((_opts.roots == null || _opts.roots.isNil()) && stdgo.runtime.Runtime.goos == (("windows" : GoString))) {
			return _c.value._systemVerify(Go.pointer(_opts));
		};
		if ((_opts.roots == null || _opts.roots.isNil())) {
			_opts.roots = _systemRootsPool();
			if ((_opts.roots == null || _opts.roots.isNil())) {
				return {_0: new Slice<Slice<Pointer<Certificate>>>().nil(), _1: new SystemRootsError(_systemRootsErr).__copy__()};
			};
		};
		_err = _c.value._isValid(_leafCertificate, new Slice<Pointer<Certificate>>().nil(), Go.pointer(_opts));
		if (_err != null) {
			return {_0: _chains, _1: _err};
		};
		if (_opts.dnsname.length > ((0 : GoInt))) {
			_err = _c.value.verifyHostname(_opts.dnsname);
			if (_err != null) {
				return {_0: _chains, _1: _err};
			};
		};
		var _candidateChains:Slice<Slice<Pointer<Certificate>>> = new Slice<Slice<Pointer<Certificate>>>().nil();
		if (_opts.roots.value._contains(_c)) {
			_candidateChains = _candidateChains.__append__(new Slice<Pointer<Certificate>>(_c));
		} else {
			{
				{
					var __tmp__ = _c.value._buildChains(new GoMap<Pointer<Certificate>,
						Slice<Slice<Pointer<Certificate>>>>(new stdgo.reflect.Reflect._Type(stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("Certificate",
							[],
						stdgo.reflect.Reflect.GoType.named("Certificate", [],
							stdgo.reflect.Reflect.GoType.structType([
								{
									name: "raw",
									embedded: false,
									tag: "",
									type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(uint8_kind))
								},
								{
									name: "rawTBSCertificate",
									embedded: false,
									tag: "",
									type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(uint8_kind))
								},
								{
									name: "rawSubjectPublicKeyInfo",
									embedded: false,
									tag: "",
									type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(uint8_kind))
								},
								{
									name: "rawSubject",
									embedded: false,
									tag: "",
									type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(uint8_kind))
								},
								{
									name: "rawIssuer",
									embedded: false,
									tag: "",
									type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(uint8_kind))
								},
								{
									name: "signature",
									embedded: false,
									tag: "",
									type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(uint8_kind))
								},
								{
									name: "signatureAlgorithm",
									embedded: false,
									tag: "",
									type: stdgo.reflect.Reflect.GoType.named("SignatureAlgorithm", [], stdgo.reflect.Reflect.GoType.basic(int_kind))
								},
								{
									name: "publicKeyAlgorithm",
									embedded: false,
									tag: "",
									type: stdgo.reflect.Reflect.GoType.named("PublicKeyAlgorithm", [], stdgo.reflect.Reflect.GoType.basic(int_kind))
								},
								{
									name: "publicKey",
									embedded: false,
									tag: "",
									type: stdgo.reflect.Reflect.GoType.interfaceType(true, [])
								},
								{
									name: "version",
									embedded: false,
									tag: "",
									type: stdgo.reflect.Reflect.GoType.basic(int_kind)
								},
								{
									name: "serialNumber",
									embedded: false,
									tag: "",
									type: stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("stdgo.math.big.Big.Int_", [],
										stdgo.reflect.Reflect.GoType.structType([
											{
												name: "_neg",
												embedded: false,
												tag: "",
												type: stdgo.reflect.Reflect.GoType.basic(bool_kind)
											},
											{
												name: "_abs",
												embedded: false,
												tag: "",
												type: stdgo.reflect.Reflect.GoType.named("stdgo.math.big.Big.T_nat", [],
													stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.named("stdgo.math.big.Big.Word", [],
														stdgo.reflect.Reflect.GoType.basic(uint_kind))))
											}
										])))
								},
								{
									name: "issuer",
									embedded: false,
									tag: "",
									type: stdgo.reflect.Reflect.GoType.named("stdgo.crypto.x509.pkix.Pkix.Name", [], stdgo.reflect.Reflect.GoType.structType([
										{
											name: "country",
											embedded: false,
											tag: "",
											type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(string_kind))
										},
										{
											name: "organization",
											embedded: false,
											tag: "",
											type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(string_kind))
										},
										{
											name: "organizationalUnit",
											embedded: false,
											tag: "",
											type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(string_kind))
										},
										{
											name: "locality",
											embedded: false,
											tag: "",
											type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(string_kind))
										},
										{
											name: "province",
											embedded: false,
											tag: "",
											type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(string_kind))
										},
										{
											name: "streetAddress",
											embedded: false,
											tag: "",
											type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(string_kind))
										},
										{
											name: "postalCode",
											embedded: false,
											tag: "",
											type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(string_kind))
										},
										{
											name: "serialNumber",
											embedded: false,
											tag: "",
											type: stdgo.reflect.Reflect.GoType.basic(string_kind)
										},
										{
											name: "commonName",
											embedded: false,
											tag: "",
											type: stdgo.reflect.Reflect.GoType.basic(string_kind)
										},
										{
											name: "names",
											embedded: false,
											tag: "",
											type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.named("stdgo.crypto.x509.pkix.Pkix.AttributeTypeAndValue",
													[], stdgo.reflect.Reflect.GoType.structType([
												{
													name: "type",
													embedded: false,
													tag: "",
													type: stdgo.reflect.Reflect.GoType.named("stdgo.encoding.asn1.Asn1.ObjectIdentifier", [],
														stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(int_kind)))
												},
												{
													name: "value",
													embedded: false,
													tag: "",
													type: stdgo.reflect.Reflect.GoType.interfaceType(true, [])
												}
											])))
										},
										{
											name: "extraNames",
											embedded: false,
											tag: "",
											type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.named("stdgo.crypto.x509.pkix.Pkix.AttributeTypeAndValue",
													[], stdgo.reflect.Reflect.GoType.invalidType))
										}
									]))
								},
								{
									name: "subject",
									embedded: false,
									tag: "",
									type: stdgo.reflect.Reflect.GoType.named("stdgo.crypto.x509.pkix.Pkix.Name", [], stdgo.reflect.Reflect.GoType.structType([
										{
											name: "country",
											embedded: false,
											tag: "",
											type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(string_kind))
										},
										{
											name: "organization",
											embedded: false,
											tag: "",
											type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(string_kind))
										},
										{
											name: "organizationalUnit",
											embedded: false,
											tag: "",
											type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(string_kind))
										},
										{
											name: "locality",
											embedded: false,
											tag: "",
											type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(string_kind))
										},
										{
											name: "province",
											embedded: false,
											tag: "",
											type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(string_kind))
										},
										{
											name: "streetAddress",
											embedded: false,
											tag: "",
											type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(string_kind))
										},
										{
											name: "postalCode",
											embedded: false,
											tag: "",
											type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(string_kind))
										},
										{
											name: "serialNumber",
											embedded: false,
											tag: "",
											type: stdgo.reflect.Reflect.GoType.basic(string_kind)
										},
										{
											name: "commonName",
											embedded: false,
											tag: "",
											type: stdgo.reflect.Reflect.GoType.basic(string_kind)
										},
										{
											name: "names",
											embedded: false,
											tag: "",
											type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.named("stdgo.crypto.x509.pkix.Pkix.AttributeTypeAndValue",
													[], stdgo.reflect.Reflect.GoType.structType([
												{
													name: "type",
													embedded: false,
													tag: "",
													type: stdgo.reflect.Reflect.GoType.named("stdgo.encoding.asn1.Asn1.ObjectIdentifier", [],
														stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(int_kind)))
												},
												{
													name: "value",
													embedded: false,
													tag: "",
													type: stdgo.reflect.Reflect.GoType.interfaceType(true, [])
												}
											])))
										},
										{
											name: "extraNames",
											embedded: false,
											tag: "",
											type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.named("stdgo.crypto.x509.pkix.Pkix.AttributeTypeAndValue",
													[], stdgo.reflect.Reflect.GoType.invalidType))
										}
									]))
								},
								{
									name: "notBefore",
									embedded: false,
									tag: "",
									type: stdgo.reflect.Reflect.GoType.named("stdgo.time.Time.Time", [], stdgo.reflect.Reflect.GoType.structType([
										{
											name: "_wall",
											embedded: false,
											tag: "",
											type: stdgo.reflect.Reflect.GoType.basic(uint64_kind)
										},
										{
											name: "_ext",
											embedded: false,
											tag: "",
											type: stdgo.reflect.Reflect.GoType.basic(int64_kind)
										},
										{
											name: "_loc",
											embedded: false,
											tag: "",
											type: stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("stdgo.time.Time.Location", [],
												stdgo.reflect.Reflect.GoType.structType([
													{
														name: "_name",
														embedded: false,
														tag: "",
														type: stdgo.reflect.Reflect.GoType.basic(string_kind)
													},
													{
														name: "_zone",
														embedded: false,
														tag: "",
														type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.named("stdgo.time.Time.T_zone",
																[], stdgo.reflect.Reflect.GoType.structType([
															{
																name: "_name",
																embedded: false,
																tag: "",
																type: stdgo.reflect.Reflect.GoType.basic(string_kind)
															},
															{
																name: "_offset",
																embedded: false,
																tag: "",
																type: stdgo.reflect.Reflect.GoType.basic(int_kind)
															},
															{
																name: "_isDST",
																embedded: false,
																tag: "",
																type: stdgo.reflect.Reflect.GoType.basic(bool_kind)
															}
														])))
													},
													{
														name: "_tx",
														embedded: false,
														tag: "",
														type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.named("stdgo.time.Time.T_zoneTrans",
																[], stdgo.reflect.Reflect.GoType.structType([
															{
																name: "_when",
																embedded: false,
																tag: "",
																type: stdgo.reflect.Reflect.GoType.basic(int64_kind)
															},
															{
																name: "_index",
																embedded: false,
																tag: "",
																type: stdgo.reflect.Reflect.GoType.basic(uint8_kind)
															},
															{
																name: "_isstd",
																embedded: false,
																tag: "",
																type: stdgo.reflect.Reflect.GoType.basic(bool_kind)
															},
															{
																name: "_isutc",
																embedded: false,
																tag: "",
																type: stdgo.reflect.Reflect.GoType.basic(bool_kind)
															}
														])))
													},
													{
														name: "_extend",
														embedded: false,
														tag: "",
														type: stdgo.reflect.Reflect.GoType.basic(string_kind)
													},
													{
														name: "_cacheStart",
														embedded: false,
														tag: "",
														type: stdgo.reflect.Reflect.GoType.basic(int64_kind)
													},
													{
														name: "_cacheEnd",
														embedded: false,
														tag: "",
														type: stdgo.reflect.Reflect.GoType.basic(int64_kind)
													},
													{
														name: "_cacheZone",
														embedded: false,
														tag: "",
														type: stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("stdgo.time.Time.T_zone",
																[], stdgo.reflect.Reflect.GoType.invalidType))
													}
												])))
										}
									]))
								},
								{
									name: "notAfter",
									embedded: false,
									tag: "",
									type: stdgo.reflect.Reflect.GoType.named("stdgo.time.Time.Time", [], stdgo.reflect.Reflect.GoType.structType([
										{
											name: "_wall",
											embedded: false,
											tag: "",
											type: stdgo.reflect.Reflect.GoType.basic(uint64_kind)
										},
										{
											name: "_ext",
											embedded: false,
											tag: "",
											type: stdgo.reflect.Reflect.GoType.basic(int64_kind)
										},
										{
											name: "_loc",
											embedded: false,
											tag: "",
											type: stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("stdgo.time.Time.Location", [],
												stdgo.reflect.Reflect.GoType.structType([
													{
														name: "_name",
														embedded: false,
														tag: "",
														type: stdgo.reflect.Reflect.GoType.basic(string_kind)
													},
													{
														name: "_zone",
														embedded: false,
														tag: "",
														type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.named("stdgo.time.Time.T_zone",
																[], stdgo.reflect.Reflect.GoType.structType([
															{
																name: "_name",
																embedded: false,
																tag: "",
																type: stdgo.reflect.Reflect.GoType.basic(string_kind)
															},
															{
																name: "_offset",
																embedded: false,
																tag: "",
																type: stdgo.reflect.Reflect.GoType.basic(int_kind)
															},
															{
																name: "_isDST",
																embedded: false,
																tag: "",
																type: stdgo.reflect.Reflect.GoType.basic(bool_kind)
															}
														])))
													},
													{
														name: "_tx",
														embedded: false,
														tag: "",
														type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.named("stdgo.time.Time.T_zoneTrans",
																[], stdgo.reflect.Reflect.GoType.structType([
															{
																name: "_when",
																embedded: false,
																tag: "",
																type: stdgo.reflect.Reflect.GoType.basic(int64_kind)
															},
															{
																name: "_index",
																embedded: false,
																tag: "",
																type: stdgo.reflect.Reflect.GoType.basic(uint8_kind)
															},
															{
																name: "_isstd",
																embedded: false,
																tag: "",
																type: stdgo.reflect.Reflect.GoType.basic(bool_kind)
															},
															{
																name: "_isutc",
																embedded: false,
																tag: "",
																type: stdgo.reflect.Reflect.GoType.basic(bool_kind)
															}
														])))
													},
													{
														name: "_extend",
														embedded: false,
														tag: "",
														type: stdgo.reflect.Reflect.GoType.basic(string_kind)
													},
													{
														name: "_cacheStart",
														embedded: false,
														tag: "",
														type: stdgo.reflect.Reflect.GoType.basic(int64_kind)
													},
													{
														name: "_cacheEnd",
														embedded: false,
														tag: "",
														type: stdgo.reflect.Reflect.GoType.basic(int64_kind)
													},
													{
														name: "_cacheZone",
														embedded: false,
														tag: "",
														type: stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("stdgo.time.Time.T_zone",
																[], stdgo.reflect.Reflect.GoType.invalidType))
													}
												])))
										}
									]))
								},
								{
									name: "keyUsage",
									embedded: false,
									tag: "",
									type: stdgo.reflect.Reflect.GoType.named("KeyUsage", [], stdgo.reflect.Reflect.GoType.basic(int_kind))
								},
								{
									name: "extensions",
									embedded: false,
									tag: "",
									type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.named("stdgo.crypto.x509.pkix.Pkix.Extension",
										[], stdgo.reflect.Reflect.GoType.structType([
											{
												name: "id",
												embedded: false,
												tag: "",
												type: stdgo.reflect.Reflect.GoType.named("stdgo.encoding.asn1.Asn1.ObjectIdentifier", [],
													stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(int_kind)))
											},
											{
												name: "critical",
												embedded: false,
												tag: "",
												type: stdgo.reflect.Reflect.GoType.basic(bool_kind)
											},
											{
												name: "value",
												embedded: false,
												tag: "",
												type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(uint8_kind))
											}
										])))
								},
								{
									name: "extraExtensions",
									embedded: false,
									tag: "",
									type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.named("stdgo.crypto.x509.pkix.Pkix.Extension",
										[], stdgo.reflect.Reflect.GoType.structType([
											{
												name: "id",
												embedded: false,
												tag: "",
												type: stdgo.reflect.Reflect.GoType.named("stdgo.encoding.asn1.Asn1.ObjectIdentifier", [],
													stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(int_kind)))
											},
											{
												name: "critical",
												embedded: false,
												tag: "",
												type: stdgo.reflect.Reflect.GoType.basic(bool_kind)
											},
											{
												name: "value",
												embedded: false,
												tag: "",
												type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(uint8_kind))
											}
										])))
								},
								{
									name: "unhandledCriticalExtensions",
									embedded: false,
									tag: "",
									type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.named("stdgo.encoding.asn1.Asn1.ObjectIdentifier",
											[],
										stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(int_kind))))
								},
								{
									name: "extKeyUsage",
									embedded: false,
									tag: "",
									type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.named("ExtKeyUsage", [],
										stdgo.reflect.Reflect.GoType.basic(int_kind)))
								},
								{
									name: "unknownExtKeyUsage",
									embedded: false,
									tag: "",
									type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.named("stdgo.encoding.asn1.Asn1.ObjectIdentifier",
											[],
										stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(int_kind))))
								},
								{
									name: "basicConstraintsValid",
									embedded: false,
									tag: "",
									type: stdgo.reflect.Reflect.GoType.basic(bool_kind)
								},
								{
									name: "isCA",
									embedded: false,
									tag: "",
									type: stdgo.reflect.Reflect.GoType.basic(bool_kind)
								},
								{
									name: "maxPathLen",
									embedded: false,
									tag: "",
									type: stdgo.reflect.Reflect.GoType.basic(int_kind)
								},
								{
									name: "maxPathLenZero",
									embedded: false,
									tag: "",
									type: stdgo.reflect.Reflect.GoType.basic(bool_kind)
								},
								{
									name: "subjectKeyId",
									embedded: false,
									tag: "",
									type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(uint8_kind))
								},
								{
									name: "authorityKeyId",
									embedded: false,
									tag: "",
									type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(uint8_kind))
								},
								{
									name: "ocspserver",
									embedded: false,
									tag: "",
									type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(string_kind))
								},
								{
									name: "issuingCertificateURL",
									embedded: false,
									tag: "",
									type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(string_kind))
								},
								{
									name: "dnsnames",
									embedded: false,
									tag: "",
									type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(string_kind))
								},
								{
									name: "emailAddresses",
									embedded: false,
									tag: "",
									type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(string_kind))
								},
								{
									name: "ipaddresses",
									embedded: false,
									tag: "",
									type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.named("stdgo.net.Net.IP", [],
										stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(uint8_kind))))
								},
								{
									name: "uris",
									embedded: false,
									tag: "",
									type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("stdgo.net.url.Url.URL",
											[], stdgo.reflect.Reflect.GoType.structType([
										{
											name: "scheme",
											embedded: false,
											tag: "",
											type: stdgo.reflect.Reflect.GoType.basic(string_kind)
										},
										{
											name: "opaque",
											embedded: false,
											tag: "",
											type: stdgo.reflect.Reflect.GoType.basic(string_kind)
										},
										{
											name: "user",
											embedded: false,
											tag: "",
											type: stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("stdgo.net.url.Url.Userinfo", [],
												stdgo.reflect.Reflect.GoType.structType([
													{
														name: "_username",
														embedded: false,
														tag: "",
														type: stdgo.reflect.Reflect.GoType.basic(string_kind)
													},
													{
														name: "_password",
														embedded: false,
														tag: "",
														type: stdgo.reflect.Reflect.GoType.basic(string_kind)
													},
													{
														name: "_passwordSet",
														embedded: false,
														tag: "",
														type: stdgo.reflect.Reflect.GoType.basic(bool_kind)
													}
												])))
										},
										{
											name: "host",
											embedded: false,
											tag: "",
											type: stdgo.reflect.Reflect.GoType.basic(string_kind)
										},
										{
											name: "path",
											embedded: false,
											tag: "",
											type: stdgo.reflect.Reflect.GoType.basic(string_kind)
										},
										{
											name: "rawPath",
											embedded: false,
											tag: "",
											type: stdgo.reflect.Reflect.GoType.basic(string_kind)
										},
										{
											name: "forceQuery",
											embedded: false,
											tag: "",
											type: stdgo.reflect.Reflect.GoType.basic(bool_kind)
										},
										{
											name: "rawQuery",
											embedded: false,
											tag: "",
											type: stdgo.reflect.Reflect.GoType.basic(string_kind)
										},
										{
											name: "fragment",
											embedded: false,
											tag: "",
											type: stdgo.reflect.Reflect.GoType.basic(string_kind)
										},
										{
											name: "rawFragment",
											embedded: false,
											tag: "",
											type: stdgo.reflect.Reflect.GoType.basic(string_kind)
										}
									]))))
								},
								{
									name: "permittedDNSDomainsCritical",
									embedded: false,
									tag: "",
									type: stdgo.reflect.Reflect.GoType.basic(bool_kind)
								},
								{
									name: "permittedDNSDomains",
									embedded: false,
									tag: "",
									type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(string_kind))
								},
								{
									name: "excludedDNSDomains",
									embedded: false,
									tag: "",
									type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(string_kind))
								},
								{
									name: "permittedIPRanges",
									embedded: false,
									tag: "",
									type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("stdgo.net.Net.IPNet",
											[], stdgo.reflect.Reflect.GoType.structType([
										{
											name: "ip",
											embedded: false,
											tag: "",
											type: stdgo.reflect.Reflect.GoType.named("stdgo.net.Net.IP", [],
												stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(uint8_kind)))
										},
										{
											name: "mask",
											embedded: false,
											tag: "",
											type: stdgo.reflect.Reflect.GoType.named("stdgo.net.Net.IPMask", [],
												stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(uint8_kind)))
										}
									]))))
								},
								{
									name: "excludedIPRanges",
									embedded: false,
									tag: "",
									type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("stdgo.net.Net.IPNet",
											[], stdgo.reflect.Reflect.GoType.structType([
										{
											name: "ip",
											embedded: false,
											tag: "",
											type: stdgo.reflect.Reflect.GoType.named("stdgo.net.Net.IP", [],
												stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(uint8_kind)))
										},
										{
											name: "mask",
											embedded: false,
											tag: "",
											type: stdgo.reflect.Reflect.GoType.named("stdgo.net.Net.IPMask", [],
												stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(uint8_kind)))
										}
									]))))
								},
								{
									name: "permittedEmailAddresses",
									embedded: false,
									tag: "",
									type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(string_kind))
								},
								{
									name: "excludedEmailAddresses",
									embedded: false,
									tag: "",
									type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(string_kind))
								},
								{
									name: "permittedURIDomains",
									embedded: false,
									tag: "",
									type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(string_kind))
								},
								{
									name: "excludedURIDomains",
									embedded: false,
									tag: "",
									type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(string_kind))
								},
								{
									name: "crldistributionPoints",
									embedded: false,
									tag: "",
									type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(string_kind))
								},
								{
									name: "policyIdentifiers",
									embedded: false,
									tag: "",
									type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.named("stdgo.encoding.asn1.Asn1.ObjectIdentifier",
											[],
										stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(int_kind))))
								}
							])))),
						stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("Certificate",
								[],
							stdgo.reflect.Reflect.GoType.named("Certificate", [],
								stdgo.reflect.Reflect.GoType.structType([
									{
										name: "raw",
										embedded: false,
										tag: "",
										type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(uint8_kind))
									},
									{
										name: "rawTBSCertificate",
										embedded: false,
										tag: "",
										type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(uint8_kind))
									},
									{
										name: "rawSubjectPublicKeyInfo",
										embedded: false,
										tag: "",
										type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(uint8_kind))
									},
									{
										name: "rawSubject",
										embedded: false,
										tag: "",
										type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(uint8_kind))
									},
									{
										name: "rawIssuer",
										embedded: false,
										tag: "",
										type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(uint8_kind))
									},
									{
										name: "signature",
										embedded: false,
										tag: "",
										type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(uint8_kind))
									},
									{
										name: "signatureAlgorithm",
										embedded: false,
										tag: "",
										type: stdgo.reflect.Reflect.GoType.named("SignatureAlgorithm", [], stdgo.reflect.Reflect.GoType.basic(int_kind))
									},
									{
										name: "publicKeyAlgorithm",
										embedded: false,
										tag: "",
										type: stdgo.reflect.Reflect.GoType.named("PublicKeyAlgorithm", [], stdgo.reflect.Reflect.GoType.basic(int_kind))
									},
									{
										name: "publicKey",
										embedded: false,
										tag: "",
										type: stdgo.reflect.Reflect.GoType.interfaceType(true, [])
									},
									{
										name: "version",
										embedded: false,
										tag: "",
										type: stdgo.reflect.Reflect.GoType.basic(int_kind)
									},
									{
										name: "serialNumber",
										embedded: false,
										tag: "",
										type: stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("stdgo.math.big.Big.Int_", [],
											stdgo.reflect.Reflect.GoType.structType([
												{
													name: "_neg",
													embedded: false,
													tag: "",
													type: stdgo.reflect.Reflect.GoType.basic(bool_kind)
												},
												{
													name: "_abs",
													embedded: false,
													tag: "",
													type: stdgo.reflect.Reflect.GoType.named("stdgo.math.big.Big.T_nat", [],
														stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.named("stdgo.math.big.Big.Word",
															[], stdgo.reflect.Reflect.GoType.basic(uint_kind))))
												}
											])))
									},
									{
										name: "issuer",
										embedded: false,
										tag: "",
										type: stdgo.reflect.Reflect.GoType.named("stdgo.crypto.x509.pkix.Pkix.Name", [],
											stdgo.reflect.Reflect.GoType.structType([
												{
													name: "country",
													embedded: false,
													tag: "",
													type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(string_kind))
												},
												{
													name: "organization",
													embedded: false,
													tag: "",
													type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(string_kind))
												},
												{
													name: "organizationalUnit",
													embedded: false,
													tag: "",
													type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(string_kind))
												},
												{
													name: "locality",
													embedded: false,
													tag: "",
													type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(string_kind))
												},
												{
													name: "province",
													embedded: false,
													tag: "",
													type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(string_kind))
												},
												{
													name: "streetAddress",
													embedded: false,
													tag: "",
													type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(string_kind))
												},
												{
													name: "postalCode",
													embedded: false,
													tag: "",
													type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(string_kind))
												},
												{
													name: "serialNumber",
													embedded: false,
													tag: "",
													type: stdgo.reflect.Reflect.GoType.basic(string_kind)
												},
												{
													name: "commonName",
													embedded: false,
													tag: "",
													type: stdgo.reflect.Reflect.GoType.basic(string_kind)
												},
												{
													name: "names",
													embedded: false,
													tag: "",
													type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.named("stdgo.crypto.x509.pkix.Pkix.AttributeTypeAndValue",
															[], stdgo.reflect.Reflect.GoType.structType([
														{
															name: "type",
															embedded: false,
															tag: "",
															type: stdgo.reflect.Reflect.GoType.named("stdgo.encoding.asn1.Asn1.ObjectIdentifier", [],
																stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(int_kind)))
														},
														{
															name: "value",
															embedded: false,
															tag: "",
															type: stdgo.reflect.Reflect.GoType.interfaceType(true, [])
														}
													])))
												},
												{
													name: "extraNames",
													embedded: false,
													tag: "",
													type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.named("stdgo.crypto.x509.pkix.Pkix.AttributeTypeAndValue",
															[], stdgo.reflect.Reflect.GoType.invalidType))
												}
											]))
									},
									{
										name: "subject",
										embedded: false,
										tag: "",
										type: stdgo.reflect.Reflect.GoType.named("stdgo.crypto.x509.pkix.Pkix.Name", [],
											stdgo.reflect.Reflect.GoType.structType([
												{
													name: "country",
													embedded: false,
													tag: "",
													type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(string_kind))
												},
												{
													name: "organization",
													embedded: false,
													tag: "",
													type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(string_kind))
												},
												{
													name: "organizationalUnit",
													embedded: false,
													tag: "",
													type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(string_kind))
												},
												{
													name: "locality",
													embedded: false,
													tag: "",
													type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(string_kind))
												},
												{
													name: "province",
													embedded: false,
													tag: "",
													type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(string_kind))
												},
												{
													name: "streetAddress",
													embedded: false,
													tag: "",
													type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(string_kind))
												},
												{
													name: "postalCode",
													embedded: false,
													tag: "",
													type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(string_kind))
												},
												{
													name: "serialNumber",
													embedded: false,
													tag: "",
													type: stdgo.reflect.Reflect.GoType.basic(string_kind)
												},
												{
													name: "commonName",
													embedded: false,
													tag: "",
													type: stdgo.reflect.Reflect.GoType.basic(string_kind)
												},
												{
													name: "names",
													embedded: false,
													tag: "",
													type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.named("stdgo.crypto.x509.pkix.Pkix.AttributeTypeAndValue",
															[], stdgo.reflect.Reflect.GoType.structType([
														{
															name: "type",
															embedded: false,
															tag: "",
															type: stdgo.reflect.Reflect.GoType.named("stdgo.encoding.asn1.Asn1.ObjectIdentifier", [],
																stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(int_kind)))
														},
														{
															name: "value",
															embedded: false,
															tag: "",
															type: stdgo.reflect.Reflect.GoType.interfaceType(true, [])
														}
													])))
												},
												{
													name: "extraNames",
													embedded: false,
													tag: "",
													type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.named("stdgo.crypto.x509.pkix.Pkix.AttributeTypeAndValue",
															[], stdgo.reflect.Reflect.GoType.invalidType))
												}
											]))
									},
									{
										name: "notBefore",
										embedded: false,
										tag: "",
										type: stdgo.reflect.Reflect.GoType.named("stdgo.time.Time.Time", [], stdgo.reflect.Reflect.GoType.structType([
											{
												name: "_wall",
												embedded: false,
												tag: "",
												type: stdgo.reflect.Reflect.GoType.basic(uint64_kind)
											},
											{
												name: "_ext",
												embedded: false,
												tag: "",
												type: stdgo.reflect.Reflect.GoType.basic(int64_kind)
											},
											{
												name: "_loc",
												embedded: false,
												tag: "",
												type: stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("stdgo.time.Time.Location", [],
													stdgo.reflect.Reflect.GoType.structType([
														{
															name: "_name",
															embedded: false,
															tag: "",
															type: stdgo.reflect.Reflect.GoType.basic(string_kind)
														},
														{
															name: "_zone",
															embedded: false,
															tag: "",
															type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.named("stdgo.time.Time.T_zone",
																	[], stdgo.reflect.Reflect.GoType.structType([
																{
																	name: "_name",
																	embedded: false,
																	tag: "",
																	type: stdgo.reflect.Reflect.GoType.basic(string_kind)
																},
																{
																	name: "_offset",
																	embedded: false,
																	tag: "",
																	type: stdgo.reflect.Reflect.GoType.basic(int_kind)
																},
																{
																	name: "_isDST",
																	embedded: false,
																	tag: "",
																	type: stdgo.reflect.Reflect.GoType.basic(bool_kind)
																}
															])))
														},
														{
															name: "_tx",
															embedded: false,
															tag: "",
															type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.named("stdgo.time.Time.T_zoneTrans",
																	[], stdgo.reflect.Reflect.GoType.structType([
																{
																	name: "_when",
																	embedded: false,
																	tag: "",
																	type: stdgo.reflect.Reflect.GoType.basic(int64_kind)
																},
																{
																	name: "_index",
																	embedded: false,
																	tag: "",
																	type: stdgo.reflect.Reflect.GoType.basic(uint8_kind)
																},
																{
																	name: "_isstd",
																	embedded: false,
																	tag: "",
																	type: stdgo.reflect.Reflect.GoType.basic(bool_kind)
																},
																{
																	name: "_isutc",
																	embedded: false,
																	tag: "",
																	type: stdgo.reflect.Reflect.GoType.basic(bool_kind)
																}
															])))
														},
														{
															name: "_extend",
															embedded: false,
															tag: "",
															type: stdgo.reflect.Reflect.GoType.basic(string_kind)
														},
														{
															name: "_cacheStart",
															embedded: false,
															tag: "",
															type: stdgo.reflect.Reflect.GoType.basic(int64_kind)
														},
														{
															name: "_cacheEnd",
															embedded: false,
															tag: "",
															type: stdgo.reflect.Reflect.GoType.basic(int64_kind)
														},
														{
															name: "_cacheZone",
															embedded: false,
															tag: "",
															type: stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("stdgo.time.Time.T_zone",
																	[], stdgo.reflect.Reflect.GoType.invalidType))
														}
													])))
											}
										]))
									},
									{
										name: "notAfter",
										embedded: false,
										tag: "",
										type: stdgo.reflect.Reflect.GoType.named("stdgo.time.Time.Time", [], stdgo.reflect.Reflect.GoType.structType([
											{
												name: "_wall",
												embedded: false,
												tag: "",
												type: stdgo.reflect.Reflect.GoType.basic(uint64_kind)
											},
											{
												name: "_ext",
												embedded: false,
												tag: "",
												type: stdgo.reflect.Reflect.GoType.basic(int64_kind)
											},
											{
												name: "_loc",
												embedded: false,
												tag: "",
												type: stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("stdgo.time.Time.Location", [],
													stdgo.reflect.Reflect.GoType.structType([
														{
															name: "_name",
															embedded: false,
															tag: "",
															type: stdgo.reflect.Reflect.GoType.basic(string_kind)
														},
														{
															name: "_zone",
															embedded: false,
															tag: "",
															type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.named("stdgo.time.Time.T_zone",
																	[], stdgo.reflect.Reflect.GoType.structType([
																{
																	name: "_name",
																	embedded: false,
																	tag: "",
																	type: stdgo.reflect.Reflect.GoType.basic(string_kind)
																},
																{
																	name: "_offset",
																	embedded: false,
																	tag: "",
																	type: stdgo.reflect.Reflect.GoType.basic(int_kind)
																},
																{
																	name: "_isDST",
																	embedded: false,
																	tag: "",
																	type: stdgo.reflect.Reflect.GoType.basic(bool_kind)
																}
															])))
														},
														{
															name: "_tx",
															embedded: false,
															tag: "",
															type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.named("stdgo.time.Time.T_zoneTrans",
																	[], stdgo.reflect.Reflect.GoType.structType([
																{
																	name: "_when",
																	embedded: false,
																	tag: "",
																	type: stdgo.reflect.Reflect.GoType.basic(int64_kind)
																},
																{
																	name: "_index",
																	embedded: false,
																	tag: "",
																	type: stdgo.reflect.Reflect.GoType.basic(uint8_kind)
																},
																{
																	name: "_isstd",
																	embedded: false,
																	tag: "",
																	type: stdgo.reflect.Reflect.GoType.basic(bool_kind)
																},
																{
																	name: "_isutc",
																	embedded: false,
																	tag: "",
																	type: stdgo.reflect.Reflect.GoType.basic(bool_kind)
																}
															])))
														},
														{
															name: "_extend",
															embedded: false,
															tag: "",
															type: stdgo.reflect.Reflect.GoType.basic(string_kind)
														},
														{
															name: "_cacheStart",
															embedded: false,
															tag: "",
															type: stdgo.reflect.Reflect.GoType.basic(int64_kind)
														},
														{
															name: "_cacheEnd",
															embedded: false,
															tag: "",
															type: stdgo.reflect.Reflect.GoType.basic(int64_kind)
														},
														{
															name: "_cacheZone",
															embedded: false,
															tag: "",
															type: stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("stdgo.time.Time.T_zone",
																	[], stdgo.reflect.Reflect.GoType.invalidType))
														}
													])))
											}
										]))
									},
									{
										name: "keyUsage",
										embedded: false,
										tag: "",
										type: stdgo.reflect.Reflect.GoType.named("KeyUsage", [], stdgo.reflect.Reflect.GoType.basic(int_kind))
									},
									{
										name: "extensions",
										embedded: false,
										tag: "",
										type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.named("stdgo.crypto.x509.pkix.Pkix.Extension",
												[], stdgo.reflect.Reflect.GoType.structType([
											{
												name: "id",
												embedded: false,
												tag: "",
												type: stdgo.reflect.Reflect.GoType.named("stdgo.encoding.asn1.Asn1.ObjectIdentifier", [],
													stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(int_kind)))
											},
											{
												name: "critical",
												embedded: false,
												tag: "",
												type: stdgo.reflect.Reflect.GoType.basic(bool_kind)
											},
											{
												name: "value",
												embedded: false,
												tag: "",
												type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(uint8_kind))
											}
										])))
									},
									{
										name: "extraExtensions",
										embedded: false,
										tag: "",
										type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.named("stdgo.crypto.x509.pkix.Pkix.Extension",
												[], stdgo.reflect.Reflect.GoType.structType([
											{
												name: "id",
												embedded: false,
												tag: "",
												type: stdgo.reflect.Reflect.GoType.named("stdgo.encoding.asn1.Asn1.ObjectIdentifier", [],
													stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(int_kind)))
											},
											{
												name: "critical",
												embedded: false,
												tag: "",
												type: stdgo.reflect.Reflect.GoType.basic(bool_kind)
											},
											{
												name: "value",
												embedded: false,
												tag: "",
												type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(uint8_kind))
											}
										])))
									},
									{
										name: "unhandledCriticalExtensions",
										embedded: false,
										tag: "",
										type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.named("stdgo.encoding.asn1.Asn1.ObjectIdentifier",
												[],
											stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(int_kind))))
									},
									{
										name: "extKeyUsage",
										embedded: false,
										tag: "",
										type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.named("ExtKeyUsage", [],
											stdgo.reflect.Reflect.GoType.basic(int_kind)))
									},
									{
										name: "unknownExtKeyUsage",
										embedded: false,
										tag: "",
										type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.named("stdgo.encoding.asn1.Asn1.ObjectIdentifier",
												[],
											stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(int_kind))))
									},
									{
										name: "basicConstraintsValid",
										embedded: false,
										tag: "",
										type: stdgo.reflect.Reflect.GoType.basic(bool_kind)
									},
									{
										name: "isCA",
										embedded: false,
										tag: "",
										type: stdgo.reflect.Reflect.GoType.basic(bool_kind)
									},
									{
										name: "maxPathLen",
										embedded: false,
										tag: "",
										type: stdgo.reflect.Reflect.GoType.basic(int_kind)
									},
									{
										name: "maxPathLenZero",
										embedded: false,
										tag: "",
										type: stdgo.reflect.Reflect.GoType.basic(bool_kind)
									},
									{
										name: "subjectKeyId",
										embedded: false,
										tag: "",
										type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(uint8_kind))
									},
									{
										name: "authorityKeyId",
										embedded: false,
										tag: "",
										type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(uint8_kind))
									},
									{
										name: "ocspserver",
										embedded: false,
										tag: "",
										type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(string_kind))
									},
									{
										name: "issuingCertificateURL",
										embedded: false,
										tag: "",
										type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(string_kind))
									},
									{
										name: "dnsnames",
										embedded: false,
										tag: "",
										type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(string_kind))
									},
									{
										name: "emailAddresses",
										embedded: false,
										tag: "",
										type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(string_kind))
									},
									{
										name: "ipaddresses",
										embedded: false,
										tag: "",
										type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.named("stdgo.net.Net.IP", [],
											stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(uint8_kind))))
									},
									{
										name: "uris",
										embedded: false,
										tag: "",
										type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("stdgo.net.url.Url.URL",
												[], stdgo.reflect.Reflect.GoType.structType([
											{
												name: "scheme",
												embedded: false,
												tag: "",
												type: stdgo.reflect.Reflect.GoType.basic(string_kind)
											},
											{
												name: "opaque",
												embedded: false,
												tag: "",
												type: stdgo.reflect.Reflect.GoType.basic(string_kind)
											},
											{
												name: "user",
												embedded: false,
												tag: "",
												type: stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("stdgo.net.url.Url.Userinfo",
													[], stdgo.reflect.Reflect.GoType.structType([
														{
															name: "_username",
															embedded: false,
															tag: "",
															type: stdgo.reflect.Reflect.GoType.basic(string_kind)
														},
														{
															name: "_password",
															embedded: false,
															tag: "",
															type: stdgo.reflect.Reflect.GoType.basic(string_kind)
														},
														{
															name: "_passwordSet",
															embedded: false,
															tag: "",
															type: stdgo.reflect.Reflect.GoType.basic(bool_kind)
														}
													])))
											},
											{
												name: "host",
												embedded: false,
												tag: "",
												type: stdgo.reflect.Reflect.GoType.basic(string_kind)
											},
											{
												name: "path",
												embedded: false,
												tag: "",
												type: stdgo.reflect.Reflect.GoType.basic(string_kind)
											},
											{
												name: "rawPath",
												embedded: false,
												tag: "",
												type: stdgo.reflect.Reflect.GoType.basic(string_kind)
											},
											{
												name: "forceQuery",
												embedded: false,
												tag: "",
												type: stdgo.reflect.Reflect.GoType.basic(bool_kind)
											},
											{
												name: "rawQuery",
												embedded: false,
												tag: "",
												type: stdgo.reflect.Reflect.GoType.basic(string_kind)
											},
											{
												name: "fragment",
												embedded: false,
												tag: "",
												type: stdgo.reflect.Reflect.GoType.basic(string_kind)
											},
											{
												name: "rawFragment",
												embedded: false,
												tag: "",
												type: stdgo.reflect.Reflect.GoType.basic(string_kind)
											}
										]))))
									},
									{
										name: "permittedDNSDomainsCritical",
										embedded: false,
										tag: "",
										type: stdgo.reflect.Reflect.GoType.basic(bool_kind)
									},
									{
										name: "permittedDNSDomains",
										embedded: false,
										tag: "",
										type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(string_kind))
									},
									{
										name: "excludedDNSDomains",
										embedded: false,
										tag: "",
										type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(string_kind))
									},
									{
										name: "permittedIPRanges",
										embedded: false,
										tag: "",
										type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("stdgo.net.Net.IPNet",
												[], stdgo.reflect.Reflect.GoType.structType([
											{
												name: "ip",
												embedded: false,
												tag: "",
												type: stdgo.reflect.Reflect.GoType.named("stdgo.net.Net.IP", [],
													stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(uint8_kind)))
											},
											{
												name: "mask",
												embedded: false,
												tag: "",
												type: stdgo.reflect.Reflect.GoType.named("stdgo.net.Net.IPMask", [],
													stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(uint8_kind)))
											}
										]))))
									},
									{
										name: "excludedIPRanges",
										embedded: false,
										tag: "",
										type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("stdgo.net.Net.IPNet",
												[], stdgo.reflect.Reflect.GoType.structType([
											{
												name: "ip",
												embedded: false,
												tag: "",
												type: stdgo.reflect.Reflect.GoType.named("stdgo.net.Net.IP", [],
													stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(uint8_kind)))
											},
											{
												name: "mask",
												embedded: false,
												tag: "",
												type: stdgo.reflect.Reflect.GoType.named("stdgo.net.Net.IPMask", [],
													stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(uint8_kind)))
											}
										]))))
									},
									{
										name: "permittedEmailAddresses",
										embedded: false,
										tag: "",
										type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(string_kind))
									},
									{
										name: "excludedEmailAddresses",
										embedded: false,
										tag: "",
										type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(string_kind))
									},
									{
										name: "permittedURIDomains",
										embedded: false,
										tag: "",
										type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(string_kind))
									},
									{
										name: "excludedURIDomains",
										embedded: false,
										tag: "",
										type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(string_kind))
									},
									{
										name: "crldistributionPoints",
										embedded: false,
										tag: "",
										type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(string_kind))
									},
									{
										name: "policyIdentifiers",
										embedded: false,
										tag: "",
										type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.named("stdgo.encoding.asn1.Asn1.ObjectIdentifier",
												[],
											stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(int_kind))))
									}
								]))))))))).nil(), new Slice<Pointer<Certificate>>(_c), new Pointer<GoInt>().nil(),
						Go.pointer(_opts));
					_candidateChains = __tmp__._0;
					_err = __tmp__._1;
				};
				if (_err != null) {
					return {_0: new Slice<Slice<Pointer<Certificate>>>().nil(), _1: _err};
				};
			};
		};
		var _keyUsages:Slice<ExtKeyUsage> = _opts.keyUsages;
		if (_keyUsages.length == ((0 : GoInt))) {
			_keyUsages = new Slice<ExtKeyUsage>(extKeyUsageServerAuth);
		};
		for (_ => _usage in _keyUsages) {
			if (_usage.__t__ == extKeyUsageAny.__t__) {
				return {_0: _candidateChains, _1: ((null : stdgo.Error))};
			};
		};
		for (_ => _candidate in _candidateChains) {
			if (_checkChainForKeyUsage(_candidate, _keyUsages)) {
				_chains = _chains.__append__(_candidate);
			};
		};
		if (_chains.length == ((0 : GoInt))) {
			return {_0: new Slice<Slice<Pointer<Certificate>>>().nil(), _1: new CertificateInvalidError(_c, incompatibleUsage, "").__copy__()};
		};
		return {_0: _chains, _1: ((null : stdgo.Error))};
	}

	public function _isValid(_certType:GoInt, _currentChain:Slice<Pointer<Certificate>>, _opts:Pointer<VerifyOptions>):Error {
		var _c = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		if (_c.value.unhandledCriticalExtensions.length > ((0 : GoInt))) {
			return {};
		};
		if (_currentChain.length > ((0 : GoInt))) {
			var _child:Pointer<Certificate> = _currentChain[_currentChain.length - ((1 : GoInt))];
			if (!stdgo.bytes.Bytes.equal(_child.value.rawIssuer, _c.value.rawSubject)) {
				return new CertificateInvalidError(_c, nameMismatch, "").__copy__();
			};
		};
		var _now:stdgo.time.Time.Time = _opts.value.currentTime.__copy__();
		if (_now.isZero()) {
			_now = stdgo.time.Time.now().__copy__();
		};
		if (_now.before(_c.value.notBefore.__copy__())) {
			return (({cert: _c, reason: expired, detail: stdgo.fmt.Fmt.sprintf("current time %s is before %s",
				Go.toInterface(_now.format(stdgo.time.Time.rfc3339)),
				Go.toInterface(_c.value.notBefore.format(stdgo.time.Time.rfc3339)))} : CertificateInvalidError)).__copy__();
		} else if (_now.after(_c.value.notAfter.__copy__())) {
			return (({cert: _c, reason: expired, detail: stdgo.fmt.Fmt.sprintf("current time %s is after %s",
				Go.toInterface(_now.format(stdgo.time.Time.rfc3339)),
				Go.toInterface(_c.value.notAfter.format(stdgo.time.Time.rfc3339)))} : CertificateInvalidError)).__copy__();
		};
		var _maxConstraintComparisons:GoInt = _opts.value.maxConstraintComparisions;
		if (_maxConstraintComparisons == ((0 : GoInt))) {
			_maxConstraintComparisons = ((250000 : GoInt));
		};
		var _comparisonCount:GoInt = ((0 : GoInt));
		var _leaf:Pointer<Certificate> = new Pointer<Certificate>().nil();
		if (_certType == _intermediateCertificate || _certType == _rootCertificate) {
			if (_currentChain.length == ((0 : GoInt))) {
				return stdgo.errors.Errors.new_("x509: internal error: empty chain when appending CA cert");
			};
			_leaf = _currentChain[((0 : GoInt))];
		};
		if ((_certType == _intermediateCertificate || _certType == _rootCertificate)
			&& _c.value._hasNameConstraints()
			&& _leaf.value._hasSANExtension()) {
			var _err:stdgo.Error = _forEachSAN(new vendor.golang_org.x.crypto.cryptobyte.Cryptobyte.String_(_leaf.value._getSANExtension()),
				function(_tag:GoInt, _data:Slice<GoByte>):Error {
					if (_tag == _nameTypeEmail) {
						var _name:GoString = ((_data : GoString));
						var __tmp__ = _parseRFC2821Mailbox(_name), _mailbox:T_rfc2821Mailbox = __tmp__._0, _ok:Bool = __tmp__._1;
						if (!_ok) {
							return stdgo.fmt.Fmt.errorf("x509: cannot parse rfc822Name %q", Go.toInterface(_mailbox.__copy__()));
						};
						{
							var _err:stdgo.Error = _c.value._checkNameConstraints(Go.pointer(_comparisonCount), _maxConstraintComparisons, "email address",
								_name, Go.toInterface(_mailbox.__copy__()),
								function(_parsedName:AnyInterface, _constraint:AnyInterface):{var _0:Bool; var _1:Error;
								} {
									return _matchEmailConstraint(((_parsedName.value : T_rfc2821Mailbox)).__copy__(), ((_constraint.value : GoString)));
								}, Go.toInterface(_c.value.permittedEmailAddresses),
								Go.toInterface(_c.value.excludedEmailAddresses));
							if (_err != null) {
								return _err;
							};
						};
					} else if (_tag == _nameTypeDNS) {
						var _name:GoString = ((_data : GoString));
						{
							var __tmp__ = _domainToReverseLabels(_name), _:Slice<GoString> = __tmp__._0, _ok:Bool = __tmp__._1;
							if (!_ok) {
								return stdgo.fmt.Fmt.errorf("x509: cannot parse dnsName %q", Go.toInterface(_name));
							};
						};
						{
							var _err:stdgo.Error = _c.value._checkNameConstraints(Go.pointer(_comparisonCount), _maxConstraintComparisons, "DNS name", _name,
								Go.toInterface(_name), function(_parsedName:AnyInterface, _constraint:AnyInterface):{var _0:Bool; var _1:Error;
							} {
								return _matchDomainConstraint(((_parsedName.value : GoString)), ((_constraint.value : GoString)));
							}, Go.toInterface(_c.value.permittedDNSDomains),
								Go.toInterface(_c.value.excludedDNSDomains));
							if (_err != null) {
								return _err;
							};
						};
					} else if (_tag == _nameTypeURI) {
						var _name:GoString = ((_data : GoString));
						var __tmp__ = stdgo.net.url.Url.parse(_name), _uri:Pointer<stdgo.net.url.Url.URL> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
						if (_err != null) {
							return stdgo.fmt.Fmt.errorf("x509: internal error: URI SAN %q failed to parse", Go.toInterface(_name));
						};
						{
							var _err:stdgo.Error = _c.value._checkNameConstraints(Go.pointer(_comparisonCount), _maxConstraintComparisons, "URI", _name,
								Go.toInterface(_uri), function(_parsedName:AnyInterface, _constraint:AnyInterface):{var _0:Bool; var _1:Error;
							} {
								return _matchURIConstraint(((_parsedName.value : Pointer<stdgo.net.url.Url.URL>)), ((_constraint.value : GoString)));
							}, Go.toInterface(_c.value.permittedURIDomains),
								Go.toInterface(_c.value.excludedURIDomains));
							if (_err != null) {
								return _err;
							};
						};
					} else if (_tag == _nameTypeIP) {
						var _ip:stdgo.net.Net.IP = new stdgo.net.Net.IP(_data).__copy__();
						{
							var _l:GoInt = _ip.__t__.length;
							if (_l != stdgo.net.Net.ipv4len && _l != stdgo.net.Net.ipv6len) {
								return stdgo.fmt.Fmt.errorf("x509: internal error: IP SAN %x failed to parse", Go.toInterface(_data));
							};
						};
						{
							var _err:stdgo.Error = _c.value._checkNameConstraints(Go.pointer(_comparisonCount), _maxConstraintComparisons, "IP address",
								_ip.toString(), Go.toInterface(_ip.__copy__()),
								function(_parsedName:AnyInterface, _constraint:AnyInterface):{var _0:Bool; var _1:Error;
								} {
									return _matchIPConstraint(new stdgo.net.Net.IP(((_parsedName.value : AnyInterface))).__copy__(),
										((_constraint.value : Pointer<stdgo.net.Net.IPNet>)));
								}, Go.toInterface(_c.value.permittedIPRanges),
								Go.toInterface(_c.value.excludedIPRanges));
							if (_err != null) {
								return _err;
							};
						};
					} else {};
					return ((null : stdgo.Error));
				});
			if (_err != null) {
				return _err;
			};
		};
		if (_certType == _intermediateCertificate && (!_c.value.basicConstraintsValid || !_c.value.isCA)) {
			return new CertificateInvalidError(_c, notAuthorizedToSign, "").__copy__();
		};
		if (_c.value.basicConstraintsValid && _c.value.maxPathLen >= ((0 : GoInt))) {
			var _numIntermediates:GoInt = _currentChain.length - ((1 : GoInt));
			if (_numIntermediates > _c.value.maxPathLen) {
				return new CertificateInvalidError(_c, tooManyIntermediates, "").__copy__();
			};
		};
		return ((null : stdgo.Error));
	}

	public function _checkNameConstraints(_count:Pointer<GoInt>, _maxConstraintComparisons:GoInt, _nameType:GoString, _name:GoString,
			_parsedName:AnyInterface, _match:(_parsedName:AnyInterface, _constraint:AnyInterface) -> {
			var _0:Bool;
			var _1:Error;
		}, _permitted:AnyInterface, _excluded:AnyInterface):Error {
		var _c = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		var _excludedValue:stdgo.reflect.Reflect.Value = stdgo.reflect.Reflect.valueOf(Go.toInterface(_excluded)).__copy__();
		_count.value = _count.value + (_excludedValue.len());
		if (_count.value > _maxConstraintComparisons) {
			return new CertificateInvalidError(_c, tooManyConstraints, "").__copy__();
		};
		{
			var _i:GoInt = ((0 : GoInt));
			Go.cfor(_i < _excludedValue.len(), _i++, {
				var _constraint:AnyInterface = Go.toInterface(_excludedValue.index(_i).interface_());
				var __tmp__ = _match(Go.toInterface(_parsedName), Go.toInterface(_constraint)),
					_match:Bool = __tmp__._0,
					_err:stdgo.Error = __tmp__._1;
				if (_err != null) {
					return new CertificateInvalidError(_c, canotAuthorizedForThisName, _err.error()).__copy__();
				};
				if (_match) {
					return new CertificateInvalidError(_c, canotAuthorizedForThisName,
						stdgo.fmt.Fmt.sprintf("%s %q is excluded by constraint %q", Go.toInterface(_nameType), Go.toInterface(_name),
							Go.toInterface(_constraint))).__copy__();
				};
			});
		};
		var _permittedValue:stdgo.reflect.Reflect.Value = stdgo.reflect.Reflect.valueOf(Go.toInterface(_permitted)).__copy__();
		_count.value = _count.value + (_permittedValue.len());
		if (_count.value > _maxConstraintComparisons) {
			return new CertificateInvalidError(_c, tooManyConstraints, "").__copy__();
		};
		var _ok:Bool = true;
		{
			var _i:GoInt = ((0 : GoInt));
			Go.cfor(_i < _permittedValue.len(), _i++, {
				var _constraint:AnyInterface = Go.toInterface(_permittedValue.index(_i).interface_());
				var _err:Error = ((null : stdgo.Error));
				{
					{
						var __tmp__ = _match(Go.toInterface(_parsedName), Go.toInterface(_constraint));
						_ok = __tmp__._0;
						_err = __tmp__._1;
					};
					if (_err != null) {
						return new CertificateInvalidError(_c, canotAuthorizedForThisName, _err.error()).__copy__();
					};
				};
				if (_ok) {
					break;
				};
			});
		};
		if (!_ok) {
			return new CertificateInvalidError(_c, canotAuthorizedForThisName,
				stdgo.fmt.Fmt.sprintf("%s %q is not permitted by any constraint", Go.toInterface(_nameType), Go.toInterface(_name))).__copy__();
		};
		return ((null : stdgo.Error));
		}

	public function _systemVerify(_opts:Pointer<VerifyOptions>):{var _0:Slice<Slice<Pointer<Certificate>>>; var _1:Error;} {
		var _c = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		var _chains:Slice<Slice<Pointer<Certificate>>> = new Slice<Slice<Pointer<Certificate>>>().nil(),
			_err:Error = ((null : stdgo.Error));
		return {_0: new Slice<Slice<Pointer<Certificate>>>().nil(), _1: ((null : stdgo.Error))};
	}

	public var raw:Slice<GoUInt8> = new Slice<GoUInt8>().nil();
	public var rawTBSCertificate:Slice<GoUInt8> = new Slice<GoUInt8>().nil();
	public var rawSubjectPublicKeyInfo:Slice<GoUInt8> = new Slice<GoUInt8>().nil();
	public var rawSubject:Slice<GoUInt8> = new Slice<GoUInt8>().nil();
	public var rawIssuer:Slice<GoUInt8> = new Slice<GoUInt8>().nil();
	public var signature:Slice<GoUInt8> = new Slice<GoUInt8>().nil();
	public var signatureAlgorithm:SignatureAlgorithm = new SignatureAlgorithm();
	public var publicKeyAlgorithm:PublicKeyAlgorithm = new PublicKeyAlgorithm();
	public var publicKey:AnyInterface = ((null : AnyInterface));
	public var version:GoInt = ((0 : GoInt));
	public var serialNumber:Pointer<stdgo.math.big.Big.Int_> = new Pointer<stdgo.math.big.Big.Int_>().nil();
	public var issuer:stdgo.crypto.x509.pkix.Pkix.Name = new stdgo.crypto.x509.pkix.Pkix.Name();
	public var subject:stdgo.crypto.x509.pkix.Pkix.Name = new stdgo.crypto.x509.pkix.Pkix.Name();
	public var notBefore:stdgo.time.Time.Time = new stdgo.time.Time.Time();
	public var notAfter:stdgo.time.Time.Time = new stdgo.time.Time.Time();
	public var keyUsage:KeyUsage = new KeyUsage();
	public var extensions:Slice<stdgo.crypto.x509.pkix.Pkix.Extension> = new Slice<stdgo.crypto.x509.pkix.Pkix.Extension>().nil();
	public var extraExtensions:Slice<stdgo.crypto.x509.pkix.Pkix.Extension> = new Slice<stdgo.crypto.x509.pkix.Pkix.Extension>().nil();
	public var unhandledCriticalExtensions:Slice<stdgo.encoding.asn1.Asn1.ObjectIdentifier> = new Slice<stdgo.encoding.asn1.Asn1.ObjectIdentifier>().nil();
	public var extKeyUsage:Slice<ExtKeyUsage> = new Slice<ExtKeyUsage>().nil();
	public var unknownExtKeyUsage:Slice<stdgo.encoding.asn1.Asn1.ObjectIdentifier> = new Slice<stdgo.encoding.asn1.Asn1.ObjectIdentifier>().nil();
	public var basicConstraintsValid:Bool = false;
	public var isCA:Bool = false;
	public var maxPathLen:GoInt = ((0 : GoInt));
	public var maxPathLenZero:Bool = false;
	public var subjectKeyId:Slice<GoUInt8> = new Slice<GoUInt8>().nil();
	public var authorityKeyId:Slice<GoUInt8> = new Slice<GoUInt8>().nil();
	public var ocspserver:Slice<GoString> = new Slice<GoString>().nil();
	public var issuingCertificateURL:Slice<GoString> = new Slice<GoString>().nil();
	public var dnsnames:Slice<GoString> = new Slice<GoString>().nil();
	public var emailAddresses:Slice<GoString> = new Slice<GoString>().nil();
	public var ipaddresses:Slice<stdgo.net.Net.IP> = new Slice<stdgo.net.Net.IP>().nil();
	public var uris:Slice<Pointer<stdgo.net.url.Url.URL>> = new Slice<Pointer<stdgo.net.url.Url.URL>>().nil();
	public var permittedDNSDomainsCritical:Bool = false;
	public var permittedDNSDomains:Slice<GoString> = new Slice<GoString>().nil();
	public var excludedDNSDomains:Slice<GoString> = new Slice<GoString>().nil();
	public var permittedIPRanges:Slice<Pointer<stdgo.net.Net.IPNet>> = new Slice<Pointer<stdgo.net.Net.IPNet>>().nil();
	public var excludedIPRanges:Slice<Pointer<stdgo.net.Net.IPNet>> = new Slice<Pointer<stdgo.net.Net.IPNet>>().nil();
	public var permittedEmailAddresses:Slice<GoString> = new Slice<GoString>().nil();
	public var excludedEmailAddresses:Slice<GoString> = new Slice<GoString>().nil();
	public var permittedURIDomains:Slice<GoString> = new Slice<GoString>().nil();
	public var excludedURIDomains:Slice<GoString> = new Slice<GoString>().nil();
	public var crldistributionPoints:Slice<GoString> = new Slice<GoString>().nil();
	public var policyIdentifiers:Slice<stdgo.encoding.asn1.Asn1.ObjectIdentifier> = new Slice<stdgo.encoding.asn1.Asn1.ObjectIdentifier>().nil();

	public function new(?raw:Slice<GoUInt8>, ?rawTBSCertificate:Slice<GoUInt8>, ?rawSubjectPublicKeyInfo:Slice<GoUInt8>, ?rawSubject:Slice<GoUInt8>,
			?rawIssuer:Slice<GoUInt8>, ?signature:Slice<GoUInt8>, ?signatureAlgorithm:SignatureAlgorithm, ?publicKeyAlgorithm:PublicKeyAlgorithm,
			?publicKey:AnyInterface, ?version:GoInt, ?serialNumber:Pointer<stdgo.math.big.Big.Int_>, ?issuer:stdgo.crypto.x509.pkix.Pkix.Name,
			?subject:stdgo.crypto.x509.pkix.Pkix.Name, ?notBefore:stdgo.time.Time.Time, ?notAfter:stdgo.time.Time.Time, ?keyUsage:KeyUsage,
			?extensions:Slice<stdgo.crypto.x509.pkix.Pkix.Extension>, ?extraExtensions:Slice<stdgo.crypto.x509.pkix.Pkix.Extension>,
			?unhandledCriticalExtensions:Slice<stdgo.encoding.asn1.Asn1.ObjectIdentifier>, ?extKeyUsage:Slice<ExtKeyUsage>,
			?unknownExtKeyUsage:Slice<stdgo.encoding.asn1.Asn1.ObjectIdentifier>, ?basicConstraintsValid:Bool, ?isCA:Bool, ?maxPathLen:GoInt,
			?maxPathLenZero:Bool, ?subjectKeyId:Slice<GoUInt8>, ?authorityKeyId:Slice<GoUInt8>, ?ocspserver:Slice<GoString>,
			?issuingCertificateURL:Slice<GoString>, ?dnsnames:Slice<GoString>, ?emailAddresses:Slice<GoString>, ?ipaddresses:Slice<stdgo.net.Net.IP>,
			?uris:Slice<Pointer<stdgo.net.url.Url.URL>>, ?permittedDNSDomainsCritical:Bool, ?permittedDNSDomains:Slice<GoString>,
			?excludedDNSDomains:Slice<GoString>, ?permittedIPRanges:Slice<Pointer<stdgo.net.Net.IPNet>>,
			?excludedIPRanges:Slice<Pointer<stdgo.net.Net.IPNet>>, ?permittedEmailAddresses:Slice<GoString>, ?excludedEmailAddresses:Slice<GoString>,
			?permittedURIDomains:Slice<GoString>, ?excludedURIDomains:Slice<GoString>, ?crldistributionPoints:Slice<GoString>,
			?policyIdentifiers:Slice<stdgo.encoding.asn1.Asn1.ObjectIdentifier>)
		stdgo.internal.Macro.initLocals();

	public function toString() {
		return '{' + Go.string(raw) + " " + Go.string(rawTBSCertificate) + " " + Go.string(rawSubjectPublicKeyInfo) + " " + Go.string(rawSubject) + " "
			+ Go.string(rawIssuer) + " " + Go.string(signature) + " " + Go.string(signatureAlgorithm) + " " + Go.string(publicKeyAlgorithm) + " "
			+ Go.string(publicKey) + " " + Go.string(version) + " " + Go.string(serialNumber) + " " + Go.string(issuer) + " " + Go.string(subject) + " "
			+ Go.string(notBefore) + " " + Go.string(notAfter) + " " + Go.string(keyUsage) + " " + Go.string(extensions) + " " + Go.string(extraExtensions)
			+ " " + Go.string(unhandledCriticalExtensions) + " " + Go.string(extKeyUsage) + " " + Go.string(unknownExtKeyUsage) + " "
			+ Go.string(basicConstraintsValid) + " " + Go.string(isCA) + " " + Go.string(maxPathLen) + " " + Go.string(maxPathLenZero) + " "
			+ Go.string(subjectKeyId) + " " + Go.string(authorityKeyId) + " " + Go.string(ocspserver) + " " + Go.string(issuingCertificateURL) + " "
			+ Go.string(dnsnames) + " " + Go.string(emailAddresses) + " " + Go.string(ipaddresses) + " " + Go.string(uris) + " "
			+ Go.string(permittedDNSDomainsCritical) + " " + Go.string(permittedDNSDomains) + " " + Go.string(excludedDNSDomains) + " "
			+ Go.string(permittedIPRanges) + " " + Go.string(excludedIPRanges) + " " + Go.string(permittedEmailAddresses) + " "
			+ Go.string(excludedEmailAddresses) + " " + Go.string(permittedURIDomains) + " " + Go.string(excludedURIDomains) + " "
			+ Go.string(crldistributionPoints) + " " + Go.string(policyIdentifiers) + "}";
	}

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	public function __copy__() {
		return new Certificate(raw, rawTBSCertificate, rawSubjectPublicKeyInfo, rawSubject, rawIssuer, signature, signatureAlgorithm, publicKeyAlgorithm,
			publicKey, version, serialNumber, issuer, subject, notBefore, notAfter, keyUsage, extensions, extraExtensions, unhandledCriticalExtensions,
			extKeyUsage, unknownExtKeyUsage, basicConstraintsValid, isCA, maxPathLen, maxPathLenZero, subjectKeyId, authorityKeyId, ocspserver,
			issuingCertificateURL, dnsnames, emailAddresses, ipaddresses, uris, permittedDNSDomainsCritical, permittedDNSDomains, excludedDNSDomains,
			permittedIPRanges, excludedIPRanges, permittedEmailAddresses, excludedEmailAddresses, permittedURIDomains, excludedURIDomains,
			crldistributionPoints, policyIdentifiers);
	}

	public function __set__(__tmp__) {
		this.raw = __tmp__.raw;
		this.rawTBSCertificate = __tmp__.rawTBSCertificate;
		this.rawSubjectPublicKeyInfo = __tmp__.rawSubjectPublicKeyInfo;
		this.rawSubject = __tmp__.rawSubject;
		this.rawIssuer = __tmp__.rawIssuer;
		this.signature = __tmp__.signature;
		this.signatureAlgorithm = __tmp__.signatureAlgorithm;
		this.publicKeyAlgorithm = __tmp__.publicKeyAlgorithm;
		this.publicKey = __tmp__.publicKey;
		this.version = __tmp__.version;
		this.serialNumber = __tmp__.serialNumber;
		this.issuer = __tmp__.issuer;
		this.subject = __tmp__.subject;
		this.notBefore = __tmp__.notBefore;
		this.notAfter = __tmp__.notAfter;
		this.keyUsage = __tmp__.keyUsage;
		this.extensions = __tmp__.extensions;
		this.extraExtensions = __tmp__.extraExtensions;
		this.unhandledCriticalExtensions = __tmp__.unhandledCriticalExtensions;
		this.extKeyUsage = __tmp__.extKeyUsage;
		this.unknownExtKeyUsage = __tmp__.unknownExtKeyUsage;
		this.basicConstraintsValid = __tmp__.basicConstraintsValid;
		this.isCA = __tmp__.isCA;
		this.maxPathLen = __tmp__.maxPathLen;
		this.maxPathLenZero = __tmp__.maxPathLenZero;
		this.subjectKeyId = __tmp__.subjectKeyId;
		this.authorityKeyId = __tmp__.authorityKeyId;
		this.ocspserver = __tmp__.ocspserver;
		this.issuingCertificateURL = __tmp__.issuingCertificateURL;
		this.dnsnames = __tmp__.dnsnames;
		this.emailAddresses = __tmp__.emailAddresses;
		this.ipaddresses = __tmp__.ipaddresses;
		this.uris = __tmp__.uris;
		this.permittedDNSDomainsCritical = __tmp__.permittedDNSDomainsCritical;
		this.permittedDNSDomains = __tmp__.permittedDNSDomains;
		this.excludedDNSDomains = __tmp__.excludedDNSDomains;
		this.permittedIPRanges = __tmp__.permittedIPRanges;
		this.excludedIPRanges = __tmp__.excludedIPRanges;
		this.permittedEmailAddresses = __tmp__.permittedEmailAddresses;
		this.excludedEmailAddresses = __tmp__.excludedEmailAddresses;
		this.permittedURIDomains = __tmp__.permittedURIDomains;
		this.excludedURIDomains = __tmp__.excludedURIDomains;
		this.crldistributionPoints = __tmp__.crldistributionPoints;
		this.policyIdentifiers = __tmp__.policyIdentifiers;
		return this;
	}
}

@:named class InsecureAlgorithmError {
	public function error():GoString {
		var _e = this.__copy__();
		return stdgo.fmt.Fmt.sprintf("x509: cannot verify signature: insecure algorithm %v", Go.toInterface(new SignatureAlgorithm(_e.__t__)));
	}

	public var __t__:GoInt;

	public function new(?t:GoInt) {
		__t__ = t == null ? 0 : t;
	}

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	@:implicit
	public function toString():GoString
		return Go.string(__t__);

	public function __copy__()
		return new InsecureAlgorithmError(__t__);
}

@:structInit class ConstraintViolationError {
	public function error():GoString {
		return "x509: invalid signature: parent certificate cannot sign this kind of certificate";
	}

	public function new()
		stdgo.internal.Macro.initLocals();

	public function toString() {
		return "{}";
	}

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	public function __copy__() {
		return new ConstraintViolationError();
	}

	public function __set__(__tmp__) {
		return this;
	}
}

@:structInit class UnhandledCriticalExtension {
	public function error():GoString {
		var _h = this.__copy__();
		return "x509: unhandled critical extension";
	}

	public function new()
		stdgo.internal.Macro.initLocals();

	public function toString() {
		return "{}";
	}

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	public function __copy__() {
		return new UnhandledCriticalExtension();
	}

	public function __set__(__tmp__) {
		return this;
	}
}

@:structInit class T_basicConstraints {
	@:tag("asn1:\"optional\"")
	public var isCA:Bool = false;
	@:tag("asn1:\"optional,default:-1\"")
	public var maxPathLen:GoInt = ((0 : GoInt));

	public function new(?isCA:Bool, ?maxPathLen:GoInt)
		stdgo.internal.Macro.initLocals();

	public function toString() {
		return '{' + Go.string(isCA) + " " + Go.string(maxPathLen) + "}";
	}

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	public function __copy__() {
		return new T_basicConstraints(isCA, maxPathLen);
	}

	public function __set__(__tmp__) {
		this.isCA = __tmp__.isCA;
		this.maxPathLen = __tmp__.maxPathLen;
		return this;
	}
}

@:structInit class T_policyInformation {
	public var policy:stdgo.encoding.asn1.Asn1.ObjectIdentifier = new stdgo.encoding.asn1.Asn1.ObjectIdentifier();

	public function new(?policy:stdgo.encoding.asn1.Asn1.ObjectIdentifier)
		stdgo.internal.Macro.initLocals();

	public function toString() {
		return '{' + Go.string(policy) + "}";
	}

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	public function __copy__() {
		return new T_policyInformation(policy);
	}

	public function __set__(__tmp__) {
		this.policy = __tmp__.policy;
		return this;
	}
}

@:structInit class T_authorityInfoAccess {
	public var method:stdgo.encoding.asn1.Asn1.ObjectIdentifier = new stdgo.encoding.asn1.Asn1.ObjectIdentifier();
	public var location:stdgo.encoding.asn1.Asn1.RawValue = new stdgo.encoding.asn1.Asn1.RawValue();

	public function new(?method:stdgo.encoding.asn1.Asn1.ObjectIdentifier, ?location:stdgo.encoding.asn1.Asn1.RawValue)
		stdgo.internal.Macro.initLocals();

	public function toString() {
		return '{' + Go.string(method) + " " + Go.string(location) + "}";
	}

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	public function __copy__() {
		return new T_authorityInfoAccess(method, location);
	}

	public function __set__(__tmp__) {
		this.method = __tmp__.method;
		this.location = __tmp__.location;
		return this;
	}
}

@:structInit class T_distributionPoint {
	@:tag("asn1:\"optional,tag:0\"")
	public var distributionPoint:T_distributionPointName = new T_distributionPointName();
	@:tag("asn1:\"optional,tag:1\"")
	public var reason:stdgo.encoding.asn1.Asn1.BitString = new stdgo.encoding.asn1.Asn1.BitString();
	@:tag("asn1:\"optional,tag:2\"")
	public var crlissuer:stdgo.encoding.asn1.Asn1.RawValue = new stdgo.encoding.asn1.Asn1.RawValue();

	public function new(?distributionPoint:T_distributionPointName, ?reason:stdgo.encoding.asn1.Asn1.BitString, ?crlissuer:stdgo.encoding.asn1.Asn1.RawValue)
		stdgo.internal.Macro.initLocals();

	public function toString() {
		return '{' + Go.string(distributionPoint) + " " + Go.string(reason) + " " + Go.string(crlissuer) + "}";
	}

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	public function __copy__() {
		return new T_distributionPoint(distributionPoint, reason, crlissuer);
	}

	public function __set__(__tmp__) {
		this.distributionPoint = __tmp__.distributionPoint;
		this.reason = __tmp__.reason;
		this.crlissuer = __tmp__.crlissuer;
		return this;
	}
}

@:structInit class T_distributionPointName {
	@:tag("asn1:\"optional,tag:0\"")
	public var fullName:Slice<stdgo.encoding.asn1.Asn1.RawValue> = new Slice<stdgo.encoding.asn1.Asn1.RawValue>().nil();
	@:tag("asn1:\"optional,tag:1\"")
	public var relativeName:stdgo.crypto.x509.pkix.Pkix.RDNSequence = new stdgo.crypto.x509.pkix.Pkix.RDNSequence();

	public function new(?fullName:Slice<stdgo.encoding.asn1.Asn1.RawValue>, ?relativeName:stdgo.crypto.x509.pkix.Pkix.RDNSequence)
		stdgo.internal.Macro.initLocals();

	public function toString() {
		return '{' + Go.string(fullName) + " " + Go.string(relativeName) + "}";
	}

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	public function __copy__() {
		return new T_distributionPointName(fullName, relativeName);
	}

	public function __set__(__tmp__) {
		this.fullName = __tmp__.fullName;
		this.relativeName = __tmp__.relativeName;
		return this;
	}
}

@:structInit class CertificateRequest {
	public function checkSignature():Error {
		var _c = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		return _checkSignature(_c.value.signatureAlgorithm, _c.value.rawTBSCertificateRequest, _c.value.signature, Go.toInterface(_c.value.publicKey));
	}

	public var raw:Slice<GoUInt8> = new Slice<GoUInt8>().nil();
	public var rawTBSCertificateRequest:Slice<GoUInt8> = new Slice<GoUInt8>().nil();
	public var rawSubjectPublicKeyInfo:Slice<GoUInt8> = new Slice<GoUInt8>().nil();
	public var rawSubject:Slice<GoUInt8> = new Slice<GoUInt8>().nil();
	public var version:GoInt = ((0 : GoInt));
	public var signature:Slice<GoUInt8> = new Slice<GoUInt8>().nil();
	public var signatureAlgorithm:SignatureAlgorithm = new SignatureAlgorithm();
	public var publicKeyAlgorithm:PublicKeyAlgorithm = new PublicKeyAlgorithm();
	public var publicKey:AnyInterface = ((null : AnyInterface));
	public var subject:stdgo.crypto.x509.pkix.Pkix.Name = new stdgo.crypto.x509.pkix.Pkix.Name();
	public var attributes:Slice<stdgo.crypto.x509.pkix.Pkix.AttributeTypeAndValueSET> = new Slice<stdgo.crypto.x509.pkix.Pkix.AttributeTypeAndValueSET>().nil();
	public var extensions:Slice<stdgo.crypto.x509.pkix.Pkix.Extension> = new Slice<stdgo.crypto.x509.pkix.Pkix.Extension>().nil();
	public var extraExtensions:Slice<stdgo.crypto.x509.pkix.Pkix.Extension> = new Slice<stdgo.crypto.x509.pkix.Pkix.Extension>().nil();
	public var dnsnames:Slice<GoString> = new Slice<GoString>().nil();
	public var emailAddresses:Slice<GoString> = new Slice<GoString>().nil();
	public var ipaddresses:Slice<stdgo.net.Net.IP> = new Slice<stdgo.net.Net.IP>().nil();
	public var uris:Slice<Pointer<stdgo.net.url.Url.URL>> = new Slice<Pointer<stdgo.net.url.Url.URL>>().nil();

	public function new(?raw:Slice<GoUInt8>, ?rawTBSCertificateRequest:Slice<GoUInt8>, ?rawSubjectPublicKeyInfo:Slice<GoUInt8>, ?rawSubject:Slice<GoUInt8>,
			?version:GoInt, ?signature:Slice<GoUInt8>, ?signatureAlgorithm:SignatureAlgorithm, ?publicKeyAlgorithm:PublicKeyAlgorithm,
			?publicKey:AnyInterface, ?subject:stdgo.crypto.x509.pkix.Pkix.Name, ?attributes:Slice<stdgo.crypto.x509.pkix.Pkix.AttributeTypeAndValueSET>,
			?extensions:Slice<stdgo.crypto.x509.pkix.Pkix.Extension>, ?extraExtensions:Slice<stdgo.crypto.x509.pkix.Pkix.Extension>,
			?dnsnames:Slice<GoString>, ?emailAddresses:Slice<GoString>, ?ipaddresses:Slice<stdgo.net.Net.IP>, ?uris:Slice<Pointer<stdgo.net.url.Url.URL>>)
		stdgo.internal.Macro.initLocals();

	public function toString() {
		return '{' + Go.string(raw) + " " + Go.string(rawTBSCertificateRequest) + " " + Go.string(rawSubjectPublicKeyInfo) + " " + Go.string(rawSubject)
			+ " " + Go.string(version) + " " + Go.string(signature) + " " + Go.string(signatureAlgorithm) + " " + Go.string(publicKeyAlgorithm) + " "
			+ Go.string(publicKey) + " " + Go.string(subject) + " " + Go.string(attributes) + " " + Go.string(extensions) + " " + Go.string(extraExtensions)
			+ " " + Go.string(dnsnames) + " " + Go.string(emailAddresses) + " " + Go.string(ipaddresses) + " " + Go.string(uris) + "}";
	}

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	public function __copy__() {
		return new CertificateRequest(raw, rawTBSCertificateRequest, rawSubjectPublicKeyInfo, rawSubject, version, signature, signatureAlgorithm,
			publicKeyAlgorithm, publicKey, subject, attributes, extensions, extraExtensions, dnsnames, emailAddresses, ipaddresses, uris);
	}

	public function __set__(__tmp__) {
		this.raw = __tmp__.raw;
		this.rawTBSCertificateRequest = __tmp__.rawTBSCertificateRequest;
		this.rawSubjectPublicKeyInfo = __tmp__.rawSubjectPublicKeyInfo;
		this.rawSubject = __tmp__.rawSubject;
		this.version = __tmp__.version;
		this.signature = __tmp__.signature;
		this.signatureAlgorithm = __tmp__.signatureAlgorithm;
		this.publicKeyAlgorithm = __tmp__.publicKeyAlgorithm;
		this.publicKey = __tmp__.publicKey;
		this.subject = __tmp__.subject;
		this.attributes = __tmp__.attributes;
		this.extensions = __tmp__.extensions;
		this.extraExtensions = __tmp__.extraExtensions;
		this.dnsnames = __tmp__.dnsnames;
		this.emailAddresses = __tmp__.emailAddresses;
		this.ipaddresses = __tmp__.ipaddresses;
		this.uris = __tmp__.uris;
		return this;
	}
}

@:structInit class T_tbsCertificateRequest {
	public var raw:stdgo.encoding.asn1.Asn1.RawContent = new stdgo.encoding.asn1.Asn1.RawContent();
	public var version:GoInt = ((0 : GoInt));
	public var subject:stdgo.encoding.asn1.Asn1.RawValue = new stdgo.encoding.asn1.Asn1.RawValue();
	public var publicKey:T_publicKeyInfo = new T_publicKeyInfo();
	@:tag("asn1:\"tag:0\"")
	public var rawAttributes:Slice<stdgo.encoding.asn1.Asn1.RawValue> = new Slice<stdgo.encoding.asn1.Asn1.RawValue>().nil();

	public function new(?raw:stdgo.encoding.asn1.Asn1.RawContent, ?version:GoInt, ?subject:stdgo.encoding.asn1.Asn1.RawValue, ?publicKey:T_publicKeyInfo,
			?rawAttributes:Slice<stdgo.encoding.asn1.Asn1.RawValue>)
		stdgo.internal.Macro.initLocals();

	public function toString() {
		return '{'
			+ Go.string(raw)
			+ " "
			+ Go.string(version)
			+ " "
			+ Go.string(subject)
			+ " "
			+ Go.string(publicKey)
			+ " "
			+ Go.string(rawAttributes)
			+ "}";
	}

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	public function __copy__() {
		return new T_tbsCertificateRequest(raw, version, subject, publicKey, rawAttributes);
	}

	public function __set__(__tmp__) {
		this.raw = __tmp__.raw;
		this.version = __tmp__.version;
		this.subject = __tmp__.subject;
		this.publicKey = __tmp__.publicKey;
		this.rawAttributes = __tmp__.rawAttributes;
		return this;
	}
}

@:structInit class T_certificateRequest {
	public var raw:stdgo.encoding.asn1.Asn1.RawContent = new stdgo.encoding.asn1.Asn1.RawContent();
	public var tbscsr:T_tbsCertificateRequest = new T_tbsCertificateRequest();
	public var signatureAlgorithm:stdgo.crypto.x509.pkix.Pkix.AlgorithmIdentifier = new stdgo.crypto.x509.pkix.Pkix.AlgorithmIdentifier();
	public var signatureValue:stdgo.encoding.asn1.Asn1.BitString = new stdgo.encoding.asn1.Asn1.BitString();

	public function new(?raw:stdgo.encoding.asn1.Asn1.RawContent, ?tbscsr:T_tbsCertificateRequest,
			?signatureAlgorithm:stdgo.crypto.x509.pkix.Pkix.AlgorithmIdentifier, ?signatureValue:stdgo.encoding.asn1.Asn1.BitString)
		stdgo.internal.Macro.initLocals();

	public function toString() {
		return '{'
			+ Go.string(raw)
			+ " "
			+ Go.string(tbscsr)
			+ " "
			+ Go.string(signatureAlgorithm)
			+ " "
			+ Go.string(signatureValue)
			+ "}";
	}

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	public function __copy__() {
		return new T_certificateRequest(raw, tbscsr, signatureAlgorithm, signatureValue);
	}

	public function __set__(__tmp__) {
		this.raw = __tmp__.raw;
		this.tbscsr = __tmp__.tbscsr;
		this.signatureAlgorithm = __tmp__.signatureAlgorithm;
		this.signatureValue = __tmp__.signatureValue;
		return this;
	}
}

@:structInit class RevocationList {
	public var signatureAlgorithm:SignatureAlgorithm = new SignatureAlgorithm();
	public var revokedCertificates:Slice<stdgo.crypto.x509.pkix.Pkix.RevokedCertificate> = new Slice<stdgo.crypto.x509.pkix.Pkix.RevokedCertificate>().nil();
	public var number:Pointer<stdgo.math.big.Big.Int_> = new Pointer<stdgo.math.big.Big.Int_>().nil();
	public var thisUpdate:stdgo.time.Time.Time = new stdgo.time.Time.Time();
	public var nextUpdate:stdgo.time.Time.Time = new stdgo.time.Time.Time();
	public var extraExtensions:Slice<stdgo.crypto.x509.pkix.Pkix.Extension> = new Slice<stdgo.crypto.x509.pkix.Pkix.Extension>().nil();

	public function new(?signatureAlgorithm:SignatureAlgorithm, ?revokedCertificates:Slice<stdgo.crypto.x509.pkix.Pkix.RevokedCertificate>,
			?number:Pointer<stdgo.math.big.Big.Int_>, ?thisUpdate:stdgo.time.Time.Time, ?nextUpdate:stdgo.time.Time.Time,
			?extraExtensions:Slice<stdgo.crypto.x509.pkix.Pkix.Extension>)
		stdgo.internal.Macro.initLocals();

	public function toString() {
		return '{' + Go.string(signatureAlgorithm) + " " + Go.string(revokedCertificates) + " " + Go.string(number) + " " + Go.string(thisUpdate) + " "
			+ Go.string(nextUpdate) + " " + Go.string(extraExtensions) + "}";
	}

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	public function __copy__() {
		return new RevocationList(signatureAlgorithm, revokedCertificates, number, thisUpdate, nextUpdate, extraExtensions);
	}

	public function __set__(__tmp__) {
		this.signatureAlgorithm = __tmp__.signatureAlgorithm;
		this.revokedCertificates = __tmp__.revokedCertificates;
		this.number = __tmp__.number;
		this.thisUpdate = __tmp__.thisUpdate;
		this.nextUpdate = __tmp__.nextUpdate;
		this.extraExtensions = __tmp__.extraExtensions;
		return this;
	}
}

@:structInit @:local class T__struct_0 {
	@:embedded
	public var once:stdgo.sync.Sync.Once = new stdgo.sync.Sync.Once();
	public var _v:Pointer<Certificate> = new Pointer<Certificate>().nil();

	public function new(?once:stdgo.sync.Sync.Once, ?_v:Pointer<Certificate>)
		stdgo.internal.Macro.initLocals();

	public function toString() {
		return '{' + Go.string(once) + " " + Go.string(_v) + "}";
	}

	public function do_(_f:() -> Void)
		once.do_(_0);

	public function _doSlow(_f:() -> Void)
		once._doSlow(_0);

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	public function __copy__() {
		return new T__struct_0(once, _v);
	}

	public function __set__(__tmp__) {
		this.once = __tmp__.once;
		this._v = __tmp__._v;
		return this;
	}
}

@:structInit @:local class T__struct_1 {
	public var _algo:SignatureAlgorithm = new SignatureAlgorithm();
	public var _name:GoString = (("" : GoString));
	public var _oid:stdgo.encoding.asn1.Asn1.ObjectIdentifier = new stdgo.encoding.asn1.Asn1.ObjectIdentifier();
	public var _pubKeyAlgo:PublicKeyAlgorithm = new PublicKeyAlgorithm();
	public var _hash:stdgo.crypto.Crypto.Hash = new stdgo.crypto.Crypto.Hash();

	public function new(?_algo:SignatureAlgorithm, ?_name:GoString, ?_oid:stdgo.encoding.asn1.Asn1.ObjectIdentifier, ?_pubKeyAlgo:PublicKeyAlgorithm,
			?_hash:stdgo.crypto.Crypto.Hash)
		stdgo.internal.Macro.initLocals();

	public function toString() {
		return '{'
			+ Go.string(_algo)
			+ " "
			+ Go.string(_name)
			+ " "
			+ Go.string(_oid)
			+ " "
			+ Go.string(_pubKeyAlgo)
			+ " "
			+ Go.string(_hash)
			+ "}";
	}

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	public function __copy__() {
		return new T__struct_1(_algo, _name, _oid, _pubKeyAlgo, _hash);
	}

	public function __set__(__tmp__) {
		this._algo = __tmp__._algo;
		this._name = __tmp__._name;
		this._oid = __tmp__._oid;
		this._pubKeyAlgo = __tmp__._pubKeyAlgo;
		this._hash = __tmp__._hash;
		return this;
	}
}

@:structInit @:local class T__struct_2 {
	public var _extKeyUsage:ExtKeyUsage = new ExtKeyUsage();
	public var _oid:stdgo.encoding.asn1.Asn1.ObjectIdentifier = new stdgo.encoding.asn1.Asn1.ObjectIdentifier();

	public function new(?_extKeyUsage:ExtKeyUsage, ?_oid:stdgo.encoding.asn1.Asn1.ObjectIdentifier)
		stdgo.internal.Macro.initLocals();

	public function toString() {
		return '{' + Go.string(_extKeyUsage) + " " + Go.string(_oid) + "}";
	}

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	public function __copy__() {
		return new T__struct_2(_extKeyUsage, _oid);
	}

	public function __set__(__tmp__) {
		this._extKeyUsage = __tmp__._extKeyUsage;
		this._oid = __tmp__._oid;
		return this;
	}
}

@:structInit @:local class T__struct_3 {
	public var type:stdgo.encoding.asn1.Asn1.ObjectIdentifier = new stdgo.encoding.asn1.Asn1.ObjectIdentifier();
	@:tag("asn1:\"set\"")
	public var value:Slice<Slice<stdgo.crypto.x509.pkix.Pkix.Extension>> = new Slice<Slice<stdgo.crypto.x509.pkix.Pkix.Extension>>().nil();

	public function new(?type:stdgo.encoding.asn1.Asn1.ObjectIdentifier, ?value:Slice<Slice<stdgo.crypto.x509.pkix.Pkix.Extension>>)
		stdgo.internal.Macro.initLocals();

	public function toString() {
		return '{' + Go.string(type) + " " + Go.string(value) + "}";
	}

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	public function __copy__() {
		return new T__struct_3(type, value);
	}

	public function __set__(__tmp__) {
		this.type = __tmp__.type;
		this.value = __tmp__.value;
		return this;
	}
}

var _emptyASN1Subject:Slice<GoUInt8> = new Slice<GoUInt8>(((48 : GoUInt8)), ((0 : GoUInt8)));
final ecdsawithSHA512:SignatureAlgorithm = new SignatureAlgorithm((12 : GoUnTypedInt));

var _oidExtKeyUsageMicrosoftCommercialCodeSigning:stdgo.encoding.asn1.Asn1.ObjectIdentifier = new stdgo.encoding.asn1.Asn1.ObjectIdentifier(new Slice<GoInt>(((1 : GoInt)),
	((3 : GoInt)), ((6 : GoInt)), ((1 : GoInt)), ((4 : GoInt)), ((1 : GoInt)), ((311 : GoInt)), ((2 : GoInt)), ((1 : GoInt)),
	((22 : GoInt)))).__copy__();

var _oidExtKeyUsageCodeSigning:stdgo.encoding.asn1.Asn1.ObjectIdentifier = new stdgo.encoding.asn1.Asn1.ObjectIdentifier(new Slice<GoInt>(((1 : GoInt)),
	((3 : GoInt)), ((6 : GoInt)), ((1 : GoInt)), ((5 : GoInt)), ((5 : GoInt)), ((7 : GoInt)), ((3 : GoInt)), ((3 : GoInt)))).__copy__();

final keyUsageDataEncipherment:KeyUsage = (new KeyUsage(((1 : GoUnTypedInt)) << (3 : GoUnTypedInt)));

var _oidSHA256:stdgo.encoding.asn1.Asn1.ObjectIdentifier = new stdgo.encoding.asn1.Asn1.ObjectIdentifier(new Slice<GoInt>(((2 : GoInt)), ((16 : GoInt)),
	((840 : GoInt)), ((1 : GoInt)), ((101 : GoInt)), ((3 : GoInt)), ((4 : GoInt)), ((2 : GoInt)), ((1 : GoInt)))).__copy__();

var _oidExtKeyUsageIPSECEndSystem:stdgo.encoding.asn1.Asn1.ObjectIdentifier = new stdgo.encoding.asn1.Asn1.ObjectIdentifier(new Slice<GoInt>(((1 : GoInt)),
	((3 : GoInt)), ((6 : GoInt)), ((1 : GoInt)), ((5 : GoInt)), ((5 : GoInt)), ((7 : GoInt)), ((3 : GoInt)), ((5 : GoInt)))).__copy__();

var _oidExtensionSubjectKeyId:Slice<GoInt> = new Slice<GoInt>(((2 : GoInt)), ((5 : GoInt)), ((29 : GoInt)), ((14 : GoInt)));

var _oidNamedCurveP256:stdgo.encoding.asn1.Asn1.ObjectIdentifier = new stdgo.encoding.asn1.Asn1.ObjectIdentifier(new Slice<GoInt>(((1 : GoInt)),
	((2 : GoInt)), ((840 : GoInt)), ((10045 : GoInt)), ((3 : GoInt)), ((1 : GoInt)), ((7 : GoInt)))).__copy__();

final _intermediateCertificate = (1 : GoUnTypedInt);
final nameMismatch:InvalidReason = new InvalidReason((5 : GoUnTypedInt));
final keyUsageEncipherOnly:KeyUsage = (new KeyUsage(((1 : GoUnTypedInt)) << (7 : GoUnTypedInt)));

var _oidISOSignatureSHA1WithRSA:stdgo.encoding.asn1.Asn1.ObjectIdentifier = new stdgo.encoding.asn1.Asn1.ObjectIdentifier(new Slice<GoInt>(((1 : GoInt)),
	((3 : GoInt)), ((14 : GoInt)), ((3 : GoInt)), ((2 : GoInt)), ((29 : GoInt)))).__copy__();

final sha512withRSA:SignatureAlgorithm = new SignatureAlgorithm((6 : GoUnTypedInt));
final expired:InvalidReason = new InvalidReason((1 : GoUnTypedInt));
final pureEd25519:SignatureAlgorithm = new SignatureAlgorithm((16 : GoUnTypedInt));

var _oidSignatureSHA512WithRSA:stdgo.encoding.asn1.Asn1.ObjectIdentifier = new stdgo.encoding.asn1.Asn1.ObjectIdentifier(new Slice<GoInt>(((1 : GoInt)),
	((2 : GoInt)), ((840 : GoInt)), ((113549 : GoInt)), ((1 : GoInt)), ((1 : GoInt)), ((13 : GoInt)))).__copy__();

var _oidSignatureDSAWithSHA256:stdgo.encoding.asn1.Asn1.ObjectIdentifier = new stdgo.encoding.asn1.Asn1.ObjectIdentifier(new Slice<GoInt>(((2 : GoInt)),
	((16 : GoInt)), ((840 : GoInt)), ((1 : GoInt)), ((101 : GoInt)), ((3 : GoInt)), ((4 : GoInt)), ((3 : GoInt)), ((2 : GoInt)))).__copy__();

var _oidSHA512:stdgo.encoding.asn1.Asn1.ObjectIdentifier = new stdgo.encoding.asn1.Asn1.ObjectIdentifier(new Slice<GoInt>(((2 : GoInt)), ((16 : GoInt)),
	((840 : GoInt)), ((1 : GoInt)), ((101 : GoInt)), ((3 : GoInt)), ((4 : GoInt)), ((2 : GoInt)), ((3 : GoInt)))).__copy__();

final unknownPublicKeyAlgorithm:PublicKeyAlgorithm = new PublicKeyAlgorithm((0 : GoUnTypedInt));

var _oidSignatureEd25519:stdgo.encoding.asn1.Asn1.ObjectIdentifier = new stdgo.encoding.asn1.Asn1.ObjectIdentifier(new Slice<GoInt>(((1 : GoInt)),
	((3 : GoInt)), ((101 : GoInt)), ((112 : GoInt)))).__copy__();

var _oidPublicKeyEd25519:stdgo.encoding.asn1.Asn1.ObjectIdentifier = _oidSignatureEd25519.__copy__();
final dsawithSHA1:SignatureAlgorithm = new SignatureAlgorithm((7 : GoUnTypedInt));
var _oidExtensionNameConstraints:Slice<GoInt> = new Slice<GoInt>(((2 : GoInt)), ((5 : GoInt)), ((29 : GoInt)), ((30 : GoInt)));
final extKeyUsageMicrosoftServerGatedCrypto:ExtKeyUsage = new ExtKeyUsage((10 : GoUnTypedInt));
final keyUsageCertSign:KeyUsage = (new KeyUsage(((1 : GoUnTypedInt)) << (5 : GoUnTypedInt)));
final pemcipherDES:PEMCipher = new PEMCipher((1 : GoUnTypedInt));
final sha256withRSA:SignatureAlgorithm = new SignatureAlgorithm((4 : GoUnTypedInt));
var _oidExtensionSubjectAltName:Slice<GoInt> = new Slice<GoInt>(((2 : GoInt)), ((5 : GoInt)), ((29 : GoInt)), ((17 : GoInt)));

var _oidSignatureSHA256WithRSA:stdgo.encoding.asn1.Asn1.ObjectIdentifier = new stdgo.encoding.asn1.Asn1.ObjectIdentifier(new Slice<GoInt>(((1 : GoInt)),
	((2 : GoInt)), ((840 : GoInt)), ((113549 : GoInt)), ((1 : GoInt)), ((1 : GoInt)), ((11 : GoInt)))).__copy__();

final pemcipher3DES:PEMCipher = new PEMCipher((2 : GoUnTypedInt));
final _certDirEnv:GoString = "SSL_CERT_DIR";

var _oidExtKeyUsageIPSECUser:stdgo.encoding.asn1.Asn1.ObjectIdentifier = new stdgo.encoding.asn1.Asn1.ObjectIdentifier(new Slice<GoInt>(((1 : GoInt)),
	((3 : GoInt)), ((6 : GoInt)), ((1 : GoInt)), ((5 : GoInt)), ((5 : GoInt)), ((7 : GoInt)), ((3 : GoInt)), ((7 : GoInt)))).__copy__();

var _oidSignatureMD5WithRSA:stdgo.encoding.asn1.Asn1.ObjectIdentifier = new stdgo.encoding.asn1.Asn1.ObjectIdentifier(new Slice<GoInt>(((1 : GoInt)),
	((2 : GoInt)), ((840 : GoInt)), ((113549 : GoInt)), ((1 : GoInt)), ((1 : GoInt)), ((4 : GoInt)))).__copy__();

final sha384withRSA:SignatureAlgorithm = new SignatureAlgorithm((5 : GoUnTypedInt));
var _pemType:GoString = "X509 CRL";
final extKeyUsageNetscapeServerGatedCrypto:ExtKeyUsage = new ExtKeyUsage((11 : GoUnTypedInt));

var _oidExtKeyUsageMicrosoftKernelCodeSigning:stdgo.encoding.asn1.Asn1.ObjectIdentifier = new stdgo.encoding.asn1.Asn1.ObjectIdentifier(new Slice<GoInt>(((1 : GoInt)),
	((3 : GoInt)), ((6 : GoInt)), ((1 : GoInt)), ((4 : GoInt)), ((1 : GoInt)), ((311 : GoInt)), ((61 : GoInt)), ((1 : GoInt)),
	((1 : GoInt)))).__copy__();

var _systemRootsErr:Error = ((null : stdgo.Error));
final _certFileEnv:GoString = "SSL_CERT_FILE";
final _nameTypeEmail:GoInt64 = ((1 : GoUnTypedInt));
final sha384withRSAPSS:SignatureAlgorithm = new SignatureAlgorithm((14 : GoUnTypedInt));

var _oidExtKeyUsageServerAuth:stdgo.encoding.asn1.Asn1.ObjectIdentifier = new stdgo.encoding.asn1.Asn1.ObjectIdentifier(new Slice<GoInt>(((1 : GoInt)),
	((3 : GoInt)), ((6 : GoInt)), ((1 : GoInt)), ((5 : GoInt)), ((5 : GoInt)), ((7 : GoInt)), ((3 : GoInt)), ((1 : GoInt)))).__copy__();

final extKeyUsageClientAuth:ExtKeyUsage = new ExtKeyUsage((2 : GoUnTypedInt));
var _oidExtensionExtendedKeyUsage:Slice<GoInt> = new Slice<GoInt>(((2 : GoInt)), ((5 : GoInt)), ((29 : GoInt)), ((37 : GoInt)));
final pemcipherAES192:PEMCipher = new PEMCipher((4 : GoUnTypedInt));
final extKeyUsageIPSECEndSystem:ExtKeyUsage = new ExtKeyUsage((5 : GoUnTypedInt));

var _oidSignatureECDSAWithSHA384:stdgo.encoding.asn1.Asn1.ObjectIdentifier = new stdgo.encoding.asn1.Asn1.ObjectIdentifier(new Slice<GoInt>(((1 : GoInt)),
	((2 : GoInt)), ((840 : GoInt)), ((10045 : GoInt)), ((4 : GoInt)), ((3 : GoInt)), ((3 : GoInt)))).__copy__();

final extKeyUsageIPSECTunnel:ExtKeyUsage = new ExtKeyUsage((6 : GoUnTypedInt));
final notAuthorizedToSign:InvalidReason = new InvalidReason((0 : GoUnTypedInt));
var errUnsupportedAlgorithm:stdgo.Error = stdgo.errors.Errors.new_("x509: cannot verify signature: algorithm unimplemented");
final keyUsageKeyEncipherment:KeyUsage = (new KeyUsage(((1 : GoUnTypedInt)) << (2 : GoUnTypedInt)));
final incompatibleUsage:InvalidReason = new InvalidReason((4 : GoUnTypedInt));
final keyUsageDigitalSignature:KeyUsage = (new KeyUsage(((1 : GoUnTypedInt)) << (0 : GoUnTypedInt)));
final sha1withRSA:SignatureAlgorithm = new SignatureAlgorithm((3 : GoUnTypedInt));

var _oidSignatureMD2WithRSA:stdgo.encoding.asn1.Asn1.ObjectIdentifier = new stdgo.encoding.asn1.Asn1.ObjectIdentifier(new Slice<GoInt>(((1 : GoInt)),
	((2 : GoInt)), ((840 : GoInt)), ((113549 : GoInt)), ((1 : GoInt)), ((1 : GoInt)), ((2 : GoInt)))).__copy__();

final keyUsageCRLSign:KeyUsage = (new KeyUsage(((1 : GoUnTypedInt)) << (6 : GoUnTypedInt)));
final md2withRSA:SignatureAlgorithm = new SignatureAlgorithm((1 : GoUnTypedInt));

var _oidExtKeyUsageEmailProtection:stdgo.encoding.asn1.Asn1.ObjectIdentifier = new stdgo.encoding.asn1.Asn1.ObjectIdentifier(new Slice<GoInt>(((1 : GoInt)),
	((3 : GoInt)), ((6 : GoInt)), ((1 : GoInt)), ((5 : GoInt)), ((5 : GoInt)), ((7 : GoInt)), ((3 : GoInt)), ((4 : GoInt)))).__copy__();

final unknownSignatureAlgorithm:SignatureAlgorithm = new SignatureAlgorithm((0 : GoUnTypedInt));

var _oidSignatureECDSAWithSHA256:stdgo.encoding.asn1.Asn1.ObjectIdentifier = new stdgo.encoding.asn1.Asn1.ObjectIdentifier(new Slice<GoInt>(((1 : GoInt)),
	((2 : GoInt)), ((840 : GoInt)), ((10045 : GoInt)), ((4 : GoInt)), ((3 : GoInt)), ((2 : GoInt)))).__copy__();

final _maxChainSignatureChecks:GoInt64 = ((100 : GoUnTypedInt));
var _oidExtensionCRLDistributionPoints:Slice<GoInt> = new Slice<GoInt>(((2 : GoInt)), ((5 : GoInt)), ((29 : GoInt)), ((31 : GoInt)));
var _systemRoots:Pointer<CertPool> = new Pointer<CertPool>().nil();
var _once:stdgo.sync.Sync.Once = new stdgo.sync.Sync.Once();
var _oidExtKeyUsageNetscapeServerGatedCrypto:stdgo.encoding.asn1.Asn1.ObjectIdentifier = new stdgo.encoding.asn1.Asn1.ObjectIdentifier(new Slice<GoInt>(((2 : GoInt)),
	((16 : GoInt)), ((840 : GoInt)), ((1 : GoInt)), ((113730 : GoInt)), ((4 : GoInt)), ((1 : GoInt)))).__copy__();
final keyUsageKeyAgreement:KeyUsage = (new KeyUsage(((1 : GoUnTypedInt)) << (4 : GoUnTypedInt)));
final tooManyIntermediates:InvalidReason = new InvalidReason((3 : GoUnTypedInt));
final extKeyUsageIPSECUser:ExtKeyUsage = new ExtKeyUsage((7 : GoUnTypedInt));
final extKeyUsageMicrosoftCommercialCodeSigning:ExtKeyUsage = new ExtKeyUsage((12 : GoUnTypedInt));
final _ecPrivKeyVersion:GoInt64 = ((1 : GoUnTypedInt));
final keyUsageDecipherOnly:KeyUsage = (new KeyUsage(((1 : GoUnTypedInt)) << (8 : GoUnTypedInt)));

var _oidSignatureECDSAWithSHA512:stdgo.encoding.asn1.Asn1.ObjectIdentifier = new stdgo.encoding.asn1.Asn1.ObjectIdentifier(new Slice<GoInt>(((1 : GoInt)),
	((2 : GoInt)), ((840 : GoInt)), ((10045 : GoInt)), ((4 : GoInt)), ((3 : GoInt)), ((4 : GoInt)))).__copy__();

var _oidExtensionCertificatePolicies:Slice<GoInt> = new Slice<GoInt>(((2 : GoInt)), ((5 : GoInt)), ((29 : GoInt)), ((32 : GoInt)));

var _oidNamedCurveP224:stdgo.encoding.asn1.Asn1.ObjectIdentifier = new stdgo.encoding.asn1.Asn1.ObjectIdentifier(new Slice<GoInt>(((1 : GoInt)),
	((3 : GoInt)), ((132 : GoInt)), ((0 : GoInt)), ((33 : GoInt)))).__copy__();

var _oidExtensionCRLNumber:Slice<GoInt> = new Slice<GoInt>(((2 : GoInt)), ((5 : GoInt)), ((29 : GoInt)), ((20 : GoInt)));
final pemcipherAES256:PEMCipher = new PEMCipher((5 : GoUnTypedInt));

var _oidSignatureECDSAWithSHA1:stdgo.encoding.asn1.Asn1.ObjectIdentifier = new stdgo.encoding.asn1.Asn1.ObjectIdentifier(new Slice<GoInt>(((1 : GoInt)),
	((2 : GoInt)), ((840 : GoInt)), ((10045 : GoInt)), ((4 : GoInt)), ((1 : GoInt)))).__copy__();

var _oidAuthorityInfoAccessOcsp:stdgo.encoding.asn1.Asn1.ObjectIdentifier = new stdgo.encoding.asn1.Asn1.ObjectIdentifier(new Slice<GoInt>(((1 : GoInt)),
	((3 : GoInt)), ((6 : GoInt)), ((1 : GoInt)), ((5 : GoInt)), ((5 : GoInt)), ((7 : GoInt)), ((48 : GoInt)), ((1 : GoInt)))).__copy__();

var _oidPublicKeyRSA:stdgo.encoding.asn1.Asn1.ObjectIdentifier = new stdgo.encoding.asn1.Asn1.ObjectIdentifier(new Slice<GoInt>(((1 : GoInt)), ((2 : GoInt)),
	((840 : GoInt)), ((113549 : GoInt)), ((1 : GoInt)), ((1 : GoInt)), ((1 : GoInt)))).__copy__();

var _oidSignatureRSAPSS:stdgo.encoding.asn1.Asn1.ObjectIdentifier = new stdgo.encoding.asn1.Asn1.ObjectIdentifier(new Slice<GoInt>(((1 : GoInt)),
	((2 : GoInt)), ((840 : GoInt)), ((113549 : GoInt)), ((1 : GoInt)), ((1 : GoInt)), ((10 : GoInt)))).__copy__();

final extKeyUsageEmailProtection:ExtKeyUsage = new ExtKeyUsage((4 : GoUnTypedInt));
final sha256withRSAPSS:SignatureAlgorithm = new SignatureAlgorithm((13 : GoUnTypedInt));
final _nameTypeDNS:GoInt64 = ((2 : GoUnTypedInt));
var _certDirectories:Slice<GoString> = new Slice<GoString>();
final pemcipherAES128:PEMCipher = new PEMCipher((3 : GoUnTypedInt));
final dsawithSHA256:SignatureAlgorithm = new SignatureAlgorithm((8 : GoUnTypedInt));

var _oidExtKeyUsageIPSECTunnel:stdgo.encoding.asn1.Asn1.ObjectIdentifier = new stdgo.encoding.asn1.Asn1.ObjectIdentifier(new Slice<GoInt>(((1 : GoInt)),
	((3 : GoInt)), ((6 : GoInt)), ((1 : GoInt)), ((5 : GoInt)), ((5 : GoInt)), ((7 : GoInt)), ((3 : GoInt)), ((6 : GoInt)))).__copy__();

var _oidExtKeyUsageOCSPSigning:stdgo.encoding.asn1.Asn1.ObjectIdentifier = new stdgo.encoding.asn1.Asn1.ObjectIdentifier(new Slice<GoInt>(((1 : GoInt)),
	((3 : GoInt)), ((6 : GoInt)), ((1 : GoInt)), ((5 : GoInt)), ((5 : GoInt)), ((7 : GoInt)), ((3 : GoInt)), ((9 : GoInt)))).__copy__();

final rsa:PublicKeyAlgorithm = new PublicKeyAlgorithm((1 : GoUnTypedInt));
final canotAuthorizedForExtKeyUsage:InvalidReason = new InvalidReason((9 : GoUnTypedInt));
final extKeyUsageOCSPSigning:ExtKeyUsage = new ExtKeyUsage((9 : GoUnTypedInt));

var _oidSignatureSHA1WithRSA:stdgo.encoding.asn1.Asn1.ObjectIdentifier = new stdgo.encoding.asn1.Asn1.ObjectIdentifier(new Slice<GoInt>(((1 : GoInt)),
	((2 : GoInt)), ((840 : GoInt)), ((113549 : GoInt)), ((1 : GoInt)), ((1 : GoInt)), ((5 : GoInt)))).__copy__();

final extKeyUsageTimeStamping:ExtKeyUsage = new ExtKeyUsage((8 : GoUnTypedInt));
final extKeyUsageAny:ExtKeyUsage = new ExtKeyUsage((0 : GoUnTypedInt));

var _oidExtKeyUsageAny:stdgo.encoding.asn1.Asn1.ObjectIdentifier = new stdgo.encoding.asn1.Asn1.ObjectIdentifier(new Slice<GoInt>(((2 : GoInt)),
	((5 : GoInt)), ((29 : GoInt)), ((37 : GoInt)), ((0 : GoInt)))).__copy__();

final extKeyUsageServerAuth:ExtKeyUsage = new ExtKeyUsage((1 : GoUnTypedInt));

var _oidExtKeyUsageClientAuth:stdgo.encoding.asn1.Asn1.ObjectIdentifier = new stdgo.encoding.asn1.Asn1.ObjectIdentifier(new Slice<GoInt>(((1 : GoInt)),
	((3 : GoInt)), ((6 : GoInt)), ((1 : GoInt)), ((5 : GoInt)), ((5 : GoInt)), ((7 : GoInt)), ((3 : GoInt)), ((2 : GoInt)))).__copy__();

final extKeyUsageCodeSigning:ExtKeyUsage = new ExtKeyUsage((3 : GoUnTypedInt));

var _oidExtKeyUsageTimeStamping:stdgo.encoding.asn1.Asn1.ObjectIdentifier = new stdgo.encoding.asn1.Asn1.ObjectIdentifier(new Slice<GoInt>(((1 : GoInt)),
	((3 : GoInt)), ((6 : GoInt)), ((1 : GoInt)), ((5 : GoInt)), ((5 : GoInt)), ((7 : GoInt)), ((3 : GoInt)), ((8 : GoInt)))).__copy__();

var _oidExtKeyUsageMicrosoftServerGatedCrypto:stdgo.encoding.asn1.Asn1.ObjectIdentifier = new stdgo.encoding.asn1.Asn1.ObjectIdentifier(new Slice<GoInt>(((1 : GoInt)),
	((3 : GoInt)), ((6 : GoInt)), ((1 : GoInt)), ((4 : GoInt)), ((1 : GoInt)), ((311 : GoInt)), ((10 : GoInt)), ((3 : GoInt)),
	((3 : GoInt)))).__copy__();

final extKeyUsageMicrosoftKernelCodeSigning:ExtKeyUsage = new ExtKeyUsage((13 : GoUnTypedInt));

var _extKeyUsageOIDs:Slice<T__struct_2> = new Slice<T__struct_2>(new T__struct_2(extKeyUsageAny, _oidExtKeyUsageAny.__copy__()).__copy__(),
	new T__struct_2(extKeyUsageServerAuth, _oidExtKeyUsageServerAuth.__copy__()).__copy__(),
	new T__struct_2(extKeyUsageClientAuth, _oidExtKeyUsageClientAuth.__copy__()).__copy__(),
	new T__struct_2(extKeyUsageCodeSigning, _oidExtKeyUsageCodeSigning.__copy__()).__copy__(),
	new T__struct_2(extKeyUsageEmailProtection, _oidExtKeyUsageEmailProtection.__copy__()).__copy__(),
	new T__struct_2(extKeyUsageIPSECEndSystem, _oidExtKeyUsageIPSECEndSystem.__copy__()).__copy__(),
	new T__struct_2(extKeyUsageIPSECTunnel, _oidExtKeyUsageIPSECTunnel.__copy__()).__copy__(),
	new T__struct_2(extKeyUsageIPSECUser, _oidExtKeyUsageIPSECUser.__copy__()).__copy__(),
	new T__struct_2(extKeyUsageTimeStamping, _oidExtKeyUsageTimeStamping.__copy__()).__copy__(),
	new T__struct_2(extKeyUsageOCSPSigning, _oidExtKeyUsageOCSPSigning.__copy__()).__copy__(),
	new T__struct_2(extKeyUsageMicrosoftServerGatedCrypto, _oidExtKeyUsageMicrosoftServerGatedCrypto.__copy__()).__copy__(),
	new T__struct_2(extKeyUsageNetscapeServerGatedCrypto, _oidExtKeyUsageNetscapeServerGatedCrypto.__copy__()).__copy__(),
	new T__struct_2(extKeyUsageMicrosoftCommercialCodeSigning, _oidExtKeyUsageMicrosoftCommercialCodeSigning.__copy__()).__copy__(),
	new T__struct_2(extKeyUsageMicrosoftKernelCodeSigning, _oidExtKeyUsageMicrosoftKernelCodeSigning.__copy__()).__copy__());

final _leafCertificate:GoUnTypedInt = (0 : GoUnTypedInt);
final nameConstraintsWithoutSANs:InvalidReason = new InvalidReason((6 : GoUnTypedInt));
final ecdsa:PublicKeyAlgorithm = new PublicKeyAlgorithm((3 : GoUnTypedInt));
final md5withRSA:SignatureAlgorithm = new SignatureAlgorithm((2 : GoUnTypedInt));

var _hashToPSSParameters:GoMap<stdgo.crypto.Crypto.Hash, stdgo.encoding.asn1.Asn1.RawValue> = new GoMap<stdgo.crypto.Crypto.Hash,
	stdgo.encoding.asn1.Asn1.RawValue>(new stdgo.reflect.Reflect._Type(stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.named("stdgo.crypto.Crypto.Hash",
		[], stdgo.reflect.Reflect.GoType.basic(uint_kind)),
	stdgo.reflect.Reflect.GoType.named("stdgo.encoding.asn1.Asn1.RawValue", [], stdgo.reflect.Reflect.GoType.structType([
		{
			name: "class_",
			embedded: false,
			tag: "",
			type: stdgo.reflect.Reflect.GoType.basic(int_kind)
		},
		{
			name: "tag",
			embedded: false,
			tag: "",
			type: stdgo.reflect.Reflect.GoType.basic(int_kind)
		},
		{
			name: "isCompound",
			embedded: false,
			tag: "",
			type: stdgo.reflect.Reflect.GoType.basic(bool_kind)
		},
		{
			name: "bytes",
			embedded: false,
			tag: "",
			type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(uint8_kind))
		},
		{
			name: "fullBytes",
			embedded: false,
			tag: "",
			type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(uint8_kind))
		}
	])))), {
	key: stdgo.crypto.Crypto.sha256,
	value: (({
		fullBytes: new Slice<GoUInt8>(((48 : GoUInt8)), ((52 : GoUInt8)), ((160 : GoUInt8)), ((15 : GoUInt8)), ((48 : GoUInt8)), ((13 : GoUInt8)),
			((6 : GoUInt8)), ((9 : GoUInt8)), ((96 : GoUInt8)), ((134 : GoUInt8)), ((72 : GoUInt8)), ((1 : GoUInt8)), ((101 : GoUInt8)), ((3 : GoUInt8)),
			((4 : GoUInt8)), ((2 : GoUInt8)), ((1 : GoUInt8)), ((5 : GoUInt8)), ((0 : GoUInt8)), ((161 : GoUInt8)), ((28 : GoUInt8)), ((48 : GoUInt8)),
			((26 : GoUInt8)), ((6 : GoUInt8)), ((9 : GoUInt8)), ((42 : GoUInt8)), ((134 : GoUInt8)), ((72 : GoUInt8)), ((134 : GoUInt8)), ((247 : GoUInt8)),
			((13 : GoUInt8)), ((1 : GoUInt8)), ((1 : GoUInt8)), ((8 : GoUInt8)), ((48 : GoUInt8)), ((13 : GoUInt8)), ((6 : GoUInt8)), ((9 : GoUInt8)),
			((96 : GoUInt8)), ((134 : GoUInt8)), ((72 : GoUInt8)), ((1 : GoUInt8)), ((101 : GoUInt8)), ((3 : GoUInt8)), ((4 : GoUInt8)), ((2 : GoUInt8)),
			((1 : GoUInt8)), ((5 : GoUInt8)), ((0 : GoUInt8)), ((162 : GoUInt8)), ((3 : GoUInt8)), ((2 : GoUInt8)), ((1 : GoUInt8)), ((32 : GoUInt8))),
		class_: 0,
		tag: 0,
		isCompound: false,
		bytes: new Slice<GoUInt8>().nil()
	} : stdgo.encoding.asn1.Asn1.RawValue)).__copy__()
	}, {
	key: stdgo.crypto.Crypto.sha384,
	value: (({
		fullBytes: new Slice<GoUInt8>(((48 : GoUInt8)), ((52 : GoUInt8)), ((160 : GoUInt8)), ((15 : GoUInt8)), ((48 : GoUInt8)), ((13 : GoUInt8)),
			((6 : GoUInt8)), ((9 : GoUInt8)), ((96 : GoUInt8)), ((134 : GoUInt8)), ((72 : GoUInt8)), ((1 : GoUInt8)), ((101 : GoUInt8)), ((3 : GoUInt8)),
			((4 : GoUInt8)), ((2 : GoUInt8)), ((2 : GoUInt8)), ((5 : GoUInt8)), ((0 : GoUInt8)), ((161 : GoUInt8)), ((28 : GoUInt8)), ((48 : GoUInt8)),
			((26 : GoUInt8)), ((6 : GoUInt8)), ((9 : GoUInt8)), ((42 : GoUInt8)), ((134 : GoUInt8)), ((72 : GoUInt8)), ((134 : GoUInt8)), ((247 : GoUInt8)),
			((13 : GoUInt8)), ((1 : GoUInt8)), ((1 : GoUInt8)), ((8 : GoUInt8)), ((48 : GoUInt8)), ((13 : GoUInt8)), ((6 : GoUInt8)), ((9 : GoUInt8)),
			((96 : GoUInt8)), ((134 : GoUInt8)), ((72 : GoUInt8)), ((1 : GoUInt8)), ((101 : GoUInt8)), ((3 : GoUInt8)), ((4 : GoUInt8)), ((2 : GoUInt8)),
			((2 : GoUInt8)), ((5 : GoUInt8)), ((0 : GoUInt8)), ((162 : GoUInt8)), ((3 : GoUInt8)), ((2 : GoUInt8)), ((1 : GoUInt8)), ((48 : GoUInt8))),
		class_: 0,
		tag: 0,
		isCompound: false,
		bytes: new Slice<GoUInt8>().nil()
	} : stdgo.encoding.asn1.Asn1.RawValue)).__copy__()
	}, {
	key: stdgo.crypto.Crypto.sha512,
	value: (({
		fullBytes: new Slice<GoUInt8>(((48 : GoUInt8)), ((52 : GoUInt8)), ((160 : GoUInt8)), ((15 : GoUInt8)), ((48 : GoUInt8)), ((13 : GoUInt8)),
			((6 : GoUInt8)), ((9 : GoUInt8)), ((96 : GoUInt8)), ((134 : GoUInt8)), ((72 : GoUInt8)), ((1 : GoUInt8)), ((101 : GoUInt8)), ((3 : GoUInt8)),
			((4 : GoUInt8)), ((2 : GoUInt8)), ((3 : GoUInt8)), ((5 : GoUInt8)), ((0 : GoUInt8)), ((161 : GoUInt8)), ((28 : GoUInt8)), ((48 : GoUInt8)),
			((26 : GoUInt8)), ((6 : GoUInt8)), ((9 : GoUInt8)), ((42 : GoUInt8)), ((134 : GoUInt8)), ((72 : GoUInt8)), ((134 : GoUInt8)), ((247 : GoUInt8)),
			((13 : GoUInt8)), ((1 : GoUInt8)), ((1 : GoUInt8)), ((8 : GoUInt8)), ((48 : GoUInt8)), ((13 : GoUInt8)), ((6 : GoUInt8)), ((9 : GoUInt8)),
			((96 : GoUInt8)), ((134 : GoUInt8)), ((72 : GoUInt8)), ((1 : GoUInt8)), ((101 : GoUInt8)), ((3 : GoUInt8)), ((4 : GoUInt8)), ((2 : GoUInt8)),
			((3 : GoUInt8)), ((5 : GoUInt8)), ((0 : GoUInt8)), ((162 : GoUInt8)), ((3 : GoUInt8)), ((2 : GoUInt8)), ((1 : GoUInt8)), ((64 : GoUInt8))),
		class_: 0,
		tag: 0,
		isCompound: false,
		bytes: new Slice<GoUInt8>().nil()
	} : stdgo.encoding.asn1.Asn1.RawValue)).__copy__()
	});

final _0:PEMCipher = new PEMCipher((0 : GoUnTypedInt));
final ecdsawithSHA1:SignatureAlgorithm = new SignatureAlgorithm((9 : GoUnTypedInt));
final unconstrainedName:InvalidReason = new InvalidReason((7 : GoUnTypedInt));

var _oidSignatureSHA384WithRSA:stdgo.encoding.asn1.Asn1.ObjectIdentifier = new stdgo.encoding.asn1.Asn1.ObjectIdentifier(new Slice<GoInt>(((1 : GoInt)),
	((2 : GoInt)), ((840 : GoInt)), ((113549 : GoInt)), ((1 : GoInt)), ((1 : GoInt)), ((12 : GoInt)))).__copy__();

final ed25519:PublicKeyAlgorithm = new PublicKeyAlgorithm((4 : GoUnTypedInt));
final _nameTypeIP:GoInt64 = ((7 : GoUnTypedInt));

var _oidSignatureDSAWithSHA1:stdgo.encoding.asn1.Asn1.ObjectIdentifier = new stdgo.encoding.asn1.Asn1.ObjectIdentifier(new Slice<GoInt>(((1 : GoInt)),
	((2 : GoInt)), ((840 : GoInt)), ((10040 : GoInt)), ((4 : GoInt)), ((3 : GoInt)))).__copy__();

final sha512withRSAPSS:SignatureAlgorithm = new SignatureAlgorithm((15 : GoUnTypedInt));
final dsa:PublicKeyAlgorithm = new PublicKeyAlgorithm((2 : GoUnTypedInt));
final ecdsawithSHA256:SignatureAlgorithm = new SignatureAlgorithm((10 : GoUnTypedInt));
final ecdsawithSHA384:SignatureAlgorithm = new SignatureAlgorithm((11 : GoUnTypedInt));

var _signatureAlgorithmDetails:Slice<T__struct_1> = new Slice<T__struct_1>(new T__struct_1(md2withRSA, "MD2-RSA", _oidSignatureMD2WithRSA.__copy__(), rsa,
	new stdgo.crypto.Crypto.Hash(((0 : GoUInt)))).__copy__(),
	new T__struct_1(md5withRSA, "MD5-RSA", _oidSignatureMD5WithRSA.__copy__(), rsa, stdgo.crypto.Crypto.md5).__copy__(),
	new T__struct_1(sha1withRSA, "SHA1-RSA", _oidSignatureSHA1WithRSA.__copy__(), rsa, stdgo.crypto.Crypto.sha1).__copy__(),
	new T__struct_1(sha1withRSA, "SHA1-RSA", _oidISOSignatureSHA1WithRSA.__copy__(), rsa, stdgo.crypto.Crypto.sha1).__copy__(),
	new T__struct_1(sha256withRSA, "SHA256-RSA", _oidSignatureSHA256WithRSA.__copy__(), rsa, stdgo.crypto.Crypto.sha256).__copy__(),
	new T__struct_1(sha384withRSA, "SHA384-RSA", _oidSignatureSHA384WithRSA.__copy__(), rsa, stdgo.crypto.Crypto.sha384).__copy__(),
	new T__struct_1(sha512withRSA, "SHA512-RSA", _oidSignatureSHA512WithRSA.__copy__(), rsa, stdgo.crypto.Crypto.sha512).__copy__(),
	new T__struct_1(sha256withRSAPSS, "SHA256-RSAPSS", _oidSignatureRSAPSS.__copy__(), rsa, stdgo.crypto.Crypto.sha256).__copy__(),
	new T__struct_1(sha384withRSAPSS, "SHA384-RSAPSS", _oidSignatureRSAPSS.__copy__(), rsa, stdgo.crypto.Crypto.sha384).__copy__(),
	new T__struct_1(sha512withRSAPSS, "SHA512-RSAPSS", _oidSignatureRSAPSS.__copy__(), rsa, stdgo.crypto.Crypto.sha512).__copy__(),
	new T__struct_1(dsawithSHA1, "DSA-SHA1", _oidSignatureDSAWithSHA1.__copy__(), dsa, stdgo.crypto.Crypto.sha1).__copy__(),
	new T__struct_1(dsawithSHA256, "DSA-SHA256", _oidSignatureDSAWithSHA256.__copy__(), dsa, stdgo.crypto.Crypto.sha256).__copy__(),
	new T__struct_1(ecdsawithSHA1, "ECDSA-SHA1", _oidSignatureECDSAWithSHA1.__copy__(), ecdsa, stdgo.crypto.Crypto.sha1).__copy__(),
	new T__struct_1(ecdsawithSHA256, "ECDSA-SHA256", _oidSignatureECDSAWithSHA256.__copy__(), ecdsa, stdgo.crypto.Crypto.sha256).__copy__(),
	new T__struct_1(ecdsawithSHA384, "ECDSA-SHA384", _oidSignatureECDSAWithSHA384.__copy__(), ecdsa, stdgo.crypto.Crypto.sha384).__copy__(),
	new T__struct_1(ecdsawithSHA512, "ECDSA-SHA512", _oidSignatureECDSAWithSHA512.__copy__(), ecdsa, stdgo.crypto.Crypto.sha512).__copy__(),
	new T__struct_1(pureEd25519, "Ed25519", _oidSignatureEd25519.__copy__(), ed25519, new stdgo.crypto.Crypto.Hash(((0 : GoUInt)))).__copy__());

var _oidMGF1:stdgo.encoding.asn1.Asn1.ObjectIdentifier = new stdgo.encoding.asn1.Asn1.ObjectIdentifier(new Slice<GoInt>(((1 : GoInt)), ((2 : GoInt)),
	((840 : GoInt)), ((113549 : GoInt)), ((1 : GoInt)), ((1 : GoInt)), ((8 : GoInt)))).__copy__();

var _publicKeyAlgoName:GoArray<GoString> = {
	var s = new GoArray<GoString>(...[for (i in 0...5) ""]);
	s[0] = "RSA";
	s[1] = "DSA";
	s[2] = "ECDSA";
	s[3] = "Ed25519";
	s;
};

var _oidExtensionAuthorityInfoAccess:Slice<GoInt> = new Slice<GoInt>(((1 : GoInt)), ((3 : GoInt)), ((6 : GoInt)), ((1 : GoInt)), ((5 : GoInt)), ((5 : GoInt)),
	((7 : GoInt)), ((1 : GoInt)), ((1 : GoInt)));

var _oidExtensionKeyUsage:Slice<GoInt> = new Slice<GoInt>(((2 : GoInt)), ((5 : GoInt)), ((29 : GoInt)), ((15 : GoInt)));
var _oidExtensionBasicConstraints:Slice<GoInt> = new Slice<GoInt>(((2 : GoInt)), ((5 : GoInt)), ((29 : GoInt)), ((19 : GoInt)));

var _oidPublicKeyDSA:stdgo.encoding.asn1.Asn1.ObjectIdentifier = new stdgo.encoding.asn1.Asn1.ObjectIdentifier(new Slice<GoInt>(((1 : GoInt)), ((2 : GoInt)),
	((840 : GoInt)), ((10040 : GoInt)), ((4 : GoInt)), ((1 : GoInt)))).__copy__();

var _errNotParsed:stdgo.Error = stdgo.errors.Errors.new_("x509: missing ASN.1 contents; use ParseCertificate");
final keyUsageContentCommitment:KeyUsage = (new KeyUsage(((1 : GoUnTypedInt)) << (1 : GoUnTypedInt)));
final tooManyConstraints:InvalidReason = new InvalidReason((8 : GoUnTypedInt));

var _oidExtensionRequest:stdgo.encoding.asn1.Asn1.ObjectIdentifier = new stdgo.encoding.asn1.Asn1.ObjectIdentifier(new Slice<GoInt>(((1 : GoInt)),
	((2 : GoInt)), ((840 : GoInt)), ((113549 : GoInt)), ((1 : GoInt)), ((9 : GoInt)), ((14 : GoInt)))).__copy__();

var _certFiles:Slice<GoString> = new Slice<GoString>();
final _rootCertificate = (2 : GoUnTypedInt);

var _oidAuthorityInfoAccessIssuers:stdgo.encoding.asn1.Asn1.ObjectIdentifier = new stdgo.encoding.asn1.Asn1.ObjectIdentifier(new Slice<GoInt>(((1 : GoInt)),
	((3 : GoInt)), ((6 : GoInt)), ((1 : GoInt)), ((5 : GoInt)), ((5 : GoInt)), ((7 : GoInt)), ((48 : GoInt)), ((2 : GoInt)))).__copy__();

var _pemCRLPrefix:Slice<GoUInt8> = (("-----BEGIN X509 CRL" : Slice<GoByte>));

var _oidNamedCurveP521:stdgo.encoding.asn1.Asn1.ObjectIdentifier = new stdgo.encoding.asn1.Asn1.ObjectIdentifier(new Slice<GoInt>(((1 : GoInt)),
	((3 : GoInt)), ((132 : GoInt)), ((0 : GoInt)), ((35 : GoInt)))).__copy__();

var incorrectPasswordError:stdgo.Error = stdgo.errors.Errors.new_("x509: decryption password incorrect");

var _oidSHA384:stdgo.encoding.asn1.Asn1.ObjectIdentifier = new stdgo.encoding.asn1.Asn1.ObjectIdentifier(new Slice<GoInt>(((2 : GoInt)), ((16 : GoInt)),
	((840 : GoInt)), ((1 : GoInt)), ((101 : GoInt)), ((3 : GoInt)), ((4 : GoInt)), ((2 : GoInt)), ((2 : GoInt)))).__copy__();

var _oidExtensionAuthorityKeyId:Slice<GoInt> = new Slice<GoInt>(((2 : GoInt)), ((5 : GoInt)), ((29 : GoInt)), ((35 : GoInt)));

var _oidNamedCurveP384:stdgo.encoding.asn1.Asn1.ObjectIdentifier = new stdgo.encoding.asn1.Asn1.ObjectIdentifier(new Slice<GoInt>(((1 : GoInt)),
	((3 : GoInt)), ((132 : GoInt)), ((0 : GoInt)), ((34 : GoInt)))).__copy__();

final _nameTypeURI:GoInt64 = ((6 : GoUnTypedInt));

var _oidPublicKeyECDSA:stdgo.encoding.asn1.Asn1.ObjectIdentifier = new stdgo.encoding.asn1.Asn1.ObjectIdentifier(new Slice<GoInt>(((1 : GoInt)),
	((2 : GoInt)), ((840 : GoInt)), ((10045 : GoInt)), ((2 : GoInt)), ((1 : GoInt)))).__copy__();

final canotAuthorizedForThisName:InvalidReason = new InvalidReason((2 : GoUnTypedInt));

var _rfc1423Algos:Slice<T_rfc1423Algo> = new Slice<T_rfc1423Algo>((({
	_cipher: pemcipherDES,
	_name: "DES-CBC",
	_cipherFunc: stdgo.crypto.des.Des.newCipher,
	_keySize: ((8 : GoInt)),
	_blockSize: stdgo.crypto.des.Des.blockSize
} : T_rfc1423Algo)).__copy__(), (({
	_cipher: pemcipher3DES,
	_name: "DES-EDE3-CBC",
	_cipherFunc: stdgo.crypto.des.Des.newTripleDESCipher,
	_keySize: ((24 : GoInt)),
	_blockSize: stdgo.crypto.des.Des.blockSize
	} : T_rfc1423Algo)).__copy__(), (({
	_cipher: pemcipherAES128,
	_name: "AES-128-CBC",
	_cipherFunc: stdgo.crypto.aes.Aes.newCipher,
	_keySize: ((16 : GoInt)),
	_blockSize: stdgo.crypto.aes.Aes.blockSize
	} : T_rfc1423Algo)).__copy__(), (({
	_cipher: pemcipherAES192,
	_name: "AES-192-CBC",
	_cipherFunc: stdgo.crypto.aes.Aes.newCipher,
	_keySize: ((24 : GoInt)),
	_blockSize: stdgo.crypto.aes.Aes.blockSize
	} : T_rfc1423Algo)).__copy__(), (({
	_cipher: pemcipherAES256,
	_name: "AES-256-CBC",
	_cipherFunc: stdgo.crypto.aes.Aes.newCipher,
	_keySize: ((32 : GoInt)),
	_blockSize: stdgo.crypto.aes.Aes.blockSize
	} : T_rfc1423Algo)).__copy__());

/**
	// NewCertPool returns a new, empty CertPool.
**/
function newCertPool():Pointer<CertPool> {
	return Go.pointer((({_byName: new GoMap<GoString,
		Slice<GoInt>>(new stdgo.reflect.Reflect._Type(stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(string_kind),
		stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(int_kind))))), _haveSum: new GoMap<T_sum224,
			Bool>(new stdgo.reflect.Reflect._Type(stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.named("T_sum224", [],
				stdgo.reflect.Reflect.GoType.arrayType(stdgo.reflect.Reflect.GoType.basic(uint8_kind), 28)),
			stdgo.reflect.Reflect.GoType.basic(bool_kind)))), _lazyCerts: new Slice<T_lazyCert>().nil()} : CertPool)));
}

/**
	// SystemCertPool returns a copy of the system cert pool.
	//
	// On Unix systems other than macOS the environment variables SSL_CERT_FILE and
	// SSL_CERT_DIR can be used to override the system default locations for the SSL
	// certificate file and SSL certificate files directory, respectively. The
	// latter can be a colon-separated list.
	//
	// Any mutations to the returned pool are not written to disk and do not affect
	// any other pool returned by SystemCertPool.
	//
	// New changes in the system cert pool might not be reflected in subsequent calls.
**/
function systemCertPool():{var _0:Pointer<CertPool>; var _1:Error;} {
	if (stdgo.runtime.Runtime.goos == (("windows" : GoString))) {
		return {_0: new Pointer<CertPool>().nil(), _1: stdgo.errors.Errors.new_("crypto/x509: system root pool is not available on Windows")};
	};
	{
		var _sysRoots:Pointer<CertPool> = _systemRootsPool();
		if ((_sysRoots != null && !_sysRoots.isNil())) {
			return {_0: _sysRoots.value._copy(), _1: ((null : stdgo.Error))};
		};
	};
	return _loadSystemRoots();
}

/**
	// isPrintable reports whether the given b is in the ASN.1 PrintableString set.
	// This is a simplified version of encoding/asn1.isPrintable.
**/
function _isPrintable(_b:GoByte):Bool {
	return (("a".code : GoRune)) <= _b
		&& _b <= (("z".code : GoRune))
		|| (("A".code : GoRune)) <= _b
			&& _b <= (("Z".code : GoRune))
			|| (("0".code : GoRune)) <= _b
				&& _b <= (("9".code : GoRune))
				|| (("\'".code : GoRune)) <= _b
					&& _b <= ((")".code : GoRune))
					|| (("+".code : GoRune)) <= _b && _b <= (("/".code : GoRune)) || _b == ((" ".code : GoRune)) || _b == ((":".code : GoRune))
						|| _b == (("=".code : GoRune)) || _b == (("?".code : GoRune)) || _b == (("*".code : GoRune)) || _b == (("&".code : GoRune));
}

/**
	// parseASN1String parses the ASN.1 string types T61String, PrintableString,
	// UTF8String, BMPString, and IA5String. This is mostly copied from the
	// respective encoding/asn1.parse... methods, rather than just increasing
	// the API surface of that package.
**/
function _parseASN1String(_tag:golang_org.x.crypto.cryptobyte.asn1.Asn1.Tag, _value:Slice<GoByte>):{var _0:GoString; var _1:Error;} {
	if (_tag.__t__ == golang_org.x.crypto.cryptobyte.asn1.Asn1.t61string.__t__) {
		return {_0: ((_value : GoString)), _1: ((null : stdgo.Error))};
	} else if (_tag.__t__ == golang_org.x.crypto.cryptobyte.asn1.Asn1.printableString.__t__) {
		for (_ => _b in _value) {
			if (!_isPrintable(_b)) {
				return {_0: "", _1: stdgo.errors.Errors.new_("invalid PrintableString")};
			};
		};
		return {_0: ((_value : GoString)), _1: ((null : stdgo.Error))};
	} else if (_tag.__t__ == golang_org.x.crypto.cryptobyte.asn1.Asn1.utf8string.__t__) {
		if (!stdgo.unicode.utf8.Utf8.valid(_value)) {
			return {_0: "", _1: stdgo.errors.Errors.new_("invalid UTF-8 string")};
		};
		return {_0: ((_value : GoString)), _1: ((null : stdgo.Error))};
	} else if (_tag.__t__ == new golang_org.x.crypto.cryptobyte.asn1.Asn1.Tag(stdgo.encoding.asn1.Asn1.tagBMPString.__t__).__t__) {
		if (_value.length % ((2 : GoInt)) != ((0 : GoInt))) {
			return {_0: "", _1: stdgo.errors.Errors.new_("invalid BMPString")};
		};
		{
			var _l:GoInt = _value.length;
			if (_l >= ((2 : GoInt)) && _value[_l - ((1 : GoInt))] == ((0 : GoUInt8)) && _value[_l - ((2 : GoInt))] == ((0 : GoUInt8))) {
				_value = _value.__slice__(0, _l - ((2 : GoInt)));
			};
		};
		var _s:Slice<GoUInt16> = new Slice<GoUInt16>(...[for (i in 0...((((0 : GoInt)) : GoInt)).toBasic()) ((0 : GoUInt16))])
			.setCap(((_value.length / ((2 : GoInt)):GoInt)).toBasic());
		while (_value.length > ((0 : GoInt))) {
			_s = _s.__append__((((_value[((0 : GoInt))] : GoUInt16)) << ((8 : GoUnTypedInt))) + ((_value[((1 : GoInt))] : GoUInt16)));
			_value = _value.__slice__(((2 : GoInt)));
		};
		return {_0: ((stdgo.unicode.utf16.Utf16.decode(_s) : GoString)), _1: ((null : stdgo.Error))};
	} else if (_tag.__t__ == golang_org.x.crypto.cryptobyte.asn1.Asn1.ia5string.__t__) {
		var _s:GoString = ((_value : GoString));
		if (_isIA5String(_s) != null) {
			return {_0: "", _1: stdgo.errors.Errors.new_("invalid IA5String")};
		};
		return {_0: _s, _1: ((null : stdgo.Error))};
	};
	return {_0: "", _1: stdgo.fmt.Fmt.errorf("unsupported string type: %v", Go.toInterface(_tag))};
}

/**
	// parseName parses a DER encoded Name as defined in RFC 5280. We may
	// want to export this function in the future for use in crypto/tls.
**/
function _parseName(_raw:golang_org.x.crypto.cryptobyte.Cryptobyte.String_):{var _0:Pointer<stdgo.crypto.x509.pkix.Pkix.RDNSequence>; var _1:Error;} {
	if (!_raw.readASN1(Go.pointer(_raw), golang_org.x.crypto.cryptobyte.asn1.Asn1.sequence)) {
		return {_0: new Pointer<stdgo.crypto.x509.pkix.Pkix.RDNSequence>().nil(), _1: stdgo.errors.Errors.new_("x509: invalid RDNSequence")};
	};
	var _rdnSeq:stdgo.crypto.x509.pkix.Pkix.RDNSequence = new stdgo.crypto.x509.pkix.Pkix.RDNSequence();
	while (!_raw.empty()) {
		var _rdnSet:stdgo.crypto.x509.pkix.Pkix.RelativeDistinguishedNameSET = new stdgo.crypto.x509.pkix.Pkix.RelativeDistinguishedNameSET();
		var _set:golang_org.x.crypto.cryptobyte.Cryptobyte.String_ = new vendor.golang_org.x.crypto.cryptobyte.Cryptobyte.String_();
		if (!_raw.readASN1(Go.pointer(_set), golang_org.x.crypto.cryptobyte.asn1.Asn1.set)) {
			return {_0: new Pointer<stdgo.crypto.x509.pkix.Pkix.RDNSequence>().nil(), _1: stdgo.errors.Errors.new_("x509: invalid RDNSequence")};
		};
		while (!_set.empty()) {
			var _atav:golang_org.x.crypto.cryptobyte.Cryptobyte.String_ = new vendor.golang_org.x.crypto.cryptobyte.Cryptobyte.String_();
			if (!_set.readASN1(Go.pointer(_atav), golang_org.x.crypto.cryptobyte.asn1.Asn1.sequence)) {
				return {_0: new Pointer<stdgo.crypto.x509.pkix.Pkix.RDNSequence>().nil(),
					_1: stdgo.errors.Errors.new_("x509: invalid RDNSequence: invalid attribute")};
			};
			var _attr:stdgo.crypto.x509.pkix.Pkix.AttributeTypeAndValue = new stdgo.crypto.x509.pkix.Pkix.AttributeTypeAndValue();
			if (!_atav.readASN1ObjectIdentifier(Go.pointer(_attr.type))) {
				return {_0: new Pointer<stdgo.crypto.x509.pkix.Pkix.RDNSequence>().nil(),
					_1: stdgo.errors.Errors.new_("x509: invalid RDNSequence: invalid attribute type")};
			};
			var _rawValue:golang_org.x.crypto.cryptobyte.Cryptobyte.String_ = new vendor.golang_org.x.crypto.cryptobyte.Cryptobyte.String_();
			var _valueTag:golang_org.x.crypto.cryptobyte.asn1.Asn1.Tag = new vendor.golang_org.x.crypto.cryptobyte.asn1.Asn1.Tag();
			if (!_atav.readAnyASN1(Go.pointer(_rawValue), Go.pointer(_valueTag))) {
				return {_0: new Pointer<stdgo.crypto.x509.pkix.Pkix.RDNSequence>().nil(),
					_1: stdgo.errors.Errors.new_("x509: invalid RDNSequence: invalid attribute value")};
			};
			var _err:Error = ((null : stdgo.Error));
			{
				var __tmp__ = _parseASN1String(_valueTag, _rawValue.__copy__().__t__);
				_attr.value = Go.toInterface(__tmp__._0);
				_err = __tmp__._1;
			};
			if (_err != null) {
				return {_0: new Pointer<stdgo.crypto.x509.pkix.Pkix.RDNSequence>().nil(),
					_1: stdgo.fmt.Fmt.errorf("x509: invalid RDNSequence: invalid attribute value: %s", Go.toInterface(_err))};
			};
			_rdnSet = _rdnSet.__append__(_attr.__copy__()).__copy__();
		};
		_rdnSeq = _rdnSeq.__append__(_rdnSet.__copy__().__t__).__copy__();
	};
	return {_0: Go.pointer(_rdnSeq), _1: ((null : stdgo.Error))};
}

function _parseAI(_der:golang_org.x.crypto.cryptobyte.Cryptobyte.String_):{var _0:stdgo.crypto.x509.pkix.Pkix.AlgorithmIdentifier; var _1:Error;} {
	var _ai:stdgo.crypto.x509.pkix.Pkix.AlgorithmIdentifier = new stdgo.crypto.x509.pkix.Pkix.AlgorithmIdentifier().__copy__();
	if (!_der.readASN1ObjectIdentifier(Go.pointer(_ai.algorithm))) {
		return {_0: _ai.__copy__(), _1: stdgo.errors.Errors.new_("x509: malformed OID")};
	};
	if (_der.empty()) {
		return {_0: _ai.__copy__(), _1: ((null : stdgo.Error))};
	};
	var _params:golang_org.x.crypto.cryptobyte.Cryptobyte.String_ = new vendor.golang_org.x.crypto.cryptobyte.Cryptobyte.String_();
	var _tag:golang_org.x.crypto.cryptobyte.asn1.Asn1.Tag = new vendor.golang_org.x.crypto.cryptobyte.asn1.Asn1.Tag();
	if (!_der.readAnyASN1Element(Go.pointer(_params), Go.pointer(_tag))) {
		return {_0: _ai.__copy__(), _1: stdgo.errors.Errors.new_("x509: malformed parameters")};
	};
	_ai.parameters.tag = _tag.__t__;
	_ai.parameters.fullBytes = _params.__copy__().__t__;
	return {_0: _ai.__copy__(), _1: ((null : stdgo.Error))};
}

function _parseValidity(_der:golang_org.x.crypto.cryptobyte.Cryptobyte.String_):{var _0:stdgo.time.Time.Time; var _1:stdgo.time.Time.Time; var _2:Error;} {
	var _extract:() -> {
		var _0:stdgo.time.Time.Time;
		var _1:stdgo.Error;
	} = function():{var _0:stdgo.time.Time.Time; var _1:Error;} {
		var _t:stdgo.time.Time.Time = new stdgo.time.Time.Time();
		if (_der.peekASN1Tag(golang_org.x.crypto.cryptobyte.asn1.Asn1.utctime)) {
			var _utc:golang_org.x.crypto.cryptobyte.Cryptobyte.String_ = new vendor.golang_org.x.crypto.cryptobyte.Cryptobyte.String_();
			if (!_der.readASN1(Go.pointer(_utc), golang_org.x.crypto.cryptobyte.asn1.Asn1.utctime)) {
				return {_0: _t.__copy__(), _1: stdgo.errors.Errors.new_("x509: malformed UTCTime")};
			};
			var _s:GoString = _utc.__t__;
			var _formatStr:GoString = "0601021504Z0700";
			var _err:Error = ((null : stdgo.Error));
			{
				var __tmp__ = stdgo.time.Time.parse(_formatStr, _s);
				_t = __tmp__._0.__copy__();
				_err = __tmp__._1;
			};
			if (_err != null) {
				_formatStr = "060102150405Z0700";
				{
					var __tmp__ = stdgo.time.Time.parse(_formatStr, _s);
					_t = __tmp__._0.__copy__();
					_err = __tmp__._1;
				};
			};
			if (_err != null) {
				return {_0: _t.__copy__(), _1: _err};
			};
			{
				var _serialized:GoString = _t.format(_formatStr);
				if (_serialized != _s) {
					return {_0: _t.__copy__(), _1: stdgo.errors.Errors.new_("x509: malformed UTCTime")};
				};
			};
			if (_t.year() >= ((2050 : GoInt))) {
				_t = _t.addDate(-((100 : GoUnTypedInt)), ((0 : GoInt)), ((0 : GoInt))).__copy__();
			};
		} else if (_der.peekASN1Tag(golang_org.x.crypto.cryptobyte.asn1.Asn1.generalizedTime)) {
			if (!_der.readASN1GeneralizedTime(Go.pointer(_t))) {
				return {_0: _t.__copy__(), _1: stdgo.errors.Errors.new_("x509: malformed GeneralizedTime")};
			};
		} else {
			return {_0: _t.__copy__(), _1: stdgo.errors.Errors.new_("x509: unsupported time format")};
		};
		return {_0: _t.__copy__(), _1: ((null : stdgo.Error))};
	};
	var __tmp__ = _extract(),
		_notBefore:stdgo.time.Time.Time = __tmp__._0,
		_err:stdgo.Error = __tmp__._1;
	if (_err != null) {
		return {_0: new stdgo.time.Time.Time().__copy__(), _1: new stdgo.time.Time.Time().__copy__(), _2: _err};
	};
	var __tmp__ = _extract(),
		_notAfter:stdgo.time.Time.Time = __tmp__._0,
		_err:stdgo.Error = __tmp__._1;
	if (_err != null) {
		return {_0: new stdgo.time.Time.Time().__copy__(), _1: new stdgo.time.Time.Time().__copy__(), _2: _err};
	};
	return {_0: _notBefore.__copy__(), _1: _notAfter.__copy__(), _2: ((null : stdgo.Error))};
}

function _parseExtension(_der:golang_org.x.crypto.cryptobyte.Cryptobyte.String_):{var _0:stdgo.crypto.x509.pkix.Pkix.Extension; var _1:Error;} {
	var _ext:stdgo.crypto.x509.pkix.Pkix.Extension = new stdgo.crypto.x509.pkix.Pkix.Extension();
	if (!_der.readASN1ObjectIdentifier(Go.pointer(_ext.id))) {
		return {_0: _ext.__copy__(), _1: stdgo.errors.Errors.new_("x509: malformed extention OID field")};
	};
	if (_der.peekASN1Tag(golang_org.x.crypto.cryptobyte.asn1.Asn1.boolean)) {
		if (!_der.readASN1Boolean(Go.pointer(_ext.critical))) {
			return {_0: _ext.__copy__(), _1: stdgo.errors.Errors.new_("x509: malformed extention critical field")};
		};
	};
	var _val:golang_org.x.crypto.cryptobyte.Cryptobyte.String_ = new vendor.golang_org.x.crypto.cryptobyte.Cryptobyte.String_();
	if (!_der.readASN1(Go.pointer(_val), golang_org.x.crypto.cryptobyte.asn1.Asn1.octet_STRING)) {
		return {_0: _ext.__copy__(), _1: stdgo.errors.Errors.new_("x509: malformed extention value field")};
	};
	_ext.value = _val.__copy__().__t__;
	return {_0: _ext.__copy__(), _1: ((null : stdgo.Error))};
}

function _parsePublicKey(_algo:PublicKeyAlgorithm, _keyData:Pointer<T_publicKeyInfo>):{var _0:AnyInterface; var _1:Error;} {
	var _der:vendor.golang_org.x.crypto.cryptobyte.Cryptobyte.String_ = new golang_org.x.crypto.cryptobyte.Cryptobyte.String_(_keyData.value.publicKey.rightAlign())
		.__copy__();
	if (_algo.__t__ == rsa.__t__) {
		if (!stdgo.bytes.Bytes.equal(_keyData.value.algorithm.parameters.fullBytes, stdgo.encoding.asn1.Asn1.nullBytes)) {
			return {_0: ((null : AnyInterface)), _1: stdgo.errors.Errors.new_("x509: RSA key missing NULL parameters")};
		};
		var _p:Pointer<T_pkcs1PublicKey> = Go.pointer((({n: Go.pointer(new stdgo.math.big.Big.Int_()), e: 0} : T_pkcs1PublicKey)));
		if (!_der.readASN1(Go.pointer(_der), golang_org.x.crypto.cryptobyte.asn1.Asn1.sequence)) {
			return {_0: ((null : AnyInterface)), _1: stdgo.errors.Errors.new_("x509: invalid RSA public key")};
		};
		if (!_der.readASN1Integer(Go.toInterface(_p.value.n))) {
			return {_0: ((null : AnyInterface)), _1: stdgo.errors.Errors.new_("x509: invalid RSA modulus")};
		};
		if (!_der.readASN1Integer(Go.toInterface(Go.pointer(_p.value.e)))) {
			return {_0: ((null : AnyInterface)), _1: stdgo.errors.Errors.new_("x509: invalid RSA public exponent")};
		};
		if (_p.value.n.value.sign() <= ((0 : GoInt))) {
			return {_0: ((null : AnyInterface)), _1: stdgo.errors.Errors.new_("x509: RSA modulus is not a positive number")};
		};
		if (_p.value.e <= ((0 : GoInt))) {
			return {_0: ((null : AnyInterface)), _1: stdgo.errors.Errors.new_("x509: RSA public exponent is not a positive number")};
		};
		var _pub:Pointer<stdgo.crypto.rsa.Rsa.PublicKey> = Go.pointer((({e: _p.value.e, n: _p.value.n} : stdgo.crypto.rsa.Rsa.PublicKey)));
		return {_0: Go.toInterface(_pub), _1: ((null : stdgo.Error))};
	} else if (_algo.__t__ == ecdsa.__t__) {
		var _paramsDer:vendor.golang_org.x.crypto.cryptobyte.Cryptobyte.String_ = new golang_org.x.crypto.cryptobyte.Cryptobyte.String_(_keyData.value.algorithm.parameters.fullBytes)
			.__copy__();
		var _namedCurveOID:Pointer<stdgo.encoding.asn1.Asn1.ObjectIdentifier> = Go.pointer(new stdgo.encoding.asn1.Asn1.ObjectIdentifier());
		if (!_paramsDer.readASN1ObjectIdentifier(_namedCurveOID)) {
			return {_0: ((null : AnyInterface)), _1: stdgo.errors.Errors.new_("x509: invalid ECDSA parameters")};
		};
		var _namedCurve:stdgo.crypto.elliptic.Elliptic.Curve = _namedCurveFromOID(_namedCurveOID.value.__copy__());
		if (_namedCurve == null) {
			return {_0: ((null : AnyInterface)), _1: stdgo.errors.Errors.new_("x509: unsupported elliptic curve")};
		};
		var __tmp__ = stdgo.crypto.elliptic.Elliptic.unmarshal(_namedCurve, _der.__copy__().__t__),
			_x:Pointer<stdgo.math.big.Big.Int_> = __tmp__._0,
			_y:Pointer<stdgo.math.big.Big.Int_> = __tmp__._1;
		if ((_x == null || _x.isNil())) {
			return {_0: ((null : AnyInterface)), _1: stdgo.errors.Errors.new_("x509: failed to unmarshal elliptic curve point")};
		};
		var _pub:Pointer<stdgo.crypto.ecdsa.Ecdsa.PublicKey> = Go.pointer((({curve: _namedCurve, x: _x, y: _y} : stdgo.crypto.ecdsa.Ecdsa.PublicKey)));
		return {_0: Go.toInterface(_pub), _1: ((null : stdgo.Error))};
	} else if (_algo.__t__ == ed25519.__t__) {
		if (_keyData.value.algorithm.parameters.fullBytes.length != ((0 : GoInt))) {
			return {_0: ((null : AnyInterface)), _1: stdgo.errors.Errors.new_("x509: Ed25519 key encoded with illegal parameters")};
		};
		if (_der.__t__.length != stdgo.crypto.ed25519.Ed25519.publicKeySize) {
			return {_0: ((null : AnyInterface)), _1: stdgo.errors.Errors.new_("x509: wrong Ed25519 public key size")};
		};
		return {_0: Go.toInterface(new stdgo.crypto.ed25519.Ed25519.PublicKey(_der.__copy__().__t__).__copy__()), _1: ((null : stdgo.Error))};
	} else if (_algo.__t__ == dsa.__t__) {
		var _y:Pointer<stdgo.math.big.Big.Int_> = Go.pointer(new stdgo.math.big.Big.Int_());
		if (!_der.readASN1Integer(Go.toInterface(_y))) {
			return {_0: ((null : AnyInterface)), _1: stdgo.errors.Errors.new_("x509: invalid DSA public key")};
		};
		var _pub:Pointer<stdgo.crypto.dsa.Dsa.PublicKey> = Go.pointer((({y: _y, parameters: (({p: Go.pointer(new stdgo.math.big.Big.Int_()),
			q: Go.pointer(new stdgo.math.big.Big.Int_()), g: Go.pointer(new stdgo.math.big.Big.Int_())} : stdgo.crypto.dsa.Dsa.Parameters))
			.__copy__()} : stdgo.crypto.dsa.Dsa.PublicKey)));
		var _paramsDer:vendor.golang_org.x.crypto.cryptobyte.Cryptobyte.String_ = new golang_org.x.crypto.cryptobyte.Cryptobyte.String_(_keyData.value.algorithm.parameters.fullBytes)
			.__copy__();
		if (!_paramsDer.readASN1(Go.pointer(_paramsDer), golang_org.x.crypto.cryptobyte.asn1.Asn1.sequence)
			|| !_paramsDer.readASN1Integer(Go.toInterface(_pub.value.parameters.p))
			|| !_paramsDer.readASN1Integer(Go.toInterface(_pub.value.parameters.q))
			|| !_paramsDer.readASN1Integer(Go.toInterface(_pub.value.parameters.g))) {
			return {_0: ((null : AnyInterface)), _1: stdgo.errors.Errors.new_("x509: invalid DSA parameters")};
		};
		if (_pub.value.y.value.sign() <= ((0 : GoInt))
			|| _pub.value.parameters.p.value.sign() <= ((0 : GoInt))
			|| _pub.value.parameters.q.value.sign() <= ((0 : GoInt))
			|| _pub.value.parameters.g.value.sign() <= ((0 : GoInt))) {
			return {_0: ((null : AnyInterface)), _1: stdgo.errors.Errors.new_("x509: zero or negative DSA parameter")};
		};
		return {_0: Go.toInterface(_pub), _1: ((null : stdgo.Error))};
	} else {
		return {_0: ((null : AnyInterface)), _1: ((null : stdgo.Error))};
	};
}

function _parseKeyUsageExtension(_der:golang_org.x.crypto.cryptobyte.Cryptobyte.String_):{var _0:KeyUsage; var _1:Error;} {
	var _usageBits:stdgo.encoding.asn1.Asn1.BitString = new stdgo.encoding.asn1.Asn1.BitString();
	if (!_der.readASN1BitString(Go.pointer(_usageBits))) {
		return {_0: new KeyUsage(((0 : GoInt))), _1: stdgo.errors.Errors.new_("x509: invalid key usage")};
	};
	var _usage:GoInt = ((0 : GoInt));
	{
		var _i:GoInt = ((0 : GoInt));
		Go.cfor(_i < ((9 : GoInt)), _i++, {
			if (_usageBits.at(_i) != ((0 : GoInt))) {
				_usage = _usage | ((((1 : GoInt)) << ((_i : GoUInt))));
			};
		});
	};
	return {_0: new KeyUsage(_usage), _1: ((null : stdgo.Error))};
}

function _parseBasicConstraintsExtension(_der:golang_org.x.crypto.cryptobyte.Cryptobyte.String_):{var _0:Bool; var _1:GoInt; var _2:Error;} {
	var _isCA:Bool = false;
	if (!_der.readASN1(Go.pointer(_der), golang_org.x.crypto.cryptobyte.asn1.Asn1.sequence)) {
		return {_0: false, _1: ((0 : GoInt)), _2: stdgo.errors.Errors.new_("x509: invalid basic constraints a")};
	};
	if (_der.peekASN1Tag(golang_org.x.crypto.cryptobyte.asn1.Asn1.boolean)) {
		if (!_der.readASN1Boolean(Go.pointer(_isCA))) {
			return {_0: false, _1: ((0 : GoInt)), _2: stdgo.errors.Errors.new_("x509: invalid basic constraints b")};
		};
	};
	var _maxPathLen:GoInt = -((1 : GoUnTypedInt));
	if (!_der.empty() && _der.peekASN1Tag(golang_org.x.crypto.cryptobyte.asn1.Asn1.integer)) {
		if (!_der.readASN1Integer(Go.toInterface(Go.pointer(_maxPathLen)))) {
			return {_0: false, _1: ((0 : GoInt)), _2: stdgo.errors.Errors.new_("x509: invalid basic constraints c")};
		};
	};
	return {_0: _isCA, _1: _maxPathLen, _2: ((null : stdgo.Error))};
}

function _forEachSAN(_der:golang_org.x.crypto.cryptobyte.Cryptobyte.String_, _callback:(_tag:GoInt, _data:Slice<GoByte>) -> Error):Error {
	if (!_der.readASN1(Go.pointer(_der), golang_org.x.crypto.cryptobyte.asn1.Asn1.sequence)) {
		return stdgo.errors.Errors.new_("x509: invalid subject alternative names");
	};
	while (!_der.empty()) {
		var _san:golang_org.x.crypto.cryptobyte.Cryptobyte.String_ = new vendor.golang_org.x.crypto.cryptobyte.Cryptobyte.String_();
		var _tag:golang_org.x.crypto.cryptobyte.asn1.Asn1.Tag = new vendor.golang_org.x.crypto.cryptobyte.asn1.Asn1.Tag();
		if (!_der.readAnyASN1(Go.pointer(_san), Go.pointer(_tag))) {
			return stdgo.errors.Errors.new_("x509: invalid subject alternative name");
		};
		{
			var _err:stdgo.Error = _callback(new vendor.golang_org.x.crypto.cryptobyte.asn1.Asn1.Tag(_tag.__t__ ^ ((128 : GoUInt8))).__t__,
				_san.__copy__().__t__);
			if (_err != null) {
				return _err;
			};
		};
	};
	return ((null : stdgo.Error));
}

function _parseSANExtension(_der:golang_org.x.crypto.cryptobyte.Cryptobyte.String_):{
	var _0:Slice<GoString>;
	var _1:Slice<GoString>;
	var _2:Slice<stdgo.net.Net.IP>;
	var _3:Slice<Pointer<stdgo.net.url.Url.URL>>;
	var _4:Error;
} {
	var _dnsNames:Slice<GoString> = new Slice<GoString>().nil(),
		_emailAddresses:Slice<GoString> = new Slice<GoString>().nil(),
		_ipAddresses:Slice<stdgo.net.Net.IP> = new Slice<stdgo.net.Net.IP>().nil(),
		_uris:Slice<Pointer<stdgo.net.url.Url.URL>> = new Slice<Pointer<stdgo.net.url.Url.URL>>().nil(),
		_err:Error = ((null : stdgo.Error));
	_err = _forEachSAN(_der.__copy__(), function(_tag:GoInt, _data:Slice<GoByte>):Error {
		if (_tag == _nameTypeEmail) {
			var _email:GoString = ((_data : GoString));
			{
				var _err:stdgo.Error = _isIA5String(_email);
				if (_err != null) {
					return stdgo.errors.Errors.new_("x509: SAN rfc822Name is malformed");
				};
			};
			_emailAddresses = _emailAddresses.__append__(_email);
		} else if (_tag == _nameTypeDNS) {
			var _name:GoString = ((_data : GoString));
			{
				var _err:stdgo.Error = _isIA5String(_name);
				if (_err != null) {
					return stdgo.errors.Errors.new_("x509: SAN dNSName is malformed");
				};
			};
			_dnsNames = _dnsNames.__append__(((_name : GoString)));
		} else if (_tag == _nameTypeURI) {
			var _uriStr:GoString = ((_data : GoString));
			{
				var _err:stdgo.Error = _isIA5String(_uriStr);
				if (_err != null) {
					return stdgo.errors.Errors.new_("x509: SAN uniformResourceIdentifier is malformed");
				};
			};
			var __tmp__ = stdgo.net.url.Url.parse(_uriStr),
				_uri:Pointer<stdgo.net.url.Url.URL> = __tmp__._0,
				_err:stdgo.Error = __tmp__._1;
			if (_err != null) {
				return stdgo.fmt.Fmt.errorf("x509: cannot parse URI %q: %s", Go.toInterface(_uriStr), Go.toInterface(_err));
			};
			if (_uri.value.host.length > ((0 : GoInt))) {
				{
					var __tmp__ = _domainToReverseLabels(_uri.value.host),
						_:Slice<GoString> = __tmp__._0,
						_ok:Bool = __tmp__._1;
					if (!_ok) {
						return stdgo.fmt.Fmt.errorf("x509: cannot parse URI %q: invalid domain", Go.toInterface(_uriStr));
					};
				};
			};
			_uris = _uris.__append__(_uri);
		} else if (_tag == _nameTypeIP) {
			if (_data.length == stdgo.net.Net.ipv4len || _data.length == stdgo.net.Net.ipv6len) {
				_ipAddresses = _ipAddresses.__append__(new stdgo.net.Net.IP(_data));
			} else {
				return stdgo.errors.Errors.new_((("x509: cannot parse IP address of length " : GoString)) + stdgo.strconv.Strconv.itoa(_data.length));
			};
		};
		return ((null : stdgo.Error));
	});
	return {
		_0: _dnsNames,
		_1: _emailAddresses,
		_2: _ipAddresses,
		_3: _uris,
		_4: _err
	};
}

function _parseExtKeyUsageExtension(_der:golang_org.x.crypto.cryptobyte.Cryptobyte.String_):{var _0:Slice<ExtKeyUsage>; var _1:Slice<stdgo.encoding.asn1.Asn1.ObjectIdentifier>; var _2:Error;} {
	var _extKeyUsages:Slice<ExtKeyUsage> = new Slice<ExtKeyUsage>().nil();
	var _unknownUsages:Slice<stdgo.encoding.asn1.Asn1.ObjectIdentifier> = new Slice<stdgo.encoding.asn1.Asn1.ObjectIdentifier>().nil();
	if (!_der.readASN1(Go.pointer(_der), golang_org.x.crypto.cryptobyte.asn1.Asn1.sequence)) {
		return {_0: new Slice<ExtKeyUsage>().nil(), _1: new Slice<stdgo.encoding.asn1.Asn1.ObjectIdentifier>().nil(),
			_2: stdgo.errors.Errors.new_("x509: invalid extended key usages")};
	};
	while (!_der.empty()) {
		var _eku:stdgo.encoding.asn1.Asn1.ObjectIdentifier = new stdgo.encoding.asn1.Asn1.ObjectIdentifier();
		if (!_der.readASN1ObjectIdentifier(Go.pointer(_eku))) {
			return {_0: new Slice<ExtKeyUsage>().nil(), _1: new Slice<stdgo.encoding.asn1.Asn1.ObjectIdentifier>().nil(),
				_2: stdgo.errors.Errors.new_("x509: invalid extended key usages")};
		};
		{
			var __tmp__ = _extKeyUsageFromOID(_eku.__copy__()),
				_extKeyUsage:ExtKeyUsage = __tmp__._0,
				_ok:Bool = __tmp__._1;
			if (_ok) {
				_extKeyUsages = _extKeyUsages.__append__(_extKeyUsage);
			} else {
				_unknownUsages = _unknownUsages.__append__(_eku.__copy__());
			};
		};
	};
	return {_0: _extKeyUsages, _1: _unknownUsages, _2: ((null : stdgo.Error))};
}

function _parseCertificatePoliciesExtension(_der:golang_org.x.crypto.cryptobyte.Cryptobyte.String_):{var _0:Slice<stdgo.encoding.asn1.Asn1.ObjectIdentifier>; var _1:Error;} {
	var _oids:Slice<stdgo.encoding.asn1.Asn1.ObjectIdentifier> = new Slice<stdgo.encoding.asn1.Asn1.ObjectIdentifier>().nil();
	if (!_der.readASN1(Go.pointer(_der), golang_org.x.crypto.cryptobyte.asn1.Asn1.sequence)) {
		return {_0: new Slice<stdgo.encoding.asn1.Asn1.ObjectIdentifier>().nil(), _1: stdgo.errors.Errors.new_("x509: invalid certificate policies")};
	};
	while (!_der.empty()) {
		var _cp:golang_org.x.crypto.cryptobyte.Cryptobyte.String_ = new vendor.golang_org.x.crypto.cryptobyte.Cryptobyte.String_();
		if (!_der.readASN1(Go.pointer(_cp), golang_org.x.crypto.cryptobyte.asn1.Asn1.sequence)) {
			return {_0: new Slice<stdgo.encoding.asn1.Asn1.ObjectIdentifier>().nil(), _1: stdgo.errors.Errors.new_("x509: invalid certificate policies")};
		};
		var _oid:stdgo.encoding.asn1.Asn1.ObjectIdentifier = new stdgo.encoding.asn1.Asn1.ObjectIdentifier();
		if (!_cp.readASN1ObjectIdentifier(Go.pointer(_oid))) {
			return {_0: new Slice<stdgo.encoding.asn1.Asn1.ObjectIdentifier>().nil(), _1: stdgo.errors.Errors.new_("x509: invalid certificate policies")};
		};
		_oids = _oids.__append__(_oid.__copy__());
	};
	return {_0: _oids, _1: ((null : stdgo.Error))};
}

/**
	// isValidIPMask reports whether mask consists of zero or more 1 bits, followed by zero bits.
**/
function _isValidIPMask(_mask:Slice<GoByte>):Bool {
	var _seenZero:Bool = false;
	for (_ => _b in _mask) {
		if (_seenZero) {
			if (_b != ((0 : GoUInt8))) {
				return false;
			};
			continue;
		};
		if (_b == ((0 : GoUInt8)) || _b == ((128 : GoUInt8)) || _b == ((192 : GoUInt8)) || _b == ((224 : GoUInt8)) || _b == ((240 : GoUInt8))
			|| _b == ((248 : GoUInt8)) || _b == ((252 : GoUInt8)) || _b == ((254 : GoUInt8))) {
			_seenZero = true;
		} else if (_b == ((255 : GoUInt8))) {} else {
			return false;
		};
	};
	return true;
}

function _parseNameConstraintsExtension(_out:Pointer<Certificate>, _e:stdgo.crypto.x509.pkix.Pkix.Extension):{var _0:Bool; var _1:Error;} {
	var _unhandled:Bool = false, _err:Error = ((null : stdgo.Error));
	var _outer:vendor.golang_org.x.crypto.cryptobyte.Cryptobyte.String_ = new golang_org.x.crypto.cryptobyte.Cryptobyte.String_(_e.value).__copy__();
	var _toplevel:golang_org.x.crypto.cryptobyte.Cryptobyte.String_ = new vendor.golang_org.x.crypto.cryptobyte.Cryptobyte.String_(),
		_permitted:golang_org.x.crypto.cryptobyte.Cryptobyte.String_ = new vendor.golang_org.x.crypto.cryptobyte.Cryptobyte.String_(),
		_excluded:golang_org.x.crypto.cryptobyte.Cryptobyte.String_ = new vendor.golang_org.x.crypto.cryptobyte.Cryptobyte.String_();
	var _havePermitted:Bool = false, _haveExcluded:Bool = false;
	if (!_outer.readASN1(Go.pointer(_toplevel), golang_org.x.crypto.cryptobyte.asn1.Asn1.sequence)
		|| !_outer.empty()
		|| !_toplevel.readOptionalASN1(Go.pointer(_permitted), Go.pointer(_havePermitted),
			new golang_org.x.crypto.cryptobyte.asn1.Asn1.Tag(((0 : GoUInt8))).contextSpecific().constructed())
		|| !_toplevel.readOptionalASN1(Go.pointer(_excluded), Go.pointer(_haveExcluded),
			new golang_org.x.crypto.cryptobyte.asn1.Asn1.Tag(((1 : GoUInt8))).contextSpecific().constructed())
		|| !_toplevel.empty()) {
		return {_0: false, _1: stdgo.errors.Errors.new_("x509: invalid NameConstraints extension")};
	};
	if (!_havePermitted && !_haveExcluded || _permitted.__t__.length == ((0 : GoInt)) && _excluded.__t__.length == ((0 : GoInt))) {
		return {_0: false, _1: stdgo.errors.Errors.new_("x509: empty name constraints extension")};
	};
	var _getValues:vendor.golang_org.x.crypto.cryptobyte.Cryptobyte.String_ -> {
		var _0:Slice<GoString>;
		var _1:Slice<Pointer<stdgo.net.Net.IPNet>>;
		var _2:Slice<GoString>;
		var _3:Slice<GoString>;
		var _4:stdgo.Error;
	} = function(_subtrees:golang_org.x.crypto.cryptobyte.Cryptobyte.String_):{
		var _0:Slice<GoString>;
		var _1:Slice<Pointer<stdgo.net.Net.IPNet>>;
		var _2:Slice<GoString>;
		var _3:Slice<GoString>;
		var _4:Error;
	} {
		var _dnsNames:Slice<GoString> = new Slice<GoString>().nil(), _ips:Slice<Pointer<stdgo.net.Net.IPNet>> = new Slice<Pointer<stdgo.net.Net.IPNet>>()
			.nil(), _emails:Slice<GoString> = new Slice<GoString>().nil(), _uriDomains:Slice<GoString> = new Slice<GoString>().nil(),
			_err:Error = ((null : stdgo.Error));
		while (!_subtrees.empty()) {
			var _seq:golang_org.x.crypto.cryptobyte.Cryptobyte.String_ = new vendor.golang_org.x.crypto.cryptobyte.Cryptobyte.String_(),
				_value:golang_org.x.crypto.cryptobyte.Cryptobyte.String_ = new vendor.golang_org.x.crypto.cryptobyte.Cryptobyte.String_();
			var _tag:golang_org.x.crypto.cryptobyte.asn1.Asn1.Tag = new vendor.golang_org.x.crypto.cryptobyte.asn1.Asn1.Tag();
			if (!_subtrees.readASN1(Go.pointer(_seq), golang_org.x.crypto.cryptobyte.asn1.Asn1.sequence)
				|| !_seq.readAnyASN1(Go.pointer(_value), Go.pointer(_tag))) {
				return {
					_0: new Slice<GoString>().nil(),
					_1: new Slice<Pointer<stdgo.net.Net.IPNet>>().nil(),
					_2: new Slice<GoString>().nil(),
					_3: new Slice<GoString>().nil(),
					_4: stdgo.fmt.Fmt.errorf("x509: invalid NameConstraints extension")
				};
			};
			var _dnsTag:vendor.golang_org.x.crypto.cryptobyte.asn1.Asn1.Tag = new golang_org.x.crypto.cryptobyte.asn1.Asn1.Tag(((2 : GoUInt8)))
				.contextSpecific(),
				_emailTag:vendor.golang_org.x.crypto.cryptobyte.asn1.Asn1.Tag = new golang_org.x.crypto.cryptobyte.asn1.Asn1.Tag(((1 : GoUInt8)))
					.contextSpecific(),
				_ipTag:vendor.golang_org.x.crypto.cryptobyte.asn1.Asn1.Tag = new golang_org.x.crypto.cryptobyte.asn1.Asn1.Tag(((7 : GoUInt8)))
					.contextSpecific(),
				_uriTag:vendor.golang_org.x.crypto.cryptobyte.asn1.Asn1.Tag = new golang_org.x.crypto.cryptobyte.asn1.Asn1.Tag(((6 : GoUInt8)))
					.contextSpecific();
			if (_tag.__t__ == _dnsTag.__t__) {
				var _domain:GoString = _value.__t__;
				{
					var _err:stdgo.Error = _isIA5String(_domain);
					if (_err != null) {
						return {
							_0: new Slice<GoString>().nil(),
							_1: new Slice<Pointer<stdgo.net.Net.IPNet>>().nil(),
							_2: new Slice<GoString>().nil(),
							_3: new Slice<GoString>().nil(),
							_4: stdgo.errors.Errors.new_((("x509: invalid constraint value: " : GoString)) + _err.error())
						};
					};
				};
				var _trimmedDomain:GoString = _domain;
				if (_trimmedDomain.length > ((0 : GoInt)) && _trimmedDomain[((0 : GoInt))] == ((".".code : GoRune))) {
					_trimmedDomain = _trimmedDomain.__slice__(((1 : GoInt)));
				};
				{
					var __tmp__ = _domainToReverseLabels(_trimmedDomain), _:Slice<GoString> = __tmp__._0, _ok:Bool = __tmp__._1;
					if (!_ok) {
						return {
							_0: new Slice<GoString>().nil(),
							_1: new Slice<Pointer<stdgo.net.Net.IPNet>>().nil(),
							_2: new Slice<GoString>().nil(),
							_3: new Slice<GoString>().nil(),
							_4: stdgo.fmt.Fmt.errorf("x509: failed to parse dnsName constraint %q", Go.toInterface(_domain))
						};
					};
				};
				_dnsNames = _dnsNames.__append__(_domain);
			} else if (_tag.__t__ == _ipTag.__t__) {
				var _l:GoInt = _value.__t__.length;
				var _ip:Slice<GoByte> = new Slice<GoUInt8>().nil(), _mask:Slice<GoByte> = new Slice<GoUInt8>().nil();
				if (_l == ((8 : GoInt))) {
					_ip = _value.__slice__(0, ((4 : GoInt))).__copy__().__t__;
					_mask = _value.__slice__(((4 : GoInt))).__copy__().__t__;
				} else if (_l == ((32 : GoInt))) {
					_ip = _value.__slice__(0, ((16 : GoInt))).__copy__().__t__;
					_mask = _value.__slice__(((16 : GoInt))).__copy__().__t__;
				} else {
					return {
						_0: new Slice<GoString>().nil(),
						_1: new Slice<Pointer<stdgo.net.Net.IPNet>>().nil(),
						_2: new Slice<GoString>().nil(),
						_3: new Slice<GoString>().nil(),
						_4: stdgo.fmt.Fmt.errorf("x509: IP constraint contained value of length %d", Go.toInterface(_l))
					};
				};
				if (!_isValidIPMask(_mask)) {
					return {
						_0: new Slice<GoString>().nil(),
						_1: new Slice<Pointer<stdgo.net.Net.IPNet>>().nil(),
						_2: new Slice<GoString>().nil(),
						_3: new Slice<GoString>().nil(),
						_4: stdgo.fmt.Fmt.errorf("x509: IP constraint contained invalid mask %x", Go.toInterface(_mask))
					};
				};
				_ips = _ips.__append__(Go.pointer((({ip: new stdgo.net.Net.IP(_ip).__copy__(), mask: new stdgo.net.Net.IPMask(_mask)
					.__copy__()} : stdgo.net.Net.IPNet))));
			} else if (_tag.__t__ == _emailTag.__t__) {
				var _constraint:GoString = _value.__t__;
				{
					var _err:stdgo.Error = _isIA5String(_constraint);
					if (_err != null) {
						return {
							_0: new Slice<GoString>().nil(),
							_1: new Slice<Pointer<stdgo.net.Net.IPNet>>().nil(),
							_2: new Slice<GoString>().nil(),
							_3: new Slice<GoString>().nil(),
							_4: stdgo.errors.Errors.new_((("x509: invalid constraint value: " : GoString)) + _err.error())
						};
					};
				};
				if (stdgo.strings.Strings.contains(_constraint, "@")) {
					{
						var __tmp__ = _parseRFC2821Mailbox(_constraint), _:T_rfc2821Mailbox = __tmp__._0, _ok:Bool = __tmp__._1;
						if (!_ok) {
							return {
								_0: new Slice<GoString>().nil(),
								_1: new Slice<Pointer<stdgo.net.Net.IPNet>>().nil(),
								_2: new Slice<GoString>().nil(),
								_3: new Slice<GoString>().nil(),
								_4: stdgo.fmt.Fmt.errorf("x509: failed to parse rfc822Name constraint %q", Go.toInterface(_constraint))
							};
						};
					};
				} else {
					var _domain:GoString = _constraint;
					if (_domain.length > ((0 : GoInt)) && _domain[((0 : GoInt))] == ((".".code : GoRune))) {
						_domain = _domain.__slice__(((1 : GoInt)));
					};
					{
						var __tmp__ = _domainToReverseLabels(_domain), _:Slice<GoString> = __tmp__._0, _ok:Bool = __tmp__._1;
						if (!_ok) {
							return {
								_0: new Slice<GoString>().nil(),
								_1: new Slice<Pointer<stdgo.net.Net.IPNet>>().nil(),
								_2: new Slice<GoString>().nil(),
								_3: new Slice<GoString>().nil(),
								_4: stdgo.fmt.Fmt.errorf("x509: failed to parse rfc822Name constraint %q", Go.toInterface(_constraint))
							};
						};
					};
				};
				_emails = _emails.__append__(_constraint);
			} else if (_tag.__t__ == _uriTag.__t__) {
				var _domain:GoString = _value.__t__;
				{
					var _err:stdgo.Error = _isIA5String(_domain);
					if (_err != null) {
						return {
							_0: new Slice<GoString>().nil(),
							_1: new Slice<Pointer<stdgo.net.Net.IPNet>>().nil(),
							_2: new Slice<GoString>().nil(),
							_3: new Slice<GoString>().nil(),
							_4: stdgo.errors.Errors.new_((("x509: invalid constraint value: " : GoString)) + _err.error())
						};
					};
				};
				if ((stdgo.net.Net.parseIP(_domain).__t__ != null && !stdgo.net.Net.parseIP(_domain).__t__.isNil())) {
					return {
						_0: new Slice<GoString>().nil(),
						_1: new Slice<Pointer<stdgo.net.Net.IPNet>>().nil(),
						_2: new Slice<GoString>().nil(),
						_3: new Slice<GoString>().nil(),
						_4: stdgo.fmt.Fmt.errorf("x509: failed to parse URI constraint %q: cannot be IP address", Go.toInterface(_domain))
					};
				};
				var _trimmedDomain:GoString = _domain;
				if (_trimmedDomain.length > ((0 : GoInt)) && _trimmedDomain[((0 : GoInt))] == ((".".code : GoRune))) {
					_trimmedDomain = _trimmedDomain.__slice__(((1 : GoInt)));
				};
				{
					var __tmp__ = _domainToReverseLabels(_trimmedDomain), _:Slice<GoString> = __tmp__._0, _ok:Bool = __tmp__._1;
					if (!_ok) {
						return {
							_0: new Slice<GoString>().nil(),
							_1: new Slice<Pointer<stdgo.net.Net.IPNet>>().nil(),
							_2: new Slice<GoString>().nil(),
							_3: new Slice<GoString>().nil(),
							_4: stdgo.fmt.Fmt.errorf("x509: failed to parse URI constraint %q", Go.toInterface(_domain))
						};
					};
				};
				_uriDomains = _uriDomains.__append__(_domain);
			} else {
				_unhandled = true;
			};
		};
		return {
			_0: _dnsNames,
			_1: _ips,
			_2: _emails,
			_3: _uriDomains,
			_4: ((null : stdgo.Error))
		};
		};
	{
		{
			var __tmp__ = _getValues(_permitted.__copy__());
			_out.value.permittedDNSDomains = __tmp__._0;
			_out.value.permittedIPRanges = __tmp__._1;
			_out.value.permittedEmailAddresses = __tmp__._2;
			_out.value.permittedURIDomains = __tmp__._3;
			_err = __tmp__._4;
		};
		if (_err != null) {
			return {_0: false, _1: _err};
		};
	};
	{
		{
			var __tmp__ = _getValues(_excluded.__copy__());
			_out.value.excludedDNSDomains = __tmp__._0;
			_out.value.excludedIPRanges = __tmp__._1;
			_out.value.excludedEmailAddresses = __tmp__._2;
			_out.value.excludedURIDomains = __tmp__._3;
			_err = __tmp__._4;
		};
		if (_err != null) {
			return {_0: false, _1: _err};
		};
	};
	_out.value.permittedDNSDomainsCritical = _e.critical;
	return {_0: _unhandled, _1: ((null : stdgo.Error))};
}

function _processExtensions(_out:Pointer<Certificate>):Error {
	var _err:Error = ((null : stdgo.Error));
	for (_ => _e in _out.value.extensions) {
		var _unhandled:Bool = false;
		if (_e.id.__t__.length == ((4 : GoInt))
			&& _e.id.__t__[((0 : GoInt))] == ((2 : GoInt))
			&& _e.id.__t__[((1 : GoInt))] == ((5 : GoInt))
			&& _e.id.__t__[((2 : GoInt))] == ((29 : GoInt))) {
			{
				var __switchIndex__ = -1;
				while (true) {
					if (_e.id.__t__[((3 : GoInt))] == ((15 : GoInt))) {
						{
							var __tmp__ = _parseKeyUsageExtension(new vendor.golang_org.x.crypto.cryptobyte.Cryptobyte.String_(_e.value));
							_out.value.keyUsage = __tmp__._0;
							_err = __tmp__._1;
						};
						if (_err != null) {
							return _err;
						};
						break;
					} else if (_e.id.__t__[((3 : GoInt))] == ((19 : GoInt))) {
						{
							var __tmp__ = _parseBasicConstraintsExtension(new vendor.golang_org.x.crypto.cryptobyte.Cryptobyte.String_(_e.value));
							_out.value.isCA = __tmp__._0;
							_out.value.maxPathLen = __tmp__._1;
							_err = __tmp__._2;
						};
						if (_err != null) {
							return _err;
						};
						_out.value.basicConstraintsValid = true;
						_out.value.maxPathLenZero = _out.value.maxPathLen == ((0 : GoInt));
						break;
					} else if (_e.id.__t__[((3 : GoInt))] == ((17 : GoInt))) {
						{
							var __tmp__ = _parseSANExtension(new vendor.golang_org.x.crypto.cryptobyte.Cryptobyte.String_(_e.value));
							_out.value.dnsnames = __tmp__._0;
							_out.value.emailAddresses = __tmp__._1;
							_out.value.ipaddresses = __tmp__._2;
							_out.value.uris = __tmp__._3;
							_err = __tmp__._4;
						};
						if (_err != null) {
							return _err;
						};
						if (_out.value.dnsnames.length == ((0 : GoInt))
							&& _out.value.emailAddresses.length == ((0 : GoInt))
							&& _out.value.ipaddresses.length == ((0 : GoInt))
							&& _out.value.uris.length == ((0 : GoInt))) {
							_unhandled = true;
						};
						break;
					} else if (_e.id.__t__[((3 : GoInt))] == ((30 : GoInt))) {
						{
							var __tmp__ = _parseNameConstraintsExtension(_out, _e.__copy__());
							_unhandled = __tmp__._0;
							_err = __tmp__._1;
						};
						if (_err != null) {
							return _err;
						};
						break;
					} else if (_e.id.__t__[((3 : GoInt))] == ((31 : GoInt))) {
						var _val:vendor.golang_org.x.crypto.cryptobyte.Cryptobyte.String_ = new golang_org.x.crypto.cryptobyte.Cryptobyte.String_(_e.value)
							.__copy__();
						if (!_val.readASN1(Go.pointer(_val), golang_org.x.crypto.cryptobyte.asn1.Asn1.sequence)) {
							return stdgo.errors.Errors.new_("x509: invalid CRL distribution points");
						};
						while (!_val.empty()) {
							var _dpDER:golang_org.x.crypto.cryptobyte.Cryptobyte.String_ = new vendor.golang_org.x.crypto.cryptobyte.Cryptobyte.String_();
							if (!_val.readASN1(Go.pointer(_dpDER), golang_org.x.crypto.cryptobyte.asn1.Asn1.sequence)) {
								return stdgo.errors.Errors.new_("x509: invalid CRL distribution point");
							};
							var _dpNameDER:golang_org.x.crypto.cryptobyte.Cryptobyte.String_ = new vendor.golang_org.x.crypto.cryptobyte.Cryptobyte.String_();
							var _dpNamePresent:Bool = false;
							if (!_dpDER.readOptionalASN1(Go.pointer(_dpNameDER), Go.pointer(_dpNamePresent),
								new golang_org.x.crypto.cryptobyte.asn1.Asn1.Tag(((0 : GoUInt8))).constructed().contextSpecific())) {
								return stdgo.errors.Errors.new_("x509: invalid CRL distribution point");
							};
							if (!_dpNamePresent) {
								continue;
							};
							if (!_dpNameDER.readASN1(Go.pointer(_dpNameDER),
								new golang_org.x.crypto.cryptobyte.asn1.Asn1.Tag(((0 : GoUInt8))).constructed().contextSpecific())) {
								return stdgo.errors.Errors.new_("x509: invalid CRL distribution point");
							};
							while (!_dpNameDER.empty()) {
								if (!_dpNameDER.peekASN1Tag(new golang_org.x.crypto.cryptobyte.asn1.Asn1.Tag(((6 : GoUInt8))).contextSpecific())) {
									break;
								};
								var _uri:golang_org.x.crypto.cryptobyte.Cryptobyte.String_ = new vendor.golang_org.x.crypto.cryptobyte.Cryptobyte.String_();
								if (!_dpNameDER.readASN1(Go.pointer(_uri),
									new golang_org.x.crypto.cryptobyte.asn1.Asn1.Tag(((6 : GoUInt8))).contextSpecific())) {
									return stdgo.errors.Errors.new_("x509: invalid CRL distribution point");
								};
								_out.value.crldistributionPoints = _out.value.crldistributionPoints.__append__(_uri.__t__);
							};
						};
						break;
					} else if (_e.id.__t__[((3 : GoInt))] == ((35 : GoInt))) {
						var _val:vendor.golang_org.x.crypto.cryptobyte.Cryptobyte.String_ = new golang_org.x.crypto.cryptobyte.Cryptobyte.String_(_e.value)
							.__copy__();
						var _akid:golang_org.x.crypto.cryptobyte.Cryptobyte.String_ = new vendor.golang_org.x.crypto.cryptobyte.Cryptobyte.String_();
						if (!_val.readASN1(Go.pointer(_akid), golang_org.x.crypto.cryptobyte.asn1.Asn1.sequence)) {
							return stdgo.errors.Errors.new_("x509: invalid authority key identifier");
						};
						if (_akid.peekASN1Tag(new golang_org.x.crypto.cryptobyte.asn1.Asn1.Tag(((0 : GoUInt8))).contextSpecific())) {
							if (!_akid.readASN1(Go.pointer(_akid), new golang_org.x.crypto.cryptobyte.asn1.Asn1.Tag(((0 : GoUInt8))).contextSpecific())) {
								return stdgo.errors.Errors.new_("x509: invalid authority key identifier");
							};
							_out.value.authorityKeyId = _akid.__copy__().__t__;
						};
						break;
					} else if (_e.id.__t__[((3 : GoInt))] == ((37 : GoInt))) {
						{
							var __tmp__ = _parseExtKeyUsageExtension(new vendor.golang_org.x.crypto.cryptobyte.Cryptobyte.String_(_e.value));
							_out.value.extKeyUsage = __tmp__._0;
							_out.value.unknownExtKeyUsage = __tmp__._1;
							_err = __tmp__._2;
						};
						if (_err != null) {
							return _err;
						};
						break;
					} else if (_e.id.__t__[((3 : GoInt))] == ((14 : GoInt))) {
						var _val:vendor.golang_org.x.crypto.cryptobyte.Cryptobyte.String_ = new golang_org.x.crypto.cryptobyte.Cryptobyte.String_(_e.value)
							.__copy__();
						var _skid:golang_org.x.crypto.cryptobyte.Cryptobyte.String_ = new vendor.golang_org.x.crypto.cryptobyte.Cryptobyte.String_();
						if (!_val.readASN1(Go.pointer(_skid), golang_org.x.crypto.cryptobyte.asn1.Asn1.octet_STRING)) {
							return stdgo.errors.Errors.new_("x509: invalid subject key identifier");
						};
						_out.value.subjectKeyId = _skid.__copy__().__t__;
						break;
					} else if (_e.id.__t__[((3 : GoInt))] == ((32 : GoInt))) {
						{
							var __tmp__ = _parseCertificatePoliciesExtension(new vendor.golang_org.x.crypto.cryptobyte.Cryptobyte.String_(_e.value));
							_out.value.policyIdentifiers = __tmp__._0;
							_err = __tmp__._1;
						};
						if (_err != null) {
							return _err;
						};
						break;
					} else {
						_unhandled = true;
					};
					break;
				};
			};
		} else if (_e.id.equal(new stdgo.encoding.asn1.Asn1.ObjectIdentifier(_oidExtensionAuthorityInfoAccess))) {
			var _val:vendor.golang_org.x.crypto.cryptobyte.Cryptobyte.String_ = new golang_org.x.crypto.cryptobyte.Cryptobyte.String_(_e.value).__copy__();
			if (!_val.readASN1(Go.pointer(_val), golang_org.x.crypto.cryptobyte.asn1.Asn1.sequence)) {
				return stdgo.errors.Errors.new_("x509: invalid authority info access");
			};
			while (!_val.empty()) {
				var _aiaDER:golang_org.x.crypto.cryptobyte.Cryptobyte.String_ = new vendor.golang_org.x.crypto.cryptobyte.Cryptobyte.String_();
				if (!_val.readASN1(Go.pointer(_aiaDER), golang_org.x.crypto.cryptobyte.asn1.Asn1.sequence)) {
					return stdgo.errors.Errors.new_("x509: invalid authority info access");
				};
				var _method:stdgo.encoding.asn1.Asn1.ObjectIdentifier = new stdgo.encoding.asn1.Asn1.ObjectIdentifier();
				if (!_aiaDER.readASN1ObjectIdentifier(Go.pointer(_method))) {
					return stdgo.errors.Errors.new_("x509: invalid authority info access");
				};
				if (!_aiaDER.peekASN1Tag(new golang_org.x.crypto.cryptobyte.asn1.Asn1.Tag(((6 : GoUInt8))).contextSpecific())) {
					continue;
				};
				if (!_aiaDER.readASN1(Go.pointer(_aiaDER), new golang_org.x.crypto.cryptobyte.asn1.Asn1.Tag(((6 : GoUInt8))).contextSpecific())) {
					return stdgo.errors.Errors.new_("x509: invalid authority info access");
				};
				if (_method.equal(_oidAuthorityInfoAccessOcsp.__copy__())) {
					_out.value.ocspserver = _out.value.ocspserver.__append__(_aiaDER.__t__);
				} else if (_method.equal(_oidAuthorityInfoAccessIssuers.__copy__())) {
					_out.value.issuingCertificateURL = _out.value.issuingCertificateURL.__append__(_aiaDER.__t__);
				};
			};
		} else {
			_unhandled = true;
		};
		if (_e.critical && _unhandled) {
			_out.value.unhandledCriticalExtensions = _out.value.unhandledCriticalExtensions.__append__(_e.id.__copy__());
		};
	};
	return ((null : stdgo.Error));
}

function _parseCertificate(_der:Slice<GoByte>):{var _0:Pointer<Certificate>; var _1:Error;} {
	var _cert:Pointer<Certificate> = Go.pointer(new Certificate());
	var _input:vendor.golang_org.x.crypto.cryptobyte.Cryptobyte.String_ = new golang_org.x.crypto.cryptobyte.Cryptobyte.String_(_der).__copy__();
	if (!_input.readASN1Element(Go.pointer(_input), golang_org.x.crypto.cryptobyte.asn1.Asn1.sequence)) {
		return {_0: new Pointer<Certificate>().nil(), _1: stdgo.errors.Errors.new_("x509: malformed certificate")};
	};
	_cert.value.raw = _input.__copy__().__t__;
	if (!_input.readASN1(Go.pointer(_input), golang_org.x.crypto.cryptobyte.asn1.Asn1.sequence)) {
		return {_0: new Pointer<Certificate>().nil(), _1: stdgo.errors.Errors.new_("x509: malformed certificate")};
	};
	var _tbs:golang_org.x.crypto.cryptobyte.Cryptobyte.String_ = new vendor.golang_org.x.crypto.cryptobyte.Cryptobyte.String_();
	if (!_input.readASN1Element(Go.pointer(_tbs), golang_org.x.crypto.cryptobyte.asn1.Asn1.sequence)) {
		return {_0: new Pointer<Certificate>().nil(), _1: stdgo.errors.Errors.new_("x509: malformed tbs certificate")};
	};
	_cert.value.rawTBSCertificate = _tbs.__copy__().__t__;
	if (!_tbs.readASN1(Go.pointer(_tbs), golang_org.x.crypto.cryptobyte.asn1.Asn1.sequence)) {
		return {_0: new Pointer<Certificate>().nil(), _1: stdgo.errors.Errors.new_("x509: malformed tbs certificate")};
	};
	if (!_tbs.readOptionalASN1Integer(Go.toInterface(Go.pointer(_cert.value.version)),
		new golang_org.x.crypto.cryptobyte.asn1.Asn1.Tag(((0 : GoUInt8))).constructed().contextSpecific(), Go.toInterface(((0 : GoInt))))) {
		return {_0: new Pointer<Certificate>().nil(), _1: stdgo.errors.Errors.new_("x509: malformed version")};
	};
	if (_cert.value.version < ((0 : GoInt))) {
		return {_0: new Pointer<Certificate>().nil(), _1: stdgo.errors.Errors.new_("x509: malformed version")};
	};
	_cert.value.version++;
	if (_cert.value.version > ((3 : GoInt))) {
		return {_0: new Pointer<Certificate>().nil(), _1: stdgo.errors.Errors.new_("x509: invalid version")};
	};
	var _serial:Pointer<stdgo.math.big.Big.Int_> = Go.pointer(new stdgo.math.big.Big.Int_());
	if (!_tbs.readASN1Integer(Go.toInterface(_serial))) {
		return {_0: new Pointer<Certificate>().nil(), _1: stdgo.errors.Errors.new_("x509: malformed serial number")};
	};
	_cert.value.serialNumber = _serial;
	var _sigAISeq:golang_org.x.crypto.cryptobyte.Cryptobyte.String_ = new vendor.golang_org.x.crypto.cryptobyte.Cryptobyte.String_();
	if (!_tbs.readASN1(Go.pointer(_sigAISeq), golang_org.x.crypto.cryptobyte.asn1.Asn1.sequence)) {
		return {_0: new Pointer<Certificate>().nil(), _1: stdgo.errors.Errors.new_("x509: malformed signature algorithm identifier")};
	};
	var _outerSigAISeq:golang_org.x.crypto.cryptobyte.Cryptobyte.String_ = new vendor.golang_org.x.crypto.cryptobyte.Cryptobyte.String_();
	if (!_input.readASN1(Go.pointer(_outerSigAISeq), golang_org.x.crypto.cryptobyte.asn1.Asn1.sequence)) {
		return {_0: new Pointer<Certificate>().nil(), _1: stdgo.errors.Errors.new_("x509: malformed algorithm identifier")};
	};
	if (!stdgo.bytes.Bytes.equal(_outerSigAISeq.__copy__().__t__, _sigAISeq.__copy__().__t__)) {
		return {_0: new Pointer<Certificate>().nil(), _1: stdgo.errors.Errors.new_("x509: inner and outer signature algorithm identifiers don\'t match")};
	};
	var __tmp__ = _parseAI(_sigAISeq.__copy__()),
		_sigAI:stdgo.crypto.x509.pkix.Pkix.AlgorithmIdentifier = __tmp__._0,
		_err:stdgo.Error = __tmp__._1;
	if (_err != null) {
		return {_0: new Pointer<Certificate>().nil(), _1: _err};
	};
	_cert.value.signatureAlgorithm = _getSignatureAlgorithmFromAI(_sigAI.__copy__());
	var _issuerSeq:golang_org.x.crypto.cryptobyte.Cryptobyte.String_ = new vendor.golang_org.x.crypto.cryptobyte.Cryptobyte.String_();
	if (!_tbs.readASN1Element(Go.pointer(_issuerSeq), golang_org.x.crypto.cryptobyte.asn1.Asn1.sequence)) {
		return {_0: new Pointer<Certificate>().nil(), _1: stdgo.errors.Errors.new_("x509: malformed issuer")};
	};
	_cert.value.rawIssuer = _issuerSeq.__copy__().__t__;
	var __tmp__ = _parseName(_issuerSeq.__copy__()),
		_issuerRDNs:Pointer<stdgo.crypto.x509.pkix.Pkix.RDNSequence> = __tmp__._0,
		_err:stdgo.Error = __tmp__._1;
	if (_err != null) {
		return {_0: new Pointer<Certificate>().nil(), _1: _err};
	};
	_cert.value.issuer.fillFromRDNSequence(_issuerRDNs);
	var _validity:golang_org.x.crypto.cryptobyte.Cryptobyte.String_ = new vendor.golang_org.x.crypto.cryptobyte.Cryptobyte.String_();
	if (!_tbs.readASN1(Go.pointer(_validity), golang_org.x.crypto.cryptobyte.asn1.Asn1.sequence)) {
		return {_0: new Pointer<Certificate>().nil(), _1: stdgo.errors.Errors.new_("x509: malformed validity")};
	};
	{
		var __tmp__ = _parseValidity(_validity.__copy__());
		_cert.value.notBefore = __tmp__._0.__copy__();
		_cert.value.notAfter = __tmp__._1.__copy__();
		_err = __tmp__._2;
	};
	if (_err != null) {
		return {_0: new Pointer<Certificate>().nil(), _1: _err};
	};
	var _subjectSeq:golang_org.x.crypto.cryptobyte.Cryptobyte.String_ = new vendor.golang_org.x.crypto.cryptobyte.Cryptobyte.String_();
	if (!_tbs.readASN1Element(Go.pointer(_subjectSeq), golang_org.x.crypto.cryptobyte.asn1.Asn1.sequence)) {
		return {_0: new Pointer<Certificate>().nil(), _1: stdgo.errors.Errors.new_("x509: malformed issuer")};
	};
	_cert.value.rawSubject = _subjectSeq.__copy__().__t__;
	var __tmp__ = _parseName(_subjectSeq.__copy__()),
		_subjectRDNs:Pointer<stdgo.crypto.x509.pkix.Pkix.RDNSequence> = __tmp__._0,
		_err:stdgo.Error = __tmp__._1;
	if (_err != null) {
		return {_0: new Pointer<Certificate>().nil(), _1: _err};
	};
	_cert.value.subject.fillFromRDNSequence(_subjectRDNs);
	var _spki:golang_org.x.crypto.cryptobyte.Cryptobyte.String_ = new vendor.golang_org.x.crypto.cryptobyte.Cryptobyte.String_();
	if (!_tbs.readASN1Element(Go.pointer(_spki), golang_org.x.crypto.cryptobyte.asn1.Asn1.sequence)) {
		return {_0: new Pointer<Certificate>().nil(), _1: stdgo.errors.Errors.new_("x509: malformed spki")};
	};
	_cert.value.rawSubjectPublicKeyInfo = _spki.__copy__().__t__;
	if (!_spki.readASN1(Go.pointer(_spki), golang_org.x.crypto.cryptobyte.asn1.Asn1.sequence)) {
		return {_0: new Pointer<Certificate>().nil(), _1: stdgo.errors.Errors.new_("x509: malformed spki")};
	};
	var _pkAISeq:golang_org.x.crypto.cryptobyte.Cryptobyte.String_ = new vendor.golang_org.x.crypto.cryptobyte.Cryptobyte.String_();
	if (!_spki.readASN1(Go.pointer(_pkAISeq), golang_org.x.crypto.cryptobyte.asn1.Asn1.sequence)) {
		return {_0: new Pointer<Certificate>().nil(), _1: stdgo.errors.Errors.new_("x509: malformed public key algorithm identifier")};
	};
	var __tmp__ = _parseAI(_pkAISeq.__copy__()),
		_pkAI:stdgo.crypto.x509.pkix.Pkix.AlgorithmIdentifier = __tmp__._0,
		_err:stdgo.Error = __tmp__._1;
	if (_err != null) {
		return {_0: new Pointer<Certificate>().nil(), _1: _err};
	};
	_cert.value.publicKeyAlgorithm = _getPublicKeyAlgorithmFromOID(_pkAI.algorithm.__copy__());
	var _spk:stdgo.encoding.asn1.Asn1.BitString = new stdgo.encoding.asn1.Asn1.BitString();
	if (!_spki.readASN1BitString(Go.pointer(_spk))) {
		return {_0: new Pointer<Certificate>().nil(), _1: stdgo.errors.Errors.new_("x509: malformed subjectPublicKey")};
	};
	{
		var __tmp__ = _parsePublicKey(_cert.value.publicKeyAlgorithm,
			Go.pointer((({algorithm: _pkAI.__copy__(), publicKey: _spk.__copy__(), raw: new stdgo.encoding.asn1.Asn1.RawContent()} : T_publicKeyInfo))));
		_cert.value.publicKey = Go.toInterface(__tmp__._0);
		_err = __tmp__._1;
	};
	if (_err != null) {
		return {_0: new Pointer<Certificate>().nil(), _1: _err};
	};
	if (_cert.value.version > ((1 : GoInt))) {
		if (!_tbs.skipOptionalASN1(new golang_org.x.crypto.cryptobyte.asn1.Asn1.Tag(((1 : GoUInt8))).constructed().contextSpecific())) {
			return {_0: new Pointer<Certificate>().nil(), _1: stdgo.errors.Errors.new_("x509: malformed issuerUniqueID")};
		};
		if (!_tbs.skipOptionalASN1(new golang_org.x.crypto.cryptobyte.asn1.Asn1.Tag(((2 : GoUInt8))).constructed().contextSpecific())) {
			return {_0: new Pointer<Certificate>().nil(), _1: stdgo.errors.Errors.new_("x509: malformed subjectUniqueID")};
		};
		if (_cert.value.version == ((3 : GoInt))) {
			var _extensions:golang_org.x.crypto.cryptobyte.Cryptobyte.String_ = new vendor.golang_org.x.crypto.cryptobyte.Cryptobyte.String_();
			var _present:Bool = false;
			if (!_tbs.readOptionalASN1(Go.pointer(_extensions), Go.pointer(_present),
				new golang_org.x.crypto.cryptobyte.asn1.Asn1.Tag(((3 : GoUInt8))).constructed().contextSpecific())) {
				return {_0: new Pointer<Certificate>().nil(), _1: stdgo.errors.Errors.new_("x509: malformed extensions")};
			};
			if (_present) {
				if (!_extensions.readASN1(Go.pointer(_extensions), golang_org.x.crypto.cryptobyte.asn1.Asn1.sequence)) {
					return {_0: new Pointer<Certificate>().nil(), _1: stdgo.errors.Errors.new_("x509: malformed extensions")};
				};
				while (!_extensions.empty()) {
					var _extension:golang_org.x.crypto.cryptobyte.Cryptobyte.String_ = new vendor.golang_org.x.crypto.cryptobyte.Cryptobyte.String_();
					if (!_extensions.readASN1(Go.pointer(_extension), golang_org.x.crypto.cryptobyte.asn1.Asn1.sequence)) {
						return {_0: new Pointer<Certificate>().nil(), _1: stdgo.errors.Errors.new_("x509: malformed extension")};
					};
					var __tmp__ = _parseExtension(_extension.__copy__()),
						_ext:stdgo.crypto.x509.pkix.Pkix.Extension = __tmp__._0,
						_err:stdgo.Error = __tmp__._1;
					if (_err != null) {
						return {_0: new Pointer<Certificate>().nil(), _1: _err};
					};
					_cert.value.extensions = _cert.value.extensions.__append__(_ext.__copy__());
				};
				_err = _processExtensions(_cert);
				if (_err != null) {
					return {_0: new Pointer<Certificate>().nil(), _1: _err};
				};
			};
		};
	};
	var _signature:stdgo.encoding.asn1.Asn1.BitString = new stdgo.encoding.asn1.Asn1.BitString();
	if (!_input.readASN1BitString(Go.pointer(_signature))) {
		return {_0: new Pointer<Certificate>().nil(), _1: stdgo.errors.Errors.new_("x509: malformed signature")};
	};
	_cert.value.signature = _signature.rightAlign();
	return {_0: _cert, _1: ((null : stdgo.Error))};
}

/**
	// ParseCertificate parses a single certificate from the given ASN.1 DER data.
**/
function parseCertificate(_der:Slice<GoByte>):{var _0:Pointer<Certificate>; var _1:Error;} {
	var __tmp__ = _parseCertificate(_der),
		_cert:Pointer<Certificate> = __tmp__._0,
		_err:stdgo.Error = __tmp__._1;
	if (_err != null) {
		return {_0: new Pointer<Certificate>().nil(), _1: _err};
	};
	if (_der.length != _cert.value.raw.length) {
		return {_0: new Pointer<Certificate>().nil(), _1: stdgo.errors.Errors.new_("x509: trailing data")};
	};
	return {_0: _cert, _1: _err};
}

/**
	// ParseCertificates parses one or more certificates from the given ASN.1 DER
	// data. The certificates must be concatenated with no intermediate padding.
**/
function parseCertificates(_der:Slice<GoByte>):{var _0:Slice<Pointer<Certificate>>; var _1:Error;} {
	var _certs:Slice<Pointer<Certificate>> = new Slice<Pointer<Certificate>>().nil();
	while (_der.length > ((0 : GoInt))) {
		var __tmp__ = _parseCertificate(_der),
			_cert:Pointer<Certificate> = __tmp__._0,
			_err:stdgo.Error = __tmp__._1;
		if (_err != null) {
			return {_0: new Slice<Pointer<Certificate>>().nil(), _1: _err};
		};
		_certs = _certs.__append__(_cert);
		_der = _der.__slice__(_cert.value.raw.length);
	};
	return {_0: _certs, _1: ((null : stdgo.Error))};
}

/**
	// IsEncryptedPEMBlock returns whether the PEM block is password encrypted
	// according to RFC 1423.
	//
	// Deprecated: Legacy PEM encryption as specified in RFC 1423 is insecure by
	// design. Since it does not authenticate the ciphertext, it is vulnerable to
	// padding oracle attacks that can let an attacker recover the plaintext.
**/
function isEncryptedPEMBlock(_b:Pointer<stdgo.encoding.pem.Pem.Block>):Bool {
	var __tmp__ = _b.value.headers.exists("DEK-Info") ? {value: _b.value.headers["DEK-Info"], ok: true} : {value: _b.value.headers.defaultValue(), ok: false},
		_:GoString = __tmp__.value,
		_ok:Bool = __tmp__.ok;
	return _ok;
}

/**
	// DecryptPEMBlock takes a PEM block encrypted according to RFC 1423 and the
	// password used to encrypt it and returns a slice of decrypted DER encoded
	// bytes. It inspects the DEK-Info header to determine the algorithm used for
	// decryption. If no DEK-Info header is present, an error is returned. If an
	// incorrect password is detected an IncorrectPasswordError is returned. Because
	// of deficiencies in the format, it's not always possible to detect an
	// incorrect password. In these cases no error will be returned but the
	// decrypted DER bytes will be random noise.
	//
	// Deprecated: Legacy PEM encryption as specified in RFC 1423 is insecure by
	// design. Since it does not authenticate the ciphertext, it is vulnerable to
	// padding oracle attacks that can let an attacker recover the plaintext.
**/
function decryptPEMBlock(_b:Pointer<stdgo.encoding.pem.Pem.Block>, _password:Slice<GoByte>):{var _0:Slice<GoByte>; var _1:Error;} {
	var __tmp__ = _b.value.headers.exists("DEK-Info") ? {value: _b.value.headers["DEK-Info"], ok: true} : {value: _b.value.headers.defaultValue(), ok: false},
		_dek:GoString = __tmp__.value,
		_ok:Bool = __tmp__.ok;
	if (!_ok) {
		return {_0: new Slice<GoUInt8>().nil(), _1: stdgo.errors.Errors.new_("x509: no DEK-Info header in block")};
	};
	var _idx:GoInt = stdgo.strings.Strings.index(_dek, ",");
	if (_idx == -((1 : GoUnTypedInt))) {
		return {_0: new Slice<GoUInt8>().nil(), _1: stdgo.errors.Errors.new_("x509: malformed DEK-Info header")};
	};
	var _mode:GoString = _dek.__slice__(0, _idx),
		_hexIV:GoString = _dek.__slice__(_idx + ((1 : GoInt)));
	var _ciph:Pointer<T_rfc1423Algo> = _cipherByName(_mode);
	if ((_ciph == null || _ciph.isNil())) {
		return {_0: new Slice<GoUInt8>().nil(), _1: stdgo.errors.Errors.new_("x509: unknown encryption mode")};
	};
	var __tmp__ = stdgo.encoding.hex.Hex.decodeString(_hexIV),
		_iv:Slice<GoUInt8> = __tmp__._0,
		_err:stdgo.Error = __tmp__._1;
	if (_err != null) {
		return {_0: new Slice<GoUInt8>().nil(), _1: _err};
	};
	if (_iv.length != _ciph.value._blockSize) {
		return {_0: new Slice<GoUInt8>().nil(), _1: stdgo.errors.Errors.new_("x509: incorrect IV size")};
	};
	var _key:Slice<GoUInt8> = _ciph.value._deriveKey(_password, _iv.__slice__(0, ((8 : GoInt))));
	var __tmp__ = _ciph.value._cipherFunc(_key),
		_block:stdgo.crypto.cipher.Cipher.Block = __tmp__._0,
		_err:stdgo.Error = __tmp__._1;
	if (_err != null) {
		return {_0: new Slice<GoUInt8>().nil(), _1: _err};
	};
	if (_b.value.bytes.length % _block.blockSize() != ((0 : GoInt))) {
		return {_0: new Slice<GoUInt8>().nil(), _1: stdgo.errors.Errors.new_("x509: encrypted PEM data is not a multiple of the block size")};
	};
	var _data:Slice<GoUInt8> = new Slice<GoUInt8>(...[for (i in 0...((_b.value.bytes.length : GoInt)).toBasic()) ((0 : GoUInt8))]);
	var _dec:stdgo.crypto.cipher.Cipher.BlockMode = _cipher.newCBCDecrypter(_block, _iv);
	_dec.cryptBlocks(_data, _b.value.bytes);
	var _dlen:GoInt = _data.length;
	if (_dlen == ((0 : GoInt)) || _dlen % _ciph.value._blockSize != ((0 : GoInt))) {
		return {_0: new Slice<GoUInt8>().nil(), _1: stdgo.errors.Errors.new_("x509: invalid padding")};
	};
	var _last:GoInt = ((_data[_dlen - ((1 : GoInt))] : GoInt));
	if (_dlen < _last) {
		return {_0: new Slice<GoUInt8>().nil(), _1: incorrectPasswordError};
	};
	if (_last == ((0 : GoInt)) || _last > _ciph.value._blockSize) {
		return {_0: new Slice<GoUInt8>().nil(), _1: incorrectPasswordError};
	};
	for (_ => _val in _data.__slice__(_dlen - _last)) {
		if (((_val : GoInt)) != _last) {
			return {_0: new Slice<GoUInt8>().nil(), _1: incorrectPasswordError};
		};
	};
	return {_0: _data.__slice__(0, _dlen - _last), _1: ((null : stdgo.Error))};
}

/**
	// EncryptPEMBlock returns a PEM block of the specified type holding the
	// given DER encoded data encrypted with the specified algorithm and
	// password according to RFC 1423.
	//
	// Deprecated: Legacy PEM encryption as specified in RFC 1423 is insecure by
	// design. Since it does not authenticate the ciphertext, it is vulnerable to
	// padding oracle attacks that can let an attacker recover the plaintext.
**/
function encryptPEMBlock(_rand:stdgo.io.Io.Reader, _blockType:GoString, _data:Slice<GoByte>, _password:Slice<GoByte>,
		_alg:PEMCipher):{var _0:Pointer<stdgo.encoding.pem.Pem.Block>; var _1:Error;} {
	var _ciph:Pointer<T_rfc1423Algo> = _cipherByKey(_alg);
	if ((_ciph == null || _ciph.isNil())) {
		return {_0: new Pointer<stdgo.encoding.pem.Pem.Block>().nil(), _1: stdgo.errors.Errors.new_("x509: unknown encryption mode")};
	};
	var _iv:Slice<GoUInt8> = new Slice<GoUInt8>(...[for (i in 0...((_ciph.value._blockSize : GoInt)).toBasic()) ((0 : GoUInt8))]);
	{
		var __tmp__ = stdgo.io.Io.readFull(_rand, _iv),
			_:GoInt = __tmp__._0,
			_err:stdgo.Error = __tmp__._1;
		if (_err != null) {
			return {_0: new Pointer<stdgo.encoding.pem.Pem.Block>().nil(), _1: stdgo.errors.Errors.new_((("x509: cannot generate IV: " : GoString))
				+ _err.error())};
		};
	};
	var _key:Slice<GoUInt8> = _ciph.value._deriveKey(_password, _iv.__slice__(0, ((8 : GoInt))));
	var __tmp__ = _ciph.value._cipherFunc(_key),
		_block:stdgo.crypto.cipher.Cipher.Block = __tmp__._0,
		_err:stdgo.Error = __tmp__._1;
	if (_err != null) {
		return {_0: new Pointer<stdgo.encoding.pem.Pem.Block>().nil(), _1: _err};
	};
	var _enc:stdgo.crypto.cipher.Cipher.BlockMode = _cipher.newCBCEncrypter(_block, _iv);
	var _pad:GoInt = _ciph.value._blockSize - _data.length % _ciph.value._blockSize;
	var _encrypted:Slice<GoUInt8> = new Slice<GoUInt8>(...[for (i in 0...((_data.length : GoInt)).toBasic()) ((0 : GoUInt8))]).setCap(((_data.length +
		_pad:GoInt)).toBasic());
	Go.copy(_encrypted, _data);
	{
		var _i:GoInt = ((0 : GoInt));
		Go.cfor(_i < _pad, _i++, {
			_encrypted = _encrypted.__append__(((_pad : GoByte)));
		});
	};
	_enc.cryptBlocks(_encrypted, _encrypted);
	return {_0: Go.pointer((({type: _blockType, headers: new GoMap<GoString,
		GoString>(new stdgo.reflect.Reflect._Type(stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(string_kind),
			stdgo.reflect.Reflect.GoType.basic(string_kind))),
		{
			key: "Proc-Type",
			value: "4,ENCRYPTED"
		},
		{key: "DEK-Info", value: _ciph.value._name + (("," : GoString)) + stdgo.encoding.hex.Hex.encodeToString(_iv)}),
		bytes: _encrypted} : stdgo.encoding.pem.Pem.Block))), _1: ((null : stdgo.Error))};
}

function _cipherByName(_name:GoString):Pointer<T_rfc1423Algo> {
	for (_i => _ in _rfc1423Algos) {
		var _alg:Pointer<T_rfc1423Algo> = Go.pointer(_rfc1423Algos[_i]);
		if (_alg.value._name == _name) {
			return _alg;
		};
	};
	return new Pointer<T_rfc1423Algo>().nil();
}

function _cipherByKey(_key:PEMCipher):Pointer<T_rfc1423Algo> {
	for (_i => _ in _rfc1423Algos) {
		var _alg:Pointer<T_rfc1423Algo> = Go.pointer(_rfc1423Algos[_i]);
		if (_alg.value._cipher.__t__ == _key.__t__) {
			return _alg;
		};
	};
	return new Pointer<T_rfc1423Algo>().nil();
}

/**
	// ParsePKCS1PrivateKey parses an RSA private key in PKCS #1, ASN.1 DER form.
	//
	// This kind of key is commonly encoded in PEM blocks of type "RSA PRIVATE KEY".
**/
function parsePKCS1PrivateKey(_der:Slice<GoByte>):{var _0:Pointer<stdgo.crypto.rsa.Rsa.PrivateKey>; var _1:Error;} {
	var _priv:T_pkcs1PrivateKey = new T_pkcs1PrivateKey();
	var __tmp__ = stdgo.encoding.asn1.Asn1.unmarshal(_der, Go.toInterface(Go.pointer(_priv))),
		_rest:Slice<GoUInt8> = __tmp__._0,
		_err:stdgo.Error = __tmp__._1;
	if (_rest.length > ((0 : GoInt))) {
		return {_0: new Pointer<stdgo.crypto.rsa.Rsa.PrivateKey>().nil(), _1: (({msg: "trailing data"} : stdgo.encoding.asn1.Asn1.SyntaxError)).__copy__()};
	};
	if (_err != null) {
		{
			var __tmp__ = stdgo.encoding.asn1.Asn1.unmarshal(_der, Go.toInterface(Go.pointer(new T_ecPrivateKey()))),
				_:Slice<GoUInt8> = __tmp__._0,
				_err:stdgo.Error = __tmp__._1;
			if (_err == null) {
				return {_0: new Pointer<stdgo.crypto.rsa.Rsa.PrivateKey>().nil(),
					_1: stdgo.errors.Errors.new_("x509: failed to parse private key (use ParseECPrivateKey instead for this key format)")};
			};
		};
		{
			var __tmp__ = stdgo.encoding.asn1.Asn1.unmarshal(_der, Go.toInterface(Go.pointer(new T_pkcs8()))),
				_:Slice<GoUInt8> = __tmp__._0,
				_err:stdgo.Error = __tmp__._1;
			if (_err == null) {
				return {_0: new Pointer<stdgo.crypto.rsa.Rsa.PrivateKey>().nil(),
					_1: stdgo.errors.Errors.new_("x509: failed to parse private key (use ParsePKCS8PrivateKey instead for this key format)")};
			};
		};
		return {_0: new Pointer<stdgo.crypto.rsa.Rsa.PrivateKey>().nil(), _1: _err};
	};
	if (_priv.version > ((1 : GoInt))) {
		return {_0: new Pointer<stdgo.crypto.rsa.Rsa.PrivateKey>().nil(), _1: stdgo.errors.Errors.new_("x509: unsupported private key version")};
	};
	if (_priv.n.value.sign() <= ((0 : GoInt))
		|| _priv.d.value.sign() <= ((0 : GoInt))
		|| _priv.p.value.sign() <= ((0 : GoInt))
		|| _priv.q.value.sign() <= ((0 : GoInt))) {
		return {_0: new Pointer<stdgo.crypto.rsa.Rsa.PrivateKey>().nil(), _1: stdgo.errors.Errors.new_("x509: private key contains zero or negative value")};
	};
	var _key:Pointer<stdgo.crypto.rsa.Rsa.PrivateKey> = Go.pointer(new stdgo.crypto.rsa.Rsa.PrivateKey());
	_key.value.publicKey = (({e: _priv.e, n: _priv.n} : stdgo.crypto.rsa.Rsa.PublicKey)).__copy__();
	_key.value.d = _priv.d;
	_key.value.primes = new Slice<Pointer<stdgo.math.big.Big.Int_>>(...[
		for (i in 0...((((2 : GoInt)) + _priv.additionalPrimes.length : GoInt)).toBasic()) new Pointer<stdgo.math.big.Big.Int_>().nil()
	]);
	_key.value.primes[((0 : GoInt))] = _priv.p;
	_key.value.primes[((1 : GoInt))] = _priv.q;
	for (_i => _a in _priv.additionalPrimes) {
		if (_a.prime.value.sign() <= ((0 : GoInt))) {
			return {_0: new Pointer<stdgo.crypto.rsa.Rsa.PrivateKey>().nil(),
				_1: stdgo.errors.Errors.new_("x509: private key contains zero or negative prime")};
		};
		_key.value.primes[_i + ((2 : GoInt))] = _a.prime;
	};
	_err = _key.value.validate();
	if (_err != null) {
		return {_0: new Pointer<stdgo.crypto.rsa.Rsa.PrivateKey>().nil(), _1: _err};
	};
	_key.value.precompute();
	return {_0: _key, _1: ((null : stdgo.Error))};
}

/**
	// MarshalPKCS1PrivateKey converts an RSA private key to PKCS #1, ASN.1 DER form.
	//
	// This kind of key is commonly encoded in PEM blocks of type "RSA PRIVATE KEY".
	// For a more flexible key format which is not RSA specific, use
	// MarshalPKCS8PrivateKey.
**/
function marshalPKCS1PrivateKey(_key:Pointer<stdgo.crypto.rsa.Rsa.PrivateKey>):Slice<GoByte> {
	_key.value.precompute();
	var _version:GoInt = ((0 : GoInt));
	if (_key.value.primes.length > ((2 : GoInt))) {
		_version = ((1 : GoInt));
	};
	var _priv:T_pkcs1PrivateKey = (({
		version: _version,
		n: _key.value.publicKey.n,
		e: _key.value.publicKey.e,
		d: _key.value.d,
		p: _key.value.primes[((0 : GoInt))],
		q: _key.value.primes[((1 : GoInt))],
		dp: _key.value.precomputed.dp,
		dq: _key.value.precomputed.dq,
		qinv: _key.value.precomputed.qinv,
		additionalPrimes: new Slice<T_pkcs1AdditionalRSAPrime>().nil()
	} : T_pkcs1PrivateKey)).__copy__();
	_priv.additionalPrimes = new Slice<T_pkcs1AdditionalRSAPrime>(...[
		for (i in 0...((_key.value.precomputed.crtvalues.length : GoInt)).toBasic()) new T_pkcs1AdditionalRSAPrime()
	]);
	for (_i => _values in _key.value.precomputed.crtvalues) {
		_priv.additionalPrimes[_i].prime = _key.value.primes[((2 : GoInt)) + _i];
		_priv.additionalPrimes[_i].exp = _values.exp;
		_priv.additionalPrimes[_i].coeff = _values.coeff;
	};
	var __tmp__ = stdgo.encoding.asn1.Asn1.marshal(Go.toInterface(_priv.__copy__())),
		_b:Slice<GoUInt8> = __tmp__._0,
		_:stdgo.Error = __tmp__._1;
	return _b;
}

/**
	// ParsePKCS1PublicKey parses an RSA public key in PKCS #1, ASN.1 DER form.
	//
	// This kind of key is commonly encoded in PEM blocks of type "RSA PUBLIC KEY".
**/
function parsePKCS1PublicKey(_der:Slice<GoByte>):{var _0:Pointer<stdgo.crypto.rsa.Rsa.PublicKey>; var _1:Error;} {
	var _pub:T_pkcs1PublicKey = new T_pkcs1PublicKey();
	var __tmp__ = stdgo.encoding.asn1.Asn1.unmarshal(_der, Go.toInterface(Go.pointer(_pub))),
		_rest:Slice<GoUInt8> = __tmp__._0,
		_err:stdgo.Error = __tmp__._1;
	if (_err != null) {
		{
			var __tmp__ = stdgo.encoding.asn1.Asn1.unmarshal(_der, Go.toInterface(Go.pointer(new T_publicKeyInfo()))),
				_:Slice<GoUInt8> = __tmp__._0,
				_err:stdgo.Error = __tmp__._1;
			if (_err == null) {
				return {_0: new Pointer<stdgo.crypto.rsa.Rsa.PublicKey>().nil(),
					_1: stdgo.errors.Errors.new_("x509: failed to parse public key (use ParsePKIXPublicKey instead for this key format)")};
			};
		};
		return {_0: new Pointer<stdgo.crypto.rsa.Rsa.PublicKey>().nil(), _1: _err};
	};
	if (_rest.length > ((0 : GoInt))) {
		return {_0: new Pointer<stdgo.crypto.rsa.Rsa.PublicKey>().nil(), _1: (({msg: "trailing data"} : stdgo.encoding.asn1.Asn1.SyntaxError)).__copy__()};
	};
	if (_pub.n.value.sign() <= ((0 : GoInt)) || _pub.e <= ((0 : GoInt))) {
		return {_0: new Pointer<stdgo.crypto.rsa.Rsa.PublicKey>().nil(), _1: stdgo.errors.Errors.new_("x509: public key contains zero or negative value")};
	};
	if (_pub.e > (((1 : GoUnTypedInt)) << ((31 : GoUnTypedInt))) - ((1 : GoUnTypedInt))) {
		return {_0: new Pointer<stdgo.crypto.rsa.Rsa.PublicKey>().nil(), _1: stdgo.errors.Errors.new_("x509: public key contains large public exponent")};
	};
	return {_0: Go.pointer((({e: _pub.e, n: _pub.n} : stdgo.crypto.rsa.Rsa.PublicKey))), _1: ((null : stdgo.Error))};
}

/**
	// MarshalPKCS1PublicKey converts an RSA public key to PKCS #1, ASN.1 DER form.
	//
	// This kind of key is commonly encoded in PEM blocks of type "RSA PUBLIC KEY".
**/
function marshalPKCS1PublicKey(_key:Pointer<stdgo.crypto.rsa.Rsa.PublicKey>):Slice<GoByte> {
	var __tmp__ = stdgo.encoding.asn1.Asn1.marshal(Go.toInterface((({n: _key.value.n, e: _key.value.e} : T_pkcs1PublicKey)).__copy__())),
		_derBytes:Slice<GoUInt8> = __tmp__._0,
		_:stdgo.Error = __tmp__._1;
	return _derBytes;
}

/**
	// ParsePKCS8PrivateKey parses an unencrypted private key in PKCS #8, ASN.1 DER form.
	//
	// It returns a *rsa.PrivateKey, a *ecdsa.PrivateKey, or a ed25519.PrivateKey.
	// More types might be supported in the future.
	//
	// This kind of key is commonly encoded in PEM blocks of type "PRIVATE KEY".
**/
function parsePKCS8PrivateKey(_der:Slice<GoByte>):{var _0:AnyInterface; var _1:Error;} {
	var _key:AnyInterface = ((null : AnyInterface)),
		_err:Error = ((null : stdgo.Error));
	var _privKey:T_pkcs8 = new T_pkcs8();
	{
		var __tmp__ = stdgo.encoding.asn1.Asn1.unmarshal(_der, Go.toInterface(Go.pointer(_privKey))),
			_:Slice<GoUInt8> = __tmp__._0,
			_err:stdgo.Error = __tmp__._1;
		if (_err != null) {
			{
				var __tmp__ = stdgo.encoding.asn1.Asn1.unmarshal(_der, Go.toInterface(Go.pointer(new T_ecPrivateKey()))),
					_:Slice<GoUInt8> = __tmp__._0,
					_err:stdgo.Error = __tmp__._1;
				if (_err == null) {
					return {_0: ((null : AnyInterface)),
						_1: stdgo.errors.Errors.new_("x509: failed to parse private key (use ParseECPrivateKey instead for this key format)")};
				};
			};
			{
				var __tmp__ = stdgo.encoding.asn1.Asn1.unmarshal(_der, Go.toInterface(Go.pointer(new T_pkcs1PrivateKey()))),
					_:Slice<GoUInt8> = __tmp__._0,
					_err:stdgo.Error = __tmp__._1;
				if (_err == null) {
					return {_0: ((null : AnyInterface)),
						_1: stdgo.errors.Errors.new_("x509: failed to parse private key (use ParsePKCS1PrivateKey instead for this key format)")};
				};
			};
			return {_0: ((null : AnyInterface)), _1: _err};
		};
	};
	if (_privKey.algo.algorithm.equal(_oidPublicKeyRSA.__copy__())) {
		{
			var __tmp__ = parsePKCS1PrivateKey(_privKey.privateKey);
			_key = Go.toInterface(__tmp__._0);
			_err = __tmp__._1;
		};
		if (_err != null) {
			return {_0: ((null : AnyInterface)), _1: stdgo.errors.Errors.new_((("x509: failed to parse RSA private key embedded in PKCS#8: " : GoString))
				+ _err.error())};
		};
		return {_0: Go.toInterface(_key), _1: ((null : stdgo.Error))};
	} else if (_privKey.algo.algorithm.equal(_oidPublicKeyECDSA.__copy__())) {
		var _bytes:Slice<GoUInt8> = _privKey.algo.parameters.fullBytes;
		var _namedCurveOID:Pointer<stdgo.encoding.asn1.Asn1.ObjectIdentifier> = Go.pointer(new stdgo.encoding.asn1.Asn1.ObjectIdentifier());
		{
			var __tmp__ = stdgo.encoding.asn1.Asn1.unmarshal(_bytes, Go.toInterface(_namedCurveOID)),
				_:Slice<GoUInt8> = __tmp__._0,
				_err:stdgo.Error = __tmp__._1;
			if (_err != null) {
				_namedCurveOID = new Pointer<stdgo.encoding.asn1.Asn1.ObjectIdentifier>().nil();
			};
		};
		{
			var __tmp__ = _parseECPrivateKey(_namedCurveOID, _privKey.privateKey);
			_key = Go.toInterface(__tmp__._0);
			_err = __tmp__._1;
		};
		if (_err != null) {
			return {_0: ((null : AnyInterface)), _1: stdgo.errors.Errors.new_((("x509: failed to parse EC private key embedded in PKCS#8: " : GoString))
				+ _err.error())};
		};
		return {_0: Go.toInterface(_key), _1: ((null : stdgo.Error))};
	} else if (_privKey.algo.algorithm.equal(_oidPublicKeyEd25519.__copy__())) {
		{
			var _l:GoInt = _privKey.algo.parameters.fullBytes.length;
			if (_l != ((0 : GoInt))) {
				return {_0: ((null : AnyInterface)), _1: stdgo.errors.Errors.new_("x509: invalid Ed25519 private key parameters")};
			};
		};
		var _curvePrivateKey:Slice<GoByte> = new Slice<GoUInt8>().nil();
		{
			var __tmp__ = stdgo.encoding.asn1.Asn1.unmarshal(_privKey.privateKey, Go.toInterface(Go.pointer(_curvePrivateKey))),
				_:Slice<GoUInt8> = __tmp__._0,
				_err:stdgo.Error = __tmp__._1;
			if (_err != null) {
				return {_0: ((null : AnyInterface)), _1: stdgo.fmt.Fmt.errorf("x509: invalid Ed25519 private key: %v", Go.toInterface(_err))};
			};
		};
		{
			var _l:GoInt = _curvePrivateKey.length;
			if (_l != stdgo.crypto.ed25519.Ed25519.seedSize) {
				return {_0: ((null : AnyInterface)), _1: stdgo.fmt.Fmt.errorf("x509: invalid Ed25519 private key length: %d", Go.toInterface(_l))};
			};
		};
		return {_0: Go.toInterface(stdgo.crypto.ed25519.Ed25519.newKeyFromSeed(_curvePrivateKey).__copy__()), _1: ((null : stdgo.Error))};
	} else {
		return {_0: ((null : AnyInterface)), _1: stdgo.fmt.Fmt.errorf("x509: PKCS#8 wrapping contained private key with unknown algorithm: %v",
			Go.toInterface(_privKey.algo.algorithm.__copy__()))};
	};
}

/**
	// MarshalPKCS8PrivateKey converts a private key to PKCS #8, ASN.1 DER form.
	//
	// The following key types are currently supported: *rsa.PrivateKey, *ecdsa.PrivateKey
	// and ed25519.PrivateKey. Unsupported key types result in an error.
	//
	// This kind of key is commonly encoded in PEM blocks of type "PRIVATE KEY".
**/
function marshalPKCS8PrivateKey(_key:AnyInterface):{var _0:Slice<GoByte>; var _1:Error;} {
	var _privKey:T_pkcs8 = new T_pkcs8();
	if (Go.assertable(((_key : Pointer<stdgo.crypto.rsa.Rsa.PrivateKey>)))) {
		var _k:Pointer<stdgo.crypto.rsa.Rsa.PrivateKey> = _key == null ? null : _key.__underlying__() == null ? null : _key == null ? null : _key.__underlying__()
			.value;
		_privKey.algo = (({algorithm: _oidPublicKeyRSA.__copy__(),
			parameters: stdgo.encoding.asn1.Asn1.nullRawValue.__copy__()} : stdgo.crypto.x509.pkix.Pkix.AlgorithmIdentifier)).__copy__();
		_privKey.privateKey = marshalPKCS1PrivateKey(_k);
	} else if (Go.assertable(((_key : Pointer<stdgo.crypto.ecdsa.Ecdsa.PrivateKey>)))) {
		var _k:Pointer<stdgo.crypto.ecdsa.Ecdsa.PrivateKey> = _key == null ? null : _key.__underlying__() == null ? null : _key == null ? null : _key.__underlying__()
			.value;
		var __tmp__ = _oidFromNamedCurve(_k.value.publicKey.curve),
			_oid:stdgo.encoding.asn1.Asn1.ObjectIdentifier = __tmp__._0,
			_ok:Bool = __tmp__._1;
		if (!_ok) {
			return {_0: new Slice<GoUInt8>().nil(), _1: stdgo.errors.Errors.new_("x509: unknown curve while marshaling to PKCS#8")};
		};
		var __tmp__ = stdgo.encoding.asn1.Asn1.marshal(Go.toInterface(_oid.__copy__())),
			_oidBytes:Slice<GoUInt8> = __tmp__._0,
			_err:stdgo.Error = __tmp__._1;
		if (_err != null) {
			return {_0: new Slice<GoUInt8>().nil(), _1: stdgo.errors.Errors.new_((("x509: failed to marshal curve OID: " : GoString)) + _err.error())};
		};
		_privKey.algo = (({algorithm: _oidPublicKeyECDSA.__copy__(), parameters: (({
			fullBytes: _oidBytes,
			class_: 0,
			tag: 0,
			isCompound: false,
			bytes: new Slice<GoUInt8>().nil()
		} : stdgo.encoding.asn1.Asn1.RawValue)).__copy__()} : stdgo.crypto.x509.pkix.Pkix.AlgorithmIdentifier)).__copy__();
		{
			{
				var __tmp__ = _marshalECPrivateKeyWithOID(_k, new stdgo.encoding.asn1.Asn1.ObjectIdentifier());
				_privKey.privateKey = __tmp__._0;
				_err = __tmp__._1;
			};
			if (_err != null) {
				return {_0: new Slice<GoUInt8>().nil(),
					_1: stdgo.errors.Errors.new_((("x509: failed to marshal EC private key while building PKCS#8: " : GoString))
					+ _err.error())};
			};
		};
	} else if (Go.assertable(((_key : stdgo.crypto.ed25519.Ed25519.PrivateKey)))) {
		var _k:stdgo.crypto.ed25519.Ed25519.PrivateKey = _key == null ? null : _key.__underlying__() == null ? null : _key == null ? null : _key.__underlying__()
			.value;
		_privKey.algo = (({algorithm: _oidPublicKeyEd25519.__copy__(),
			parameters: new stdgo.encoding.asn1.Asn1.RawValue()} : stdgo.crypto.x509.pkix.Pkix.AlgorithmIdentifier)).__copy__();
		var __tmp__ = stdgo.encoding.asn1.Asn1.marshal(Go.toInterface(_k.seed())),
			_curvePrivateKey:Slice<GoUInt8> = __tmp__._0,
			_err:stdgo.Error = __tmp__._1;
		if (_err != null) {
			return {_0: new Slice<GoUInt8>().nil(), _1: stdgo.fmt.Fmt.errorf("x509: failed to marshal private key: %v", Go.toInterface(_err))};
		};
		_privKey.privateKey = _curvePrivateKey;
	} else {
		var _k:AnyInterface = _key == null ? null : _key.__underlying__();
		return {_0: new Slice<GoUInt8>().nil(), _1: stdgo.fmt.Fmt.errorf("x509: unknown key type while marshaling PKCS#8: %T", Go.toInterface(_key))};
	};
	return stdgo.encoding.asn1.Asn1.marshal(Go.toInterface(_privKey.__copy__()));
}

function _systemRootsPool():Pointer<CertPool> {
	_once.do_(_initSystemRoots);
	return _systemRoots;
}

function _initSystemRoots():Void {
	{
		var __tmp__ = _loadSystemRoots();
		_systemRoots = __tmp__._0;
		_systemRootsErr = __tmp__._1;
	};
	if (_systemRootsErr != null) {
		_systemRoots = new Pointer<CertPool>().nil();
	};
}

function _loadSystemRoots():{var _0:Pointer<CertPool>; var _1:Error;} {
	var _roots:Pointer<CertPool> = newCertPool();
	var _files:Slice<GoString> = _certFiles;
	{
		var _f:GoString = stdgo.os.Os.getenv(_certFileEnv);
		if (_f != (("" : GoString))) {
			_files = new Slice<GoString>(_f);
		};
	};
	var _firstErr:Error = ((null : stdgo.Error));
	for (_ => _file in _files) {
		var __tmp__ = stdgo.os.Os.readFile(_file),
			_data:Slice<GoUInt8> = __tmp__._0,
			_err:stdgo.Error = __tmp__._1;
		if (_err == null) {
			_roots.value.appendCertsFromPEM(_data);
			break;
		};
		if (_firstErr == null && !stdgo.os.Os.isNotExist(_err)) {
			_firstErr = _err;
		};
	};
	var _dirs:Slice<GoString> = _certDirectories;
	{
		var _d:GoString = stdgo.os.Os.getenv(_certDirEnv);
		if (_d != (("" : GoString))) {
			_dirs = stdgo.strings.Strings.split(_d, ":");
		};
	};
	for (_ => _directory in _dirs) {
		var __tmp__ = _readUniqueDirectoryEntries(_directory),
			_fis:Slice<stdgo.io.fs.Fs.DirEntry> = __tmp__._0,
			_err:stdgo.Error = __tmp__._1;
		if (_err != null) {
			if (_firstErr == null && !stdgo.os.Os.isNotExist(_err)) {
				_firstErr = _err;
			};
			continue;
		};
		for (_ => _fi in _fis) {
			var __tmp__ = stdgo.os.Os.readFile(_directory + (("/" : GoString)) + _fi.name()),
				_data:Slice<GoUInt8> = __tmp__._0,
				_err:stdgo.Error = __tmp__._1;
			if (_err == null) {
				_roots.value.appendCertsFromPEM(_data);
			};
		};
	};
	if (_roots.value._len() > ((0 : GoInt)) || _firstErr == null) {
		return {_0: _roots, _1: ((null : stdgo.Error))};
	};
	return {_0: new Pointer<CertPool>().nil(), _1: _firstErr};
}

/**
	// readUniqueDirectoryEntries is like os.ReadDir but omits
	// symlinks that point within the directory.
**/
function _readUniqueDirectoryEntries(_dir:GoString):{var _0:Slice<stdgo.io.fs.Fs.DirEntry>; var _1:Error;} {
	var __tmp__ = stdgo.os.Os.readDir(_dir),
		_files:Slice<stdgo.io.fs.Fs.DirEntry> = __tmp__._0,
		_err:stdgo.Error = __tmp__._1;
	if (_err != null) {
		return {_0: new Slice<stdgo.io.fs.Fs.DirEntry>().nil(), _1: _err};
	};
	var _uniq:Slice<stdgo.io.fs.Fs.DirEntry> = _files.__slice__(0, ((0 : GoInt)));
	for (_ => _f in _files) {
		if (!_isSameDirSymlink(_f, _dir)) {
			_uniq = _uniq.__append__(_f);
		};
	};
	return {_0: _uniq, _1: ((null : stdgo.Error))};
}

/**
	// isSameDirSymlink reports whether fi in dir is a symlink with a
	// target not containing a slash.
**/
function _isSameDirSymlink(_f:stdgo.io.fs.Fs.DirEntry, _dir:GoString):Bool {
	if (new stdgo.io.fs.Fs.FileMode(_f.type().__t__ & stdgo.io.fs.Fs.modeSymlink.__t__).__t__ == ((0 : GoUInt32))) {
		return false;
	};
	var __tmp__ = stdgo.os.Os.readlink(stdgo.path.filepath.Filepath.join(_dir, _f.name())),
		_target:GoString = __tmp__._0,
		_err:stdgo.Error = __tmp__._1;
	return _err == null && !stdgo.strings.Strings.contains(_target, "/");
}

/**
	// ParseECPrivateKey parses an EC private key in SEC 1, ASN.1 DER form.
	//
	// This kind of key is commonly encoded in PEM blocks of type "EC PRIVATE KEY".
**/
function parseECPrivateKey(_der:Slice<GoByte>):{var _0:Pointer<stdgo.crypto.ecdsa.Ecdsa.PrivateKey>; var _1:Error;} {
	return _parseECPrivateKey(new Pointer<stdgo.encoding.asn1.Asn1.ObjectIdentifier>().nil(), _der);
}

/**
	// MarshalECPrivateKey converts an EC private key to SEC 1, ASN.1 DER form.
	//
	// This kind of key is commonly encoded in PEM blocks of type "EC PRIVATE KEY".
	// For a more flexible key format which is not EC specific, use
	// MarshalPKCS8PrivateKey.
**/
function marshalECPrivateKey(_key:Pointer<stdgo.crypto.ecdsa.Ecdsa.PrivateKey>):{var _0:Slice<GoByte>; var _1:Error;} {
	var __tmp__ = _oidFromNamedCurve(_key.value.publicKey.curve),
		_oid:stdgo.encoding.asn1.Asn1.ObjectIdentifier = __tmp__._0,
		_ok:Bool = __tmp__._1;
	if (!_ok) {
		return {_0: new Slice<GoUInt8>().nil(), _1: stdgo.errors.Errors.new_("x509: unknown elliptic curve")};
	};
	return _marshalECPrivateKeyWithOID(_key, _oid.__copy__());
}

/**
	// marshalECPrivateKey marshals an EC private key into ASN.1, DER format and
	// sets the curve ID to the given OID, or omits it if OID is nil.
**/
function _marshalECPrivateKeyWithOID(_key:Pointer<stdgo.crypto.ecdsa.Ecdsa.PrivateKey>,
		_oid:stdgo.encoding.asn1.Asn1.ObjectIdentifier):{var _0:Slice<GoByte>; var _1:Error;} {
	var _privateKey:Slice<GoUInt8> = new Slice<GoUInt8>(...[
		for (i in 0...(((_key.value.publicKey.curve.params().value.n.value.bitLen() + ((7 : GoInt))) / ((8 : GoInt)) : GoInt)).toBasic()) ((0 : GoUInt8))
	]);
	return stdgo.encoding.asn1.Asn1.marshal(Go.toInterface((({
		version: ((1 : GoInt)),
		privateKey: _key.value.d.value.fillBytes(_privateKey),
		namedCurveOID: _oid.__copy__(),
		publicKey: (({bytes: stdgo.crypto.elliptic.Elliptic.marshal(_key.value.publicKey.curve, _key.value.publicKey.x,
			_key.value.publicKey.y), bitLength: 0} : stdgo.encoding.asn1.Asn1.BitString)).__copy__()
	} : T_ecPrivateKey)).__copy__()));
}

/**
	// parseECPrivateKey parses an ASN.1 Elliptic Curve Private Key Structure.
	// The OID for the named curve may be provided from another source (such as
	// the PKCS8 container) - if it is provided then use this instead of the OID
	// that may exist in the EC private key structure.
**/
function _parseECPrivateKey(_namedCurveOID:Pointer<stdgo.encoding.asn1.Asn1.ObjectIdentifier>,
		_der:Slice<GoByte>):{var _0:Pointer<stdgo.crypto.ecdsa.Ecdsa.PrivateKey>; var _1:Error;} {
	var _key:Pointer<stdgo.crypto.ecdsa.Ecdsa.PrivateKey> = new Pointer<stdgo.crypto.ecdsa.Ecdsa.PrivateKey>().nil(),
		_err:Error = ((null : stdgo.Error));
	var _privKey:T_ecPrivateKey = new T_ecPrivateKey();
	{
		var __tmp__ = stdgo.encoding.asn1.Asn1.unmarshal(_der, Go.toInterface(Go.pointer(_privKey))),
			_:Slice<GoUInt8> = __tmp__._0,
			_err:stdgo.Error = __tmp__._1;
		if (_err != null) {
			{
				var __tmp__ = stdgo.encoding.asn1.Asn1.unmarshal(_der, Go.toInterface(Go.pointer(new T_pkcs8()))),
					_:Slice<GoUInt8> = __tmp__._0,
					_err:stdgo.Error = __tmp__._1;
				if (_err == null) {
					return {_0: new Pointer<stdgo.crypto.ecdsa.Ecdsa.PrivateKey>().nil(),
						_1: stdgo.errors.Errors.new_("x509: failed to parse private key (use ParsePKCS8PrivateKey instead for this key format)")};
				};
			};
			{
				var __tmp__ = stdgo.encoding.asn1.Asn1.unmarshal(_der, Go.toInterface(Go.pointer(new T_pkcs1PrivateKey()))),
					_:Slice<GoUInt8> = __tmp__._0,
					_err:stdgo.Error = __tmp__._1;
				if (_err == null) {
					return {_0: new Pointer<stdgo.crypto.ecdsa.Ecdsa.PrivateKey>().nil(),
						_1: stdgo.errors.Errors.new_("x509: failed to parse private key (use ParsePKCS1PrivateKey instead for this key format)")};
				};
			};
			return {_0: new Pointer<stdgo.crypto.ecdsa.Ecdsa.PrivateKey>().nil(),
				_1: stdgo.errors.Errors.new_((("x509: failed to parse EC private key: " : GoString))
				+ _err.error())};
		};
	};
	if (_privKey.version != _ecPrivKeyVersion) {
		return {_0: new Pointer<stdgo.crypto.ecdsa.Ecdsa.PrivateKey>().nil(), _1: stdgo.fmt.Fmt.errorf("x509: unknown EC private key version %d",
			Go.toInterface(_privKey.version))};
	};
	var _curve:stdgo.crypto.elliptic.Elliptic.Curve = ((null : stdgo.crypto.elliptic.Elliptic.Curve));
	if ((_namedCurveOID != null && !_namedCurveOID.isNil())) {
		_curve = _namedCurveFromOID(_namedCurveOID.value.__copy__());
	} else {
		_curve = _namedCurveFromOID(_privKey.namedCurveOID.__copy__());
	};
	if (_curve == null) {
		return {_0: new Pointer<stdgo.crypto.ecdsa.Ecdsa.PrivateKey>().nil(), _1: stdgo.errors.Errors.new_("x509: unknown elliptic curve")};
	};
	var _k:Pointer<stdgo.math.big.Big.Int_> = Go.pointer(new stdgo.math.big.Big.Int_()).value.setBytes(_privKey.privateKey);
	var _curveOrder:Pointer<stdgo.math.big.Big.Int_> = _curve.params().value.n;
	if (_k.value.cmp(_curveOrder) >= ((0 : GoInt))) {
		return {_0: new Pointer<stdgo.crypto.ecdsa.Ecdsa.PrivateKey>().nil(), _1: stdgo.errors.Errors.new_("x509: invalid elliptic curve private key value")};
	};
	var _priv:Pointer<stdgo.crypto.ecdsa.Ecdsa.PrivateKey> = Go.pointer(new stdgo.crypto.ecdsa.Ecdsa.PrivateKey());
	_priv.value.publicKey.curve = _curve;
	_priv.value.d = _k;
	var _privateKey:Slice<GoUInt8> = new Slice<GoUInt8>(...[
		for (i in 0...(((_curveOrder.value.bitLen() + ((7 : GoInt))) / ((8 : GoInt)) : GoInt)).toBasic()) ((0 : GoUInt8))
	]);
	while (_privKey.privateKey.length > _privateKey.length) {
		if (_privKey.privateKey[((0 : GoInt))] != ((0 : GoUInt8))) {
			return {_0: new Pointer<stdgo.crypto.ecdsa.Ecdsa.PrivateKey>().nil(), _1: stdgo.errors.Errors.new_("x509: invalid private key length")};
		};
		_privKey.privateKey = _privKey.privateKey.__slice__(((1 : GoInt)));
	};
	Go.copy(_privateKey.__slice__(_privateKey.length - _privKey.privateKey.length), _privKey.privateKey);
	{
		var __tmp__ = _curve.scalarBaseMult(_privateKey);
		_priv.value.publicKey.x = __tmp__._0;
		_priv.value.publicKey.y = __tmp__._1;
	};
	return {_0: _priv, _1: ((null : stdgo.Error))};
}

/**
	// parseRFC2821Mailbox parses an email address into local and domain parts,
	// based on the ABNF for a “Mailbox” from RFC 2821. According to RFC 5280,
	// Section 4.2.1.6 that's correct for an rfc822Name from a certificate: “The
	// format of an rfc822Name is a "Mailbox" as defined in RFC 2821, Section 4.1.2”.
**/
function _parseRFC2821Mailbox(_in:GoString):{var _0:T_rfc2821Mailbox; var _1:Bool;} {
	return stdgo.internal.Macro.controlFlow({
		var _mailbox:T_rfc2821Mailbox = new T_rfc2821Mailbox(),
			_ok:Bool = false;
		if (_in.length == ((0 : GoInt))) {
			return {_0: _mailbox.__copy__(), _1: false};
		};
		var _localPartBytes:Slice<GoUInt8> = new Slice<GoUInt8>(...[for (i in 0...((((0 : GoInt)) : GoInt)).toBasic()) ((0 : GoUInt8))])
			.setCap(((_in.length / ((2 : GoInt)):GoInt)).toBasic());
		if (_in[((0 : GoInt))] == (("\"".code : GoRune))) {
			_in = _in.__slice__(((1 : GoInt)));
			@:label("QuotedString") while (true) {
				if (_in.length == ((0 : GoInt))) {
					return {_0: _mailbox.__copy__(), _1: false};
				};
				var _c:GoUInt8 = _in[((0 : GoInt))];
				_in = _in.__slice__(((1 : GoInt)));
				{
					var __switchIndex__ = -1;
					while (true) {
						if (_c == (("\"".code : GoRune))) {
							@:break {
								____exit____ = true;
								____break____ = true;
								break;
							};
							break;
						} else if (_c == (("\\".code : GoRune))) {
							if (_in.length == ((0 : GoInt))) {
								return {_0: _mailbox.__copy__(), _1: false};
							};
							if (_in[((0 : GoInt))] == ((11 : GoUInt8))
								|| _in[((0 : GoInt))] == ((12 : GoUInt8))
								|| (((1 : GoUInt8)) <= _in[((0 : GoInt))] && _in[((0 : GoInt))] <= ((9 : GoUInt8)))
								|| (((14 : GoUInt8)) <= _in[((0 : GoInt))] && _in[((0 : GoInt))] <= ((127 : GoUInt8)))) {
								_localPartBytes = _localPartBytes.__append__(_in[((0 : GoInt))]);
								_in = _in.__slice__(((1 : GoInt)));
							} else {
								return {_0: _mailbox.__copy__(), _1: false};
							};
							break;
						} else if (_c == ((11 : GoUInt8))
							|| _c == ((12 : GoUInt8))
							|| _c == ((32 : GoUInt8))
							|| _c == ((33 : GoUInt8))
							|| _c == ((127 : GoUInt8))
							|| (((1 : GoUInt8)) <= _c && _c <= ((8 : GoUInt8)))
							|| (((14 : GoUInt8)) <= _c && _c <= ((31 : GoUInt8)))
							|| (((35 : GoUInt8)) <= _c && _c <= ((91 : GoUInt8)))
							|| (((93 : GoUInt8)) <= _c && _c <= ((126 : GoUInt8)))) {
							_localPartBytes = _localPartBytes.__append__(_c);
							break;
						} else {
							return {_0: _mailbox.__copy__(), _1: false};
						};
						break;
					};
				};
			};
		} else {
			@:label("NextChar") while (_in.length > ((0 : GoInt))) {
				var _c:GoUInt8 = _in[((0 : GoInt))];
				{
					var __switchIndex__ = -1;
					while (true) {
						if (__switchIndex__ == 0 || (__switchIndex__ == -1 && _c == (("\\".code : GoRune)))) {
							_in = _in.__slice__(((1 : GoInt)));
							if (_in.length == ((0 : GoInt))) {
								return {_0: _mailbox.__copy__(), _1: false};
							};
							@:fallthrough {
								__switchIndex__ = 1;
								continue;
							};
							break;
						} else if (__switchIndex__ == 1
							|| (__switchIndex__ == -1
								&& ((("0".code : GoRune)) <= _c && _c <= (("9".code : GoRune)))
								|| ((("a".code : GoRune)) <= _c && _c <= (("z".code : GoRune)))
								|| ((("A".code : GoRune)) <= _c && _c <= (("Z".code : GoRune)))
								|| _c == (("!".code : GoRune))
								|| _c == (("#".code : GoRune))
								|| _c == (("$".code : GoRune))
								|| _c == (("%".code : GoRune))
								|| _c == (("&".code : GoRune))
								|| _c == (("\'".code : GoRune))
								|| _c == (("*".code : GoRune))
								|| _c == (("+".code : GoRune))
								|| _c == (("-".code : GoRune))
								|| _c == (("/".code : GoRune))
								|| _c == (("=".code : GoRune))
								|| _c == (("?".code : GoRune))
								|| _c == (("^".code : GoRune))
								|| _c == (("_".code : GoRune))
								|| _c == (("`".code : GoRune))
								|| _c == (("{".code : GoRune))
								|| _c == (("|".code : GoRune))
								|| _c == (("}".code : GoRune))
								|| _c == (("~".code : GoRune))
								|| _c == ((".".code : GoRune)))) {
							_localPartBytes = _localPartBytes.__append__(_in[((0 : GoInt))]);
							_in = _in.__slice__(((1 : GoInt)));
							break;
							break;
						} else {
							@:break {
								____exit____ = true;
								____break____ = true;
								break;
							};
							break;
						};
						break;
					};
				};
			};
			if (_localPartBytes.length == ((0 : GoInt))) {
				return {_0: _mailbox.__copy__(), _1: false};
			};
			var _twoDots:Slice<GoUInt8> = new Slice<GoUInt8>(((".".code : GoRune)), ((".".code : GoRune)));
			if (_localPartBytes[((0 : GoInt))] == ((".".code : GoRune))
				|| _localPartBytes[_localPartBytes.length - ((1 : GoInt))] == ((".".code : GoRune))
				|| stdgo.bytes.Bytes.contains(_localPartBytes, _twoDots)) {
				return {_0: _mailbox.__copy__(), _1: false};
			};
		};
		if (_in.length == ((0 : GoInt)) || _in[((0 : GoInt))] != (("@".code : GoRune))) {
			return {_0: _mailbox.__copy__(), _1: false};
		};
		_in = _in.__slice__(((1 : GoInt)));
		{
			var __tmp__ = _domainToReverseLabels(_in),
				_:Slice<GoString> = __tmp__._0,
				_ok:Bool = __tmp__._1;
			if (!_ok) {
				return {_0: _mailbox.__copy__(), _1: false};
			};
		};
		_mailbox._local = ((_localPartBytes : GoString));
		_mailbox._domain = _in;
		return {_0: _mailbox.__copy__(), _1: true};
	});
}

/**
	// domainToReverseLabels converts a textual domain name like foo.example.com to
	// the list of labels in reverse order, e.g. ["com", "example", "foo"].
**/
function _domainToReverseLabels(_domain:GoString):{var _0:Slice<GoString>; var _1:Bool;} {
	var _reverseLabels:Slice<GoString> = new Slice<GoString>().nil(),
		_ok:Bool = false;
	while (_domain.length > ((0 : GoInt))) {
		{
			var _i:GoInt = stdgo.strings.Strings.lastIndexByte(_domain, ((".".code : GoRune)));
			if (_i == -((1 : GoUnTypedInt))) {
				_reverseLabels = _reverseLabels.__append__(_domain);
				_domain = "";
			} else {
				_reverseLabels = _reverseLabels.__append__(_domain.__slice__(_i + ((1 : GoInt))));
				_domain = _domain.__slice__(0, _i);
			};
		};
	};
	if (_reverseLabels.length > ((0 : GoInt)) && _reverseLabels[((0 : GoInt))].length == ((0 : GoInt))) {
		return {_0: new Slice<GoString>().nil(), _1: false};
	};
	for (_ => _label in _reverseLabels) {
		if (_label.length == ((0 : GoInt))) {
			return {_0: new Slice<GoString>().nil(), _1: false};
		};
		for (_ => _c in _label) {
			if (_c < ((33 : GoInt32)) || _c > ((126 : GoInt32))) {
				return {_0: new Slice<GoString>().nil(), _1: false};
			};
		};
	};
	return {_0: _reverseLabels, _1: true};
}

function _matchEmailConstraint(_mailbox:T_rfc2821Mailbox, _constraint:GoString):{var _0:Bool; var _1:Error;} {
	if (stdgo.strings.Strings.contains(_constraint, "@")) {
		var __tmp__ = _parseRFC2821Mailbox(_constraint),
			_constraintMailbox:T_rfc2821Mailbox = __tmp__._0,
			_ok:Bool = __tmp__._1;
		if (!_ok) {
			return {_0: false, _1: stdgo.fmt.Fmt.errorf("x509: internal error: cannot parse constraint %q", Go.toInterface(_constraint))};
		};
		return {_0: _mailbox._local == _constraintMailbox._local
			&& stdgo.strings.Strings.equalFold(_mailbox._domain, _constraintMailbox._domain), _1: ((null : stdgo.Error))};
	};
	return _matchDomainConstraint(_mailbox._domain, _constraint);
}

function _matchURIConstraint(_uri:Pointer<stdgo.net.url.Url.URL>, _constraint:GoString):{var _0:Bool; var _1:Error;} {
	var _host:GoString = _uri.value.host;
	if (_host.length == ((0 : GoInt))) {
		return {_0: false, _1: stdgo.fmt.Fmt.errorf("URI with empty host (%q) cannot be matched against constraints", Go.toInterface(_uri.value.toString()))};
	};
	if (stdgo.strings.Strings.contains(_host, ":") && !stdgo.strings.Strings.hasSuffix(_host, "]")) {
		var _err:Error = ((null : stdgo.Error));
		{
			var __tmp__ = stdgo.net.Net.splitHostPort(_uri.value.host);
			_host = __tmp__._0;
			_err = __tmp__._2;
		};
		if (_err != null) {
			return {_0: false, _1: _err};
		};
	};
	if (stdgo.strings.Strings.hasPrefix(_host, "[")
		&& stdgo.strings.Strings.hasSuffix(_host, "]")
		|| (stdgo.net.Net.parseIP(_host).__t__ != null && !stdgo.net.Net.parseIP(_host).__t__.isNil())) {
		return {_0: false, _1: stdgo.fmt.Fmt.errorf("URI with IP (%q) cannot be matched against constraints", Go.toInterface(_uri.value.toString()))};
	};
	return _matchDomainConstraint(_host, _constraint);
}

function _matchIPConstraint(_ip:stdgo.net.Net.IP, _constraint:Pointer<stdgo.net.Net.IPNet>):{var _0:Bool; var _1:Error;} {
	if (_ip.__t__.length != _constraint.value.ip.__t__.length) {
		return {_0: false, _1: ((null : stdgo.Error))};
	};
	for (_i => _ in _ip.__t__) {
		{
			var _mask:GoUInt8 = _constraint.value.mask.__t__[_i];
			if (_ip.__t__[_i] & _mask != _constraint.value.ip.__t__[_i] & _mask) {
				return {_0: false, _1: ((null : stdgo.Error))};
			};
		};
	};
	return {_0: true, _1: ((null : stdgo.Error))};
}

function _matchDomainConstraint(_domain:GoString, _constraint:GoString):{var _0:Bool; var _1:Error;} {
	if (_constraint.length == ((0 : GoInt))) {
		return {_0: true, _1: ((null : stdgo.Error))};
	};
	var __tmp__ = _domainToReverseLabels(_domain),
		_domainLabels:Slice<GoString> = __tmp__._0,
		_ok:Bool = __tmp__._1;
	if (!_ok) {
		return {_0: false, _1: stdgo.fmt.Fmt.errorf("x509: internal error: cannot parse domain %q", Go.toInterface(_domain))};
	};
	var _mustHaveSubdomains:Bool = false;
	if (_constraint[((0 : GoInt))] == ((".".code : GoRune))) {
		_mustHaveSubdomains = true;
		_constraint = _constraint.__slice__(((1 : GoInt)));
	};
	var __tmp__ = _domainToReverseLabels(_constraint),
		_constraintLabels:Slice<GoString> = __tmp__._0,
		_ok:Bool = __tmp__._1;
	if (!_ok) {
		return {_0: false, _1: stdgo.fmt.Fmt.errorf("x509: internal error: cannot parse domain %q", Go.toInterface(_constraint))};
	};
	if (_domainLabels.length < _constraintLabels.length || (_mustHaveSubdomains && _domainLabels.length == _constraintLabels.length)) {
		return {_0: false, _1: ((null : stdgo.Error))};
	};
	for (_i => _constraintLabel in _constraintLabels) {
		if (!stdgo.strings.Strings.equalFold(_constraintLabel, _domainLabels[_i])) {
			return {_0: false, _1: ((null : stdgo.Error))};
		};
	};
	return {_0: true, _1: ((null : stdgo.Error))};
}

function _appendToFreshChain(_chain:Slice<Pointer<Certificate>>, _cert:Pointer<Certificate>):Slice<Pointer<Certificate>> {
	var _n:Slice<Pointer<Certificate>> = new Slice<Pointer<Certificate>>(...[
		for (i in 0...((_chain.length + ((1 : GoInt)):GoInt)).toBasic()) new Pointer<Certificate>().nil()
	]);
	Go.copy(_n, _chain);
	_n[_chain.length] = _cert;
	return _n;
}

function _validHostnamePattern(_host:GoString):Bool {
	return _validHostname(_host, true);
}

function _validHostnameInput(_host:GoString):Bool {
	return _validHostname(_host, false);
}

/**
	// validHostname reports whether host is a valid hostname that can be matched or
	// matched against according to RFC 6125 2.2, with some leniency to accommodate
	// legacy values.
**/
function _validHostname(_host:GoString, _isPattern:Bool):Bool {
	if (!_isPattern) {
		_host = stdgo.strings.Strings.trimSuffix(_host, ".");
	};
	if (_host.length == ((0 : GoInt))) {
		return false;
	};
	for (_i => _part in stdgo.strings.Strings.split(_host, ".")) {
		if (_part == (("" : GoString))) {
			return false;
		};
		if (_isPattern && _i == ((0 : GoInt)) && _part == (("*" : GoString))) {
			continue;
		};
		for (_j => _c in _part) {
			if ((("a".code : GoRune)) <= _c && _c <= (("z".code : GoRune))) {
				continue;
			};
			if ((("0".code : GoRune)) <= _c && _c <= (("9".code : GoRune))) {
				continue;
			};
			if ((("A".code : GoRune)) <= _c && _c <= (("Z".code : GoRune))) {
				continue;
			};
			if (_c == (("-".code : GoRune)) && _j != ((0 : GoInt))) {
				continue;
			};
			if (_c == (("_".code : GoRune))) {
				continue;
			};
			return false;
		};
	};
	return true;
}

function _matchExactly(_hostA:GoString, _hostB:GoString):Bool {
	if (_hostA == (("" : GoString))
		|| _hostA == (("." : GoString))
		|| _hostB == (("" : GoString))
		|| _hostB == (("." : GoString))) {
		return false;
	};
	return _toLowerCaseASCII(_hostA) == _toLowerCaseASCII(_hostB);
}

function _matchHostnames(_pattern:GoString, _host:GoString):Bool {
	_pattern = _toLowerCaseASCII(_pattern);
	_host = _toLowerCaseASCII(stdgo.strings.Strings.trimSuffix(_host, "."));
	if (_pattern.length == ((0 : GoInt)) || _host.length == ((0 : GoInt))) {
		return false;
	};
	var _patternParts:Slice<GoString> = stdgo.strings.Strings.split(_pattern, ".");
	var _hostParts:Slice<GoString> = stdgo.strings.Strings.split(_host, ".");
	if (_patternParts.length != _hostParts.length) {
		return false;
	};
	for (_i => _patternPart in _patternParts) {
		if (_i == ((0 : GoInt)) && _patternPart == (("*" : GoString))) {
			continue;
		};
		if (_patternPart != _hostParts[_i]) {
			return false;
		};
	};
	return true;
}

/**
	// toLowerCaseASCII returns a lower-case version of in. See RFC 6125 6.4.1. We use
	// an explicitly ASCII function to avoid any sharp corners resulting from
	// performing Unicode operations on DNS labels.
**/
function _toLowerCaseASCII(_in:GoString):GoString {
	var _isAlreadyLowerCase:Bool = true;
	for (_ => _c in _in) {
		if (_c == stdgo.unicode.utf8.Utf8.runeError) {
			_isAlreadyLowerCase = false;
			break;
		};
		if ((("A".code : GoRune)) <= _c && _c <= (("Z".code : GoRune))) {
			_isAlreadyLowerCase = false;
			break;
		};
	};
	if (_isAlreadyLowerCase) {
		return _in;
	};
	var _out:Slice<GoUInt8> = ((_in : Slice<GoByte>));
	for (_i => _c in _out) {
		if ((("A".code : GoRune)) <= _c && _c <= (("Z".code : GoRune))) {
			_out[_i] = _out[_i] + ((("a".code : GoRune)) - (("A".code : GoRune)));
		};
	};
	return ((_out : GoString));
}

function _checkChainForKeyUsage(_chain:Slice<Pointer<Certificate>>, _keyUsages:Slice<ExtKeyUsage>):Bool {
	return stdgo.internal.Macro.controlFlow({
		var _usages:Slice<ExtKeyUsage> = new Slice<ExtKeyUsage>(...[for (i in 0...((_keyUsages.length : GoInt)).toBasic()) new ExtKeyUsage()]);
		Go.copy(_usages, _keyUsages);
		if (_chain.length == ((0 : GoInt))) {
			return false;
		};
		var _usagesRemaining:GoInt = _usages.length;
		@:label("NextCert") {
			var _i:GoInt = _chain.length - ((1 : GoInt));
			Go.cfor(_i >= ((0 : GoInt)), _i--, {
				var _cert:Pointer<Certificate> = _chain[_i];
				if (_cert.value.extKeyUsage.length == ((0 : GoInt)) && _cert.value.unknownExtKeyUsage.length == ((0 : GoInt))) {
					continue;
				};
				for (_ => _usage in _cert.value.extKeyUsage) {
					if (_usage.__t__ == extKeyUsageAny.__t__) {
						continue;
					};
				};
				final _invalidUsage:ExtKeyUsage = new ExtKeyUsage(-((1 : GoUnTypedInt)));
				@:label("NextRequestedUsage") for (_i => _requestedUsage in _usages) {
					if (_requestedUsage.__t__ == _invalidUsage.__t__) {
						continue;
					};
					for (_ => _usage in _cert.value.extKeyUsage) {
						if (_requestedUsage.__t__ == _usage.__t__) {
							continue;
						} else if (_requestedUsage.__t__ == extKeyUsageServerAuth.__t__
							&& (_usage.__t__ == extKeyUsageNetscapeServerGatedCrypto.__t__
								|| _usage.__t__ == extKeyUsageMicrosoftServerGatedCrypto.__t__)) {
							continue;
						};
					};
					_usages[_i] = _invalidUsage;
					_usagesRemaining--;
					if (_usagesRemaining == ((0 : GoInt))) {
						return false;
					};
				};
			});
		};
		return true;
	});
}

/**
	// ParsePKIXPublicKey parses a public key in PKIX, ASN.1 DER form.
	// The encoded public key is a SubjectPublicKeyInfo structure
	// (see RFC 5280, Section 4.1).
	//
	// It returns a *rsa.PublicKey, *dsa.PublicKey, *ecdsa.PublicKey, or
	// ed25519.PublicKey. More types might be supported in the future.
	//
	// This kind of key is commonly encoded in PEM blocks of type "PUBLIC KEY".
**/
function parsePKIXPublicKey(_derBytes:Slice<GoByte>):{var _0:AnyInterface; var _1:Error;} {
	var _pub:AnyInterface = ((null : AnyInterface)),
		_err:Error = ((null : stdgo.Error));
	var _pki:T_publicKeyInfo = new T_publicKeyInfo();
	{
		var __tmp__ = stdgo.encoding.asn1.Asn1.unmarshal(_derBytes, Go.toInterface(Go.pointer(_pki))),
			_rest:Slice<GoUInt8> = __tmp__._0,
			_err:stdgo.Error = __tmp__._1;
		if (_err != null) {
			{
				var __tmp__ = stdgo.encoding.asn1.Asn1.unmarshal(_derBytes, Go.toInterface(Go.pointer(new T_pkcs1PublicKey()))),
					_:Slice<GoUInt8> = __tmp__._0,
					_err:stdgo.Error = __tmp__._1;
				if (_err == null) {
					return {_0: ((null : AnyInterface)),
						_1: stdgo.errors.Errors.new_("x509: failed to parse public key (use ParsePKCS1PublicKey instead for this key format)")};
				};
			};
			return {_0: ((null : AnyInterface)), _1: _err};
		} else if (_rest.length != ((0 : GoInt))) {
			return {_0: ((null : AnyInterface)), _1: stdgo.errors.Errors.new_("x509: trailing data after ASN.1 of public-key")};
		};
	};
	var _algo:PublicKeyAlgorithm = _getPublicKeyAlgorithmFromOID(_pki.algorithm.algorithm.__copy__());
	if (_algo.__t__ == unknownPublicKeyAlgorithm.__t__) {
		return {_0: ((null : AnyInterface)), _1: stdgo.errors.Errors.new_("x509: unknown public key algorithm")};
	};
	return _parsePublicKey(_algo, Go.pointer(_pki));
}

function _marshalPublicKey(_pub:AnyInterface):{var _0:Slice<GoByte>; var _1:stdgo.crypto.x509.pkix.Pkix.AlgorithmIdentifier; var _2:Error;} {
	var _publicKeyBytes:Slice<GoByte> = new Slice<GoUInt8>().nil(),
		_publicKeyAlgorithm:stdgo.crypto.x509.pkix.Pkix.AlgorithmIdentifier = new stdgo.crypto.x509.pkix.Pkix.AlgorithmIdentifier(),
		_err:Error = ((null : stdgo.Error));
	if (Go.assertable(((_pub : Pointer<stdgo.crypto.rsa.Rsa.PublicKey>)))) {
		var _pub:Pointer<stdgo.crypto.rsa.Rsa.PublicKey> = _pub == null ? null : _pub.__underlying__() == null ? null : _pub == null ? null : _pub.__underlying__()
			.value;
		{
			var __tmp__ = stdgo.encoding.asn1.Asn1.marshal(Go.toInterface((({n: _pub.value.n, e: _pub.value.e} : T_pkcs1PublicKey)).__copy__()));
			_publicKeyBytes = __tmp__._0;
			_err = __tmp__._1;
		};
		if (_err != null) {
			return {_0: new Slice<GoUInt8>().nil(), _1: new stdgo.crypto.x509.pkix.Pkix.AlgorithmIdentifier().__copy__(), _2: _err};
		};
		_publicKeyAlgorithm.algorithm = _oidPublicKeyRSA.__copy__();
		_publicKeyAlgorithm.parameters = stdgo.encoding.asn1.Asn1.nullRawValue.__copy__();
	} else if (Go.assertable(((_pub : Pointer<stdgo.crypto.ecdsa.Ecdsa.PublicKey>)))) {
		var _pub:Pointer<stdgo.crypto.ecdsa.Ecdsa.PublicKey> = _pub == null ? null : _pub.__underlying__() == null ? null : _pub == null ? null : _pub.__underlying__()
			.value;
		_publicKeyBytes = stdgo.crypto.elliptic.Elliptic.marshal(_pub.value.curve, _pub.value.x, _pub.value.y);
		var __tmp__ = _oidFromNamedCurve(_pub.value.curve),
			_oid:stdgo.encoding.asn1.Asn1.ObjectIdentifier = __tmp__._0,
			_ok:Bool = __tmp__._1;
		if (!_ok) {
			return {_0: new Slice<GoUInt8>().nil(), _1: new stdgo.crypto.x509.pkix.Pkix.AlgorithmIdentifier().__copy__(),
				_2: stdgo.errors.Errors.new_("x509: unsupported elliptic curve")};
		};
		_publicKeyAlgorithm.algorithm = _oidPublicKeyECDSA.__copy__();
		var _paramBytes:Slice<GoByte> = new Slice<GoUInt8>().nil();
		{
			var __tmp__ = stdgo.encoding.asn1.Asn1.marshal(Go.toInterface(_oid.__copy__()));
			_paramBytes = __tmp__._0;
			_err = __tmp__._1;
		};
		if (_err != null) {
			return {_0: _publicKeyBytes, _1: _publicKeyAlgorithm, _2: _err};
		};
		_publicKeyAlgorithm.parameters.fullBytes = _paramBytes;
	} else if (Go.assertable(((_pub : stdgo.crypto.ed25519.Ed25519.PublicKey)))) {
		var _pub:stdgo.crypto.ed25519.Ed25519.PublicKey = _pub == null ? null : _pub.__underlying__() == null ? null : _pub == null ? null : _pub.__underlying__()
			.value;
		_publicKeyBytes = _pub.__copy__().__t__;
		_publicKeyAlgorithm.algorithm = _oidPublicKeyEd25519.__copy__();
	} else {
		var _pub:AnyInterface = _pub == null ? null : _pub.__underlying__();
		return {_0: new Slice<GoUInt8>().nil(), _1: new stdgo.crypto.x509.pkix.Pkix.AlgorithmIdentifier().__copy__(),
			_2: stdgo.fmt.Fmt.errorf("x509: unsupported public key type: %T", Go.toInterface(_pub))};
	};
	return {_0: _publicKeyBytes, _1: _publicKeyAlgorithm.__copy__(), _2: ((null : stdgo.Error))};
}

/**
	// MarshalPKIXPublicKey converts a public key to PKIX, ASN.1 DER form.
	// The encoded public key is a SubjectPublicKeyInfo structure
	// (see RFC 5280, Section 4.1).
	//
	// The following key types are currently supported: *rsa.PublicKey, *ecdsa.PublicKey
	// and ed25519.PublicKey. Unsupported key types result in an error.
	//
	// This kind of key is commonly encoded in PEM blocks of type "PUBLIC KEY".
**/
function marshalPKIXPublicKey(_pub:AnyInterface):{var _0:Slice<GoByte>; var _1:Error;} {
	var _publicKeyBytes:Slice<GoByte> = new Slice<GoUInt8>().nil();
	var _publicKeyAlgorithm:stdgo.crypto.x509.pkix.Pkix.AlgorithmIdentifier = new stdgo.crypto.x509.pkix.Pkix.AlgorithmIdentifier();
	var _err:Error = ((null : stdgo.Error));
	{
		{
			var __tmp__ = _marshalPublicKey(Go.toInterface(_pub));
			_publicKeyBytes = __tmp__._0;
			_publicKeyAlgorithm = __tmp__._1.__copy__();
			_err = __tmp__._2;
		};
		if (_err != null) {
			return {_0: new Slice<GoUInt8>().nil(), _1: _err};
		};
	};
	var _pkix:T_pkixPublicKey = (({algo: _publicKeyAlgorithm.__copy__(), bitString: (({bytes: _publicKeyBytes,
		bitLength: ((8 : GoInt)) * _publicKeyBytes.length} : stdgo.encoding.asn1.Asn1.BitString)).__copy__()} : T_pkixPublicKey)).__copy__();
	var __tmp__ = stdgo.encoding.asn1.Asn1.marshal(Go.toInterface(_pkix.__copy__())),
		_ret:Slice<GoUInt8> = __tmp__._0,
		_:stdgo.Error = __tmp__._1;
	return {_0: _ret, _1: ((null : stdgo.Error))};
}

function _getSignatureAlgorithmFromAI(_ai:stdgo.crypto.x509.pkix.Pkix.AlgorithmIdentifier):SignatureAlgorithm {
	if (_ai.algorithm.equal(_oidSignatureEd25519.__copy__())) {
		if (_ai.parameters.fullBytes.length != ((0 : GoInt))) {
			return unknownSignatureAlgorithm;
		};
	};
	if (!_ai.algorithm.equal(_oidSignatureRSAPSS.__copy__())) {
		for (_ => _details in _signatureAlgorithmDetails) {
			if (_ai.algorithm.equal(_details._oid.__copy__())) {
				return _details._algo;
			};
		};
		return unknownSignatureAlgorithm;
	};
	var _params:T_pssParameters = new T_pssParameters();
	{
		var __tmp__ = stdgo.encoding.asn1.Asn1.unmarshal(_ai.parameters.fullBytes, Go.toInterface(Go.pointer(_params))),
			_:Slice<GoUInt8> = __tmp__._0,
			_err:stdgo.Error = __tmp__._1;
		if (_err != null) {
			return unknownSignatureAlgorithm;
		};
	};
	var _mgf1HashFunc:stdgo.crypto.x509.pkix.Pkix.AlgorithmIdentifier = new stdgo.crypto.x509.pkix.Pkix.AlgorithmIdentifier();
	{
		var __tmp__ = stdgo.encoding.asn1.Asn1.unmarshal(_params.mgf.parameters.fullBytes, Go.toInterface(Go.pointer(_mgf1HashFunc))),
			_:Slice<GoUInt8> = __tmp__._0,
			_err:stdgo.Error = __tmp__._1;
		if (_err != null) {
			return unknownSignatureAlgorithm;
		};
	};
	if ((_params.hash.parameters.fullBytes.length != ((0 : GoInt))
		&& !stdgo.bytes.Bytes.equal(_params.hash.parameters.fullBytes, stdgo.encoding.asn1.Asn1.nullBytes))
		|| !_params.mgf.algorithm.equal(_oidMGF1.__copy__())
		|| !_mgf1HashFunc.algorithm.equal(_params.hash.algorithm.__copy__())
		|| (_mgf1HashFunc.parameters.fullBytes.length != ((0 : GoInt))
			&& !stdgo.bytes.Bytes.equal(_mgf1HashFunc.parameters.fullBytes, stdgo.encoding.asn1.Asn1.nullBytes))
		|| _params.trailerField != ((1 : GoInt))) {
		return unknownSignatureAlgorithm;
	};
	if (_params.hash.algorithm.equal(_oidSHA256.__copy__()) && _params.saltLength == ((32 : GoInt))) {
		return sha256withRSAPSS;
	} else if (_params.hash.algorithm.equal(_oidSHA384.__copy__()) && _params.saltLength == ((48 : GoInt))) {
		return sha384withRSAPSS;
	} else if (_params.hash.algorithm.equal(_oidSHA512.__copy__()) && _params.saltLength == ((64 : GoInt))) {
		return sha512withRSAPSS;
	};
	return unknownSignatureAlgorithm;
}

function _getPublicKeyAlgorithmFromOID(_oid:stdgo.encoding.asn1.Asn1.ObjectIdentifier):PublicKeyAlgorithm {
	if (_oid.equal(_oidPublicKeyRSA.__copy__())) {
		return rsa;
	} else if (_oid.equal(_oidPublicKeyDSA.__copy__())) {
		return dsa;
	} else if (_oid.equal(_oidPublicKeyECDSA.__copy__())) {
		return ecdsa;
	} else if (_oid.equal(_oidPublicKeyEd25519.__copy__())) {
		return ed25519;
	};
	return unknownPublicKeyAlgorithm;
}

function _namedCurveFromOID(_oid:stdgo.encoding.asn1.Asn1.ObjectIdentifier):stdgo.crypto.elliptic.Elliptic.Curve {
	if (_oid.equal(_oidNamedCurveP224.__copy__())) {
		return stdgo.crypto.elliptic.Elliptic.p224();
	} else if (_oid.equal(_oidNamedCurveP256.__copy__())) {
		return stdgo.crypto.elliptic.Elliptic.p256();
	} else if (_oid.equal(_oidNamedCurveP384.__copy__())) {
		return stdgo.crypto.elliptic.Elliptic.p384();
	} else if (_oid.equal(_oidNamedCurveP521.__copy__())) {
		return stdgo.crypto.elliptic.Elliptic.p521();
	};
	return ((null : stdgo.crypto.elliptic.Elliptic.Curve));
}

function _oidFromNamedCurve(_curve:stdgo.crypto.elliptic.Elliptic.Curve):{var _0:stdgo.encoding.asn1.Asn1.ObjectIdentifier; var _1:Bool;} {
	if (Go.toInterface(_curve) == Go.toInterface(stdgo.crypto.elliptic.Elliptic.p224())) {
		return {_0: _oidNamedCurveP224.__copy__(), _1: true};
	} else if (Go.toInterface(_curve) == Go.toInterface(stdgo.crypto.elliptic.Elliptic.p256())) {
		return {_0: _oidNamedCurveP256.__copy__(), _1: true};
	} else if (Go.toInterface(_curve) == Go.toInterface(stdgo.crypto.elliptic.Elliptic.p384())) {
		return {_0: _oidNamedCurveP384.__copy__(), _1: true};
	} else if (Go.toInterface(_curve) == Go.toInterface(stdgo.crypto.elliptic.Elliptic.p521())) {
		return {_0: _oidNamedCurveP521.__copy__(), _1: true};
	};
	return {_0: new stdgo.encoding.asn1.Asn1.ObjectIdentifier(), _1: false};
}

function _extKeyUsageFromOID(_oid:stdgo.encoding.asn1.Asn1.ObjectIdentifier):{var _0:ExtKeyUsage; var _1:Bool;} {
	var _eku:ExtKeyUsage = new ExtKeyUsage(), _ok:Bool = false;
	for (_ => _pair in _extKeyUsageOIDs) {
		if (_oid.equal(_pair._oid.__copy__())) {
			return {_0: _pair._extKeyUsage, _1: true};
		};
	};
	return {_0: _eku, _1: _ok};
}

function _oidFromExtKeyUsage(_eku:ExtKeyUsage):{var _0:stdgo.encoding.asn1.Asn1.ObjectIdentifier; var _1:Bool;} {
	var _oid:stdgo.encoding.asn1.Asn1.ObjectIdentifier = new stdgo.encoding.asn1.Asn1.ObjectIdentifier(),
		_ok:Bool = false;
	for (_ => _pair in _extKeyUsageOIDs) {
		if (_eku.__t__ == _pair._extKeyUsage.__t__) {
			return {_0: _pair._oid.__copy__(), _1: true};
		};
	};
	return {_0: _oid, _1: _ok};
}

function _signaturePublicKeyAlgoMismatchError(_expectedPubKeyAlgo:PublicKeyAlgorithm, _pubKey:AnyInterface):Error {
	return stdgo.fmt.Fmt.errorf("x509: signature algorithm specifies an %s public key, but have public key of type %T",
		Go.toInterface(_expectedPubKeyAlgo.toString()), Go.toInterface(_pubKey));
}

/**
	// CheckSignature verifies that signature is a valid signature over signed from
	// a crypto.PublicKey.
**/
function _checkSignature(_algo:SignatureAlgorithm, _signed:Slice<GoByte>, _signature:Slice<GoByte>, _publicKey:stdgo.crypto.Crypto.PublicKey):Error {
	var _err:Error = ((null : stdgo.Error));
	var _hashType:stdgo.crypto.Crypto.Hash = new stdgo.crypto.Crypto.Hash();
	var _pubKeyAlgo:PublicKeyAlgorithm = new PublicKeyAlgorithm();
	for (_ => _details in _signatureAlgorithmDetails) {
		if (_details._algo.__t__ == _algo.__t__) {
			_hashType = _details._hash;
			_pubKeyAlgo = _details._pubKeyAlgo;
		};
	};
	if (_hashType.__t__ == new stdgo.crypto.Crypto.Hash(((0 : GoUInt))).__t__) {
		if (_pubKeyAlgo.__t__ != ed25519.__t__) {
			return errUnsupportedAlgorithm;
		};
	} else if (_hashType.__t__ == stdgo.crypto.Crypto.md5.__t__) {
		return new InsecureAlgorithmError(_algo.__t__);
	} else {
		if (!_hashType.available()) {
			return errUnsupportedAlgorithm;
		};
		var _h:stdgo.hash.Hash.Hash = _hashType.new_();
		_h.write(_signed);
		_signed = _h.sum(new Slice<GoUInt8>().nil());
	};
	if (Go.assertable(((_publicKey : Pointer<stdgo.crypto.rsa.Rsa.PublicKey>)))) {
		var _pub:Pointer<stdgo.crypto.rsa.Rsa.PublicKey> = _publicKey == null ? null : _publicKey.__underlying__() == null ? null : _publicKey == null ? null : _publicKey.__underlying__()
			.value;
		if (_pubKeyAlgo.__t__ != rsa.__t__) {
			return _signaturePublicKeyAlgoMismatchError(_pubKeyAlgo, Go.toInterface(_pub));
		};
		if (_algo._isRSAPSS()) {
			return stdgo.crypto.rsa.Rsa.verifyPSS(_pub, _hashType, _signed, _signature,
				Go.pointer((({saltLength: stdgo.crypto.rsa.Rsa.psssaltLengthEqualsHash,
					hash: new stdgo.crypto.Crypto.Hash()} : stdgo.crypto.rsa.Rsa.PSSOptions))));
		} else {
			return stdgo.crypto.rsa.Rsa.verifyPKCS1v15(_pub, _hashType, _signed, _signature);
		};
	} else if (Go.assertable(((_publicKey : Pointer<stdgo.crypto.ecdsa.Ecdsa.PublicKey>)))) {
		var _pub:Pointer<stdgo.crypto.ecdsa.Ecdsa.PublicKey> = _publicKey == null ? null : _publicKey.__underlying__() == null ? null : _publicKey == null ? null : _publicKey.__underlying__()
			.value;
		if (_pubKeyAlgo.__t__ != ecdsa.__t__) {
			return _signaturePublicKeyAlgoMismatchError(_pubKeyAlgo, Go.toInterface(_pub));
		};
		if (!stdgo.crypto.ecdsa.Ecdsa.verifyASN1(_pub, _signed, _signature)) {
			return stdgo.errors.Errors.new_("x509: ECDSA verification failure");
		};
		return _err;
	} else if (Go.assertable(((_publicKey : stdgo.crypto.ed25519.Ed25519.PublicKey)))) {
		var _pub:stdgo.crypto.ed25519.Ed25519.PublicKey = _publicKey == null ? null : _publicKey.__underlying__() == null ? null : _publicKey == null ? null : _publicKey.__underlying__()
			.value;
		if (_pubKeyAlgo.__t__ != ed25519.__t__) {
			return _signaturePublicKeyAlgoMismatchError(_pubKeyAlgo, Go.toInterface(_pub.__copy__()));
		};
		if (!stdgo.crypto.ed25519.Ed25519.verify(_pub.__copy__(), _signed, _signature)) {
			return stdgo.errors.Errors.new_("x509: Ed25519 verification failure");
		};
		return _err;
	};
	return errUnsupportedAlgorithm;
}

function _reverseBitsInAByte(_in:GoByte):GoByte {
	var _b1:GoUInt8 = (_in >> ((4 : GoUnTypedInt))) | (_in << ((4 : GoUnTypedInt)));
	var _b2:GoUInt8 = (_b1 >> ((2 : GoUnTypedInt))) & ((51 : GoUInt8)) | (_b1 << ((2 : GoUnTypedInt))) & ((204 : GoUInt8));
	var _b3:GoUInt8 = (_b2 >> ((1 : GoUnTypedInt))) & ((85 : GoUInt8)) | (_b2 << ((1 : GoUnTypedInt))) & ((170 : GoUInt8));
	return _b3;
}

/**
	// asn1BitLength returns the bit-length of bitString by considering the
	// most-significant bit in a byte to be the "first" bit. This convention
	// matches ASN.1, but differs from almost everything else.
**/
function _asn1BitLength(_bitString:Slice<GoByte>):GoInt {
	var _bitLen:GoInt = _bitString.length * ((8 : GoInt));
	for (_i => _ in _bitString) {
		var _b:GoUInt8 = _bitString[_bitString.length - _i - ((1 : GoInt))];
		{
			var _bit:GoUInt = ((((0 : GoUInt)) : GoUInt));
			Go.cfor(_bit < ((8 : GoUInt)), _bit++, {
				if (((_b >> _bit)) & ((1 : GoUInt8)) == ((1 : GoUInt8))) {
					return _bitLen;
				};
				_bitLen--;
			});
		};
	};
	return ((0 : GoInt));
}

/**
	// oidNotInExtensions reports whether an extension with the given oid exists in
	// extensions.
**/
function _oidInExtensions(_oid:stdgo.encoding.asn1.Asn1.ObjectIdentifier, _extensions:Slice<stdgo.crypto.x509.pkix.Pkix.Extension>):Bool {
	for (_ => _e in _extensions) {
		if (_e.id.equal(_oid.__copy__())) {
			return true;
		};
	};
	return false;
}

/**
	// marshalSANs marshals a list of addresses into a the contents of an X.509
	// SubjectAlternativeName extension.
**/
function _marshalSANs(_dnsNames:Slice<GoString>, _emailAddresses:Slice<GoString>, _ipAddresses:Slice<stdgo.net.Net.IP>,
		_uris:Slice<Pointer<stdgo.net.url.Url.URL>>):{var _0:Slice<GoByte>; var _1:Error;
} {
	var _derBytes:Slice<GoByte> = new Slice<GoUInt8>().nil(),
		_err:Error = ((null : stdgo.Error));
	var _rawValues:Slice<stdgo.encoding.asn1.Asn1.RawValue> = new Slice<stdgo.encoding.asn1.Asn1.RawValue>().nil();
	for (_ => _name in _dnsNames) {
		{
			var _err:stdgo.Error = _isIA5String(_name);
			if (_err != null) {
				return {_0: new Slice<GoUInt8>().nil(), _1: _err};
			};
		};
		_rawValues = _rawValues.__append__((({
			tag: _nameTypeDNS,
			class_: ((2 : GoInt)),
			bytes: ((_name : Slice<GoByte>)),
			isCompound: false,
			fullBytes: new Slice<GoUInt8>().nil()
		} : stdgo.encoding.asn1.Asn1.RawValue)).__copy__());
	};
	for (_ => _email in _emailAddresses) {
		{
			var _err:stdgo.Error = _isIA5String(_email);
			if (_err != null) {
				return {_0: new Slice<GoUInt8>().nil(), _1: _err};
			};
		};
		_rawValues = _rawValues.__append__((({
			tag: _nameTypeEmail,
			class_: ((2 : GoInt)),
			bytes: ((_email : Slice<GoByte>)),
			isCompound: false,
			fullBytes: new Slice<GoUInt8>().nil()
		} : stdgo.encoding.asn1.Asn1.RawValue)).__copy__());
	};
	for (_ => _rawIP in _ipAddresses) {
		var _ip:stdgo.net.Net.IP = _rawIP.to4().__copy__();
		if ((_ip.__t__ == null || _ip.__t__.isNil())) {
			_ip = _rawIP.__copy__();
		};
		_rawValues = _rawValues.__append__((({
			tag: _nameTypeIP,
			class_: ((2 : GoInt)),
			bytes: _ip.__copy__().__t__,
			isCompound: false,
			fullBytes: new Slice<GoUInt8>().nil()
		} : stdgo.encoding.asn1.Asn1.RawValue)).__copy__());
	};
	for (_ => _uri in _uris) {
		var _uriStr:GoString = _uri.value.toString();
		{
			var _err:stdgo.Error = _isIA5String(_uriStr);
			if (_err != null) {
				return {_0: new Slice<GoUInt8>().nil(), _1: _err};
			};
		};
		_rawValues = _rawValues.__append__((({
			tag: _nameTypeURI,
			class_: ((2 : GoInt)),
			bytes: ((_uriStr : Slice<GoByte>)),
			isCompound: false,
			fullBytes: new Slice<GoUInt8>().nil()
		} : stdgo.encoding.asn1.Asn1.RawValue)).__copy__());
	};
	return stdgo.encoding.asn1.Asn1.marshal(Go.toInterface(_rawValues));
}

function _isIA5String(_s:GoString):Error {
	for (_ => _r in _s) {
		if (_r > stdgo.unicode.Unicode.maxASCII) {
			return stdgo.fmt.Fmt.errorf("x509: %q cannot be encoded as an IA5String", Go.toInterface(_s));
		};
	};
	return ((null : stdgo.Error));
}

function _buildCertExtensions(_template:Pointer<Certificate>, _subjectIsEmpty:Bool, _authorityKeyId:Slice<GoByte>,
		_subjectKeyId:Slice<GoByte>):{var _0:Slice<stdgo.crypto.x509.pkix.Pkix.Extension>; var _1:Error;} {
	var _ret:Slice<stdgo.crypto.x509.pkix.Pkix.Extension> = new Slice<stdgo.crypto.x509.pkix.Pkix.Extension>().nil(),
		_err:Error = ((null : stdgo.Error));
	_ret = new Slice<stdgo.crypto.x509.pkix.Pkix.Extension>(...[
		for (i in 0...((((10 : GoInt)) : GoInt)).toBasic()) new stdgo.crypto.x509.pkix.Pkix.Extension()
	]);
	var _n:GoInt = ((0 : GoInt));
	if (_template.value.keyUsage.__t__ != ((0 : GoInt))
		&& !_oidInExtensions(new stdgo.encoding.asn1.Asn1.ObjectIdentifier(_oidExtensionKeyUsage), _template.value.extraExtensions)) {
		{
			var __tmp__ = _marshalKeyUsage(_template.value.keyUsage);
			_ret[_n] = __tmp__._0.__copy__();
			_err = __tmp__._1;
		};
		if (_err != null) {
			return {_0: new Slice<stdgo.crypto.x509.pkix.Pkix.Extension>().nil(), _1: _err};
		};
		_n++;
	};
	if ((_template.value.extKeyUsage.length > ((0 : GoInt)) || _template.value.unknownExtKeyUsage.length > ((0 : GoInt)))
		&& !_oidInExtensions(new stdgo.encoding.asn1.Asn1.ObjectIdentifier(_oidExtensionExtendedKeyUsage), _template.value.extraExtensions)) {
		{
			var __tmp__ = _marshalExtKeyUsage(_template.value.extKeyUsage, _template.value.unknownExtKeyUsage);
			_ret[_n] = __tmp__._0.__copy__();
			_err = __tmp__._1;
		};
		if (_err != null) {
			return {_0: new Slice<stdgo.crypto.x509.pkix.Pkix.Extension>().nil(), _1: _err};
		};
		_n++;
	};
	if (_template.value.basicConstraintsValid
		&& !_oidInExtensions(new stdgo.encoding.asn1.Asn1.ObjectIdentifier(_oidExtensionBasicConstraints), _template.value.extraExtensions)) {
		{
			var __tmp__ = _marshalBasicConstraints(_template.value.isCA, _template.value.maxPathLen, _template.value.maxPathLenZero);
			_ret[_n] = __tmp__._0.__copy__();
			_err = __tmp__._1;
		};
		if (_err != null) {
			return {_0: new Slice<stdgo.crypto.x509.pkix.Pkix.Extension>().nil(), _1: _err};
		};
		_n++;
	};
	if (_subjectKeyId.length > ((0 : GoInt))
		&& !_oidInExtensions(new stdgo.encoding.asn1.Asn1.ObjectIdentifier(_oidExtensionSubjectKeyId), _template.value.extraExtensions)) {
		_ret[_n].id = new stdgo.encoding.asn1.Asn1.ObjectIdentifier(_oidExtensionSubjectKeyId);
		{
			var __tmp__ = stdgo.encoding.asn1.Asn1.marshal(Go.toInterface(_subjectKeyId));
			_ret[_n].value = __tmp__._0;
			_err = __tmp__._1;
		};
		if (_err != null) {
			return {_0: _ret, _1: _err};
		};
		_n++;
	};
	if (_authorityKeyId.length > ((0 : GoInt))
		&& !_oidInExtensions(new stdgo.encoding.asn1.Asn1.ObjectIdentifier(_oidExtensionAuthorityKeyId), _template.value.extraExtensions)) {
		_ret[_n].id = new stdgo.encoding.asn1.Asn1.ObjectIdentifier(_oidExtensionAuthorityKeyId);
		{
			var __tmp__ = stdgo.encoding.asn1.Asn1.marshal(Go.toInterface(new T_authKeyId(_authorityKeyId).__copy__()));
			_ret[_n].value = __tmp__._0;
			_err = __tmp__._1;
		};
		if (_err != null) {
			return {_0: _ret, _1: _err};
		};
		_n++;
	};
	if ((_template.value.ocspserver.length > ((0 : GoInt)) || _template.value.issuingCertificateURL.length > ((0 : GoInt)))
		&& !_oidInExtensions(new stdgo.encoding.asn1.Asn1.ObjectIdentifier(_oidExtensionAuthorityInfoAccess), _template.value.extraExtensions)) {
		_ret[_n].id = new stdgo.encoding.asn1.Asn1.ObjectIdentifier(_oidExtensionAuthorityInfoAccess);
		var _aiaValues:Slice<T_authorityInfoAccess> = new Slice<T_authorityInfoAccess>().nil();
		for (_ => _name in _template.value.ocspserver) {
			_aiaValues = _aiaValues.__append__((({method: _oidAuthorityInfoAccessOcsp.__copy__(), location: (({
				tag: ((6 : GoInt)),
				class_: ((2 : GoInt)),
				bytes: ((_name : Slice<GoByte>)),
				isCompound: false,
				fullBytes: new Slice<GoUInt8>().nil()
			} : stdgo.encoding.asn1.Asn1.RawValue)).__copy__()} : T_authorityInfoAccess)).__copy__());
		};
		for (_ => _name in _template.value.issuingCertificateURL) {
			_aiaValues = _aiaValues.__append__((({method: _oidAuthorityInfoAccessIssuers.__copy__(), location: (({
				tag: ((6 : GoInt)),
				class_: ((2 : GoInt)),
				bytes: ((_name : Slice<GoByte>)),
				isCompound: false,
				fullBytes: new Slice<GoUInt8>().nil()
			} : stdgo.encoding.asn1.Asn1.RawValue)).__copy__()} : T_authorityInfoAccess)).__copy__());
		};
		{
			var __tmp__ = stdgo.encoding.asn1.Asn1.marshal(Go.toInterface(_aiaValues));
			_ret[_n].value = __tmp__._0;
			_err = __tmp__._1;
		};
		if (_err != null) {
			return {_0: _ret, _1: _err};
		};
		_n++;
	};
	if ((_template.value.dnsnames.length > ((0 : GoInt))
		|| _template.value.emailAddresses.length > ((0 : GoInt))
		|| _template.value.ipaddresses.length > ((0 : GoInt))
		|| _template.value.uris.length > ((0 : GoInt)))
		&& !_oidInExtensions(new stdgo.encoding.asn1.Asn1.ObjectIdentifier(_oidExtensionSubjectAltName), _template.value.extraExtensions)) {
		_ret[_n].id = new stdgo.encoding.asn1.Asn1.ObjectIdentifier(_oidExtensionSubjectAltName);
		_ret[_n].critical = _subjectIsEmpty;
		{
			var __tmp__ = _marshalSANs(_template.value.dnsnames, _template.value.emailAddresses, _template.value.ipaddresses, _template.value.uris);
			_ret[_n].value = __tmp__._0;
			_err = __tmp__._1;
		};
		if (_err != null) {
			return {_0: _ret, _1: _err};
		};
		_n++;
	};
	if (_template.value.policyIdentifiers.length > ((0 : GoInt))
		&& !_oidInExtensions(new stdgo.encoding.asn1.Asn1.ObjectIdentifier(_oidExtensionCertificatePolicies), _template.value.extraExtensions)) {
		{
			var __tmp__ = _marshalCertificatePolicies(_template.value.policyIdentifiers);
			_ret[_n] = __tmp__._0.__copy__();
			_err = __tmp__._1;
		};
		if (_err != null) {
			return {_0: new Slice<stdgo.crypto.x509.pkix.Pkix.Extension>().nil(), _1: _err};
		};
		_n++;
	};
	if ((_template.value.permittedDNSDomains.length > ((0 : GoInt))
		|| _template.value.excludedDNSDomains.length > ((0 : GoInt))
		|| _template.value.permittedIPRanges.length > ((0 : GoInt))
		|| _template.value.excludedIPRanges.length > ((0 : GoInt))
		|| _template.value.permittedEmailAddresses.length > ((0 : GoInt))
		|| _template.value.excludedEmailAddresses.length > ((0 : GoInt))
		|| _template.value.permittedURIDomains.length > ((0 : GoInt))
		|| _template.value.excludedURIDomains.length > ((0 : GoInt)))
		&& !_oidInExtensions(new stdgo.encoding.asn1.Asn1.ObjectIdentifier(_oidExtensionNameConstraints), _template.value.extraExtensions)) {
		_ret[_n].id = new stdgo.encoding.asn1.Asn1.ObjectIdentifier(_oidExtensionNameConstraints);
		_ret[_n].critical = _template.value.permittedDNSDomainsCritical;
		var _ipAndMask:Pointer<stdgo.net.Net.IPNet>->Slice<GoUInt8> = function(_ipNet:Pointer<stdgo.net.Net.IPNet>):Slice<GoByte> {
			var _maskedIP:stdgo.net.Net.IP = _ipNet.value.ip.mask(_ipNet.value.mask.__copy__()).__copy__();
			var _ipAndMask:Slice<GoUInt8> = new Slice<GoUInt8>(...[for (i in 0...((((0 : GoInt)) : GoInt)).toBasic()) ((0 : GoUInt8))])
				.setCap(((_maskedIP.__t__.length
				+ _ipNet.value.mask.__t__.length:GoInt)).toBasic());
			_ipAndMask = _ipAndMask.__append__(..._maskedIP.__t__.toArray());
			_ipAndMask = _ipAndMask.__append__(..._ipNet.value.mask.__t__.toArray());
			return _ipAndMask;
		};
		var _serialiseConstraints:(Slice<GoString>, Slice<Pointer<stdgo.net.Net.IPNet>>, Slice<GoString>, Slice<GoString>) -> {
			var _0:Slice<GoUInt8>;
			var _1:stdgo.Error;
		} = function(_dns:Slice<GoString>, _ips:Slice<Pointer<stdgo.net.Net.IPNet>>, _emails:Slice<GoString>,
				_uriDomains:Slice<GoString>):{var _0:Slice<GoByte>; var _1:Error;} {
				var _der:Slice<GoByte> = new Slice<GoUInt8>().nil(), _err:Error = ((null : stdgo.Error));
				var _b:golang_org.x.crypto.cryptobyte.Cryptobyte.Builder = new vendor.golang_org.x.crypto.cryptobyte.Cryptobyte.Builder();
				for (_ => _name in _dns) {
					{
						_err = _isIA5String(_name);
						if (_err != null) {
							return {_0: new Slice<GoUInt8>().nil(), _1: _err};
						};
					};
					_b.addASN1(golang_org.x.crypto.cryptobyte.asn1.Asn1.sequence,
						new vendor.golang_org.x.crypto.cryptobyte.Cryptobyte.BuilderContinuation(function(_b:Pointer<golang_org.x.crypto.cryptobyte.Cryptobyte.Builder>):Void {
							_b.value.addASN1(new golang_org.x.crypto.cryptobyte.asn1.Asn1.Tag(((2 : GoUInt8))).contextSpecific(),
								new vendor.golang_org.x.crypto.cryptobyte.Cryptobyte.BuilderContinuation(function(_b:Pointer<golang_org.x.crypto.cryptobyte.Cryptobyte.Builder>):Void {
									_b.value.addBytes(((_name : Slice<GoByte>)));
								}));
						}));
				};
				for (_ => _ipNet in _ips) {
					_b.addASN1(golang_org.x.crypto.cryptobyte.asn1.Asn1.sequence,
						new vendor.golang_org.x.crypto.cryptobyte.Cryptobyte.BuilderContinuation(function(_b:Pointer<golang_org.x.crypto.cryptobyte.Cryptobyte.Builder>):Void {
							_b.value.addASN1(new golang_org.x.crypto.cryptobyte.asn1.Asn1.Tag(((7 : GoUInt8))).contextSpecific(),
								new vendor.golang_org.x.crypto.cryptobyte.Cryptobyte.BuilderContinuation(function(_b:Pointer<golang_org.x.crypto.cryptobyte.Cryptobyte.Builder>):Void {
									_b.value.addBytes(_ipAndMask(_ipNet));
								}));
						}));
				};
				for (_ => _email in _emails) {
					{
						_err = _isIA5String(_email);
						if (_err != null) {
							return {_0: new Slice<GoUInt8>().nil(), _1: _err};
						};
					};
					_b.addASN1(golang_org.x.crypto.cryptobyte.asn1.Asn1.sequence,
						new vendor.golang_org.x.crypto.cryptobyte.Cryptobyte.BuilderContinuation(function(_b:Pointer<golang_org.x.crypto.cryptobyte.Cryptobyte.Builder>):Void {
							_b.value.addASN1(new golang_org.x.crypto.cryptobyte.asn1.Asn1.Tag(((1 : GoUInt8))).contextSpecific(),
								new vendor.golang_org.x.crypto.cryptobyte.Cryptobyte.BuilderContinuation(function(_b:Pointer<golang_org.x.crypto.cryptobyte.Cryptobyte.Builder>):Void {
									_b.value.addBytes(((_email : Slice<GoByte>)));
								}));
						}));
				};
				for (_ => _uriDomain in _uriDomains) {
					{
						_err = _isIA5String(_uriDomain);
						if (_err != null) {
							return {_0: new Slice<GoUInt8>().nil(), _1: _err};
						};
					};
					_b.addASN1(golang_org.x.crypto.cryptobyte.asn1.Asn1.sequence,
						new vendor.golang_org.x.crypto.cryptobyte.Cryptobyte.BuilderContinuation(function(_b:Pointer<golang_org.x.crypto.cryptobyte.Cryptobyte.Builder>):Void {
							_b.value.addASN1(new golang_org.x.crypto.cryptobyte.asn1.Asn1.Tag(((6 : GoUInt8))).contextSpecific(),
								new vendor.golang_org.x.crypto.cryptobyte.Cryptobyte.BuilderContinuation(function(_b:Pointer<golang_org.x.crypto.cryptobyte.Cryptobyte.Builder>):Void {
									_b.value.addBytes(((_uriDomain : Slice<GoByte>)));
								}));
						}));
				};
				return _b.bytes();
			};
		var __tmp__ = _serialiseConstraints(_template.value.permittedDNSDomains, _template.value.permittedIPRanges, _template.value.permittedEmailAddresses,
			_template.value.permittedURIDomains),
			_permitted:Slice<GoUInt8> = __tmp__._0,
			_err:stdgo.Error = __tmp__._1;
		if (_err != null) {
			return {_0: new Slice<stdgo.crypto.x509.pkix.Pkix.Extension>().nil(), _1: _err};
		};
		var __tmp__ = _serialiseConstraints(_template.value.excludedDNSDomains, _template.value.excludedIPRanges, _template.value.excludedEmailAddresses,
			_template.value.excludedURIDomains),
			_excluded:Slice<GoUInt8> = __tmp__._0,
			_err:stdgo.Error = __tmp__._1;
		if (_err != null) {
			return {_0: new Slice<stdgo.crypto.x509.pkix.Pkix.Extension>().nil(), _1: _err};
		};
		var _b:golang_org.x.crypto.cryptobyte.Cryptobyte.Builder = new vendor.golang_org.x.crypto.cryptobyte.Cryptobyte.Builder();
		_b.addASN1(golang_org.x.crypto.cryptobyte.asn1.Asn1.sequence,
			new vendor.golang_org.x.crypto.cryptobyte.Cryptobyte.BuilderContinuation(function(_b:Pointer<golang_org.x.crypto.cryptobyte.Cryptobyte.Builder>):Void {
				if (_permitted.length > ((0 : GoInt))) {
					_b.value.addASN1(new golang_org.x.crypto.cryptobyte.asn1.Asn1.Tag(((0 : GoUInt8))).contextSpecific().constructed(),
						new vendor.golang_org.x.crypto.cryptobyte.Cryptobyte.BuilderContinuation(function(_b:Pointer<golang_org.x.crypto.cryptobyte.Cryptobyte.Builder>):Void {
							_b.value.addBytes(_permitted);
						}));
				};
				if (_excluded.length > ((0 : GoInt))) {
					_b.value.addASN1(new golang_org.x.crypto.cryptobyte.asn1.Asn1.Tag(((1 : GoUInt8))).contextSpecific().constructed(),
						new vendor.golang_org.x.crypto.cryptobyte.Cryptobyte.BuilderContinuation(function(_b:Pointer<golang_org.x.crypto.cryptobyte.Cryptobyte.Builder>):Void {
							_b.value.addBytes(_excluded);
						}));
				};
			}));
		{
			var __tmp__ = _b.bytes();
			_ret[_n].value = __tmp__._0;
			_err = __tmp__._1;
		};
		if (_err != null) {
			return {_0: new Slice<stdgo.crypto.x509.pkix.Pkix.Extension>().nil(), _1: _err};
		};
		_n++;
	};
	if (_template.value.crldistributionPoints.length > ((0 : GoInt))
		&& !_oidInExtensions(new stdgo.encoding.asn1.Asn1.ObjectIdentifier(_oidExtensionCRLDistributionPoints), _template.value.extraExtensions)) {
		_ret[_n].id = new stdgo.encoding.asn1.Asn1.ObjectIdentifier(_oidExtensionCRLDistributionPoints);
		var _crlDp:Slice<T_distributionPoint> = new Slice<T_distributionPoint>().nil();
		for (_ => _name in _template.value.crldistributionPoints) {
			var _dp:T_distributionPoint = (({distributionPoint: (({fullName: new Slice<stdgo.encoding.asn1.Asn1.RawValue>((({
				tag: ((6 : GoInt)),
				class_: ((2 : GoInt)),
				bytes: ((_name : Slice<GoByte>)),
				isCompound: false,
				fullBytes: new Slice<GoUInt8>().nil()
			} : stdgo.encoding.asn1.Asn1.RawValue)).__copy__()), relativeName: new stdgo.crypto.x509.pkix.Pkix.RDNSequence()} : T_distributionPointName))
				.__copy__(), reason: new stdgo.encoding.asn1.Asn1.BitString(), crlissuer: new stdgo.encoding.asn1.Asn1.RawValue()} : T_distributionPoint))
				.__copy__();
			_crlDp = _crlDp.__append__(_dp.__copy__());
		};
		{
			var __tmp__ = stdgo.encoding.asn1.Asn1.marshal(Go.toInterface(_crlDp));
			_ret[_n].value = __tmp__._0;
			_err = __tmp__._1;
		};
		if (_err != null) {
			return {_0: _ret, _1: _err};
		};
		_n++;
	};
	return {_0: _ret.__slice__(0, _n).__append__(..._template.value.extraExtensions.toArray()), _1: ((null : stdgo.Error))};
}

function _marshalKeyUsage(_ku:KeyUsage):{var _0:stdgo.crypto.x509.pkix.Pkix.Extension; var _1:Error;} {
	var _ext:stdgo.crypto.x509.pkix.Pkix.Extension = (({id: new stdgo.encoding.asn1.Asn1.ObjectIdentifier(_oidExtensionKeyUsage), critical: true,
		value: new Slice<GoUInt8>().nil()} : stdgo.crypto.x509.pkix.Pkix.Extension)).__copy__();
	var _a:GoArray<GoByte> = new GoArray<GoUInt8>(...[for (i in 0...2) ((0 : GoUInt8))]);
	_a[((0 : GoInt))] = _reverseBitsInAByte(_ku.__t__);
	_a[((1 : GoInt))] = _reverseBitsInAByte((new KeyUsage(_ku.__t__ >> ((8 : GoUnTypedInt)))).__t__);
	var _l:GoInt = ((1 : GoInt));
	if (_a[((1 : GoInt))] != ((0 : GoUInt8))) {
		_l = ((2 : GoInt));
	};
	var _bitString:Slice<GoUInt8> = _a.__slice__(0, _l);
	var _err:Error = ((null : stdgo.Error));
	{
		var __tmp__ = stdgo.encoding.asn1.Asn1.marshal(Go.toInterface((({bytes: _bitString,
			bitLength: _asn1BitLength(_bitString)} : stdgo.encoding.asn1.Asn1.BitString)).__copy__()));
		_ext.value = __tmp__._0;
		_err = __tmp__._1;
	};
	if (_err != null) {
		return {_0: _ext.__copy__(), _1: _err};
	};
	return {_0: _ext.__copy__(), _1: ((null : stdgo.Error))};
}

function _marshalExtKeyUsage(_extUsages:Slice<ExtKeyUsage>,
		_unknownUsages:Slice<stdgo.encoding.asn1.Asn1.ObjectIdentifier>):{var _0:stdgo.crypto.x509.pkix.Pkix.Extension; var _1:Error;} {
	var _ext:stdgo.crypto.x509.pkix.Pkix.Extension = (({id: new stdgo.encoding.asn1.Asn1.ObjectIdentifier(_oidExtensionExtendedKeyUsage), critical: false,
		value: new Slice<GoUInt8>().nil()} : stdgo.crypto.x509.pkix.Pkix.Extension)).__copy__();
	var _oids:Slice<stdgo.encoding.asn1.Asn1.ObjectIdentifier> = new Slice<stdgo.encoding.asn1.Asn1.ObjectIdentifier>(...[
		for (i in 0...((_extUsages.length + _unknownUsages.length:GoInt)).toBasic()) new stdgo.encoding.asn1.Asn1.ObjectIdentifier()
	]);
	for (_i => _u in _extUsages) {
		{
			var __tmp__ = _oidFromExtKeyUsage(_u),
				_oid:stdgo.encoding.asn1.Asn1.ObjectIdentifier = __tmp__._0,
				_ok:Bool = __tmp__._1;
			if (_ok) {
				_oids[_i] = _oid.__copy__();
			} else {
				return {_0: _ext.__copy__(), _1: stdgo.errors.Errors.new_("x509: unknown extended key usage")};
			};
		};
	};
	Go.copy(_oids.__slice__(_extUsages.length), _unknownUsages);
	var _err:Error = ((null : stdgo.Error));
	{
		var __tmp__ = stdgo.encoding.asn1.Asn1.marshal(Go.toInterface(_oids));
		_ext.value = __tmp__._0;
		_err = __tmp__._1;
	};
	if (_err != null) {
		return {_0: _ext.__copy__(), _1: _err};
	};
	return {_0: _ext.__copy__(), _1: ((null : stdgo.Error))};
}

function _marshalBasicConstraints(_isCA:Bool, _maxPathLen:GoInt, _maxPathLenZero:Bool):{var _0:stdgo.crypto.x509.pkix.Pkix.Extension; var _1:Error;} {
	var _ext:stdgo.crypto.x509.pkix.Pkix.Extension = (({id: new stdgo.encoding.asn1.Asn1.ObjectIdentifier(_oidExtensionBasicConstraints), critical: true,
		value: new Slice<GoUInt8>().nil()} : stdgo.crypto.x509.pkix.Pkix.Extension)).__copy__();
	if (_maxPathLen == ((0 : GoInt)) && !_maxPathLenZero) {
		_maxPathLen = -((1 : GoUnTypedInt));
	};
	var _err:Error = ((null : stdgo.Error));
	{
		var __tmp__ = stdgo.encoding.asn1.Asn1.marshal(Go.toInterface(new T_basicConstraints(_isCA, _maxPathLen).__copy__()));
		_ext.value = __tmp__._0;
		_err = __tmp__._1;
	};
	if (_err != null) {
		return {_0: _ext.__copy__(), _1: ((null : stdgo.Error))};
	};
	return {_0: _ext.__copy__(), _1: ((null : stdgo.Error))};
}

function _marshalCertificatePolicies(_policyIdentifiers:Slice<stdgo.encoding.asn1.Asn1.ObjectIdentifier>):{var _0:stdgo.crypto.x509.pkix.Pkix.Extension; var _1:Error;} {
	var _ext:stdgo.crypto.x509.pkix.Pkix.Extension = (({id: new stdgo.encoding.asn1.Asn1.ObjectIdentifier(_oidExtensionCertificatePolicies), critical: false,
		value: new Slice<GoUInt8>().nil()} : stdgo.crypto.x509.pkix.Pkix.Extension)).__copy__();
	var _policies:Slice<T_policyInformation> = new Slice<T_policyInformation>(...[
		for (i in 0...((_policyIdentifiers.length : GoInt)).toBasic()) new T_policyInformation()
	]);
	for (_i => _policy in _policyIdentifiers) {
		_policies[_i].policy = _policy.__copy__();
	};
	var _err:Error = ((null : stdgo.Error));
	{
		var __tmp__ = stdgo.encoding.asn1.Asn1.marshal(Go.toInterface(_policies));
		_ext.value = __tmp__._0;
		_err = __tmp__._1;
	};
	if (_err != null) {
		return {_0: _ext.__copy__(), _1: _err};
	};
	return {_0: _ext.__copy__(), _1: ((null : stdgo.Error))};
}

function _buildCSRExtensions(_template:Pointer<CertificateRequest>):{var _0:Slice<stdgo.crypto.x509.pkix.Pkix.Extension>; var _1:Error;} {
	var _ret:Slice<stdgo.crypto.x509.pkix.Pkix.Extension> = new Slice<stdgo.crypto.x509.pkix.Pkix.Extension>().nil();
	if ((_template.value.dnsnames.length > ((0 : GoInt))
		|| _template.value.emailAddresses.length > ((0 : GoInt))
		|| _template.value.ipaddresses.length > ((0 : GoInt))
		|| _template.value.uris.length > ((0 : GoInt)))
		&& !_oidInExtensions(new stdgo.encoding.asn1.Asn1.ObjectIdentifier(_oidExtensionSubjectAltName), _template.value.extraExtensions)) {
		var __tmp__ = _marshalSANs(_template.value.dnsnames, _template.value.emailAddresses, _template.value.ipaddresses, _template.value.uris),
			_sanBytes:Slice<GoUInt8> = __tmp__._0,
			_err:stdgo.Error = __tmp__._1;
		if (_err != null) {
			return {_0: new Slice<stdgo.crypto.x509.pkix.Pkix.Extension>().nil(), _1: _err};
		};
		_ret = _ret.__append__((({id: new stdgo.encoding.asn1.Asn1.ObjectIdentifier(_oidExtensionSubjectAltName), value: _sanBytes,
			critical: false} : stdgo.crypto.x509.pkix.Pkix.Extension)).__copy__());
	};
	return {_0: _ret.__append__(..._template.value.extraExtensions.toArray()), _1: ((null : stdgo.Error))};
}

function _subjectBytes(_cert:Pointer<Certificate>):{var _0:Slice<GoByte>; var _1:Error;} {
	if (_cert.value.rawSubject.length > ((0 : GoInt))) {
		return {_0: _cert.value.rawSubject, _1: ((null : stdgo.Error))};
	};
	return stdgo.encoding.asn1.Asn1.marshal(Go.toInterface(_cert.value.subject.toRDNSequence().__copy__()));
}

/**
	// signingParamsForPublicKey returns the parameters to use for signing with
	// priv. If requestedSigAlgo is not zero then it overrides the default
	// signature algorithm.
**/
function _signingParamsForPublicKey(_pub:AnyInterface,
		_requestedSigAlgo:SignatureAlgorithm):{var _0:stdgo.crypto.Crypto.Hash; var _1:stdgo.crypto.x509.pkix.Pkix.AlgorithmIdentifier; var _2:Error;} {
	var _hashFunc:stdgo.crypto.Crypto.Hash = new stdgo.crypto.Crypto.Hash(),
		_sigAlgo:stdgo.crypto.x509.pkix.Pkix.AlgorithmIdentifier = new stdgo.crypto.x509.pkix.Pkix.AlgorithmIdentifier(),
		_err:Error = ((null : stdgo.Error));
	var _pubType:PublicKeyAlgorithm = new PublicKeyAlgorithm();
	if (Go.assertable(((_pub : Pointer<stdgo.crypto.rsa.Rsa.PublicKey>)))) {
		var _pub:Pointer<stdgo.crypto.rsa.Rsa.PublicKey> = _pub == null ? null : _pub.__underlying__() == null ? null : _pub == null ? null : _pub.__underlying__()
			.value;
		_pubType = rsa;
		_hashFunc = stdgo.crypto.Crypto.sha256;
		_sigAlgo.algorithm = _oidSignatureSHA256WithRSA.__copy__();
		_sigAlgo.parameters = stdgo.encoding.asn1.Asn1.nullRawValue.__copy__();
	} else if (Go.assertable(((_pub : Pointer<stdgo.crypto.ecdsa.Ecdsa.PublicKey>)))) {
		var _pub:Pointer<stdgo.crypto.ecdsa.Ecdsa.PublicKey> = _pub == null ? null : _pub.__underlying__() == null ? null : _pub == null ? null : _pub.__underlying__()
			.value;
		_pubType = ecdsa;
		if (Go.toInterface(_pub.value.curve) == Go.toInterface(stdgo.crypto.elliptic.Elliptic.p224())
			|| Go.toInterface(_pub.value.curve) == Go.toInterface(stdgo.crypto.elliptic.Elliptic.p256())) {
			_hashFunc = stdgo.crypto.Crypto.sha256;
			_sigAlgo.algorithm = _oidSignatureECDSAWithSHA256.__copy__();
		} else if (Go.toInterface(_pub.value.curve) == Go.toInterface(stdgo.crypto.elliptic.Elliptic.p384())) {
			_hashFunc = stdgo.crypto.Crypto.sha384;
			_sigAlgo.algorithm = _oidSignatureECDSAWithSHA384.__copy__();
		} else if (Go.toInterface(_pub.value.curve) == Go.toInterface(stdgo.crypto.elliptic.Elliptic.p521())) {
			_hashFunc = stdgo.crypto.Crypto.sha512;
			_sigAlgo.algorithm = _oidSignatureECDSAWithSHA512.__copy__();
		} else {
			_err = stdgo.errors.Errors.new_("x509: unknown elliptic curve");
		};
	} else if (Go.assertable(((_pub : stdgo.crypto.ed25519.Ed25519.PublicKey)))) {
		var _pub:stdgo.crypto.ed25519.Ed25519.PublicKey = _pub == null ? null : _pub.__underlying__() == null ? null : _pub == null ? null : _pub.__underlying__()
			.value;
		_pubType = ed25519;
		_sigAlgo.algorithm = _oidSignatureEd25519.__copy__();
	} else {
		var _pub:AnyInterface = _pub == null ? null : _pub.__underlying__();
		_err = stdgo.errors.Errors.new_("x509: only RSA, ECDSA and Ed25519 keys supported");
	};
	if (_err != null) {
		return {_0: _hashFunc, _1: _sigAlgo, _2: _err};
	};
	if (_requestedSigAlgo.__t__ == ((0 : GoInt))) {
		return {_0: _hashFunc, _1: _sigAlgo, _2: _err};
	};
	var _found:Bool = false;
	for (_ => _details in _signatureAlgorithmDetails) {
		if (_details._algo.__t__ == _requestedSigAlgo.__t__) {
			if (_details._pubKeyAlgo.__t__ != _pubType.__t__) {
				_err = stdgo.errors.Errors.new_("x509: requested SignatureAlgorithm does not match private key type");
				return {_0: _hashFunc, _1: _sigAlgo, _2: _err};
			};
			{
				final __tmp__0 = _details._oid.__copy__();
				final __tmp__1 = _details._hash;
				_sigAlgo.algorithm = __tmp__0;
				_hashFunc = __tmp__1;
			};
			if (_hashFunc.__t__ == ((0 : GoUInt)) && _pubType.__t__ != ed25519.__t__) {
				_err = stdgo.errors.Errors.new_("x509: cannot sign with hash function requested");
				return {_0: _hashFunc, _1: _sigAlgo, _2: _err};
			};
			if (_requestedSigAlgo._isRSAPSS()) {
				_sigAlgo.parameters = _hashToPSSParameters[_hashFunc].__copy__();
			};
			_found = true;
			break;
		};
	};
	if (!_found) {
		_err = stdgo.errors.Errors.new_("x509: unknown SignatureAlgorithm");
	};
	return {_0: _hashFunc, _1: _sigAlgo, _2: _err};
}

typedef T_privateKey_createCertificate_0 = StructType & {
	public function equal(_0:stdgo.crypto.Crypto.PublicKey):Bool;
};

/**
	// CreateCertificate creates a new X.509 v3 certificate based on a template.
	// The following members of template are currently used:
	//
	//  - AuthorityKeyId
	//  - BasicConstraintsValid
	//  - CRLDistributionPoints
	//  - DNSNames
	//  - EmailAddresses
	//  - ExcludedDNSDomains
	//  - ExcludedEmailAddresses
	//  - ExcludedIPRanges
	//  - ExcludedURIDomains
	//  - ExtKeyUsage
	//  - ExtraExtensions
	//  - IPAddresses
	//  - IsCA
	//  - IssuingCertificateURL
	//  - KeyUsage
	//  - MaxPathLen
	//  - MaxPathLenZero
	//  - NotAfter
	//  - NotBefore
	//  - OCSPServer
	//  - PermittedDNSDomains
	//  - PermittedDNSDomainsCritical
	//  - PermittedEmailAddresses
	//  - PermittedIPRanges
	//  - PermittedURIDomains
	//  - PolicyIdentifiers
	//  - SerialNumber
	//  - SignatureAlgorithm
	//  - Subject
	//  - SubjectKeyId
	//  - URIs
	//  - UnknownExtKeyUsage
	//
	// The certificate is signed by parent. If parent is equal to template then the
	// certificate is self-signed. The parameter pub is the public key of the
	// certificate to be generated and priv is the private key of the signer.
	//
	// The returned slice is the certificate in DER encoding.
	//
	// The currently supported key types are *rsa.PublicKey, *ecdsa.PublicKey and
	// ed25519.PublicKey. pub must be a supported key type, and priv must be a
	// crypto.Signer with a supported public key.
	//
	// The AuthorityKeyId will be taken from the SubjectKeyId of parent, if any,
	// unless the resulting certificate is self-signed. Otherwise the value from
	// template will be used.
	//
	// If SubjectKeyId from template is empty and the template is a CA, SubjectKeyId
	// will be generated from the hash of the public key.
**/
function createCertificate(_rand:stdgo.io.Io.Reader, _template:Pointer<Certificate>, _parent:Pointer<Certificate>, _pub:AnyInterface,
		_priv:AnyInterface):{var _0:Slice<GoByte>; var _1:Error;} {
	var __tmp__ = try {
		{value: ((_priv.value : stdgo.crypto.Crypto.Signer)), ok: true};
	} catch (_) {
		{value: ((null : stdgo.crypto.Crypto.Signer)), ok: false};
	}, _key = __tmp__.value, _ok = __tmp__.ok;
	if (!_ok) {
		return {_0: new Slice<GoUInt8>().nil(), _1: stdgo.errors.Errors.new_("x509: certificate private key does not implement crypto.Signer")};
	};
	if ((_template.value.serialNumber == null || _template.value.serialNumber.isNil())) {
		return {_0: new Slice<GoUInt8>().nil(), _1: stdgo.errors.Errors.new_("x509: no SerialNumber given")};
	};
	if (_template.value.basicConstraintsValid
		&& !_template.value.isCA
		&& _template.value.maxPathLen != -((1 : GoUnTypedInt))
		&& (_template.value.maxPathLen != ((0 : GoInt)) || _template.value.maxPathLenZero)) {
		return {_0: new Slice<GoUInt8>().nil(), _1: stdgo.errors.Errors.new_("x509: only CAs are allowed to specify MaxPathLen")};
	};
	var __tmp__ = _signingParamsForPublicKey(Go.toInterface(_key.public_()), _template.value.signatureAlgorithm),
		_hashFunc:stdgo.crypto.Crypto.Hash = __tmp__._0,
		_signatureAlgorithm:stdgo.crypto.x509.pkix.Pkix.AlgorithmIdentifier = __tmp__._1,
		_err:stdgo.Error = __tmp__._2;
	if (_err != null) {
		return {_0: new Slice<GoUInt8>().nil(), _1: _err};
	};
	var __tmp__ = _marshalPublicKey(Go.toInterface(_pub)),
		_publicKeyBytes:Slice<GoUInt8> = __tmp__._0,
		_publicKeyAlgorithm:stdgo.crypto.x509.pkix.Pkix.AlgorithmIdentifier = __tmp__._1,
		_err:stdgo.Error = __tmp__._2;
	if (_err != null) {
		return {_0: new Slice<GoUInt8>().nil(), _1: _err};
	};
	var __tmp__ = _subjectBytes(_parent),
		_asn1Issuer:Slice<GoUInt8> = __tmp__._0,
		_err:stdgo.Error = __tmp__._1;
	if (_err != null) {
		return {_0: new Slice<GoUInt8>().nil(), _1: _err};
	};
	var __tmp__ = _subjectBytes(_template),
		_asn1Subject:Slice<GoUInt8> = __tmp__._0,
		_err:stdgo.Error = __tmp__._1;
	if (_err != null) {
		return {_0: new Slice<GoUInt8>().nil(), _1: _err};
	};
	var _authorityKeyId:Slice<GoUInt8> = _template.value.authorityKeyId;
	if (!stdgo.bytes.Bytes.equal(_asn1Issuer, _asn1Subject) && _parent.value.subjectKeyId.length > ((0 : GoInt))) {
		_authorityKeyId = _parent.value.subjectKeyId;
	};
	var _subjectKeyId:Slice<GoUInt8> = _template.value.subjectKeyId;
	if (_subjectKeyId.length == ((0 : GoInt)) && _template.value.isCA) {
		var _h:GoArray<GoUInt8> = stdgo.crypto.sha1.Sha1.sum(_publicKeyBytes).copy();
		_subjectKeyId = _h.__slice__(0);
	};
	{};
	{
		var __tmp__ = try {
			{value: ((_key.public_().value : T_privateKey_createCertificate_0)), ok: true};
		} catch (_) {
			{value: ((null : T_privateKey_createCertificate_0)), ok: false};
		}, _privPub = __tmp__.value, _ok = __tmp__.ok;
		if (!_ok) {
			return {_0: new Slice<GoUInt8>().nil(), _1: stdgo.errors.Errors.new_("x509: internal error: supported public key does not implement Equal")};
		} else if (_parent.value.publicKey != null && !_privPub.equal(Go.toInterface(_parent.value.publicKey))) {
			return {_0: new Slice<GoUInt8>().nil(), _1: stdgo.errors.Errors.new_("x509: provided PrivateKey doesn\'t match parent\'s PublicKey")};
		};
	};
	var __tmp__ = _buildCertExtensions(_template, stdgo.bytes.Bytes.equal(_asn1Subject, _emptyASN1Subject), _authorityKeyId, _subjectKeyId),
		_extensions:Slice<stdgo.crypto.x509.pkix.Pkix.Extension> = __tmp__._0,
		_err:stdgo.Error = __tmp__._1;
	if (_err != null) {
		return {_0: new Slice<GoUInt8>().nil(), _1: _err};
	};
	var _encodedPublicKey:stdgo.encoding.asn1.Asn1.BitString = (({bitLength: _publicKeyBytes.length * ((8 : GoInt)),
		bytes: _publicKeyBytes} : stdgo.encoding.asn1.Asn1.BitString)).__copy__();
	var _c:T_tbsCertificate = (({
		version: ((2 : GoInt)),
		serialNumber: _template.value.serialNumber,
		signatureAlgorithm: _signatureAlgorithm.__copy__(),
		issuer: (({
			fullBytes: _asn1Issuer,
			class_: 0,
			tag: 0,
			isCompound: false,
			bytes: new Slice<GoUInt8>().nil()
		} : stdgo.encoding.asn1.Asn1.RawValue)).__copy__(),
		validity: new T_validity(_template.value.notBefore.utc().__copy__(), _template.value.notAfter.utc().__copy__()).__copy__(),
		subject: (({
			fullBytes: _asn1Subject,
			class_: 0,
			tag: 0,
			isCompound: false,
			bytes: new Slice<GoUInt8>().nil()
		} : stdgo.encoding.asn1.Asn1.RawValue)).__copy__(),
		publicKey: new T_publicKeyInfo(new stdgo.encoding.asn1.Asn1.RawContent(), _publicKeyAlgorithm.__copy__(), _encodedPublicKey.__copy__()).__copy__(),
		extensions: _extensions,
		raw: new stdgo.encoding.asn1.Asn1.RawContent(),
		uniqueId: new stdgo.encoding.asn1.Asn1.BitString(),
		subjectUniqueId: new stdgo.encoding.asn1.Asn1.BitString()
	} : T_tbsCertificate)).__copy__();
	var __tmp__ = stdgo.encoding.asn1.Asn1.marshal(Go.toInterface(_c.__copy__())),
		_tbsCertContents:Slice<GoUInt8> = __tmp__._0,
		_err:stdgo.Error = __tmp__._1;
	if (_err != null) {
		return {_0: new Slice<GoUInt8>().nil(), _1: _err};
	};
	_c.raw = new stdgo.encoding.asn1.Asn1.RawContent(_tbsCertContents);
	var _signed:Slice<GoUInt8> = _tbsCertContents;
	if (_hashFunc.__t__ != ((0 : GoUInt))) {
		var _h:stdgo.hash.Hash.Hash = _hashFunc.new_();
		_h.write(_signed);
		_signed = _h.sum(new Slice<GoUInt8>().nil());
	};
	var _signerOpts:stdgo.crypto.Crypto.SignerOpts = _hashFunc;
	if (_template.value.signatureAlgorithm.__t__ != ((0 : GoInt)) && _template.value.signatureAlgorithm._isRSAPSS()) {
		_signerOpts = Go.pointer((({saltLength: stdgo.crypto.rsa.Rsa.psssaltLengthEqualsHash, hash: _hashFunc} : stdgo.crypto.rsa.Rsa.PSSOptions))).value;
	};
	var _signature:Slice<GoByte> = new Slice<GoUInt8>().nil();
	{
		var __tmp__ = _key.sign(_rand, _signed, _signerOpts);
		_signature = __tmp__._0;
		_err = __tmp__._1;
	};
	if (_err != null) {
		return {_0: new Slice<GoUInt8>().nil(), _1: _err};
	};
	var __tmp__ = stdgo.encoding.asn1.Asn1.marshal(Go.toInterface(new T_certificate(new stdgo.encoding.asn1.Asn1.RawContent(), _c.__copy__(),
		_signatureAlgorithm.__copy__(), (({
			bytes: _signature,
			bitLength: _signature.length * ((8 : GoInt))
		} : stdgo.encoding.asn1.Asn1.BitString)).__copy__()).__copy__())),
		_signedCert:Slice<GoUInt8> = __tmp__._0,
		_err:stdgo.Error = __tmp__._1;
	if (_err != null) {
		return {_0: new Slice<GoUInt8>().nil(), _1: _err};
	};
	{
		var _sigAlg:SignatureAlgorithm = _getSignatureAlgorithmFromAI(_signatureAlgorithm.__copy__());
		if (_sigAlg.__t__ != md5withRSA.__t__) {
			{
				var _err:stdgo.Error = _checkSignature(_sigAlg, _c.raw.__copy__().__t__, _signature, Go.toInterface(_key.public_()));
				if (_err != null) {
					return {_0: new Slice<GoUInt8>().nil(), _1: stdgo.fmt.Fmt.errorf("x509: signature over certificate returned by signer is invalid: %w",
						Go.toInterface(_err))};
				};
			};
		};
	};
	return {_0: _signedCert, _1: ((null : stdgo.Error))};
}

/**
	// ParseCRL parses a CRL from the given bytes. It's often the case that PEM
	// encoded CRLs will appear where they should be DER encoded, so this function
	// will transparently handle PEM encoding as long as there isn't any leading
	// garbage.
**/
function parseCRL(_crlBytes:Slice<GoByte>):{var _0:Pointer<stdgo.crypto.x509.pkix.Pkix.CertificateList>; var _1:Error;} {
	if (stdgo.bytes.Bytes.hasPrefix(_crlBytes, _pemCRLPrefix)) {
		var __tmp__ = stdgo.encoding.pem.Pem.decode(_crlBytes),
			_block:Pointer<stdgo.encoding.pem.Pem.Block> = __tmp__._0,
			_:Slice<GoUInt8> = __tmp__._1;
		if ((_block != null && !_block.isNil()) && _block.value.type == _pemType) {
			_crlBytes = _block.value.bytes;
		};
	};
	return parseDERCRL(_crlBytes);
}

/**
	// ParseDERCRL parses a DER encoded CRL from the given bytes.
**/
function parseDERCRL(_derBytes:Slice<GoByte>):{var _0:Pointer<stdgo.crypto.x509.pkix.Pkix.CertificateList>; var _1:Error;} {
	var _certList:Pointer<stdgo.crypto.x509.pkix.Pkix.CertificateList> = Go.pointer(new stdgo.crypto.x509.pkix.Pkix.CertificateList());
	{
		var __tmp__ = stdgo.encoding.asn1.Asn1.unmarshal(_derBytes, Go.toInterface(_certList)),
			_rest:Slice<GoUInt8> = __tmp__._0,
			_err:stdgo.Error = __tmp__._1;
		if (_err != null) {
			return {_0: new Pointer<stdgo.crypto.x509.pkix.Pkix.CertificateList>().nil(), _1: _err};
		} else if (_rest.length != ((0 : GoInt))) {
			return {_0: new Pointer<stdgo.crypto.x509.pkix.Pkix.CertificateList>().nil(), _1: stdgo.errors.Errors.new_("x509: trailing data after CRL")};
		};
	};
	return {_0: _certList, _1: ((null : stdgo.Error))};
}

/**
	// newRawAttributes converts AttributeTypeAndValueSETs from a template
	// CertificateRequest's Attributes into tbsCertificateRequest RawAttributes.
**/
function _newRawAttributes(_attributes:Slice<stdgo.crypto.x509.pkix.Pkix.AttributeTypeAndValueSET>):{var _0:Slice<stdgo.encoding.asn1.Asn1.RawValue>; var _1:Error;} {
	var _rawAttributes:Slice<stdgo.encoding.asn1.Asn1.RawValue> = new Slice<stdgo.encoding.asn1.Asn1.RawValue>().nil();
	var __tmp__ = stdgo.encoding.asn1.Asn1.marshal(Go.toInterface(_attributes)),
		_b:Slice<GoUInt8> = __tmp__._0,
		_err:stdgo.Error = __tmp__._1;
	if (_err != null) {
		return {_0: new Slice<stdgo.encoding.asn1.Asn1.RawValue>().nil(), _1: _err};
	};
	var __tmp__ = stdgo.encoding.asn1.Asn1.unmarshal(_b, Go.toInterface(Go.pointer(_rawAttributes))),
		_rest:Slice<GoUInt8> = __tmp__._0,
		_err:stdgo.Error = __tmp__._1;
	if (_err != null) {
		return {_0: new Slice<stdgo.encoding.asn1.Asn1.RawValue>().nil(), _1: _err};
	};
	if (_rest.length != ((0 : GoInt))) {
		return {_0: new Slice<stdgo.encoding.asn1.Asn1.RawValue>().nil(), _1: stdgo.errors.Errors.new_("x509: failed to unmarshal raw CSR Attributes")};
	};
	return {_0: _rawAttributes, _1: ((null : stdgo.Error))};
}

/**
	// parseRawAttributes Unmarshals RawAttributes into AttributeTypeAndValueSETs.
**/
function _parseRawAttributes(_rawAttributes:Slice<stdgo.encoding.asn1.Asn1.RawValue>):Slice<stdgo.crypto.x509.pkix.Pkix.AttributeTypeAndValueSET> {
	var _attributes:Slice<stdgo.crypto.x509.pkix.Pkix.AttributeTypeAndValueSET> = new Slice<stdgo.crypto.x509.pkix.Pkix.AttributeTypeAndValueSET>().nil();
	for (_ => _rawAttr in _rawAttributes) {
		var _attr:stdgo.crypto.x509.pkix.Pkix.AttributeTypeAndValueSET = new stdgo.crypto.x509.pkix.Pkix.AttributeTypeAndValueSET();
		var __tmp__ = stdgo.encoding.asn1.Asn1.unmarshal(_rawAttr.fullBytes, Go.toInterface(Go.pointer(_attr))),
			_rest:Slice<GoUInt8> = __tmp__._0,
			_err:stdgo.Error = __tmp__._1;
		if (_err == null && _rest.length == ((0 : GoInt))) {
			_attributes = _attributes.__append__(_attr.__copy__());
		};
	};
	return _attributes;
}

@:structInit class T_pkcs10Attribute__parseCSRExtensions_0 {
	public var id:stdgo.encoding.asn1.Asn1.ObjectIdentifier = new stdgo.encoding.asn1.Asn1.ObjectIdentifier();
	@:tag("asn1:\"set\"")
	public var values:Slice<stdgo.encoding.asn1.Asn1.RawValue> = new Slice<stdgo.encoding.asn1.Asn1.RawValue>().nil();

	public function new(?id:stdgo.encoding.asn1.Asn1.ObjectIdentifier, ?values:Slice<stdgo.encoding.asn1.Asn1.RawValue>)
		stdgo.internal.Macro.initLocals();

	public function toString() {
		return '{' + Go.string(id) + " " + Go.string(values) + "}";
	}

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	public function __copy__() {
		return new T_pkcs10Attribute__parseCSRExtensions_0(id, values);
	}

	public function __set__(__tmp__) {
		this.id = __tmp__.id;
		this.values = __tmp__.values;
		return this;
	}
}

/**
	// parseCSRExtensions parses the attributes from a CSR and extracts any
	// requested extensions.
**/
function _parseCSRExtensions(_rawAttributes:Slice<stdgo.encoding.asn1.Asn1.RawValue>):{var _0:Slice<stdgo.crypto.x509.pkix.Pkix.Extension>; var _1:Error;} {
	{};
	var _ret:Slice<stdgo.crypto.x509.pkix.Pkix.Extension> = new Slice<stdgo.crypto.x509.pkix.Pkix.Extension>().nil();
	for (_ => _rawAttr in _rawAttributes) {
		var _attr:T_pkcs10Attribute__parseCSRExtensions_0 = new T_pkcs10Attribute__parseCSRExtensions_0();
		{
			var __tmp__ = stdgo.encoding.asn1.Asn1.unmarshal(_rawAttr.fullBytes, Go.toInterface(Go.pointer(_attr))),
				_rest:Slice<GoUInt8> = __tmp__._0,
				_err:stdgo.Error = __tmp__._1;
			if (_err != null || _rest.length != ((0 : GoInt)) || _attr.values.length == ((0 : GoInt))) {
				continue;
			};
		};
		if (!_attr.id.equal(_oidExtensionRequest.__copy__())) {
			continue;
		};
		var _extensions:Slice<stdgo.crypto.x509.pkix.Pkix.Extension> = new Slice<stdgo.crypto.x509.pkix.Pkix.Extension>().nil();
		{
			var __tmp__ = stdgo.encoding.asn1.Asn1.unmarshal(_attr.values[((0 : GoInt))].fullBytes, Go.toInterface(Go.pointer(_extensions))),
				_:Slice<GoUInt8> = __tmp__._0,
				_err:stdgo.Error = __tmp__._1;
			if (_err != null) {
				return {_0: new Slice<stdgo.crypto.x509.pkix.Pkix.Extension>().nil(), _1: _err};
			};
		};
		_ret = _ret.__append__(..._extensions.toArray());
	};
	return {_0: _ret, _1: ((null : stdgo.Error))};
}

/**
	// CreateCertificateRequest creates a new certificate request based on a
	// template. The following members of template are used:
	//
	//  - SignatureAlgorithm
	//  - Subject
	//  - DNSNames
	//  - EmailAddresses
	//  - IPAddresses
	//  - URIs
	//  - ExtraExtensions
	//  - Attributes (deprecated)
	//
	// priv is the private key to sign the CSR with, and the corresponding public
	// key will be included in the CSR. It must implement crypto.Signer and its
	// Public() method must return a *rsa.PublicKey or a *ecdsa.PublicKey or a
	// ed25519.PublicKey. (A *rsa.PrivateKey, *ecdsa.PrivateKey or
	// ed25519.PrivateKey satisfies this.)
	//
	// The returned slice is the certificate request in DER encoding.
**/
function createCertificateRequest(_rand:stdgo.io.Io.Reader, _template:Pointer<CertificateRequest>, _priv:AnyInterface):{var _0:Slice<GoByte>; var _1:Error;} {
	var _csr:Slice<GoByte> = new Slice<GoUInt8>().nil(),
		_err:Error = ((null : stdgo.Error));
	var __tmp__ = try {
		{value: ((_priv.value : stdgo.crypto.Crypto.Signer)), ok: true};
	} catch (_) {
		{value: ((null : stdgo.crypto.Crypto.Signer)), ok: false};
	}, _key = __tmp__.value, _ok = __tmp__.ok;
	if (!_ok) {
		return {_0: new Slice<GoUInt8>().nil(), _1: stdgo.errors.Errors.new_("x509: certificate private key does not implement crypto.Signer")};
	};
	var _hashFunc:stdgo.crypto.Crypto.Hash = new stdgo.crypto.Crypto.Hash();
	var _sigAlgo:stdgo.crypto.x509.pkix.Pkix.AlgorithmIdentifier = new stdgo.crypto.x509.pkix.Pkix.AlgorithmIdentifier();
	{
		var __tmp__ = _signingParamsForPublicKey(Go.toInterface(_key.public_()), _template.value.signatureAlgorithm);
		_hashFunc = __tmp__._0;
		_sigAlgo = __tmp__._1.__copy__();
		_err = __tmp__._2;
	};
	if (_err != null) {
		return {_0: new Slice<GoUInt8>().nil(), _1: _err};
	};
	var _publicKeyBytes:Slice<GoByte> = new Slice<GoUInt8>().nil();
	var _publicKeyAlgorithm:stdgo.crypto.x509.pkix.Pkix.AlgorithmIdentifier = new stdgo.crypto.x509.pkix.Pkix.AlgorithmIdentifier();
	{
		var __tmp__ = _marshalPublicKey(Go.toInterface(_key.public_()));
		_publicKeyBytes = __tmp__._0;
		_publicKeyAlgorithm = __tmp__._1.__copy__();
		_err = __tmp__._2;
	};
	if (_err != null) {
		return {_0: new Slice<GoUInt8>().nil(), _1: _err};
	};
	var __tmp__ = _buildCSRExtensions(_template),
		_extensions:Slice<stdgo.crypto.x509.pkix.Pkix.Extension> = __tmp__._0,
		_err:stdgo.Error = __tmp__._1;
	if (_err != null) {
		return {_0: new Slice<GoUInt8>().nil(), _1: _err};
	};
	var _attributes:Slice<stdgo.crypto.x509.pkix.Pkix.AttributeTypeAndValueSET> = new Slice<stdgo.crypto.x509.pkix.Pkix.AttributeTypeAndValueSET>(...[
		for (i in 0...((((0 : GoInt)) : GoInt)).toBasic()) new stdgo.crypto.x509.pkix.Pkix.AttributeTypeAndValueSET()
	]).setCap(((_template.value.attributes.length : GoInt)).toBasic());
	for (_ => _attr in _template.value.attributes) {
		var _values:Slice<Slice<stdgo.crypto.x509.pkix.Pkix.AttributeTypeAndValue>> = new Slice<Slice<stdgo.crypto.x509.pkix.Pkix.AttributeTypeAndValue>>(...[
			for (i in 0...((_attr.value.length : GoInt)).toBasic()) new Slice<stdgo.crypto.x509.pkix.Pkix.AttributeTypeAndValue>().nil()
		]);
		Go.copy(_values, _attr.value);
		_attributes = _attributes.__append__((({type: _attr.type.__copy__(), value: _values} : stdgo.crypto.x509.pkix.Pkix.AttributeTypeAndValueSET))
			.__copy__());
	};
	var _extensionsAppended:Bool = false;
	if (_extensions.length > ((0 : GoInt))) {
		for (_ => _atvSet in _attributes) {
			if (!_atvSet.type.equal(_oidExtensionRequest.__copy__()) || _atvSet.value.length == ((0 : GoInt))) {
				continue;
			};
			var _specifiedExtensions:GoMap<GoString, Bool> = new GoMap<GoString,
				Bool>(new stdgo.reflect.Reflect._Type(stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(string_kind),
					stdgo.reflect.Reflect.GoType.basic(bool_kind))));
			for (_ => _atvs in _atvSet.value) {
				for (_ => _atv in _atvs) {
					_specifiedExtensions[_atv.type.toString()] = true;
				};
			};
			var _newValue:Slice<stdgo.crypto.x509.pkix.Pkix.AttributeTypeAndValue> = new Slice<stdgo.crypto.x509.pkix.Pkix.AttributeTypeAndValue>(...[
				for (i in 0...((((0 : GoInt)) : GoInt)).toBasic()) new stdgo.crypto.x509.pkix.Pkix.AttributeTypeAndValue()
			]).setCap(((_atvSet.value[((0 : GoInt))].length + _extensions.length:GoInt)).toBasic());
			_newValue = _newValue.__append__(..._atvSet.value[((0 : GoInt))].toArray());
			for (_ => _e in _extensions) {
				if (_specifiedExtensions[_e.id.toString()]) {
					continue;
				};
				_newValue = _newValue.__append__((({type: _e.id.__copy__(),
					value: Go.toInterface(_e.value)} : stdgo.crypto.x509.pkix.Pkix.AttributeTypeAndValue)).__copy__());
			};
			_atvSet.value[((0 : GoInt))] = _newValue;
			_extensionsAppended = true;
			break;
		};
	};
	var __tmp__ = _newRawAttributes(_attributes),
		_rawAttributes:Slice<stdgo.encoding.asn1.Asn1.RawValue> = __tmp__._0,
		_err:stdgo.Error = __tmp__._1;
	if (_err != null) {
		return {_0: _csr, _1: _err};
	};
	if (_extensions.length > ((0 : GoInt)) && !_extensionsAppended) {
		var _attr:T__struct_3 = (({type: _oidExtensionRequest.__copy__(),
			value: new Slice<Slice<stdgo.crypto.x509.pkix.Pkix.Extension>>(_extensions)} : T__struct_3)).__copy__();
		var __tmp__ = stdgo.encoding.asn1.Asn1.marshal(Go.toInterface(_attr.__copy__())),
			_b:Slice<GoUInt8> = __tmp__._0,
			_err:stdgo.Error = __tmp__._1;
		if (_err != null) {
			return {_0: new Slice<GoUInt8>().nil(), _1: stdgo.errors.Errors.new_((("x509: failed to serialise extensions attribute: " : GoString))
				+ _err.error())};
		};
		var _rawValue:stdgo.encoding.asn1.Asn1.RawValue = new stdgo.encoding.asn1.Asn1.RawValue();
		{
			var __tmp__ = stdgo.encoding.asn1.Asn1.unmarshal(_b, Go.toInterface(Go.pointer(_rawValue))),
				_:Slice<GoUInt8> = __tmp__._0,
				_err:stdgo.Error = __tmp__._1;
			if (_err != null) {
				return {_0: new Slice<GoUInt8>().nil(), _1: _err};
			};
		};
		_rawAttributes = _rawAttributes.__append__(_rawValue.__copy__());
	};
	var _asn1Subject:Slice<GoUInt8> = _template.value.rawSubject;
	if (_asn1Subject.length == ((0 : GoInt))) {
		{
			var __tmp__ = stdgo.encoding.asn1.Asn1.marshal(Go.toInterface(_template.value.subject.toRDNSequence().__copy__()));
			_asn1Subject = __tmp__._0;
			_err = __tmp__._1;
		};
		if (_err != null) {
			return {_0: new Slice<GoUInt8>().nil(), _1: _err};
		};
	};
	var _tbsCSR:T_tbsCertificateRequest = (({
		version: ((0 : GoInt)),
		subject: (({
			fullBytes: _asn1Subject,
			class_: 0,
			tag: 0,
			isCompound: false,
			bytes: new Slice<GoUInt8>().nil()
		} : stdgo.encoding.asn1.Asn1.RawValue)).__copy__(),
		publicKey: (({algorithm: _publicKeyAlgorithm.__copy__(), publicKey: (({bytes: _publicKeyBytes,
			bitLength: _publicKeyBytes.length * ((8 : GoInt))} : stdgo.encoding.asn1.Asn1.BitString)).__copy__(),
			raw: new stdgo.encoding.asn1.Asn1.RawContent()} : T_publicKeyInfo)).__copy__(),
		rawAttributes: _rawAttributes,
		raw: new stdgo.encoding.asn1.Asn1.RawContent()
	} : T_tbsCertificateRequest)).__copy__();
	var __tmp__ = stdgo.encoding.asn1.Asn1.marshal(Go.toInterface(_tbsCSR.__copy__())),
		_tbsCSRContents:Slice<GoUInt8> = __tmp__._0,
		_err:stdgo.Error = __tmp__._1;
	if (_err != null) {
		return {_0: _csr, _1: _err};
	};
	_tbsCSR.raw = new stdgo.encoding.asn1.Asn1.RawContent(_tbsCSRContents);
	var _signed:Slice<GoUInt8> = _tbsCSRContents;
	if (_hashFunc.__t__ != ((0 : GoUInt))) {
		var _h:stdgo.hash.Hash.Hash = _hashFunc.new_();
		_h.write(_signed);
		_signed = _h.sum(new Slice<GoUInt8>().nil());
	};
	var _signature:Slice<GoByte> = new Slice<GoUInt8>().nil();
	{
		var __tmp__ = _key.sign(_rand, _signed, _hashFunc);
		_signature = __tmp__._0;
		_err = __tmp__._1;
	};
	if (_err != null) {
		return {_0: _csr, _1: _err};
	};
	return stdgo.encoding.asn1.Asn1.marshal(Go.toInterface((({
		tbscsr: _tbsCSR.__copy__(),
		signatureAlgorithm: _sigAlgo.__copy__(),
		signatureValue: (({bytes: _signature, bitLength: _signature.length * ((8 : GoInt))} : stdgo.encoding.asn1.Asn1.BitString)).__copy__(),
		raw: new stdgo.encoding.asn1.Asn1.RawContent()
	} : T_certificateRequest)).__copy__()));
}

/**
	// ParseCertificateRequest parses a single certificate request from the
	// given ASN.1 DER data.
**/
function parseCertificateRequest(_asn1Data:Slice<GoByte>):{var _0:Pointer<CertificateRequest>; var _1:Error;} {
	var _csr:T_certificateRequest = new T_certificateRequest();
	var __tmp__ = stdgo.encoding.asn1.Asn1.unmarshal(_asn1Data, Go.toInterface(Go.pointer(_csr))),
		_rest:Slice<GoUInt8> = __tmp__._0,
		_err:stdgo.Error = __tmp__._1;
	if (_err != null) {
		return {_0: new Pointer<CertificateRequest>().nil(), _1: _err};
	} else if (_rest.length != ((0 : GoInt))) {
		return {_0: new Pointer<CertificateRequest>().nil(), _1: (({msg: "trailing data"} : stdgo.encoding.asn1.Asn1.SyntaxError)).__copy__()};
	};
	return _parseCertificateRequest(Go.pointer(_csr));
}

function _parseCertificateRequest(_in:Pointer<T_certificateRequest>):{var _0:Pointer<CertificateRequest>; var _1:Error;} {
	var _out:Pointer<CertificateRequest> = Go.pointer((({
		raw: _in.value.raw.__copy__().__t__,
		rawTBSCertificateRequest: _in.value.tbscsr.raw.__copy__().__t__,
		rawSubjectPublicKeyInfo: _in.value.tbscsr.publicKey.raw.__copy__().__t__,
		rawSubject: _in.value.tbscsr.subject.fullBytes,
		signature: _in.value.signatureValue.rightAlign(),
		signatureAlgorithm: _getSignatureAlgorithmFromAI(_in.value.signatureAlgorithm.__copy__()),
		publicKeyAlgorithm: _getPublicKeyAlgorithmFromOID(_in.value.tbscsr.publicKey.algorithm.algorithm.__copy__()),
		version: _in.value.tbscsr.version,
		attributes: _parseRawAttributes(_in.value.tbscsr.rawAttributes),
		publicKey: ((null : AnyInterface)),
		subject: new stdgo.crypto.x509.pkix.Pkix.Name(),
		extensions: new Slice<stdgo.crypto.x509.pkix.Pkix.Extension>().nil(),
		extraExtensions: new Slice<stdgo.crypto.x509.pkix.Pkix.Extension>().nil(),
		dnsnames: new Slice<GoString>().nil(),
		emailAddresses: new Slice<GoString>().nil(),
		ipaddresses: new Slice<stdgo.net.Net.IP>().nil(),
		uris: new Slice<Pointer<stdgo.net.url.Url.URL>>().nil()
	} : CertificateRequest)));
	var _err:Error = ((null : stdgo.Error));
	{
		var __tmp__ = _parsePublicKey(_out.value.publicKeyAlgorithm, Go.pointer(_in.value.tbscsr.publicKey));
		_out.value.publicKey = Go.toInterface(__tmp__._0);
		_err = __tmp__._1;
	};
	if (_err != null) {
		return {_0: new Pointer<CertificateRequest>().nil(), _1: _err};
	};
	var _subject:stdgo.crypto.x509.pkix.Pkix.RDNSequence = new stdgo.crypto.x509.pkix.Pkix.RDNSequence();
	{
		var __tmp__ = stdgo.encoding.asn1.Asn1.unmarshal(_in.value.tbscsr.subject.fullBytes, Go.toInterface(Go.pointer(_subject))),
			_rest:Slice<GoUInt8> = __tmp__._0,
			_err:stdgo.Error = __tmp__._1;
		if (_err != null) {
			return {_0: new Pointer<CertificateRequest>().nil(), _1: _err};
		} else if (_rest.length != ((0 : GoInt))) {
			return {_0: new Pointer<CertificateRequest>().nil(), _1: stdgo.errors.Errors.new_("x509: trailing data after X.509 Subject")};
		};
	};
	_out.value.subject.fillFromRDNSequence(Go.pointer(_subject));
	{
		{
			var __tmp__ = _parseCSRExtensions(_in.value.tbscsr.rawAttributes);
			_out.value.extensions = __tmp__._0;
			_err = __tmp__._1;
		};
		if (_err != null) {
			return {_0: new Pointer<CertificateRequest>().nil(), _1: _err};
		};
	};
	for (_ => _extension in _out.value.extensions) {
		if (_extension.id.equal(new stdgo.encoding.asn1.Asn1.ObjectIdentifier(_oidExtensionSubjectAltName))) {
			{
				var __tmp__ = _parseSANExtension(new vendor.golang_org.x.crypto.cryptobyte.Cryptobyte.String_(_extension.value));
				_out.value.dnsnames = __tmp__._0;
				_out.value.emailAddresses = __tmp__._1;
				_out.value.ipaddresses = __tmp__._2;
				_out.value.uris = __tmp__._3;
				_err = __tmp__._4;
			};
			if (_err != null) {
				return {_0: new Pointer<CertificateRequest>().nil(), _1: _err};
			};
		};
	};
	return {_0: _out, _1: ((null : stdgo.Error))};
}

/**
	// CreateRevocationList creates a new X.509 v2 Certificate Revocation List,
	// according to RFC 5280, based on template.
	//
	// The CRL is signed by priv which should be the private key associated with
	// the public key in the issuer certificate.
	//
	// The issuer may not be nil, and the crlSign bit must be set in KeyUsage in
	// order to use it as a CRL issuer.
	//
	// The issuer distinguished name CRL field and authority key identifier
	// extension are populated using the issuer certificate. issuer must have
	// SubjectKeyId set.
**/
function createRevocationList(_rand:stdgo.io.Io.Reader, _template:Pointer<RevocationList>, _issuer:Pointer<Certificate>,
		_priv:stdgo.crypto.Crypto.Signer):{var _0:Slice<GoByte>; var _1:Error;} {
	if ((_template == null || _template.isNil())) {
		return {_0: new Slice<GoUInt8>().nil(), _1: stdgo.errors.Errors.new_("x509: template can not be nil")};
	};
	if ((_issuer == null || _issuer.isNil())) {
		return {_0: new Slice<GoUInt8>().nil(), _1: stdgo.errors.Errors.new_("x509: issuer can not be nil")};
	};
	if ((new KeyUsage(_issuer.value.keyUsage.__t__ & keyUsageCRLSign.__t__)).__t__ == ((0 : GoInt))) {
		return {_0: new Slice<GoUInt8>().nil(), _1: stdgo.errors.Errors.new_("x509: issuer must have the crlSign key usage bit set")};
	};
	if (_issuer.value.subjectKeyId.length == ((0 : GoInt))) {
		return {_0: new Slice<GoUInt8>().nil(), _1: stdgo.errors.Errors.new_("x509: issuer certificate doesn\'t contain a subject key identifier")};
	};
	if (_template.value.nextUpdate.before(_template.value.thisUpdate.__copy__())) {
		return {_0: new Slice<GoUInt8>().nil(), _1: stdgo.errors.Errors.new_("x509: template.ThisUpdate is after template.NextUpdate")};
	};
	if ((_template.value.number == null || _template.value.number.isNil())) {
		return {_0: new Slice<GoUInt8>().nil(), _1: stdgo.errors.Errors.new_("x509: template contains nil Number field")};
	};
	var __tmp__ = _signingParamsForPublicKey(Go.toInterface(_priv.public_()), _template.value.signatureAlgorithm),
		_hashFunc:stdgo.crypto.Crypto.Hash = __tmp__._0,
		_signatureAlgorithm:stdgo.crypto.x509.pkix.Pkix.AlgorithmIdentifier = __tmp__._1,
		_err:stdgo.Error = __tmp__._2;
	if (_err != null) {
		return {_0: new Slice<GoUInt8>().nil(), _1: _err};
	};
	var _revokedCertsUTC:Slice<stdgo.crypto.x509.pkix.Pkix.RevokedCertificate> = new Slice<stdgo.crypto.x509.pkix.Pkix.RevokedCertificate>(...[
		for (i in 0...((_template.value.revokedCertificates.length : GoInt)).toBasic()) new stdgo.crypto.x509.pkix.Pkix.RevokedCertificate()
	]);
	for (_i => _rc in _template.value.revokedCertificates) {
		_rc.revocationTime = _rc.revocationTime.utc().__copy__();
		_revokedCertsUTC[_i] = _rc.__copy__();
	};
	var __tmp__ = stdgo.encoding.asn1.Asn1.marshal(Go.toInterface((({id: _issuer.value.subjectKeyId} : T_authKeyId)).__copy__())),
		_aki:Slice<GoUInt8> = __tmp__._0,
		_err:stdgo.Error = __tmp__._1;
	if (_err != null) {
		return {_0: new Slice<GoUInt8>().nil(), _1: _err};
	};
	var __tmp__ = stdgo.encoding.asn1.Asn1.marshal(Go.toInterface(_template.value.number)),
		_crlNum:Slice<GoUInt8> = __tmp__._0,
		_err:stdgo.Error = __tmp__._1;
	if (_err != null) {
		return {_0: new Slice<GoUInt8>().nil(), _1: _err};
	};
	var _tbsCertList:stdgo.crypto.x509.pkix.Pkix.TBSCertificateList = (({
		version: ((1 : GoInt)),
		signature: _signatureAlgorithm.__copy__(),
		issuer: _issuer.value.subject.toRDNSequence().__copy__(),
		thisUpdate: _template.value.thisUpdate.utc().__copy__(),
		nextUpdate: new stdgo.time.Time.Time(_template.value.nextUpdate.utc().__copy__().__copy__()),
		extensions: new Slice<stdgo.crypto.x509.pkix.Pkix.Extension>((({
			id: new stdgo.encoding.asn1.Asn1.ObjectIdentifier(_oidExtensionAuthorityKeyId),
			value: _aki,
			critical: false
		} : stdgo.crypto.x509.pkix.Pkix.Extension)).__copy__(),
			(({id: new stdgo.encoding.asn1.Asn1.ObjectIdentifier(_oidExtensionCRLNumber), value: _crlNum,
				critical: false} : stdgo.crypto.x509.pkix.Pkix.Extension)).__copy__()),
		raw: new stdgo.encoding.asn1.Asn1.RawContent(),
		revokedCertificates: new Slice<stdgo.crypto.x509.pkix.Pkix.RevokedCertificate>().nil()
	} : stdgo.crypto.x509.pkix.Pkix.TBSCertificateList)).__copy__();
	if (_revokedCertsUTC.length > ((0 : GoInt))) {
		_tbsCertList.revokedCertificates = _revokedCertsUTC;
	};
	if (_template.value.extraExtensions.length > ((0 : GoInt))) {
		_tbsCertList.extensions = _tbsCertList.extensions.__append__(..._template.value.extraExtensions.toArray());
	};
	var __tmp__ = stdgo.encoding.asn1.Asn1.marshal(Go.toInterface(_tbsCertList.__copy__())),
		_tbsCertListContents:Slice<GoUInt8> = __tmp__._0,
		_err:stdgo.Error = __tmp__._1;
	if (_err != null) {
		return {_0: new Slice<GoUInt8>().nil(), _1: _err};
	};
	var _input:Slice<GoUInt8> = _tbsCertListContents;
	if (_hashFunc.__t__ != ((0 : GoUInt))) {
		var _h:stdgo.hash.Hash.Hash = _hashFunc.new_();
		_h.write(_tbsCertListContents);
		_input = _h.sum(new Slice<GoUInt8>().nil());
	};
	var _signerOpts:stdgo.crypto.Crypto.SignerOpts = _hashFunc;
	if (_template.value.signatureAlgorithm._isRSAPSS()) {
		_signerOpts = Go.pointer((({saltLength: stdgo.crypto.rsa.Rsa.psssaltLengthEqualsHash, hash: _hashFunc} : stdgo.crypto.rsa.Rsa.PSSOptions))).value;
	};
	var __tmp__ = _priv.sign(_rand, _input, _signerOpts),
		_signature:Slice<GoUInt8> = __tmp__._0,
		_err:stdgo.Error = __tmp__._1;
	if (_err != null) {
		return {_0: new Slice<GoUInt8>().nil(), _1: _err};
	};
	return stdgo.encoding.asn1.Asn1.marshal(Go.toInterface((({tbscertList: _tbsCertList.__copy__(),
		signatureAlgorithm: new stdgo.crypto.x509.pkix.Pkix.AlgorithmIdentifier(_signatureAlgorithm.__copy__()
		.__copy__()), signatureValue: (({
			bytes: _signature,
			bitLength: _signature.length * ((8 : GoInt))
		} : stdgo.encoding.asn1.Asn1.BitString)).__copy__()} : stdgo.crypto.x509.pkix.Pkix.CertificateList)).__copy__()));
}

class CertPool_extension_fields {
	public function _len(__tmp__):GoInt
		return __tmp__._len();

	public function _cert(__tmp__, _n:GoInt):{var _0:Pointer<Certificate>; var _1:Error;}
		return __tmp__._cert(_n);

	public function _copy(__tmp__):Pointer<CertPool>
		return __tmp__._copy();

	public function _findPotentialParents(__tmp__, _cert:Pointer<Certificate>):Slice<Pointer<Certificate>>
		return __tmp__._findPotentialParents(_cert);

	public function _contains(__tmp__, _cert:Pointer<Certificate>):Bool
		return __tmp__._contains(_cert);

	public function addCert(__tmp__, _cert:Pointer<Certificate>):Void
		__tmp__.addCert(_cert);

	public function _addCertFunc(__tmp__, _rawSum224:T_sum224, _rawSubject:GoString, _getCert:() -> {
		var _0:Pointer<Certificate>;
		var _1:Error;
	}):Void
		__tmp__._addCertFunc(_rawSum224, _rawSubject, _getCert);

	public function appendCertsFromPEM(__tmp__, _pemCerts:Slice<GoByte>):Bool
		return __tmp__.appendCertsFromPEM(_pemCerts);

	public function subjects(__tmp__):Slice<Slice<GoByte>>
		return __tmp__.subjects();
}

class T_rfc1423Algo_extension_fields {
	public function _deriveKey(__tmp__, _password:Slice<GoByte>, _salt:Slice<GoByte>):Slice<GoByte>
		return __tmp__._deriveKey(_password, _salt);
}

class CertificateInvalidError_extension_fields {
	public function error(__tmp__):GoString
		return __tmp__.error();
}

class HostnameError_extension_fields {
	public function error(__tmp__):GoString
		return __tmp__.error();
}

class UnknownAuthorityError_extension_fields {
	public function error(__tmp__):GoString
		return __tmp__.error();
}

class SystemRootsError_extension_fields {
	public function error(__tmp__):GoString
		return __tmp__.error();

	public function unwrap(__tmp__):Error
		return __tmp__.unwrap();
}

class SignatureAlgorithm_extension_fields {
	public function _isRSAPSS(__tmp__):Bool
		return __tmp__._isRSAPSS();

	public function toString(__tmp__):GoString
		return __tmp__.toString();
}

class PublicKeyAlgorithm_extension_fields {
	public function toString(__tmp__):GoString
		return __tmp__.toString();
}

class Certificate_extension_fields {
	public function _systemVerify(__tmp__, _opts:Pointer<VerifyOptions>):{var _0:Slice<Slice<Pointer<Certificate>>>; var _1:Error;}
		return __tmp__._systemVerify(_opts);

	public function _checkNameConstraints(__tmp__, _count:Pointer<GoInt>, _maxConstraintComparisons:GoInt, _nameType:GoString, _name:GoString,
			_parsedName:AnyInterface, _match:(_parsedName:AnyInterface, _constraint:AnyInterface) -> {
			var _0:Bool;
			var _1:Error;
		}, _permitted:AnyInterface, _excluded:AnyInterface):Error
		return __tmp__._checkNameConstraints(_count, _maxConstraintComparisons, _nameType, _name, _parsedName, _match, _permitted, _excluded);

	public function _isValid(__tmp__, _certType:GoInt, _currentChain:Slice<Pointer<Certificate>>, _opts:Pointer<VerifyOptions>):Error
		return __tmp__._isValid(_certType, _currentChain, _opts);

	public function verify(__tmp__, _opts:VerifyOptions):{var _0:Slice<Slice<Pointer<Certificate>>>; var _1:Error;}
		return __tmp__.verify(_opts);

	public function _buildChains(__tmp__, _cache:GoMap<Pointer<Certificate>, Slice<Slice<Pointer<Certificate>>>>, _currentChain:Slice<Pointer<Certificate>>,
			_sigChecks:Pointer<GoInt>, _opts:Pointer<VerifyOptions>):{
		var _0:Slice<Slice<Pointer<Certificate>>>;
		var _1:Error;
	}
		return __tmp__._buildChains(_cache, _currentChain, _sigChecks, _opts);

	public function verifyHostname(__tmp__, _h:GoString):Error
		return __tmp__.verifyHostname(_h);

	public function equal(__tmp__, _other:Pointer<Certificate>):Bool
		return __tmp__.equal(_other);

	public function _hasSANExtension(__tmp__):Bool
		return __tmp__._hasSANExtension();

	public function checkSignatureFrom(__tmp__, _parent:Pointer<Certificate>):Error
		return __tmp__.checkSignatureFrom(_parent);

	public function checkSignature(__tmp__, _algo:SignatureAlgorithm, _signed:Slice<GoByte>, _signature:Slice<GoByte>):Error
		return __tmp__.checkSignature(_algo, _signed, _signature);

	public function _hasNameConstraints(__tmp__):Bool
		return __tmp__._hasNameConstraints();

	public function _getSANExtension(__tmp__):Slice<GoByte>
		return __tmp__._getSANExtension();

	public function checkCRLSignature(__tmp__, _crl:Pointer<stdgo.crypto.x509.pkix.Pkix.CertificateList>):Error
		return __tmp__.checkCRLSignature(_crl);

	public function createCRL(__tmp__, _rand:stdgo.io.Io.Reader, _priv:AnyInterface, _revokedCerts:Slice<stdgo.crypto.x509.pkix.Pkix.RevokedCertificate>,
			_now:stdgo.time.Time.Time, _expiry:stdgo.time.Time.Time):{var _0:Slice<GoByte>; var _1:Error;
	}
		return __tmp__.createCRL(_rand, _priv, _revokedCerts, _now, _expiry);
}

class InsecureAlgorithmError_extension_fields {
	public function error(__tmp__):GoString
		return __tmp__.error();
}

class ConstraintViolationError_extension_fields {
	public function error(__tmp__):GoString
		return __tmp__.error();
}

class UnhandledCriticalExtension_extension_fields {
	public function error(__tmp__):GoString
		return __tmp__.error();
}

class CertificateRequest_extension_fields {
	public function checkSignature(__tmp__):Error
		return __tmp__.checkSignature();
}
