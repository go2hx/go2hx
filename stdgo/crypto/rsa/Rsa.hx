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
var _hashPrefixes : GoMap<stdgo.crypto.Crypto.Hash, Slice<GoUInt8>> = Go.map(((2 : GoUInt)) => @:invalid_compositelit_null null, ((3 : GoUInt)) => @:invalid_compositelit_null null, ((4 : GoUInt)) => @:invalid_compositelit_null null, ((5 : GoUInt)) => @:invalid_compositelit_null null, ((6 : GoUInt)) => @:invalid_compositelit_null null, ((7 : GoUInt)) => @:invalid_compositelit_null null, ((8 : GoUInt)) => @:invalid_compositelit_null null, ((9 : GoUInt)) => @:invalid_compositelit_null null);
var _bigZero : Ref<stdgo.math.big.Big.Int_> = stdgo.math.big.Big.newInt(((0 : GoInt64)));
var _bigOne : Ref<stdgo.math.big.Big.Int_> = stdgo.math.big.Big.newInt(((1 : GoInt64)));
var _errPublicModulus : stdgo.Error = stdgo.errors.Errors.new_(((("crypto/rsa: missing public modulus" : GoString))));
var _errPublicExponentSmall : stdgo.Error = stdgo.errors.Errors.new_(((("crypto/rsa: public exponent too small" : GoString))));
var _errPublicExponentLarge : stdgo.Error = stdgo.errors.Errors.new_(((("crypto/rsa: public exponent too large" : GoString))));
var errMessageTooLong : stdgo.Error = stdgo.errors.Errors.new_(((("crypto/rsa: message too long for RSA public key size" : GoString))));
var errDecryption : stdgo.Error = stdgo.errors.Errors.new_(((("crypto/rsa: decryption error" : GoString))));
var errVerification : stdgo.Error = stdgo.errors.Errors.new_(((("crypto/rsa: verification error" : GoString))));
@:structInit class PKCS1v15DecryptOptions {
    public var sessionKeyLen : GoInt = ((0 : GoInt));
    public function new(?sessionKeyLen:GoInt) {
        if (sessionKeyLen != null) this.sessionKeyLen = sessionKeyLen;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new PKCS1v15DecryptOptions(sessionKeyLen);
    }
}
@:structInit @:using(stdgo.crypto.rsa.Rsa.PSSOptions_static_extension) class PSSOptions {
    public var saltLength : GoInt = ((0 : GoInt));
    public var hash : stdgo.crypto.Crypto.Hash = new stdgo.crypto.Crypto.Hash();
    public function new(?saltLength:GoInt, ?hash:stdgo.crypto.Crypto.Hash) {
        if (saltLength != null) this.saltLength = saltLength;
        if (hash != null) this.hash = hash;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new PSSOptions(saltLength, hash);
    }
}
@:structInit @:using(stdgo.crypto.rsa.Rsa.PublicKey_static_extension) class PublicKey {
    public var n : Ref<stdgo.math.big.Big.Int_> = null;
    public var e : GoInt = ((0 : GoInt));
    public function new(?n:Ref<stdgo.math.big.Big.Int_>, ?e:GoInt) {
        if (n != null) this.n = n;
        if (e != null) this.e = e;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new PublicKey(n, e);
    }
}
@:structInit class OAEPOptions {
    public var hash : stdgo.crypto.Crypto.Hash = new stdgo.crypto.Crypto.Hash();
    public var label : Slice<GoUInt8> = ((null : Slice<GoUInt8>));
    public function new(?hash:stdgo.crypto.Crypto.Hash, ?label:Slice<GoUInt8>) {
        if (hash != null) this.hash = hash;
        if (label != null) this.label = label;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new OAEPOptions(hash, label);
    }
}
@:structInit @:using(stdgo.crypto.rsa.Rsa.PrivateKey_static_extension) class PrivateKey {
    @:embedded
    public var publicKey : PublicKey = new PublicKey();
    public var d : Ref<stdgo.math.big.Big.Int_> = null;
    public var primes : Slice<Ref<stdgo.math.big.Big.Int_>> = ((null : Slice<Ref<stdgo.math.big.Big.Int_>>));
    public var precomputed : PrecomputedValues = new PrecomputedValues();
    public function new(?publicKey:PublicKey, ?d:Ref<stdgo.math.big.Big.Int_>, ?primes:Slice<Ref<stdgo.math.big.Big.Int_>>, ?precomputed:PrecomputedValues) {
        if (publicKey != null) this.publicKey = publicKey;
        if (d != null) this.d = d;
        if (primes != null) this.primes = primes;
        if (precomputed != null) this.precomputed = precomputed;
    }
    public function size():GoInt return publicKey.size();
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new PrivateKey(publicKey, d, primes, precomputed);
    }
}
@:structInit class PrecomputedValues {
    public var dp : Ref<stdgo.math.big.Big.Int_> = null;
    public var dq : Ref<stdgo.math.big.Big.Int_> = null;
    public var qinv : Ref<stdgo.math.big.Big.Int_> = null;
    public var crtvalues : Slice<CRTValue> = ((null : Slice<CRTValue>));
    public function new(?dp:Ref<stdgo.math.big.Big.Int_>, ?dq:Ref<stdgo.math.big.Big.Int_>, ?qinv:Ref<stdgo.math.big.Big.Int_>, ?crtvalues:Slice<CRTValue>) {
        if (dp != null) this.dp = dp;
        if (dq != null) this.dq = dq;
        if (qinv != null) this.qinv = qinv;
        if (crtvalues != null) this.crtvalues = crtvalues;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new PrecomputedValues(dp, dq, qinv, crtvalues);
    }
}
@:structInit class CRTValue {
    public var exp : Ref<stdgo.math.big.Big.Int_> = null;
    public var coeff : Ref<stdgo.math.big.Big.Int_> = null;
    public var r : Ref<stdgo.math.big.Big.Int_> = null;
    public function new(?exp:Ref<stdgo.math.big.Big.Int_>, ?coeff:Ref<stdgo.math.big.Big.Int_>, ?r:Ref<stdgo.math.big.Big.Int_>) {
        if (exp != null) this.exp = exp;
        if (coeff != null) this.coeff = coeff;
        if (r != null) this.r = r;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new CRTValue(exp, coeff, r);
    }
}
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
function encryptPKCS1v15(_rand:stdgo.io.Io.Reader, _pub:PublicKey, _msg:Slice<GoByte>):{ var _0 : Slice<GoByte>; var _1 : Error; } {
        crypto.internal.randutil.Randutil.maybeReadByte(_rand);
        {
            var _err:stdgo.Error = _checkPub(_pub);
            if (_err != null) {
                return { _0 : ((null : Slice<GoUInt8>)), _1 : _err };
            };
        };
        var _k:GoInt = _pub.size();
        if ((_msg != null ? _msg.length : ((0 : GoInt))) > (_k - ((11 : GoInt)))) {
            return { _0 : ((null : Slice<GoUInt8>)), _1 : errMessageTooLong };
        };
        var _em = new Slice<GoUInt8>(...[for (i in 0 ... ((_k : GoInt)).toBasic()) ((0 : GoUInt8))]);
        if (_em != null) _em[((1 : GoInt))] = ((2 : GoUInt8));
        var _ps = ((_em.__slice__(((2 : GoInt)), ((_em != null ? _em.length : ((0 : GoInt))) - (_msg != null ? _msg.length : ((0 : GoInt)))) - ((1 : GoInt))) : Slice<GoUInt8>)), _mm = ((_em.__slice__((_em != null ? _em.length : ((0 : GoInt))) - (_msg != null ? _msg.length : ((0 : GoInt)))) : Slice<GoUInt8>));
        var _err:stdgo.Error = _nonZeroRandomBytes(_ps, _rand);
        if (_err != null) {
            return { _0 : ((null : Slice<GoUInt8>)), _1 : _err };
        };
        if (_em != null) _em[((_em != null ? _em.length : ((0 : GoInt))) - (_msg != null ? _msg.length : ((0 : GoInt)))) - ((1 : GoInt))] = ((0 : GoUInt8));
        Go.copySlice(_mm, _msg);
        var _m = new stdgo.math.big.Big.Int_().setBytes(_em);
        var _c = _encrypt(new stdgo.math.big.Big.Int_(), _pub, _m);
        return { _0 : _c.fillBytes(_em), _1 : ((null : stdgo.Error)) };
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
function decryptPKCS1v15(_rand:stdgo.io.Io.Reader, _priv:PrivateKey, _ciphertext:Slice<GoByte>):{ var _0 : Slice<GoByte>; var _1 : Error; } {
        {
            var _err:stdgo.Error = _checkPub(_priv.publicKey);
            if (_err != null) {
                return { _0 : ((null : Slice<GoUInt8>)), _1 : _err };
            };
        };
        var __tmp__ = _decryptPKCS1v15(_rand, _priv, _ciphertext), _valid:GoInt = __tmp__._0, _out:Slice<GoUInt8> = __tmp__._1, _index:GoInt = __tmp__._2, _err:stdgo.Error = __tmp__._3;
        if (_err != null) {
            return { _0 : ((null : Slice<GoUInt8>)), _1 : _err };
        };
        if (_valid == ((0 : GoInt))) {
            return { _0 : ((null : Slice<GoUInt8>)), _1 : errDecryption };
        };
        return { _0 : ((_out.__slice__(_index) : Slice<GoUInt8>)), _1 : ((null : stdgo.Error)) };
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
function decryptPKCS1v15SessionKey(_rand:stdgo.io.Io.Reader, _priv:PrivateKey, _ciphertext:Slice<GoByte>, _key:Slice<GoByte>):Error {
        {
            var _err:stdgo.Error = _checkPub(_priv.publicKey);
            if (_err != null) {
                return _err;
            };
        };
        var _k:GoInt = _priv.size();
        if ((_k - (((_key != null ? _key.length : ((0 : GoInt))) + ((3 : GoInt))) + ((8 : GoInt)))) < ((0 : GoInt))) {
            return errDecryption;
        };
        var __tmp__ = _decryptPKCS1v15(_rand, _priv, _ciphertext), _valid:GoInt = __tmp__._0, _em:Slice<GoUInt8> = __tmp__._1, _index:GoInt = __tmp__._2, _err:stdgo.Error = __tmp__._3;
        if (_err != null) {
            return _err;
        };
        if ((_em != null ? _em.length : ((0 : GoInt))) != _k) {
            return errDecryption;
        };
        _valid = _valid & (stdgo.crypto.subtle.Subtle.constantTimeEq(((((_em != null ? _em.length : ((0 : GoInt))) - _index) : GoInt32)), (((_key != null ? _key.length : ((0 : GoInt))) : GoInt32))));
        stdgo.crypto.subtle.Subtle.constantTimeCopy(_valid, _key, ((_em.__slice__((_em != null ? _em.length : ((0 : GoInt))) - (_key != null ? _key.length : ((0 : GoInt)))) : Slice<GoUInt8>)));
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
function _decryptPKCS1v15(_rand:stdgo.io.Io.Reader, _priv:PrivateKey, _ciphertext:Slice<GoByte>):{ var _0 : GoInt; var _1 : Slice<GoByte>; var _2 : GoInt; var _3 : Error; } {
        var _valid:GoInt = ((0 : GoInt)), _em:Slice<GoByte> = ((null : Slice<GoUInt8>)), _index:GoInt = ((0 : GoInt)), _err:Error = ((null : stdgo.Error));
        var _k:GoInt = _priv.size();
        if (_k < ((11 : GoInt))) {
            _err = errDecryption;
            return { _0 : _valid, _1 : _em, _2 : _index, _3 : _err };
        };
        var _c = new stdgo.math.big.Big.Int_().setBytes(_ciphertext);
        var __tmp__ = _decrypt(_rand, _priv, _c), _m:Ref<stdgo.math.big.Big.Int_> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : _valid, _1 : _em, _2 : _index, _3 : _err };
        };
        _em = _m.fillBytes(new Slice<GoUInt8>(...[for (i in 0 ... ((_k : GoInt)).toBasic()) ((0 : GoUInt8))]));
        var _firstByteIsZero:GoInt = stdgo.crypto.subtle.Subtle.constantTimeByteEq((_em != null ? _em[((0 : GoInt))] : ((0 : GoUInt8))), ((0 : GoUInt8)));
        var _secondByteIsTwo:GoInt = stdgo.crypto.subtle.Subtle.constantTimeByteEq((_em != null ? _em[((1 : GoInt))] : ((0 : GoUInt8))), ((2 : GoUInt8)));
        var _lookingForIndex:GoInt = ((1 : GoInt));
        {
            var _i:GoInt = ((2 : GoInt));
            Go.cfor(_i < (_em != null ? _em.length : ((0 : GoInt))), _i++, {
                var _equals0:GoInt = stdgo.crypto.subtle.Subtle.constantTimeByteEq((_em != null ? _em[_i] : ((0 : GoUInt8))), ((0 : GoUInt8)));
                _index = stdgo.crypto.subtle.Subtle.constantTimeSelect(_lookingForIndex & _equals0, _i, _index);
                _lookingForIndex = stdgo.crypto.subtle.Subtle.constantTimeSelect(_equals0, ((0 : GoInt)), _lookingForIndex);
            });
        };
        var _validPS:GoInt = stdgo.crypto.subtle.Subtle.constantTimeLessOrEq(((10 : GoInt)), _index);
        _valid = ((_firstByteIsZero & _secondByteIsTwo) & ((-1 ^ _lookingForIndex) & ((1 : GoInt)))) & _validPS;
        _index = stdgo.crypto.subtle.Subtle.constantTimeSelect(_valid, _index + ((1 : GoInt)), ((0 : GoInt)));
        return { _0 : _valid, _1 : _em, _2 : _index, _3 : ((null : stdgo.Error)) };
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
            Go.cfor(_i < (_s != null ? _s.length : ((0 : GoInt))), _i++, {
                while ((_s != null ? _s[_i] : ((0 : GoUInt8))) == ((0 : GoUInt8))) {
                    {
                        var __tmp__ = stdgo.io.Io.readFull(_rand, ((_s.__slice__(_i, _i + ((1 : GoInt))) : Slice<GoUInt8>)));
                        _err = __tmp__._1;
                    };
                    if (_err != null) {
                        return _err;
                    };
                    if (_s != null) (_s != null ? _s[_i] : ((0 : GoUInt8))) ^ (((66 : GoUInt8)));
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
function signPKCS1v15(_rand:stdgo.io.Io.Reader, _priv:PrivateKey, _hash:stdgo.crypto.Crypto.Hash, _hashed:Slice<GoByte>):{ var _0 : Slice<GoByte>; var _1 : Error; } {
        var __tmp__ = _pkcs1v15HashInfo(_hash, (_hashed != null ? _hashed.length : ((0 : GoInt)))), _hashLen:GoInt = __tmp__._0, _prefix:Slice<GoUInt8> = __tmp__._1, _err:stdgo.Error = __tmp__._2;
        if (_err != null) {
            return { _0 : ((null : Slice<GoUInt8>)), _1 : _err };
        };
        var _tLen:GoInt = (_prefix != null ? _prefix.length : ((0 : GoInt))) + _hashLen;
        var _k:GoInt = _priv.size();
        if (_k < (_tLen + ((11 : GoInt)))) {
            return { _0 : ((null : Slice<GoUInt8>)), _1 : errMessageTooLong };
        };
        var _em = new Slice<GoUInt8>(...[for (i in 0 ... ((_k : GoInt)).toBasic()) ((0 : GoUInt8))]);
        if (_em != null) _em[((1 : GoInt))] = ((1 : GoUInt8));
        {
            var _i:GoInt = ((2 : GoInt));
            Go.cfor(_i < ((_k - _tLen) - ((1 : GoInt))), _i++, {
                if (_em != null) _em[_i] = ((255 : GoUInt8));
            });
        };
        Go.copySlice(((_em.__slice__(_k - _tLen, _k - _hashLen) : Slice<GoUInt8>)), _prefix);
        Go.copySlice(((_em.__slice__(_k - _hashLen, _k) : Slice<GoUInt8>)), _hashed);
        var _m = new stdgo.math.big.Big.Int_().setBytes(_em);
        var __tmp__ = _decryptAndCheck(_rand, _priv, _m), _c:Ref<stdgo.math.big.Big.Int_> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : ((null : Slice<GoUInt8>)), _1 : _err };
        };
        return { _0 : _c.fillBytes(_em), _1 : ((null : stdgo.Error)) };
    }
/**
    // VerifyPKCS1v15 verifies an RSA PKCS #1 v1.5 signature.
    // hashed is the result of hashing the input message using the given hash
    // function and sig is the signature. A valid signature is indicated by
    // returning a nil error. If hash is zero then hashed is used directly. This
    // isn't advisable except for interoperability.
**/
function verifyPKCS1v15(_pub:PublicKey, _hash:stdgo.crypto.Crypto.Hash, _hashed:Slice<GoByte>, _sig:Slice<GoByte>):Error {
        var __tmp__ = _pkcs1v15HashInfo(_hash, (_hashed != null ? _hashed.length : ((0 : GoInt)))), _hashLen:GoInt = __tmp__._0, _prefix:Slice<GoUInt8> = __tmp__._1, _err:stdgo.Error = __tmp__._2;
        if (_err != null) {
            return _err;
        };
        var _tLen:GoInt = (_prefix != null ? _prefix.length : ((0 : GoInt))) + _hashLen;
        var _k:GoInt = _pub.size();
        if (_k < (_tLen + ((11 : GoInt)))) {
            return errVerification;
        };
        if (_k != (_sig != null ? _sig.length : ((0 : GoInt)))) {
            return errVerification;
        };
        var _c = new stdgo.math.big.Big.Int_().setBytes(_sig);
        var _m = _encrypt(new stdgo.math.big.Big.Int_(), _pub, _c);
        var _em = _m.fillBytes(new Slice<GoUInt8>(...[for (i in 0 ... ((_k : GoInt)).toBasic()) ((0 : GoUInt8))]));
        var _ok:GoInt = stdgo.crypto.subtle.Subtle.constantTimeByteEq((_em != null ? _em[((0 : GoInt))] : ((0 : GoUInt8))), ((0 : GoUInt8)));
        _ok = _ok & (stdgo.crypto.subtle.Subtle.constantTimeByteEq((_em != null ? _em[((1 : GoInt))] : ((0 : GoUInt8))), ((1 : GoUInt8))));
        _ok = _ok & (stdgo.crypto.subtle.Subtle.constantTimeCompare(((_em.__slice__(_k - _hashLen, _k) : Slice<GoUInt8>)), _hashed));
        _ok = _ok & (stdgo.crypto.subtle.Subtle.constantTimeCompare(((_em.__slice__(_k - _tLen, _k - _hashLen) : Slice<GoUInt8>)), _prefix));
        _ok = _ok & (stdgo.crypto.subtle.Subtle.constantTimeByteEq((_em != null ? _em[(_k - _tLen) - ((1 : GoInt))] : ((0 : GoUInt8))), ((0 : GoUInt8))));
        {
            var _i:GoInt = ((2 : GoInt));
            Go.cfor(_i < ((_k - _tLen) - ((1 : GoInt))), _i++, {
                _ok = _ok & (stdgo.crypto.subtle.Subtle.constantTimeByteEq((_em != null ? _em[_i] : ((0 : GoUInt8))), ((255 : GoUInt8))));
            });
        };
        if (_ok != ((1 : GoInt))) {
            return errVerification;
        };
        return ((null : stdgo.Error));
    }
function _pkcs1v15HashInfo(_hash:stdgo.crypto.Crypto.Hash, _inLen:GoInt):{ var _0 : GoInt; var _1 : Slice<GoByte>; var _2 : Error; } {
        var _hashLen:GoInt = ((0 : GoInt)), _prefix:Slice<GoByte> = ((null : Slice<GoUInt8>)), _err:Error = ((null : stdgo.Error));
        if (_hash == ((0 : GoUInt))) {
            return { _0 : _inLen, _1 : ((null : Slice<GoUInt8>)), _2 : ((null : stdgo.Error)) };
        };
        _hashLen = _hash.size();
        if (_inLen != _hashLen) {
            return { _0 : ((0 : GoInt)), _1 : ((null : Slice<GoUInt8>)), _2 : stdgo.errors.Errors.new_(((("crypto/rsa: input must be hashed message" : GoString)))) };
        };
        var __tmp__ = (_hashPrefixes != null && _hashPrefixes.__exists__(_hash) ? { value : _hashPrefixes[_hash], ok : true } : { value : ((null : Slice<GoUInt8>)), ok : false }), _prefix:Slice<GoUInt8> = __tmp__.value, _ok:Bool = __tmp__.ok;
        if (!_ok) {
            return { _0 : ((0 : GoInt)), _1 : ((null : Slice<GoUInt8>)), _2 : stdgo.errors.Errors.new_(((("crypto/rsa: unsupported hash function" : GoString)))) };
        };
        return { _0 : _hashLen, _1 : _prefix, _2 : _err };
    }
function _emsaPSSEncode(_mHash:Slice<GoByte>, _emBits:GoInt, _salt:Slice<GoByte>, _hash:stdgo.hash.Hash.Hash):{ var _0 : Slice<GoByte>; var _1 : Error; } {
        var _hLen:GoInt = _hash.size();
        var _sLen:GoInt = (_salt != null ? _salt.length : ((0 : GoInt)));
        var _emLen:GoInt = (_emBits + ((7 : GoInt))) / ((8 : GoInt));
        if ((_mHash != null ? _mHash.length : ((0 : GoInt))) != _hLen) {
            return { _0 : ((null : Slice<GoUInt8>)), _1 : stdgo.errors.Errors.new_(((("crypto/rsa: input must be hashed with given hash" : GoString)))) };
        };
        if (_emLen < ((_hLen + _sLen) + ((2 : GoInt)))) {
            return { _0 : ((null : Slice<GoUInt8>)), _1 : stdgo.errors.Errors.new_(((("crypto/rsa: key size too small for PSS signature" : GoString)))) };
        };
        var _em = new Slice<GoUInt8>(...[for (i in 0 ... ((_emLen : GoInt)).toBasic()) ((0 : GoUInt8))]);
        var _psLen:GoInt = ((_emLen - _sLen) - _hLen) - ((2 : GoInt));
        var _db = ((_em.__slice__(0, (_psLen + ((1 : GoInt))) + _sLen) : Slice<GoUInt8>));
        var _h = ((_em.__slice__((_psLen + ((1 : GoInt))) + _sLen, _emLen - ((1 : GoInt))) : Slice<GoUInt8>));
        var _prefix:GoArray<GoByte> = new GoArray<GoUInt8>(...[for (i in 0 ... 8) ((0 : GoUInt8))]);
        _hash.write(((_prefix.__slice__(0) : Slice<GoUInt8>)));
        _hash.write(_mHash);
        _hash.write(_salt);
        _h = _hash.sum(((_h.__slice__(0, ((0 : GoInt))) : Slice<GoUInt8>)));
        _hash.reset();
        if (_db != null) _db[_psLen] = ((1 : GoUInt8));
        Go.copySlice(((_db.__slice__(_psLen + ((1 : GoInt))) : Slice<GoUInt8>)), _salt);
        _mgf1XOR(_db, _hash, _h);
        if (_db != null) (_db != null ? _db[((0 : GoInt))] : ((0 : GoUInt8))) & (((255 : GoUInt8)) >> ((((8 : GoInt)) * _emLen) - _emBits));
        if (_em != null) _em[_emLen - ((1 : GoInt))] = ((188 : GoUInt8));
        return { _0 : _em, _1 : ((null : stdgo.Error)) };
    }
function _emsaPSSVerify(_mHash:Slice<GoByte>, _em:Slice<GoByte>, _emBits:GoInt, _sLen:GoInt, _hash:stdgo.hash.Hash.Hash):Error {
        var _hLen:GoInt = _hash.size();
        if (_sLen == ((-1 : GoInt))) {
            _sLen = _hLen;
        };
        var _emLen:GoInt = (_emBits + ((7 : GoInt))) / ((8 : GoInt));
        if (_emLen != (_em != null ? _em.length : ((0 : GoInt)))) {
            return stdgo.errors.Errors.new_(((("rsa: internal error: inconsistent length" : GoString))));
        };
        if (_hLen != (_mHash != null ? _mHash.length : ((0 : GoInt)))) {
            return errVerification;
        };
        if (_emLen < ((_hLen + _sLen) + ((2 : GoInt)))) {
            return errVerification;
        };
        if ((_em != null ? _em[_emLen - ((1 : GoInt))] : ((0 : GoUInt8))) != ((188 : GoUInt8))) {
            return errVerification;
        };
        var _db = ((_em.__slice__(0, (_emLen - _hLen) - ((1 : GoInt))) : Slice<GoUInt8>));
        var _h = ((_em.__slice__((_emLen - _hLen) - ((1 : GoInt)), _emLen - ((1 : GoInt))) : Slice<GoUInt8>));
        var _bitMask:GoByte = ((255 : GoUInt8)) >> ((((8 : GoInt)) * _emLen) - _emBits);
        if (((_em != null ? _em[((0 : GoInt))] : ((0 : GoUInt8))) & (-1 ^ _bitMask)) != ((0 : GoUInt8))) {
            return errVerification;
        };
        _mgf1XOR(_db, _hash, _h);
        if (_db != null) (_db != null ? _db[((0 : GoInt))] : ((0 : GoUInt8))) & (_bitMask);
        if (_sLen == ((0 : GoInt))) {
            var _psLen:GoInt = stdgo.bytes.Bytes.indexByte(_db, ((1 : GoUInt8)));
            if (_psLen < ((0 : GoInt))) {
                return errVerification;
            };
            _sLen = ((_db != null ? _db.length : ((0 : GoInt))) - _psLen) - ((1 : GoInt));
        };
        var _psLen:GoInt = ((_emLen - _hLen) - _sLen) - ((2 : GoInt));
        for (_0 => _e in ((_db.__slice__(0, _psLen) : Slice<GoUInt8>))) {
            if (_e != ((0 : GoUInt8))) {
                return errVerification;
            };
        };
        if ((_db != null ? _db[_psLen] : ((0 : GoUInt8))) != ((1 : GoUInt8))) {
            return errVerification;
        };
        var _salt = ((_db.__slice__((_db != null ? _db.length : ((0 : GoInt))) - _sLen) : Slice<GoUInt8>));
        var _prefix:GoArray<GoByte> = new GoArray<GoUInt8>(...[for (i in 0 ... 8) ((0 : GoUInt8))]);
        _hash.write(((_prefix.__slice__(0) : Slice<GoUInt8>)));
        _hash.write(_mHash);
        _hash.write(_salt);
        var _h0 = _hash.sum(((null : Slice<GoUInt8>)));
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
function _signPSSWithSalt(_rand:stdgo.io.Io.Reader, _priv:PrivateKey, _hash:stdgo.crypto.Crypto.Hash, _hashed:Slice<GoByte>, _salt:Slice<GoByte>):{ var _0 : Slice<GoByte>; var _1 : Error; } {
        var _emBits:GoInt = _priv.n.bitLen() - ((1 : GoInt));
        var __tmp__ = _emsaPSSEncode(_hashed, _emBits, _salt, _hash.new_()), _em:Slice<GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : ((null : Slice<GoUInt8>)), _1 : _err };
        };
        var _m = new stdgo.math.big.Big.Int_().setBytes(_em);
        var __tmp__ = _decryptAndCheck(_rand, _priv, _m), _c:Ref<stdgo.math.big.Big.Int_> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : ((null : Slice<GoUInt8>)), _1 : _err };
        };
        var _s = new Slice<GoUInt8>(...[for (i in 0 ... ((_priv.size() : GoInt)).toBasic()) ((0 : GoUInt8))]);
        return { _0 : _c.fillBytes(_s), _1 : ((null : stdgo.Error)) };
    }
