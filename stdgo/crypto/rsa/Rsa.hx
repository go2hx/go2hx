package stdgo.crypto.rsa;

import stdgo.StdGoTypes;
import stdgo.Error;
import stdgo.Go;
import stdgo.GoString;
import stdgo.Pointer;
import stdgo.Slice;
import stdgo.GoArray;
import stdgo.GoMap;
import stdgo.Chan;

@:structInit class PKCS1v15DecryptOptions {
	public var sessionKeyLen:GoInt = ((0 : GoInt));

	public function new(?sessionKeyLen:GoInt)
		stdgo.internal.Macro.initLocals();

	public function toString() {
		return '{' + Go.string(sessionKeyLen) + "}";
	}

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	public function __copy__() {
		return new PKCS1v15DecryptOptions(sessionKeyLen);
	}

	public function __set__(__tmp__) {
		this.sessionKeyLen = __tmp__.sessionKeyLen;
		return this;
	}
}

@:structInit class PSSOptions {
	public function _saltLength():GoInt {
		var _opts = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		if ((_opts == null || _opts.isNil())) {
			return psssaltLengthAuto;
		};
		return _opts.value.saltLength;
	}

	public function hashFunc():stdgo.crypto.Crypto.Hash {
		var _opts = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		return _opts.value.hash;
	}

	public var saltLength:GoInt = ((0 : GoInt));
	public var hash:stdgo.crypto.Crypto.Hash = new stdgo.crypto.Crypto.Hash();

	public function new(?saltLength:GoInt, ?hash:stdgo.crypto.Crypto.Hash)
		stdgo.internal.Macro.initLocals();

	public function toString() {
		return '{' + Go.string(saltLength) + " " + Go.string(hash) + "}";
	}

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	public function __copy__() {
		return new PSSOptions(saltLength, hash);
	}

	public function __set__(__tmp__) {
		this.saltLength = __tmp__.saltLength;
		this.hash = __tmp__.hash;
		return this;
	}
}

@:structInit class PublicKey {
	public function equal(_x:stdgo.crypto.Crypto.PublicKey):Bool {
		var _pub = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		var __tmp__ = try {
			{value: ((_x.value : Pointer<PublicKey>)), ok: true};
		} catch (_) {
			{value: new Pointer<PublicKey>().nil(), ok: false};
		}, _xx = __tmp__.value, _ok = __tmp__.ok;
		if (!_ok) {
			return false;
		};
		return _pub.value.n.value.cmp(_xx.value.n) == ((0 : GoInt)) && _pub.value.e == _xx.value.e;
	}

	public function size():GoInt {
		var _pub = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		return (_pub.value.n.value.bitLen() + ((7 : GoInt))) / ((8 : GoInt));
	}

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
		return new PublicKey(n, e);
	}

	public function __set__(__tmp__) {
		this.n = __tmp__.n;
		this.e = __tmp__.e;
		return this;
	}
}

@:structInit class OAEPOptions {
	public var hash:stdgo.crypto.Crypto.Hash = new stdgo.crypto.Crypto.Hash();
	public var label:Slice<GoUInt8> = new Slice<GoUInt8>().nil();

	public function new(?hash:stdgo.crypto.Crypto.Hash, ?label:Slice<GoUInt8>)
		stdgo.internal.Macro.initLocals();

	public function toString() {
		return '{' + Go.string(hash) + " " + Go.string(label) + "}";
	}

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	public function __copy__() {
		return new OAEPOptions(hash, label);
	}

	public function __set__(__tmp__) {
		this.hash = __tmp__.hash;
		this.label = __tmp__.label;
		return this;
	}
}

@:structInit class PrivateKey {
	public function precompute():Void {
		var _priv = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		if ((_priv.value.precomputed.dp != null && !_priv.value.precomputed.dp.isNil())) {
			return;
		};
		_priv.value.precomputed.dp = Go.pointer(new stdgo.math.big.Big.Int_()).value.sub(_priv.value.primes[((0 : GoInt))], _bigOne);
		_priv.value.precomputed.dp.value.mod(_priv.value.d, _priv.value.precomputed.dp);
		_priv.value.precomputed.dq = Go.pointer(new stdgo.math.big.Big.Int_()).value.sub(_priv.value.primes[((1 : GoInt))], _bigOne);
		_priv.value.precomputed.dq.value.mod(_priv.value.d, _priv.value.precomputed.dq);
		_priv.value.precomputed.qinv = Go.pointer(new stdgo.math.big.Big.Int_())
			.value.modInverse(_priv.value.primes[((1 : GoInt))], _priv.value.primes[((0 : GoInt))]);
		var _r:Pointer<stdgo.math.big.Big.Int_> = Go.pointer(new stdgo.math.big.Big.Int_())
			.value.mul(_priv.value.primes[((0 : GoInt))], _priv.value.primes[((1 : GoInt))]);
		_priv.value.precomputed.crtvalues = new Slice<CRTValue>(...[
			for (i in 0...((_priv.value.primes.length - ((2 : GoInt)):GoInt)).toBasic()) new CRTValue()
		]);
		{
			var _i:GoInt = ((2 : GoInt));
			Go.cfor(_i < _priv.value.primes.length, _i++, {
				var _prime:Pointer<stdgo.math.big.Big.Int_> = _priv.value.primes[_i];
				var _values:Pointer<CRTValue> = Go.pointer(_priv.value.precomputed.crtvalues[_i - ((2 : GoInt))]);
				_values.value.exp = Go.pointer(new stdgo.math.big.Big.Int_()).value.sub(_prime, _bigOne);
				_values.value.exp.value.mod(_priv.value.d, _values.value.exp);
				_values.value.r = Go.pointer(new stdgo.math.big.Big.Int_()).value.set(_r);
				_values.value.coeff = Go.pointer(new stdgo.math.big.Big.Int_()).value.modInverse(_r, _prime);
				_r.value.mul(_r, _prime);
			});
		};
	}

	public function validate():Error {
		var _priv = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		{
			var _err:stdgo.Error = _checkPub(Go.pointer(_priv.value.publicKey));
			if (_err != null) {
				return _err;
			};
		};
		var _modulus:Pointer<stdgo.math.big.Big.Int_> = Go.pointer(new stdgo.math.big.Big.Int_()).value.set(_bigOne);
		for (_ => _prime in _priv.value.primes) {
			if (_prime.value.cmp(_bigOne) <= ((0 : GoInt))) {
				return stdgo.errors.Errors.new_("crypto/rsa: invalid prime value");
			};
			_modulus.value.mul(_modulus, _prime);
		};
		if (_modulus.value.cmp(_priv.value.publicKey.n) != ((0 : GoInt))) {
			return stdgo.errors.Errors.new_("crypto/rsa: invalid modulus");
		};
		var _congruence:Pointer<stdgo.math.big.Big.Int_> = Go.pointer(new stdgo.math.big.Big.Int_());
		var _de:Pointer<stdgo.math.big.Big.Int_> = Go.pointer(new stdgo.math.big.Big.Int_()).value.setInt64(((_priv.value.publicKey.e : GoInt64)));
		_de.value.mul(_de, _priv.value.d);
		for (_ => _prime in _priv.value.primes) {
			var _pminus1:Pointer<stdgo.math.big.Big.Int_> = Go.pointer(new stdgo.math.big.Big.Int_()).value.sub(_prime, _bigOne);
			_congruence.value.mod(_de, _pminus1);
			if (_congruence.value.cmp(_bigOne) != ((0 : GoInt))) {
				return stdgo.errors.Errors.new_("crypto/rsa: invalid exponents");
			};
		};
		return ((null : stdgo.Error));
	}

	public function decrypt(_rand:stdgo.io.Io.Reader, _ciphertext:Slice<GoByte>,
			_opts:stdgo.crypto.Crypto.DecrypterOpts):{var _0:Slice<GoByte>; var _1:Error;} {
		var _priv = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		var _plaintext:Slice<GoByte> = new Slice<GoUInt8>().nil(),
			_err:Error = ((null : stdgo.Error));
		if (_opts == null) {
			return decryptPKCS1v15(_rand, _priv, _ciphertext);
		};
		if (Go.assertable(((_opts : Pointer<OAEPOptions>)))) {
			var _opts:Pointer<OAEPOptions> = _opts == null ? null : _opts.__underlying__() == null ? null : _opts == null ? null : _opts.__underlying__()
				.value;
			return decryptOAEP(_opts.value.hash.new_(), _rand, _priv, _ciphertext, _opts.value.label);
		} else if (Go.assertable(((_opts : Pointer<PKCS1v15DecryptOptions>)))) {
			var _opts:Pointer<PKCS1v15DecryptOptions> = _opts == null ? null : _opts.__underlying__() == null ? null : _opts == null ? null : _opts.__underlying__()
				.value;
			{
				var _l:GoInt = _opts.value.sessionKeyLen;
				if (_l > ((0 : GoInt))) {
					_plaintext = new Slice<GoUInt8>(...[for (i in 0...((_l : GoInt)).toBasic()) ((0 : GoUInt8))]);
					{
						var __tmp__ = stdgo.io.Io.readFull(_rand, _plaintext),
							_:GoInt = __tmp__._0,
							_err:stdgo.Error = __tmp__._1;
						if (_err != null) {
							return {_0: new Slice<GoUInt8>().nil(), _1: _err};
						};
					};
					{
						var _err:stdgo.Error = decryptPKCS1v15SessionKey(_rand, _priv, _ciphertext, _plaintext);
						if (_err != null) {
							return {_0: new Slice<GoUInt8>().nil(), _1: _err};
						};
					};
					return {_0: _plaintext, _1: ((null : stdgo.Error))};
				} else {
					return decryptPKCS1v15(_rand, _priv, _ciphertext);
				};
			};
		} else {
			var _opts:stdgo.crypto.Crypto.DecrypterOpts = _opts == null ? null : _opts.__underlying__();
			return {_0: new Slice<GoUInt8>().nil(), _1: stdgo.errors.Errors.new_("crypto/rsa: invalid options for Decrypt")};
		};
	}

	public function sign(_rand:stdgo.io.Io.Reader, _digest:Slice<GoByte>, _opts:stdgo.crypto.Crypto.SignerOpts):{var _0:Slice<GoByte>; var _1:Error;} {
		var _priv = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		{
			var __tmp__ = try {
				{value: ((_opts.__underlying__().value : Pointer<PSSOptions>)), ok: true};
			} catch (_) {
				{value: new Pointer<PSSOptions>().nil(), ok: false};
			}, _pssOpts = __tmp__.value, _ok = __tmp__.ok;
			if (_ok) {
				return signPSS(_rand, _priv, _pssOpts.value.hash, _digest, _pssOpts);
			};
		};
		return signPKCS1v15(_rand, _priv, _opts.hashFunc(), _digest);
	}

	public function equal(_x:stdgo.crypto.Crypto.PrivateKey):Bool {
		var _priv = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		var __tmp__ = try {
			{value: ((_x.value : Pointer<PrivateKey>)), ok: true};
		} catch (_) {
			{value: new Pointer<PrivateKey>().nil(), ok: false};
		}, _xx = __tmp__.value, _ok = __tmp__.ok;
		if (!_ok) {
			return false;
		};
		if (!_priv.value.publicKey.equal(Go.toInterface(Go.pointer(_xx.value.publicKey)))
			|| _priv.value.d.value.cmp(_xx.value.d) != ((0 : GoInt))) {
			return false;
		};
		if (_priv.value.primes.length != _xx.value.primes.length) {
			return false;
		};
		for (_i => _ in _priv.value.primes) {
			if (_priv.value.primes[_i].value.cmp(_xx.value.primes[_i]) != ((0 : GoInt))) {
				return false;
			};
		};
		return true;
	}

	public function public_():stdgo.crypto.Crypto.PublicKey {
		var _priv = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		return Go.toInterface(Go.pointer(_priv.value.publicKey));
	}

	@:embedded
	public var publicKey:PublicKey = new PublicKey();
	public var d:Pointer<stdgo.math.big.Big.Int_> = new Pointer<stdgo.math.big.Big.Int_>().nil();
	public var primes:Slice<Pointer<stdgo.math.big.Big.Int_>> = new Slice<Pointer<stdgo.math.big.Big.Int_>>().nil();
	public var precomputed:PrecomputedValues = new PrecomputedValues();

	public function new(?publicKey:PublicKey, ?d:Pointer<stdgo.math.big.Big.Int_>, ?primes:Slice<Pointer<stdgo.math.big.Big.Int_>>,
			?precomputed:PrecomputedValues)
		stdgo.internal.Macro.initLocals();

	public function toString() {
		return '{' + Go.string(publicKey) + " " + Go.string(d) + " " + Go.string(primes) + " " + Go.string(precomputed) + "}";
	}

	public function size():GoInt
		return publicKey.size();

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	public function __copy__() {
		return new PrivateKey(publicKey, d, primes, precomputed);
	}

	public function __set__(__tmp__) {
		this.publicKey = __tmp__.publicKey;
		this.d = __tmp__.d;
		this.primes = __tmp__.primes;
		this.precomputed = __tmp__.precomputed;
		return this;
	}
}

