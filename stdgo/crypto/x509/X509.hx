package stdgo.crypto.x509;
final pemcipherDES = stdgo._internal.crypto.x509.X509_pemcipherDES.pemcipherDES;
final pemcipher3DES = stdgo._internal.crypto.x509.X509_pemcipher3DES.pemcipher3DES;
final pemcipherAES128 = stdgo._internal.crypto.x509.X509_pemcipherAES128.pemcipherAES128;
final pemcipherAES192 = stdgo._internal.crypto.x509.X509_pemcipherAES192.pemcipherAES192;
final pemcipherAES256 = stdgo._internal.crypto.x509.X509_pemcipherAES256.pemcipherAES256;
final notAuthorizedToSign : InvalidReason = stdgo._internal.crypto.x509.X509_notAuthorizedToSign.notAuthorizedToSign;
final expired = stdgo._internal.crypto.x509.X509_expired.expired;
final canotAuthorizedForThisName = stdgo._internal.crypto.x509.X509_canotAuthorizedForThisName.canotAuthorizedForThisName;
final tooManyIntermediates = stdgo._internal.crypto.x509.X509_tooManyIntermediates.tooManyIntermediates;
final incompatibleUsage = stdgo._internal.crypto.x509.X509_incompatibleUsage.incompatibleUsage;
final nameMismatch = stdgo._internal.crypto.x509.X509_nameMismatch.nameMismatch;
final nameConstraintsWithoutSANs = stdgo._internal.crypto.x509.X509_nameConstraintsWithoutSANs.nameConstraintsWithoutSANs;
final unconstrainedName = stdgo._internal.crypto.x509.X509_unconstrainedName.unconstrainedName;
final tooManyConstraints = stdgo._internal.crypto.x509.X509_tooManyConstraints.tooManyConstraints;
final canotAuthorizedForExtKeyUsage = stdgo._internal.crypto.x509.X509_canotAuthorizedForExtKeyUsage.canotAuthorizedForExtKeyUsage;
final unknownSignatureAlgorithm : SignatureAlgorithm = stdgo._internal.crypto.x509.X509_unknownSignatureAlgorithm.unknownSignatureAlgorithm;
final md2withRSA = stdgo._internal.crypto.x509.X509_md2withRSA.md2withRSA;
final md5withRSA = stdgo._internal.crypto.x509.X509_md5withRSA.md5withRSA;
final sha1withRSA = stdgo._internal.crypto.x509.X509_sha1withRSA.sha1withRSA;
final sha256withRSA = stdgo._internal.crypto.x509.X509_sha256withRSA.sha256withRSA;
final sha384withRSA = stdgo._internal.crypto.x509.X509_sha384withRSA.sha384withRSA;
final sha512withRSA = stdgo._internal.crypto.x509.X509_sha512withRSA.sha512withRSA;
final dsawithSHA1 = stdgo._internal.crypto.x509.X509_dsawithSHA1.dsawithSHA1;
final dsawithSHA256 = stdgo._internal.crypto.x509.X509_dsawithSHA256.dsawithSHA256;
final ecdsawithSHA1 = stdgo._internal.crypto.x509.X509_ecdsawithSHA1.ecdsawithSHA1;
final ecdsawithSHA256 = stdgo._internal.crypto.x509.X509_ecdsawithSHA256.ecdsawithSHA256;
final ecdsawithSHA384 = stdgo._internal.crypto.x509.X509_ecdsawithSHA384.ecdsawithSHA384;
final ecdsawithSHA512 = stdgo._internal.crypto.x509.X509_ecdsawithSHA512.ecdsawithSHA512;
final sha256withRSAPSS = stdgo._internal.crypto.x509.X509_sha256withRSAPSS.sha256withRSAPSS;
final sha384withRSAPSS = stdgo._internal.crypto.x509.X509_sha384withRSAPSS.sha384withRSAPSS;
final sha512withRSAPSS = stdgo._internal.crypto.x509.X509_sha512withRSAPSS.sha512withRSAPSS;
final pureEd25519 = stdgo._internal.crypto.x509.X509_pureEd25519.pureEd25519;
final unknownPublicKeyAlgorithm : PublicKeyAlgorithm = stdgo._internal.crypto.x509.X509_unknownPublicKeyAlgorithm.unknownPublicKeyAlgorithm;
final rsa = stdgo._internal.crypto.x509.X509_rsa.rsa;
final dsa = stdgo._internal.crypto.x509.X509_dsa.dsa;
final ecdsa = stdgo._internal.crypto.x509.X509_ecdsa.ecdsa;
final ed25519 = stdgo._internal.crypto.x509.X509_ed25519.ed25519;
final keyUsageDigitalSignature : KeyUsage = stdgo._internal.crypto.x509.X509_keyUsageDigitalSignature.keyUsageDigitalSignature;
final keyUsageContentCommitment = stdgo._internal.crypto.x509.X509_keyUsageContentCommitment.keyUsageContentCommitment;
final keyUsageKeyEncipherment = stdgo._internal.crypto.x509.X509_keyUsageKeyEncipherment.keyUsageKeyEncipherment;
final keyUsageDataEncipherment = stdgo._internal.crypto.x509.X509_keyUsageDataEncipherment.keyUsageDataEncipherment;
final keyUsageKeyAgreement = stdgo._internal.crypto.x509.X509_keyUsageKeyAgreement.keyUsageKeyAgreement;
final keyUsageCertSign = stdgo._internal.crypto.x509.X509_keyUsageCertSign.keyUsageCertSign;
final keyUsageCRLSign = stdgo._internal.crypto.x509.X509_keyUsageCRLSign.keyUsageCRLSign;
final keyUsageEncipherOnly = stdgo._internal.crypto.x509.X509_keyUsageEncipherOnly.keyUsageEncipherOnly;
final keyUsageDecipherOnly = stdgo._internal.crypto.x509.X509_keyUsageDecipherOnly.keyUsageDecipherOnly;
final extKeyUsageAny : ExtKeyUsage = stdgo._internal.crypto.x509.X509_extKeyUsageAny.extKeyUsageAny;
final extKeyUsageServerAuth = stdgo._internal.crypto.x509.X509_extKeyUsageServerAuth.extKeyUsageServerAuth;
final extKeyUsageClientAuth = stdgo._internal.crypto.x509.X509_extKeyUsageClientAuth.extKeyUsageClientAuth;
final extKeyUsageCodeSigning = stdgo._internal.crypto.x509.X509_extKeyUsageCodeSigning.extKeyUsageCodeSigning;
final extKeyUsageEmailProtection = stdgo._internal.crypto.x509.X509_extKeyUsageEmailProtection.extKeyUsageEmailProtection;
final extKeyUsageIPSECEndSystem = stdgo._internal.crypto.x509.X509_extKeyUsageIPSECEndSystem.extKeyUsageIPSECEndSystem;
final extKeyUsageIPSECTunnel = stdgo._internal.crypto.x509.X509_extKeyUsageIPSECTunnel.extKeyUsageIPSECTunnel;
final extKeyUsageIPSECUser = stdgo._internal.crypto.x509.X509_extKeyUsageIPSECUser.extKeyUsageIPSECUser;
final extKeyUsageTimeStamping = stdgo._internal.crypto.x509.X509_extKeyUsageTimeStamping.extKeyUsageTimeStamping;
final extKeyUsageOCSPSigning = stdgo._internal.crypto.x509.X509_extKeyUsageOCSPSigning.extKeyUsageOCSPSigning;
final extKeyUsageMicrosoftServerGatedCrypto = stdgo._internal.crypto.x509.X509_extKeyUsageMicrosoftServerGatedCrypto.extKeyUsageMicrosoftServerGatedCrypto;
final extKeyUsageNetscapeServerGatedCrypto = stdgo._internal.crypto.x509.X509_extKeyUsageNetscapeServerGatedCrypto.extKeyUsageNetscapeServerGatedCrypto;
final extKeyUsageMicrosoftCommercialCodeSigning = stdgo._internal.crypto.x509.X509_extKeyUsageMicrosoftCommercialCodeSigning.extKeyUsageMicrosoftCommercialCodeSigning;
final extKeyUsageMicrosoftKernelCodeSigning = stdgo._internal.crypto.x509.X509_extKeyUsageMicrosoftKernelCodeSigning.extKeyUsageMicrosoftKernelCodeSigning;
var incorrectPasswordError(get, set) : stdgo.Error;
private function get_incorrectPasswordError():stdgo.Error return stdgo._internal.crypto.x509.X509_incorrectPasswordError.incorrectPasswordError;
private function set_incorrectPasswordError(v:stdgo.Error):stdgo.Error {
        stdgo._internal.crypto.x509.X509_incorrectPasswordError.incorrectPasswordError = v;
        return v;
    }
var errUnsupportedAlgorithm(get, set) : stdgo.Error;
private function get_errUnsupportedAlgorithm():stdgo.Error return stdgo._internal.crypto.x509.X509_errUnsupportedAlgorithm.errUnsupportedAlgorithm;
private function set_errUnsupportedAlgorithm(v:stdgo.Error):stdgo.Error {
        stdgo._internal.crypto.x509.X509_errUnsupportedAlgorithm.errUnsupportedAlgorithm = v;
        return v;
    }