/**
    // SignPSS calculates the signature of digest using PSS.
    //
    // digest must be the result of hashing the input message using the given hash
    // function. The opts argument may be nil, in which case sensible defaults are
    // used. If opts.Hash is set, it overrides hash.
**/
function signPSS(_rand:stdgo.io.Io.Reader, _priv:PrivateKey, _hash:stdgo.crypto.Crypto.Hash, _digest:Slice<GoByte>, _opts:PSSOptions):{ var _0 : Slice<GoByte>; var _1 : Error; } {
        if ((_opts != null) && (_opts.hash != ((0 : GoUInt)))) {
            _hash = _opts.hash;
        };
        var _saltLength:GoInt = _opts._saltLength();
        if (_saltLength == ((0 : GoInt))) {
            _saltLength = ((((_priv.n.bitLen() - ((1 : GoInt))) + ((7 : GoInt))) / ((8 : GoInt))) - ((2 : GoInt))) - _hash.size();
        } else if (_saltLength == ((-1 : GoInt))) {
            _saltLength = _hash.size();
        };
        var _salt = new Slice<GoUInt8>(...[for (i in 0 ... ((_saltLength : GoInt)).toBasic()) ((0 : GoUInt8))]);
        {
            var __tmp__ = stdgo.io.Io.readFull(_rand, _salt), _0:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return { _0 : ((null : Slice<GoUInt8>)), _1 : _err };
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
function verifyPSS(_pub:PublicKey, _hash:stdgo.crypto.Crypto.Hash, _digest:Slice<GoByte>, _sig:Slice<GoByte>, _opts:PSSOptions):Error {
        if ((_sig != null ? _sig.length : ((0 : GoInt))) != _pub.size()) {
            return errVerification;
        };
        var _s = new stdgo.math.big.Big.Int_().setBytes(_sig);
        var _m = _encrypt(new stdgo.math.big.Big.Int_(), _pub, _s);
        var _emBits:GoInt = _pub.n.bitLen() - ((1 : GoInt));
        var _emLen:GoInt = (_emBits + ((7 : GoInt))) / ((8 : GoInt));
        if (_m.bitLen() > (_emLen * ((8 : GoInt)))) {
            return errVerification;
        };
        var _em = _m.fillBytes(new Slice<GoUInt8>(...[for (i in 0 ... ((_emLen : GoInt)).toBasic()) ((0 : GoUInt8))]));
        return _emsaPSSVerify(_digest, _em, _emBits, _opts._saltLength(), _hash.new_());
    }
/**
    // checkPub sanity checks the public key before we use it.
    // We require pub.E to fit into a 32-bit integer so that we
    // do not have different behavior depending on whether
    // int is 32 or 64 bits. See also
    // https://www.imperialviolet.org/2012/03/16/rsae.html.
**/
function _checkPub(_pub:PublicKey):Error {
        if (_pub.n == null) {
            return _errPublicModulus;
        };
        if (_pub.e < ((2 : GoInt))) {
            return _errPublicExponentSmall;
        };
        if (_pub.e > ((2147483647 : GoInt))) {
            return _errPublicExponentLarge;
        };
        return ((null : stdgo.Error));
    }
/**
    // GenerateKey generates an RSA keypair of the given bit size using the
    // random source random (for example, crypto/rand.Reader).
**/
function generateKey(_random:stdgo.io.Io.Reader, _bits:GoInt):{ var _0 : PrivateKey; var _1 : Error; } {
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
function generateMultiPrimeKey(_random:stdgo.io.Io.Reader, _nprimes:GoInt, _bits:GoInt):{ var _0 : PrivateKey; var _1 : Error; } {
        return stdgo.internal.Macro.controlFlow({
            crypto.internal.randutil.Randutil.maybeReadByte(_random);
            var _priv = new PrivateKey();
            _priv.e = ((65537 : GoInt));
            if (_nprimes < ((2 : GoInt))) {
                return { _0 : null, _1 : stdgo.errors.Errors.new_(((("crypto/rsa: GenerateMultiPrimeKey: nprimes must be >= 2" : GoString)))) };
            };
            if (_bits < ((64 : GoInt))) {
                var _primeLimit:GoFloat64 = (((((((1 : GoUInt64)) : GoUInt64)) << (((_bits / _nprimes) : GoUInt))) : GoFloat64));
                var _pi:GoFloat64 = _primeLimit / (stdgo.math.Math.log(_primeLimit) - ((1 : GoFloat64)));
                _pi = _pi / (((4 : GoFloat64)));
                _pi = _pi / (((2 : GoFloat64)));
                if (_pi <= ((_nprimes : GoFloat64))) {
                    return { _0 : null, _1 : stdgo.errors.Errors.new_(((("crypto/rsa: too few primes of given length to generate an RSA key" : GoString)))) };
                };
            };
            var _primes = new Slice<Ref<stdgo.math.big.Big.Int_>>(...[for (i in 0 ... ((_nprimes : GoInt)).toBasic()) null]);
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
                            if (_primes != null) _primes[_i] = __tmp__._0;
                            _err = {
                                final __self__ = new stdgo.Error_wrapper(__tmp__._1);
                                __self__;
                            };
                        };
                        if (_err != null) {
                            return { _0 : null, _1 : _err };
                        };
                        _todo = _todo - ((_primes != null ? _primes[_i] : null).bitLen());
                    });
                };
                for (_i => _prime in _primes) {
                    {
                        var _j:GoInt = ((0 : GoInt));
                        Go.cfor(_j < _i, _j++, {
                            if (_prime.cmp((_primes != null ? _primes[_j] : null)) == ((0 : GoInt))) {
                                continue;
                            };
                        });
                    };
                };
                var _n = new stdgo.math.big.Big.Int_().set(_bigOne);
                var _totient = new stdgo.math.big.Big.Int_().set(_bigOne);
                var _pminus1 = new stdgo.math.big.Big.Int_();
                for (_0 => _prime in _primes) {
                    _n.mul(_n, _prime);
                    _pminus1.sub(_prime, _bigOne);
                    _totient.mul(_totient, _pminus1);
                };
                if (_n.bitLen() != _bits) {
                    continue;
                };
                _priv.d = new stdgo.math.big.Big.Int_();
                var _e = stdgo.math.big.Big.newInt(((_priv.e : GoInt64)));
                var _ok = _priv.d.modInverse(_e, _totient);
                if (_ok != null) {
                    _priv.primes = _primes;
                    _priv.n = _n;
                    break;
                };
            };
            _priv.precompute();
            return { _0 : _priv, _1 : ((null : stdgo.Error)) };
        });
    }
