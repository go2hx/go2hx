package stdgo;
final pSSSaltLengthAuto : haxe.UInt64 = stdgo._internal.crypto.rsa.Rsa_psssaltlengthauto.pSSSaltLengthAuto;
final pSSSaltLengthEqualsHash : haxe.UInt64 = stdgo._internal.crypto.rsa.Rsa_psssaltlengthequalshash.pSSSaltLengthEqualsHash;
var errMessageTooLong(get, set) : stdgo.Error;
private function get_errMessageTooLong():stdgo.Error return stdgo._internal.crypto.rsa.Rsa_errmessagetoolong.errMessageTooLong;
private function set_errMessageTooLong(v:stdgo.Error):stdgo.Error {
        stdgo._internal.crypto.rsa.Rsa_errmessagetoolong.errMessageTooLong = (v : stdgo.Error);
        return v;
    }
var errDecryption(get, set) : stdgo.Error;
private function get_errDecryption():stdgo.Error return stdgo._internal.crypto.rsa.Rsa_errdecryption.errDecryption;
private function set_errDecryption(v:stdgo.Error):stdgo.Error {
        stdgo._internal.crypto.rsa.Rsa_errdecryption.errDecryption = (v : stdgo.Error);
        return v;
    }
var errVerification(get, set) : stdgo.Error;
private function get_errVerification():stdgo.Error return stdgo._internal.crypto.rsa.Rsa_errverification.errVerification;
private function set_errVerification(v:stdgo.Error):stdgo.Error {
        stdgo._internal.crypto.rsa.Rsa_errverification.errVerification = (v : stdgo.Error);
        return v;
    }