@:structInit class PrecomputedValues {
	public var dp:Pointer<stdgo.math.big.Big.Int_> = new Pointer<stdgo.math.big.Big.Int_>().nil();
	public var dq:Pointer<stdgo.math.big.Big.Int_> = new Pointer<stdgo.math.big.Big.Int_>().nil();
	public var qinv:Pointer<stdgo.math.big.Big.Int_> = new Pointer<stdgo.math.big.Big.Int_>().nil();
	public var crtvalues:Slice<CRTValue> = new Slice<CRTValue>().nil();

	public function new(?dp:Pointer<stdgo.math.big.Big.Int_>, ?dq:Pointer<stdgo.math.big.Big.Int_>, ?qinv:Pointer<stdgo.math.big.Big.Int_>,
			?crtvalues:Slice<CRTValue>)
		stdgo.internal.Macro.initLocals();

	public function toString() {
		return '{' + Go.string(dp) + " " + Go.string(dq) + " " + Go.string(qinv) + " " + Go.string(crtvalues) + "}";
	}

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	public function __copy__() {
		return new PrecomputedValues(dp, dq, qinv, crtvalues);
	}

	public function __set__(__tmp__) {
		this.dp = __tmp__.dp;
		this.dq = __tmp__.dq;
		this.qinv = __tmp__.qinv;
		this.crtvalues = __tmp__.crtvalues;
		return this;
	}
}

@:structInit class CRTValue {
	public var exp:Pointer<stdgo.math.big.Big.Int_> = new Pointer<stdgo.math.big.Big.Int_>().nil();
	public var coeff:Pointer<stdgo.math.big.Big.Int_> = new Pointer<stdgo.math.big.Big.Int_>().nil();
	public var r:Pointer<stdgo.math.big.Big.Int_> = new Pointer<stdgo.math.big.Big.Int_>().nil();

	public function new(?exp:Pointer<stdgo.math.big.Big.Int_>, ?coeff:Pointer<stdgo.math.big.Big.Int_>, ?r:Pointer<stdgo.math.big.Big.Int_>)
		stdgo.internal.Macro.initLocals();

	public function toString() {
		return '{' + Go.string(exp) + " " + Go.string(coeff) + " " + Go.string(r) + "}";
	}

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	public function __copy__() {
		return new CRTValue(exp, coeff, r);
	}

	public function __set__(__tmp__) {
		this.exp = __tmp__.exp;
		this.coeff = __tmp__.coeff;
		this.r = __tmp__.r;
		return this;
	}
}

final psssaltLengthAuto:GoInt64 = ((0 : GoUnTypedInt));
var _bigOne:Pointer<stdgo.math.big.Big.Int_> = stdgo.math.big.Big.newInt(((1 : GoInt64)));
var _bigZero:Pointer<stdgo.math.big.Big.Int_> = stdgo.math.big.Big.newInt(((0 : GoInt64)));
var errVerification:stdgo.Error = stdgo.errors.Errors.new_("crypto/rsa: verification error");
var _errPublicExponentLarge:stdgo.Error = stdgo.errors.Errors.new_("crypto/rsa: public exponent too large");
var _errPublicModulus:stdgo.Error = stdgo.errors.Errors.new_("crypto/rsa: missing public modulus");
final psssaltLengthEqualsHash:GoInt64 = -((1 : GoUnTypedInt));