/**
    // incCounter increments a four byte, big-endian counter.
**/
function _incCounter(_c:GoArray<GoByte>):Void {
        {
            if (_c != null) _c[((3 : GoInt))]++;
            if ((_c != null ? _c[((3 : GoInt))] : ((0 : GoUInt8))) != ((0 : GoUInt8))) {
                return;
            };
        };
        {
            if (_c != null) _c[((2 : GoInt))]++;
            if ((_c != null ? _c[((2 : GoInt))] : ((0 : GoUInt8))) != ((0 : GoUInt8))) {
                return;
            };
        };
        {
            if (_c != null) _c[((1 : GoInt))]++;
            if ((_c != null ? _c[((1 : GoInt))] : ((0 : GoUInt8))) != ((0 : GoUInt8))) {
                return;
            };
        };
        if (_c != null) _c[((0 : GoInt))]++;
    }
/**
    // mgf1XOR XORs the bytes in out with a mask generated using the MGF1 function
    // specified in PKCS #1 v2.1.
**/
function _mgf1XOR(_out:Slice<GoByte>, _hash:stdgo.hash.Hash.Hash, _seed:Slice<GoByte>):Void {
        var _counter:GoArray<GoByte> = new GoArray<GoUInt8>(...[for (i in 0 ... 4) ((0 : GoUInt8))]);
        var _digest:Slice<GoByte> = ((null : Slice<GoUInt8>));
        var _done:GoInt = ((0 : GoInt));
        while (_done < (_out != null ? _out.length : ((0 : GoInt)))) {
            _hash.write(_seed);
            _hash.write(((_counter.__slice__(((0 : GoInt)), ((4 : GoInt))) : Slice<GoUInt8>)));
            _digest = _hash.sum(((_digest.__slice__(0, ((0 : GoInt))) : Slice<GoUInt8>)));
            _hash.reset();
            {
                var _i:GoInt = ((0 : GoInt));
                Go.cfor((_i < (_digest != null ? _digest.length : ((0 : GoInt)))) && (_done < (_out != null ? _out.length : ((0 : GoInt)))), _i++, {
                    if (_out != null) (_out != null ? _out[_done] : ((0 : GoUInt8))) ^ ((_digest != null ? _digest[_i] : ((0 : GoUInt8))));
                    _done++;
                });
            };
            _incCounter(_counter);
        };
    }