@:structInit @:using(stdgo.crypto.x509.X509.CertPool_static_extension) abstract CertPool(stdgo._internal.crypto.x509.X509_CertPool.CertPool) from stdgo._internal.crypto.x509.X509_CertPool.CertPool to stdgo._internal.crypto.x509.X509_CertPool.CertPool {
    public var _byName(get, set) : stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo.GoInt>>;
    function get__byName():stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo.GoInt>> return this._byName;
    function set__byName(v:stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo.GoInt>>):stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo.GoInt>> {
        this._byName = v;
        return v;
    }
    public var _lazyCerts(get, set) : Array<T_lazyCert>;
    function get__lazyCerts():Array<T_lazyCert> return [for (i in this._lazyCerts) i];
    function set__lazyCerts(v:Array<T_lazyCert>):Array<T_lazyCert> {
        this._lazyCerts = ([for (i in v) i] : stdgo.Slice<stdgo._internal.crypto.x509.X509_T_lazyCert.T_lazyCert>);
        return v;
    }
    public var _haveSum(get, set) : stdgo.GoMap<stdgo._internal.crypto.x509.X509_T_sum224.T_sum224, Bool>;
    function get__haveSum():stdgo.GoMap<stdgo._internal.crypto.x509.X509_T_sum224.T_sum224, Bool> return this._haveSum;
    function set__haveSum(v:stdgo.GoMap<stdgo._internal.crypto.x509.X509_T_sum224.T_sum224, Bool>):stdgo.GoMap<stdgo._internal.crypto.x509.X509_T_sum224.T_sum224, Bool> {
        this._haveSum = v;
        return v;
    }
    public var _systemPool(get, set) : Bool;
    function get__systemPool():Bool return this._systemPool;
    function set__systemPool(v:Bool):Bool {
        this._systemPool = v;
        return v;
    }
    public function new(?_byName:stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo.GoInt>>, ?_lazyCerts:Array<T_lazyCert>, ?_haveSum:stdgo.GoMap<stdgo._internal.crypto.x509.X509_T_sum224.T_sum224, Bool>, ?_systemPool:Bool) this = new stdgo._internal.crypto.x509.X509_CertPool.CertPool(_byName, ([for (i in _lazyCerts) i] : stdgo.Slice<stdgo._internal.crypto.x509.X509_T_lazyCert.T_lazyCert>), _haveSum, _systemPool);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit abstract T_lazyCert(stdgo._internal.crypto.x509.X509_T_lazyCert.T_lazyCert) from stdgo._internal.crypto.x509.X509_T_lazyCert.T_lazyCert to stdgo._internal.crypto.x509.X509_T_lazyCert.T_lazyCert {
    public var _rawSubject(get, set) : Array<std.UInt>;
    function get__rawSubject():Array<std.UInt> return [for (i in this._rawSubject) i];
    function set__rawSubject(v:Array<std.UInt>):Array<std.UInt> {
        this._rawSubject = ([for (i in v) i] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public var _getCert(get, set) : () -> { var _0 : stdgo.Ref<stdgo._internal.crypto.x509.X509_Certificate.Certificate>; var _1 : stdgo.Error; };
    function get__getCert():() -> { var _0 : stdgo.Ref<stdgo._internal.crypto.x509.X509_Certificate.Certificate>; var _1 : stdgo.Error; } return () -> this._getCert();
    function set__getCert(v:() -> { var _0 : stdgo.Ref<stdgo._internal.crypto.x509.X509_Certificate.Certificate>; var _1 : stdgo.Error; }):() -> { var _0 : stdgo.Ref<stdgo._internal.crypto.x509.X509_Certificate.Certificate>; var _1 : stdgo.Error; } {
        this._getCert = v;
        return v;
    }
    public function new(?_rawSubject:Array<std.UInt>, ?_getCert:() -> { var _0 : stdgo.Ref<stdgo._internal.crypto.x509.X509_Certificate.Certificate>; var _1 : stdgo.Error; }) this = new stdgo._internal.crypto.x509.X509_T_lazyCert.T_lazyCert(([for (i in _rawSubject) i] : stdgo.Slice<stdgo.GoUInt8>), _getCert);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.crypto.x509.X509.T_rfc1423Algo_static_extension) abstract T_rfc1423Algo(stdgo._internal.crypto.x509.X509_T_rfc1423Algo.T_rfc1423Algo) from stdgo._internal.crypto.x509.X509_T_rfc1423Algo.T_rfc1423Algo to stdgo._internal.crypto.x509.X509_T_rfc1423Algo.T_rfc1423Algo {
    public var _cipher(get, set) : PEMCipher;
    function get__cipher():PEMCipher return this._cipher;
    function set__cipher(v:PEMCipher):PEMCipher {
        this._cipher = v;
        return v;
    }
    public var _name(get, set) : String;
    function get__name():String return this._name;
    function set__name(v:String):String {
        this._name = v;
        return v;
    }
    public var _cipherFunc(get, set) : stdgo.Slice<stdgo.GoUInt8> -> { var _0 : stdgo._internal.crypto.cipher.Cipher_Block.Block; var _1 : stdgo.Error; };
    function get__cipherFunc():stdgo.Slice<stdgo.GoUInt8> -> { var _0 : stdgo._internal.crypto.cipher.Cipher_Block.Block; var _1 : stdgo.Error; } return _0 -> this._cipherFunc([for (i in _0) i]);
    function set__cipherFunc(v:stdgo.Slice<stdgo.GoUInt8> -> { var _0 : stdgo._internal.crypto.cipher.Cipher_Block.Block; var _1 : stdgo.Error; }):stdgo.Slice<stdgo.GoUInt8> -> { var _0 : stdgo._internal.crypto.cipher.Cipher_Block.Block; var _1 : stdgo.Error; } {
        this._cipherFunc = v;
        return v;
    }
    public var _keySize(get, set) : StdTypes.Int;
    function get__keySize():StdTypes.Int return this._keySize;
    function set__keySize(v:StdTypes.Int):StdTypes.Int {
        this._keySize = v;
        return v;
    }
    public var _blockSize(get, set) : StdTypes.Int;
    function get__blockSize():StdTypes.Int return this._blockSize;
    function set__blockSize(v:StdTypes.Int):StdTypes.Int {
        this._blockSize = v;
        return v;
    }
    public function new(?_cipher:PEMCipher, ?_name:String, ?_cipherFunc:stdgo.Slice<stdgo.GoUInt8> -> { var _0 : stdgo._internal.crypto.cipher.Cipher_Block.Block; var _1 : stdgo.Error; }, ?_keySize:StdTypes.Int, ?_blockSize:StdTypes.Int) this = new stdgo._internal.crypto.x509.X509_T_rfc1423Algo.T_rfc1423Algo(_cipher, _name, _cipherFunc, _keySize, _blockSize);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit abstract T_pkcs1PrivateKey(stdgo._internal.crypto.x509.X509_T_pkcs1PrivateKey.T_pkcs1PrivateKey) from stdgo._internal.crypto.x509.X509_T_pkcs1PrivateKey.T_pkcs1PrivateKey to stdgo._internal.crypto.x509.X509_T_pkcs1PrivateKey.T_pkcs1PrivateKey {
    public var version(get, set) : StdTypes.Int;
    function get_version():StdTypes.Int return this.version;
    function set_version(v:StdTypes.Int):StdTypes.Int {
        this.version = v;
        return v;
    }
    public var n(get, set) : stdgo._internal.math.big.Big_Int_.Int_;
    function get_n():stdgo._internal.math.big.Big_Int_.Int_ return this.n;
    function set_n(v:stdgo._internal.math.big.Big_Int_.Int_):stdgo._internal.math.big.Big_Int_.Int_ {
        this.n = v;
        return v;
    }
    public var e(get, set) : StdTypes.Int;
    function get_e():StdTypes.Int return this.e;
    function set_e(v:StdTypes.Int):StdTypes.Int {
        this.e = v;
        return v;
    }
    public var d(get, set) : stdgo._internal.math.big.Big_Int_.Int_;
    function get_d():stdgo._internal.math.big.Big_Int_.Int_ return this.d;
    function set_d(v:stdgo._internal.math.big.Big_Int_.Int_):stdgo._internal.math.big.Big_Int_.Int_ {
        this.d = v;
        return v;
    }
    public var p(get, set) : stdgo._internal.math.big.Big_Int_.Int_;
    function get_p():stdgo._internal.math.big.Big_Int_.Int_ return this.p;
    function set_p(v:stdgo._internal.math.big.Big_Int_.Int_):stdgo._internal.math.big.Big_Int_.Int_ {
        this.p = v;
        return v;
    }
    public var q(get, set) : stdgo._internal.math.big.Big_Int_.Int_;
    function get_q():stdgo._internal.math.big.Big_Int_.Int_ return this.q;
    function set_q(v:stdgo._internal.math.big.Big_Int_.Int_):stdgo._internal.math.big.Big_Int_.Int_ {
        this.q = v;
        return v;
    }
    public var dp(get, set) : stdgo._internal.math.big.Big_Int_.Int_;
    function get_dp():stdgo._internal.math.big.Big_Int_.Int_ return this.dp;
    function set_dp(v:stdgo._internal.math.big.Big_Int_.Int_):stdgo._internal.math.big.Big_Int_.Int_ {
        this.dp = v;
        return v;
    }
    public var dq(get, set) : stdgo._internal.math.big.Big_Int_.Int_;
    function get_dq():stdgo._internal.math.big.Big_Int_.Int_ return this.dq;
    function set_dq(v:stdgo._internal.math.big.Big_Int_.Int_):stdgo._internal.math.big.Big_Int_.Int_ {
        this.dq = v;
        return v;
    }
    public var qinv(get, set) : stdgo._internal.math.big.Big_Int_.Int_;
    function get_qinv():stdgo._internal.math.big.Big_Int_.Int_ return this.qinv;
    function set_qinv(v:stdgo._internal.math.big.Big_Int_.Int_):stdgo._internal.math.big.Big_Int_.Int_ {
        this.qinv = v;
        return v;
    }
    public var additionalPrimes(get, set) : Array<T_pkcs1AdditionalRSAPrime>;
    function get_additionalPrimes():Array<T_pkcs1AdditionalRSAPrime> return [for (i in this.additionalPrimes) i];
    function set_additionalPrimes(v:Array<T_pkcs1AdditionalRSAPrime>):Array<T_pkcs1AdditionalRSAPrime> {
        this.additionalPrimes = ([for (i in v) i] : stdgo.Slice<stdgo._internal.crypto.x509.X509_T_pkcs1AdditionalRSAPrime.T_pkcs1AdditionalRSAPrime>);
        return v;
    }
    public function new(?version:StdTypes.Int, ?n:stdgo._internal.math.big.Big_Int_.Int_, ?e:StdTypes.Int, ?d:stdgo._internal.math.big.Big_Int_.Int_, ?p:stdgo._internal.math.big.Big_Int_.Int_, ?q:stdgo._internal.math.big.Big_Int_.Int_, ?dp:stdgo._internal.math.big.Big_Int_.Int_, ?dq:stdgo._internal.math.big.Big_Int_.Int_, ?qinv:stdgo._internal.math.big.Big_Int_.Int_, ?additionalPrimes:Array<T_pkcs1AdditionalRSAPrime>) this = new stdgo._internal.crypto.x509.X509_T_pkcs1PrivateKey.T_pkcs1PrivateKey(version, n, e, d, p, q, dp, dq, qinv, ([for (i in additionalPrimes) i] : stdgo.Slice<stdgo._internal.crypto.x509.X509_T_pkcs1AdditionalRSAPrime.T_pkcs1AdditionalRSAPrime>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit abstract T_pkcs1AdditionalRSAPrime(stdgo._internal.crypto.x509.X509_T_pkcs1AdditionalRSAPrime.T_pkcs1AdditionalRSAPrime) from stdgo._internal.crypto.x509.X509_T_pkcs1AdditionalRSAPrime.T_pkcs1AdditionalRSAPrime to stdgo._internal.crypto.x509.X509_T_pkcs1AdditionalRSAPrime.T_pkcs1AdditionalRSAPrime {
    public var prime(get, set) : stdgo._internal.math.big.Big_Int_.Int_;
    function get_prime():stdgo._internal.math.big.Big_Int_.Int_ return this.prime;
    function set_prime(v:stdgo._internal.math.big.Big_Int_.Int_):stdgo._internal.math.big.Big_Int_.Int_ {
        this.prime = v;
        return v;
    }
    public var exp(get, set) : stdgo._internal.math.big.Big_Int_.Int_;
    function get_exp():stdgo._internal.math.big.Big_Int_.Int_ return this.exp;
    function set_exp(v:stdgo._internal.math.big.Big_Int_.Int_):stdgo._internal.math.big.Big_Int_.Int_ {
        this.exp = v;
        return v;
    }
    public var coeff(get, set) : stdgo._internal.math.big.Big_Int_.Int_;
    function get_coeff():stdgo._internal.math.big.Big_Int_.Int_ return this.coeff;
    function set_coeff(v:stdgo._internal.math.big.Big_Int_.Int_):stdgo._internal.math.big.Big_Int_.Int_ {
        this.coeff = v;
        return v;
    }
    public function new(?prime:stdgo._internal.math.big.Big_Int_.Int_, ?exp:stdgo._internal.math.big.Big_Int_.Int_, ?coeff:stdgo._internal.math.big.Big_Int_.Int_) this = new stdgo._internal.crypto.x509.X509_T_pkcs1AdditionalRSAPrime.T_pkcs1AdditionalRSAPrime(prime, exp, coeff);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit abstract T_pkcs1PublicKey(stdgo._internal.crypto.x509.X509_T_pkcs1PublicKey.T_pkcs1PublicKey) from stdgo._internal.crypto.x509.X509_T_pkcs1PublicKey.T_pkcs1PublicKey to stdgo._internal.crypto.x509.X509_T_pkcs1PublicKey.T_pkcs1PublicKey {
    public var n(get, set) : stdgo._internal.math.big.Big_Int_.Int_;
    function get_n():stdgo._internal.math.big.Big_Int_.Int_ return this.n;
    function set_n(v:stdgo._internal.math.big.Big_Int_.Int_):stdgo._internal.math.big.Big_Int_.Int_ {
        this.n = v;
        return v;
    }
    public var e(get, set) : StdTypes.Int;
    function get_e():StdTypes.Int return this.e;
    function set_e(v:StdTypes.Int):StdTypes.Int {
        this.e = v;
        return v;
    }
    public function new(?n:stdgo._internal.math.big.Big_Int_.Int_, ?e:StdTypes.Int) this = new stdgo._internal.crypto.x509.X509_T_pkcs1PublicKey.T_pkcs1PublicKey(n, e);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit abstract T_pkcs8(stdgo._internal.crypto.x509.X509_T_pkcs8.T_pkcs8) from stdgo._internal.crypto.x509.X509_T_pkcs8.T_pkcs8 to stdgo._internal.crypto.x509.X509_T_pkcs8.T_pkcs8 {
    public var version(get, set) : StdTypes.Int;
    function get_version():StdTypes.Int return this.version;
    function set_version(v:StdTypes.Int):StdTypes.Int {
        this.version = v;
        return v;
    }
    public var algo(get, set) : AlgorithmIdentifier;
    function get_algo():AlgorithmIdentifier return this.algo;
    function set_algo(v:AlgorithmIdentifier):AlgorithmIdentifier {
        this.algo = v;
        return v;
    }
    public var privateKey(get, set) : Array<std.UInt>;
    function get_privateKey():Array<std.UInt> return [for (i in this.privateKey) i];
    function set_privateKey(v:Array<std.UInt>):Array<std.UInt> {
        this.privateKey = ([for (i in v) i] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public function new(?version:StdTypes.Int, ?algo:AlgorithmIdentifier, ?privateKey:Array<std.UInt>) this = new stdgo._internal.crypto.x509.X509_T_pkcs8.T_pkcs8(version, algo, ([for (i in privateKey) i] : stdgo.Slice<stdgo.GoUInt8>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit abstract T_ecPrivateKey(stdgo._internal.crypto.x509.X509_T_ecPrivateKey.T_ecPrivateKey) from stdgo._internal.crypto.x509.X509_T_ecPrivateKey.T_ecPrivateKey to stdgo._internal.crypto.x509.X509_T_ecPrivateKey.T_ecPrivateKey {
    public var version(get, set) : StdTypes.Int;
    function get_version():StdTypes.Int return this.version;
    function set_version(v:StdTypes.Int):StdTypes.Int {
        this.version = v;
        return v;
    }
    public var privateKey(get, set) : Array<std.UInt>;
    function get_privateKey():Array<std.UInt> return [for (i in this.privateKey) i];
    function set_privateKey(v:Array<std.UInt>):Array<std.UInt> {
        this.privateKey = ([for (i in v) i] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public var namedCurveOID(get, set) : stdgo._internal.encoding.asn1.Asn1_ObjectIdentifier.ObjectIdentifier;
    function get_namedCurveOID():stdgo._internal.encoding.asn1.Asn1_ObjectIdentifier.ObjectIdentifier return this.namedCurveOID;
    function set_namedCurveOID(v:stdgo._internal.encoding.asn1.Asn1_ObjectIdentifier.ObjectIdentifier):stdgo._internal.encoding.asn1.Asn1_ObjectIdentifier.ObjectIdentifier {
        this.namedCurveOID = v;
        return v;
    }
    public var publicKey(get, set) : stdgo._internal.encoding.asn1.Asn1_BitString.BitString;
    function get_publicKey():stdgo._internal.encoding.asn1.Asn1_BitString.BitString return this.publicKey;
    function set_publicKey(v:stdgo._internal.encoding.asn1.Asn1_BitString.BitString):stdgo._internal.encoding.asn1.Asn1_BitString.BitString {
        this.publicKey = v;
        return v;
    }
    public function new(?version:StdTypes.Int, ?privateKey:Array<std.UInt>, ?namedCurveOID:stdgo._internal.encoding.asn1.Asn1_ObjectIdentifier.ObjectIdentifier, ?publicKey:stdgo._internal.encoding.asn1.Asn1_BitString.BitString) this = new stdgo._internal.crypto.x509.X509_T_ecPrivateKey.T_ecPrivateKey(version, ([for (i in privateKey) i] : stdgo.Slice<stdgo.GoUInt8>), namedCurveOID, publicKey);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.crypto.x509.X509.CertificateInvalidError_static_extension) abstract CertificateInvalidError(stdgo._internal.crypto.x509.X509_CertificateInvalidError.CertificateInvalidError) from stdgo._internal.crypto.x509.X509_CertificateInvalidError.CertificateInvalidError to stdgo._internal.crypto.x509.X509_CertificateInvalidError.CertificateInvalidError {
    public var cert(get, set) : Certificate;
    function get_cert():Certificate return this.cert;
    function set_cert(v:Certificate):Certificate {
        this.cert = v;
        return v;
    }
    public var reason(get, set) : InvalidReason;
    function get_reason():InvalidReason return this.reason;
    function set_reason(v:InvalidReason):InvalidReason {
        this.reason = v;
        return v;
    }
    public var detail(get, set) : String;
    function get_detail():String return this.detail;
    function set_detail(v:String):String {
        this.detail = v;
        return v;
    }
    public function new(?cert:Certificate, ?reason:InvalidReason, ?detail:String) this = new stdgo._internal.crypto.x509.X509_CertificateInvalidError.CertificateInvalidError(cert, reason, detail);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.crypto.x509.X509.HostnameError_static_extension) abstract HostnameError(stdgo._internal.crypto.x509.X509_HostnameError.HostnameError) from stdgo._internal.crypto.x509.X509_HostnameError.HostnameError to stdgo._internal.crypto.x509.X509_HostnameError.HostnameError {
    public var certificate(get, set) : Certificate;
    function get_certificate():Certificate return this.certificate;
    function set_certificate(v:Certificate):Certificate {
        this.certificate = v;
        return v;
    }
    public var host(get, set) : String;
    function get_host():String return this.host;
    function set_host(v:String):String {
        this.host = v;
        return v;
    }
    public function new(?certificate:Certificate, ?host:String) this = new stdgo._internal.crypto.x509.X509_HostnameError.HostnameError(certificate, host);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.crypto.x509.X509.UnknownAuthorityError_static_extension) abstract UnknownAuthorityError(stdgo._internal.crypto.x509.X509_UnknownAuthorityError.UnknownAuthorityError) from stdgo._internal.crypto.x509.X509_UnknownAuthorityError.UnknownAuthorityError to stdgo._internal.crypto.x509.X509_UnknownAuthorityError.UnknownAuthorityError {
    public var cert(get, set) : Certificate;
    function get_cert():Certificate return this.cert;
    function set_cert(v:Certificate):Certificate {
        this.cert = v;
        return v;
    }
    public var _hintErr(get, set) : stdgo.Error;
    function get__hintErr():stdgo.Error return this._hintErr;
    function set__hintErr(v:stdgo.Error):stdgo.Error {
        this._hintErr = v;
        return v;
    }
    public var _hintCert(get, set) : Certificate;
    function get__hintCert():Certificate return this._hintCert;
    function set__hintCert(v:Certificate):Certificate {
        this._hintCert = v;
        return v;
    }
    public function new(?cert:Certificate, ?_hintErr:stdgo.Error, ?_hintCert:Certificate) this = new stdgo._internal.crypto.x509.X509_UnknownAuthorityError.UnknownAuthorityError(cert, _hintErr, _hintCert);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.crypto.x509.X509.SystemRootsError_static_extension) abstract SystemRootsError(stdgo._internal.crypto.x509.X509_SystemRootsError.SystemRootsError) from stdgo._internal.crypto.x509.X509_SystemRootsError.SystemRootsError to stdgo._internal.crypto.x509.X509_SystemRootsError.SystemRootsError {
    public var err(get, set) : stdgo.Error;
    function get_err():stdgo.Error return this.err;
    function set_err(v:stdgo.Error):stdgo.Error {
        this.err = v;
        return v;
    }
    public function new(?err:stdgo.Error) this = new stdgo._internal.crypto.x509.X509_SystemRootsError.SystemRootsError(err);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit abstract VerifyOptions(stdgo._internal.crypto.x509.X509_VerifyOptions.VerifyOptions) from stdgo._internal.crypto.x509.X509_VerifyOptions.VerifyOptions to stdgo._internal.crypto.x509.X509_VerifyOptions.VerifyOptions {
    public var dnsname(get, set) : String;
    function get_dnsname():String return this.dnsname;
    function set_dnsname(v:String):String {
        this.dnsname = v;
        return v;
    }
    public var intermediates(get, set) : CertPool;
    function get_intermediates():CertPool return this.intermediates;
    function set_intermediates(v:CertPool):CertPool {
        this.intermediates = v;
        return v;
    }
    public var roots(get, set) : CertPool;
    function get_roots():CertPool return this.roots;
    function set_roots(v:CertPool):CertPool {
        this.roots = v;
        return v;
    }
    public var currentTime(get, set) : stdgo._internal.time.Time_Time.Time;
    function get_currentTime():stdgo._internal.time.Time_Time.Time return this.currentTime;
    function set_currentTime(v:stdgo._internal.time.Time_Time.Time):stdgo._internal.time.Time_Time.Time {
        this.currentTime = v;
        return v;
    }
    public var keyUsages(get, set) : Array<ExtKeyUsage>;
    function get_keyUsages():Array<ExtKeyUsage> return [for (i in this.keyUsages) i];
    function set_keyUsages(v:Array<ExtKeyUsage>):Array<ExtKeyUsage> {
        this.keyUsages = ([for (i in v) i] : stdgo.Slice<stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage>);
        return v;
    }
    public var maxConstraintComparisions(get, set) : StdTypes.Int;
    function get_maxConstraintComparisions():StdTypes.Int return this.maxConstraintComparisions;
    function set_maxConstraintComparisions(v:StdTypes.Int):StdTypes.Int {
        this.maxConstraintComparisions = v;
        return v;
    }
    public function new(?dnsname:String, ?intermediates:CertPool, ?roots:CertPool, ?currentTime:stdgo._internal.time.Time_Time.Time, ?keyUsages:Array<ExtKeyUsage>, ?maxConstraintComparisions:StdTypes.Int) this = new stdgo._internal.crypto.x509.X509_VerifyOptions.VerifyOptions(dnsname, intermediates, roots, currentTime, ([for (i in keyUsages) i] : stdgo.Slice<stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage>), maxConstraintComparisions);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit abstract T_rfc2821Mailbox(stdgo._internal.crypto.x509.X509_T_rfc2821Mailbox.T_rfc2821Mailbox) from stdgo._internal.crypto.x509.X509_T_rfc2821Mailbox.T_rfc2821Mailbox to stdgo._internal.crypto.x509.X509_T_rfc2821Mailbox.T_rfc2821Mailbox {
    public var _local(get, set) : String;
    function get__local():String return this._local;
    function set__local(v:String):String {
        this._local = v;
        return v;
    }
    public var _domain(get, set) : String;
    function get__domain():String return this._domain;
    function set__domain(v:String):String {
        this._domain = v;
        return v;
    }
    public function new(?_local:String, ?_domain:String) this = new stdgo._internal.crypto.x509.X509_T_rfc2821Mailbox.T_rfc2821Mailbox(_local, _domain);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit abstract T_pkixPublicKey(stdgo._internal.crypto.x509.X509_T_pkixPublicKey.T_pkixPublicKey) from stdgo._internal.crypto.x509.X509_T_pkixPublicKey.T_pkixPublicKey to stdgo._internal.crypto.x509.X509_T_pkixPublicKey.T_pkixPublicKey {
    public var algo(get, set) : AlgorithmIdentifier;
    function get_algo():AlgorithmIdentifier return this.algo;
    function set_algo(v:AlgorithmIdentifier):AlgorithmIdentifier {
        this.algo = v;
        return v;
    }
    public var bitString(get, set) : stdgo._internal.encoding.asn1.Asn1_BitString.BitString;
    function get_bitString():stdgo._internal.encoding.asn1.Asn1_BitString.BitString return this.bitString;
    function set_bitString(v:stdgo._internal.encoding.asn1.Asn1_BitString.BitString):stdgo._internal.encoding.asn1.Asn1_BitString.BitString {
        this.bitString = v;
        return v;
    }
    public function new(?algo:AlgorithmIdentifier, ?bitString:stdgo._internal.encoding.asn1.Asn1_BitString.BitString) this = new stdgo._internal.crypto.x509.X509_T_pkixPublicKey.T_pkixPublicKey(algo, bitString);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit abstract T_certificate(stdgo._internal.crypto.x509.X509_T_certificate.T_certificate) from stdgo._internal.crypto.x509.X509_T_certificate.T_certificate to stdgo._internal.crypto.x509.X509_T_certificate.T_certificate {
    public var tbscertificate(get, set) : T_tbsCertificate;
    function get_tbscertificate():T_tbsCertificate return this.tbscertificate;
    function set_tbscertificate(v:T_tbsCertificate):T_tbsCertificate {
        this.tbscertificate = v;
        return v;
    }
    public var signatureAlgorithm(get, set) : AlgorithmIdentifier;
    function get_signatureAlgorithm():AlgorithmIdentifier return this.signatureAlgorithm;
    function set_signatureAlgorithm(v:AlgorithmIdentifier):AlgorithmIdentifier {
        this.signatureAlgorithm = v;
        return v;
    }
    public var signatureValue(get, set) : stdgo._internal.encoding.asn1.Asn1_BitString.BitString;
    function get_signatureValue():stdgo._internal.encoding.asn1.Asn1_BitString.BitString return this.signatureValue;
    function set_signatureValue(v:stdgo._internal.encoding.asn1.Asn1_BitString.BitString):stdgo._internal.encoding.asn1.Asn1_BitString.BitString {
        this.signatureValue = v;
        return v;
    }
    public function new(?tbscertificate:T_tbsCertificate, ?signatureAlgorithm:AlgorithmIdentifier, ?signatureValue:stdgo._internal.encoding.asn1.Asn1_BitString.BitString) this = new stdgo._internal.crypto.x509.X509_T_certificate.T_certificate(tbscertificate, signatureAlgorithm, signatureValue);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit abstract T_tbsCertificate(stdgo._internal.crypto.x509.X509_T_tbsCertificate.T_tbsCertificate) from stdgo._internal.crypto.x509.X509_T_tbsCertificate.T_tbsCertificate to stdgo._internal.crypto.x509.X509_T_tbsCertificate.T_tbsCertificate {
    public var raw(get, set) : stdgo._internal.encoding.asn1.Asn1_RawContent.RawContent;
    function get_raw():stdgo._internal.encoding.asn1.Asn1_RawContent.RawContent return this.raw;
    function set_raw(v:stdgo._internal.encoding.asn1.Asn1_RawContent.RawContent):stdgo._internal.encoding.asn1.Asn1_RawContent.RawContent {
        this.raw = v;
        return v;
    }
    public var version(get, set) : StdTypes.Int;
    function get_version():StdTypes.Int return this.version;
    function set_version(v:StdTypes.Int):StdTypes.Int {
        this.version = v;
        return v;
    }
    public var serialNumber(get, set) : stdgo._internal.math.big.Big_Int_.Int_;
    function get_serialNumber():stdgo._internal.math.big.Big_Int_.Int_ return this.serialNumber;
    function set_serialNumber(v:stdgo._internal.math.big.Big_Int_.Int_):stdgo._internal.math.big.Big_Int_.Int_ {
        this.serialNumber = v;
        return v;
    }
    public var signatureAlgorithm(get, set) : AlgorithmIdentifier;
    function get_signatureAlgorithm():AlgorithmIdentifier return this.signatureAlgorithm;
    function set_signatureAlgorithm(v:AlgorithmIdentifier):AlgorithmIdentifier {
        this.signatureAlgorithm = v;
        return v;
    }
    public var issuer(get, set) : stdgo._internal.encoding.asn1.Asn1_RawValue.RawValue;
    function get_issuer():stdgo._internal.encoding.asn1.Asn1_RawValue.RawValue return this.issuer;
    function set_issuer(v:stdgo._internal.encoding.asn1.Asn1_RawValue.RawValue):stdgo._internal.encoding.asn1.Asn1_RawValue.RawValue {
        this.issuer = v;
        return v;
    }
    public var validity(get, set) : T_validity;
    function get_validity():T_validity return this.validity;
    function set_validity(v:T_validity):T_validity {
        this.validity = v;
        return v;
    }
    public var subject(get, set) : stdgo._internal.encoding.asn1.Asn1_RawValue.RawValue;
    function get_subject():stdgo._internal.encoding.asn1.Asn1_RawValue.RawValue return this.subject;
    function set_subject(v:stdgo._internal.encoding.asn1.Asn1_RawValue.RawValue):stdgo._internal.encoding.asn1.Asn1_RawValue.RawValue {
        this.subject = v;
        return v;
    }
    public var publicKey(get, set) : T_publicKeyInfo;
    function get_publicKey():T_publicKeyInfo return this.publicKey;
    function set_publicKey(v:T_publicKeyInfo):T_publicKeyInfo {
        this.publicKey = v;
        return v;
    }
    public var uniqueId(get, set) : stdgo._internal.encoding.asn1.Asn1_BitString.BitString;
    function get_uniqueId():stdgo._internal.encoding.asn1.Asn1_BitString.BitString return this.uniqueId;
    function set_uniqueId(v:stdgo._internal.encoding.asn1.Asn1_BitString.BitString):stdgo._internal.encoding.asn1.Asn1_BitString.BitString {
        this.uniqueId = v;
        return v;
    }
    public var subjectUniqueId(get, set) : stdgo._internal.encoding.asn1.Asn1_BitString.BitString;
    function get_subjectUniqueId():stdgo._internal.encoding.asn1.Asn1_BitString.BitString return this.subjectUniqueId;
    function set_subjectUniqueId(v:stdgo._internal.encoding.asn1.Asn1_BitString.BitString):stdgo._internal.encoding.asn1.Asn1_BitString.BitString {
        this.subjectUniqueId = v;
        return v;
    }
    public var extensions(get, set) : Array<Extension>;
    function get_extensions():Array<Extension> return [for (i in this.extensions) i];
    function set_extensions(v:Array<Extension>):Array<Extension> {
        this.extensions = ([for (i in v) i] : stdgo.Slice<stdgo._internal.crypto.x509.pkix.Pkix_Extension.Extension>);
        return v;
    }
    public function new(?raw:stdgo._internal.encoding.asn1.Asn1_RawContent.RawContent, ?version:StdTypes.Int, ?serialNumber:stdgo._internal.math.big.Big_Int_.Int_, ?signatureAlgorithm:AlgorithmIdentifier, ?issuer:stdgo._internal.encoding.asn1.Asn1_RawValue.RawValue, ?validity:T_validity, ?subject:stdgo._internal.encoding.asn1.Asn1_RawValue.RawValue, ?publicKey:T_publicKeyInfo, ?uniqueId:stdgo._internal.encoding.asn1.Asn1_BitString.BitString, ?subjectUniqueId:stdgo._internal.encoding.asn1.Asn1_BitString.BitString, ?extensions:Array<Extension>) this = new stdgo._internal.crypto.x509.X509_T_tbsCertificate.T_tbsCertificate(
raw,
version,
serialNumber,
signatureAlgorithm,
issuer,
validity,
subject,
publicKey,
uniqueId,
subjectUniqueId,
([for (i in extensions) i] : stdgo.Slice<stdgo._internal.crypto.x509.pkix.Pkix_Extension.Extension>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit abstract T_dsaAlgorithmParameters(stdgo._internal.crypto.x509.X509_T_dsaAlgorithmParameters.T_dsaAlgorithmParameters) from stdgo._internal.crypto.x509.X509_T_dsaAlgorithmParameters.T_dsaAlgorithmParameters to stdgo._internal.crypto.x509.X509_T_dsaAlgorithmParameters.T_dsaAlgorithmParameters {
    public var p(get, set) : stdgo._internal.math.big.Big_Int_.Int_;
    function get_p():stdgo._internal.math.big.Big_Int_.Int_ return this.p;
    function set_p(v:stdgo._internal.math.big.Big_Int_.Int_):stdgo._internal.math.big.Big_Int_.Int_ {
        this.p = v;
        return v;
    }
    public var q(get, set) : stdgo._internal.math.big.Big_Int_.Int_;
    function get_q():stdgo._internal.math.big.Big_Int_.Int_ return this.q;
    function set_q(v:stdgo._internal.math.big.Big_Int_.Int_):stdgo._internal.math.big.Big_Int_.Int_ {
        this.q = v;
        return v;
    }
    public var g(get, set) : stdgo._internal.math.big.Big_Int_.Int_;
    function get_g():stdgo._internal.math.big.Big_Int_.Int_ return this.g;
    function set_g(v:stdgo._internal.math.big.Big_Int_.Int_):stdgo._internal.math.big.Big_Int_.Int_ {
        this.g = v;
        return v;
    }
    public function new(?p:stdgo._internal.math.big.Big_Int_.Int_, ?q:stdgo._internal.math.big.Big_Int_.Int_, ?g:stdgo._internal.math.big.Big_Int_.Int_) this = new stdgo._internal.crypto.x509.X509_T_dsaAlgorithmParameters.T_dsaAlgorithmParameters(p, q, g);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit abstract T_validity(stdgo._internal.crypto.x509.X509_T_validity.T_validity) from stdgo._internal.crypto.x509.X509_T_validity.T_validity to stdgo._internal.crypto.x509.X509_T_validity.T_validity {
    public var notBefore(get, set) : stdgo._internal.time.Time_Time.Time;
    function get_notBefore():stdgo._internal.time.Time_Time.Time return this.notBefore;
    function set_notBefore(v:stdgo._internal.time.Time_Time.Time):stdgo._internal.time.Time_Time.Time {
        this.notBefore = v;
        return v;
    }
    public var notAfter(get, set) : stdgo._internal.time.Time_Time.Time;
    function get_notAfter():stdgo._internal.time.Time_Time.Time return this.notAfter;
    function set_notAfter(v:stdgo._internal.time.Time_Time.Time):stdgo._internal.time.Time_Time.Time {
        this.notAfter = v;
        return v;
    }
    public function new(?notBefore:stdgo._internal.time.Time_Time.Time, ?notAfter:stdgo._internal.time.Time_Time.Time) this = new stdgo._internal.crypto.x509.X509_T_validity.T_validity(notBefore, notAfter);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit abstract T_publicKeyInfo(stdgo._internal.crypto.x509.X509_T_publicKeyInfo.T_publicKeyInfo) from stdgo._internal.crypto.x509.X509_T_publicKeyInfo.T_publicKeyInfo to stdgo._internal.crypto.x509.X509_T_publicKeyInfo.T_publicKeyInfo {
    public var raw(get, set) : stdgo._internal.encoding.asn1.Asn1_RawContent.RawContent;
    function get_raw():stdgo._internal.encoding.asn1.Asn1_RawContent.RawContent return this.raw;
    function set_raw(v:stdgo._internal.encoding.asn1.Asn1_RawContent.RawContent):stdgo._internal.encoding.asn1.Asn1_RawContent.RawContent {
        this.raw = v;
        return v;
    }
    public var algorithm(get, set) : AlgorithmIdentifier;
    function get_algorithm():AlgorithmIdentifier return this.algorithm;
    function set_algorithm(v:AlgorithmIdentifier):AlgorithmIdentifier {
        this.algorithm = v;
        return v;
    }
    public var publicKey(get, set) : stdgo._internal.encoding.asn1.Asn1_BitString.BitString;
    function get_publicKey():stdgo._internal.encoding.asn1.Asn1_BitString.BitString return this.publicKey;
    function set_publicKey(v:stdgo._internal.encoding.asn1.Asn1_BitString.BitString):stdgo._internal.encoding.asn1.Asn1_BitString.BitString {
        this.publicKey = v;
        return v;
    }
    public function new(?raw:stdgo._internal.encoding.asn1.Asn1_RawContent.RawContent, ?algorithm:AlgorithmIdentifier, ?publicKey:stdgo._internal.encoding.asn1.Asn1_BitString.BitString) this = new stdgo._internal.crypto.x509.X509_T_publicKeyInfo.T_publicKeyInfo(raw, algorithm, publicKey);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit abstract T_authKeyId(stdgo._internal.crypto.x509.X509_T_authKeyId.T_authKeyId) from stdgo._internal.crypto.x509.X509_T_authKeyId.T_authKeyId to stdgo._internal.crypto.x509.X509_T_authKeyId.T_authKeyId {
    public var id(get, set) : Array<std.UInt>;
    function get_id():Array<std.UInt> return [for (i in this.id) i];
    function set_id(v:Array<std.UInt>):Array<std.UInt> {
        this.id = ([for (i in v) i] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public function new(?id:Array<std.UInt>) this = new stdgo._internal.crypto.x509.X509_T_authKeyId.T_authKeyId(([for (i in id) i] : stdgo.Slice<stdgo.GoUInt8>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit abstract T_pssParameters(stdgo._internal.crypto.x509.X509_T_pssParameters.T_pssParameters) from stdgo._internal.crypto.x509.X509_T_pssParameters.T_pssParameters to stdgo._internal.crypto.x509.X509_T_pssParameters.T_pssParameters {
    public var hash(get, set) : AlgorithmIdentifier;
    function get_hash():AlgorithmIdentifier return this.hash;
    function set_hash(v:AlgorithmIdentifier):AlgorithmIdentifier {
        this.hash = v;
        return v;
    }
    public var mgf(get, set) : AlgorithmIdentifier;
    function get_mgf():AlgorithmIdentifier return this.mgf;
    function set_mgf(v:AlgorithmIdentifier):AlgorithmIdentifier {
        this.mgf = v;
        return v;
    }
    public var saltLength(get, set) : StdTypes.Int;
    function get_saltLength():StdTypes.Int return this.saltLength;
    function set_saltLength(v:StdTypes.Int):StdTypes.Int {
        this.saltLength = v;
        return v;
    }
    public var trailerField(get, set) : StdTypes.Int;
    function get_trailerField():StdTypes.Int return this.trailerField;
    function set_trailerField(v:StdTypes.Int):StdTypes.Int {
        this.trailerField = v;
        return v;
    }
    public function new(?hash:AlgorithmIdentifier, ?mgf:AlgorithmIdentifier, ?saltLength:StdTypes.Int, ?trailerField:StdTypes.Int) this = new stdgo._internal.crypto.x509.X509_T_pssParameters.T_pssParameters(hash, mgf, saltLength, trailerField);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.crypto.x509.X509.Certificate_static_extension) abstract Certificate(stdgo._internal.crypto.x509.X509_Certificate.Certificate) from stdgo._internal.crypto.x509.X509_Certificate.Certificate to stdgo._internal.crypto.x509.X509_Certificate.Certificate {
    public var raw(get, set) : Array<std.UInt>;
    function get_raw():Array<std.UInt> return [for (i in this.raw) i];
    function set_raw(v:Array<std.UInt>):Array<std.UInt> {
        this.raw = ([for (i in v) i] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public var rawTBSCertificate(get, set) : Array<std.UInt>;
    function get_rawTBSCertificate():Array<std.UInt> return [for (i in this.rawTBSCertificate) i];
    function set_rawTBSCertificate(v:Array<std.UInt>):Array<std.UInt> {
        this.rawTBSCertificate = ([for (i in v) i] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public var rawSubjectPublicKeyInfo(get, set) : Array<std.UInt>;
    function get_rawSubjectPublicKeyInfo():Array<std.UInt> return [for (i in this.rawSubjectPublicKeyInfo) i];
    function set_rawSubjectPublicKeyInfo(v:Array<std.UInt>):Array<std.UInt> {
        this.rawSubjectPublicKeyInfo = ([for (i in v) i] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public var rawSubject(get, set) : Array<std.UInt>;
    function get_rawSubject():Array<std.UInt> return [for (i in this.rawSubject) i];
    function set_rawSubject(v:Array<std.UInt>):Array<std.UInt> {
        this.rawSubject = ([for (i in v) i] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public var rawIssuer(get, set) : Array<std.UInt>;
    function get_rawIssuer():Array<std.UInt> return [for (i in this.rawIssuer) i];
    function set_rawIssuer(v:Array<std.UInt>):Array<std.UInt> {
        this.rawIssuer = ([for (i in v) i] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public var signature(get, set) : Array<std.UInt>;
    function get_signature():Array<std.UInt> return [for (i in this.signature) i];
    function set_signature(v:Array<std.UInt>):Array<std.UInt> {
        this.signature = ([for (i in v) i] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public var signatureAlgorithm(get, set) : SignatureAlgorithm;
    function get_signatureAlgorithm():SignatureAlgorithm return this.signatureAlgorithm;
    function set_signatureAlgorithm(v:SignatureAlgorithm):SignatureAlgorithm {
        this.signatureAlgorithm = v;
        return v;
    }
    public var publicKeyAlgorithm(get, set) : PublicKeyAlgorithm;
    function get_publicKeyAlgorithm():PublicKeyAlgorithm return this.publicKeyAlgorithm;
    function set_publicKeyAlgorithm(v:PublicKeyAlgorithm):PublicKeyAlgorithm {
        this.publicKeyAlgorithm = v;
        return v;
    }
    public var publicKey(get, set) : stdgo.AnyInterface;
    function get_publicKey():stdgo.AnyInterface return this.publicKey;
    function set_publicKey(v:stdgo.AnyInterface):stdgo.AnyInterface {
        this.publicKey = v;
        return v;
    }
    public var version(get, set) : StdTypes.Int;
    function get_version():StdTypes.Int return this.version;
    function set_version(v:StdTypes.Int):StdTypes.Int {
        this.version = v;
        return v;
    }
    public var serialNumber(get, set) : stdgo._internal.math.big.Big_Int_.Int_;
    function get_serialNumber():stdgo._internal.math.big.Big_Int_.Int_ return this.serialNumber;
    function set_serialNumber(v:stdgo._internal.math.big.Big_Int_.Int_):stdgo._internal.math.big.Big_Int_.Int_ {
        this.serialNumber = v;
        return v;
    }
    public var issuer(get, set) : Name;
    function get_issuer():Name return this.issuer;
    function set_issuer(v:Name):Name {
        this.issuer = v;
        return v;
    }
    public var subject(get, set) : Name;
    function get_subject():Name return this.subject;
    function set_subject(v:Name):Name {
        this.subject = v;
        return v;
    }
    public var notBefore(get, set) : stdgo._internal.time.Time_Time.Time;
    function get_notBefore():stdgo._internal.time.Time_Time.Time return this.notBefore;
    function set_notBefore(v:stdgo._internal.time.Time_Time.Time):stdgo._internal.time.Time_Time.Time {
        this.notBefore = v;
        return v;
    }
    public var notAfter(get, set) : stdgo._internal.time.Time_Time.Time;
    function get_notAfter():stdgo._internal.time.Time_Time.Time return this.notAfter;
    function set_notAfter(v:stdgo._internal.time.Time_Time.Time):stdgo._internal.time.Time_Time.Time {
        this.notAfter = v;
        return v;
    }
    public var keyUsage(get, set) : KeyUsage;
    function get_keyUsage():KeyUsage return this.keyUsage;
    function set_keyUsage(v:KeyUsage):KeyUsage {
        this.keyUsage = v;
        return v;
    }
    public var extensions(get, set) : Array<Extension>;
    function get_extensions():Array<Extension> return [for (i in this.extensions) i];
    function set_extensions(v:Array<Extension>):Array<Extension> {
        this.extensions = ([for (i in v) i] : stdgo.Slice<stdgo._internal.crypto.x509.pkix.Pkix_Extension.Extension>);
        return v;
    }
    public var extraExtensions(get, set) : Array<Extension>;
    function get_extraExtensions():Array<Extension> return [for (i in this.extraExtensions) i];
    function set_extraExtensions(v:Array<Extension>):Array<Extension> {
        this.extraExtensions = ([for (i in v) i] : stdgo.Slice<stdgo._internal.crypto.x509.pkix.Pkix_Extension.Extension>);
        return v;
    }
    public var unhandledCriticalExtensions(get, set) : Array<stdgo._internal.encoding.asn1.Asn1_ObjectIdentifier.ObjectIdentifier>;
    function get_unhandledCriticalExtensions():Array<stdgo._internal.encoding.asn1.Asn1_ObjectIdentifier.ObjectIdentifier> return [for (i in this.unhandledCriticalExtensions) i];
    function set_unhandledCriticalExtensions(v:Array<stdgo._internal.encoding.asn1.Asn1_ObjectIdentifier.ObjectIdentifier>):Array<stdgo._internal.encoding.asn1.Asn1_ObjectIdentifier.ObjectIdentifier> {
        this.unhandledCriticalExtensions = ([for (i in v) i] : stdgo.Slice<stdgo._internal.encoding.asn1.Asn1_ObjectIdentifier.ObjectIdentifier>);
        return v;
    }
    public var extKeyUsage(get, set) : Array<ExtKeyUsage>;
    function get_extKeyUsage():Array<ExtKeyUsage> return [for (i in this.extKeyUsage) i];
    function set_extKeyUsage(v:Array<ExtKeyUsage>):Array<ExtKeyUsage> {
        this.extKeyUsage = ([for (i in v) i] : stdgo.Slice<stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage>);
        return v;
    }
    public var unknownExtKeyUsage(get, set) : Array<stdgo._internal.encoding.asn1.Asn1_ObjectIdentifier.ObjectIdentifier>;
    function get_unknownExtKeyUsage():Array<stdgo._internal.encoding.asn1.Asn1_ObjectIdentifier.ObjectIdentifier> return [for (i in this.unknownExtKeyUsage) i];
    function set_unknownExtKeyUsage(v:Array<stdgo._internal.encoding.asn1.Asn1_ObjectIdentifier.ObjectIdentifier>):Array<stdgo._internal.encoding.asn1.Asn1_ObjectIdentifier.ObjectIdentifier> {
        this.unknownExtKeyUsage = ([for (i in v) i] : stdgo.Slice<stdgo._internal.encoding.asn1.Asn1_ObjectIdentifier.ObjectIdentifier>);
        return v;
    }
    public var basicConstraintsValid(get, set) : Bool;
    function get_basicConstraintsValid():Bool return this.basicConstraintsValid;
    function set_basicConstraintsValid(v:Bool):Bool {
        this.basicConstraintsValid = v;
        return v;
    }
    public var isCA(get, set) : Bool;
    function get_isCA():Bool return this.isCA;
    function set_isCA(v:Bool):Bool {
        this.isCA = v;
        return v;
    }
    public var maxPathLen(get, set) : StdTypes.Int;
    function get_maxPathLen():StdTypes.Int return this.maxPathLen;
    function set_maxPathLen(v:StdTypes.Int):StdTypes.Int {
        this.maxPathLen = v;
        return v;
    }
    public var maxPathLenZero(get, set) : Bool;
    function get_maxPathLenZero():Bool return this.maxPathLenZero;
    function set_maxPathLenZero(v:Bool):Bool {
        this.maxPathLenZero = v;
        return v;
    }
    public var subjectKeyId(get, set) : Array<std.UInt>;
    function get_subjectKeyId():Array<std.UInt> return [for (i in this.subjectKeyId) i];
    function set_subjectKeyId(v:Array<std.UInt>):Array<std.UInt> {
        this.subjectKeyId = ([for (i in v) i] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public var authorityKeyId(get, set) : Array<std.UInt>;
    function get_authorityKeyId():Array<std.UInt> return [for (i in this.authorityKeyId) i];
    function set_authorityKeyId(v:Array<std.UInt>):Array<std.UInt> {
        this.authorityKeyId = ([for (i in v) i] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public var ocspserver(get, set) : Array<String>;
    function get_ocspserver():Array<String> return [for (i in this.ocspserver) i];
    function set_ocspserver(v:Array<String>):Array<String> {
        this.ocspserver = ([for (i in v) i] : stdgo.Slice<stdgo.GoString>);
        return v;
    }
    public var issuingCertificateURL(get, set) : Array<String>;
    function get_issuingCertificateURL():Array<String> return [for (i in this.issuingCertificateURL) i];
    function set_issuingCertificateURL(v:Array<String>):Array<String> {
        this.issuingCertificateURL = ([for (i in v) i] : stdgo.Slice<stdgo.GoString>);
        return v;
    }
    public var dnsnames(get, set) : Array<String>;
    function get_dnsnames():Array<String> return [for (i in this.dnsnames) i];
    function set_dnsnames(v:Array<String>):Array<String> {
        this.dnsnames = ([for (i in v) i] : stdgo.Slice<stdgo.GoString>);
        return v;
    }
    public var emailAddresses(get, set) : Array<String>;
    function get_emailAddresses():Array<String> return [for (i in this.emailAddresses) i];
    function set_emailAddresses(v:Array<String>):Array<String> {
        this.emailAddresses = ([for (i in v) i] : stdgo.Slice<stdgo.GoString>);
        return v;
    }
    public var ipaddresses(get, set) : Array<stdgo._internal.net.Net_IP.IP>;
    function get_ipaddresses():Array<stdgo._internal.net.Net_IP.IP> return [for (i in this.ipaddresses) i];
    function set_ipaddresses(v:Array<stdgo._internal.net.Net_IP.IP>):Array<stdgo._internal.net.Net_IP.IP> {
        this.ipaddresses = ([for (i in v) i] : stdgo.Slice<stdgo._internal.net.Net_IP.IP>);
        return v;
    }
    public var uris(get, set) : Array<stdgo._internal.net.url.Url_URL.URL>;
    function get_uris():Array<stdgo._internal.net.url.Url_URL.URL> return [for (i in this.uris) i];
    function set_uris(v:Array<stdgo._internal.net.url.Url_URL.URL>):Array<stdgo._internal.net.url.Url_URL.URL> {
        this.uris = ([for (i in v) i] : stdgo.Slice<stdgo.Ref<stdgo._internal.net.url.Url_URL.URL>>);
        return v;
    }
    public var permittedDNSDomainsCritical(get, set) : Bool;
    function get_permittedDNSDomainsCritical():Bool return this.permittedDNSDomainsCritical;
    function set_permittedDNSDomainsCritical(v:Bool):Bool {
        this.permittedDNSDomainsCritical = v;
        return v;
    }
    public var permittedDNSDomains(get, set) : Array<String>;
    function get_permittedDNSDomains():Array<String> return [for (i in this.permittedDNSDomains) i];
    function set_permittedDNSDomains(v:Array<String>):Array<String> {
        this.permittedDNSDomains = ([for (i in v) i] : stdgo.Slice<stdgo.GoString>);
        return v;
    }
    public var excludedDNSDomains(get, set) : Array<String>;
    function get_excludedDNSDomains():Array<String> return [for (i in this.excludedDNSDomains) i];
    function set_excludedDNSDomains(v:Array<String>):Array<String> {
        this.excludedDNSDomains = ([for (i in v) i] : stdgo.Slice<stdgo.GoString>);
        return v;
    }
    public var permittedIPRanges(get, set) : Array<stdgo._internal.net.Net_IPNet.IPNet>;
    function get_permittedIPRanges():Array<stdgo._internal.net.Net_IPNet.IPNet> return [for (i in this.permittedIPRanges) i];
    function set_permittedIPRanges(v:Array<stdgo._internal.net.Net_IPNet.IPNet>):Array<stdgo._internal.net.Net_IPNet.IPNet> {
        this.permittedIPRanges = ([for (i in v) i] : stdgo.Slice<stdgo.Ref<stdgo._internal.net.Net_IPNet.IPNet>>);
        return v;
    }
    public var excludedIPRanges(get, set) : Array<stdgo._internal.net.Net_IPNet.IPNet>;
    function get_excludedIPRanges():Array<stdgo._internal.net.Net_IPNet.IPNet> return [for (i in this.excludedIPRanges) i];
    function set_excludedIPRanges(v:Array<stdgo._internal.net.Net_IPNet.IPNet>):Array<stdgo._internal.net.Net_IPNet.IPNet> {
        this.excludedIPRanges = ([for (i in v) i] : stdgo.Slice<stdgo.Ref<stdgo._internal.net.Net_IPNet.IPNet>>);
        return v;
    }
    public var permittedEmailAddresses(get, set) : Array<String>;
    function get_permittedEmailAddresses():Array<String> return [for (i in this.permittedEmailAddresses) i];
    function set_permittedEmailAddresses(v:Array<String>):Array<String> {
        this.permittedEmailAddresses = ([for (i in v) i] : stdgo.Slice<stdgo.GoString>);
        return v;
    }
    public var excludedEmailAddresses(get, set) : Array<String>;
    function get_excludedEmailAddresses():Array<String> return [for (i in this.excludedEmailAddresses) i];
    function set_excludedEmailAddresses(v:Array<String>):Array<String> {
        this.excludedEmailAddresses = ([for (i in v) i] : stdgo.Slice<stdgo.GoString>);
        return v;
    }
    public var permittedURIDomains(get, set) : Array<String>;
    function get_permittedURIDomains():Array<String> return [for (i in this.permittedURIDomains) i];
    function set_permittedURIDomains(v:Array<String>):Array<String> {
        this.permittedURIDomains = ([for (i in v) i] : stdgo.Slice<stdgo.GoString>);
        return v;
    }
    public var excludedURIDomains(get, set) : Array<String>;
    function get_excludedURIDomains():Array<String> return [for (i in this.excludedURIDomains) i];
    function set_excludedURIDomains(v:Array<String>):Array<String> {
        this.excludedURIDomains = ([for (i in v) i] : stdgo.Slice<stdgo.GoString>);
        return v;
    }
    public var crldistributionPoints(get, set) : Array<String>;
    function get_crldistributionPoints():Array<String> return [for (i in this.crldistributionPoints) i];
    function set_crldistributionPoints(v:Array<String>):Array<String> {
        this.crldistributionPoints = ([for (i in v) i] : stdgo.Slice<stdgo.GoString>);
        return v;
    }
    public var policyIdentifiers(get, set) : Array<stdgo._internal.encoding.asn1.Asn1_ObjectIdentifier.ObjectIdentifier>;
    function get_policyIdentifiers():Array<stdgo._internal.encoding.asn1.Asn1_ObjectIdentifier.ObjectIdentifier> return [for (i in this.policyIdentifiers) i];
    function set_policyIdentifiers(v:Array<stdgo._internal.encoding.asn1.Asn1_ObjectIdentifier.ObjectIdentifier>):Array<stdgo._internal.encoding.asn1.Asn1_ObjectIdentifier.ObjectIdentifier> {
        this.policyIdentifiers = ([for (i in v) i] : stdgo.Slice<stdgo._internal.encoding.asn1.Asn1_ObjectIdentifier.ObjectIdentifier>);
        return v;
    }
    public function new(?raw:Array<std.UInt>, ?rawTBSCertificate:Array<std.UInt>, ?rawSubjectPublicKeyInfo:Array<std.UInt>, ?rawSubject:Array<std.UInt>, ?rawIssuer:Array<std.UInt>, ?signature:Array<std.UInt>, ?signatureAlgorithm:SignatureAlgorithm, ?publicKeyAlgorithm:PublicKeyAlgorithm, ?publicKey:stdgo.AnyInterface, ?version:StdTypes.Int, ?serialNumber:stdgo._internal.math.big.Big_Int_.Int_, ?issuer:Name, ?subject:Name, ?notBefore:stdgo._internal.time.Time_Time.Time, ?notAfter:stdgo._internal.time.Time_Time.Time, ?keyUsage:KeyUsage, ?extensions:Array<Extension>, ?extraExtensions:Array<Extension>, ?unhandledCriticalExtensions:Array<stdgo._internal.encoding.asn1.Asn1_ObjectIdentifier.ObjectIdentifier>, ?extKeyUsage:Array<ExtKeyUsage>, ?unknownExtKeyUsage:Array<stdgo._internal.encoding.asn1.Asn1_ObjectIdentifier.ObjectIdentifier>, ?basicConstraintsValid:Bool, ?isCA:Bool, ?maxPathLen:StdTypes.Int, ?maxPathLenZero:Bool, ?subjectKeyId:Array<std.UInt>, ?authorityKeyId:Array<std.UInt>, ?ocspserver:Array<String>, ?issuingCertificateURL:Array<String>, ?dnsnames:Array<String>, ?emailAddresses:Array<String>, ?ipaddresses:Array<stdgo._internal.net.Net_IP.IP>, ?uris:Array<stdgo._internal.net.url.Url_URL.URL>, ?permittedDNSDomainsCritical:Bool, ?permittedDNSDomains:Array<String>, ?excludedDNSDomains:Array<String>, ?permittedIPRanges:Array<stdgo._internal.net.Net_IPNet.IPNet>, ?excludedIPRanges:Array<stdgo._internal.net.Net_IPNet.IPNet>, ?permittedEmailAddresses:Array<String>, ?excludedEmailAddresses:Array<String>, ?permittedURIDomains:Array<String>, ?excludedURIDomains:Array<String>, ?crldistributionPoints:Array<String>, ?policyIdentifiers:Array<stdgo._internal.encoding.asn1.Asn1_ObjectIdentifier.ObjectIdentifier>) this = new stdgo._internal.crypto.x509.X509_Certificate.Certificate(
([for (i in raw) i] : stdgo.Slice<stdgo.GoUInt8>),
([for (i in rawTBSCertificate) i] : stdgo.Slice<stdgo.GoUInt8>),
([for (i in rawSubjectPublicKeyInfo) i] : stdgo.Slice<stdgo.GoUInt8>),
([for (i in rawSubject) i] : stdgo.Slice<stdgo.GoUInt8>),
([for (i in rawIssuer) i] : stdgo.Slice<stdgo.GoUInt8>),
([for (i in signature) i] : stdgo.Slice<stdgo.GoUInt8>),
signatureAlgorithm,
publicKeyAlgorithm,
publicKey,
version,
serialNumber,
issuer,
subject,
notBefore,
notAfter,
keyUsage,
([for (i in extensions) i] : stdgo.Slice<stdgo._internal.crypto.x509.pkix.Pkix_Extension.Extension>),
([for (i in extraExtensions) i] : stdgo.Slice<stdgo._internal.crypto.x509.pkix.Pkix_Extension.Extension>),
([for (i in unhandledCriticalExtensions) i] : stdgo.Slice<stdgo._internal.encoding.asn1.Asn1_ObjectIdentifier.ObjectIdentifier>),
([for (i in extKeyUsage) i] : stdgo.Slice<stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage>),
([for (i in unknownExtKeyUsage) i] : stdgo.Slice<stdgo._internal.encoding.asn1.Asn1_ObjectIdentifier.ObjectIdentifier>),
basicConstraintsValid,
isCA,
maxPathLen,
maxPathLenZero,
([for (i in subjectKeyId) i] : stdgo.Slice<stdgo.GoUInt8>),
([for (i in authorityKeyId) i] : stdgo.Slice<stdgo.GoUInt8>),
([for (i in ocspserver) i] : stdgo.Slice<stdgo.GoString>),
([for (i in issuingCertificateURL) i] : stdgo.Slice<stdgo.GoString>),
([for (i in dnsnames) i] : stdgo.Slice<stdgo.GoString>),
([for (i in emailAddresses) i] : stdgo.Slice<stdgo.GoString>),
([for (i in ipaddresses) i] : stdgo.Slice<stdgo._internal.net.Net_IP.IP>),
([for (i in uris) i] : stdgo.Slice<stdgo.Ref<stdgo._internal.net.url.Url_URL.URL>>),
permittedDNSDomainsCritical,
([for (i in permittedDNSDomains) i] : stdgo.Slice<stdgo.GoString>),
([for (i in excludedDNSDomains) i] : stdgo.Slice<stdgo.GoString>),
([for (i in permittedIPRanges) i] : stdgo.Slice<stdgo.Ref<stdgo._internal.net.Net_IPNet.IPNet>>),
([for (i in excludedIPRanges) i] : stdgo.Slice<stdgo.Ref<stdgo._internal.net.Net_IPNet.IPNet>>),
([for (i in permittedEmailAddresses) i] : stdgo.Slice<stdgo.GoString>),
([for (i in excludedEmailAddresses) i] : stdgo.Slice<stdgo.GoString>),
([for (i in permittedURIDomains) i] : stdgo.Slice<stdgo.GoString>),
([for (i in excludedURIDomains) i] : stdgo.Slice<stdgo.GoString>),
([for (i in crldistributionPoints) i] : stdgo.Slice<stdgo.GoString>),
([for (i in policyIdentifiers) i] : stdgo.Slice<stdgo._internal.encoding.asn1.Asn1_ObjectIdentifier.ObjectIdentifier>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.crypto.x509.X509.ConstraintViolationError_static_extension) abstract ConstraintViolationError(stdgo._internal.crypto.x509.X509_ConstraintViolationError.ConstraintViolationError) from stdgo._internal.crypto.x509.X509_ConstraintViolationError.ConstraintViolationError to stdgo._internal.crypto.x509.X509_ConstraintViolationError.ConstraintViolationError {
    public function new() this = new stdgo._internal.crypto.x509.X509_ConstraintViolationError.ConstraintViolationError();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.crypto.x509.X509.UnhandledCriticalExtension_static_extension) abstract UnhandledCriticalExtension(stdgo._internal.crypto.x509.X509_UnhandledCriticalExtension.UnhandledCriticalExtension) from stdgo._internal.crypto.x509.X509_UnhandledCriticalExtension.UnhandledCriticalExtension to stdgo._internal.crypto.x509.X509_UnhandledCriticalExtension.UnhandledCriticalExtension {
    public function new() this = new stdgo._internal.crypto.x509.X509_UnhandledCriticalExtension.UnhandledCriticalExtension();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit abstract T_basicConstraints(stdgo._internal.crypto.x509.X509_T_basicConstraints.T_basicConstraints) from stdgo._internal.crypto.x509.X509_T_basicConstraints.T_basicConstraints to stdgo._internal.crypto.x509.X509_T_basicConstraints.T_basicConstraints {
    public var isCA(get, set) : Bool;
    function get_isCA():Bool return this.isCA;
    function set_isCA(v:Bool):Bool {
        this.isCA = v;
        return v;
    }
    public var maxPathLen(get, set) : StdTypes.Int;
    function get_maxPathLen():StdTypes.Int return this.maxPathLen;
    function set_maxPathLen(v:StdTypes.Int):StdTypes.Int {
        this.maxPathLen = v;
        return v;
    }
    public function new(?isCA:Bool, ?maxPathLen:StdTypes.Int) this = new stdgo._internal.crypto.x509.X509_T_basicConstraints.T_basicConstraints(isCA, maxPathLen);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit abstract T_policyInformation(stdgo._internal.crypto.x509.X509_T_policyInformation.T_policyInformation) from stdgo._internal.crypto.x509.X509_T_policyInformation.T_policyInformation to stdgo._internal.crypto.x509.X509_T_policyInformation.T_policyInformation {
    public var policy(get, set) : stdgo._internal.encoding.asn1.Asn1_ObjectIdentifier.ObjectIdentifier;
    function get_policy():stdgo._internal.encoding.asn1.Asn1_ObjectIdentifier.ObjectIdentifier return this.policy;
    function set_policy(v:stdgo._internal.encoding.asn1.Asn1_ObjectIdentifier.ObjectIdentifier):stdgo._internal.encoding.asn1.Asn1_ObjectIdentifier.ObjectIdentifier {
        this.policy = v;
        return v;
    }
    public function new(?policy:stdgo._internal.encoding.asn1.Asn1_ObjectIdentifier.ObjectIdentifier) this = new stdgo._internal.crypto.x509.X509_T_policyInformation.T_policyInformation(policy);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit abstract T_authorityInfoAccess(stdgo._internal.crypto.x509.X509_T_authorityInfoAccess.T_authorityInfoAccess) from stdgo._internal.crypto.x509.X509_T_authorityInfoAccess.T_authorityInfoAccess to stdgo._internal.crypto.x509.X509_T_authorityInfoAccess.T_authorityInfoAccess {
    public var method(get, set) : stdgo._internal.encoding.asn1.Asn1_ObjectIdentifier.ObjectIdentifier;
    function get_method():stdgo._internal.encoding.asn1.Asn1_ObjectIdentifier.ObjectIdentifier return this.method;
    function set_method(v:stdgo._internal.encoding.asn1.Asn1_ObjectIdentifier.ObjectIdentifier):stdgo._internal.encoding.asn1.Asn1_ObjectIdentifier.ObjectIdentifier {
        this.method = v;
        return v;
    }
    public var location(get, set) : stdgo._internal.encoding.asn1.Asn1_RawValue.RawValue;
    function get_location():stdgo._internal.encoding.asn1.Asn1_RawValue.RawValue return this.location;
    function set_location(v:stdgo._internal.encoding.asn1.Asn1_RawValue.RawValue):stdgo._internal.encoding.asn1.Asn1_RawValue.RawValue {
        this.location = v;
        return v;
    }
    public function new(?method:stdgo._internal.encoding.asn1.Asn1_ObjectIdentifier.ObjectIdentifier, ?location:stdgo._internal.encoding.asn1.Asn1_RawValue.RawValue) this = new stdgo._internal.crypto.x509.X509_T_authorityInfoAccess.T_authorityInfoAccess(method, location);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit abstract T_distributionPoint(stdgo._internal.crypto.x509.X509_T_distributionPoint.T_distributionPoint) from stdgo._internal.crypto.x509.X509_T_distributionPoint.T_distributionPoint to stdgo._internal.crypto.x509.X509_T_distributionPoint.T_distributionPoint {
    public var distributionPoint(get, set) : T_distributionPointName;
    function get_distributionPoint():T_distributionPointName return this.distributionPoint;
    function set_distributionPoint(v:T_distributionPointName):T_distributionPointName {
        this.distributionPoint = v;
        return v;
    }
    public var reason(get, set) : stdgo._internal.encoding.asn1.Asn1_BitString.BitString;
    function get_reason():stdgo._internal.encoding.asn1.Asn1_BitString.BitString return this.reason;
    function set_reason(v:stdgo._internal.encoding.asn1.Asn1_BitString.BitString):stdgo._internal.encoding.asn1.Asn1_BitString.BitString {
        this.reason = v;
        return v;
    }
    public var crlissuer(get, set) : stdgo._internal.encoding.asn1.Asn1_RawValue.RawValue;
    function get_crlissuer():stdgo._internal.encoding.asn1.Asn1_RawValue.RawValue return this.crlissuer;
    function set_crlissuer(v:stdgo._internal.encoding.asn1.Asn1_RawValue.RawValue):stdgo._internal.encoding.asn1.Asn1_RawValue.RawValue {
        this.crlissuer = v;
        return v;
    }
    public function new(?distributionPoint:T_distributionPointName, ?reason:stdgo._internal.encoding.asn1.Asn1_BitString.BitString, ?crlissuer:stdgo._internal.encoding.asn1.Asn1_RawValue.RawValue) this = new stdgo._internal.crypto.x509.X509_T_distributionPoint.T_distributionPoint(distributionPoint, reason, crlissuer);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit abstract T_distributionPointName(stdgo._internal.crypto.x509.X509_T_distributionPointName.T_distributionPointName) from stdgo._internal.crypto.x509.X509_T_distributionPointName.T_distributionPointName to stdgo._internal.crypto.x509.X509_T_distributionPointName.T_distributionPointName {
    public var fullName(get, set) : Array<stdgo._internal.encoding.asn1.Asn1_RawValue.RawValue>;
    function get_fullName():Array<stdgo._internal.encoding.asn1.Asn1_RawValue.RawValue> return [for (i in this.fullName) i];
    function set_fullName(v:Array<stdgo._internal.encoding.asn1.Asn1_RawValue.RawValue>):Array<stdgo._internal.encoding.asn1.Asn1_RawValue.RawValue> {
        this.fullName = ([for (i in v) i] : stdgo.Slice<stdgo._internal.encoding.asn1.Asn1_RawValue.RawValue>);
        return v;
    }
    public var relativeName(get, set) : RDNSequence;
    function get_relativeName():RDNSequence return this.relativeName;
    function set_relativeName(v:RDNSequence):RDNSequence {
        this.relativeName = v;
        return v;
    }
    public function new(?fullName:Array<stdgo._internal.encoding.asn1.Asn1_RawValue.RawValue>, ?relativeName:RDNSequence) this = new stdgo._internal.crypto.x509.X509_T_distributionPointName.T_distributionPointName(([for (i in fullName) i] : stdgo.Slice<stdgo._internal.encoding.asn1.Asn1_RawValue.RawValue>), relativeName);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.crypto.x509.X509.CertificateRequest_static_extension) abstract CertificateRequest(stdgo._internal.crypto.x509.X509_CertificateRequest.CertificateRequest) from stdgo._internal.crypto.x509.X509_CertificateRequest.CertificateRequest to stdgo._internal.crypto.x509.X509_CertificateRequest.CertificateRequest {
    public var raw(get, set) : Array<std.UInt>;
    function get_raw():Array<std.UInt> return [for (i in this.raw) i];
    function set_raw(v:Array<std.UInt>):Array<std.UInt> {
        this.raw = ([for (i in v) i] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public var rawTBSCertificateRequest(get, set) : Array<std.UInt>;
    function get_rawTBSCertificateRequest():Array<std.UInt> return [for (i in this.rawTBSCertificateRequest) i];
    function set_rawTBSCertificateRequest(v:Array<std.UInt>):Array<std.UInt> {
        this.rawTBSCertificateRequest = ([for (i in v) i] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public var rawSubjectPublicKeyInfo(get, set) : Array<std.UInt>;
    function get_rawSubjectPublicKeyInfo():Array<std.UInt> return [for (i in this.rawSubjectPublicKeyInfo) i];
    function set_rawSubjectPublicKeyInfo(v:Array<std.UInt>):Array<std.UInt> {
        this.rawSubjectPublicKeyInfo = ([for (i in v) i] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public var rawSubject(get, set) : Array<std.UInt>;
    function get_rawSubject():Array<std.UInt> return [for (i in this.rawSubject) i];
    function set_rawSubject(v:Array<std.UInt>):Array<std.UInt> {
        this.rawSubject = ([for (i in v) i] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public var version(get, set) : StdTypes.Int;
    function get_version():StdTypes.Int return this.version;
    function set_version(v:StdTypes.Int):StdTypes.Int {
        this.version = v;
        return v;
    }
    public var signature(get, set) : Array<std.UInt>;
    function get_signature():Array<std.UInt> return [for (i in this.signature) i];
    function set_signature(v:Array<std.UInt>):Array<std.UInt> {
        this.signature = ([for (i in v) i] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public var signatureAlgorithm(get, set) : SignatureAlgorithm;
    function get_signatureAlgorithm():SignatureAlgorithm return this.signatureAlgorithm;
    function set_signatureAlgorithm(v:SignatureAlgorithm):SignatureAlgorithm {
        this.signatureAlgorithm = v;
        return v;
    }
    public var publicKeyAlgorithm(get, set) : PublicKeyAlgorithm;
    function get_publicKeyAlgorithm():PublicKeyAlgorithm return this.publicKeyAlgorithm;
    function set_publicKeyAlgorithm(v:PublicKeyAlgorithm):PublicKeyAlgorithm {
        this.publicKeyAlgorithm = v;
        return v;
    }
    public var publicKey(get, set) : stdgo.AnyInterface;
    function get_publicKey():stdgo.AnyInterface return this.publicKey;
    function set_publicKey(v:stdgo.AnyInterface):stdgo.AnyInterface {
        this.publicKey = v;
        return v;
    }
    public var subject(get, set) : Name;
    function get_subject():Name return this.subject;
    function set_subject(v:Name):Name {
        this.subject = v;
        return v;
    }
    public var attributes(get, set) : Array<AttributeTypeAndValueSET>;
    function get_attributes():Array<AttributeTypeAndValueSET> return [for (i in this.attributes) i];
    function set_attributes(v:Array<AttributeTypeAndValueSET>):Array<AttributeTypeAndValueSET> {
        this.attributes = ([for (i in v) i] : stdgo.Slice<stdgo._internal.crypto.x509.pkix.Pkix_AttributeTypeAndValueSET.AttributeTypeAndValueSET>);
        return v;
    }
    public var extensions(get, set) : Array<Extension>;
    function get_extensions():Array<Extension> return [for (i in this.extensions) i];
    function set_extensions(v:Array<Extension>):Array<Extension> {
        this.extensions = ([for (i in v) i] : stdgo.Slice<stdgo._internal.crypto.x509.pkix.Pkix_Extension.Extension>);
        return v;
    }
    public var extraExtensions(get, set) : Array<Extension>;
    function get_extraExtensions():Array<Extension> return [for (i in this.extraExtensions) i];
    function set_extraExtensions(v:Array<Extension>):Array<Extension> {
        this.extraExtensions = ([for (i in v) i] : stdgo.Slice<stdgo._internal.crypto.x509.pkix.Pkix_Extension.Extension>);
        return v;
    }
    public var dnsnames(get, set) : Array<String>;
    function get_dnsnames():Array<String> return [for (i in this.dnsnames) i];
    function set_dnsnames(v:Array<String>):Array<String> {
        this.dnsnames = ([for (i in v) i] : stdgo.Slice<stdgo.GoString>);
        return v;
    }
    public var emailAddresses(get, set) : Array<String>;
    function get_emailAddresses():Array<String> return [for (i in this.emailAddresses) i];
    function set_emailAddresses(v:Array<String>):Array<String> {
        this.emailAddresses = ([for (i in v) i] : stdgo.Slice<stdgo.GoString>);
        return v;
    }
    public var ipaddresses(get, set) : Array<stdgo._internal.net.Net_IP.IP>;
    function get_ipaddresses():Array<stdgo._internal.net.Net_IP.IP> return [for (i in this.ipaddresses) i];
    function set_ipaddresses(v:Array<stdgo._internal.net.Net_IP.IP>):Array<stdgo._internal.net.Net_IP.IP> {
        this.ipaddresses = ([for (i in v) i] : stdgo.Slice<stdgo._internal.net.Net_IP.IP>);
        return v;
    }
    public var uris(get, set) : Array<stdgo._internal.net.url.Url_URL.URL>;
    function get_uris():Array<stdgo._internal.net.url.Url_URL.URL> return [for (i in this.uris) i];
    function set_uris(v:Array<stdgo._internal.net.url.Url_URL.URL>):Array<stdgo._internal.net.url.Url_URL.URL> {
        this.uris = ([for (i in v) i] : stdgo.Slice<stdgo.Ref<stdgo._internal.net.url.Url_URL.URL>>);
        return v;
    }
    public function new(?raw:Array<std.UInt>, ?rawTBSCertificateRequest:Array<std.UInt>, ?rawSubjectPublicKeyInfo:Array<std.UInt>, ?rawSubject:Array<std.UInt>, ?version:StdTypes.Int, ?signature:Array<std.UInt>, ?signatureAlgorithm:SignatureAlgorithm, ?publicKeyAlgorithm:PublicKeyAlgorithm, ?publicKey:stdgo.AnyInterface, ?subject:Name, ?attributes:Array<AttributeTypeAndValueSET>, ?extensions:Array<Extension>, ?extraExtensions:Array<Extension>, ?dnsnames:Array<String>, ?emailAddresses:Array<String>, ?ipaddresses:Array<stdgo._internal.net.Net_IP.IP>, ?uris:Array<stdgo._internal.net.url.Url_URL.URL>) this = new stdgo._internal.crypto.x509.X509_CertificateRequest.CertificateRequest(
([for (i in raw) i] : stdgo.Slice<stdgo.GoUInt8>),
([for (i in rawTBSCertificateRequest) i] : stdgo.Slice<stdgo.GoUInt8>),
([for (i in rawSubjectPublicKeyInfo) i] : stdgo.Slice<stdgo.GoUInt8>),
([for (i in rawSubject) i] : stdgo.Slice<stdgo.GoUInt8>),
version,
([for (i in signature) i] : stdgo.Slice<stdgo.GoUInt8>),
signatureAlgorithm,
publicKeyAlgorithm,
publicKey,
subject,
([for (i in attributes) i] : stdgo.Slice<stdgo._internal.crypto.x509.pkix.Pkix_AttributeTypeAndValueSET.AttributeTypeAndValueSET>),
([for (i in extensions) i] : stdgo.Slice<stdgo._internal.crypto.x509.pkix.Pkix_Extension.Extension>),
([for (i in extraExtensions) i] : stdgo.Slice<stdgo._internal.crypto.x509.pkix.Pkix_Extension.Extension>),
([for (i in dnsnames) i] : stdgo.Slice<stdgo.GoString>),
([for (i in emailAddresses) i] : stdgo.Slice<stdgo.GoString>),
([for (i in ipaddresses) i] : stdgo.Slice<stdgo._internal.net.Net_IP.IP>),
([for (i in uris) i] : stdgo.Slice<stdgo.Ref<stdgo._internal.net.url.Url_URL.URL>>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit abstract T_tbsCertificateRequest(stdgo._internal.crypto.x509.X509_T_tbsCertificateRequest.T_tbsCertificateRequest) from stdgo._internal.crypto.x509.X509_T_tbsCertificateRequest.T_tbsCertificateRequest to stdgo._internal.crypto.x509.X509_T_tbsCertificateRequest.T_tbsCertificateRequest {
    public var raw(get, set) : stdgo._internal.encoding.asn1.Asn1_RawContent.RawContent;
    function get_raw():stdgo._internal.encoding.asn1.Asn1_RawContent.RawContent return this.raw;
    function set_raw(v:stdgo._internal.encoding.asn1.Asn1_RawContent.RawContent):stdgo._internal.encoding.asn1.Asn1_RawContent.RawContent {
        this.raw = v;
        return v;
    }
    public var version(get, set) : StdTypes.Int;
    function get_version():StdTypes.Int return this.version;
    function set_version(v:StdTypes.Int):StdTypes.Int {
        this.version = v;
        return v;
    }
    public var subject(get, set) : stdgo._internal.encoding.asn1.Asn1_RawValue.RawValue;
    function get_subject():stdgo._internal.encoding.asn1.Asn1_RawValue.RawValue return this.subject;
    function set_subject(v:stdgo._internal.encoding.asn1.Asn1_RawValue.RawValue):stdgo._internal.encoding.asn1.Asn1_RawValue.RawValue {
        this.subject = v;
        return v;
    }
    public var publicKey(get, set) : T_publicKeyInfo;
    function get_publicKey():T_publicKeyInfo return this.publicKey;
    function set_publicKey(v:T_publicKeyInfo):T_publicKeyInfo {
        this.publicKey = v;
        return v;
    }
    public var rawAttributes(get, set) : Array<stdgo._internal.encoding.asn1.Asn1_RawValue.RawValue>;
    function get_rawAttributes():Array<stdgo._internal.encoding.asn1.Asn1_RawValue.RawValue> return [for (i in this.rawAttributes) i];
    function set_rawAttributes(v:Array<stdgo._internal.encoding.asn1.Asn1_RawValue.RawValue>):Array<stdgo._internal.encoding.asn1.Asn1_RawValue.RawValue> {
        this.rawAttributes = ([for (i in v) i] : stdgo.Slice<stdgo._internal.encoding.asn1.Asn1_RawValue.RawValue>);
        return v;
    }
    public function new(?raw:stdgo._internal.encoding.asn1.Asn1_RawContent.RawContent, ?version:StdTypes.Int, ?subject:stdgo._internal.encoding.asn1.Asn1_RawValue.RawValue, ?publicKey:T_publicKeyInfo, ?rawAttributes:Array<stdgo._internal.encoding.asn1.Asn1_RawValue.RawValue>) this = new stdgo._internal.crypto.x509.X509_T_tbsCertificateRequest.T_tbsCertificateRequest(raw, version, subject, publicKey, ([for (i in rawAttributes) i] : stdgo.Slice<stdgo._internal.encoding.asn1.Asn1_RawValue.RawValue>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit abstract T_certificateRequest(stdgo._internal.crypto.x509.X509_T_certificateRequest.T_certificateRequest) from stdgo._internal.crypto.x509.X509_T_certificateRequest.T_certificateRequest to stdgo._internal.crypto.x509.X509_T_certificateRequest.T_certificateRequest {
    public var raw(get, set) : stdgo._internal.encoding.asn1.Asn1_RawContent.RawContent;
    function get_raw():stdgo._internal.encoding.asn1.Asn1_RawContent.RawContent return this.raw;
    function set_raw(v:stdgo._internal.encoding.asn1.Asn1_RawContent.RawContent):stdgo._internal.encoding.asn1.Asn1_RawContent.RawContent {
        this.raw = v;
        return v;
    }
    public var tbscsr(get, set) : T_tbsCertificateRequest;
    function get_tbscsr():T_tbsCertificateRequest return this.tbscsr;
    function set_tbscsr(v:T_tbsCertificateRequest):T_tbsCertificateRequest {
        this.tbscsr = v;
        return v;
    }
    public var signatureAlgorithm(get, set) : AlgorithmIdentifier;
    function get_signatureAlgorithm():AlgorithmIdentifier return this.signatureAlgorithm;
    function set_signatureAlgorithm(v:AlgorithmIdentifier):AlgorithmIdentifier {
        this.signatureAlgorithm = v;
        return v;
    }
    public var signatureValue(get, set) : stdgo._internal.encoding.asn1.Asn1_BitString.BitString;
    function get_signatureValue():stdgo._internal.encoding.asn1.Asn1_BitString.BitString return this.signatureValue;
    function set_signatureValue(v:stdgo._internal.encoding.asn1.Asn1_BitString.BitString):stdgo._internal.encoding.asn1.Asn1_BitString.BitString {
        this.signatureValue = v;
        return v;
    }
    public function new(?raw:stdgo._internal.encoding.asn1.Asn1_RawContent.RawContent, ?tbscsr:T_tbsCertificateRequest, ?signatureAlgorithm:AlgorithmIdentifier, ?signatureValue:stdgo._internal.encoding.asn1.Asn1_BitString.BitString) this = new stdgo._internal.crypto.x509.X509_T_certificateRequest.T_certificateRequest(raw, tbscsr, signatureAlgorithm, signatureValue);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit abstract RevocationListEntry(stdgo._internal.crypto.x509.X509_RevocationListEntry.RevocationListEntry) from stdgo._internal.crypto.x509.X509_RevocationListEntry.RevocationListEntry to stdgo._internal.crypto.x509.X509_RevocationListEntry.RevocationListEntry {
    public var raw(get, set) : Array<std.UInt>;
    function get_raw():Array<std.UInt> return [for (i in this.raw) i];
    function set_raw(v:Array<std.UInt>):Array<std.UInt> {
        this.raw = ([for (i in v) i] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public var serialNumber(get, set) : stdgo._internal.math.big.Big_Int_.Int_;
    function get_serialNumber():stdgo._internal.math.big.Big_Int_.Int_ return this.serialNumber;
    function set_serialNumber(v:stdgo._internal.math.big.Big_Int_.Int_):stdgo._internal.math.big.Big_Int_.Int_ {
        this.serialNumber = v;
        return v;
    }
    public var revocationTime(get, set) : stdgo._internal.time.Time_Time.Time;
    function get_revocationTime():stdgo._internal.time.Time_Time.Time return this.revocationTime;
    function set_revocationTime(v:stdgo._internal.time.Time_Time.Time):stdgo._internal.time.Time_Time.Time {
        this.revocationTime = v;
        return v;
    }
    public var reasonCode(get, set) : StdTypes.Int;
    function get_reasonCode():StdTypes.Int return this.reasonCode;
    function set_reasonCode(v:StdTypes.Int):StdTypes.Int {
        this.reasonCode = v;
        return v;
    }
    public var extensions(get, set) : Array<Extension>;
    function get_extensions():Array<Extension> return [for (i in this.extensions) i];
    function set_extensions(v:Array<Extension>):Array<Extension> {
        this.extensions = ([for (i in v) i] : stdgo.Slice<stdgo._internal.crypto.x509.pkix.Pkix_Extension.Extension>);
        return v;
    }
    public var extraExtensions(get, set) : Array<Extension>;
    function get_extraExtensions():Array<Extension> return [for (i in this.extraExtensions) i];
    function set_extraExtensions(v:Array<Extension>):Array<Extension> {
        this.extraExtensions = ([for (i in v) i] : stdgo.Slice<stdgo._internal.crypto.x509.pkix.Pkix_Extension.Extension>);
        return v;
    }
    public function new(?raw:Array<std.UInt>, ?serialNumber:stdgo._internal.math.big.Big_Int_.Int_, ?revocationTime:stdgo._internal.time.Time_Time.Time, ?reasonCode:StdTypes.Int, ?extensions:Array<Extension>, ?extraExtensions:Array<Extension>) this = new stdgo._internal.crypto.x509.X509_RevocationListEntry.RevocationListEntry(([for (i in raw) i] : stdgo.Slice<stdgo.GoUInt8>), serialNumber, revocationTime, reasonCode, ([for (i in extensions) i] : stdgo.Slice<stdgo._internal.crypto.x509.pkix.Pkix_Extension.Extension>), ([for (i in extraExtensions) i] : stdgo.Slice<stdgo._internal.crypto.x509.pkix.Pkix_Extension.Extension>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.crypto.x509.X509.RevocationList_static_extension) abstract RevocationList(stdgo._internal.crypto.x509.X509_RevocationList.RevocationList) from stdgo._internal.crypto.x509.X509_RevocationList.RevocationList to stdgo._internal.crypto.x509.X509_RevocationList.RevocationList {
    public var raw(get, set) : Array<std.UInt>;
    function get_raw():Array<std.UInt> return [for (i in this.raw) i];
    function set_raw(v:Array<std.UInt>):Array<std.UInt> {
        this.raw = ([for (i in v) i] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public var rawTBSRevocationList(get, set) : Array<std.UInt>;
    function get_rawTBSRevocationList():Array<std.UInt> return [for (i in this.rawTBSRevocationList) i];
    function set_rawTBSRevocationList(v:Array<std.UInt>):Array<std.UInt> {
        this.rawTBSRevocationList = ([for (i in v) i] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public var rawIssuer(get, set) : Array<std.UInt>;
    function get_rawIssuer():Array<std.UInt> return [for (i in this.rawIssuer) i];
    function set_rawIssuer(v:Array<std.UInt>):Array<std.UInt> {
        this.rawIssuer = ([for (i in v) i] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public var issuer(get, set) : Name;
    function get_issuer():Name return this.issuer;
    function set_issuer(v:Name):Name {
        this.issuer = v;
        return v;
    }
    public var authorityKeyId(get, set) : Array<std.UInt>;
    function get_authorityKeyId():Array<std.UInt> return [for (i in this.authorityKeyId) i];
    function set_authorityKeyId(v:Array<std.UInt>):Array<std.UInt> {
        this.authorityKeyId = ([for (i in v) i] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public var signature(get, set) : Array<std.UInt>;
    function get_signature():Array<std.UInt> return [for (i in this.signature) i];
    function set_signature(v:Array<std.UInt>):Array<std.UInt> {
        this.signature = ([for (i in v) i] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public var signatureAlgorithm(get, set) : SignatureAlgorithm;
    function get_signatureAlgorithm():SignatureAlgorithm return this.signatureAlgorithm;
    function set_signatureAlgorithm(v:SignatureAlgorithm):SignatureAlgorithm {
        this.signatureAlgorithm = v;
        return v;
    }
    public var revokedCertificateEntries(get, set) : Array<RevocationListEntry>;
    function get_revokedCertificateEntries():Array<RevocationListEntry> return [for (i in this.revokedCertificateEntries) i];
    function set_revokedCertificateEntries(v:Array<RevocationListEntry>):Array<RevocationListEntry> {
        this.revokedCertificateEntries = ([for (i in v) i] : stdgo.Slice<stdgo._internal.crypto.x509.X509_RevocationListEntry.RevocationListEntry>);
        return v;
    }
    public var revokedCertificates(get, set) : Array<RevokedCertificate>;
    function get_revokedCertificates():Array<RevokedCertificate> return [for (i in this.revokedCertificates) i];
    function set_revokedCertificates(v:Array<RevokedCertificate>):Array<RevokedCertificate> {
        this.revokedCertificates = ([for (i in v) i] : stdgo.Slice<stdgo._internal.crypto.x509.pkix.Pkix_RevokedCertificate.RevokedCertificate>);
        return v;
    }
    public var number(get, set) : stdgo._internal.math.big.Big_Int_.Int_;
    function get_number():stdgo._internal.math.big.Big_Int_.Int_ return this.number;
    function set_number(v:stdgo._internal.math.big.Big_Int_.Int_):stdgo._internal.math.big.Big_Int_.Int_ {
        this.number = v;
        return v;
    }
    public var thisUpdate(get, set) : stdgo._internal.time.Time_Time.Time;
    function get_thisUpdate():stdgo._internal.time.Time_Time.Time return this.thisUpdate;
    function set_thisUpdate(v:stdgo._internal.time.Time_Time.Time):stdgo._internal.time.Time_Time.Time {
        this.thisUpdate = v;
        return v;
    }
    public var nextUpdate(get, set) : stdgo._internal.time.Time_Time.Time;
    function get_nextUpdate():stdgo._internal.time.Time_Time.Time return this.nextUpdate;
    function set_nextUpdate(v:stdgo._internal.time.Time_Time.Time):stdgo._internal.time.Time_Time.Time {
        this.nextUpdate = v;
        return v;
    }
    public var extensions(get, set) : Array<Extension>;
    function get_extensions():Array<Extension> return [for (i in this.extensions) i];
    function set_extensions(v:Array<Extension>):Array<Extension> {
        this.extensions = ([for (i in v) i] : stdgo.Slice<stdgo._internal.crypto.x509.pkix.Pkix_Extension.Extension>);
        return v;
    }
    public var extraExtensions(get, set) : Array<Extension>;
    function get_extraExtensions():Array<Extension> return [for (i in this.extraExtensions) i];
    function set_extraExtensions(v:Array<Extension>):Array<Extension> {
        this.extraExtensions = ([for (i in v) i] : stdgo.Slice<stdgo._internal.crypto.x509.pkix.Pkix_Extension.Extension>);
        return v;
    }
    public function new(?raw:Array<std.UInt>, ?rawTBSRevocationList:Array<std.UInt>, ?rawIssuer:Array<std.UInt>, ?issuer:Name, ?authorityKeyId:Array<std.UInt>, ?signature:Array<std.UInt>, ?signatureAlgorithm:SignatureAlgorithm, ?revokedCertificateEntries:Array<RevocationListEntry>, ?revokedCertificates:Array<RevokedCertificate>, ?number:stdgo._internal.math.big.Big_Int_.Int_, ?thisUpdate:stdgo._internal.time.Time_Time.Time, ?nextUpdate:stdgo._internal.time.Time_Time.Time, ?extensions:Array<Extension>, ?extraExtensions:Array<Extension>) this = new stdgo._internal.crypto.x509.X509_RevocationList.RevocationList(
([for (i in raw) i] : stdgo.Slice<stdgo.GoUInt8>),
([for (i in rawTBSRevocationList) i] : stdgo.Slice<stdgo.GoUInt8>),
([for (i in rawIssuer) i] : stdgo.Slice<stdgo.GoUInt8>),
issuer,
([for (i in authorityKeyId) i] : stdgo.Slice<stdgo.GoUInt8>),
([for (i in signature) i] : stdgo.Slice<stdgo.GoUInt8>),
signatureAlgorithm,
([for (i in revokedCertificateEntries) i] : stdgo.Slice<stdgo._internal.crypto.x509.X509_RevocationListEntry.RevocationListEntry>),
([for (i in revokedCertificates) i] : stdgo.Slice<stdgo._internal.crypto.x509.pkix.Pkix_RevokedCertificate.RevokedCertificate>),
number,
thisUpdate,
nextUpdate,
([for (i in extensions) i] : stdgo.Slice<stdgo._internal.crypto.x509.pkix.Pkix_Extension.Extension>),
([for (i in extraExtensions) i] : stdgo.Slice<stdgo._internal.crypto.x509.pkix.Pkix_Extension.Extension>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit abstract T_certificateList(stdgo._internal.crypto.x509.X509_T_certificateList.T_certificateList) from stdgo._internal.crypto.x509.X509_T_certificateList.T_certificateList to stdgo._internal.crypto.x509.X509_T_certificateList.T_certificateList {
    public var tbscertList(get, set) : T_tbsCertificateList;
    function get_tbscertList():T_tbsCertificateList return this.tbscertList;
    function set_tbscertList(v:T_tbsCertificateList):T_tbsCertificateList {
        this.tbscertList = v;
        return v;
    }
    public var signatureAlgorithm(get, set) : AlgorithmIdentifier;
    function get_signatureAlgorithm():AlgorithmIdentifier return this.signatureAlgorithm;
    function set_signatureAlgorithm(v:AlgorithmIdentifier):AlgorithmIdentifier {
        this.signatureAlgorithm = v;
        return v;
    }
    public var signatureValue(get, set) : stdgo._internal.encoding.asn1.Asn1_BitString.BitString;
    function get_signatureValue():stdgo._internal.encoding.asn1.Asn1_BitString.BitString return this.signatureValue;
    function set_signatureValue(v:stdgo._internal.encoding.asn1.Asn1_BitString.BitString):stdgo._internal.encoding.asn1.Asn1_BitString.BitString {
        this.signatureValue = v;
        return v;
    }
    public function new(?tbscertList:T_tbsCertificateList, ?signatureAlgorithm:AlgorithmIdentifier, ?signatureValue:stdgo._internal.encoding.asn1.Asn1_BitString.BitString) this = new stdgo._internal.crypto.x509.X509_T_certificateList.T_certificateList(tbscertList, signatureAlgorithm, signatureValue);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit abstract T_tbsCertificateList(stdgo._internal.crypto.x509.X509_T_tbsCertificateList.T_tbsCertificateList) from stdgo._internal.crypto.x509.X509_T_tbsCertificateList.T_tbsCertificateList to stdgo._internal.crypto.x509.X509_T_tbsCertificateList.T_tbsCertificateList {
    public var raw(get, set) : stdgo._internal.encoding.asn1.Asn1_RawContent.RawContent;
    function get_raw():stdgo._internal.encoding.asn1.Asn1_RawContent.RawContent return this.raw;
    function set_raw(v:stdgo._internal.encoding.asn1.Asn1_RawContent.RawContent):stdgo._internal.encoding.asn1.Asn1_RawContent.RawContent {
        this.raw = v;
        return v;
    }
    public var version(get, set) : StdTypes.Int;
    function get_version():StdTypes.Int return this.version;
    function set_version(v:StdTypes.Int):StdTypes.Int {
        this.version = v;
        return v;
    }
    public var signature(get, set) : AlgorithmIdentifier;
    function get_signature():AlgorithmIdentifier return this.signature;
    function set_signature(v:AlgorithmIdentifier):AlgorithmIdentifier {
        this.signature = v;
        return v;
    }
    public var issuer(get, set) : stdgo._internal.encoding.asn1.Asn1_RawValue.RawValue;
    function get_issuer():stdgo._internal.encoding.asn1.Asn1_RawValue.RawValue return this.issuer;
    function set_issuer(v:stdgo._internal.encoding.asn1.Asn1_RawValue.RawValue):stdgo._internal.encoding.asn1.Asn1_RawValue.RawValue {
        this.issuer = v;
        return v;
    }
    public var thisUpdate(get, set) : stdgo._internal.time.Time_Time.Time;
    function get_thisUpdate():stdgo._internal.time.Time_Time.Time return this.thisUpdate;
    function set_thisUpdate(v:stdgo._internal.time.Time_Time.Time):stdgo._internal.time.Time_Time.Time {
        this.thisUpdate = v;
        return v;
    }
    public var nextUpdate(get, set) : stdgo._internal.time.Time_Time.Time;
    function get_nextUpdate():stdgo._internal.time.Time_Time.Time return this.nextUpdate;
    function set_nextUpdate(v:stdgo._internal.time.Time_Time.Time):stdgo._internal.time.Time_Time.Time {
        this.nextUpdate = v;
        return v;
    }
    public var revokedCertificates(get, set) : Array<RevokedCertificate>;
    function get_revokedCertificates():Array<RevokedCertificate> return [for (i in this.revokedCertificates) i];
    function set_revokedCertificates(v:Array<RevokedCertificate>):Array<RevokedCertificate> {
        this.revokedCertificates = ([for (i in v) i] : stdgo.Slice<stdgo._internal.crypto.x509.pkix.Pkix_RevokedCertificate.RevokedCertificate>);
        return v;
    }
    public var extensions(get, set) : Array<Extension>;
    function get_extensions():Array<Extension> return [for (i in this.extensions) i];
    function set_extensions(v:Array<Extension>):Array<Extension> {
        this.extensions = ([for (i in v) i] : stdgo.Slice<stdgo._internal.crypto.x509.pkix.Pkix_Extension.Extension>);
        return v;
    }
    public function new(?raw:stdgo._internal.encoding.asn1.Asn1_RawContent.RawContent, ?version:StdTypes.Int, ?signature:AlgorithmIdentifier, ?issuer:stdgo._internal.encoding.asn1.Asn1_RawValue.RawValue, ?thisUpdate:stdgo._internal.time.Time_Time.Time, ?nextUpdate:stdgo._internal.time.Time_Time.Time, ?revokedCertificates:Array<RevokedCertificate>, ?extensions:Array<Extension>) this = new stdgo._internal.crypto.x509.X509_T_tbsCertificateList.T_tbsCertificateList(raw, version, signature, issuer, thisUpdate, nextUpdate, ([for (i in revokedCertificates) i] : stdgo.Slice<stdgo._internal.crypto.x509.pkix.Pkix_RevokedCertificate.RevokedCertificate>), ([for (i in extensions) i] : stdgo.Slice<stdgo._internal.crypto.x509.pkix.Pkix_Extension.Extension>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
class T__struct_0_static_extension {
    public static function _doSlow(__self__:stdgo._internal.crypto.x509.X509_T__struct_0.T__struct_0, _f:() -> Void) {
        final _f = _f;
        stdgo._internal.crypto.x509.X509_T__struct_0_static_extension.T__struct_0_static_extension._doSlow(__self__, _f);
    }
    public static function do_(__self__:stdgo._internal.crypto.x509.X509_T__struct_0.T__struct_0, _f:() -> Void) {
        final _f = _f;
        stdgo._internal.crypto.x509.X509_T__struct_0_static_extension.T__struct_0_static_extension.do_(__self__, _f);
    }
}
typedef T__struct_0 = stdgo._internal.crypto.x509.X509_T__struct_0.T__struct_0;
class T__struct_1_static_extension {

}
typedef T__struct_1 = stdgo._internal.crypto.x509.X509_T__struct_1.T__struct_1;
class T__struct_2_static_extension {

}
typedef T__struct_2 = stdgo._internal.crypto.x509.X509_T__struct_2.T__struct_2;
class T__struct_3_static_extension {

}
typedef T__struct_3 = stdgo._internal.crypto.x509.X509_T__struct_3.T__struct_3;
typedef T_sum224 = stdgo._internal.crypto.x509.X509_T_sum224.T_sum224;
typedef PEMCipher = stdgo._internal.crypto.x509.X509_PEMCipher.PEMCipher;
typedef InvalidReason = stdgo._internal.crypto.x509.X509_InvalidReason.InvalidReason;
typedef SignatureAlgorithm = stdgo._internal.crypto.x509.X509_SignatureAlgorithm.SignatureAlgorithm;
typedef PublicKeyAlgorithm = stdgo._internal.crypto.x509.X509_PublicKeyAlgorithm.PublicKeyAlgorithm;
typedef KeyUsage = stdgo._internal.crypto.x509.X509_KeyUsage.KeyUsage;
typedef ExtKeyUsage = stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage;
typedef InsecureAlgorithmError = stdgo._internal.crypto.x509.X509_InsecureAlgorithmError.InsecureAlgorithmError;
class T__alreadyInChain___localname___pubKeyEqual_27559_static_extension {
    static public function equal(t:stdgo._internal.crypto.x509.X509_T__alreadyInChain___localname___pubKeyEqual_27559.T__alreadyInChain___localname___pubKeyEqual_27559, _0:stdgo._internal.crypto.Crypto_PublicKey.PublicKey):Bool {
        return stdgo._internal.crypto.x509.X509_T__alreadyInChain___localname___pubKeyEqual_27559_static_extension.T__alreadyInChain___localname___pubKeyEqual_27559_static_extension.equal(t, _0);
    }
}
typedef T__alreadyInChain___localname___pubKeyEqual_27559 = stdgo._internal.crypto.x509.X509_T__alreadyInChain___localname___pubKeyEqual_27559.T__alreadyInChain___localname___pubKeyEqual_27559;
class T_createCertificate___localname___privateKey_54152_static_extension {
    static public function equal(t:stdgo._internal.crypto.x509.X509_T_createCertificate___localname___privateKey_54152.T_createCertificate___localname___privateKey_54152, _0:stdgo._internal.crypto.Crypto_PublicKey.PublicKey):Bool {
        return stdgo._internal.crypto.x509.X509_T_createCertificate___localname___privateKey_54152_static_extension.T_createCertificate___localname___privateKey_54152_static_extension.equal(t, _0);
    }
}
typedef T_createCertificate___localname___privateKey_54152 = stdgo._internal.crypto.x509.X509_T_createCertificate___localname___privateKey_54152.T_createCertificate___localname___privateKey_54152;
@:structInit abstract T__parseCSRExtensions___localname___pkcs10Attribute_63210(stdgo._internal.crypto.x509.X509_T__parseCSRExtensions___localname___pkcs10Attribute_63210.T__parseCSRExtensions___localname___pkcs10Attribute_63210) from stdgo._internal.crypto.x509.X509_T__parseCSRExtensions___localname___pkcs10Attribute_63210.T__parseCSRExtensions___localname___pkcs10Attribute_63210 to stdgo._internal.crypto.x509.X509_T__parseCSRExtensions___localname___pkcs10Attribute_63210.T__parseCSRExtensions___localname___pkcs10Attribute_63210 {
    public var id(get, set) : stdgo._internal.encoding.asn1.Asn1_ObjectIdentifier.ObjectIdentifier;
    function get_id():stdgo._internal.encoding.asn1.Asn1_ObjectIdentifier.ObjectIdentifier return this.id;
    function set_id(v:stdgo._internal.encoding.asn1.Asn1_ObjectIdentifier.ObjectIdentifier):stdgo._internal.encoding.asn1.Asn1_ObjectIdentifier.ObjectIdentifier {
        this.id = v;
        return v;
    }
    public var values(get, set) : Array<stdgo._internal.encoding.asn1.Asn1_RawValue.RawValue>;
    function get_values():Array<stdgo._internal.encoding.asn1.Asn1_RawValue.RawValue> return [for (i in this.values) i];
    function set_values(v:Array<stdgo._internal.encoding.asn1.Asn1_RawValue.RawValue>):Array<stdgo._internal.encoding.asn1.Asn1_RawValue.RawValue> {
        this.values = ([for (i in v) i] : stdgo.Slice<stdgo._internal.encoding.asn1.Asn1_RawValue.RawValue>);
        return v;
    }
    public function new(?id:stdgo._internal.encoding.asn1.Asn1_ObjectIdentifier.ObjectIdentifier, ?values:Array<stdgo._internal.encoding.asn1.Asn1_RawValue.RawValue>) this = new stdgo._internal.crypto.x509.X509_T__parseCSRExtensions___localname___pkcs10Attribute_63210.T__parseCSRExtensions___localname___pkcs10Attribute_63210(id, ([for (i in values) i] : stdgo.Slice<stdgo._internal.encoding.asn1.Asn1_RawValue.RawValue>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
class CertPool_static_extension {
    static public function equal(_s:CertPool, _other:CertPool):Bool {
        return stdgo._internal.crypto.x509.X509_CertPool_static_extension.CertPool_static_extension.equal(_s, _other);
    }
    static public function subjects(_s:CertPool):Array<Array<std.UInt>> {
        return [for (i in stdgo._internal.crypto.x509.X509_CertPool_static_extension.CertPool_static_extension.subjects(_s)) [for (i in i) i]];
    }
    static public function appendCertsFromPEM(_s:CertPool, _pemCerts:Array<std.UInt>):Bool {
        final _pemCerts = ([for (i in _pemCerts) i] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.crypto.x509.X509_CertPool_static_extension.CertPool_static_extension.appendCertsFromPEM(_s, _pemCerts);
    }
    static public function _addCertFunc(_s:CertPool, _rawSum224:T_sum224, _rawSubject:String, _getCert:() -> { var _0 : stdgo.Ref<stdgo._internal.crypto.x509.X509_Certificate.Certificate>; var _1 : stdgo.Error; }):Void {
        final _getCert = _getCert;
        stdgo._internal.crypto.x509.X509_CertPool_static_extension.CertPool_static_extension._addCertFunc(_s, _rawSum224, _rawSubject, _getCert);
    }
    static public function addCert(_s:CertPool, _cert:Certificate):Void {
        stdgo._internal.crypto.x509.X509_CertPool_static_extension.CertPool_static_extension.addCert(_s, _cert);
    }
    static public function _contains(_s:CertPool, _cert:Certificate):Bool {
        return stdgo._internal.crypto.x509.X509_CertPool_static_extension.CertPool_static_extension._contains(_s, _cert);
    }
    static public function _findPotentialParents(_s:CertPool, _cert:Certificate):Array<Certificate> {
        return [for (i in stdgo._internal.crypto.x509.X509_CertPool_static_extension.CertPool_static_extension._findPotentialParents(_s, _cert)) i];
    }
    static public function clone(_s:CertPool):CertPool {
        return stdgo._internal.crypto.x509.X509_CertPool_static_extension.CertPool_static_extension.clone(_s);
    }
    static public function _cert(_s:CertPool, _n:StdTypes.Int):stdgo.Tuple<Certificate, stdgo.Error> {
        return {
            final obj = stdgo._internal.crypto.x509.X509_CertPool_static_extension.CertPool_static_extension._cert(_s, _n);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _len(_s:CertPool):StdTypes.Int {
        return stdgo._internal.crypto.x509.X509_CertPool_static_extension.CertPool_static_extension._len(_s);
    }
}
class T_rfc1423Algo_static_extension {
    static public function _deriveKey(_c:T_rfc1423Algo, _password:Array<std.UInt>, _salt:Array<std.UInt>):Array<std.UInt> {
        final _password = ([for (i in _password) i] : stdgo.Slice<stdgo.GoUInt8>);
        final _salt = ([for (i in _salt) i] : stdgo.Slice<stdgo.GoUInt8>);
        return [for (i in stdgo._internal.crypto.x509.X509_T_rfc1423Algo_static_extension.T_rfc1423Algo_static_extension._deriveKey(_c, _password, _salt)) i];
    }
}
class CertificateInvalidError_static_extension {
    static public function error(_e:CertificateInvalidError):String {
        return stdgo._internal.crypto.x509.X509_CertificateInvalidError_static_extension.CertificateInvalidError_static_extension.error(_e);
    }
}
class HostnameError_static_extension {
    static public function error(_h:HostnameError):String {
        return stdgo._internal.crypto.x509.X509_HostnameError_static_extension.HostnameError_static_extension.error(_h);
    }
}
class UnknownAuthorityError_static_extension {
    static public function error(_e:UnknownAuthorityError):String {
        return stdgo._internal.crypto.x509.X509_UnknownAuthorityError_static_extension.UnknownAuthorityError_static_extension.error(_e);
    }
}
class SystemRootsError_static_extension {
    static public function unwrap(_se:SystemRootsError):stdgo.Error {
        return stdgo._internal.crypto.x509.X509_SystemRootsError_static_extension.SystemRootsError_static_extension.unwrap(_se);
    }
    static public function error(_se:SystemRootsError):String {
        return stdgo._internal.crypto.x509.X509_SystemRootsError_static_extension.SystemRootsError_static_extension.error(_se);
    }
}
class Certificate_static_extension {
    static public function createCRL(_c:Certificate, _rand:stdgo._internal.io.Io_Reader.Reader, _priv:stdgo.AnyInterface, _revokedCerts:Array<RevokedCertificate>, _now:stdgo._internal.time.Time_Time.Time, _expiry:stdgo._internal.time.Time_Time.Time):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        final _revokedCerts = ([for (i in _revokedCerts) i] : stdgo.Slice<stdgo._internal.crypto.x509.pkix.Pkix_RevokedCertificate.RevokedCertificate>);
        return {
            final obj = stdgo._internal.crypto.x509.X509_Certificate_static_extension.Certificate_static_extension.createCRL(_c, _rand, _priv, _revokedCerts, _now, _expiry);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    static public function checkCRLSignature(_c:Certificate, _crl:CertificateList):stdgo.Error {
        return stdgo._internal.crypto.x509.X509_Certificate_static_extension.Certificate_static_extension.checkCRLSignature(_c, _crl);
    }
    static public function _getSANExtension(_c:Certificate):Array<std.UInt> {
        return [for (i in stdgo._internal.crypto.x509.X509_Certificate_static_extension.Certificate_static_extension._getSANExtension(_c)) i];
    }
    static public function _hasNameConstraints(_c:Certificate):Bool {
        return stdgo._internal.crypto.x509.X509_Certificate_static_extension.Certificate_static_extension._hasNameConstraints(_c);
    }
    static public function checkSignature(_c:Certificate, _algo:SignatureAlgorithm, _signed:Array<std.UInt>, _signature:Array<std.UInt>):stdgo.Error {
        final _signed = ([for (i in _signed) i] : stdgo.Slice<stdgo.GoUInt8>);
        final _signature = ([for (i in _signature) i] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.crypto.x509.X509_Certificate_static_extension.Certificate_static_extension.checkSignature(_c, _algo, _signed, _signature);
    }
    static public function checkSignatureFrom(_c:Certificate, _parent:Certificate):stdgo.Error {
        return stdgo._internal.crypto.x509.X509_Certificate_static_extension.Certificate_static_extension.checkSignatureFrom(_c, _parent);
    }
    static public function _hasSANExtension(_c:Certificate):Bool {
        return stdgo._internal.crypto.x509.X509_Certificate_static_extension.Certificate_static_extension._hasSANExtension(_c);
    }
    static public function equal(_c:Certificate, _other:Certificate):Bool {
        return stdgo._internal.crypto.x509.X509_Certificate_static_extension.Certificate_static_extension.equal(_c, _other);
    }
    static public function verifyHostname(_c:Certificate, _h:String):stdgo.Error {
        return stdgo._internal.crypto.x509.X509_Certificate_static_extension.Certificate_static_extension.verifyHostname(_c, _h);
    }
    static public function _buildChains(_c:Certificate, _currentChain:Array<Certificate>, _sigChecks:stdgo.Pointer<StdTypes.Int>, _opts:VerifyOptions):stdgo.Tuple<Array<Array<Certificate>>, stdgo.Error> {
        final _currentChain = ([for (i in _currentChain) i] : stdgo.Slice<stdgo.Ref<stdgo._internal.crypto.x509.X509_Certificate.Certificate>>);
        return {
            final obj = stdgo._internal.crypto.x509.X509_Certificate_static_extension.Certificate_static_extension._buildChains(_c, _currentChain, _sigChecks, _opts);
            { _0 : [for (i in obj._0) [for (i in i) i]], _1 : obj._1 };
        };
    }
    static public function verify(_c:Certificate, _opts:VerifyOptions):stdgo.Tuple<Array<Array<Certificate>>, stdgo.Error> {
        return {
            final obj = stdgo._internal.crypto.x509.X509_Certificate_static_extension.Certificate_static_extension.verify(_c, _opts);
            { _0 : [for (i in obj._0) [for (i in i) i]], _1 : obj._1 };
        };
    }
    static public function _isValid(_c:Certificate, _certType:StdTypes.Int, _currentChain:Array<Certificate>, _opts:VerifyOptions):stdgo.Error {
        final _currentChain = ([for (i in _currentChain) i] : stdgo.Slice<stdgo.Ref<stdgo._internal.crypto.x509.X509_Certificate.Certificate>>);
        return stdgo._internal.crypto.x509.X509_Certificate_static_extension.Certificate_static_extension._isValid(_c, _certType, _currentChain, _opts);
    }
    static public function _checkNameConstraints(_c:Certificate, _count:stdgo.Pointer<StdTypes.Int>, _maxConstraintComparisons:StdTypes.Int, _nameType:String, _name:String, _parsedName:stdgo.AnyInterface, _match:(stdgo.AnyInterface, stdgo.AnyInterface) -> { var _0 : Bool; var _1 : stdgo.Error; }, _permitted:stdgo.AnyInterface, _excluded:stdgo.AnyInterface):stdgo.Error {
        final _match = _match;
        return stdgo._internal.crypto.x509.X509_Certificate_static_extension.Certificate_static_extension._checkNameConstraints(_c, _count, _maxConstraintComparisons, _nameType, _name, _parsedName, _match, _permitted, _excluded);
    }
    static public function _systemVerify(_c:Certificate, _opts:VerifyOptions):stdgo.Tuple<Array<Array<Certificate>>, stdgo.Error> {
        return {
            final obj = stdgo._internal.crypto.x509.X509_Certificate_static_extension.Certificate_static_extension._systemVerify(_c, _opts);
            { _0 : [for (i in obj._0) [for (i in i) i]], _1 : obj._1 };
        };
    }
}
class ConstraintViolationError_static_extension {
    static public function error(_:ConstraintViolationError):String {
        return stdgo._internal.crypto.x509.X509_ConstraintViolationError_static_extension.ConstraintViolationError_static_extension.error(_);
    }
}
class UnhandledCriticalExtension_static_extension {
    static public function error(_h:UnhandledCriticalExtension):String {
        return stdgo._internal.crypto.x509.X509_UnhandledCriticalExtension_static_extension.UnhandledCriticalExtension_static_extension.error(_h);
    }
}
class CertificateRequest_static_extension {
    static public function checkSignature(_c:CertificateRequest):stdgo.Error {
        return stdgo._internal.crypto.x509.X509_CertificateRequest_static_extension.CertificateRequest_static_extension.checkSignature(_c);
    }
}
class RevocationList_static_extension {
    static public function checkSignatureFrom(_rl:RevocationList, _parent:Certificate):stdgo.Error {
        return stdgo._internal.crypto.x509.X509_RevocationList_static_extension.RevocationList_static_extension.checkSignatureFrom(_rl, _parent);
    }
}
class SignatureAlgorithm_static_extension {
    static public function string(_algo:SignatureAlgorithm):String {
        return stdgo._internal.crypto.x509.X509_SignatureAlgorithm_static_extension.SignatureAlgorithm_static_extension.string(_algo);
    }
    static public function _isRSAPSS(_algo:SignatureAlgorithm):Bool {
        return stdgo._internal.crypto.x509.X509_SignatureAlgorithm_static_extension.SignatureAlgorithm_static_extension._isRSAPSS(_algo);
    }
}
class PublicKeyAlgorithm_static_extension {
    static public function string(_algo:PublicKeyAlgorithm):String {
        return stdgo._internal.crypto.x509.X509_PublicKeyAlgorithm_static_extension.PublicKeyAlgorithm_static_extension.string(_algo);
    }
}
class InsecureAlgorithmError_static_extension {
    static public function error(_e:InsecureAlgorithmError):String {
        return stdgo._internal.crypto.x509.X509_InsecureAlgorithmError_static_extension.InsecureAlgorithmError_static_extension.error(_e);
    }
}
/**
    /|*{
    	usages_5547772 = make([]ExtKeyUsage, len(keyUsages))
    	copy(usages_5547772, keyUsages)
    	if len(chain) == 0 {
    		gotoNext = 5547864
    		_ = gotoNext == 5547864
    		return false
    		gotoNext = 5547886
    	} else {
    		gotoNext = 5547886
    	}
    	_ = gotoNext == 5547886
    	usagesRemaining_5547886 = len(usages_5547772)
    	gotoNext = 5548085
    	_ = gotoNext == 5548085
    	i_5548100 = len(chain) - 1
    	NextCertBreak = false
    	gotoNext = 5548096
    	_ = gotoNext == 5548096
    	if !NextCertBreak && (i_5548100 >= 0) {
    		gotoNext = 5548133
    		_ = gotoNext == 5548133
    		cert_5548137 = chain[i_5548100]
    		if len(cert_5548137.ExtKeyUsage) == 0 && len(cert_5548137.UnknownExtKeyUsage) == 0 {
    			gotoNext = 5548223
    			_ = gotoNext == 5548223
    			i_5548100--
    			gotoNext = 5548096
    			gotoNext = 5548313
    		} else {
    			gotoNext = 5548313
    		}
    		_ = gotoNext == 5548313
    		if 0 < len(cert_5548137.ExtKeyUsage) {
    			gotoNext = 5548471
    			_ = gotoNext == 5548471
    			i_5548329_0, usage_5548320 = 0, cert_5548137.ExtKeyUsage[0]
    			gotoNext = 5548472
    			_ = gotoNext == 5548472
    			if i_5548329_0 < len(cert_5548137.ExtKeyUsage) {
    				gotoNext = 5548352
    				_ = gotoNext == 5548352
    				usage_5548320 = cert_5548137.ExtKeyUsage[i_5548329_0]
    				if usage_5548320 == 0 {
    					gotoNext = 5548384
    					_ = gotoNext == 5548384
    					i_5548100--
    					gotoNext = 5548096
    					gotoNext = 5548317
    				} else {
    					gotoNext = 5548317
    				}
    				_ = gotoNext == 5548317
    				i_5548329_0++
    				gotoNext = 5548472
    			} else {
    				gotoNext = 5548477
    			}
    			gotoNext = 5548477
    		} else {
    			gotoNext = 5548477
    		}
    		_ = gotoNext == 5548477
    		invalidUsage_5548483 = -1
    		gotoNext = 5548515
    		_ = gotoNext == 5548515
    		if 0 < len(usages_5547772) {
    			gotoNext = 5548858
    			_ = gotoNext == 5548858
    			i_5548541, requestedUsage_5548544 = 0, usages_5547772[0]
    			gotoNext = 5548859
    			_ = gotoNext == 5548859
    			if i_5548541 < len(usages_5547772) {
    				gotoNext = 5548575
    				_ = gotoNext == 5548575
    				requestedUsage_5548544 = usages_5547772[i_5548541]
    				if requestedUsage_5548544 == -1 {
    					gotoNext = 5548614
    					_ = gotoNext == 5548614
    					i_5548541++
    					gotoNext = 5548859
    					gotoNext = 5548638
    				} else {
    					gotoNext = 5548638
    				}
    				_ = gotoNext == 5548638
    				if 0 < len(cert_5548137.ExtKeyUsage) {
    					gotoNext = 5548753
    					_ = gotoNext == 5548753
    					i_5548654_0, usage_5548645 = 0, cert_5548137.ExtKeyUsage[0]
    					gotoNext = 5548754
    					_ = gotoNext == 5548754
    					if i_5548654_0 < len(cert_5548137.ExtKeyUsage) {
    						gotoNext = 5548677
    						_ = gotoNext == 5548677
    						usage_5548645 = cert_5548137.ExtKeyUsage[i_5548654_0]
    						if requestedUsage_5548544 == usage_5548645 {
    							gotoNext = 5548710
    							_ = gotoNext == 5548710
    							i_5548541++
    							gotoNext = 5548859
    							gotoNext = 5548642
    						} else {
    							gotoNext = 5548642
    						}
    						_ = gotoNext == 5548642
    						i_5548654_0++
    						gotoNext = 5548754
    					} else {
    						gotoNext = 5548760
    					}
    					gotoNext = 5548760
    				} else {
    					gotoNext = 5548760
    				}
    				_ = gotoNext == 5548760
    				usages_5547772[i_5548541] = -1
    				usagesRemaining_5547886--
    				if usagesRemaining_5547886 == 0 {
    					gotoNext = 5548833
    					_ = gotoNext == 5548833
    					return false
    					gotoNext = 5548541
    				} else {
    					gotoNext = 5548541
    				}
    				_ = gotoNext == 5548541
    				i_5548541++
    				gotoNext = 5548859
    			} else {
    				gotoNext = 5548129
    			}
    			gotoNext = 5548129
    		} else {
    			gotoNext = 5548129
    		}
    		_ = gotoNext == 5548129
    		i_5548100--
    		gotoNext = 5548096
    	} else {
    		gotoNext = 5548866
    	}
    	_ = gotoNext == 5548866
    	return true
    	gotoNext = -1
    }*|/
**/
class X509 {
    /**
        NewCertPool returns a new, empty CertPool.
    **/
    static public function newCertPool():CertPool {
        return stdgo._internal.crypto.x509.X509_newCertPool.newCertPool();
    }
    /**
        SystemCertPool returns a copy of the system cert pool.
        
        On Unix systems other than macOS the environment variables SSL_CERT_FILE and
        SSL_CERT_DIR can be used to override the system default locations for the SSL
        certificate file and SSL certificate files directory, respectively. The
        latter can be a colon-separated list.
        
        Any mutations to the returned pool are not written to disk and do not affect
        any other pool returned by SystemCertPool.
        
        New changes in the system cert pool might not be reflected in subsequent calls.
    **/
    static public function systemCertPool():stdgo.Tuple<CertPool, stdgo.Error> {
        return {
            final obj = stdgo._internal.crypto.x509.X509_systemCertPool.systemCertPool();
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        ParseCertificate parses a single certificate from the given ASN.1 DER data.
    **/
    static public function parseCertificate(_der:Array<std.UInt>):stdgo.Tuple<Certificate, stdgo.Error> {
        final _der = ([for (i in _der) i] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.crypto.x509.X509_parseCertificate.parseCertificate(_der);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        ParseCertificates parses one or more certificates from the given ASN.1 DER
        data. The certificates must be concatenated with no intermediate padding.
    **/
    static public function parseCertificates(_der:Array<std.UInt>):stdgo.Tuple<Array<Certificate>, stdgo.Error> {
        final _der = ([for (i in _der) i] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.crypto.x509.X509_parseCertificates.parseCertificates(_der);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    /**
        ParseRevocationList parses a X509 v2 Certificate Revocation List from the given
        ASN.1 DER data.
    **/
    static public function parseRevocationList(_der:Array<std.UInt>):stdgo.Tuple<RevocationList, stdgo.Error> {
        final _der = ([for (i in _der) i] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.crypto.x509.X509_parseRevocationList.parseRevocationList(_der);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        IsEncryptedPEMBlock returns whether the PEM block is password encrypted
        according to RFC 1423.
        
        Deprecated: Legacy PEM encryption as specified in RFC 1423 is insecure by
        design. Since it does not authenticate the ciphertext, it is vulnerable to
        padding oracle attacks that can let an attacker recover the plaintext.
    **/
    static public function isEncryptedPEMBlock(_b:stdgo._internal.encoding.pem.Pem_Block.Block):Bool {
        return stdgo._internal.crypto.x509.X509_isEncryptedPEMBlock.isEncryptedPEMBlock(_b);
    }
    /**
        DecryptPEMBlock takes a PEM block encrypted according to RFC 1423 and the
        password used to encrypt it and returns a slice of decrypted DER encoded
        bytes. It inspects the DEK-Info header to determine the algorithm used for
        decryption. If no DEK-Info header is present, an error is returned. If an
        incorrect password is detected an IncorrectPasswordError is returned. Because
        of deficiencies in the format, it's not always possible to detect an
        incorrect password. In these cases no error will be returned but the
        decrypted DER bytes will be random noise.
        
        Deprecated: Legacy PEM encryption as specified in RFC 1423 is insecure by
        design. Since it does not authenticate the ciphertext, it is vulnerable to
        padding oracle attacks that can let an attacker recover the plaintext.
    **/
    static public function decryptPEMBlock(_b:stdgo._internal.encoding.pem.Pem_Block.Block, _password:Array<std.UInt>):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        final _password = ([for (i in _password) i] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.crypto.x509.X509_decryptPEMBlock.decryptPEMBlock(_b, _password);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    /**
        EncryptPEMBlock returns a PEM block of the specified type holding the
        given DER encoded data encrypted with the specified algorithm and
        password according to RFC 1423.
        
        Deprecated: Legacy PEM encryption as specified in RFC 1423 is insecure by
        design. Since it does not authenticate the ciphertext, it is vulnerable to
        padding oracle attacks that can let an attacker recover the plaintext.
    **/
    static public function encryptPEMBlock(_rand:stdgo._internal.io.Io_Reader.Reader, _blockType:String, _data:Array<std.UInt>, _password:Array<std.UInt>, _alg:PEMCipher):stdgo.Tuple<stdgo._internal.encoding.pem.Pem_Block.Block, stdgo.Error> {
        final _data = ([for (i in _data) i] : stdgo.Slice<stdgo.GoUInt8>);
        final _password = ([for (i in _password) i] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.crypto.x509.X509_encryptPEMBlock.encryptPEMBlock(_rand, _blockType, _data, _password, _alg);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        ParsePKCS1PrivateKey parses an RSA private key in PKCS #1, ASN.1 DER form.
        
        This kind of key is commonly encoded in PEM blocks of type "RSA PRIVATE KEY".
    **/
    static public function parsePKCS1PrivateKey(_der:Array<std.UInt>):stdgo.Tuple<stdgo._internal.crypto.rsa.Rsa_PrivateKey.PrivateKey, stdgo.Error> {
        final _der = ([for (i in _der) i] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.crypto.x509.X509_parsePKCS1PrivateKey.parsePKCS1PrivateKey(_der);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        MarshalPKCS1PrivateKey converts an RSA private key to PKCS #1, ASN.1 DER form.
        
        This kind of key is commonly encoded in PEM blocks of type "RSA PRIVATE KEY".
        For a more flexible key format which is not RSA specific, use
        MarshalPKCS8PrivateKey.
    **/
    static public function marshalPKCS1PrivateKey(_key:stdgo._internal.crypto.rsa.Rsa_PrivateKey.PrivateKey):Array<std.UInt> {
        return [for (i in stdgo._internal.crypto.x509.X509_marshalPKCS1PrivateKey.marshalPKCS1PrivateKey(_key)) i];
    }
    /**
        ParsePKCS1PublicKey parses an RSA public key in PKCS #1, ASN.1 DER form.
        
        This kind of key is commonly encoded in PEM blocks of type "RSA PUBLIC KEY".
    **/
    static public function parsePKCS1PublicKey(_der:Array<std.UInt>):stdgo.Tuple<stdgo._internal.crypto.rsa.Rsa_PublicKey.PublicKey, stdgo.Error> {
        final _der = ([for (i in _der) i] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.crypto.x509.X509_parsePKCS1PublicKey.parsePKCS1PublicKey(_der);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        MarshalPKCS1PublicKey converts an RSA public key to PKCS #1, ASN.1 DER form.
        
        This kind of key is commonly encoded in PEM blocks of type "RSA PUBLIC KEY".
    **/
    static public function marshalPKCS1PublicKey(_key:stdgo._internal.crypto.rsa.Rsa_PublicKey.PublicKey):Array<std.UInt> {
        return [for (i in stdgo._internal.crypto.x509.X509_marshalPKCS1PublicKey.marshalPKCS1PublicKey(_key)) i];
    }
    /**
        ParsePKCS8PrivateKey parses an unencrypted private key in PKCS #8, ASN.1 DER form.
        
        It returns a *rsa.PrivateKey, an *ecdsa.PrivateKey, an ed25519.PrivateKey (not
        a pointer), or an *ecdh.PrivateKey (for X25519). More types might be supported
        in the future.
        
        This kind of key is commonly encoded in PEM blocks of type "PRIVATE KEY".
    **/
    static public function parsePKCS8PrivateKey(_der:Array<std.UInt>):stdgo.Tuple<stdgo.AnyInterface, stdgo.Error> {
        final _der = ([for (i in _der) i] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.crypto.x509.X509_parsePKCS8PrivateKey.parsePKCS8PrivateKey(_der);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        MarshalPKCS8PrivateKey converts a private key to PKCS #8, ASN.1 DER form.
        
        The following key types are currently supported: *rsa.PrivateKey,
        *ecdsa.PrivateKey, ed25519.PrivateKey (not a pointer), and *ecdh.PrivateKey.
        Unsupported key types result in an error.
        
        This kind of key is commonly encoded in PEM blocks of type "PRIVATE KEY".
    **/
    static public function marshalPKCS8PrivateKey(_key:stdgo.AnyInterface):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        return {
            final obj = stdgo._internal.crypto.x509.X509_marshalPKCS8PrivateKey.marshalPKCS8PrivateKey(_key);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    /**
        SetFallbackRoots sets the roots to use during certificate verification, if no
        custom roots are specified and a platform verifier or a system certificate
        pool is not available (for instance in a container which does not have a root
        certificate bundle). SetFallbackRoots will panic if roots is nil.
        
        SetFallbackRoots may only be called once, if called multiple times it will
        panic.
        
        The fallback behavior can be forced on all platforms, even when there is a
        system certificate pool, by setting GODEBUG=x509usefallbackroots=1 (note that
        on Windows and macOS this will disable usage of the platform verification
        APIs and cause the pure Go verifier to be used). Setting
        x509usefallbackroots=1 without calling SetFallbackRoots has no effect.
    **/
    static public function setFallbackRoots(_roots:CertPool):Void {
        stdgo._internal.crypto.x509.X509_setFallbackRoots.setFallbackRoots(_roots);
    }
    /**
        ParseECPrivateKey parses an EC private key in SEC 1, ASN.1 DER form.
        
        This kind of key is commonly encoded in PEM blocks of type "EC PRIVATE KEY".
    **/
    static public function parseECPrivateKey(_der:Array<std.UInt>):stdgo.Tuple<stdgo._internal.crypto.ecdsa.Ecdsa_PrivateKey.PrivateKey, stdgo.Error> {
        final _der = ([for (i in _der) i] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.crypto.x509.X509_parseECPrivateKey.parseECPrivateKey(_der);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        MarshalECPrivateKey converts an EC private key to SEC 1, ASN.1 DER form.
        
        This kind of key is commonly encoded in PEM blocks of type "EC PRIVATE KEY".
        For a more flexible key format which is not EC specific, use
        MarshalPKCS8PrivateKey.
    **/
    static public function marshalECPrivateKey(_key:stdgo._internal.crypto.ecdsa.Ecdsa_PrivateKey.PrivateKey):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        return {
            final obj = stdgo._internal.crypto.x509.X509_marshalECPrivateKey.marshalECPrivateKey(_key);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    /**
        ParsePKIXPublicKey parses a public key in PKIX, ASN.1 DER form. The encoded
        public key is a SubjectPublicKeyInfo structure (see RFC 5280, Section 4.1).
        
        It returns a *rsa.PublicKey, *dsa.PublicKey, *ecdsa.PublicKey,
        ed25519.PublicKey (not a pointer), or *ecdh.PublicKey (for X25519).
        More types might be supported in the future.
        
        This kind of key is commonly encoded in PEM blocks of type "PUBLIC KEY".
    **/
    static public function parsePKIXPublicKey(_derBytes:Array<std.UInt>):stdgo.Tuple<stdgo.AnyInterface, stdgo.Error> {
        final _derBytes = ([for (i in _derBytes) i] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.crypto.x509.X509_parsePKIXPublicKey.parsePKIXPublicKey(_derBytes);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        MarshalPKIXPublicKey converts a public key to PKIX, ASN.1 DER form.
        The encoded public key is a SubjectPublicKeyInfo structure
        (see RFC 5280, Section 4.1).
        
        The following key types are currently supported: *rsa.PublicKey,
        *ecdsa.PublicKey, ed25519.PublicKey (not a pointer), and *ecdh.PublicKey.
        Unsupported key types result in an error.
        
        This kind of key is commonly encoded in PEM blocks of type "PUBLIC KEY".
    **/
    static public function marshalPKIXPublicKey(_pub:stdgo.AnyInterface):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        return {
            final obj = stdgo._internal.crypto.x509.X509_marshalPKIXPublicKey.marshalPKIXPublicKey(_pub);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    /**
        CreateCertificate creates a new X.509 v3 certificate based on a template.
        The following members of template are currently used:
        
          - AuthorityKeyId
          - BasicConstraintsValid
          - CRLDistributionPoints
          - DNSNames
          - EmailAddresses
          - ExcludedDNSDomains
          - ExcludedEmailAddresses
          - ExcludedIPRanges
          - ExcludedURIDomains
          - ExtKeyUsage
          - ExtraExtensions
          - IPAddresses
          - IsCA
          - IssuingCertificateURL
          - KeyUsage
          - MaxPathLen
          - MaxPathLenZero
          - NotAfter
          - NotBefore
          - OCSPServer
          - PermittedDNSDomains
          - PermittedDNSDomainsCritical
          - PermittedEmailAddresses
          - PermittedIPRanges
          - PermittedURIDomains
          - PolicyIdentifiers
          - SerialNumber
          - SignatureAlgorithm
          - Subject
          - SubjectKeyId
          - URIs
          - UnknownExtKeyUsage
        
        The certificate is signed by parent. If parent is equal to template then the
        certificate is self-signed. The parameter pub is the public key of the
        certificate to be generated and priv is the private key of the signer.
        
        The returned slice is the certificate in DER encoding.
        
        The currently supported key types are *rsa.PublicKey, *ecdsa.PublicKey and
        ed25519.PublicKey. pub must be a supported key type, and priv must be a
        crypto.Signer with a supported public key.
        
        The AuthorityKeyId will be taken from the SubjectKeyId of parent, if any,
        unless the resulting certificate is self-signed. Otherwise the value from
        template will be used.
        
        If SubjectKeyId from template is empty and the template is a CA, SubjectKeyId
        will be generated from the hash of the public key.
    **/
    static public function createCertificate(_rand:stdgo._internal.io.Io_Reader.Reader, _template:Certificate, _parent:Certificate, _pub:stdgo.AnyInterface, _priv:stdgo.AnyInterface):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        return {
            final obj = stdgo._internal.crypto.x509.X509_createCertificate.createCertificate(_rand, _template, _parent, _pub, _priv);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    /**
        ParseCRL parses a CRL from the given bytes. It's often the case that PEM
        encoded CRLs will appear where they should be DER encoded, so this function
        will transparently handle PEM encoding as long as there isn't any leading
        garbage.
        
        Deprecated: Use ParseRevocationList instead.
    **/
    static public function parseCRL(_crlBytes:Array<std.UInt>):stdgo.Tuple<CertificateList, stdgo.Error> {
        final _crlBytes = ([for (i in _crlBytes) i] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.crypto.x509.X509_parseCRL.parseCRL(_crlBytes);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        ParseDERCRL parses a DER encoded CRL from the given bytes.
        
        Deprecated: Use ParseRevocationList instead.
    **/
    static public function parseDERCRL(_derBytes:Array<std.UInt>):stdgo.Tuple<CertificateList, stdgo.Error> {
        final _derBytes = ([for (i in _derBytes) i] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.crypto.x509.X509_parseDERCRL.parseDERCRL(_derBytes);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        CreateCertificateRequest creates a new certificate request based on a
        template. The following members of template are used:
        
          - SignatureAlgorithm
          - Subject
          - DNSNames
          - EmailAddresses
          - IPAddresses
          - URIs
          - ExtraExtensions
          - Attributes (deprecated)
        
        priv is the private key to sign the CSR with, and the corresponding public
        key will be included in the CSR. It must implement crypto.Signer and its
        Public() method must return a *rsa.PublicKey or a *ecdsa.PublicKey or a
        ed25519.PublicKey. (A *rsa.PrivateKey, *ecdsa.PrivateKey or
        ed25519.PrivateKey satisfies this.)
        
        The returned slice is the certificate request in DER encoding.
    **/
    static public function createCertificateRequest(_rand:stdgo._internal.io.Io_Reader.Reader, _template:CertificateRequest, _priv:stdgo.AnyInterface):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        return {
            final obj = stdgo._internal.crypto.x509.X509_createCertificateRequest.createCertificateRequest(_rand, _template, _priv);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    /**
        ParseCertificateRequest parses a single certificate request from the
        given ASN.1 DER data.
    **/
    static public function parseCertificateRequest(_asn1Data:Array<std.UInt>):stdgo.Tuple<CertificateRequest, stdgo.Error> {
        final _asn1Data = ([for (i in _asn1Data) i] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.crypto.x509.X509_parseCertificateRequest.parseCertificateRequest(_asn1Data);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        CreateRevocationList creates a new X.509 v2 Certificate Revocation List,
        according to RFC 5280, based on template.
        
        The CRL is signed by priv which should be the private key associated with
        the public key in the issuer certificate.
        
        The issuer may not be nil, and the crlSign bit must be set in KeyUsage in
        order to use it as a CRL issuer.
        
        The issuer distinguished name CRL field and authority key identifier
        extension are populated using the issuer certificate. issuer must have
        SubjectKeyId set.
    **/
    static public function createRevocationList(_rand:stdgo._internal.io.Io_Reader.Reader, _template:RevocationList, _issuer:Certificate, _priv:stdgo._internal.crypto.Crypto_Signer.Signer):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        return {
            final obj = stdgo._internal.crypto.x509.X509_createRevocationList.createRevocationList(_rand, _template, _issuer, _priv);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
}