var _hashPrefixes:GoMap<stdgo.crypto.Crypto.Hash, Slice<GoUInt8>> = new GoMap<stdgo.crypto.Crypto.Hash,
	Slice<GoUInt8>>(new stdgo.reflect.Reflect._Type(stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.named("stdgo.crypto.Crypto.Hash", [],
		stdgo.reflect.Reflect.GoType.basic(uint_kind)),
	stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(uint8_kind)))),
	{
		key: stdgo.crypto.Crypto.md5,
		value: new Slice<GoUInt8>(((48 : GoUInt8)), ((32 : GoUInt8)), ((48 : GoUInt8)), ((12 : GoUInt8)), ((6 : GoUInt8)), ((8 : GoUInt8)), ((42 : GoUInt8)),
			((134 : GoUInt8)), ((72 : GoUInt8)), ((134 : GoUInt8)), ((247 : GoUInt8)), ((13 : GoUInt8)), ((2 : GoUInt8)), ((5 : GoUInt8)), ((5 : GoUInt8)),
			((0 : GoUInt8)), ((4 : GoUInt8)), ((16 : GoUInt8)))
	}, {
		key: stdgo.crypto.Crypto.sha1,
		value: new Slice<GoUInt8>(((48 : GoUInt8)), ((33 : GoUInt8)), ((48 : GoUInt8)), ((9 : GoUInt8)), ((6 : GoUInt8)), ((5 : GoUInt8)), ((43 : GoUInt8)),
			((14 : GoUInt8)), ((3 : GoUInt8)), ((2 : GoUInt8)), ((26 : GoUInt8)), ((5 : GoUInt8)), ((0 : GoUInt8)), ((4 : GoUInt8)), ((20 : GoUInt8)))
	}, {
		key: stdgo.crypto.Crypto.sha224,
		value: new Slice<GoUInt8>(((48 : GoUInt8)), ((45 : GoUInt8)), ((48 : GoUInt8)), ((13 : GoUInt8)), ((6 : GoUInt8)), ((9 : GoUInt8)), ((96 : GoUInt8)),
			((134 : GoUInt8)), ((72 : GoUInt8)), ((1 : GoUInt8)), ((101 : GoUInt8)), ((3 : GoUInt8)), ((4 : GoUInt8)), ((2 : GoUInt8)), ((4 : GoUInt8)),
			((5 : GoUInt8)), ((0 : GoUInt8)), ((4 : GoUInt8)), ((28 : GoUInt8)))
	}, {
		key: stdgo.crypto.Crypto.sha256,
		value: new Slice<GoUInt8>(((48 : GoUInt8)), ((49 : GoUInt8)), ((48 : GoUInt8)), ((13 : GoUInt8)), ((6 : GoUInt8)), ((9 : GoUInt8)), ((96 : GoUInt8)),
			((134 : GoUInt8)), ((72 : GoUInt8)), ((1 : GoUInt8)), ((101 : GoUInt8)), ((3 : GoUInt8)), ((4 : GoUInt8)), ((2 : GoUInt8)), ((1 : GoUInt8)),
			((5 : GoUInt8)), ((0 : GoUInt8)), ((4 : GoUInt8)), ((32 : GoUInt8)))
	}, {
		key: stdgo.crypto.Crypto.sha384,
		value: new Slice<GoUInt8>(((48 : GoUInt8)), ((65 : GoUInt8)), ((48 : GoUInt8)), ((13 : GoUInt8)), ((6 : GoUInt8)), ((9 : GoUInt8)), ((96 : GoUInt8)),
			((134 : GoUInt8)), ((72 : GoUInt8)), ((1 : GoUInt8)), ((101 : GoUInt8)), ((3 : GoUInt8)), ((4 : GoUInt8)), ((2 : GoUInt8)), ((2 : GoUInt8)),
			((5 : GoUInt8)), ((0 : GoUInt8)), ((4 : GoUInt8)), ((48 : GoUInt8)))
	}, {
		key: stdgo.crypto.Crypto.sha512,
		value: new Slice<GoUInt8>(((48 : GoUInt8)), ((81 : GoUInt8)), ((48 : GoUInt8)), ((13 : GoUInt8)), ((6 : GoUInt8)), ((9 : GoUInt8)), ((96 : GoUInt8)),
			((134 : GoUInt8)), ((72 : GoUInt8)), ((1 : GoUInt8)), ((101 : GoUInt8)), ((3 : GoUInt8)), ((4 : GoUInt8)), ((2 : GoUInt8)), ((3 : GoUInt8)),
			((5 : GoUInt8)), ((0 : GoUInt8)), ((4 : GoUInt8)), ((64 : GoUInt8)))
	}, {key: stdgo.crypto.Crypto.md5sha1, value: new Slice<GoUInt8>()}, {
		key: stdgo.crypto.Crypto.ripemd160,
		value: new Slice<GoUInt8>(((48 : GoUInt8)), ((32 : GoUInt8)), ((48 : GoUInt8)), ((8 : GoUInt8)), ((6 : GoUInt8)), ((6 : GoUInt8)), ((40 : GoUInt8)),
			((207 : GoUInt8)), ((6 : GoUInt8)), ((3 : GoUInt8)), ((0 : GoUInt8)), ((49 : GoUInt8)), ((4 : GoUInt8)), ((20 : GoUInt8)))
	});

var errDecryption:stdgo.Error = stdgo.errors.Errors.new_("crypto/rsa: decryption error");
var _errPublicExponentSmall:stdgo.Error = stdgo.errors.Errors.new_("crypto/rsa: public exponent too small");
var errMessageTooLong:stdgo.Error = stdgo.errors.Errors.new_("crypto/rsa: message too long for RSA public key size");

/**
	// EncryptPKCS1v15 encrypts the given message with RSA and the padding
	// scheme from PKCS #1 v1.5.  The message must be no longer than the
	// length of the public modulus minus 11 bytes.
	//
	// The rand parameter is used as a source of entropy to ensure that
	// encrypting the same message twice doesn't result in the same
	// ciphertext.
	//
	// WARNING: use of this function to encrypt plaintexts other than
	// session keys is dangerous. Use RSA OAEP in new protocols.
**/
function encryptPKCS1v15(_rand:stdgo.io.Io.Reader, _pub:Pointer<PublicKey>, _msg:Slice<GoByte>):{var _0:Slice<GoByte>; var _1:Error;} {
	crypto.internal.randutil.Randutil.maybeReadByte(_rand);
	{
		var _err:stdgo.Error = _checkPub(_pub);
		if (_err != null) {
			return {_0: new Slice<GoUInt8>().nil(), _1: _err};
		};
	};
	var _k:GoInt = _pub.value.size();
	if (_msg.length > _k - ((11 : GoInt))) {
		return {_0: new Slice<GoUInt8>().nil(), _1: errMessageTooLong};
	};
	var _em:Slice<GoUInt8> = new Slice<GoUInt8>(...[for (i in 0...((_k : GoInt)).toBasic()) ((0 : GoUInt8))]);
	_em[((1 : GoInt))] = ((2 : GoUInt8));
	var _ps:Slice<GoUInt8> = _em.__slice__(((2 : GoInt)), _em.length - _msg.length - ((1 : GoInt))),
		_mm:Slice<GoUInt8> = _em.__slice__(_em.length - _msg.length);
	var _err:stdgo.Error = _nonZeroRandomBytes(_ps, _rand);
	if (_err != null) {
		return {_0: new Slice<GoUInt8>().nil(), _1: _err};
	};
	_em[_em.length - _msg.length - ((1 : GoInt))] = ((0 : GoUInt8));
	Go.copy(_mm, _msg);
	var _m:Pointer<stdgo.math.big.Big.Int_> = Go.pointer(new stdgo.math.big.Big.Int_()).value.setBytes(_em);
	var _c:Pointer<stdgo.math.big.Big.Int_> = _encrypt(Go.pointer(new stdgo.math.big.Big.Int_()), _pub, _m);
	return {_0: _c.value.fillBytes(_em), _1: ((null : stdgo.Error))};
}

/**
	// DecryptPKCS1v15 decrypts a plaintext using RSA and the padding scheme from PKCS #1 v1.5.
	// If rand != nil, it uses RSA blinding to avoid timing side-channel attacks.
	//
	// Note that whether this function returns an error or not discloses secret
	// information. If an attacker can cause this function to run repeatedly and
	// learn whether each instance returned an error then they can decrypt and
	// forge signatures as if they had the private key. See
	// DecryptPKCS1v15SessionKey for a way of solving this problem.
**/
function decryptPKCS1v15(_rand:stdgo.io.Io.Reader, _priv:Pointer<PrivateKey>, _ciphertext:Slice<GoByte>):{var _0:Slice<GoByte>; var _1:Error;} {
	{
		var _err:stdgo.Error = _checkPub(Go.pointer(_priv.value.publicKey));
		if (_err != null) {
			return {_0: new Slice<GoUInt8>().nil(), _1: _err};
		};
	};
	var __tmp__ = _decryptPKCS1v15(_rand, _priv, _ciphertext),
		_valid:GoInt = __tmp__._0,
		_out:Slice<GoUInt8> = __tmp__._1,
		_index:GoInt = __tmp__._2,
		_err:stdgo.Error = __tmp__._3;
	if (_err != null) {
		return {_0: new Slice<GoUInt8>().nil(), _1: _err};
	};
	if (_valid == ((0 : GoInt))) {
		return {_0: new Slice<GoUInt8>().nil(), _1: errDecryption};
	};
	return {_0: _out.__slice__(_index), _1: ((null : stdgo.Error))};
}

/**
	// DecryptPKCS1v15SessionKey decrypts a session key using RSA and the padding scheme from PKCS #1 v1.5.
	// If rand != nil, it uses RSA blinding to avoid timing side-channel attacks.
	// It returns an error if the ciphertext is the wrong length or if the
	// ciphertext is greater than the public modulus. Otherwise, no error is
	// returned. If the padding is valid, the resulting plaintext message is copied
	// into key. Otherwise, key is unchanged. These alternatives occur in constant
	// time. It is intended that the user of this function generate a random
	// session key beforehand and continue the protocol with the resulting value.
	// This will remove any possibility that an attacker can learn any information
	// about the plaintext.
	// See ``Chosen Ciphertext Attacks Against Protocols Based on the RSA
	// Encryption Standard PKCS #1'', Daniel Bleichenbacher, Advances in Cryptology
	// (Crypto '98).
	//
	// Note that if the session key is too small then it may be possible for an
	// attacker to brute-force it. If they can do that then they can learn whether
	// a random value was used (because it'll be different for the same ciphertext)
	// and thus whether the padding was correct. This defeats the point of this
	// function. Using at least a 16-byte key will protect against this attack.
**/
function decryptPKCS1v15SessionKey(_rand:stdgo.io.Io.Reader, _priv:Pointer<PrivateKey>, _ciphertext:Slice<GoByte>, _key:Slice<GoByte>):Error {
	{
		var _err:stdgo.Error = _checkPub(Go.pointer(_priv.value.publicKey));
		if (_err != null) {
			return _err;
		};
	};
	var _k:GoInt = _priv.value.size();
	if (_k - (_key.length + ((3 : GoInt)) + ((8 : GoInt))) < ((0 : GoInt))) {
		return errDecryption;
	};
	var __tmp__ = _decryptPKCS1v15(_rand, _priv, _ciphertext),
		_valid:GoInt = __tmp__._0,
		_em:Slice<GoUInt8> = __tmp__._1,
		_index:GoInt = __tmp__._2,
		_err:stdgo.Error = __tmp__._3;
	if (_err != null) {
		return _err;
	};
	if (_em.length != _k) {
		return errDecryption;
	};
	_valid = _valid & (stdgo.crypto.subtle.Subtle.constantTimeEq((((_em.length - _index) : GoInt32)), ((_key.length : GoInt32))));
	stdgo.crypto.subtle.Subtle.constantTimeCopy(_valid, _key, _em.__slice__(_em.length - _key.length));
	return ((null : stdgo.Error));
}