function _encrypt(_c:stdgo.math.big.Big.Int_, _pub:PublicKey, _m:stdgo.math.big.Big.Int_):stdgo.math.big.Big.Int_ {
        var _e = stdgo.math.big.Big.newInt(((_pub.e : GoInt64)));
        _c.exp(_m, _e, _pub.n);
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
function encryptOAEP(_hash:stdgo.hash.Hash.Hash, _random:stdgo.io.Io.Reader, _pub:PublicKey, _msg:Slice<GoByte>, _label:Slice<GoByte>):{ var _0 : Slice<GoByte>; var _1 : Error; } {
        {
            var _err:stdgo.Error = _checkPub(_pub);
            if (_err != null) {
                return { _0 : ((null : Slice<GoUInt8>)), _1 : _err };
            };
        };
        _hash.reset();
        var _k:GoInt = _pub.size();
        if ((_msg != null ? _msg.length : ((0 : GoInt))) > ((_k - (((2 : GoInt)) * _hash.size())) - ((2 : GoInt)))) {
            return { _0 : ((null : Slice<GoUInt8>)), _1 : errMessageTooLong };
        };
        _hash.write(_label);
        var _lHash = _hash.sum(((null : Slice<GoUInt8>)));
        _hash.reset();
        var _em = new Slice<GoUInt8>(...[for (i in 0 ... ((_k : GoInt)).toBasic()) ((0 : GoUInt8))]);
        var _seed = ((_em.__slice__(((1 : GoInt)), ((1 : GoInt)) + _hash.size()) : Slice<GoUInt8>));
        var _db = ((_em.__slice__(((1 : GoInt)) + _hash.size()) : Slice<GoUInt8>));
        Go.copySlice(((_db.__slice__(((0 : GoInt)), _hash.size()) : Slice<GoUInt8>)), _lHash);
        if (_db != null) _db[((_db != null ? _db.length : ((0 : GoInt))) - (_msg != null ? _msg.length : ((0 : GoInt)))) - ((1 : GoInt))] = ((1 : GoUInt8));
        Go.copySlice(((_db.__slice__((_db != null ? _db.length : ((0 : GoInt))) - (_msg != null ? _msg.length : ((0 : GoInt)))) : Slice<GoUInt8>)), _msg);
        var __tmp__ = stdgo.io.Io.readFull(_random, _seed), _0:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : ((null : Slice<GoUInt8>)), _1 : _err };
        };
        _mgf1XOR(_db, _hash, _seed);
        _mgf1XOR(_seed, _hash, _db);
        var _m = new stdgo.math.big.Big.Int_();
        _m.setBytes(_em);
        var _c = _encrypt(new stdgo.math.big.Big.Int_(), _pub, _m);
        var _out = new Slice<GoUInt8>(...[for (i in 0 ... ((_k : GoInt)).toBasic()) ((0 : GoUInt8))]);
        return { _0 : _c.fillBytes(_out), _1 : ((null : stdgo.Error)) };
    }