@:structInit @:using(stdgo.crypto.rsa.Rsa.PKCS1v15DecryptOptions_static_extension) abstract PKCS1v15DecryptOptions(stdgo._internal.crypto.rsa.Rsa_pkcs1v15decryptoptions.PKCS1v15DecryptOptions) from stdgo._internal.crypto.rsa.Rsa_pkcs1v15decryptoptions.PKCS1v15DecryptOptions to stdgo._internal.crypto.rsa.Rsa_pkcs1v15decryptoptions.PKCS1v15DecryptOptions {
    public var sessionKeyLen(get, set) : StdTypes.Int;
    function get_sessionKeyLen():StdTypes.Int return this.sessionKeyLen;
    function set_sessionKeyLen(v:StdTypes.Int):StdTypes.Int {
        this.sessionKeyLen = (v : stdgo.GoInt);
        return v;
    }
    public function new(?sessionKeyLen:StdTypes.Int) this = new stdgo._internal.crypto.rsa.Rsa_pkcs1v15decryptoptions.PKCS1v15DecryptOptions((sessionKeyLen : stdgo.GoInt));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.crypto.rsa.Rsa.PSSOptions_static_extension) abstract PSSOptions(stdgo._internal.crypto.rsa.Rsa_pssoptions.PSSOptions) from stdgo._internal.crypto.rsa.Rsa_pssoptions.PSSOptions to stdgo._internal.crypto.rsa.Rsa_pssoptions.PSSOptions {
    public var saltLength(get, set) : StdTypes.Int;
    function get_saltLength():StdTypes.Int return this.saltLength;
    function set_saltLength(v:StdTypes.Int):StdTypes.Int {
        this.saltLength = (v : stdgo.GoInt);
        return v;
    }
    public var hash(get, set) : stdgo._internal.crypto.Crypto_hash.Hash;
    function get_hash():stdgo._internal.crypto.Crypto_hash.Hash return this.hash;
    function set_hash(v:stdgo._internal.crypto.Crypto_hash.Hash):stdgo._internal.crypto.Crypto_hash.Hash {
        this.hash = v;
        return v;
    }
    public function new(?saltLength:StdTypes.Int, ?hash:stdgo._internal.crypto.Crypto_hash.Hash) this = new stdgo._internal.crypto.rsa.Rsa_pssoptions.PSSOptions((saltLength : stdgo.GoInt), hash);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.crypto.rsa.Rsa.PublicKey_static_extension) abstract PublicKey(stdgo._internal.crypto.rsa.Rsa_publickey.PublicKey) from stdgo._internal.crypto.rsa.Rsa_publickey.PublicKey to stdgo._internal.crypto.rsa.Rsa_publickey.PublicKey {
    public var n(get, set) : stdgo._internal.math.big.Big_int_.Int_;
    function get_n():stdgo._internal.math.big.Big_int_.Int_ return this.n;
    function set_n(v:stdgo._internal.math.big.Big_int_.Int_):stdgo._internal.math.big.Big_int_.Int_ {
        this.n = (v : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        return v;
    }
    public var e(get, set) : StdTypes.Int;
    function get_e():StdTypes.Int return this.e;
    function set_e(v:StdTypes.Int):StdTypes.Int {
        this.e = (v : stdgo.GoInt);
        return v;
    }
    public function new(?n:stdgo._internal.math.big.Big_int_.Int_, ?e:StdTypes.Int) this = new stdgo._internal.crypto.rsa.Rsa_publickey.PublicKey((n : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>), (e : stdgo.GoInt));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.crypto.rsa.Rsa.OAEPOptions_static_extension) abstract OAEPOptions(stdgo._internal.crypto.rsa.Rsa_oaepoptions.OAEPOptions) from stdgo._internal.crypto.rsa.Rsa_oaepoptions.OAEPOptions to stdgo._internal.crypto.rsa.Rsa_oaepoptions.OAEPOptions {
    public var hash(get, set) : stdgo._internal.crypto.Crypto_hash.Hash;
    function get_hash():stdgo._internal.crypto.Crypto_hash.Hash return this.hash;
    function set_hash(v:stdgo._internal.crypto.Crypto_hash.Hash):stdgo._internal.crypto.Crypto_hash.Hash {
        this.hash = v;
        return v;
    }
    public var mGFHash(get, set) : stdgo._internal.crypto.Crypto_hash.Hash;
    function get_mGFHash():stdgo._internal.crypto.Crypto_hash.Hash return this.mGFHash;
    function set_mGFHash(v:stdgo._internal.crypto.Crypto_hash.Hash):stdgo._internal.crypto.Crypto_hash.Hash {
        this.mGFHash = v;
        return v;
    }
    public var label(get, set) : Array<std.UInt>;
    function get_label():Array<std.UInt> return [for (i in this.label) i];
    function set_label(v:Array<std.UInt>):Array<std.UInt> {
        this.label = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public function new(?hash:stdgo._internal.crypto.Crypto_hash.Hash, ?mGFHash:stdgo._internal.crypto.Crypto_hash.Hash, ?label:Array<std.UInt>) this = new stdgo._internal.crypto.rsa.Rsa_oaepoptions.OAEPOptions(hash, mGFHash, ([for (i in label) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.crypto.rsa.Rsa.PrivateKey_static_extension) abstract PrivateKey(stdgo._internal.crypto.rsa.Rsa_privatekey.PrivateKey) from stdgo._internal.crypto.rsa.Rsa_privatekey.PrivateKey to stdgo._internal.crypto.rsa.Rsa_privatekey.PrivateKey {
    public var publicKey(get, set) : PublicKey;
    function get_publicKey():PublicKey return this.publicKey;
    function set_publicKey(v:PublicKey):PublicKey {
        this.publicKey = v;
        return v;
    }
    public var d(get, set) : stdgo._internal.math.big.Big_int_.Int_;
    function get_d():stdgo._internal.math.big.Big_int_.Int_ return this.d;
    function set_d(v:stdgo._internal.math.big.Big_int_.Int_):stdgo._internal.math.big.Big_int_.Int_ {
        this.d = (v : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        return v;
    }
    public var primes(get, set) : Array<stdgo._internal.math.big.Big_int_.Int_>;
    function get_primes():Array<stdgo._internal.math.big.Big_int_.Int_> return [for (i in this.primes) i];
    function set_primes(v:Array<stdgo._internal.math.big.Big_int_.Int_>):Array<stdgo._internal.math.big.Big_int_.Int_> {
        this.primes = ([for (i in v) (i : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>)] : stdgo.Slice<stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>>);
        return v;
    }
    public var precomputed(get, set) : PrecomputedValues;
    function get_precomputed():PrecomputedValues return this.precomputed;
    function set_precomputed(v:PrecomputedValues):PrecomputedValues {
        this.precomputed = v;
        return v;
    }
    public function new(?publicKey:PublicKey, ?d:stdgo._internal.math.big.Big_int_.Int_, ?primes:Array<stdgo._internal.math.big.Big_int_.Int_>, ?precomputed:PrecomputedValues) this = new stdgo._internal.crypto.rsa.Rsa_privatekey.PrivateKey(publicKey, (d : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>), ([for (i in primes) (i : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>)] : stdgo.Slice<stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>>), precomputed);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.crypto.rsa.Rsa.PrecomputedValues_static_extension) abstract PrecomputedValues(stdgo._internal.crypto.rsa.Rsa_precomputedvalues.PrecomputedValues) from stdgo._internal.crypto.rsa.Rsa_precomputedvalues.PrecomputedValues to stdgo._internal.crypto.rsa.Rsa_precomputedvalues.PrecomputedValues {
    public var dp(get, set) : stdgo._internal.math.big.Big_int_.Int_;
    function get_dp():stdgo._internal.math.big.Big_int_.Int_ return this.dp;
    function set_dp(v:stdgo._internal.math.big.Big_int_.Int_):stdgo._internal.math.big.Big_int_.Int_ {
        this.dp = (v : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        return v;
    }
    public var dq(get, set) : stdgo._internal.math.big.Big_int_.Int_;
    function get_dq():stdgo._internal.math.big.Big_int_.Int_ return this.dq;
    function set_dq(v:stdgo._internal.math.big.Big_int_.Int_):stdgo._internal.math.big.Big_int_.Int_ {
        this.dq = (v : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        return v;
    }
    public var qinv(get, set) : stdgo._internal.math.big.Big_int_.Int_;
    function get_qinv():stdgo._internal.math.big.Big_int_.Int_ return this.qinv;
    function set_qinv(v:stdgo._internal.math.big.Big_int_.Int_):stdgo._internal.math.big.Big_int_.Int_ {
        this.qinv = (v : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        return v;
    }
    public var cRTValues(get, set) : Array<CRTValue>;
    function get_cRTValues():Array<CRTValue> return [for (i in this.cRTValues) i];
    function set_cRTValues(v:Array<CRTValue>):Array<CRTValue> {
        this.cRTValues = ([for (i in v) i] : stdgo.Slice<stdgo._internal.crypto.rsa.Rsa_crtvalue.CRTValue>);
        return v;
    }
    public var _n(get, set) : stdgo._internal.crypto.internal.bigmod.Bigmod_modulus.Modulus;
    function get__n():stdgo._internal.crypto.internal.bigmod.Bigmod_modulus.Modulus return this._n;
    function set__n(v:stdgo._internal.crypto.internal.bigmod.Bigmod_modulus.Modulus):stdgo._internal.crypto.internal.bigmod.Bigmod_modulus.Modulus {
        this._n = (v : stdgo.Ref<stdgo._internal.crypto.internal.bigmod.Bigmod_modulus.Modulus>);
        return v;
    }
    public var _p(get, set) : stdgo._internal.crypto.internal.bigmod.Bigmod_modulus.Modulus;
    function get__p():stdgo._internal.crypto.internal.bigmod.Bigmod_modulus.Modulus return this._p;
    function set__p(v:stdgo._internal.crypto.internal.bigmod.Bigmod_modulus.Modulus):stdgo._internal.crypto.internal.bigmod.Bigmod_modulus.Modulus {
        this._p = (v : stdgo.Ref<stdgo._internal.crypto.internal.bigmod.Bigmod_modulus.Modulus>);
        return v;
    }
    public var _q(get, set) : stdgo._internal.crypto.internal.bigmod.Bigmod_modulus.Modulus;
    function get__q():stdgo._internal.crypto.internal.bigmod.Bigmod_modulus.Modulus return this._q;
    function set__q(v:stdgo._internal.crypto.internal.bigmod.Bigmod_modulus.Modulus):stdgo._internal.crypto.internal.bigmod.Bigmod_modulus.Modulus {
        this._q = (v : stdgo.Ref<stdgo._internal.crypto.internal.bigmod.Bigmod_modulus.Modulus>);
        return v;
    }
    public function new(?dp:stdgo._internal.math.big.Big_int_.Int_, ?dq:stdgo._internal.math.big.Big_int_.Int_, ?qinv:stdgo._internal.math.big.Big_int_.Int_, ?cRTValues:Array<CRTValue>, ?_n:stdgo._internal.crypto.internal.bigmod.Bigmod_modulus.Modulus, ?_p:stdgo._internal.crypto.internal.bigmod.Bigmod_modulus.Modulus, ?_q:stdgo._internal.crypto.internal.bigmod.Bigmod_modulus.Modulus) this = new stdgo._internal.crypto.rsa.Rsa_precomputedvalues.PrecomputedValues((dp : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>), (dq : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>), (qinv : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>), ([for (i in cRTValues) i] : stdgo.Slice<stdgo._internal.crypto.rsa.Rsa_crtvalue.CRTValue>), (_n : stdgo.Ref<stdgo._internal.crypto.internal.bigmod.Bigmod_modulus.Modulus>), (_p : stdgo.Ref<stdgo._internal.crypto.internal.bigmod.Bigmod_modulus.Modulus>), (_q : stdgo.Ref<stdgo._internal.crypto.internal.bigmod.Bigmod_modulus.Modulus>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.crypto.rsa.Rsa.CRTValue_static_extension) abstract CRTValue(stdgo._internal.crypto.rsa.Rsa_crtvalue.CRTValue) from stdgo._internal.crypto.rsa.Rsa_crtvalue.CRTValue to stdgo._internal.crypto.rsa.Rsa_crtvalue.CRTValue {
    public var exp(get, set) : stdgo._internal.math.big.Big_int_.Int_;
    function get_exp():stdgo._internal.math.big.Big_int_.Int_ return this.exp;
    function set_exp(v:stdgo._internal.math.big.Big_int_.Int_):stdgo._internal.math.big.Big_int_.Int_ {
        this.exp = (v : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        return v;
    }
    public var coeff(get, set) : stdgo._internal.math.big.Big_int_.Int_;
    function get_coeff():stdgo._internal.math.big.Big_int_.Int_ return this.coeff;
    function set_coeff(v:stdgo._internal.math.big.Big_int_.Int_):stdgo._internal.math.big.Big_int_.Int_ {
        this.coeff = (v : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        return v;
    }
    public var r(get, set) : stdgo._internal.math.big.Big_int_.Int_;
    function get_r():stdgo._internal.math.big.Big_int_.Int_ return this.r;
    function set_r(v:stdgo._internal.math.big.Big_int_.Int_):stdgo._internal.math.big.Big_int_.Int_ {
        this.r = (v : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        return v;
    }
    public function new(?exp:stdgo._internal.math.big.Big_int_.Int_, ?coeff:stdgo._internal.math.big.Big_int_.Int_, ?r:stdgo._internal.math.big.Big_int_.Int_) this = new stdgo._internal.crypto.rsa.Rsa_crtvalue.CRTValue((exp : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>), (coeff : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>), (r : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
typedef PKCS1v15DecryptOptionsPointer = stdgo._internal.crypto.rsa.Rsa_pkcs1v15decryptoptionspointer.PKCS1v15DecryptOptionsPointer;
class PKCS1v15DecryptOptions_static_extension {

}
typedef PSSOptionsPointer = stdgo._internal.crypto.rsa.Rsa_pssoptionspointer.PSSOptionsPointer;
class PSSOptions_static_extension {
    static public function _saltLength(_opts:PSSOptions):StdTypes.Int {
        final _opts = (_opts : stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_pssoptions.PSSOptions>);
        return stdgo._internal.crypto.rsa.Rsa_pssoptions_static_extension.PSSOptions_static_extension._saltLength(_opts);
    }
    static public function hashFunc(_opts:PSSOptions):stdgo._internal.crypto.Crypto_hash.Hash {
        final _opts = (_opts : stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_pssoptions.PSSOptions>);
        return stdgo._internal.crypto.rsa.Rsa_pssoptions_static_extension.PSSOptions_static_extension.hashFunc(_opts);
    }
}
typedef PublicKeyPointer = stdgo._internal.crypto.rsa.Rsa_publickeypointer.PublicKeyPointer;
class PublicKey_static_extension {
    static public function equal(_pub:PublicKey, _x:stdgo._internal.crypto.Crypto_publickey.PublicKey):Bool {
        final _pub = (_pub : stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_publickey.PublicKey>);
        return stdgo._internal.crypto.rsa.Rsa_publickey_static_extension.PublicKey_static_extension.equal(_pub, _x);
    }
    static public function size(_pub:PublicKey):StdTypes.Int {
        final _pub = (_pub : stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_publickey.PublicKey>);
        return stdgo._internal.crypto.rsa.Rsa_publickey_static_extension.PublicKey_static_extension.size(_pub);
    }
}
typedef OAEPOptionsPointer = stdgo._internal.crypto.rsa.Rsa_oaepoptionspointer.OAEPOptionsPointer;
class OAEPOptions_static_extension {

}
typedef PrivateKeyPointer = stdgo._internal.crypto.rsa.Rsa_privatekeypointer.PrivateKeyPointer;
class PrivateKey_static_extension {
    static public function precompute(_priv:PrivateKey):Void {
        final _priv = (_priv : stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_privatekey.PrivateKey>);
        stdgo._internal.crypto.rsa.Rsa_privatekey_static_extension.PrivateKey_static_extension.precompute(_priv);
    }
    static public function validate(_priv:PrivateKey):stdgo.Error {
        final _priv = (_priv : stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_privatekey.PrivateKey>);
        return stdgo._internal.crypto.rsa.Rsa_privatekey_static_extension.PrivateKey_static_extension.validate(_priv);
    }
    static public function decrypt(_priv:PrivateKey, _rand:stdgo._internal.io.Io_reader.Reader, _ciphertext:Array<std.UInt>, _opts:stdgo._internal.crypto.Crypto_decrypteropts.DecrypterOpts):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        final _priv = (_priv : stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_privatekey.PrivateKey>);
        final _ciphertext = ([for (i in _ciphertext) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.crypto.rsa.Rsa_privatekey_static_extension.PrivateKey_static_extension.decrypt(_priv, _rand, _ciphertext, _opts);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    static public function sign(_priv:PrivateKey, _rand:stdgo._internal.io.Io_reader.Reader, _digest:Array<std.UInt>, _opts:stdgo._internal.crypto.Crypto_signeropts.SignerOpts):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        final _priv = (_priv : stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_privatekey.PrivateKey>);
        final _digest = ([for (i in _digest) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.crypto.rsa.Rsa_privatekey_static_extension.PrivateKey_static_extension.sign(_priv, _rand, _digest, _opts);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    static public function equal(_priv:PrivateKey, _x:stdgo._internal.crypto.Crypto_privatekey.PrivateKey):Bool {
        final _priv = (_priv : stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_privatekey.PrivateKey>);
        return stdgo._internal.crypto.rsa.Rsa_privatekey_static_extension.PrivateKey_static_extension.equal(_priv, _x);
    }
    static public function public_(_priv:PrivateKey):stdgo._internal.crypto.Crypto_publickey.PublicKey {
        final _priv = (_priv : stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_privatekey.PrivateKey>);
        return stdgo._internal.crypto.rsa.Rsa_privatekey_static_extension.PrivateKey_static_extension.public_(_priv);
    }
    public static function size(__self__:stdgo._internal.crypto.rsa.Rsa_privatekey.PrivateKey):StdTypes.Int {
        return stdgo._internal.crypto.rsa.Rsa_privatekey_static_extension.PrivateKey_static_extension.size(__self__);
    }
}
typedef PrecomputedValuesPointer = stdgo._internal.crypto.rsa.Rsa_precomputedvaluespointer.PrecomputedValuesPointer;
class PrecomputedValues_static_extension {

}
typedef CRTValuePointer = stdgo._internal.crypto.rsa.Rsa_crtvaluepointer.CRTValuePointer;
class CRTValue_static_extension {

}
/**
    * Package rsa implements RSA encryption as specified in PKCS #1 and RFC 8017.
    * 
    * RSA is a single, fundamental operation that is used in this package to
    * implement either public-key encryption or public-key signatures.
    * 
    * The original specification for encryption and signatures with RSA is PKCS #1
    * and the terms "RSA encryption" and "RSA signatures" by default refer to
    * PKCS #1 version 1.5. However, that specification has flaws and new designs
    * should use version 2, usually called by just OAEP and PSS, where
    * possible.
    * 
    * Two sets of interfaces are included in this package. When a more abstract
    * interface isn't necessary, there are functions for encrypting/decrypting
    * with v1.5/OAEP and signing/verifying with v1.5/PSS. If one needs to abstract
    * over the public key primitive, the PrivateKey type implements the
    * Decrypter and Signer interfaces from the crypto package.
    * 
    * Operations in this package are implemented using constant-time algorithms,
    * except for [GenerateKey], [PrivateKey.Precompute], and [PrivateKey.Validate].
    * Every other operation only leaks the bit size of the involved values, which
    * all depend on the selected key size.
**/
class Rsa {
    /**
        * EncryptPKCS1v15 encrypts the given message with RSA and the padding
        * scheme from PKCS #1 v1.5.  The message must be no longer than the
        * length of the public modulus minus 11 bytes.
        * 
        * The random parameter is used as a source of entropy to ensure that
        * encrypting the same message twice doesn't result in the same
        * ciphertext. Most applications should use [crypto/rand.Reader]
        * as random. Note that the returned ciphertext does not depend
        * deterministically on the bytes read from random, and may change
        * between calls and/or between versions.
        * 
        * WARNING: use of this function to encrypt plaintexts other than
        * session keys is dangerous. Use RSA OAEP in new protocols.
    **/
    static public inline function encryptPKCS1v15(_random:stdgo._internal.io.Io_reader.Reader, _pub:PublicKey, _msg:Array<std.UInt>):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        final _pub = (_pub : stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_publickey.PublicKey>);
        final _msg = ([for (i in _msg) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.crypto.rsa.Rsa_encryptpkcs1v15.encryptPKCS1v15(_random, _pub, _msg);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    /**
        * DecryptPKCS1v15 decrypts a plaintext using RSA and the padding scheme from PKCS #1 v1.5.
        * The random parameter is legacy and ignored, and it can be nil.
        * 
        * Note that whether this function returns an error or not discloses secret
        * information. If an attacker can cause this function to run repeatedly and
        * learn whether each instance returned an error then they can decrypt and
        * forge signatures as if they had the private key. See
        * DecryptPKCS1v15SessionKey for a way of solving this problem.
    **/
    static public inline function decryptPKCS1v15(_random:stdgo._internal.io.Io_reader.Reader, _priv:PrivateKey, _ciphertext:Array<std.UInt>):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        final _priv = (_priv : stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_privatekey.PrivateKey>);
        final _ciphertext = ([for (i in _ciphertext) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.crypto.rsa.Rsa_decryptpkcs1v15.decryptPKCS1v15(_random, _priv, _ciphertext);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    /**
        * DecryptPKCS1v15SessionKey decrypts a session key using RSA and the padding
        * scheme from PKCS #1 v1.5. The random parameter is legacy and ignored, and it
        * can be nil.
        * 
        * DecryptPKCS1v15SessionKey returns an error if the ciphertext is the wrong
        * length or if the ciphertext is greater than the public modulus. Otherwise, no
        * error is returned. If the padding is valid, the resulting plaintext message
        * is copied into key. Otherwise, key is unchanged. These alternatives occur in
        * constant time. It is intended that the user of this function generate a
        * random session key beforehand and continue the protocol with the resulting
        * value.
        * 
        * Note that if the session key is too small then it may be possible for an
        * attacker to brute-force it. If they can do that then they can learn whether a
        * random value was used (because it'll be different for the same ciphertext)
        * and thus whether the padding was correct. This also defeats the point of this
        * function. Using at least a 16-byte key will protect against this attack.
        * 
        * This method implements protections against Bleichenbacher chosen ciphertext
        * attacks [0] described in RFC 3218 Section 2.3.2 [1]. While these protections
        * make a Bleichenbacher attack significantly more difficult, the protections
        * are only effective if the rest of the protocol which uses
        * DecryptPKCS1v15SessionKey is designed with these considerations in mind. In
        * particular, if any subsequent operations which use the decrypted session key
        * leak any information about the key (e.g. whether it is a static or random
        * key) then the mitigations are defeated. This method must be used extremely
        * carefully, and typically should only be used when absolutely necessary for
        * compatibility with an existing protocol (such as TLS) that is designed with
        * these properties in mind.
        * 
        *   - [0] “Chosen Ciphertext Attacks Against Protocols Based on the RSA Encryption
        *     Standard PKCS #1”, Daniel Bleichenbacher, Advances in Cryptology (Crypto '98)
        *   - [1] RFC 3218, Preventing the Million Message Attack on CMS,
        *     https://www.rfc-editor.org/rfc/rfc3218.html
    **/
    static public inline function decryptPKCS1v15SessionKey(_random:stdgo._internal.io.Io_reader.Reader, _priv:PrivateKey, _ciphertext:Array<std.UInt>, _key:Array<std.UInt>):stdgo.Error {
        final _priv = (_priv : stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_privatekey.PrivateKey>);
        final _ciphertext = ([for (i in _ciphertext) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _key = ([for (i in _key) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.crypto.rsa.Rsa_decryptpkcs1v15sessionkey.decryptPKCS1v15SessionKey(_random, _priv, _ciphertext, _key);
    }
    /**
        * SignPKCS1v15 calculates the signature of hashed using
        * RSASSA-PKCS1-V1_5-SIGN from RSA PKCS #1 v1.5.  Note that hashed must
        * be the result of hashing the input message using the given hash
        * function. If hash is zero, hashed is signed directly. This isn't
        * advisable except for interoperability.
        * 
        * The random parameter is legacy and ignored, and it can be nil.
        * 
        * This function is deterministic. Thus, if the set of possible
        * messages is small, an attacker may be able to build a map from
        * messages to signatures and identify the signed messages. As ever,
        * signatures provide authenticity, not confidentiality.
    **/
    static public inline function signPKCS1v15(_random:stdgo._internal.io.Io_reader.Reader, _priv:PrivateKey, _hash:stdgo._internal.crypto.Crypto_hash.Hash, _hashed:Array<std.UInt>):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        final _priv = (_priv : stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_privatekey.PrivateKey>);
        final _hashed = ([for (i in _hashed) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.crypto.rsa.Rsa_signpkcs1v15.signPKCS1v15(_random, _priv, _hash, _hashed);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    /**
        * VerifyPKCS1v15 verifies an RSA PKCS #1 v1.5 signature.
        * hashed is the result of hashing the input message using the given hash
        * function and sig is the signature. A valid signature is indicated by
        * returning a nil error. If hash is zero then hashed is used directly. This
        * isn't advisable except for interoperability.
    **/
    static public inline function verifyPKCS1v15(_pub:PublicKey, _hash:stdgo._internal.crypto.Crypto_hash.Hash, _hashed:Array<std.UInt>, _sig:Array<std.UInt>):stdgo.Error {
        final _pub = (_pub : stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_publickey.PublicKey>);
        final _hashed = ([for (i in _hashed) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _sig = ([for (i in _sig) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.crypto.rsa.Rsa_verifypkcs1v15.verifyPKCS1v15(_pub, _hash, _hashed, _sig);
    }
    /**
        * SignPSS calculates the signature of digest using PSS.
        * 
        * digest must be the result of hashing the input message using the given hash
        * function. The opts argument may be nil, in which case sensible defaults are
        * used. If opts.Hash is set, it overrides hash.
        * 
        * The signature is randomized depending on the message, key, and salt size,
        * using bytes from rand. Most applications should use [crypto/rand.Reader] as
        * rand.
    **/
    static public inline function signPSS(_rand:stdgo._internal.io.Io_reader.Reader, _priv:PrivateKey, _hash:stdgo._internal.crypto.Crypto_hash.Hash, _digest:Array<std.UInt>, _opts:PSSOptions):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        final _priv = (_priv : stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_privatekey.PrivateKey>);
        final _digest = ([for (i in _digest) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _opts = (_opts : stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_pssoptions.PSSOptions>);
        return {
            final obj = stdgo._internal.crypto.rsa.Rsa_signpss.signPSS(_rand, _priv, _hash, _digest, _opts);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    /**
        * VerifyPSS verifies a PSS signature.
        * 
        * A valid signature is indicated by returning a nil error. digest must be the
        * result of hashing the input message using the given hash function. The opts
        * argument may be nil, in which case sensible defaults are used. opts.Hash is
        * ignored.
    **/
    static public inline function verifyPSS(_pub:PublicKey, _hash:stdgo._internal.crypto.Crypto_hash.Hash, _digest:Array<std.UInt>, _sig:Array<std.UInt>, _opts:PSSOptions):stdgo.Error {
        final _pub = (_pub : stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_publickey.PublicKey>);
        final _digest = ([for (i in _digest) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _sig = ([for (i in _sig) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _opts = (_opts : stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_pssoptions.PSSOptions>);
        return stdgo._internal.crypto.rsa.Rsa_verifypss.verifyPSS(_pub, _hash, _digest, _sig, _opts);
    }
    /**
        * GenerateKey generates a random RSA private key of the given bit size.
        * 
        * Most applications should use [crypto/rand.Reader] as rand. Note that the
        * returned key does not depend deterministically on the bytes read from rand,
        * and may change between calls and/or between versions.
    **/
    static public inline function generateKey(_random:stdgo._internal.io.Io_reader.Reader, _bits:StdTypes.Int):stdgo.Tuple<PrivateKey, stdgo.Error> {
        final _bits = (_bits : stdgo.GoInt);
        return {
            final obj = stdgo._internal.crypto.rsa.Rsa_generatekey.generateKey(_random, _bits);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        * GenerateMultiPrimeKey generates a multi-prime RSA keypair of the given bit
        * size and the given random source.
        * 
        * Table 1 in "[On the Security of Multi-prime RSA]" suggests maximum numbers of
        * primes for a given bit size.
        * 
        * Although the public keys are compatible (actually, indistinguishable) from
        * the 2-prime case, the private keys are not. Thus it may not be possible to
        * export multi-prime private keys in certain formats or to subsequently import
        * them into other code.
        * 
        * This package does not implement CRT optimizations for multi-prime RSA, so the
        * keys with more than two primes will have worse performance.
        * 
        * Deprecated: The use of this function with a number of primes different from
        * two is not recommended for the above security, compatibility, and performance
        * reasons. Use GenerateKey instead.
        * 
        * [On the Security of Multi-prime RSA]: http://www.cacr.math.uwaterloo.ca/techreports/2006/cacr2006-16.pdf
    **/
    static public inline function generateMultiPrimeKey(_random:stdgo._internal.io.Io_reader.Reader, _nprimes:StdTypes.Int, _bits:StdTypes.Int):stdgo.Tuple<PrivateKey, stdgo.Error> {
        final _nprimes = (_nprimes : stdgo.GoInt);
        final _bits = (_bits : stdgo.GoInt);
        return {
            final obj = stdgo._internal.crypto.rsa.Rsa_generatemultiprimekey.generateMultiPrimeKey(_random, _nprimes, _bits);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        * EncryptOAEP encrypts the given message with RSA-OAEP.
        * 
        * OAEP is parameterised by a hash function that is used as a random oracle.
        * Encryption and decryption of a given message must use the same hash function
        * and sha256.New() is a reasonable choice.
        * 
        * The random parameter is used as a source of entropy to ensure that
        * encrypting the same message twice doesn't result in the same ciphertext.
        * Most applications should use [crypto/rand.Reader] as random.
        * 
        * The label parameter may contain arbitrary data that will not be encrypted,
        * but which gives important context to the message. For example, if a given
        * public key is used to encrypt two types of messages then distinct label
        * values could be used to ensure that a ciphertext for one purpose cannot be
        * used for another by an attacker. If not required it can be empty.
        * 
        * The message must be no longer than the length of the public modulus minus
        * twice the hash length, minus a further 2.
    **/
    static public inline function encryptOAEP(_hash:stdgo._internal.hash.Hash_hash.Hash, _random:stdgo._internal.io.Io_reader.Reader, _pub:PublicKey, _msg:Array<std.UInt>, _label:Array<std.UInt>):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        final _pub = (_pub : stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_publickey.PublicKey>);
        final _msg = ([for (i in _msg) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _label = ([for (i in _label) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.crypto.rsa.Rsa_encryptoaep.encryptOAEP(_hash, _random, _pub, _msg, _label);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    /**
        * DecryptOAEP decrypts ciphertext using RSA-OAEP.
        * 
        * OAEP is parameterised by a hash function that is used as a random oracle.
        * Encryption and decryption of a given message must use the same hash function
        * and sha256.New() is a reasonable choice.
        * 
        * The random parameter is legacy and ignored, and it can be nil.
        * 
        * The label parameter must match the value given when encrypting. See
        * EncryptOAEP for details.
    **/
    static public inline function decryptOAEP(_hash:stdgo._internal.hash.Hash_hash.Hash, _random:stdgo._internal.io.Io_reader.Reader, _priv:PrivateKey, _ciphertext:Array<std.UInt>, _label:Array<std.UInt>):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        final _priv = (_priv : stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_privatekey.PrivateKey>);
        final _ciphertext = ([for (i in _ciphertext) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _label = ([for (i in _label) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.crypto.rsa.Rsa_decryptoaep.decryptOAEP(_hash, _random, _priv, _ciphertext, _label);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
}