/**
	// decryptPKCS1v15 decrypts ciphertext using priv and blinds the operation if
	// rand is not nil. It returns one or zero in valid that indicates whether the
	// plaintext was correctly structured. In either case, the plaintext is
	// returned in em so that it may be read independently of whether it was valid
	// in order to maintain constant memory access patterns. If the plaintext was
	// valid then index contains the index of the original message in em.
**/
function _decryptPKCS1v15(_rand:stdgo.io.Io.Reader, _priv:Pointer<PrivateKey>, _ciphertext:Slice<GoByte>):{
	var _0:GoInt;
	var _1:Slice<GoByte>;
	var _2:GoInt;
	var _3:Error;
} {
	var _valid:GoInt = ((0 : GoInt)),
		_em:Slice<GoByte> = new Slice<GoUInt8>().nil(),
		_index:GoInt = ((0 : GoInt)),
		_err:Error = ((null : stdgo.Error));
	var _k:GoInt = _priv.value.size();
	if (_k < ((11 : GoInt))) {
		_err = errDecryption;
		return {
			_0: _valid,
			_1: _em,
			_2: _index,
			_3: _err
		};
	};
	var _c:Pointer<stdgo.math.big.Big.Int_> = Go.pointer(new stdgo.math.big.Big.Int_()).value.setBytes(_ciphertext);
	var __tmp__ = _decrypt(_rand, _priv, _c),
		_m:Pointer<stdgo.math.big.Big.Int_> = __tmp__._0,
		_err:stdgo.Error = __tmp__._1;
	if (_err != null) {
		return {
			_0: _valid,
			_1: _em,
			_2: _index,
			_3: _err
		};
	};
	_em = _m.value.fillBytes(new Slice<GoUInt8>(...[for (i in 0...((_k : GoInt)).toBasic()) ((0 : GoUInt8))]));
	var _firstByteIsZero:GoInt = stdgo.crypto.subtle.Subtle.constantTimeByteEq(_em[((0 : GoInt))], ((0 : GoUInt8)));
	var _secondByteIsTwo:GoInt = stdgo.crypto.subtle.Subtle.constantTimeByteEq(_em[((1 : GoInt))], ((2 : GoUInt8)));
	var _lookingForIndex:GoInt = ((1 : GoInt));
	{
		var _i:GoInt = ((2 : GoInt));
		Go.cfor(_i < _em.length, _i++, {
			var _equals0:GoInt = stdgo.crypto.subtle.Subtle.constantTimeByteEq(_em[_i], ((0 : GoUInt8)));
			_index = stdgo.crypto.subtle.Subtle.constantTimeSelect(_lookingForIndex & _equals0, _i, _index);
			_lookingForIndex = stdgo.crypto.subtle.Subtle.constantTimeSelect(_equals0, ((0 : GoInt)), _lookingForIndex);
		});
	};
	var _validPS:GoInt = stdgo.crypto.subtle.Subtle.constantTimeLessOrEq(((2 : GoUnTypedInt)) + ((8 : GoUnTypedInt)), _index);
	_valid = _firstByteIsZero & _secondByteIsTwo & (-1 ^ _lookingForIndex & ((1 : GoInt))) & _validPS;
	_index = stdgo.crypto.subtle.Subtle.constantTimeSelect(_valid, _index + ((1 : GoInt)), ((0 : GoInt)));
	return {
		_0: _valid,
		_1: _em,
		_2: _index,
		_3: ((null : stdgo.Error))
	};
}

/**
	// nonZeroRandomBytes fills the given slice with non-zero random octets.
**/
function _nonZeroRandomBytes(_s:Slice<GoByte>, _rand:stdgo.io.Io.Reader):Error {
	var _err:Error = ((null : stdgo.Error));
	{
		var __tmp__ = stdgo.io.Io.readFull(_rand, _s);
		_err = __tmp__._1;
	};
	if (_err != null) {
		return _err;
	};
	{
		var _i:GoInt = ((0 : GoInt));
		Go.cfor(_i < _s.length, _i++, {
			while (_s[_i] == ((0 : GoUInt8))) {
				{
					var __tmp__ = stdgo.io.Io.readFull(_rand, _s.__slice__(_i, _i + ((1 : GoInt))));
					_err = __tmp__._1;
				};
				if (_err != null) {
					return _err;
				};
				_s[_i] = _s[_i] ^ (((66 : GoUInt8)));
			};
		});
	};
	return _err;
}

/**
	// SignPKCS1v15 calculates the signature of hashed using
	// RSASSA-PKCS1-V1_5-SIGN from RSA PKCS #1 v1.5.  Note that hashed must
	// be the result of hashing the input message using the given hash
	// function. If hash is zero, hashed is signed directly. This isn't
	// advisable except for interoperability.
	//
	// If rand is not nil then RSA blinding will be used to avoid timing
	// side-channel attacks.
	//
	// This function is deterministic. Thus, if the set of possible
	// messages is small, an attacker may be able to build a map from
	// messages to signatures and identify the signed messages. As ever,
	// signatures provide authenticity, not confidentiality.
**/
function signPKCS1v15(_rand:stdgo.io.Io.Reader, _priv:Pointer<PrivateKey>, _hash:stdgo.crypto.Crypto.Hash,
		_hashed:Slice<GoByte>):{var _0:Slice<GoByte>; var _1:Error;} {
	var __tmp__ = _pkcs1v15HashInfo(_hash, _hashed.length),
		_hashLen:GoInt = __tmp__._0,
		_prefix:Slice<GoUInt8> = __tmp__._1,
		_err:stdgo.Error = __tmp__._2;
	if (_err != null) {
		return {_0: new Slice<GoUInt8>().nil(), _1: _err};
	};
	var _tLen:GoInt = _prefix.length + _hashLen;
	var _k:GoInt = _priv.value.size();
	if (_k < _tLen + ((11 : GoInt))) {
		return {_0: new Slice<GoUInt8>().nil(), _1: errMessageTooLong};
	};
	var _em:Slice<GoUInt8> = new Slice<GoUInt8>(...[for (i in 0...((_k : GoInt)).toBasic()) ((0 : GoUInt8))]);
	_em[((1 : GoInt))] = ((1 : GoUInt8));
	{
		var _i:GoInt = ((2 : GoInt));
		Go.cfor(_i < _k - _tLen - ((1 : GoInt)), _i++, {
			_em[_i] = ((255 : GoUInt8));
		});
	};
	Go.copy(_em.__slice__(_k - _tLen, _k - _hashLen), _prefix);
	Go.copy(_em.__slice__(_k - _hashLen, _k), _hashed);
	var _m:Pointer<stdgo.math.big.Big.Int_> = Go.pointer(new stdgo.math.big.Big.Int_()).value.setBytes(_em);
	var __tmp__ = _decryptAndCheck(_rand, _priv, _m),
		_c:Pointer<stdgo.math.big.Big.Int_> = __tmp__._0,
		_err:stdgo.Error = __tmp__._1;
	if (_err != null) {
		return {_0: new Slice<GoUInt8>().nil(), _1: _err};
	};
	return {_0: _c.value.fillBytes(_em), _1: ((null : stdgo.Error))};
}