/**
    // decrypt performs an RSA decryption, resulting in a plaintext integer. If a
    // random source is given, RSA blinding is used.
**/
function _decrypt(_random:stdgo.io.Io.Reader, _priv:PrivateKey, _c:stdgo.math.big.Big.Int_):{ var _0 : stdgo.math.big.Big.Int_; var _1 : Error; } {
        var _m:stdgo.math.big.Big.Int_ = null, _err:Error = ((null : stdgo.Error));
        if (_c.cmp(_priv.n) > ((0 : GoInt))) {
            _err = errDecryption;
            return { _0 : _m, _1 : _err };
        };
        if (_priv.n.sign() == ((0 : GoInt))) {
            return { _0 : null, _1 : errDecryption };
        };
        var _ir:stdgo.math.big.Big.Int_ = null;
        if (_random != null) {
            crypto.internal.randutil.Randutil.maybeReadByte(_random);
            var _r:stdgo.math.big.Big.Int_ = null;
            _ir = new stdgo.math.big.Big.Int_();
            while (true) {
                {
                    var __tmp__ = stdgo.crypto.rand.Rand.int(_random, _priv.n);
                    _r = __tmp__._0;
                    _err = {
                        final __self__ = new stdgo.Error_wrapper(__tmp__._1);
                        __self__;
                    };
                };
                if (_err != null) {
                    return { _0 : _m, _1 : _err };
                };
                if (_r.cmp(_bigZero) == ((0 : GoInt))) {
                    _r = _bigOne;
                };
                var _ok = _ir.modInverse(_r, _priv.n);
                if (_ok != null) {
                    break;
                };
            };
            var _bigE = stdgo.math.big.Big.newInt(((_priv.e : GoInt64)));
            var _rpowe = new stdgo.math.big.Big.Int_().exp(_r, _bigE, _priv.n);
            var _cCopy = new stdgo.math.big.Big.Int_().set(_c);
            _cCopy.mul(_cCopy, _rpowe);
            _cCopy.mod(_cCopy, _priv.n);
            _c = _cCopy;
        };
        if (_priv.precomputed.dp == null) {
            _m = new stdgo.math.big.Big.Int_().exp(_c, _priv.d, _priv.n);
        } else {
            _m = new stdgo.math.big.Big.Int_().exp(_c, _priv.precomputed.dp, (_priv.primes != null ? _priv.primes[((0 : GoInt))] : null));
            var _m2 = new stdgo.math.big.Big.Int_().exp(_c, _priv.precomputed.dq, (_priv.primes != null ? _priv.primes[((1 : GoInt))] : null));
            _m.sub(_m, _m2);
            if (_m.sign() < ((0 : GoInt))) {
                _m.add(_m, (_priv.primes != null ? _priv.primes[((0 : GoInt))] : null));
            };
            _m.mul(_m, _priv.precomputed.qinv);
            _m.mod(_m, (_priv.primes != null ? _priv.primes[((0 : GoInt))] : null));
            _m.mul(_m, (_priv.primes != null ? _priv.primes[((1 : GoInt))] : null));
            _m.add(_m, _m2);
            for (_i => _values in _priv.precomputed.crtvalues) {
                var _prime = (_priv.primes != null ? _priv.primes[((2 : GoInt)) + _i] : null);
                _m2.exp(_c, _values.exp, _prime);
                _m2.sub(_m2, _m);
                _m2.mul(_m2, _values.coeff);
                _m2.mod(_m2, _prime);
                if (_m2.sign() < ((0 : GoInt))) {
                    _m2.add(_m2, _prime);
                };
                _m2.mul(_m2, _values.r);
                _m.add(_m, _m2);
            };
        };
        if (_ir != null) {
            _m.mul(_m, _ir);
            _m.mod(_m, _priv.n);
        };
        return { _0 : _m, _1 : _err };
    }