/**
	// VerifyPKCS1v15 verifies an RSA PKCS #1 v1.5 signature.
	// hashed is the result of hashing the input message using the given hash
	// function and sig is the signature. A valid signature is indicated by
	// returning a nil error. If hash is zero then hashed is used directly. This
	// isn't advisable except for interoperability.
**/
function verifyPKCS1v15(_pub:Pointer<PublicKey>, _hash:stdgo.crypto.Crypto.Hash, _hashed:Slice<GoByte>, _sig:Slice<GoByte>):Error {
	var __tmp__ = _pkcs1v15HashInfo(_hash, _hashed.length),
		_hashLen:GoInt = __tmp__._0,
		_prefix:Slice<GoUInt8> = __tmp__._1,
		_err:stdgo.Error = __tmp__._2;
	if (_err != null) {
		return _err;
	};
	var _tLen:GoInt = _prefix.length + _hashLen;
	var _k:GoInt = _pub.value.size();
	if (_k < _tLen + ((11 : GoInt))) {
		return errVerification;
	};
	if (_k != _sig.length) {
		return errVerification;
	};
	var _c:Pointer<stdgo.math.big.Big.Int_> = Go.pointer(new stdgo.math.big.Big.Int_()).value.setBytes(_sig);
	var _m:Pointer<stdgo.math.big.Big.Int_> = _encrypt(Go.pointer(new stdgo.math.big.Big.Int_()), _pub, _c);
	var _em:Slice<GoUInt8> = _m.value.fillBytes(new Slice<GoUInt8>(...[for (i in 0...((_k : GoInt)).toBasic()) ((0 : GoUInt8))]));
	var _ok:GoInt = stdgo.crypto.subtle.Subtle.constantTimeByteEq(_em[((0 : GoInt))], ((0 : GoUInt8)));
	_ok = _ok & (stdgo.crypto.subtle.Subtle.constantTimeByteEq(_em[((1 : GoInt))], ((1 : GoUInt8))));
	_ok = _ok & (stdgo.crypto.subtle.Subtle.constantTimeCompare(_em.__slice__(_k - _hashLen, _k), _hashed));
	_ok = _ok & (stdgo.crypto.subtle.Subtle.constantTimeCompare(_em.__slice__(_k - _tLen, _k - _hashLen), _prefix));
	_ok = _ok & (stdgo.crypto.subtle.Subtle.constantTimeByteEq(_em[_k - _tLen - ((1 : GoInt))], ((0 : GoUInt8))));
	{
		var _i:GoInt = ((2 : GoInt));
		Go.cfor(_i < _k - _tLen - ((1 : GoInt)), _i++, {
			_ok = _ok & (stdgo.crypto.subtle.Subtle.constantTimeByteEq(_em[_i], ((255 : GoUInt8))));
		});
	};
	if (_ok != ((1 : GoInt))) {
		return errVerification;
	};
	return ((null : stdgo.Error));
}

function _pkcs1v15HashInfo(_hash:stdgo.crypto.Crypto.Hash, _inLen:GoInt):{var _0:GoInt; var _1:Slice<GoByte>; var _2:Error;} {
	var _hashLen:GoInt = ((0 : GoInt)),
		_prefix:Slice<GoByte> = new Slice<GoUInt8>().nil(),
		_err:Error = ((null : stdgo.Error));
	if (_hash.__t__ == ((0 : GoUInt))) {
		return {_0: _inLen, _1: new Slice<GoUInt8>().nil(), _2: ((null : stdgo.Error))};
	};
	_hashLen = _hash.size();
	if (_inLen != _hashLen) {
		return {_0: ((0 : GoInt)), _1: new Slice<GoUInt8>().nil(), _2: stdgo.errors.Errors.new_("crypto/rsa: input must be hashed message")};
	};
	var __tmp__ = _hashPrefixes.exists(_hash) ? {value: _hashPrefixes[_hash], ok: true} : {value: _hashPrefixes.defaultValue(), ok: false},
		_prefix:Slice<GoUInt8> = __tmp__.value,
		_ok:Bool = __tmp__.ok;
	if (!_ok) {
		return {_0: ((0 : GoInt)), _1: new Slice<GoUInt8>().nil(), _2: stdgo.errors.Errors.new_("crypto/rsa: unsupported hash function")};
	};
	return {_0: _hashLen, _1: _prefix, _2: _err};
}

function _emsaPSSEncode(_mHash:Slice<GoByte>, _emBits:GoInt, _salt:Slice<GoByte>, _hash:stdgo.hash.Hash.Hash):{var _0:Slice<GoByte>; var _1:Error;} {
	var _hLen:GoInt = _hash.size();
	var _sLen:GoInt = _salt.length;
	var _emLen:GoInt = (_emBits + ((7 : GoInt))) / ((8 : GoInt));
	if (_mHash.length != _hLen) {
		return {_0: new Slice<GoUInt8>().nil(), _1: stdgo.errors.Errors.new_("crypto/rsa: input must be hashed with given hash")};
	};
	if (_emLen < _hLen + _sLen + ((2 : GoInt))) {
		return {_0: new Slice<GoUInt8>().nil(), _1: stdgo.errors.Errors.new_("crypto/rsa: key size too small for PSS signature")};
	};
	var _em:Slice<GoUInt8> = new Slice<GoUInt8>(...[for (i in 0...((_emLen : GoInt)).toBasic()) ((0 : GoUInt8))]);
	var _psLen:GoInt = _emLen - _sLen - _hLen - ((2 : GoInt));
	var _db:Slice<GoUInt8> = _em.__slice__(0, _psLen + ((1 : GoInt)) + _sLen);
	var _h:Slice<GoUInt8> = _em.__slice__(_psLen + ((1 : GoInt)) + _sLen, _emLen - ((1 : GoInt)));
	var _prefix:GoArray<GoByte> = new GoArray<GoUInt8>(...[for (i in 0...8) ((0 : GoUInt8))]);
	_hash.write(_prefix.__slice__(0));
	_hash.write(_mHash);
	_hash.write(_salt);
	_h = _hash.sum(_h.__slice__(0, ((0 : GoInt))));
	_hash.reset();
	_db[_psLen] = ((1 : GoUInt8));
	Go.copy(_db.__slice__(_psLen + ((1 : GoInt))), _salt);
	_mgf1XOR(_db, _hash, _h);
	_db[((0 : GoInt))] = _db[((0 : GoInt))] & ((((255 : GoUInt8)) >> (((8 : GoInt)) * _emLen - _emBits)));
	_em[_emLen - ((1 : GoInt))] = ((188 : GoUInt8));
	return {_0: _em, _1: ((null : stdgo.Error))};
}

function _emsaPSSVerify(_mHash:Slice<GoByte>, _em:Slice<GoByte>, _emBits:GoInt, _sLen:GoInt, _hash:stdgo.hash.Hash.Hash):Error {
	var _hLen:GoInt = _hash.size();
	if (_sLen == psssaltLengthEqualsHash) {
		_sLen = _hLen;
	};
	var _emLen:GoInt = (_emBits + ((7 : GoInt))) / ((8 : GoInt));
	if (_emLen != _em.length) {
		return stdgo.errors.Errors.new_("rsa: internal error: inconsistent length");
	};
	if (_hLen != _mHash.length) {
		return errVerification;
	};
	if (_emLen < _hLen + _sLen + ((2 : GoInt))) {
		return errVerification;
	};
	if (_em[_emLen - ((1 : GoInt))] != ((188 : GoUInt8))) {
		return errVerification;
	};
	var _db:Slice<GoUInt8> = _em.__slice__(0, _emLen - _hLen - ((1 : GoInt)));
	var _h:Slice<GoUInt8> = _em.__slice__(_emLen - _hLen - ((1 : GoInt)), _emLen - ((1 : GoInt)));
	var _bitMask:GoByte = (((255 : GoUInt8)) >> (((8 : GoInt)) * _emLen - _emBits));
	if (_em[((0 : GoInt))] & -1 ^ _bitMask != ((0 : GoUInt8))) {
		return errVerification;
	};
	_mgf1XOR(_db, _hash, _h);
	_db[((0 : GoInt))] = _db[((0 : GoInt))] & (_bitMask);
	if (_sLen == psssaltLengthAuto) {
		var _psLen:GoInt = stdgo.bytes.Bytes.indexByte(_db, ((1 : GoUInt8)));
		if (_psLen < ((0 : GoInt))) {
			return errVerification;
		};
		_sLen = _db.length - _psLen - ((1 : GoInt));
	};
	var _psLen:GoInt = _emLen - _hLen - _sLen - ((2 : GoInt));
	for (_ => _e in _db.__slice__(0, _psLen)) {
		if (_e != ((0 : GoUInt8))) {
			return errVerification;
		};
	};
	if (_db[_psLen] != ((1 : GoUInt8))) {
		return errVerification;
	};
	var _salt:Slice<GoUInt8> = _db.__slice__(_db.length - _sLen);
	var _prefix:GoArray<GoByte> = new GoArray<GoUInt8>(...[for (i in 0...8) ((0 : GoUInt8))]);
	_hash.write(_prefix.__slice__(0));
	_hash.write(_mHash);
	_hash.write(_salt);
	var _h0:Slice<GoUInt8> = _hash.sum(new Slice<GoUInt8>().nil());
	if (!stdgo.bytes.Bytes.equal(_h0, _h)) {
		return errVerification;
	};
	return ((null : stdgo.Error));
}

/**
	// signPSSWithSalt calculates the signature of hashed using PSS with specified salt.
	// Note that hashed must be the result of hashing the input message using the
	// given hash function. salt is a random sequence of bytes whose length will be
	// later used to verify the signature.
**/
function _signPSSWithSalt(_rand:stdgo.io.Io.Reader, _priv:Pointer<PrivateKey>, _hash:stdgo.crypto.Crypto.Hash, _hashed:Slice<GoByte>,
		_salt:Slice<GoByte>):{var _0:Slice<GoByte>; var _1:Error;} {
	var _emBits:GoInt = _priv.value.publicKey.n.value.bitLen() - ((1 : GoInt));
	var __tmp__ = _emsaPSSEncode(_hashed, _emBits, _salt, _hash.new_()),
		_em:Slice<GoUInt8> = __tmp__._0,
		_err:stdgo.Error = __tmp__._1;
	if (_err != null) {
		return {_0: new Slice<GoUInt8>().nil(), _1: _err};
	};
	var _m:Pointer<stdgo.math.big.Big.Int_> = Go.pointer(new stdgo.math.big.Big.Int_()).value.setBytes(_em);
	var __tmp__ = _decryptAndCheck(_rand, _priv, _m),
		_c:Pointer<stdgo.math.big.Big.Int_> = __tmp__._0,
		_err:stdgo.Error = __tmp__._1;
	if (_err != null) {
		return {_0: new Slice<GoUInt8>().nil(), _1: _err};
	};
	var _s:Slice<GoUInt8> = new Slice<GoUInt8>(...[for (i in 0...((_priv.value.size() : GoInt)).toBasic()) ((0 : GoUInt8))]);
	return {_0: _c.value.fillBytes(_s), _1: ((null : stdgo.Error))};
}

/**
	// SignPSS calculates the signature of digest using PSS.
	//
	// digest must be the result of hashing the input message using the given hash
	// function. The opts argument may be nil, in which case sensible defaults are
	// used. If opts.Hash is set, it overrides hash.
**/
function signPSS(_rand:stdgo.io.Io.Reader, _priv:Pointer<PrivateKey>, _hash:stdgo.crypto.Crypto.Hash, _digest:Slice<GoByte>,
		_opts:Pointer<PSSOptions>):{var _0:Slice<GoByte>; var _1:Error;} {
	if ((_opts != null && !_opts.isNil()) && _opts.value.hash.__t__ != ((0 : GoUInt))) {
		_hash = _opts.value.hash;
	};
	var _saltLength:GoInt = _opts.value._saltLength();
	if (_saltLength == psssaltLengthAuto) {
		_saltLength = (_priv.value.publicKey.n.value.bitLen() - ((1 : GoInt)) + ((7 : GoInt))) / ((8 : GoInt)) - ((2 : GoInt)) - _hash.size();
	} else if (_saltLength == psssaltLengthEqualsHash) {
		_saltLength = _hash.size();
	};
	var _salt:Slice<GoUInt8> = new Slice<GoUInt8>(...[for (i in 0...((_saltLength : GoInt)).toBasic()) ((0 : GoUInt8))]);
	{
		var __tmp__ = stdgo.io.Io.readFull(_rand, _salt),
			_:GoInt = __tmp__._0,
			_err:stdgo.Error = __tmp__._1;
		if (_err != null) {
			return {_0: new Slice<GoUInt8>().nil(), _1: _err};
		};
	};
	return _signPSSWithSalt(_rand, _priv, _hash, _digest, _salt);
}

/**
	// VerifyPSS verifies a PSS signature.
	//
	// A valid signature is indicated by returning a nil error. digest must be the
	// result of hashing the input message using the given hash function. The opts
	// argument may be nil, in which case sensible defaults are used. opts.Hash is
	// ignored.
**/
function verifyPSS(_pub:Pointer<PublicKey>, _hash:stdgo.crypto.Crypto.Hash, _digest:Slice<GoByte>, _sig:Slice<GoByte>, _opts:Pointer<PSSOptions>):Error {
	if (_sig.length != _pub.value.size()) {
		return errVerification;
	};
	var _s:Pointer<stdgo.math.big.Big.Int_> = Go.pointer(new stdgo.math.big.Big.Int_()).value.setBytes(_sig);
	var _m:Pointer<stdgo.math.big.Big.Int_> = _encrypt(Go.pointer(new stdgo.math.big.Big.Int_()), _pub, _s);
	var _emBits:GoInt = _pub.value.n.value.bitLen() - ((1 : GoInt));
	var _emLen:GoInt = (_emBits + ((7 : GoInt))) / ((8 : GoInt));
	if (_m.value.bitLen() > _emLen * ((8 : GoInt))) {
		return errVerification;
	};
	var _em:Slice<GoUInt8> = _m.value.fillBytes(new Slice<GoUInt8>(...[for (i in 0...((_emLen : GoInt)).toBasic()) ((0 : GoUInt8))]));
	return _emsaPSSVerify(_digest, _em, _emBits, _opts.value._saltLength(), _hash.new_());
}

/**
	// checkPub sanity checks the public key before we use it.
	// We require pub.E to fit into a 32-bit integer so that we
	// do not have different behavior depending on whether
	// int is 32 or 64 bits. See also
	// https://www.imperialviolet.org/2012/03/16/rsae.html.
**/
function _checkPub(_pub:Pointer<PublicKey>):Error {
	if ((_pub.value.n == null || _pub.value.n.isNil())) {
		return _errPublicModulus;
	};
	if (_pub.value.e < ((2 : GoInt))) {
		return _errPublicExponentSmall;
	};
	if (_pub.value.e > (((1 : GoUnTypedInt)) << ((31 : GoUnTypedInt))) - ((1 : GoUnTypedInt))) {
		return _errPublicExponentLarge;
	};
	return ((null : stdgo.Error));
}

/**
	// GenerateKey generates an RSA keypair of the given bit size using the
	// random source random (for example, crypto/rand.Reader).
**/
function generateKey(_random:stdgo.io.Io.Reader, _bits:GoInt):{var _0:Pointer<PrivateKey>; var _1:Error;} {
	return generateMultiPrimeKey(_random, ((2 : GoInt)), _bits);
}

/**
	// GenerateMultiPrimeKey generates a multi-prime RSA keypair of the given bit
	// size and the given random source, as suggested in [1]. Although the public
	// keys are compatible (actually, indistinguishable) from the 2-prime case,
	// the private keys are not. Thus it may not be possible to export multi-prime
	// private keys in certain formats or to subsequently import them into other
	// code.
	//
	// Table 1 in [2] suggests maximum numbers of primes for a given size.
	//
	// [1] US patent 4405829 (1972, expired)
	// [2] http://www.cacr.math.uwaterloo.ca/techreports/2006/cacr2006-16.pdf
**/
function generateMultiPrimeKey(_random:stdgo.io.Io.Reader, _nprimes:GoInt, _bits:GoInt):{var _0:Pointer<PrivateKey>; var _1:Error;} {
	return stdgo.internal.Macro.controlFlow({
		crypto.internal.randutil.Randutil.maybeReadByte(_random);
		var _priv:Pointer<PrivateKey> = Go.pointer(new PrivateKey());
		_priv.value.publicKey.e = ((65537 : GoInt));
		if (_nprimes < ((2 : GoInt))) {
			return {_0: new Pointer<PrivateKey>().nil(), _1: stdgo.errors.Errors.new_("crypto/rsa: GenerateMultiPrimeKey: nprimes must be >= 2")};
		};
		if (_bits < ((64 : GoInt))) {
			var _primeLimit:GoFloat64 = (((((((1 : GoUInt64)) : GoUInt64)) << (((_bits / _nprimes) : GoUInt))) : GoFloat64));
			var _pi:GoFloat64 = _primeLimit / (stdgo.math.Math.log(_primeLimit) - ((1 : GoFloat64)));
			_pi = _pi / (((4 : GoFloat64)));
			_pi = _pi / (((2 : GoFloat64)));
			if (_pi <= ((_nprimes : GoFloat64))) {
				return {_0: new Pointer<PrivateKey>().nil(), _1: stdgo.errors.Errors.new_("crypto/rsa: too few primes of given length to generate an RSA key")};
			};
		};
		var _primes:Slice<Pointer<stdgo.math.big.Big.Int_>> = new Slice<Pointer<stdgo.math.big.Big.Int_>>(...[
			for (i in 0...((_nprimes : GoInt)).toBasic()) new Pointer<stdgo.math.big.Big.Int_>().nil()
		]);
		@:label("NextSetOfPrimes") while (true) {
			var _todo:GoInt = _bits;
			if (_nprimes >= ((7 : GoInt))) {
				_todo = _todo + ((_nprimes - ((2 : GoInt))) / ((5 : GoInt)));
			};
			{
				var _i:GoInt = ((0 : GoInt));
				Go.cfor(_i < _nprimes, _i++, {
					var _err:Error = ((null : stdgo.Error));
					{
						var __tmp__ = stdgo.crypto.rand.Rand.prime(_random, _todo / (_nprimes - _i));
						_primes[_i] = __tmp__._0;
						_err = __tmp__._1;
					};
					if (_err != null) {
						return {_0: new Pointer<PrivateKey>().nil(), _1: _err};
					};
					_todo = _todo - (_primes[_i].value.bitLen());
				});
			};
			for (_i => _prime in _primes) {
				{
					var _j:GoInt = ((0 : GoInt));
					Go.cfor(_j < _i, _j++, {
						if (_prime.value.cmp(_primes[_j]) == ((0 : GoInt))) {
							continue;
						};
					});
				};
			};
			var _n:Pointer<stdgo.math.big.Big.Int_> = Go.pointer(new stdgo.math.big.Big.Int_()).value.set(_bigOne);
			var _totient:Pointer<stdgo.math.big.Big.Int_> = Go.pointer(new stdgo.math.big.Big.Int_()).value.set(_bigOne);
			var _pminus1:Pointer<stdgo.math.big.Big.Int_> = Go.pointer(new stdgo.math.big.Big.Int_());
			for (_ => _prime in _primes) {
				_n.value.mul(_n, _prime);
				_pminus1.value.sub(_prime, _bigOne);
				_totient.value.mul(_totient, _pminus1);
			};
			if (_n.value.bitLen() != _bits) {
				continue;
			};
			_priv.value.d = Go.pointer(new stdgo.math.big.Big.Int_());
			var _e:Pointer<stdgo.math.big.Big.Int_> = stdgo.math.big.Big.newInt(((_priv.value.publicKey.e : GoInt64)));
			var _ok:Pointer<stdgo.math.big.Big.Int_> = _priv.value.d.value.modInverse(_e, _totient);
			if ((_ok != null && !_ok.isNil())) {
				_priv.value.primes = _primes;
				_priv.value.publicKey.n = _n;
				break;
			};
		};
		_priv.value.precompute();
		return {_0: _priv, _1: ((null : stdgo.Error))};
	});
}