function _decryptAndCheck(_random:stdgo.io.Io.Reader, _priv:PrivateKey, _c:stdgo.math.big.Big.Int_):{ var _0 : stdgo.math.big.Big.Int_; var _1 : Error; } {
        var _m:stdgo.math.big.Big.Int_ = null, _err:Error = ((null : stdgo.Error));
        {
            var __tmp__ = _decrypt(_random, _priv, _c);
            _m = __tmp__._0;
            _err = {
                final __self__ = new stdgo.Error_wrapper(__tmp__._1);
                __self__;
            };
        };
        if (_err != null) {
            return { _0 : null, _1 : _err };
        };
        var _check = _encrypt(new stdgo.math.big.Big.Int_(), _priv.publicKey, _m);
        if (_c.cmp(_check) != ((0 : GoInt))) {
            return { _0 : null, _1 : stdgo.errors.Errors.new_(((("rsa: internal error" : GoString)))) };
        };
        return { _0 : _m, _1 : ((null : stdgo.Error)) };
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
function decryptOAEP(_hash:stdgo.hash.Hash.Hash, _random:stdgo.io.Io.Reader, _priv:PrivateKey, _ciphertext:Slice<GoByte>, _label:Slice<GoByte>):{ var _0 : Slice<GoByte>; var _1 : Error; } {
        {
            var _err:stdgo.Error = _checkPub(_priv.publicKey);
            if (_err != null) {
                return { _0 : ((null : Slice<GoUInt8>)), _1 : _err };
            };
        };
        var _k:GoInt = _priv.size();
        if (((_ciphertext != null ? _ciphertext.length : ((0 : GoInt))) > _k) || (_k < ((_hash.size() * ((2 : GoInt))) + ((2 : GoInt))))) {
            return { _0 : ((null : Slice<GoUInt8>)), _1 : errDecryption };
        };
        var _c = new stdgo.math.big.Big.Int_().setBytes(_ciphertext);
        var __tmp__ = _decrypt(_random, _priv, _c), _m:Ref<stdgo.math.big.Big.Int_> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : ((null : Slice<GoUInt8>)), _1 : _err };
        };
        _hash.write(_label);
        var _lHash = _hash.sum(((null : Slice<GoUInt8>)));
        _hash.reset();
        var _em = _m.fillBytes(new Slice<GoUInt8>(...[for (i in 0 ... ((_k : GoInt)).toBasic()) ((0 : GoUInt8))]));
        var _firstByteIsZero:GoInt = stdgo.crypto.subtle.Subtle.constantTimeByteEq((_em != null ? _em[((0 : GoInt))] : ((0 : GoUInt8))), ((0 : GoUInt8)));
        var _seed = ((_em.__slice__(((1 : GoInt)), _hash.size() + ((1 : GoInt))) : Slice<GoUInt8>));
        var _db = ((_em.__slice__(_hash.size() + ((1 : GoInt))) : Slice<GoUInt8>));
        _mgf1XOR(_seed, _hash, _db);
        _mgf1XOR(_db, _hash, _seed);
        var _lHash2 = ((_db.__slice__(((0 : GoInt)), _hash.size()) : Slice<GoUInt8>));
        var _lHash2Good:GoInt = stdgo.crypto.subtle.Subtle.constantTimeCompare(_lHash, _lHash2);
        var _lookingForIndex:GoInt = ((0 : GoInt)), _index:GoInt = ((0 : GoInt)), _invalid:GoInt = ((0 : GoInt));
        _lookingForIndex = ((1 : GoInt));
        var _rest = ((_db.__slice__(_hash.size()) : Slice<GoUInt8>));
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < (_rest != null ? _rest.length : ((0 : GoInt))), _i++, {
                var _equals0:GoInt = stdgo.crypto.subtle.Subtle.constantTimeByteEq((_rest != null ? _rest[_i] : ((0 : GoUInt8))), ((0 : GoUInt8)));
                var _equals1:GoInt = stdgo.crypto.subtle.Subtle.constantTimeByteEq((_rest != null ? _rest[_i] : ((0 : GoUInt8))), ((1 : GoUInt8)));
                _index = stdgo.crypto.subtle.Subtle.constantTimeSelect(_lookingForIndex & _equals1, _i, _index);
                _lookingForIndex = stdgo.crypto.subtle.Subtle.constantTimeSelect(_equals1, ((0 : GoInt)), _lookingForIndex);
                _invalid = stdgo.crypto.subtle.Subtle.constantTimeSelect(_lookingForIndex & (_equals0 ^ ((-1 : GoUnTypedInt))), ((1 : GoInt)), _invalid);
            });
        };
        if ((((_firstByteIsZero & _lHash2Good) & (_invalid ^ ((-1 : GoUnTypedInt)))) & (_lookingForIndex ^ ((-1 : GoUnTypedInt)))) != ((1 : GoInt))) {
            return { _0 : ((null : Slice<GoUInt8>)), _1 : errDecryption };
        };
        return { _0 : ((_rest.__slice__(_index + ((1 : GoInt))) : Slice<GoUInt8>)), _1 : ((null : stdgo.Error)) };
    }