/**
	// incCounter increments a four byte, big-endian counter.
**/
function _incCounter(_c:Pointer<GoArray<GoByte>>):Void {
	{
		_c.value[((3 : GoInt))]++;
		if (_c.value[((3 : GoInt))] != ((0 : GoUInt8))) {
			return;
		};
	};
	{
		_c.value[((2 : GoInt))]++;
		if (_c.value[((2 : GoInt))] != ((0 : GoUInt8))) {
			return;
		};
	};
	{
		_c.value[((1 : GoInt))]++;
		if (_c.value[((1 : GoInt))] != ((0 : GoUInt8))) {
			return;
		};
	};
	_c.value[((0 : GoInt))]++;
}

/**
	// mgf1XOR XORs the bytes in out with a mask generated using the MGF1 function
	// specified in PKCS #1 v2.1.
**/
function _mgf1XOR(_out:Slice<GoByte>, _hash:stdgo.hash.Hash.Hash, _seed:Slice<GoByte>):Void {
	var _counter:GoArray<GoByte> = new GoArray<GoUInt8>(...[for (i in 0...4) ((0 : GoUInt8))]);
	var _digest:Slice<GoByte> = new Slice<GoUInt8>().nil();
	var _done:GoInt = ((0 : GoInt));
	while (_done < _out.length) {
		_hash.write(_seed);
		_hash.write(_counter.__slice__(((0 : GoInt)), ((4 : GoInt))));
		_digest = _hash.sum(_digest.__slice__(0, ((0 : GoInt))));
		_hash.reset();
		{
			var _i:GoInt = ((0 : GoInt));
			Go.cfor(_i < _digest.length && _done < _out.length, _i++, {
				_out[_done] = _out[_done] ^ (_digest[_i]);
				_done++;
			});
		};
		_incCounter(Go.pointer(_counter));
	};
}

function _encrypt(_c:Pointer<stdgo.math.big.Big.Int_>, _pub:Pointer<PublicKey>, _m:Pointer<stdgo.math.big.Big.Int_>):Pointer<stdgo.math.big.Big.Int_> {
	var _e:Pointer<stdgo.math.big.Big.Int_> = stdgo.math.big.Big.newInt(((_pub.value.e : GoInt64)));
	_c.value.exp(_m, _e, _pub.value.n);
	return _c;
}

/**
	// EncryptOAEP encrypts the given message with RSA-OAEP.
	//
	// OAEP is parameterised by a hash function that is used as a random oracle.
	// Encryption and decryption of a given message must use the same hash function
	// and sha256.New() is a reasonable choice.
	//
	// The random parameter is used as a source of entropy to ensure that
	// encrypting the same message twice doesn't result in the same ciphertext.
	//
	// The label parameter may contain arbitrary data that will not be encrypted,
	// but which gives important context to the message. For example, if a given
	// public key is used to encrypt two types of messages then distinct label
	// values could be used to ensure that a ciphertext for one purpose cannot be
	// used for another by an attacker. If not required it can be empty.
	//
	// The message must be no longer than the length of the public modulus minus
	// twice the hash length, minus a further 2.
**/
function encryptOAEP(_hash:stdgo.hash.Hash.Hash, _random:stdgo.io.Io.Reader, _pub:Pointer<PublicKey>, _msg:Slice<GoByte>,
		_label:Slice<GoByte>):{var _0:Slice<GoByte>; var _1:Error;} {
	{
		var _err:stdgo.Error = _checkPub(_pub);
		if (_err != null) {
			return {_0: new Slice<GoUInt8>().nil(), _1: _err};
		};
	};
	_hash.reset();
	var _k:GoInt = _pub.value.size();
	if (_msg.length > _k - ((2 : GoInt)) * _hash.size() - ((2 : GoInt))) {
		return {_0: new Slice<GoUInt8>().nil(), _1: errMessageTooLong};
	};
	_hash.write(_label);
	var _lHash:Slice<GoUInt8> = _hash.sum(new Slice<GoUInt8>().nil());
	_hash.reset();
	var _em:Slice<GoUInt8> = new Slice<GoUInt8>(...[for (i in 0...((_k : GoInt)).toBasic()) ((0 : GoUInt8))]);
	var _seed:Slice<GoUInt8> = _em.__slice__(((1 : GoInt)), ((1 : GoInt)) + _hash.size());
	var _db:Slice<GoUInt8> = _em.__slice__(((1 : GoInt)) + _hash.size());
	Go.copy(_db.__slice__(((0 : GoInt)), _hash.size()), _lHash);
	_db[_db.length - _msg.length - ((1 : GoInt))] = ((1 : GoUInt8));
	Go.copy(_db.__slice__(_db.length - _msg.length), _msg);
	var __tmp__ = stdgo.io.Io.readFull(_random, _seed),
		_:GoInt = __tmp__._0,
		_err:stdgo.Error = __tmp__._1;
	if (_err != null) {
		return {_0: new Slice<GoUInt8>().nil(), _1: _err};
	};
	_mgf1XOR(_db, _hash, _seed);
	_mgf1XOR(_seed, _hash, _db);
	var _m:Pointer<stdgo.math.big.Big.Int_> = Go.pointer(new stdgo.math.big.Big.Int_());
	_m.value.setBytes(_em);
	var _c:Pointer<stdgo.math.big.Big.Int_> = _encrypt(Go.pointer(new stdgo.math.big.Big.Int_()), _pub, _m);
	var _out:Slice<GoUInt8> = new Slice<GoUInt8>(...[for (i in 0...((_k : GoInt)).toBasic()) ((0 : GoUInt8))]);
	return {_0: _c.value.fillBytes(_out), _1: ((null : stdgo.Error))};
}

/**
	// decrypt performs an RSA decryption, resulting in a plaintext integer. If a
	// random source is given, RSA blinding is used.
**/
function _decrypt(_random:stdgo.io.Io.Reader, _priv:Pointer<PrivateKey>,
		_c:Pointer<stdgo.math.big.Big.Int_>):{var _0:Pointer<stdgo.math.big.Big.Int_>; var _1:Error;} {
	var _m:Pointer<stdgo.math.big.Big.Int_> = new Pointer<stdgo.math.big.Big.Int_>().nil(),
		_err:Error = ((null : stdgo.Error));
	if (_c.value.cmp(_priv.value.publicKey.n) > ((0 : GoInt))) {
		_err = errDecryption;
		return {_0: _m, _1: _err};
	};
	if (_priv.value.publicKey.n.value.sign() == ((0 : GoInt))) {
		return {_0: new Pointer<stdgo.math.big.Big.Int_>().nil(), _1: errDecryption};
	};
	var _ir:Pointer<stdgo.math.big.Big.Int_> = new Pointer<stdgo.math.big.Big.Int_>().nil();
	if (_random != null) {
		crypto.internal.randutil.Randutil.maybeReadByte(_random);
		var _r:Pointer<stdgo.math.big.Big.Int_> = new Pointer<stdgo.math.big.Big.Int_>().nil();
		_ir = Go.pointer(new stdgo.math.big.Big.Int_());
		while (true) {
			{
				var __tmp__ = stdgo.crypto.rand.Rand.int(_random, _priv.value.publicKey.n);
				_r = __tmp__._0;
				_err = __tmp__._1;
			};
			if (_err != null) {
				return {_0: _m, _1: _err};
			};
			if (_r.value.cmp(_bigZero) == ((0 : GoInt))) {
				_r = _bigOne;
			};
			var _ok:Pointer<stdgo.math.big.Big.Int_> = _ir.value.modInverse(_r, _priv.value.publicKey.n);
			if ((_ok != null && !_ok.isNil())) {
				break;
			};
		};
		var _bigE:Pointer<stdgo.math.big.Big.Int_> = stdgo.math.big.Big.newInt(((_priv.value.publicKey.e : GoInt64)));
		var _rpowe:Pointer<stdgo.math.big.Big.Int_> = Go.pointer(new stdgo.math.big.Big.Int_()).value.exp(_r, _bigE, _priv.value.publicKey.n);
		var _cCopy:Pointer<stdgo.math.big.Big.Int_> = Go.pointer(new stdgo.math.big.Big.Int_()).value.set(_c);
		_cCopy.value.mul(_cCopy, _rpowe);
		_cCopy.value.mod(_cCopy, _priv.value.publicKey.n);
		_c = _cCopy;
	};
	if ((_priv.value.precomputed.dp == null || _priv.value.precomputed.dp.isNil())) {
		_m = Go.pointer(new stdgo.math.big.Big.Int_()).value.exp(_c, _priv.value.d, _priv.value.publicKey.n);
	} else {
		_m = Go.pointer(new stdgo.math.big.Big.Int_()).value.exp(_c, _priv.value.precomputed.dp, _priv.value.primes[((0 : GoInt))]);
		var _m2:Pointer<stdgo.math.big.Big.Int_> = Go.pointer(new stdgo.math.big.Big.Int_())
			.value.exp(_c, _priv.value.precomputed.dq, _priv.value.primes[((1 : GoInt))]);
		_m.value.sub(_m, _m2);
		if (_m.value.sign() < ((0 : GoInt))) {
			_m.value.add(_m, _priv.value.primes[((0 : GoInt))]);
		};
		_m.value.mul(_m, _priv.value.precomputed.qinv);
		_m.value.mod(_m, _priv.value.primes[((0 : GoInt))]);
		_m.value.mul(_m, _priv.value.primes[((1 : GoInt))]);
		_m.value.add(_m, _m2);
		for (_i => _values in _priv.value.precomputed.crtvalues) {
			var _prime:Pointer<stdgo.math.big.Big.Int_> = _priv.value.primes[((2 : GoInt)) + _i];
			_m2.value.exp(_c, _values.exp, _prime);
			_m2.value.sub(_m2, _m);
			_m2.value.mul(_m2, _values.coeff);
			_m2.value.mod(_m2, _prime);
			if (_m2.value.sign() < ((0 : GoInt))) {
				_m2.value.add(_m2, _prime);
			};
			_m2.value.mul(_m2, _values.r);
			_m.value.add(_m, _m2);
		};
	};
	if ((_ir != null && !_ir.isNil())) {
		_m.value.mul(_m, _ir);
		_m.value.mod(_m, _priv.value.publicKey.n);
	};
	return {_0: _m, _1: _err};
}

function _decryptAndCheck(_random:stdgo.io.Io.Reader, _priv:Pointer<PrivateKey>,
		_c:Pointer<stdgo.math.big.Big.Int_>):{var _0:Pointer<stdgo.math.big.Big.Int_>; var _1:Error;} {
	var _m:Pointer<stdgo.math.big.Big.Int_> = new Pointer<stdgo.math.big.Big.Int_>().nil(),
		_err:Error = ((null : stdgo.Error));
	{
		var __tmp__ = _decrypt(_random, _priv, _c);
		_m = __tmp__._0;
		_err = __tmp__._1;
	};
	if (_err != null) {
		return {_0: new Pointer<stdgo.math.big.Big.Int_>().nil(), _1: _err};
	};
	var _check:Pointer<stdgo.math.big.Big.Int_> = _encrypt(Go.pointer(new stdgo.math.big.Big.Int_()), Go.pointer(_priv.value.publicKey), _m);
	if (_c.value.cmp(_check) != ((0 : GoInt))) {
		return {_0: new Pointer<stdgo.math.big.Big.Int_>().nil(), _1: stdgo.errors.Errors.new_("rsa: internal error")};
	};
	return {_0: _m, _1: ((null : stdgo.Error))};
}

/**
	// DecryptOAEP decrypts ciphertext using RSA-OAEP.
	//
	// OAEP is parameterised by a hash function that is used as a random oracle.
	// Encryption and decryption of a given message must use the same hash function
	// and sha256.New() is a reasonable choice.
	//
	// The random parameter, if not nil, is used to blind the private-key operation
	// and avoid timing side-channel attacks. Blinding is purely internal to this
	// function – the random data need not match that used when encrypting.
	//
	// The label parameter must match the value given when encrypting. See
	// EncryptOAEP for details.
**/
function decryptOAEP(_hash:stdgo.hash.Hash.Hash, _random:stdgo.io.Io.Reader, _priv:Pointer<PrivateKey>, _ciphertext:Slice<GoByte>,
		_label:Slice<GoByte>):{var _0:Slice<GoByte>; var _1:Error;} {
	{
		var _err:stdgo.Error = _checkPub(Go.pointer(_priv.value.publicKey));
		if (_err != null) {
			return {_0: new Slice<GoUInt8>().nil(), _1: _err};
		};
	};
	var _k:GoInt = _priv.value.size();
	if (_ciphertext.length > _k || _k < _hash.size() * ((2 : GoInt)) + ((2 : GoInt))) {
		return {_0: new Slice<GoUInt8>().nil(), _1: errDecryption};
	};
	var _c:Pointer<stdgo.math.big.Big.Int_> = Go.pointer(new stdgo.math.big.Big.Int_()).value.setBytes(_ciphertext);
	var __tmp__ = _decrypt(_random, _priv, _c),
		_m:Pointer<stdgo.math.big.Big.Int_> = __tmp__._0,
		_err:stdgo.Error = __tmp__._1;
	if (_err != null) {
		return {_0: new Slice<GoUInt8>().nil(), _1: _err};
	};
	_hash.write(_label);
	var _lHash:Slice<GoUInt8> = _hash.sum(new Slice<GoUInt8>().nil());
	_hash.reset();
	var _em:Slice<GoUInt8> = _m.value.fillBytes(new Slice<GoUInt8>(...[for (i in 0...((_k : GoInt)).toBasic()) ((0 : GoUInt8))]));
	var _firstByteIsZero:GoInt = stdgo.crypto.subtle.Subtle.constantTimeByteEq(_em[((0 : GoInt))], ((0 : GoUInt8)));
	var _seed:Slice<GoUInt8> = _em.__slice__(((1 : GoInt)), _hash.size() + ((1 : GoInt)));
	var _db:Slice<GoUInt8> = _em.__slice__(_hash.size() + ((1 : GoInt)));
	_mgf1XOR(_seed, _hash, _db);
	_mgf1XOR(_db, _hash, _seed);
	var _lHash2:Slice<GoUInt8> = _db.__slice__(((0 : GoInt)), _hash.size());
	var _lHash2Good:GoInt = stdgo.crypto.subtle.Subtle.constantTimeCompare(_lHash, _lHash2);
	var _lookingForIndex:GoInt = ((0 : GoInt)),
		_index:GoInt = ((0 : GoInt)),
		_invalid:GoInt = ((0 : GoInt));
	_lookingForIndex = ((1 : GoInt));
	var _rest:Slice<GoUInt8> = _db.__slice__(_hash.size());
	{
		var _i:GoInt = ((0 : GoInt));
		Go.cfor(_i < _rest.length, _i++, {
			var _equals0:GoInt = stdgo.crypto.subtle.Subtle.constantTimeByteEq(_rest[_i], ((0 : GoUInt8)));
			var _equals1:GoInt = stdgo.crypto.subtle.Subtle.constantTimeByteEq(_rest[_i], ((1 : GoUInt8)));
			_index = stdgo.crypto.subtle.Subtle.constantTimeSelect(_lookingForIndex & _equals1, _i, _index);
			_lookingForIndex = stdgo.crypto.subtle.Subtle.constantTimeSelect(_equals1, ((0 : GoInt)), _lookingForIndex);
			_invalid = stdgo.crypto.subtle.Subtle.constantTimeSelect((_lookingForIndex & _equals0) ^ ((-1 : GoUnTypedInt)), ((1 : GoInt)), _invalid);
		});
	};
	if (((_firstByteIsZero & _lHash2Good & _invalid) ^ ((-1 : GoUnTypedInt)) & _lookingForIndex) ^ ((-1 : GoUnTypedInt)) != ((1 : GoInt))) {
		return {_0: new Slice<GoUInt8>().nil(), _1: errDecryption};
	};
	return {_0: _rest.__slice__(_index + ((1 : GoInt))), _1: ((null : stdgo.Error))};
}

class PSSOptions_extension_fields {
	public function hashFunc(__tmp__):stdgo.crypto.Crypto.Hash
		return __tmp__.hashFunc();

	public function _saltLength(__tmp__):GoInt
		return __tmp__._saltLength();
}

class PublicKey_extension_fields {
	public function size(__tmp__):GoInt
		return __tmp__.size();

	public function equal(__tmp__, _x:stdgo.crypto.Crypto.PublicKey):Bool
		return __tmp__.equal(_x);
}

class PrivateKey_extension_fields {
	public function public_(__tmp__):stdgo.crypto.Crypto.PublicKey
		return __tmp__.public_();

	public function equal(__tmp__, _x:stdgo.crypto.Crypto.PrivateKey):Bool
		return __tmp__.equal(_x);

	public function sign(__tmp__, _rand:stdgo.io.Io.Reader, _digest:Slice<GoByte>, _opts:stdgo.crypto.Crypto.SignerOpts):{var _0:Slice<GoByte>; var _1:Error;}
		return __tmp__.sign(_rand, _digest, _opts);

	public function decrypt(__tmp__, _rand:stdgo.io.Io.Reader, _ciphertext:Slice<GoByte>,
			_opts:stdgo.crypto.Crypto.DecrypterOpts):{var _0:Slice<GoByte>; var _1:Error;}
		return __tmp__.decrypt(_rand, _ciphertext, _opts);

	public function validate(__tmp__):Error
		return __tmp__.validate();

	public function precompute(__tmp__):Void
		__tmp__.precompute();
}