@:keep class PSSOptions_static_extension {
    @:keep
    public static function _saltLength( _opts:PSSOptions):GoInt {
        if (_opts == null) {
            return ((0 : GoInt));
        };
        return _opts.saltLength;
    }
    /**
        // HashFunc returns opts.Hash so that PSSOptions implements crypto.SignerOpts.
    **/
    @:keep
    public static function hashFunc( _opts:PSSOptions):stdgo.crypto.Crypto.Hash {
        return _opts.hash;
    }
}
class PSSOptions_wrapper {
    @:keep
    public var _saltLength : () -> GoInt = null;
    /**
        // HashFunc returns opts.Hash so that PSSOptions implements crypto.SignerOpts.
    **/
    @:keep
    public var hashFunc : () -> stdgo.crypto.Crypto.Hash = null;
    public function new(__self__) this.__self__ = __self__;
    public function __underlying__() return Go.toInterface(__self__);
    var __self__ : PSSOptions;
}
@:keep class PublicKey_static_extension {
    /**
        // Equal reports whether pub and x have the same value.
    **/
    @:keep
    public static function equal( _pub:PublicKey, _x:stdgo.crypto.Crypto.PublicKey):Bool {
        var __tmp__ = try {
            { value : ((_x.value : PublicKey)), ok : true };
        } catch(_) {
            { value : null, ok : false };
        }, _xx = __tmp__.value, _ok = __tmp__.ok;
        if (!_ok) {
            return false;
        };
        return (_pub.n.cmp(_xx.n) == ((0 : GoInt))) && (_pub.e == _xx.e);
    }
    /**
        // Size returns the modulus size in bytes. Raw signatures and ciphertexts
        // for or by this public key will have the same size.
    **/
    @:keep
    public static function size( _pub:PublicKey):GoInt {
        return (_pub.n.bitLen() + ((7 : GoInt))) / ((8 : GoInt));
    }
}
class PublicKey_wrapper {
    /**
        // Equal reports whether pub and x have the same value.
    **/
    @:keep
    public var equal : stdgo.crypto.Crypto.PublicKey -> Bool = null;
    /**
        // Size returns the modulus size in bytes. Raw signatures and ciphertexts
        // for or by this public key will have the same size.
    **/
    @:keep
    public var size : () -> GoInt = null;
    public function new(__self__) this.__self__ = __self__;
    public function __underlying__() return Go.toInterface(__self__);
    var __self__ : PublicKey;
}
@:keep class PrivateKey_static_extension {
    /**
        // Precompute performs some calculations that speed up private key operations
        // in the future.
    **/
    @:keep
    public static function precompute( _priv:PrivateKey):Void {
        if (_priv.precomputed.dp != null) {
            return;
        };
        _priv.precomputed.dp = new stdgo.math.big.Big.Int_().sub((_priv.primes != null ? _priv.primes[((0 : GoInt))] : null), _bigOne);
        _priv.precomputed.dp.mod(_priv.d, _priv.precomputed.dp);
        _priv.precomputed.dq = new stdgo.math.big.Big.Int_().sub((_priv.primes != null ? _priv.primes[((1 : GoInt))] : null), _bigOne);
        _priv.precomputed.dq.mod(_priv.d, _priv.precomputed.dq);
        _priv.precomputed.qinv = new stdgo.math.big.Big.Int_().modInverse((_priv.primes != null ? _priv.primes[((1 : GoInt))] : null), (_priv.primes != null ? _priv.primes[((0 : GoInt))] : null));
        var _r = new stdgo.math.big.Big.Int_().mul((_priv.primes != null ? _priv.primes[((0 : GoInt))] : null), (_priv.primes != null ? _priv.primes[((1 : GoInt))] : null));
        _priv.precomputed.crtvalues = new Slice<CRTValue>(...[for (i in 0 ... (((_priv.primes != null ? _priv.primes.length : ((0 : GoInt))) - ((2 : GoInt)) : GoInt)).toBasic()) new CRTValue()]);
        {
            var _i:GoInt = ((2 : GoInt));
            Go.cfor(_i < (_priv.primes != null ? _priv.primes.length : ((0 : GoInt))), _i++, {
                var _prime = (_priv.primes != null ? _priv.primes[_i] : null);
                var _values = (_priv.precomputed.crtvalues != null ? _priv.precomputed.crtvalues[_i - ((2 : GoInt))] : new CRTValue());
                _values.exp = new stdgo.math.big.Big.Int_().sub(_prime, _bigOne);
                _values.exp.mod(_priv.d, _values.exp);
                _values.r = new stdgo.math.big.Big.Int_().set(_r);
                _values.coeff = new stdgo.math.big.Big.Int_().modInverse(_r, _prime);
                _r.mul(_r, _prime);
            });
        };
    }
    /**
        // Validate performs basic sanity checks on the key.
        // It returns nil if the key is valid, or else an error describing a problem.
    **/
    @:keep
    public static function validate( _priv:PrivateKey):Error {
        {
            var _err:stdgo.Error = _checkPub(_priv.publicKey);
            if (_err != null) {
                return _err;
            };
        };
        var _modulus = new stdgo.math.big.Big.Int_().set(_bigOne);
        for (_0 => _prime in _priv.primes) {
            if (_prime.cmp(_bigOne) <= ((0 : GoInt))) {
                return stdgo.errors.Errors.new_(((("crypto/rsa: invalid prime value" : GoString))));
            };
            _modulus.mul(_modulus, _prime);
        };
        if (_modulus.cmp(_priv.n) != ((0 : GoInt))) {
            return stdgo.errors.Errors.new_(((("crypto/rsa: invalid modulus" : GoString))));
        };
        var _congruence = new stdgo.math.big.Big.Int_();
        var _de = new stdgo.math.big.Big.Int_().setInt64(((_priv.e : GoInt64)));
        _de.mul(_de, _priv.d);
        for (_1 => _prime in _priv.primes) {
            var _pminus1 = new stdgo.math.big.Big.Int_().sub(_prime, _bigOne);
            _congruence.mod(_de, _pminus1);
            if (_congruence.cmp(_bigOne) != ((0 : GoInt))) {
                return stdgo.errors.Errors.new_(((("crypto/rsa: invalid exponents" : GoString))));
            };
        };
        return ((null : stdgo.Error));
    }
    /**
        // Decrypt decrypts ciphertext with priv. If opts is nil or of type
        // *PKCS1v15DecryptOptions then PKCS #1 v1.5 decryption is performed. Otherwise
        // opts must have type *OAEPOptions and OAEP decryption is done.
    **/
    @:keep
    public static function decrypt( _priv:PrivateKey, _rand:stdgo.io.Io.Reader, _ciphertext:Slice<GoByte>, _opts:stdgo.crypto.Crypto.DecrypterOpts):{ var _0 : Slice<GoByte>; var _1 : Error; } {
        var _plaintext:Slice<GoByte> = ((null : Slice<GoUInt8>)), _err:Error = ((null : stdgo.Error));
        if (_opts == null) {
            return decryptPKCS1v15(_rand, _priv, _ciphertext);
        };
        if (Go.assertable(((_opts : OAEPOptions)))) {
            var _opts:Ref<OAEPOptions> = _opts == null ? null : _opts.__underlying__() == null ? null : _opts == null ? null : _opts.__underlying__().value;
            return decryptOAEP(_opts.hash.new_(), _rand, _priv, _ciphertext, _opts.label);
        } else if (Go.assertable(((_opts : PKCS1v15DecryptOptions)))) {
            var _opts:Ref<PKCS1v15DecryptOptions> = _opts == null ? null : _opts.__underlying__() == null ? null : _opts == null ? null : _opts.__underlying__().value;
            {
                var _l:GoInt = _opts.sessionKeyLen;
                if (_l > ((0 : GoInt))) {
                    _plaintext = new Slice<GoUInt8>(...[for (i in 0 ... ((_l : GoInt)).toBasic()) ((0 : GoUInt8))]);
                    {
                        var __tmp__ = stdgo.io.Io.readFull(_rand, _plaintext), _0:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                        if (_err != null) {
                            return { _0 : ((null : Slice<GoUInt8>)), _1 : _err };
                        };
                    };
                    {
                        var _err:stdgo.Error = decryptPKCS1v15SessionKey(_rand, _priv, _ciphertext, _plaintext);
                        if (_err != null) {
                            return { _0 : ((null : Slice<GoUInt8>)), _1 : _err };
                        };
                    };
                    return { _0 : _plaintext, _1 : ((null : stdgo.Error)) };
                } else {
                    return decryptPKCS1v15(_rand, _priv, _ciphertext);
                };
            };
        } else {
            var _opts:stdgo.crypto.Crypto.DecrypterOpts = _opts == null ? null : _opts.__underlying__();
            return { _0 : ((null : Slice<GoUInt8>)), _1 : stdgo.errors.Errors.new_(((("crypto/rsa: invalid options for Decrypt" : GoString)))) };
        };
    }
    /**
        // Sign signs digest with priv, reading randomness from rand. If opts is a
        // *PSSOptions then the PSS algorithm will be used, otherwise PKCS #1 v1.5 will
        // be used. digest must be the result of hashing the input message using
        // opts.HashFunc().
        //
        // This method implements crypto.Signer, which is an interface to support keys
        // where the private part is kept in, for example, a hardware module. Common
        // uses should use the Sign* functions in this package directly.
    **/
    @:keep
    public static function sign( _priv:PrivateKey, _rand:stdgo.io.Io.Reader, _digest:Slice<GoByte>, _opts:stdgo.crypto.Crypto.SignerOpts):{ var _0 : Slice<GoByte>; var _1 : Error; } {
        {
            var __tmp__ = try {
                { value : ((((_opts.__underlying__().value : Dynamic)) : PSSOptions)), ok : true };
            } catch(_) {
                { value : null, ok : false };
            }, _pssOpts = __tmp__.value, _ok = __tmp__.ok;
            if (_ok) {
                return signPSS(_rand, _priv, _pssOpts.hash, _digest, _pssOpts);
            };
        };
        return signPKCS1v15(_rand, _priv, _opts.hashFunc(), _digest);
    }
    /**
        // Equal reports whether priv and x have equivalent values. It ignores
        // Precomputed values.
    **/
    @:keep
    public static function equal( _priv:PrivateKey, _x:stdgo.crypto.Crypto.PrivateKey):Bool {
        var __tmp__ = try {
            { value : ((_x.value : PrivateKey)), ok : true };
        } catch(_) {
            { value : null, ok : false };
        }, _xx = __tmp__.value, _ok = __tmp__.ok;
        if (!_ok) {
            return false;
        };
        if (!_priv.publicKey.equal(Go.toInterface(_xx.publicKey)) || (_priv.d.cmp(_xx.d) != ((0 : GoInt)))) {
            return false;
        };
        if ((_priv.primes != null ? _priv.primes.length : ((0 : GoInt))) != (_xx.primes != null ? _xx.primes.length : ((0 : GoInt)))) {
            return false;
        };
        for (_i => _ in _priv.primes) {
            if ((_priv.primes != null ? _priv.primes[_i] : null).cmp((_xx.primes != null ? _xx.primes[_i] : null)) != ((0 : GoInt))) {
                return false;
            };
        };
        return true;
    }
    /**
        // Public returns the public key corresponding to priv.
    **/
    @:keep
    public static function public_( _priv:PrivateKey):stdgo.crypto.Crypto.PublicKey {
        return Go.toInterface(_priv.publicKey);
    }
}
class PrivateKey_wrapper {
    /**
        // Precompute performs some calculations that speed up private key operations
        // in the future.
    **/
    @:keep
    public var precompute : () -> Void = null;
    /**
        // Validate performs basic sanity checks on the key.
        // It returns nil if the key is valid, or else an error describing a problem.
    **/
    @:keep
    public var validate : () -> Error = null;
    /**
        // Decrypt decrypts ciphertext with priv. If opts is nil or of type
        // *PKCS1v15DecryptOptions then PKCS #1 v1.5 decryption is performed. Otherwise
        // opts must have type *OAEPOptions and OAEP decryption is done.
    **/
    @:keep
    public var decrypt : (stdgo.io.Io.Reader, Slice<GoByte>, stdgo.crypto.Crypto.DecrypterOpts) -> { var _0 : Slice<GoByte>; var _1 : Error; } = null;
    /**
        // Sign signs digest with priv, reading randomness from rand. If opts is a
        // *PSSOptions then the PSS algorithm will be used, otherwise PKCS #1 v1.5 will
        // be used. digest must be the result of hashing the input message using
        // opts.HashFunc().
        //
        // This method implements crypto.Signer, which is an interface to support keys
        // where the private part is kept in, for example, a hardware module. Common
        // uses should use the Sign* functions in this package directly.
    **/
    @:keep
    public var sign : (stdgo.io.Io.Reader, Slice<GoByte>, stdgo.crypto.Crypto.SignerOpts) -> { var _0 : Slice<GoByte>; var _1 : Error; } = null;
    /**
        // Equal reports whether priv and x have equivalent values. It ignores
        // Precomputed values.
    **/
    @:keep
    public var equal : stdgo.crypto.Crypto.PrivateKey -> Bool = null;
    /**
        // Public returns the public key corresponding to priv.
    **/
    @:keep
    public var public_ : () -> stdgo.crypto.Crypto.PublicKey = null;
    public function new(__self__) this.__self__ = __self__;
    public function __underlying__() return Go.toInterface(__self__);
    var __self__ : PrivateKey;
}
