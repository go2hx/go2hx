package stdgo;
final pEMCipherDES = stdgo._internal.crypto.x509.X509_pemcipherdes.pEMCipherDES;
final pEMCipher3DES = stdgo._internal.crypto.x509.X509_pemcipher3des.pEMCipher3DES;
final pEMCipherAES128 = stdgo._internal.crypto.x509.X509_pemcipheraes128.pEMCipherAES128;
final pEMCipherAES192 = stdgo._internal.crypto.x509.X509_pemcipheraes192.pEMCipherAES192;
final pEMCipherAES256 = stdgo._internal.crypto.x509.X509_pemcipheraes256.pEMCipherAES256;
final notAuthorizedToSign : InvalidReason = stdgo._internal.crypto.x509.X509_notauthorizedtosign.notAuthorizedToSign;
final expired = stdgo._internal.crypto.x509.X509_expired.expired;
final cANotAuthorizedForThisName = stdgo._internal.crypto.x509.X509_canotauthorizedforthisname.cANotAuthorizedForThisName;
final tooManyIntermediates = stdgo._internal.crypto.x509.X509_toomanyintermediates.tooManyIntermediates;
final incompatibleUsage = stdgo._internal.crypto.x509.X509_incompatibleusage.incompatibleUsage;
final nameMismatch = stdgo._internal.crypto.x509.X509_namemismatch.nameMismatch;
final nameConstraintsWithoutSANs = stdgo._internal.crypto.x509.X509_nameconstraintswithoutsans.nameConstraintsWithoutSANs;
final unconstrainedName = stdgo._internal.crypto.x509.X509_unconstrainedname.unconstrainedName;
final tooManyConstraints = stdgo._internal.crypto.x509.X509_toomanyconstraints.tooManyConstraints;
final cANotAuthorizedForExtKeyUsage = stdgo._internal.crypto.x509.X509_canotauthorizedforextkeyusage.cANotAuthorizedForExtKeyUsage;
final unknownSignatureAlgorithm : SignatureAlgorithm = stdgo._internal.crypto.x509.X509_unknownsignaturealgorithm.unknownSignatureAlgorithm;
final mD2WithRSA = stdgo._internal.crypto.x509.X509_md2withrsa.mD2WithRSA;
final mD5WithRSA = stdgo._internal.crypto.x509.X509_md5withrsa.mD5WithRSA;
final sHA1WithRSA = stdgo._internal.crypto.x509.X509_sha1withrsa.sHA1WithRSA;
final sHA256WithRSA = stdgo._internal.crypto.x509.X509_sha256withrsa.sHA256WithRSA;
final sHA384WithRSA = stdgo._internal.crypto.x509.X509_sha384withrsa.sHA384WithRSA;
final sHA512WithRSA = stdgo._internal.crypto.x509.X509_sha512withrsa.sHA512WithRSA;
final dSAWithSHA1 = stdgo._internal.crypto.x509.X509_dsawithsha1.dSAWithSHA1;
final dSAWithSHA256 = stdgo._internal.crypto.x509.X509_dsawithsha256.dSAWithSHA256;
final eCDSAWithSHA1 = stdgo._internal.crypto.x509.X509_ecdsawithsha1.eCDSAWithSHA1;
final eCDSAWithSHA256 = stdgo._internal.crypto.x509.X509_ecdsawithsha256.eCDSAWithSHA256;
final eCDSAWithSHA384 = stdgo._internal.crypto.x509.X509_ecdsawithsha384.eCDSAWithSHA384;
final eCDSAWithSHA512 = stdgo._internal.crypto.x509.X509_ecdsawithsha512.eCDSAWithSHA512;
final sHA256WithRSAPSS = stdgo._internal.crypto.x509.X509_sha256withrsapss.sHA256WithRSAPSS;
final sHA384WithRSAPSS = stdgo._internal.crypto.x509.X509_sha384withrsapss.sHA384WithRSAPSS;
final sHA512WithRSAPSS = stdgo._internal.crypto.x509.X509_sha512withrsapss.sHA512WithRSAPSS;
final pureEd25519 = stdgo._internal.crypto.x509.X509_pureed25519.pureEd25519;
final unknownPublicKeyAlgorithm : PublicKeyAlgorithm = stdgo._internal.crypto.x509.X509_unknownpublickeyalgorithm.unknownPublicKeyAlgorithm;
final rSA = stdgo._internal.crypto.x509.X509_rsa.rSA;
final dSA = stdgo._internal.crypto.x509.X509_dsa.dSA;
final eCDSA = stdgo._internal.crypto.x509.X509_ecdsa.eCDSA;
final ed25519 = stdgo._internal.crypto.x509.X509_ed25519.ed25519;
final keyUsageDigitalSignature : KeyUsage = stdgo._internal.crypto.x509.X509_keyusagedigitalsignature.keyUsageDigitalSignature;
final keyUsageContentCommitment = stdgo._internal.crypto.x509.X509_keyusagecontentcommitment.keyUsageContentCommitment;
final keyUsageKeyEncipherment = stdgo._internal.crypto.x509.X509_keyusagekeyencipherment.keyUsageKeyEncipherment;
final keyUsageDataEncipherment = stdgo._internal.crypto.x509.X509_keyusagedataencipherment.keyUsageDataEncipherment;
final keyUsageKeyAgreement = stdgo._internal.crypto.x509.X509_keyusagekeyagreement.keyUsageKeyAgreement;
final keyUsageCertSign = stdgo._internal.crypto.x509.X509_keyusagecertsign.keyUsageCertSign;
final keyUsageCRLSign = stdgo._internal.crypto.x509.X509_keyusagecrlsign.keyUsageCRLSign;
final keyUsageEncipherOnly = stdgo._internal.crypto.x509.X509_keyusageencipheronly.keyUsageEncipherOnly;
final keyUsageDecipherOnly = stdgo._internal.crypto.x509.X509_keyusagedecipheronly.keyUsageDecipherOnly;
final extKeyUsageAny : ExtKeyUsage = stdgo._internal.crypto.x509.X509_extkeyusageany.extKeyUsageAny;
final extKeyUsageServerAuth = stdgo._internal.crypto.x509.X509_extkeyusageserverauth.extKeyUsageServerAuth;
final extKeyUsageClientAuth = stdgo._internal.crypto.x509.X509_extkeyusageclientauth.extKeyUsageClientAuth;
final extKeyUsageCodeSigning = stdgo._internal.crypto.x509.X509_extkeyusagecodesigning.extKeyUsageCodeSigning;
final extKeyUsageEmailProtection = stdgo._internal.crypto.x509.X509_extkeyusageemailprotection.extKeyUsageEmailProtection;
final extKeyUsageIPSECEndSystem = stdgo._internal.crypto.x509.X509_extkeyusageipsecendsystem.extKeyUsageIPSECEndSystem;
final extKeyUsageIPSECTunnel = stdgo._internal.crypto.x509.X509_extkeyusageipsectunnel.extKeyUsageIPSECTunnel;
final extKeyUsageIPSECUser = stdgo._internal.crypto.x509.X509_extkeyusageipsecuser.extKeyUsageIPSECUser;
final extKeyUsageTimeStamping = stdgo._internal.crypto.x509.X509_extkeyusagetimestamping.extKeyUsageTimeStamping;
final extKeyUsageOCSPSigning = stdgo._internal.crypto.x509.X509_extkeyusageocspsigning.extKeyUsageOCSPSigning;
final extKeyUsageMicrosoftServerGatedCrypto = stdgo._internal.crypto.x509.X509_extkeyusagemicrosoftservergatedcrypto.extKeyUsageMicrosoftServerGatedCrypto;
final extKeyUsageNetscapeServerGatedCrypto = stdgo._internal.crypto.x509.X509_extkeyusagenetscapeservergatedcrypto.extKeyUsageNetscapeServerGatedCrypto;
final extKeyUsageMicrosoftCommercialCodeSigning = stdgo._internal.crypto.x509.X509_extkeyusagemicrosoftcommercialcodesigning.extKeyUsageMicrosoftCommercialCodeSigning;
final extKeyUsageMicrosoftKernelCodeSigning = stdgo._internal.crypto.x509.X509_extkeyusagemicrosoftkernelcodesigning.extKeyUsageMicrosoftKernelCodeSigning;
var incorrectPasswordError(get, set) : stdgo.Error;
private function get_incorrectPasswordError():stdgo.Error return stdgo._internal.crypto.x509.X509_incorrectpassworderror.incorrectPasswordError;
private function set_incorrectPasswordError(v:stdgo.Error):stdgo.Error {
        stdgo._internal.crypto.x509.X509_incorrectpassworderror.incorrectPasswordError = (v : stdgo.Error);
        return v;
    }
var errUnsupportedAlgorithm(get, set) : stdgo.Error;
private function get_errUnsupportedAlgorithm():stdgo.Error return stdgo._internal.crypto.x509.X509_errunsupportedalgorithm.errUnsupportedAlgorithm;
private function set_errUnsupportedAlgorithm(v:stdgo.Error):stdgo.Error {
        stdgo._internal.crypto.x509.X509_errunsupportedalgorithm.errUnsupportedAlgorithm = (v : stdgo.Error);
        return v;
    }
@:structInit @:using(stdgo.crypto.x509.X509.CertPool_static_extension) abstract CertPool(stdgo._internal.crypto.x509.X509_certpool.CertPool) from stdgo._internal.crypto.x509.X509_certpool.CertPool to stdgo._internal.crypto.x509.X509_certpool.CertPool {
    public var _byName(get, set) : Map<String, Array<StdTypes.Int>>;
    function get__byName():Map<String, Array<StdTypes.Int>> return {
        final __obj__:Map<String, Array<StdTypes.Int>> = [];
        for (key => value in this._byName) {
            __obj__[key] = [for (i in value) i];
        };
        __obj__;
    };
    function set__byName(v:Map<String, Array<StdTypes.Int>>):Map<String, Array<StdTypes.Int>> {
        this._byName = {
            final __obj__ = new stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo.GoInt>>();
            for (key => value in v) {
                __obj__[(key : stdgo.GoString)] = ([for (i in value) (i : stdgo.GoInt)] : stdgo.Slice<stdgo.GoInt>);
            };
            __obj__;
        };
        return v;
    }
    public var _lazyCerts(get, set) : Array<T_lazyCert>;
    function get__lazyCerts():Array<T_lazyCert> return [for (i in this._lazyCerts) i];
    function set__lazyCerts(v:Array<T_lazyCert>):Array<T_lazyCert> {
        this._lazyCerts = ([for (i in v) i] : stdgo.Slice<stdgo._internal.crypto.x509.X509_t_lazycert.T_lazyCert>);
        return v;
    }
    public var _haveSum(get, set) : Map<T_sum224, Bool>;
    function get__haveSum():Map<T_sum224, Bool> return {
        final __obj__:Map<T_sum224, Bool> = [];
        for (key => value in this._haveSum) {
            __obj__[key] = value;
        };
        __obj__;
    };
    function set__haveSum(v:Map<T_sum224, Bool>):Map<T_sum224, Bool> {
        this._haveSum = {
            final __obj__ = new stdgo.GoMap<stdgo._internal.crypto.x509.X509_t_sum224.T_sum224, Bool>();
            for (key => value in v) {
                __obj__[key] = value;
            };
            __obj__;
        };
        return v;
    }
    public var _systemPool(get, set) : Bool;
    function get__systemPool():Bool return this._systemPool;
    function set__systemPool(v:Bool):Bool {
        this._systemPool = v;
        return v;
    }
    public function new(?_byName:Map<String, Array<StdTypes.Int>>, ?_lazyCerts:Array<T_lazyCert>, ?_haveSum:Map<T_sum224, Bool>, ?_systemPool:Bool) this = new stdgo._internal.crypto.x509.X509_certpool.CertPool({
        final __obj__ = new stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo.GoInt>>();
        for (key => value in _byName) {
            __obj__[(key : stdgo.GoString)] = ([for (i in value) (i : stdgo.GoInt)] : stdgo.Slice<stdgo.GoInt>);
        };
        __obj__;
    }, ([for (i in _lazyCerts) i] : stdgo.Slice<stdgo._internal.crypto.x509.X509_t_lazycert.T_lazyCert>), {
        final __obj__ = new stdgo.GoMap<stdgo._internal.crypto.x509.X509_t_sum224.T_sum224, Bool>();
        for (key => value in _haveSum) {
            __obj__[key] = value;
        };
        __obj__;
    }, _systemPool);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.crypto.x509.X509.T_lazyCert_static_extension) @:dox(hide) abstract T_lazyCert(stdgo._internal.crypto.x509.X509_t_lazycert.T_lazyCert) from stdgo._internal.crypto.x509.X509_t_lazycert.T_lazyCert to stdgo._internal.crypto.x509.X509_t_lazycert.T_lazyCert {
    public var _rawSubject(get, set) : Array<std.UInt>;
    function get__rawSubject():Array<std.UInt> return [for (i in this._rawSubject) i];
    function set__rawSubject(v:Array<std.UInt>):Array<std.UInt> {
        this._rawSubject = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public var _getCert(get, set) : () -> stdgo.Tuple<Certificate, stdgo.Error>;
    function get__getCert():() -> stdgo.Tuple<Certificate, stdgo.Error> return () -> this._getCert();
    function set__getCert(v:() -> stdgo.Tuple<Certificate, stdgo.Error>):() -> stdgo.Tuple<Certificate, stdgo.Error> {
        this._getCert = v;
        return v;
    }
    public function new(?_rawSubject:Array<std.UInt>, ?_getCert:() -> stdgo.Tuple<Certificate, stdgo.Error>) this = new stdgo._internal.crypto.x509.X509_t_lazycert.T_lazyCert(([for (i in _rawSubject) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>), _getCert);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.crypto.x509.X509.T_rfc1423Algo_static_extension) @:dox(hide) abstract T_rfc1423Algo(stdgo._internal.crypto.x509.X509_t_rfc1423algo.T_rfc1423Algo) from stdgo._internal.crypto.x509.X509_t_rfc1423algo.T_rfc1423Algo to stdgo._internal.crypto.x509.X509_t_rfc1423algo.T_rfc1423Algo {
    public var _cipher(get, set) : PEMCipher;
    function get__cipher():PEMCipher return this._cipher;
    function set__cipher(v:PEMCipher):PEMCipher {
        this._cipher = v;
        return v;
    }
    public var _name(get, set) : String;
    function get__name():String return this._name;
    function set__name(v:String):String {
        this._name = (v : stdgo.GoString);
        return v;
    }
    public var _cipherFunc(get, set) : Array<std.UInt> -> stdgo.Tuple<stdgo._internal.crypto.cipher.Cipher_block.Block, stdgo.Error>;
    function get__cipherFunc():Array<std.UInt> -> stdgo.Tuple<stdgo._internal.crypto.cipher.Cipher_block.Block, stdgo.Error> return _0 -> this._cipherFunc([for (i in _0) i]);
    function set__cipherFunc(v:Array<std.UInt> -> stdgo.Tuple<stdgo._internal.crypto.cipher.Cipher_block.Block, stdgo.Error>):Array<std.UInt> -> stdgo.Tuple<stdgo._internal.crypto.cipher.Cipher_block.Block, stdgo.Error> {
        this._cipherFunc = v;
        return v;
    }
    public var _keySize(get, set) : StdTypes.Int;
    function get__keySize():StdTypes.Int return this._keySize;
    function set__keySize(v:StdTypes.Int):StdTypes.Int {
        this._keySize = (v : stdgo.GoInt);
        return v;
    }
    public var _blockSize(get, set) : StdTypes.Int;
    function get__blockSize():StdTypes.Int return this._blockSize;
    function set__blockSize(v:StdTypes.Int):StdTypes.Int {
        this._blockSize = (v : stdgo.GoInt);
        return v;
    }
    public function new(?_cipher:PEMCipher, ?_name:String, ?_cipherFunc:Array<std.UInt> -> stdgo.Tuple<stdgo._internal.crypto.cipher.Cipher_block.Block, stdgo.Error>, ?_keySize:StdTypes.Int, ?_blockSize:StdTypes.Int) this = new stdgo._internal.crypto.x509.X509_t_rfc1423algo.T_rfc1423Algo(_cipher, (_name : stdgo.GoString), _cipherFunc, (_keySize : stdgo.GoInt), (_blockSize : stdgo.GoInt));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.crypto.x509.X509.T_pkcs1PrivateKey_static_extension) @:dox(hide) abstract T_pkcs1PrivateKey(stdgo._internal.crypto.x509.X509_t_pkcs1privatekey.T_pkcs1PrivateKey) from stdgo._internal.crypto.x509.X509_t_pkcs1privatekey.T_pkcs1PrivateKey to stdgo._internal.crypto.x509.X509_t_pkcs1privatekey.T_pkcs1PrivateKey {
    public var version(get, set) : StdTypes.Int;
    function get_version():StdTypes.Int return this.version;
    function set_version(v:StdTypes.Int):StdTypes.Int {
        this.version = (v : stdgo.GoInt);
        return v;
    }
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
    public var d(get, set) : stdgo._internal.math.big.Big_int_.Int_;
    function get_d():stdgo._internal.math.big.Big_int_.Int_ return this.d;
    function set_d(v:stdgo._internal.math.big.Big_int_.Int_):stdgo._internal.math.big.Big_int_.Int_ {
        this.d = (v : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        return v;
    }
    public var p(get, set) : stdgo._internal.math.big.Big_int_.Int_;
    function get_p():stdgo._internal.math.big.Big_int_.Int_ return this.p;
    function set_p(v:stdgo._internal.math.big.Big_int_.Int_):stdgo._internal.math.big.Big_int_.Int_ {
        this.p = (v : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        return v;
    }
    public var q(get, set) : stdgo._internal.math.big.Big_int_.Int_;
    function get_q():stdgo._internal.math.big.Big_int_.Int_ return this.q;
    function set_q(v:stdgo._internal.math.big.Big_int_.Int_):stdgo._internal.math.big.Big_int_.Int_ {
        this.q = (v : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        return v;
    }
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
    public var additionalPrimes(get, set) : Array<T_pkcs1AdditionalRSAPrime>;
    function get_additionalPrimes():Array<T_pkcs1AdditionalRSAPrime> return [for (i in this.additionalPrimes) i];
    function set_additionalPrimes(v:Array<T_pkcs1AdditionalRSAPrime>):Array<T_pkcs1AdditionalRSAPrime> {
        this.additionalPrimes = ([for (i in v) i] : stdgo.Slice<stdgo._internal.crypto.x509.X509_t_pkcs1additionalrsaprime.T_pkcs1AdditionalRSAPrime>);
        return v;
    }
    public function new(?version:StdTypes.Int, ?n:stdgo._internal.math.big.Big_int_.Int_, ?e:StdTypes.Int, ?d:stdgo._internal.math.big.Big_int_.Int_, ?p:stdgo._internal.math.big.Big_int_.Int_, ?q:stdgo._internal.math.big.Big_int_.Int_, ?dp:stdgo._internal.math.big.Big_int_.Int_, ?dq:stdgo._internal.math.big.Big_int_.Int_, ?qinv:stdgo._internal.math.big.Big_int_.Int_, ?additionalPrimes:Array<T_pkcs1AdditionalRSAPrime>) this = new stdgo._internal.crypto.x509.X509_t_pkcs1privatekey.T_pkcs1PrivateKey((version : stdgo.GoInt), (n : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>), (e : stdgo.GoInt), (d : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>), (p : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>), (q : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>), (dp : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>), (dq : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>), (qinv : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>), ([for (i in additionalPrimes) i] : stdgo.Slice<stdgo._internal.crypto.x509.X509_t_pkcs1additionalrsaprime.T_pkcs1AdditionalRSAPrime>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.crypto.x509.X509.T_pkcs1AdditionalRSAPrime_static_extension) @:dox(hide) abstract T_pkcs1AdditionalRSAPrime(stdgo._internal.crypto.x509.X509_t_pkcs1additionalrsaprime.T_pkcs1AdditionalRSAPrime) from stdgo._internal.crypto.x509.X509_t_pkcs1additionalrsaprime.T_pkcs1AdditionalRSAPrime to stdgo._internal.crypto.x509.X509_t_pkcs1additionalrsaprime.T_pkcs1AdditionalRSAPrime {
    public var prime(get, set) : stdgo._internal.math.big.Big_int_.Int_;
    function get_prime():stdgo._internal.math.big.Big_int_.Int_ return this.prime;
    function set_prime(v:stdgo._internal.math.big.Big_int_.Int_):stdgo._internal.math.big.Big_int_.Int_ {
        this.prime = (v : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        return v;
    }
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
    public function new(?prime:stdgo._internal.math.big.Big_int_.Int_, ?exp:stdgo._internal.math.big.Big_int_.Int_, ?coeff:stdgo._internal.math.big.Big_int_.Int_) this = new stdgo._internal.crypto.x509.X509_t_pkcs1additionalrsaprime.T_pkcs1AdditionalRSAPrime((prime : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>), (exp : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>), (coeff : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.crypto.x509.X509.T_pkcs1PublicKey_static_extension) @:dox(hide) abstract T_pkcs1PublicKey(stdgo._internal.crypto.x509.X509_t_pkcs1publickey.T_pkcs1PublicKey) from stdgo._internal.crypto.x509.X509_t_pkcs1publickey.T_pkcs1PublicKey to stdgo._internal.crypto.x509.X509_t_pkcs1publickey.T_pkcs1PublicKey {
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
    public function new(?n:stdgo._internal.math.big.Big_int_.Int_, ?e:StdTypes.Int) this = new stdgo._internal.crypto.x509.X509_t_pkcs1publickey.T_pkcs1PublicKey((n : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>), (e : stdgo.GoInt));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.crypto.x509.X509.T_pkcs8_static_extension) @:dox(hide) abstract T_pkcs8(stdgo._internal.crypto.x509.X509_t_pkcs8.T_pkcs8) from stdgo._internal.crypto.x509.X509_t_pkcs8.T_pkcs8 to stdgo._internal.crypto.x509.X509_t_pkcs8.T_pkcs8 {
    public var version(get, set) : StdTypes.Int;
    function get_version():StdTypes.Int return this.version;
    function set_version(v:StdTypes.Int):StdTypes.Int {
        this.version = (v : stdgo.GoInt);
        return v;
    }
    public var algo(get, set) : stdgo._internal.crypto.x509.pkix.Pkix_algorithmidentifier.AlgorithmIdentifier;
    function get_algo():stdgo._internal.crypto.x509.pkix.Pkix_algorithmidentifier.AlgorithmIdentifier return this.algo;
    function set_algo(v:stdgo._internal.crypto.x509.pkix.Pkix_algorithmidentifier.AlgorithmIdentifier):stdgo._internal.crypto.x509.pkix.Pkix_algorithmidentifier.AlgorithmIdentifier {
        this.algo = v;
        return v;
    }
    public var privateKey(get, set) : Array<std.UInt>;
    function get_privateKey():Array<std.UInt> return [for (i in this.privateKey) i];
    function set_privateKey(v:Array<std.UInt>):Array<std.UInt> {
        this.privateKey = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public function new(?version:StdTypes.Int, ?algo:stdgo._internal.crypto.x509.pkix.Pkix_algorithmidentifier.AlgorithmIdentifier, ?privateKey:Array<std.UInt>) this = new stdgo._internal.crypto.x509.X509_t_pkcs8.T_pkcs8((version : stdgo.GoInt), algo, ([for (i in privateKey) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.crypto.x509.X509.T_ecPrivateKey_static_extension) @:dox(hide) abstract T_ecPrivateKey(stdgo._internal.crypto.x509.X509_t_ecprivatekey.T_ecPrivateKey) from stdgo._internal.crypto.x509.X509_t_ecprivatekey.T_ecPrivateKey to stdgo._internal.crypto.x509.X509_t_ecprivatekey.T_ecPrivateKey {
    public var version(get, set) : StdTypes.Int;
    function get_version():StdTypes.Int return this.version;
    function set_version(v:StdTypes.Int):StdTypes.Int {
        this.version = (v : stdgo.GoInt);
        return v;
    }
    public var privateKey(get, set) : Array<std.UInt>;
    function get_privateKey():Array<std.UInt> return [for (i in this.privateKey) i];
    function set_privateKey(v:Array<std.UInt>):Array<std.UInt> {
        this.privateKey = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public var namedCurveOID(get, set) : stdgo._internal.encoding.asn1.Asn1_objectidentifier.ObjectIdentifier;
    function get_namedCurveOID():stdgo._internal.encoding.asn1.Asn1_objectidentifier.ObjectIdentifier return this.namedCurveOID;
    function set_namedCurveOID(v:stdgo._internal.encoding.asn1.Asn1_objectidentifier.ObjectIdentifier):stdgo._internal.encoding.asn1.Asn1_objectidentifier.ObjectIdentifier {
        this.namedCurveOID = v;
        return v;
    }
    public var publicKey(get, set) : stdgo._internal.encoding.asn1.Asn1_bitstring.BitString;
    function get_publicKey():stdgo._internal.encoding.asn1.Asn1_bitstring.BitString return this.publicKey;
    function set_publicKey(v:stdgo._internal.encoding.asn1.Asn1_bitstring.BitString):stdgo._internal.encoding.asn1.Asn1_bitstring.BitString {
        this.publicKey = v;
        return v;
    }
    public function new(?version:StdTypes.Int, ?privateKey:Array<std.UInt>, ?namedCurveOID:stdgo._internal.encoding.asn1.Asn1_objectidentifier.ObjectIdentifier, ?publicKey:stdgo._internal.encoding.asn1.Asn1_bitstring.BitString) this = new stdgo._internal.crypto.x509.X509_t_ecprivatekey.T_ecPrivateKey((version : stdgo.GoInt), ([for (i in privateKey) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>), namedCurveOID, publicKey);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.crypto.x509.X509.CertificateInvalidError_static_extension) abstract CertificateInvalidError(stdgo._internal.crypto.x509.X509_certificateinvaliderror.CertificateInvalidError) from stdgo._internal.crypto.x509.X509_certificateinvaliderror.CertificateInvalidError to stdgo._internal.crypto.x509.X509_certificateinvaliderror.CertificateInvalidError {
    public var cert(get, set) : Certificate;
    function get_cert():Certificate return this.cert;
    function set_cert(v:Certificate):Certificate {
        this.cert = (v : stdgo.Ref<stdgo._internal.crypto.x509.X509_certificate.Certificate>);
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
        this.detail = (v : stdgo.GoString);
        return v;
    }
    public function new(?cert:Certificate, ?reason:InvalidReason, ?detail:String) this = new stdgo._internal.crypto.x509.X509_certificateinvaliderror.CertificateInvalidError((cert : stdgo.Ref<stdgo._internal.crypto.x509.X509_certificate.Certificate>), reason, (detail : stdgo.GoString));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.crypto.x509.X509.HostnameError_static_extension) abstract HostnameError(stdgo._internal.crypto.x509.X509_hostnameerror.HostnameError) from stdgo._internal.crypto.x509.X509_hostnameerror.HostnameError to stdgo._internal.crypto.x509.X509_hostnameerror.HostnameError {
    public var certificate(get, set) : Certificate;
    function get_certificate():Certificate return this.certificate;
    function set_certificate(v:Certificate):Certificate {
        this.certificate = (v : stdgo.Ref<stdgo._internal.crypto.x509.X509_certificate.Certificate>);
        return v;
    }
    public var host(get, set) : String;
    function get_host():String return this.host;
    function set_host(v:String):String {
        this.host = (v : stdgo.GoString);
        return v;
    }
    public function new(?certificate:Certificate, ?host:String) this = new stdgo._internal.crypto.x509.X509_hostnameerror.HostnameError((certificate : stdgo.Ref<stdgo._internal.crypto.x509.X509_certificate.Certificate>), (host : stdgo.GoString));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.crypto.x509.X509.UnknownAuthorityError_static_extension) abstract UnknownAuthorityError(stdgo._internal.crypto.x509.X509_unknownauthorityerror.UnknownAuthorityError) from stdgo._internal.crypto.x509.X509_unknownauthorityerror.UnknownAuthorityError to stdgo._internal.crypto.x509.X509_unknownauthorityerror.UnknownAuthorityError {
    public var cert(get, set) : Certificate;
    function get_cert():Certificate return this.cert;
    function set_cert(v:Certificate):Certificate {
        this.cert = (v : stdgo.Ref<stdgo._internal.crypto.x509.X509_certificate.Certificate>);
        return v;
    }
    public var _hintErr(get, set) : stdgo.Error;
    function get__hintErr():stdgo.Error return this._hintErr;
    function set__hintErr(v:stdgo.Error):stdgo.Error {
        this._hintErr = (v : stdgo.Error);
        return v;
    }
    public var _hintCert(get, set) : Certificate;
    function get__hintCert():Certificate return this._hintCert;
    function set__hintCert(v:Certificate):Certificate {
        this._hintCert = (v : stdgo.Ref<stdgo._internal.crypto.x509.X509_certificate.Certificate>);
        return v;
    }
    public function new(?cert:Certificate, ?_hintErr:stdgo.Error, ?_hintCert:Certificate) this = new stdgo._internal.crypto.x509.X509_unknownauthorityerror.UnknownAuthorityError((cert : stdgo.Ref<stdgo._internal.crypto.x509.X509_certificate.Certificate>), (_hintErr : stdgo.Error), (_hintCert : stdgo.Ref<stdgo._internal.crypto.x509.X509_certificate.Certificate>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.crypto.x509.X509.SystemRootsError_static_extension) abstract SystemRootsError(stdgo._internal.crypto.x509.X509_systemrootserror.SystemRootsError) from stdgo._internal.crypto.x509.X509_systemrootserror.SystemRootsError to stdgo._internal.crypto.x509.X509_systemrootserror.SystemRootsError {
    public var err(get, set) : stdgo.Error;
    function get_err():stdgo.Error return this.err;
    function set_err(v:stdgo.Error):stdgo.Error {
        this.err = (v : stdgo.Error);
        return v;
    }
    public function new(?err:stdgo.Error) this = new stdgo._internal.crypto.x509.X509_systemrootserror.SystemRootsError((err : stdgo.Error));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.crypto.x509.X509.VerifyOptions_static_extension) abstract VerifyOptions(stdgo._internal.crypto.x509.X509_verifyoptions.VerifyOptions) from stdgo._internal.crypto.x509.X509_verifyoptions.VerifyOptions to stdgo._internal.crypto.x509.X509_verifyoptions.VerifyOptions {
    public var dNSName(get, set) : String;
    function get_dNSName():String return this.dNSName;
    function set_dNSName(v:String):String {
        this.dNSName = (v : stdgo.GoString);
        return v;
    }
    public var intermediates(get, set) : CertPool;
    function get_intermediates():CertPool return this.intermediates;
    function set_intermediates(v:CertPool):CertPool {
        this.intermediates = (v : stdgo.Ref<stdgo._internal.crypto.x509.X509_certpool.CertPool>);
        return v;
    }
    public var roots(get, set) : CertPool;
    function get_roots():CertPool return this.roots;
    function set_roots(v:CertPool):CertPool {
        this.roots = (v : stdgo.Ref<stdgo._internal.crypto.x509.X509_certpool.CertPool>);
        return v;
    }
    public var currentTime(get, set) : stdgo._internal.time.Time_time.Time;
    function get_currentTime():stdgo._internal.time.Time_time.Time return this.currentTime;
    function set_currentTime(v:stdgo._internal.time.Time_time.Time):stdgo._internal.time.Time_time.Time {
        this.currentTime = v;
        return v;
    }
    public var keyUsages(get, set) : Array<ExtKeyUsage>;
    function get_keyUsages():Array<ExtKeyUsage> return [for (i in this.keyUsages) i];
    function set_keyUsages(v:Array<ExtKeyUsage>):Array<ExtKeyUsage> {
        this.keyUsages = ([for (i in v) i] : stdgo.Slice<stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage>);
        return v;
    }
    public var maxConstraintComparisions(get, set) : StdTypes.Int;
    function get_maxConstraintComparisions():StdTypes.Int return this.maxConstraintComparisions;
    function set_maxConstraintComparisions(v:StdTypes.Int):StdTypes.Int {
        this.maxConstraintComparisions = (v : stdgo.GoInt);
        return v;
    }
    public function new(?dNSName:String, ?intermediates:CertPool, ?roots:CertPool, ?currentTime:stdgo._internal.time.Time_time.Time, ?keyUsages:Array<ExtKeyUsage>, ?maxConstraintComparisions:StdTypes.Int) this = new stdgo._internal.crypto.x509.X509_verifyoptions.VerifyOptions((dNSName : stdgo.GoString), (intermediates : stdgo.Ref<stdgo._internal.crypto.x509.X509_certpool.CertPool>), (roots : stdgo.Ref<stdgo._internal.crypto.x509.X509_certpool.CertPool>), currentTime, ([for (i in keyUsages) i] : stdgo.Slice<stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage>), (maxConstraintComparisions : stdgo.GoInt));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.crypto.x509.X509.T_rfc2821Mailbox_static_extension) @:dox(hide) abstract T_rfc2821Mailbox(stdgo._internal.crypto.x509.X509_t_rfc2821mailbox.T_rfc2821Mailbox) from stdgo._internal.crypto.x509.X509_t_rfc2821mailbox.T_rfc2821Mailbox to stdgo._internal.crypto.x509.X509_t_rfc2821mailbox.T_rfc2821Mailbox {
    public var _local(get, set) : String;
    function get__local():String return this._local;
    function set__local(v:String):String {
        this._local = (v : stdgo.GoString);
        return v;
    }
    public var _domain(get, set) : String;
    function get__domain():String return this._domain;
    function set__domain(v:String):String {
        this._domain = (v : stdgo.GoString);
        return v;
    }
    public function new(?_local:String, ?_domain:String) this = new stdgo._internal.crypto.x509.X509_t_rfc2821mailbox.T_rfc2821Mailbox((_local : stdgo.GoString), (_domain : stdgo.GoString));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.crypto.x509.X509.T_pkixPublicKey_static_extension) @:dox(hide) abstract T_pkixPublicKey(stdgo._internal.crypto.x509.X509_t_pkixpublickey.T_pkixPublicKey) from stdgo._internal.crypto.x509.X509_t_pkixpublickey.T_pkixPublicKey to stdgo._internal.crypto.x509.X509_t_pkixpublickey.T_pkixPublicKey {
    public var algo(get, set) : stdgo._internal.crypto.x509.pkix.Pkix_algorithmidentifier.AlgorithmIdentifier;
    function get_algo():stdgo._internal.crypto.x509.pkix.Pkix_algorithmidentifier.AlgorithmIdentifier return this.algo;
    function set_algo(v:stdgo._internal.crypto.x509.pkix.Pkix_algorithmidentifier.AlgorithmIdentifier):stdgo._internal.crypto.x509.pkix.Pkix_algorithmidentifier.AlgorithmIdentifier {
        this.algo = v;
        return v;
    }
    public var bitString(get, set) : stdgo._internal.encoding.asn1.Asn1_bitstring.BitString;
    function get_bitString():stdgo._internal.encoding.asn1.Asn1_bitstring.BitString return this.bitString;
    function set_bitString(v:stdgo._internal.encoding.asn1.Asn1_bitstring.BitString):stdgo._internal.encoding.asn1.Asn1_bitstring.BitString {
        this.bitString = v;
        return v;
    }
    public function new(?algo:stdgo._internal.crypto.x509.pkix.Pkix_algorithmidentifier.AlgorithmIdentifier, ?bitString:stdgo._internal.encoding.asn1.Asn1_bitstring.BitString) this = new stdgo._internal.crypto.x509.X509_t_pkixpublickey.T_pkixPublicKey(algo, bitString);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.crypto.x509.X509.T_certificate_static_extension) @:dox(hide) abstract T_certificate(stdgo._internal.crypto.x509.X509_t_certificate.T_certificate) from stdgo._internal.crypto.x509.X509_t_certificate.T_certificate to stdgo._internal.crypto.x509.X509_t_certificate.T_certificate {
    public var tBSCertificate(get, set) : T_tbsCertificate;
    function get_tBSCertificate():T_tbsCertificate return this.tBSCertificate;
    function set_tBSCertificate(v:T_tbsCertificate):T_tbsCertificate {
        this.tBSCertificate = v;
        return v;
    }
    public var signatureAlgorithm(get, set) : stdgo._internal.crypto.x509.pkix.Pkix_algorithmidentifier.AlgorithmIdentifier;
    function get_signatureAlgorithm():stdgo._internal.crypto.x509.pkix.Pkix_algorithmidentifier.AlgorithmIdentifier return this.signatureAlgorithm;
    function set_signatureAlgorithm(v:stdgo._internal.crypto.x509.pkix.Pkix_algorithmidentifier.AlgorithmIdentifier):stdgo._internal.crypto.x509.pkix.Pkix_algorithmidentifier.AlgorithmIdentifier {
        this.signatureAlgorithm = v;
        return v;
    }
    public var signatureValue(get, set) : stdgo._internal.encoding.asn1.Asn1_bitstring.BitString;
    function get_signatureValue():stdgo._internal.encoding.asn1.Asn1_bitstring.BitString return this.signatureValue;
    function set_signatureValue(v:stdgo._internal.encoding.asn1.Asn1_bitstring.BitString):stdgo._internal.encoding.asn1.Asn1_bitstring.BitString {
        this.signatureValue = v;
        return v;
    }
    public function new(?tBSCertificate:T_tbsCertificate, ?signatureAlgorithm:stdgo._internal.crypto.x509.pkix.Pkix_algorithmidentifier.AlgorithmIdentifier, ?signatureValue:stdgo._internal.encoding.asn1.Asn1_bitstring.BitString) this = new stdgo._internal.crypto.x509.X509_t_certificate.T_certificate(tBSCertificate, signatureAlgorithm, signatureValue);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.crypto.x509.X509.T_tbsCertificate_static_extension) @:dox(hide) abstract T_tbsCertificate(stdgo._internal.crypto.x509.X509_t_tbscertificate.T_tbsCertificate) from stdgo._internal.crypto.x509.X509_t_tbscertificate.T_tbsCertificate to stdgo._internal.crypto.x509.X509_t_tbscertificate.T_tbsCertificate {
    public var raw(get, set) : stdgo._internal.encoding.asn1.Asn1_rawcontent.RawContent;
    function get_raw():stdgo._internal.encoding.asn1.Asn1_rawcontent.RawContent return this.raw;
    function set_raw(v:stdgo._internal.encoding.asn1.Asn1_rawcontent.RawContent):stdgo._internal.encoding.asn1.Asn1_rawcontent.RawContent {
        this.raw = v;
        return v;
    }
    public var version(get, set) : StdTypes.Int;
    function get_version():StdTypes.Int return this.version;
    function set_version(v:StdTypes.Int):StdTypes.Int {
        this.version = (v : stdgo.GoInt);
        return v;
    }
    public var serialNumber(get, set) : stdgo._internal.math.big.Big_int_.Int_;
    function get_serialNumber():stdgo._internal.math.big.Big_int_.Int_ return this.serialNumber;
    function set_serialNumber(v:stdgo._internal.math.big.Big_int_.Int_):stdgo._internal.math.big.Big_int_.Int_ {
        this.serialNumber = (v : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        return v;
    }
    public var signatureAlgorithm(get, set) : stdgo._internal.crypto.x509.pkix.Pkix_algorithmidentifier.AlgorithmIdentifier;
    function get_signatureAlgorithm():stdgo._internal.crypto.x509.pkix.Pkix_algorithmidentifier.AlgorithmIdentifier return this.signatureAlgorithm;
    function set_signatureAlgorithm(v:stdgo._internal.crypto.x509.pkix.Pkix_algorithmidentifier.AlgorithmIdentifier):stdgo._internal.crypto.x509.pkix.Pkix_algorithmidentifier.AlgorithmIdentifier {
        this.signatureAlgorithm = v;
        return v;
    }
    public var issuer(get, set) : stdgo._internal.encoding.asn1.Asn1_rawvalue.RawValue;
    function get_issuer():stdgo._internal.encoding.asn1.Asn1_rawvalue.RawValue return this.issuer;
    function set_issuer(v:stdgo._internal.encoding.asn1.Asn1_rawvalue.RawValue):stdgo._internal.encoding.asn1.Asn1_rawvalue.RawValue {
        this.issuer = v;
        return v;
    }
    public var validity(get, set) : T_validity;
    function get_validity():T_validity return this.validity;
    function set_validity(v:T_validity):T_validity {
        this.validity = v;
        return v;
    }
    public var subject(get, set) : stdgo._internal.encoding.asn1.Asn1_rawvalue.RawValue;
    function get_subject():stdgo._internal.encoding.asn1.Asn1_rawvalue.RawValue return this.subject;
    function set_subject(v:stdgo._internal.encoding.asn1.Asn1_rawvalue.RawValue):stdgo._internal.encoding.asn1.Asn1_rawvalue.RawValue {
        this.subject = v;
        return v;
    }
    public var publicKey(get, set) : T_publicKeyInfo;
    function get_publicKey():T_publicKeyInfo return this.publicKey;
    function set_publicKey(v:T_publicKeyInfo):T_publicKeyInfo {
        this.publicKey = v;
        return v;
    }
    public var uniqueId(get, set) : stdgo._internal.encoding.asn1.Asn1_bitstring.BitString;
    function get_uniqueId():stdgo._internal.encoding.asn1.Asn1_bitstring.BitString return this.uniqueId;
    function set_uniqueId(v:stdgo._internal.encoding.asn1.Asn1_bitstring.BitString):stdgo._internal.encoding.asn1.Asn1_bitstring.BitString {
        this.uniqueId = v;
        return v;
    }
    public var subjectUniqueId(get, set) : stdgo._internal.encoding.asn1.Asn1_bitstring.BitString;
    function get_subjectUniqueId():stdgo._internal.encoding.asn1.Asn1_bitstring.BitString return this.subjectUniqueId;
    function set_subjectUniqueId(v:stdgo._internal.encoding.asn1.Asn1_bitstring.BitString):stdgo._internal.encoding.asn1.Asn1_bitstring.BitString {
        this.subjectUniqueId = v;
        return v;
    }
    public var extensions(get, set) : Array<stdgo._internal.crypto.x509.pkix.Pkix_extension.Extension>;
    function get_extensions():Array<stdgo._internal.crypto.x509.pkix.Pkix_extension.Extension> return [for (i in this.extensions) i];
    function set_extensions(v:Array<stdgo._internal.crypto.x509.pkix.Pkix_extension.Extension>):Array<stdgo._internal.crypto.x509.pkix.Pkix_extension.Extension> {
        this.extensions = ([for (i in v) i] : stdgo.Slice<stdgo._internal.crypto.x509.pkix.Pkix_extension.Extension>);
        return v;
    }
    public function new(?raw:stdgo._internal.encoding.asn1.Asn1_rawcontent.RawContent, ?version:StdTypes.Int, ?serialNumber:stdgo._internal.math.big.Big_int_.Int_, ?signatureAlgorithm:stdgo._internal.crypto.x509.pkix.Pkix_algorithmidentifier.AlgorithmIdentifier, ?issuer:stdgo._internal.encoding.asn1.Asn1_rawvalue.RawValue, ?validity:T_validity, ?subject:stdgo._internal.encoding.asn1.Asn1_rawvalue.RawValue, ?publicKey:T_publicKeyInfo, ?uniqueId:stdgo._internal.encoding.asn1.Asn1_bitstring.BitString, ?subjectUniqueId:stdgo._internal.encoding.asn1.Asn1_bitstring.BitString, ?extensions:Array<stdgo._internal.crypto.x509.pkix.Pkix_extension.Extension>) this = new stdgo._internal.crypto.x509.X509_t_tbscertificate.T_tbsCertificate(
raw,
(version : stdgo.GoInt),
(serialNumber : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>),
signatureAlgorithm,
issuer,
validity,
subject,
publicKey,
uniqueId,
subjectUniqueId,
([for (i in extensions) i] : stdgo.Slice<stdgo._internal.crypto.x509.pkix.Pkix_extension.Extension>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.crypto.x509.X509.T_dsaAlgorithmParameters_static_extension) @:dox(hide) abstract T_dsaAlgorithmParameters(stdgo._internal.crypto.x509.X509_t_dsaalgorithmparameters.T_dsaAlgorithmParameters) from stdgo._internal.crypto.x509.X509_t_dsaalgorithmparameters.T_dsaAlgorithmParameters to stdgo._internal.crypto.x509.X509_t_dsaalgorithmparameters.T_dsaAlgorithmParameters {
    public var p(get, set) : stdgo._internal.math.big.Big_int_.Int_;
    function get_p():stdgo._internal.math.big.Big_int_.Int_ return this.p;
    function set_p(v:stdgo._internal.math.big.Big_int_.Int_):stdgo._internal.math.big.Big_int_.Int_ {
        this.p = (v : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        return v;
    }
    public var q(get, set) : stdgo._internal.math.big.Big_int_.Int_;
    function get_q():stdgo._internal.math.big.Big_int_.Int_ return this.q;
    function set_q(v:stdgo._internal.math.big.Big_int_.Int_):stdgo._internal.math.big.Big_int_.Int_ {
        this.q = (v : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        return v;
    }
    public var g(get, set) : stdgo._internal.math.big.Big_int_.Int_;
    function get_g():stdgo._internal.math.big.Big_int_.Int_ return this.g;
    function set_g(v:stdgo._internal.math.big.Big_int_.Int_):stdgo._internal.math.big.Big_int_.Int_ {
        this.g = (v : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        return v;
    }
    public function new(?p:stdgo._internal.math.big.Big_int_.Int_, ?q:stdgo._internal.math.big.Big_int_.Int_, ?g:stdgo._internal.math.big.Big_int_.Int_) this = new stdgo._internal.crypto.x509.X509_t_dsaalgorithmparameters.T_dsaAlgorithmParameters((p : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>), (q : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>), (g : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.crypto.x509.X509.T_validity_static_extension) @:dox(hide) abstract T_validity(stdgo._internal.crypto.x509.X509_t_validity.T_validity) from stdgo._internal.crypto.x509.X509_t_validity.T_validity to stdgo._internal.crypto.x509.X509_t_validity.T_validity {
    public var notBefore(get, set) : stdgo._internal.time.Time_time.Time;
    function get_notBefore():stdgo._internal.time.Time_time.Time return this.notBefore;
    function set_notBefore(v:stdgo._internal.time.Time_time.Time):stdgo._internal.time.Time_time.Time {
        this.notBefore = v;
        return v;
    }
    public var notAfter(get, set) : stdgo._internal.time.Time_time.Time;
    function get_notAfter():stdgo._internal.time.Time_time.Time return this.notAfter;
    function set_notAfter(v:stdgo._internal.time.Time_time.Time):stdgo._internal.time.Time_time.Time {
        this.notAfter = v;
        return v;
    }
    public function new(?notBefore:stdgo._internal.time.Time_time.Time, ?notAfter:stdgo._internal.time.Time_time.Time) this = new stdgo._internal.crypto.x509.X509_t_validity.T_validity(notBefore, notAfter);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.crypto.x509.X509.T_publicKeyInfo_static_extension) @:dox(hide) abstract T_publicKeyInfo(stdgo._internal.crypto.x509.X509_t_publickeyinfo.T_publicKeyInfo) from stdgo._internal.crypto.x509.X509_t_publickeyinfo.T_publicKeyInfo to stdgo._internal.crypto.x509.X509_t_publickeyinfo.T_publicKeyInfo {
    public var raw(get, set) : stdgo._internal.encoding.asn1.Asn1_rawcontent.RawContent;
    function get_raw():stdgo._internal.encoding.asn1.Asn1_rawcontent.RawContent return this.raw;
    function set_raw(v:stdgo._internal.encoding.asn1.Asn1_rawcontent.RawContent):stdgo._internal.encoding.asn1.Asn1_rawcontent.RawContent {
        this.raw = v;
        return v;
    }
    public var algorithm(get, set) : stdgo._internal.crypto.x509.pkix.Pkix_algorithmidentifier.AlgorithmIdentifier;
    function get_algorithm():stdgo._internal.crypto.x509.pkix.Pkix_algorithmidentifier.AlgorithmIdentifier return this.algorithm;
    function set_algorithm(v:stdgo._internal.crypto.x509.pkix.Pkix_algorithmidentifier.AlgorithmIdentifier):stdgo._internal.crypto.x509.pkix.Pkix_algorithmidentifier.AlgorithmIdentifier {
        this.algorithm = v;
        return v;
    }
    public var publicKey(get, set) : stdgo._internal.encoding.asn1.Asn1_bitstring.BitString;
    function get_publicKey():stdgo._internal.encoding.asn1.Asn1_bitstring.BitString return this.publicKey;
    function set_publicKey(v:stdgo._internal.encoding.asn1.Asn1_bitstring.BitString):stdgo._internal.encoding.asn1.Asn1_bitstring.BitString {
        this.publicKey = v;
        return v;
    }
    public function new(?raw:stdgo._internal.encoding.asn1.Asn1_rawcontent.RawContent, ?algorithm:stdgo._internal.crypto.x509.pkix.Pkix_algorithmidentifier.AlgorithmIdentifier, ?publicKey:stdgo._internal.encoding.asn1.Asn1_bitstring.BitString) this = new stdgo._internal.crypto.x509.X509_t_publickeyinfo.T_publicKeyInfo(raw, algorithm, publicKey);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.crypto.x509.X509.T_authKeyId_static_extension) @:dox(hide) abstract T_authKeyId(stdgo._internal.crypto.x509.X509_t_authkeyid.T_authKeyId) from stdgo._internal.crypto.x509.X509_t_authkeyid.T_authKeyId to stdgo._internal.crypto.x509.X509_t_authkeyid.T_authKeyId {
    public var id(get, set) : Array<std.UInt>;
    function get_id():Array<std.UInt> return [for (i in this.id) i];
    function set_id(v:Array<std.UInt>):Array<std.UInt> {
        this.id = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public function new(?id:Array<std.UInt>) this = new stdgo._internal.crypto.x509.X509_t_authkeyid.T_authKeyId(([for (i in id) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.crypto.x509.X509.T_pssParameters_static_extension) @:dox(hide) abstract T_pssParameters(stdgo._internal.crypto.x509.X509_t_pssparameters.T_pssParameters) from stdgo._internal.crypto.x509.X509_t_pssparameters.T_pssParameters to stdgo._internal.crypto.x509.X509_t_pssparameters.T_pssParameters {
    public var hash(get, set) : stdgo._internal.crypto.x509.pkix.Pkix_algorithmidentifier.AlgorithmIdentifier;
    function get_hash():stdgo._internal.crypto.x509.pkix.Pkix_algorithmidentifier.AlgorithmIdentifier return this.hash;
    function set_hash(v:stdgo._internal.crypto.x509.pkix.Pkix_algorithmidentifier.AlgorithmIdentifier):stdgo._internal.crypto.x509.pkix.Pkix_algorithmidentifier.AlgorithmIdentifier {
        this.hash = v;
        return v;
    }
    public var mGF(get, set) : stdgo._internal.crypto.x509.pkix.Pkix_algorithmidentifier.AlgorithmIdentifier;
    function get_mGF():stdgo._internal.crypto.x509.pkix.Pkix_algorithmidentifier.AlgorithmIdentifier return this.mGF;
    function set_mGF(v:stdgo._internal.crypto.x509.pkix.Pkix_algorithmidentifier.AlgorithmIdentifier):stdgo._internal.crypto.x509.pkix.Pkix_algorithmidentifier.AlgorithmIdentifier {
        this.mGF = v;
        return v;
    }
    public var saltLength(get, set) : StdTypes.Int;
    function get_saltLength():StdTypes.Int return this.saltLength;
    function set_saltLength(v:StdTypes.Int):StdTypes.Int {
        this.saltLength = (v : stdgo.GoInt);
        return v;
    }
    public var trailerField(get, set) : StdTypes.Int;
    function get_trailerField():StdTypes.Int return this.trailerField;
    function set_trailerField(v:StdTypes.Int):StdTypes.Int {
        this.trailerField = (v : stdgo.GoInt);
        return v;
    }
    public function new(?hash:stdgo._internal.crypto.x509.pkix.Pkix_algorithmidentifier.AlgorithmIdentifier, ?mGF:stdgo._internal.crypto.x509.pkix.Pkix_algorithmidentifier.AlgorithmIdentifier, ?saltLength:StdTypes.Int, ?trailerField:StdTypes.Int) this = new stdgo._internal.crypto.x509.X509_t_pssparameters.T_pssParameters(hash, mGF, (saltLength : stdgo.GoInt), (trailerField : stdgo.GoInt));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.crypto.x509.X509.Certificate_static_extension) abstract Certificate(stdgo._internal.crypto.x509.X509_certificate.Certificate) from stdgo._internal.crypto.x509.X509_certificate.Certificate to stdgo._internal.crypto.x509.X509_certificate.Certificate {
    public var raw(get, set) : Array<std.UInt>;
    function get_raw():Array<std.UInt> return [for (i in this.raw) i];
    function set_raw(v:Array<std.UInt>):Array<std.UInt> {
        this.raw = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public var rawTBSCertificate(get, set) : Array<std.UInt>;
    function get_rawTBSCertificate():Array<std.UInt> return [for (i in this.rawTBSCertificate) i];
    function set_rawTBSCertificate(v:Array<std.UInt>):Array<std.UInt> {
        this.rawTBSCertificate = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public var rawSubjectPublicKeyInfo(get, set) : Array<std.UInt>;
    function get_rawSubjectPublicKeyInfo():Array<std.UInt> return [for (i in this.rawSubjectPublicKeyInfo) i];
    function set_rawSubjectPublicKeyInfo(v:Array<std.UInt>):Array<std.UInt> {
        this.rawSubjectPublicKeyInfo = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public var rawSubject(get, set) : Array<std.UInt>;
    function get_rawSubject():Array<std.UInt> return [for (i in this.rawSubject) i];
    function set_rawSubject(v:Array<std.UInt>):Array<std.UInt> {
        this.rawSubject = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public var rawIssuer(get, set) : Array<std.UInt>;
    function get_rawIssuer():Array<std.UInt> return [for (i in this.rawIssuer) i];
    function set_rawIssuer(v:Array<std.UInt>):Array<std.UInt> {
        this.rawIssuer = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public var signature(get, set) : Array<std.UInt>;
    function get_signature():Array<std.UInt> return [for (i in this.signature) i];
    function set_signature(v:Array<std.UInt>):Array<std.UInt> {
        this.signature = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
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
        this.publicKey = (v : stdgo.AnyInterface);
        return v;
    }
    public var version(get, set) : StdTypes.Int;
    function get_version():StdTypes.Int return this.version;
    function set_version(v:StdTypes.Int):StdTypes.Int {
        this.version = (v : stdgo.GoInt);
        return v;
    }
    public var serialNumber(get, set) : stdgo._internal.math.big.Big_int_.Int_;
    function get_serialNumber():stdgo._internal.math.big.Big_int_.Int_ return this.serialNumber;
    function set_serialNumber(v:stdgo._internal.math.big.Big_int_.Int_):stdgo._internal.math.big.Big_int_.Int_ {
        this.serialNumber = (v : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        return v;
    }
    public var issuer(get, set) : stdgo._internal.crypto.x509.pkix.Pkix_name.Name;
    function get_issuer():stdgo._internal.crypto.x509.pkix.Pkix_name.Name return this.issuer;
    function set_issuer(v:stdgo._internal.crypto.x509.pkix.Pkix_name.Name):stdgo._internal.crypto.x509.pkix.Pkix_name.Name {
        this.issuer = v;
        return v;
    }
    public var subject(get, set) : stdgo._internal.crypto.x509.pkix.Pkix_name.Name;
    function get_subject():stdgo._internal.crypto.x509.pkix.Pkix_name.Name return this.subject;
    function set_subject(v:stdgo._internal.crypto.x509.pkix.Pkix_name.Name):stdgo._internal.crypto.x509.pkix.Pkix_name.Name {
        this.subject = v;
        return v;
    }
    public var notBefore(get, set) : stdgo._internal.time.Time_time.Time;
    function get_notBefore():stdgo._internal.time.Time_time.Time return this.notBefore;
    function set_notBefore(v:stdgo._internal.time.Time_time.Time):stdgo._internal.time.Time_time.Time {
        this.notBefore = v;
        return v;
    }
    public var notAfter(get, set) : stdgo._internal.time.Time_time.Time;
    function get_notAfter():stdgo._internal.time.Time_time.Time return this.notAfter;
    function set_notAfter(v:stdgo._internal.time.Time_time.Time):stdgo._internal.time.Time_time.Time {
        this.notAfter = v;
        return v;
    }
    public var keyUsage(get, set) : KeyUsage;
    function get_keyUsage():KeyUsage return this.keyUsage;
    function set_keyUsage(v:KeyUsage):KeyUsage {
        this.keyUsage = v;
        return v;
    }
    public var extensions(get, set) : Array<stdgo._internal.crypto.x509.pkix.Pkix_extension.Extension>;
    function get_extensions():Array<stdgo._internal.crypto.x509.pkix.Pkix_extension.Extension> return [for (i in this.extensions) i];
    function set_extensions(v:Array<stdgo._internal.crypto.x509.pkix.Pkix_extension.Extension>):Array<stdgo._internal.crypto.x509.pkix.Pkix_extension.Extension> {
        this.extensions = ([for (i in v) i] : stdgo.Slice<stdgo._internal.crypto.x509.pkix.Pkix_extension.Extension>);
        return v;
    }
    public var extraExtensions(get, set) : Array<stdgo._internal.crypto.x509.pkix.Pkix_extension.Extension>;
    function get_extraExtensions():Array<stdgo._internal.crypto.x509.pkix.Pkix_extension.Extension> return [for (i in this.extraExtensions) i];
    function set_extraExtensions(v:Array<stdgo._internal.crypto.x509.pkix.Pkix_extension.Extension>):Array<stdgo._internal.crypto.x509.pkix.Pkix_extension.Extension> {
        this.extraExtensions = ([for (i in v) i] : stdgo.Slice<stdgo._internal.crypto.x509.pkix.Pkix_extension.Extension>);
        return v;
    }
    public var unhandledCriticalExtensions(get, set) : Array<stdgo._internal.encoding.asn1.Asn1_objectidentifier.ObjectIdentifier>;
    function get_unhandledCriticalExtensions():Array<stdgo._internal.encoding.asn1.Asn1_objectidentifier.ObjectIdentifier> return [for (i in this.unhandledCriticalExtensions) i];
    function set_unhandledCriticalExtensions(v:Array<stdgo._internal.encoding.asn1.Asn1_objectidentifier.ObjectIdentifier>):Array<stdgo._internal.encoding.asn1.Asn1_objectidentifier.ObjectIdentifier> {
        this.unhandledCriticalExtensions = ([for (i in v) i] : stdgo.Slice<stdgo._internal.encoding.asn1.Asn1_objectidentifier.ObjectIdentifier>);
        return v;
    }
    public var extKeyUsage(get, set) : Array<ExtKeyUsage>;
    function get_extKeyUsage():Array<ExtKeyUsage> return [for (i in this.extKeyUsage) i];
    function set_extKeyUsage(v:Array<ExtKeyUsage>):Array<ExtKeyUsage> {
        this.extKeyUsage = ([for (i in v) i] : stdgo.Slice<stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage>);
        return v;
    }
    public var unknownExtKeyUsage(get, set) : Array<stdgo._internal.encoding.asn1.Asn1_objectidentifier.ObjectIdentifier>;
    function get_unknownExtKeyUsage():Array<stdgo._internal.encoding.asn1.Asn1_objectidentifier.ObjectIdentifier> return [for (i in this.unknownExtKeyUsage) i];
    function set_unknownExtKeyUsage(v:Array<stdgo._internal.encoding.asn1.Asn1_objectidentifier.ObjectIdentifier>):Array<stdgo._internal.encoding.asn1.Asn1_objectidentifier.ObjectIdentifier> {
        this.unknownExtKeyUsage = ([for (i in v) i] : stdgo.Slice<stdgo._internal.encoding.asn1.Asn1_objectidentifier.ObjectIdentifier>);
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
        this.maxPathLen = (v : stdgo.GoInt);
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
        this.subjectKeyId = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public var authorityKeyId(get, set) : Array<std.UInt>;
    function get_authorityKeyId():Array<std.UInt> return [for (i in this.authorityKeyId) i];
    function set_authorityKeyId(v:Array<std.UInt>):Array<std.UInt> {
        this.authorityKeyId = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public var oCSPServer(get, set) : Array<String>;
    function get_oCSPServer():Array<String> return [for (i in this.oCSPServer) i];
    function set_oCSPServer(v:Array<String>):Array<String> {
        this.oCSPServer = ([for (i in v) (i : stdgo.GoString)] : stdgo.Slice<stdgo.GoString>);
        return v;
    }
    public var issuingCertificateURL(get, set) : Array<String>;
    function get_issuingCertificateURL():Array<String> return [for (i in this.issuingCertificateURL) i];
    function set_issuingCertificateURL(v:Array<String>):Array<String> {
        this.issuingCertificateURL = ([for (i in v) (i : stdgo.GoString)] : stdgo.Slice<stdgo.GoString>);
        return v;
    }
    public var dNSNames(get, set) : Array<String>;
    function get_dNSNames():Array<String> return [for (i in this.dNSNames) i];
    function set_dNSNames(v:Array<String>):Array<String> {
        this.dNSNames = ([for (i in v) (i : stdgo.GoString)] : stdgo.Slice<stdgo.GoString>);
        return v;
    }
    public var emailAddresses(get, set) : Array<String>;
    function get_emailAddresses():Array<String> return [for (i in this.emailAddresses) i];
    function set_emailAddresses(v:Array<String>):Array<String> {
        this.emailAddresses = ([for (i in v) (i : stdgo.GoString)] : stdgo.Slice<stdgo.GoString>);
        return v;
    }
    public var iPAddresses(get, set) : Array<stdgo._internal.net.Net_ip.IP>;
    function get_iPAddresses():Array<stdgo._internal.net.Net_ip.IP> return [for (i in this.iPAddresses) i];
    function set_iPAddresses(v:Array<stdgo._internal.net.Net_ip.IP>):Array<stdgo._internal.net.Net_ip.IP> {
        this.iPAddresses = ([for (i in v) i] : stdgo.Slice<stdgo._internal.net.Net_ip.IP>);
        return v;
    }
    public var uRIs(get, set) : Array<stdgo._internal.net.url.Url_url.URL>;
    function get_uRIs():Array<stdgo._internal.net.url.Url_url.URL> return [for (i in this.uRIs) i];
    function set_uRIs(v:Array<stdgo._internal.net.url.Url_url.URL>):Array<stdgo._internal.net.url.Url_url.URL> {
        this.uRIs = ([for (i in v) (i : stdgo.Ref<stdgo._internal.net.url.Url_url.URL>)] : stdgo.Slice<stdgo.Ref<stdgo._internal.net.url.Url_url.URL>>);
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
        this.permittedDNSDomains = ([for (i in v) (i : stdgo.GoString)] : stdgo.Slice<stdgo.GoString>);
        return v;
    }
    public var excludedDNSDomains(get, set) : Array<String>;
    function get_excludedDNSDomains():Array<String> return [for (i in this.excludedDNSDomains) i];
    function set_excludedDNSDomains(v:Array<String>):Array<String> {
        this.excludedDNSDomains = ([for (i in v) (i : stdgo.GoString)] : stdgo.Slice<stdgo.GoString>);
        return v;
    }
    public var permittedIPRanges(get, set) : Array<stdgo._internal.net.Net_ipnet.IPNet>;
    function get_permittedIPRanges():Array<stdgo._internal.net.Net_ipnet.IPNet> return [for (i in this.permittedIPRanges) i];
    function set_permittedIPRanges(v:Array<stdgo._internal.net.Net_ipnet.IPNet>):Array<stdgo._internal.net.Net_ipnet.IPNet> {
        this.permittedIPRanges = ([for (i in v) (i : stdgo.Ref<stdgo._internal.net.Net_ipnet.IPNet>)] : stdgo.Slice<stdgo.Ref<stdgo._internal.net.Net_ipnet.IPNet>>);
        return v;
    }
    public var excludedIPRanges(get, set) : Array<stdgo._internal.net.Net_ipnet.IPNet>;
    function get_excludedIPRanges():Array<stdgo._internal.net.Net_ipnet.IPNet> return [for (i in this.excludedIPRanges) i];
    function set_excludedIPRanges(v:Array<stdgo._internal.net.Net_ipnet.IPNet>):Array<stdgo._internal.net.Net_ipnet.IPNet> {
        this.excludedIPRanges = ([for (i in v) (i : stdgo.Ref<stdgo._internal.net.Net_ipnet.IPNet>)] : stdgo.Slice<stdgo.Ref<stdgo._internal.net.Net_ipnet.IPNet>>);
        return v;
    }
    public var permittedEmailAddresses(get, set) : Array<String>;
    function get_permittedEmailAddresses():Array<String> return [for (i in this.permittedEmailAddresses) i];
    function set_permittedEmailAddresses(v:Array<String>):Array<String> {
        this.permittedEmailAddresses = ([for (i in v) (i : stdgo.GoString)] : stdgo.Slice<stdgo.GoString>);
        return v;
    }
    public var excludedEmailAddresses(get, set) : Array<String>;
    function get_excludedEmailAddresses():Array<String> return [for (i in this.excludedEmailAddresses) i];
    function set_excludedEmailAddresses(v:Array<String>):Array<String> {
        this.excludedEmailAddresses = ([for (i in v) (i : stdgo.GoString)] : stdgo.Slice<stdgo.GoString>);
        return v;
    }
    public var permittedURIDomains(get, set) : Array<String>;
    function get_permittedURIDomains():Array<String> return [for (i in this.permittedURIDomains) i];
    function set_permittedURIDomains(v:Array<String>):Array<String> {
        this.permittedURIDomains = ([for (i in v) (i : stdgo.GoString)] : stdgo.Slice<stdgo.GoString>);
        return v;
    }
    public var excludedURIDomains(get, set) : Array<String>;
    function get_excludedURIDomains():Array<String> return [for (i in this.excludedURIDomains) i];
    function set_excludedURIDomains(v:Array<String>):Array<String> {
        this.excludedURIDomains = ([for (i in v) (i : stdgo.GoString)] : stdgo.Slice<stdgo.GoString>);
        return v;
    }
    public var cRLDistributionPoints(get, set) : Array<String>;
    function get_cRLDistributionPoints():Array<String> return [for (i in this.cRLDistributionPoints) i];
    function set_cRLDistributionPoints(v:Array<String>):Array<String> {
        this.cRLDistributionPoints = ([for (i in v) (i : stdgo.GoString)] : stdgo.Slice<stdgo.GoString>);
        return v;
    }
    public var policyIdentifiers(get, set) : Array<stdgo._internal.encoding.asn1.Asn1_objectidentifier.ObjectIdentifier>;
    function get_policyIdentifiers():Array<stdgo._internal.encoding.asn1.Asn1_objectidentifier.ObjectIdentifier> return [for (i in this.policyIdentifiers) i];
    function set_policyIdentifiers(v:Array<stdgo._internal.encoding.asn1.Asn1_objectidentifier.ObjectIdentifier>):Array<stdgo._internal.encoding.asn1.Asn1_objectidentifier.ObjectIdentifier> {
        this.policyIdentifiers = ([for (i in v) i] : stdgo.Slice<stdgo._internal.encoding.asn1.Asn1_objectidentifier.ObjectIdentifier>);
        return v;
    }
    public function new(?raw:Array<std.UInt>, ?rawTBSCertificate:Array<std.UInt>, ?rawSubjectPublicKeyInfo:Array<std.UInt>, ?rawSubject:Array<std.UInt>, ?rawIssuer:Array<std.UInt>, ?signature:Array<std.UInt>, ?signatureAlgorithm:SignatureAlgorithm, ?publicKeyAlgorithm:PublicKeyAlgorithm, ?publicKey:stdgo.AnyInterface, ?version:StdTypes.Int, ?serialNumber:stdgo._internal.math.big.Big_int_.Int_, ?issuer:stdgo._internal.crypto.x509.pkix.Pkix_name.Name, ?subject:stdgo._internal.crypto.x509.pkix.Pkix_name.Name, ?notBefore:stdgo._internal.time.Time_time.Time, ?notAfter:stdgo._internal.time.Time_time.Time, ?keyUsage:KeyUsage, ?extensions:Array<stdgo._internal.crypto.x509.pkix.Pkix_extension.Extension>, ?extraExtensions:Array<stdgo._internal.crypto.x509.pkix.Pkix_extension.Extension>, ?unhandledCriticalExtensions:Array<stdgo._internal.encoding.asn1.Asn1_objectidentifier.ObjectIdentifier>, ?extKeyUsage:Array<ExtKeyUsage>, ?unknownExtKeyUsage:Array<stdgo._internal.encoding.asn1.Asn1_objectidentifier.ObjectIdentifier>, ?basicConstraintsValid:Bool, ?isCA:Bool, ?maxPathLen:StdTypes.Int, ?maxPathLenZero:Bool, ?subjectKeyId:Array<std.UInt>, ?authorityKeyId:Array<std.UInt>, ?oCSPServer:Array<String>, ?issuingCertificateURL:Array<String>, ?dNSNames:Array<String>, ?emailAddresses:Array<String>, ?iPAddresses:Array<stdgo._internal.net.Net_ip.IP>, ?uRIs:Array<stdgo._internal.net.url.Url_url.URL>, ?permittedDNSDomainsCritical:Bool, ?permittedDNSDomains:Array<String>, ?excludedDNSDomains:Array<String>, ?permittedIPRanges:Array<stdgo._internal.net.Net_ipnet.IPNet>, ?excludedIPRanges:Array<stdgo._internal.net.Net_ipnet.IPNet>, ?permittedEmailAddresses:Array<String>, ?excludedEmailAddresses:Array<String>, ?permittedURIDomains:Array<String>, ?excludedURIDomains:Array<String>, ?cRLDistributionPoints:Array<String>, ?policyIdentifiers:Array<stdgo._internal.encoding.asn1.Asn1_objectidentifier.ObjectIdentifier>) this = new stdgo._internal.crypto.x509.X509_certificate.Certificate(
([for (i in raw) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>),
([for (i in rawTBSCertificate) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>),
([for (i in rawSubjectPublicKeyInfo) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>),
([for (i in rawSubject) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>),
([for (i in rawIssuer) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>),
([for (i in signature) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>),
signatureAlgorithm,
publicKeyAlgorithm,
(publicKey : stdgo.AnyInterface),
(version : stdgo.GoInt),
(serialNumber : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>),
issuer,
subject,
notBefore,
notAfter,
keyUsage,
([for (i in extensions) i] : stdgo.Slice<stdgo._internal.crypto.x509.pkix.Pkix_extension.Extension>),
([for (i in extraExtensions) i] : stdgo.Slice<stdgo._internal.crypto.x509.pkix.Pkix_extension.Extension>),
([for (i in unhandledCriticalExtensions) i] : stdgo.Slice<stdgo._internal.encoding.asn1.Asn1_objectidentifier.ObjectIdentifier>),
([for (i in extKeyUsage) i] : stdgo.Slice<stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage>),
([for (i in unknownExtKeyUsage) i] : stdgo.Slice<stdgo._internal.encoding.asn1.Asn1_objectidentifier.ObjectIdentifier>),
basicConstraintsValid,
isCA,
(maxPathLen : stdgo.GoInt),
maxPathLenZero,
([for (i in subjectKeyId) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>),
([for (i in authorityKeyId) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>),
([for (i in oCSPServer) (i : stdgo.GoString)] : stdgo.Slice<stdgo.GoString>),
([for (i in issuingCertificateURL) (i : stdgo.GoString)] : stdgo.Slice<stdgo.GoString>),
([for (i in dNSNames) (i : stdgo.GoString)] : stdgo.Slice<stdgo.GoString>),
([for (i in emailAddresses) (i : stdgo.GoString)] : stdgo.Slice<stdgo.GoString>),
([for (i in iPAddresses) i] : stdgo.Slice<stdgo._internal.net.Net_ip.IP>),
([for (i in uRIs) (i : stdgo.Ref<stdgo._internal.net.url.Url_url.URL>)] : stdgo.Slice<stdgo.Ref<stdgo._internal.net.url.Url_url.URL>>),
permittedDNSDomainsCritical,
([for (i in permittedDNSDomains) (i : stdgo.GoString)] : stdgo.Slice<stdgo.GoString>),
([for (i in excludedDNSDomains) (i : stdgo.GoString)] : stdgo.Slice<stdgo.GoString>),
([for (i in permittedIPRanges) (i : stdgo.Ref<stdgo._internal.net.Net_ipnet.IPNet>)] : stdgo.Slice<stdgo.Ref<stdgo._internal.net.Net_ipnet.IPNet>>),
([for (i in excludedIPRanges) (i : stdgo.Ref<stdgo._internal.net.Net_ipnet.IPNet>)] : stdgo.Slice<stdgo.Ref<stdgo._internal.net.Net_ipnet.IPNet>>),
([for (i in permittedEmailAddresses) (i : stdgo.GoString)] : stdgo.Slice<stdgo.GoString>),
([for (i in excludedEmailAddresses) (i : stdgo.GoString)] : stdgo.Slice<stdgo.GoString>),
([for (i in permittedURIDomains) (i : stdgo.GoString)] : stdgo.Slice<stdgo.GoString>),
([for (i in excludedURIDomains) (i : stdgo.GoString)] : stdgo.Slice<stdgo.GoString>),
([for (i in cRLDistributionPoints) (i : stdgo.GoString)] : stdgo.Slice<stdgo.GoString>),
([for (i in policyIdentifiers) i] : stdgo.Slice<stdgo._internal.encoding.asn1.Asn1_objectidentifier.ObjectIdentifier>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.crypto.x509.X509.ConstraintViolationError_static_extension) abstract ConstraintViolationError(stdgo._internal.crypto.x509.X509_constraintviolationerror.ConstraintViolationError) from stdgo._internal.crypto.x509.X509_constraintviolationerror.ConstraintViolationError to stdgo._internal.crypto.x509.X509_constraintviolationerror.ConstraintViolationError {
    public function new() this = new stdgo._internal.crypto.x509.X509_constraintviolationerror.ConstraintViolationError();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.crypto.x509.X509.UnhandledCriticalExtension_static_extension) abstract UnhandledCriticalExtension(stdgo._internal.crypto.x509.X509_unhandledcriticalextension.UnhandledCriticalExtension) from stdgo._internal.crypto.x509.X509_unhandledcriticalextension.UnhandledCriticalExtension to stdgo._internal.crypto.x509.X509_unhandledcriticalextension.UnhandledCriticalExtension {
    public function new() this = new stdgo._internal.crypto.x509.X509_unhandledcriticalextension.UnhandledCriticalExtension();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.crypto.x509.X509.T_basicConstraints_static_extension) @:dox(hide) abstract T_basicConstraints(stdgo._internal.crypto.x509.X509_t_basicconstraints.T_basicConstraints) from stdgo._internal.crypto.x509.X509_t_basicconstraints.T_basicConstraints to stdgo._internal.crypto.x509.X509_t_basicconstraints.T_basicConstraints {
    public var isCA(get, set) : Bool;
    function get_isCA():Bool return this.isCA;
    function set_isCA(v:Bool):Bool {
        this.isCA = v;
        return v;
    }
    public var maxPathLen(get, set) : StdTypes.Int;
    function get_maxPathLen():StdTypes.Int return this.maxPathLen;
    function set_maxPathLen(v:StdTypes.Int):StdTypes.Int {
        this.maxPathLen = (v : stdgo.GoInt);
        return v;
    }
    public function new(?isCA:Bool, ?maxPathLen:StdTypes.Int) this = new stdgo._internal.crypto.x509.X509_t_basicconstraints.T_basicConstraints(isCA, (maxPathLen : stdgo.GoInt));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.crypto.x509.X509.T_policyInformation_static_extension) @:dox(hide) abstract T_policyInformation(stdgo._internal.crypto.x509.X509_t_policyinformation.T_policyInformation) from stdgo._internal.crypto.x509.X509_t_policyinformation.T_policyInformation to stdgo._internal.crypto.x509.X509_t_policyinformation.T_policyInformation {
    public var policy(get, set) : stdgo._internal.encoding.asn1.Asn1_objectidentifier.ObjectIdentifier;
    function get_policy():stdgo._internal.encoding.asn1.Asn1_objectidentifier.ObjectIdentifier return this.policy;
    function set_policy(v:stdgo._internal.encoding.asn1.Asn1_objectidentifier.ObjectIdentifier):stdgo._internal.encoding.asn1.Asn1_objectidentifier.ObjectIdentifier {
        this.policy = v;
        return v;
    }
    public function new(?policy:stdgo._internal.encoding.asn1.Asn1_objectidentifier.ObjectIdentifier) this = new stdgo._internal.crypto.x509.X509_t_policyinformation.T_policyInformation(policy);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.crypto.x509.X509.T_authorityInfoAccess_static_extension) @:dox(hide) abstract T_authorityInfoAccess(stdgo._internal.crypto.x509.X509_t_authorityinfoaccess.T_authorityInfoAccess) from stdgo._internal.crypto.x509.X509_t_authorityinfoaccess.T_authorityInfoAccess to stdgo._internal.crypto.x509.X509_t_authorityinfoaccess.T_authorityInfoAccess {
    public var method(get, set) : stdgo._internal.encoding.asn1.Asn1_objectidentifier.ObjectIdentifier;
    function get_method():stdgo._internal.encoding.asn1.Asn1_objectidentifier.ObjectIdentifier return this.method;
    function set_method(v:stdgo._internal.encoding.asn1.Asn1_objectidentifier.ObjectIdentifier):stdgo._internal.encoding.asn1.Asn1_objectidentifier.ObjectIdentifier {
        this.method = v;
        return v;
    }
    public var location(get, set) : stdgo._internal.encoding.asn1.Asn1_rawvalue.RawValue;
    function get_location():stdgo._internal.encoding.asn1.Asn1_rawvalue.RawValue return this.location;
    function set_location(v:stdgo._internal.encoding.asn1.Asn1_rawvalue.RawValue):stdgo._internal.encoding.asn1.Asn1_rawvalue.RawValue {
        this.location = v;
        return v;
    }
    public function new(?method:stdgo._internal.encoding.asn1.Asn1_objectidentifier.ObjectIdentifier, ?location:stdgo._internal.encoding.asn1.Asn1_rawvalue.RawValue) this = new stdgo._internal.crypto.x509.X509_t_authorityinfoaccess.T_authorityInfoAccess(method, location);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.crypto.x509.X509.T_distributionPoint_static_extension) @:dox(hide) abstract T_distributionPoint(stdgo._internal.crypto.x509.X509_t_distributionpoint.T_distributionPoint) from stdgo._internal.crypto.x509.X509_t_distributionpoint.T_distributionPoint to stdgo._internal.crypto.x509.X509_t_distributionpoint.T_distributionPoint {
    public var distributionPoint(get, set) : T_distributionPointName;
    function get_distributionPoint():T_distributionPointName return this.distributionPoint;
    function set_distributionPoint(v:T_distributionPointName):T_distributionPointName {
        this.distributionPoint = v;
        return v;
    }
    public var reason(get, set) : stdgo._internal.encoding.asn1.Asn1_bitstring.BitString;
    function get_reason():stdgo._internal.encoding.asn1.Asn1_bitstring.BitString return this.reason;
    function set_reason(v:stdgo._internal.encoding.asn1.Asn1_bitstring.BitString):stdgo._internal.encoding.asn1.Asn1_bitstring.BitString {
        this.reason = v;
        return v;
    }
    public var cRLIssuer(get, set) : stdgo._internal.encoding.asn1.Asn1_rawvalue.RawValue;
    function get_cRLIssuer():stdgo._internal.encoding.asn1.Asn1_rawvalue.RawValue return this.cRLIssuer;
    function set_cRLIssuer(v:stdgo._internal.encoding.asn1.Asn1_rawvalue.RawValue):stdgo._internal.encoding.asn1.Asn1_rawvalue.RawValue {
        this.cRLIssuer = v;
        return v;
    }
    public function new(?distributionPoint:T_distributionPointName, ?reason:stdgo._internal.encoding.asn1.Asn1_bitstring.BitString, ?cRLIssuer:stdgo._internal.encoding.asn1.Asn1_rawvalue.RawValue) this = new stdgo._internal.crypto.x509.X509_t_distributionpoint.T_distributionPoint(distributionPoint, reason, cRLIssuer);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.crypto.x509.X509.T_distributionPointName_static_extension) @:dox(hide) abstract T_distributionPointName(stdgo._internal.crypto.x509.X509_t_distributionpointname.T_distributionPointName) from stdgo._internal.crypto.x509.X509_t_distributionpointname.T_distributionPointName to stdgo._internal.crypto.x509.X509_t_distributionpointname.T_distributionPointName {
    public var fullName(get, set) : Array<stdgo._internal.encoding.asn1.Asn1_rawvalue.RawValue>;
    function get_fullName():Array<stdgo._internal.encoding.asn1.Asn1_rawvalue.RawValue> return [for (i in this.fullName) i];
    function set_fullName(v:Array<stdgo._internal.encoding.asn1.Asn1_rawvalue.RawValue>):Array<stdgo._internal.encoding.asn1.Asn1_rawvalue.RawValue> {
        this.fullName = ([for (i in v) i] : stdgo.Slice<stdgo._internal.encoding.asn1.Asn1_rawvalue.RawValue>);
        return v;
    }
    public var relativeName(get, set) : stdgo._internal.crypto.x509.pkix.Pkix_rdnsequence.RDNSequence;
    function get_relativeName():stdgo._internal.crypto.x509.pkix.Pkix_rdnsequence.RDNSequence return this.relativeName;
    function set_relativeName(v:stdgo._internal.crypto.x509.pkix.Pkix_rdnsequence.RDNSequence):stdgo._internal.crypto.x509.pkix.Pkix_rdnsequence.RDNSequence {
        this.relativeName = v;
        return v;
    }
    public function new(?fullName:Array<stdgo._internal.encoding.asn1.Asn1_rawvalue.RawValue>, ?relativeName:stdgo._internal.crypto.x509.pkix.Pkix_rdnsequence.RDNSequence) this = new stdgo._internal.crypto.x509.X509_t_distributionpointname.T_distributionPointName(([for (i in fullName) i] : stdgo.Slice<stdgo._internal.encoding.asn1.Asn1_rawvalue.RawValue>), relativeName);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.crypto.x509.X509.CertificateRequest_static_extension) abstract CertificateRequest(stdgo._internal.crypto.x509.X509_certificaterequest.CertificateRequest) from stdgo._internal.crypto.x509.X509_certificaterequest.CertificateRequest to stdgo._internal.crypto.x509.X509_certificaterequest.CertificateRequest {
    public var raw(get, set) : Array<std.UInt>;
    function get_raw():Array<std.UInt> return [for (i in this.raw) i];
    function set_raw(v:Array<std.UInt>):Array<std.UInt> {
        this.raw = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public var rawTBSCertificateRequest(get, set) : Array<std.UInt>;
    function get_rawTBSCertificateRequest():Array<std.UInt> return [for (i in this.rawTBSCertificateRequest) i];
    function set_rawTBSCertificateRequest(v:Array<std.UInt>):Array<std.UInt> {
        this.rawTBSCertificateRequest = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public var rawSubjectPublicKeyInfo(get, set) : Array<std.UInt>;
    function get_rawSubjectPublicKeyInfo():Array<std.UInt> return [for (i in this.rawSubjectPublicKeyInfo) i];
    function set_rawSubjectPublicKeyInfo(v:Array<std.UInt>):Array<std.UInt> {
        this.rawSubjectPublicKeyInfo = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public var rawSubject(get, set) : Array<std.UInt>;
    function get_rawSubject():Array<std.UInt> return [for (i in this.rawSubject) i];
    function set_rawSubject(v:Array<std.UInt>):Array<std.UInt> {
        this.rawSubject = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public var version(get, set) : StdTypes.Int;
    function get_version():StdTypes.Int return this.version;
    function set_version(v:StdTypes.Int):StdTypes.Int {
        this.version = (v : stdgo.GoInt);
        return v;
    }
    public var signature(get, set) : Array<std.UInt>;
    function get_signature():Array<std.UInt> return [for (i in this.signature) i];
    function set_signature(v:Array<std.UInt>):Array<std.UInt> {
        this.signature = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
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
        this.publicKey = (v : stdgo.AnyInterface);
        return v;
    }
    public var subject(get, set) : stdgo._internal.crypto.x509.pkix.Pkix_name.Name;
    function get_subject():stdgo._internal.crypto.x509.pkix.Pkix_name.Name return this.subject;
    function set_subject(v:stdgo._internal.crypto.x509.pkix.Pkix_name.Name):stdgo._internal.crypto.x509.pkix.Pkix_name.Name {
        this.subject = v;
        return v;
    }
    public var attributes(get, set) : Array<stdgo._internal.crypto.x509.pkix.Pkix_attributetypeandvalueset.AttributeTypeAndValueSET>;
    function get_attributes():Array<stdgo._internal.crypto.x509.pkix.Pkix_attributetypeandvalueset.AttributeTypeAndValueSET> return [for (i in this.attributes) i];
    function set_attributes(v:Array<stdgo._internal.crypto.x509.pkix.Pkix_attributetypeandvalueset.AttributeTypeAndValueSET>):Array<stdgo._internal.crypto.x509.pkix.Pkix_attributetypeandvalueset.AttributeTypeAndValueSET> {
        this.attributes = ([for (i in v) i] : stdgo.Slice<stdgo._internal.crypto.x509.pkix.Pkix_attributetypeandvalueset.AttributeTypeAndValueSET>);
        return v;
    }
    public var extensions(get, set) : Array<stdgo._internal.crypto.x509.pkix.Pkix_extension.Extension>;
    function get_extensions():Array<stdgo._internal.crypto.x509.pkix.Pkix_extension.Extension> return [for (i in this.extensions) i];
    function set_extensions(v:Array<stdgo._internal.crypto.x509.pkix.Pkix_extension.Extension>):Array<stdgo._internal.crypto.x509.pkix.Pkix_extension.Extension> {
        this.extensions = ([for (i in v) i] : stdgo.Slice<stdgo._internal.crypto.x509.pkix.Pkix_extension.Extension>);
        return v;
    }
    public var extraExtensions(get, set) : Array<stdgo._internal.crypto.x509.pkix.Pkix_extension.Extension>;
    function get_extraExtensions():Array<stdgo._internal.crypto.x509.pkix.Pkix_extension.Extension> return [for (i in this.extraExtensions) i];
    function set_extraExtensions(v:Array<stdgo._internal.crypto.x509.pkix.Pkix_extension.Extension>):Array<stdgo._internal.crypto.x509.pkix.Pkix_extension.Extension> {
        this.extraExtensions = ([for (i in v) i] : stdgo.Slice<stdgo._internal.crypto.x509.pkix.Pkix_extension.Extension>);
        return v;
    }
    public var dNSNames(get, set) : Array<String>;
    function get_dNSNames():Array<String> return [for (i in this.dNSNames) i];
    function set_dNSNames(v:Array<String>):Array<String> {
        this.dNSNames = ([for (i in v) (i : stdgo.GoString)] : stdgo.Slice<stdgo.GoString>);
        return v;
    }
    public var emailAddresses(get, set) : Array<String>;
    function get_emailAddresses():Array<String> return [for (i in this.emailAddresses) i];
    function set_emailAddresses(v:Array<String>):Array<String> {
        this.emailAddresses = ([for (i in v) (i : stdgo.GoString)] : stdgo.Slice<stdgo.GoString>);
        return v;
    }
    public var iPAddresses(get, set) : Array<stdgo._internal.net.Net_ip.IP>;
    function get_iPAddresses():Array<stdgo._internal.net.Net_ip.IP> return [for (i in this.iPAddresses) i];
    function set_iPAddresses(v:Array<stdgo._internal.net.Net_ip.IP>):Array<stdgo._internal.net.Net_ip.IP> {
        this.iPAddresses = ([for (i in v) i] : stdgo.Slice<stdgo._internal.net.Net_ip.IP>);
        return v;
    }
    public var uRIs(get, set) : Array<stdgo._internal.net.url.Url_url.URL>;
    function get_uRIs():Array<stdgo._internal.net.url.Url_url.URL> return [for (i in this.uRIs) i];
    function set_uRIs(v:Array<stdgo._internal.net.url.Url_url.URL>):Array<stdgo._internal.net.url.Url_url.URL> {
        this.uRIs = ([for (i in v) (i : stdgo.Ref<stdgo._internal.net.url.Url_url.URL>)] : stdgo.Slice<stdgo.Ref<stdgo._internal.net.url.Url_url.URL>>);
        return v;
    }
    public function new(?raw:Array<std.UInt>, ?rawTBSCertificateRequest:Array<std.UInt>, ?rawSubjectPublicKeyInfo:Array<std.UInt>, ?rawSubject:Array<std.UInt>, ?version:StdTypes.Int, ?signature:Array<std.UInt>, ?signatureAlgorithm:SignatureAlgorithm, ?publicKeyAlgorithm:PublicKeyAlgorithm, ?publicKey:stdgo.AnyInterface, ?subject:stdgo._internal.crypto.x509.pkix.Pkix_name.Name, ?attributes:Array<stdgo._internal.crypto.x509.pkix.Pkix_attributetypeandvalueset.AttributeTypeAndValueSET>, ?extensions:Array<stdgo._internal.crypto.x509.pkix.Pkix_extension.Extension>, ?extraExtensions:Array<stdgo._internal.crypto.x509.pkix.Pkix_extension.Extension>, ?dNSNames:Array<String>, ?emailAddresses:Array<String>, ?iPAddresses:Array<stdgo._internal.net.Net_ip.IP>, ?uRIs:Array<stdgo._internal.net.url.Url_url.URL>) this = new stdgo._internal.crypto.x509.X509_certificaterequest.CertificateRequest(
([for (i in raw) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>),
([for (i in rawTBSCertificateRequest) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>),
([for (i in rawSubjectPublicKeyInfo) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>),
([for (i in rawSubject) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>),
(version : stdgo.GoInt),
([for (i in signature) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>),
signatureAlgorithm,
publicKeyAlgorithm,
(publicKey : stdgo.AnyInterface),
subject,
([for (i in attributes) i] : stdgo.Slice<stdgo._internal.crypto.x509.pkix.Pkix_attributetypeandvalueset.AttributeTypeAndValueSET>),
([for (i in extensions) i] : stdgo.Slice<stdgo._internal.crypto.x509.pkix.Pkix_extension.Extension>),
([for (i in extraExtensions) i] : stdgo.Slice<stdgo._internal.crypto.x509.pkix.Pkix_extension.Extension>),
([for (i in dNSNames) (i : stdgo.GoString)] : stdgo.Slice<stdgo.GoString>),
([for (i in emailAddresses) (i : stdgo.GoString)] : stdgo.Slice<stdgo.GoString>),
([for (i in iPAddresses) i] : stdgo.Slice<stdgo._internal.net.Net_ip.IP>),
([for (i in uRIs) (i : stdgo.Ref<stdgo._internal.net.url.Url_url.URL>)] : stdgo.Slice<stdgo.Ref<stdgo._internal.net.url.Url_url.URL>>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.crypto.x509.X509.T_tbsCertificateRequest_static_extension) @:dox(hide) abstract T_tbsCertificateRequest(stdgo._internal.crypto.x509.X509_t_tbscertificaterequest.T_tbsCertificateRequest) from stdgo._internal.crypto.x509.X509_t_tbscertificaterequest.T_tbsCertificateRequest to stdgo._internal.crypto.x509.X509_t_tbscertificaterequest.T_tbsCertificateRequest {
    public var raw(get, set) : stdgo._internal.encoding.asn1.Asn1_rawcontent.RawContent;
    function get_raw():stdgo._internal.encoding.asn1.Asn1_rawcontent.RawContent return this.raw;
    function set_raw(v:stdgo._internal.encoding.asn1.Asn1_rawcontent.RawContent):stdgo._internal.encoding.asn1.Asn1_rawcontent.RawContent {
        this.raw = v;
        return v;
    }
    public var version(get, set) : StdTypes.Int;
    function get_version():StdTypes.Int return this.version;
    function set_version(v:StdTypes.Int):StdTypes.Int {
        this.version = (v : stdgo.GoInt);
        return v;
    }
    public var subject(get, set) : stdgo._internal.encoding.asn1.Asn1_rawvalue.RawValue;
    function get_subject():stdgo._internal.encoding.asn1.Asn1_rawvalue.RawValue return this.subject;
    function set_subject(v:stdgo._internal.encoding.asn1.Asn1_rawvalue.RawValue):stdgo._internal.encoding.asn1.Asn1_rawvalue.RawValue {
        this.subject = v;
        return v;
    }
    public var publicKey(get, set) : T_publicKeyInfo;
    function get_publicKey():T_publicKeyInfo return this.publicKey;
    function set_publicKey(v:T_publicKeyInfo):T_publicKeyInfo {
        this.publicKey = v;
        return v;
    }
    public var rawAttributes(get, set) : Array<stdgo._internal.encoding.asn1.Asn1_rawvalue.RawValue>;
    function get_rawAttributes():Array<stdgo._internal.encoding.asn1.Asn1_rawvalue.RawValue> return [for (i in this.rawAttributes) i];
    function set_rawAttributes(v:Array<stdgo._internal.encoding.asn1.Asn1_rawvalue.RawValue>):Array<stdgo._internal.encoding.asn1.Asn1_rawvalue.RawValue> {
        this.rawAttributes = ([for (i in v) i] : stdgo.Slice<stdgo._internal.encoding.asn1.Asn1_rawvalue.RawValue>);
        return v;
    }
    public function new(?raw:stdgo._internal.encoding.asn1.Asn1_rawcontent.RawContent, ?version:StdTypes.Int, ?subject:stdgo._internal.encoding.asn1.Asn1_rawvalue.RawValue, ?publicKey:T_publicKeyInfo, ?rawAttributes:Array<stdgo._internal.encoding.asn1.Asn1_rawvalue.RawValue>) this = new stdgo._internal.crypto.x509.X509_t_tbscertificaterequest.T_tbsCertificateRequest(raw, (version : stdgo.GoInt), subject, publicKey, ([for (i in rawAttributes) i] : stdgo.Slice<stdgo._internal.encoding.asn1.Asn1_rawvalue.RawValue>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.crypto.x509.X509.T_certificateRequest_static_extension) @:dox(hide) abstract T_certificateRequest(stdgo._internal.crypto.x509.X509_t_certificaterequest.T_certificateRequest) from stdgo._internal.crypto.x509.X509_t_certificaterequest.T_certificateRequest to stdgo._internal.crypto.x509.X509_t_certificaterequest.T_certificateRequest {
    public var raw(get, set) : stdgo._internal.encoding.asn1.Asn1_rawcontent.RawContent;
    function get_raw():stdgo._internal.encoding.asn1.Asn1_rawcontent.RawContent return this.raw;
    function set_raw(v:stdgo._internal.encoding.asn1.Asn1_rawcontent.RawContent):stdgo._internal.encoding.asn1.Asn1_rawcontent.RawContent {
        this.raw = v;
        return v;
    }
    public var tBSCSR(get, set) : T_tbsCertificateRequest;
    function get_tBSCSR():T_tbsCertificateRequest return this.tBSCSR;
    function set_tBSCSR(v:T_tbsCertificateRequest):T_tbsCertificateRequest {
        this.tBSCSR = v;
        return v;
    }
    public var signatureAlgorithm(get, set) : stdgo._internal.crypto.x509.pkix.Pkix_algorithmidentifier.AlgorithmIdentifier;
    function get_signatureAlgorithm():stdgo._internal.crypto.x509.pkix.Pkix_algorithmidentifier.AlgorithmIdentifier return this.signatureAlgorithm;
    function set_signatureAlgorithm(v:stdgo._internal.crypto.x509.pkix.Pkix_algorithmidentifier.AlgorithmIdentifier):stdgo._internal.crypto.x509.pkix.Pkix_algorithmidentifier.AlgorithmIdentifier {
        this.signatureAlgorithm = v;
        return v;
    }
    public var signatureValue(get, set) : stdgo._internal.encoding.asn1.Asn1_bitstring.BitString;
    function get_signatureValue():stdgo._internal.encoding.asn1.Asn1_bitstring.BitString return this.signatureValue;
    function set_signatureValue(v:stdgo._internal.encoding.asn1.Asn1_bitstring.BitString):stdgo._internal.encoding.asn1.Asn1_bitstring.BitString {
        this.signatureValue = v;
        return v;
    }
    public function new(?raw:stdgo._internal.encoding.asn1.Asn1_rawcontent.RawContent, ?tBSCSR:T_tbsCertificateRequest, ?signatureAlgorithm:stdgo._internal.crypto.x509.pkix.Pkix_algorithmidentifier.AlgorithmIdentifier, ?signatureValue:stdgo._internal.encoding.asn1.Asn1_bitstring.BitString) this = new stdgo._internal.crypto.x509.X509_t_certificaterequest.T_certificateRequest(raw, tBSCSR, signatureAlgorithm, signatureValue);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.crypto.x509.X509.RevocationListEntry_static_extension) abstract RevocationListEntry(stdgo._internal.crypto.x509.X509_revocationlistentry.RevocationListEntry) from stdgo._internal.crypto.x509.X509_revocationlistentry.RevocationListEntry to stdgo._internal.crypto.x509.X509_revocationlistentry.RevocationListEntry {
    public var raw(get, set) : Array<std.UInt>;
    function get_raw():Array<std.UInt> return [for (i in this.raw) i];
    function set_raw(v:Array<std.UInt>):Array<std.UInt> {
        this.raw = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public var serialNumber(get, set) : stdgo._internal.math.big.Big_int_.Int_;
    function get_serialNumber():stdgo._internal.math.big.Big_int_.Int_ return this.serialNumber;
    function set_serialNumber(v:stdgo._internal.math.big.Big_int_.Int_):stdgo._internal.math.big.Big_int_.Int_ {
        this.serialNumber = (v : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        return v;
    }
    public var revocationTime(get, set) : stdgo._internal.time.Time_time.Time;
    function get_revocationTime():stdgo._internal.time.Time_time.Time return this.revocationTime;
    function set_revocationTime(v:stdgo._internal.time.Time_time.Time):stdgo._internal.time.Time_time.Time {
        this.revocationTime = v;
        return v;
    }
    public var reasonCode(get, set) : StdTypes.Int;
    function get_reasonCode():StdTypes.Int return this.reasonCode;
    function set_reasonCode(v:StdTypes.Int):StdTypes.Int {
        this.reasonCode = (v : stdgo.GoInt);
        return v;
    }
    public var extensions(get, set) : Array<stdgo._internal.crypto.x509.pkix.Pkix_extension.Extension>;
    function get_extensions():Array<stdgo._internal.crypto.x509.pkix.Pkix_extension.Extension> return [for (i in this.extensions) i];
    function set_extensions(v:Array<stdgo._internal.crypto.x509.pkix.Pkix_extension.Extension>):Array<stdgo._internal.crypto.x509.pkix.Pkix_extension.Extension> {
        this.extensions = ([for (i in v) i] : stdgo.Slice<stdgo._internal.crypto.x509.pkix.Pkix_extension.Extension>);
        return v;
    }
    public var extraExtensions(get, set) : Array<stdgo._internal.crypto.x509.pkix.Pkix_extension.Extension>;
    function get_extraExtensions():Array<stdgo._internal.crypto.x509.pkix.Pkix_extension.Extension> return [for (i in this.extraExtensions) i];
    function set_extraExtensions(v:Array<stdgo._internal.crypto.x509.pkix.Pkix_extension.Extension>):Array<stdgo._internal.crypto.x509.pkix.Pkix_extension.Extension> {
        this.extraExtensions = ([for (i in v) i] : stdgo.Slice<stdgo._internal.crypto.x509.pkix.Pkix_extension.Extension>);
        return v;
    }
    public function new(?raw:Array<std.UInt>, ?serialNumber:stdgo._internal.math.big.Big_int_.Int_, ?revocationTime:stdgo._internal.time.Time_time.Time, ?reasonCode:StdTypes.Int, ?extensions:Array<stdgo._internal.crypto.x509.pkix.Pkix_extension.Extension>, ?extraExtensions:Array<stdgo._internal.crypto.x509.pkix.Pkix_extension.Extension>) this = new stdgo._internal.crypto.x509.X509_revocationlistentry.RevocationListEntry(([for (i in raw) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>), (serialNumber : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>), revocationTime, (reasonCode : stdgo.GoInt), ([for (i in extensions) i] : stdgo.Slice<stdgo._internal.crypto.x509.pkix.Pkix_extension.Extension>), ([for (i in extraExtensions) i] : stdgo.Slice<stdgo._internal.crypto.x509.pkix.Pkix_extension.Extension>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.crypto.x509.X509.RevocationList_static_extension) abstract RevocationList(stdgo._internal.crypto.x509.X509_revocationlist.RevocationList) from stdgo._internal.crypto.x509.X509_revocationlist.RevocationList to stdgo._internal.crypto.x509.X509_revocationlist.RevocationList {
    public var raw(get, set) : Array<std.UInt>;
    function get_raw():Array<std.UInt> return [for (i in this.raw) i];
    function set_raw(v:Array<std.UInt>):Array<std.UInt> {
        this.raw = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public var rawTBSRevocationList(get, set) : Array<std.UInt>;
    function get_rawTBSRevocationList():Array<std.UInt> return [for (i in this.rawTBSRevocationList) i];
    function set_rawTBSRevocationList(v:Array<std.UInt>):Array<std.UInt> {
        this.rawTBSRevocationList = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public var rawIssuer(get, set) : Array<std.UInt>;
    function get_rawIssuer():Array<std.UInt> return [for (i in this.rawIssuer) i];
    function set_rawIssuer(v:Array<std.UInt>):Array<std.UInt> {
        this.rawIssuer = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public var issuer(get, set) : stdgo._internal.crypto.x509.pkix.Pkix_name.Name;
    function get_issuer():stdgo._internal.crypto.x509.pkix.Pkix_name.Name return this.issuer;
    function set_issuer(v:stdgo._internal.crypto.x509.pkix.Pkix_name.Name):stdgo._internal.crypto.x509.pkix.Pkix_name.Name {
        this.issuer = v;
        return v;
    }
    public var authorityKeyId(get, set) : Array<std.UInt>;
    function get_authorityKeyId():Array<std.UInt> return [for (i in this.authorityKeyId) i];
    function set_authorityKeyId(v:Array<std.UInt>):Array<std.UInt> {
        this.authorityKeyId = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public var signature(get, set) : Array<std.UInt>;
    function get_signature():Array<std.UInt> return [for (i in this.signature) i];
    function set_signature(v:Array<std.UInt>):Array<std.UInt> {
        this.signature = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
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
        this.revokedCertificateEntries = ([for (i in v) i] : stdgo.Slice<stdgo._internal.crypto.x509.X509_revocationlistentry.RevocationListEntry>);
        return v;
    }
    public var revokedCertificates(get, set) : Array<stdgo._internal.crypto.x509.pkix.Pkix_revokedcertificate.RevokedCertificate>;
    function get_revokedCertificates():Array<stdgo._internal.crypto.x509.pkix.Pkix_revokedcertificate.RevokedCertificate> return [for (i in this.revokedCertificates) i];
    function set_revokedCertificates(v:Array<stdgo._internal.crypto.x509.pkix.Pkix_revokedcertificate.RevokedCertificate>):Array<stdgo._internal.crypto.x509.pkix.Pkix_revokedcertificate.RevokedCertificate> {
        this.revokedCertificates = ([for (i in v) i] : stdgo.Slice<stdgo._internal.crypto.x509.pkix.Pkix_revokedcertificate.RevokedCertificate>);
        return v;
    }
    public var number(get, set) : stdgo._internal.math.big.Big_int_.Int_;
    function get_number():stdgo._internal.math.big.Big_int_.Int_ return this.number;
    function set_number(v:stdgo._internal.math.big.Big_int_.Int_):stdgo._internal.math.big.Big_int_.Int_ {
        this.number = (v : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        return v;
    }
    public var thisUpdate(get, set) : stdgo._internal.time.Time_time.Time;
    function get_thisUpdate():stdgo._internal.time.Time_time.Time return this.thisUpdate;
    function set_thisUpdate(v:stdgo._internal.time.Time_time.Time):stdgo._internal.time.Time_time.Time {
        this.thisUpdate = v;
        return v;
    }
    public var nextUpdate(get, set) : stdgo._internal.time.Time_time.Time;
    function get_nextUpdate():stdgo._internal.time.Time_time.Time return this.nextUpdate;
    function set_nextUpdate(v:stdgo._internal.time.Time_time.Time):stdgo._internal.time.Time_time.Time {
        this.nextUpdate = v;
        return v;
    }
    public var extensions(get, set) : Array<stdgo._internal.crypto.x509.pkix.Pkix_extension.Extension>;
    function get_extensions():Array<stdgo._internal.crypto.x509.pkix.Pkix_extension.Extension> return [for (i in this.extensions) i];
    function set_extensions(v:Array<stdgo._internal.crypto.x509.pkix.Pkix_extension.Extension>):Array<stdgo._internal.crypto.x509.pkix.Pkix_extension.Extension> {
        this.extensions = ([for (i in v) i] : stdgo.Slice<stdgo._internal.crypto.x509.pkix.Pkix_extension.Extension>);
        return v;
    }
    public var extraExtensions(get, set) : Array<stdgo._internal.crypto.x509.pkix.Pkix_extension.Extension>;
    function get_extraExtensions():Array<stdgo._internal.crypto.x509.pkix.Pkix_extension.Extension> return [for (i in this.extraExtensions) i];
    function set_extraExtensions(v:Array<stdgo._internal.crypto.x509.pkix.Pkix_extension.Extension>):Array<stdgo._internal.crypto.x509.pkix.Pkix_extension.Extension> {
        this.extraExtensions = ([for (i in v) i] : stdgo.Slice<stdgo._internal.crypto.x509.pkix.Pkix_extension.Extension>);
        return v;
    }
    public function new(?raw:Array<std.UInt>, ?rawTBSRevocationList:Array<std.UInt>, ?rawIssuer:Array<std.UInt>, ?issuer:stdgo._internal.crypto.x509.pkix.Pkix_name.Name, ?authorityKeyId:Array<std.UInt>, ?signature:Array<std.UInt>, ?signatureAlgorithm:SignatureAlgorithm, ?revokedCertificateEntries:Array<RevocationListEntry>, ?revokedCertificates:Array<stdgo._internal.crypto.x509.pkix.Pkix_revokedcertificate.RevokedCertificate>, ?number:stdgo._internal.math.big.Big_int_.Int_, ?thisUpdate:stdgo._internal.time.Time_time.Time, ?nextUpdate:stdgo._internal.time.Time_time.Time, ?extensions:Array<stdgo._internal.crypto.x509.pkix.Pkix_extension.Extension>, ?extraExtensions:Array<stdgo._internal.crypto.x509.pkix.Pkix_extension.Extension>) this = new stdgo._internal.crypto.x509.X509_revocationlist.RevocationList(
([for (i in raw) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>),
([for (i in rawTBSRevocationList) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>),
([for (i in rawIssuer) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>),
issuer,
([for (i in authorityKeyId) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>),
([for (i in signature) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>),
signatureAlgorithm,
([for (i in revokedCertificateEntries) i] : stdgo.Slice<stdgo._internal.crypto.x509.X509_revocationlistentry.RevocationListEntry>),
([for (i in revokedCertificates) i] : stdgo.Slice<stdgo._internal.crypto.x509.pkix.Pkix_revokedcertificate.RevokedCertificate>),
(number : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>),
thisUpdate,
nextUpdate,
([for (i in extensions) i] : stdgo.Slice<stdgo._internal.crypto.x509.pkix.Pkix_extension.Extension>),
([for (i in extraExtensions) i] : stdgo.Slice<stdgo._internal.crypto.x509.pkix.Pkix_extension.Extension>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.crypto.x509.X509.T_certificateList_static_extension) @:dox(hide) abstract T_certificateList(stdgo._internal.crypto.x509.X509_t_certificatelist.T_certificateList) from stdgo._internal.crypto.x509.X509_t_certificatelist.T_certificateList to stdgo._internal.crypto.x509.X509_t_certificatelist.T_certificateList {
    public var tBSCertList(get, set) : T_tbsCertificateList;
    function get_tBSCertList():T_tbsCertificateList return this.tBSCertList;
    function set_tBSCertList(v:T_tbsCertificateList):T_tbsCertificateList {
        this.tBSCertList = v;
        return v;
    }
    public var signatureAlgorithm(get, set) : stdgo._internal.crypto.x509.pkix.Pkix_algorithmidentifier.AlgorithmIdentifier;
    function get_signatureAlgorithm():stdgo._internal.crypto.x509.pkix.Pkix_algorithmidentifier.AlgorithmIdentifier return this.signatureAlgorithm;
    function set_signatureAlgorithm(v:stdgo._internal.crypto.x509.pkix.Pkix_algorithmidentifier.AlgorithmIdentifier):stdgo._internal.crypto.x509.pkix.Pkix_algorithmidentifier.AlgorithmIdentifier {
        this.signatureAlgorithm = v;
        return v;
    }
    public var signatureValue(get, set) : stdgo._internal.encoding.asn1.Asn1_bitstring.BitString;
    function get_signatureValue():stdgo._internal.encoding.asn1.Asn1_bitstring.BitString return this.signatureValue;
    function set_signatureValue(v:stdgo._internal.encoding.asn1.Asn1_bitstring.BitString):stdgo._internal.encoding.asn1.Asn1_bitstring.BitString {
        this.signatureValue = v;
        return v;
    }
    public function new(?tBSCertList:T_tbsCertificateList, ?signatureAlgorithm:stdgo._internal.crypto.x509.pkix.Pkix_algorithmidentifier.AlgorithmIdentifier, ?signatureValue:stdgo._internal.encoding.asn1.Asn1_bitstring.BitString) this = new stdgo._internal.crypto.x509.X509_t_certificatelist.T_certificateList(tBSCertList, signatureAlgorithm, signatureValue);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.crypto.x509.X509.T_tbsCertificateList_static_extension) @:dox(hide) abstract T_tbsCertificateList(stdgo._internal.crypto.x509.X509_t_tbscertificatelist.T_tbsCertificateList) from stdgo._internal.crypto.x509.X509_t_tbscertificatelist.T_tbsCertificateList to stdgo._internal.crypto.x509.X509_t_tbscertificatelist.T_tbsCertificateList {
    public var raw(get, set) : stdgo._internal.encoding.asn1.Asn1_rawcontent.RawContent;
    function get_raw():stdgo._internal.encoding.asn1.Asn1_rawcontent.RawContent return this.raw;
    function set_raw(v:stdgo._internal.encoding.asn1.Asn1_rawcontent.RawContent):stdgo._internal.encoding.asn1.Asn1_rawcontent.RawContent {
        this.raw = v;
        return v;
    }
    public var version(get, set) : StdTypes.Int;
    function get_version():StdTypes.Int return this.version;
    function set_version(v:StdTypes.Int):StdTypes.Int {
        this.version = (v : stdgo.GoInt);
        return v;
    }
    public var signature(get, set) : stdgo._internal.crypto.x509.pkix.Pkix_algorithmidentifier.AlgorithmIdentifier;
    function get_signature():stdgo._internal.crypto.x509.pkix.Pkix_algorithmidentifier.AlgorithmIdentifier return this.signature;
    function set_signature(v:stdgo._internal.crypto.x509.pkix.Pkix_algorithmidentifier.AlgorithmIdentifier):stdgo._internal.crypto.x509.pkix.Pkix_algorithmidentifier.AlgorithmIdentifier {
        this.signature = v;
        return v;
    }
    public var issuer(get, set) : stdgo._internal.encoding.asn1.Asn1_rawvalue.RawValue;
    function get_issuer():stdgo._internal.encoding.asn1.Asn1_rawvalue.RawValue return this.issuer;
    function set_issuer(v:stdgo._internal.encoding.asn1.Asn1_rawvalue.RawValue):stdgo._internal.encoding.asn1.Asn1_rawvalue.RawValue {
        this.issuer = v;
        return v;
    }
    public var thisUpdate(get, set) : stdgo._internal.time.Time_time.Time;
    function get_thisUpdate():stdgo._internal.time.Time_time.Time return this.thisUpdate;
    function set_thisUpdate(v:stdgo._internal.time.Time_time.Time):stdgo._internal.time.Time_time.Time {
        this.thisUpdate = v;
        return v;
    }
    public var nextUpdate(get, set) : stdgo._internal.time.Time_time.Time;
    function get_nextUpdate():stdgo._internal.time.Time_time.Time return this.nextUpdate;
    function set_nextUpdate(v:stdgo._internal.time.Time_time.Time):stdgo._internal.time.Time_time.Time {
        this.nextUpdate = v;
        return v;
    }
    public var revokedCertificates(get, set) : Array<stdgo._internal.crypto.x509.pkix.Pkix_revokedcertificate.RevokedCertificate>;
    function get_revokedCertificates():Array<stdgo._internal.crypto.x509.pkix.Pkix_revokedcertificate.RevokedCertificate> return [for (i in this.revokedCertificates) i];
    function set_revokedCertificates(v:Array<stdgo._internal.crypto.x509.pkix.Pkix_revokedcertificate.RevokedCertificate>):Array<stdgo._internal.crypto.x509.pkix.Pkix_revokedcertificate.RevokedCertificate> {
        this.revokedCertificates = ([for (i in v) i] : stdgo.Slice<stdgo._internal.crypto.x509.pkix.Pkix_revokedcertificate.RevokedCertificate>);
        return v;
    }
    public var extensions(get, set) : Array<stdgo._internal.crypto.x509.pkix.Pkix_extension.Extension>;
    function get_extensions():Array<stdgo._internal.crypto.x509.pkix.Pkix_extension.Extension> return [for (i in this.extensions) i];
    function set_extensions(v:Array<stdgo._internal.crypto.x509.pkix.Pkix_extension.Extension>):Array<stdgo._internal.crypto.x509.pkix.Pkix_extension.Extension> {
        this.extensions = ([for (i in v) i] : stdgo.Slice<stdgo._internal.crypto.x509.pkix.Pkix_extension.Extension>);
        return v;
    }
    public function new(?raw:stdgo._internal.encoding.asn1.Asn1_rawcontent.RawContent, ?version:StdTypes.Int, ?signature:stdgo._internal.crypto.x509.pkix.Pkix_algorithmidentifier.AlgorithmIdentifier, ?issuer:stdgo._internal.encoding.asn1.Asn1_rawvalue.RawValue, ?thisUpdate:stdgo._internal.time.Time_time.Time, ?nextUpdate:stdgo._internal.time.Time_time.Time, ?revokedCertificates:Array<stdgo._internal.crypto.x509.pkix.Pkix_revokedcertificate.RevokedCertificate>, ?extensions:Array<stdgo._internal.crypto.x509.pkix.Pkix_extension.Extension>) this = new stdgo._internal.crypto.x509.X509_t_tbscertificatelist.T_tbsCertificateList(raw, (version : stdgo.GoInt), signature, issuer, thisUpdate, nextUpdate, ([for (i in revokedCertificates) i] : stdgo.Slice<stdgo._internal.crypto.x509.pkix.Pkix_revokedcertificate.RevokedCertificate>), ([for (i in extensions) i] : stdgo.Slice<stdgo._internal.crypto.x509.pkix.Pkix_extension.Extension>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:dox(hide) typedef T__struct_0Pointer = stdgo._internal.crypto.x509.X509_t__struct_0pointer.T__struct_0Pointer;
@:dox(hide) class T__struct_0_static_extension {
    public static function _doSlow(__self__:stdgo._internal.crypto.x509.X509_t__struct_0.T__struct_0, _0:() -> Void):Void {
        final _0 = _0;
        stdgo._internal.crypto.x509.X509_t__struct_0_static_extension.T__struct_0_static_extension._doSlow(__self__, _0);
    }
    public static function do_(__self__:stdgo._internal.crypto.x509.X509_t__struct_0.T__struct_0, _0:() -> Void):Void {
        final _0 = _0;
        stdgo._internal.crypto.x509.X509_t__struct_0_static_extension.T__struct_0_static_extension.do_(__self__, _0);
    }
}
@:dox(hide) typedef T__struct_0 = stdgo._internal.crypto.x509.X509_t__struct_0.T__struct_0;
@:dox(hide) typedef T__struct_1Pointer = stdgo._internal.crypto.x509.X509_t__struct_1pointer.T__struct_1Pointer;
@:dox(hide) class T__struct_1_static_extension {

}
@:dox(hide) typedef T__struct_1 = stdgo._internal.crypto.x509.X509_t__struct_1.T__struct_1;
@:dox(hide) typedef T__struct_2Pointer = stdgo._internal.crypto.x509.X509_t__struct_2pointer.T__struct_2Pointer;
@:dox(hide) class T__struct_2_static_extension {

}
@:dox(hide) typedef T__struct_2 = stdgo._internal.crypto.x509.X509_t__struct_2.T__struct_2;
@:dox(hide) typedef T__struct_3Pointer = stdgo._internal.crypto.x509.X509_t__struct_3pointer.T__struct_3Pointer;
@:dox(hide) class T__struct_3_static_extension {

}
@:dox(hide) typedef T__struct_3 = stdgo._internal.crypto.x509.X509_t__struct_3.T__struct_3;
@:dox(hide) typedef T_sum224 = stdgo._internal.crypto.x509.X509_t_sum224.T_sum224;
typedef PEMCipher = stdgo._internal.crypto.x509.X509_pemcipher.PEMCipher;
typedef InvalidReason = stdgo._internal.crypto.x509.X509_invalidreason.InvalidReason;
typedef SignatureAlgorithm = stdgo._internal.crypto.x509.X509_signaturealgorithm.SignatureAlgorithm;
typedef PublicKeyAlgorithm = stdgo._internal.crypto.x509.X509_publickeyalgorithm.PublicKeyAlgorithm;
typedef KeyUsage = stdgo._internal.crypto.x509.X509_keyusage.KeyUsage;
typedef ExtKeyUsage = stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage;
typedef InsecureAlgorithmError = stdgo._internal.crypto.x509.X509_insecurealgorithmerror.InsecureAlgorithmError;
@:dox(hide) class T__alreadyInChain___localname___pubKeyEqual_27559_static_extension {
    static public function equal(t:stdgo._internal.crypto.x509.X509_t__alreadyinchain___localname___pubkeyequal_27559.T__alreadyInChain___localname___pubKeyEqual_27559, _0:stdgo._internal.crypto.Crypto_publickey.PublicKey):Bool {
        return stdgo._internal.crypto.x509.X509_t__alreadyinchain___localname___pubkeyequal_27559_static_extension.T__alreadyInChain___localname___pubKeyEqual_27559_static_extension.equal(t, _0);
    }
}
@:dox(hide) @:forward abstract T__alreadyInChain___localname___pubKeyEqual_27559(stdgo._internal.crypto.x509.X509_t__alreadyinchain___localname___pubkeyequal_27559.T__alreadyInChain___localname___pubKeyEqual_27559) from stdgo._internal.crypto.x509.X509_t__alreadyinchain___localname___pubkeyequal_27559.T__alreadyInChain___localname___pubKeyEqual_27559 to stdgo._internal.crypto.x509.X509_t__alreadyinchain___localname___pubkeyequal_27559.T__alreadyInChain___localname___pubKeyEqual_27559 {
    @:from
    static function fromHaxeInterface(x:{ function equal(_0:stdgo._internal.crypto.Crypto_publickey.PublicKey):Bool; }):T__alreadyInChain___localname___pubKeyEqual_27559 {
        var __f__:Void -> stdgo.AnyInterface = null;
        final y:T__alreadyInChain___localname___pubKeyEqual_27559 = { equal : _0 -> x.equal(_0), __underlying__ : () -> __f__() };
        __f__ = () -> stdgo.Go.toInterface(y);
        return y;
    }
}
@:dox(hide) class T_createCertificate___localname___privateKey_54152_static_extension {
    static public function equal(t:stdgo._internal.crypto.x509.X509_t_createcertificate___localname___privatekey_54152.T_createCertificate___localname___privateKey_54152, _0:stdgo._internal.crypto.Crypto_publickey.PublicKey):Bool {
        return stdgo._internal.crypto.x509.X509_t_createcertificate___localname___privatekey_54152_static_extension.T_createCertificate___localname___privateKey_54152_static_extension.equal(t, _0);
    }
}
@:dox(hide) @:forward abstract T_createCertificate___localname___privateKey_54152(stdgo._internal.crypto.x509.X509_t_createcertificate___localname___privatekey_54152.T_createCertificate___localname___privateKey_54152) from stdgo._internal.crypto.x509.X509_t_createcertificate___localname___privatekey_54152.T_createCertificate___localname___privateKey_54152 to stdgo._internal.crypto.x509.X509_t_createcertificate___localname___privatekey_54152.T_createCertificate___localname___privateKey_54152 {
    @:from
    static function fromHaxeInterface(x:{ function equal(_0:stdgo._internal.crypto.Crypto_publickey.PublicKey):Bool; }):T_createCertificate___localname___privateKey_54152 {
        var __f__:Void -> stdgo.AnyInterface = null;
        final y:T_createCertificate___localname___privateKey_54152 = { equal : _0 -> x.equal(_0), __underlying__ : () -> __f__() };
        __f__ = () -> stdgo.Go.toInterface(y);
        return y;
    }
}
@:structInit @:using(stdgo.crypto.x509.X509.T__parseCSRExtensions___localname___pkcs10Attribute_63210_static_extension) @:dox(hide) abstract T__parseCSRExtensions___localname___pkcs10Attribute_63210(stdgo._internal.crypto.x509.X509_t__parsecsrextensions___localname___pkcs10attribute_63210.T__parseCSRExtensions___localname___pkcs10Attribute_63210) from stdgo._internal.crypto.x509.X509_t__parsecsrextensions___localname___pkcs10attribute_63210.T__parseCSRExtensions___localname___pkcs10Attribute_63210 to stdgo._internal.crypto.x509.X509_t__parsecsrextensions___localname___pkcs10attribute_63210.T__parseCSRExtensions___localname___pkcs10Attribute_63210 {
    public var id(get, set) : stdgo._internal.encoding.asn1.Asn1_objectidentifier.ObjectIdentifier;
    function get_id():stdgo._internal.encoding.asn1.Asn1_objectidentifier.ObjectIdentifier return this.id;
    function set_id(v:stdgo._internal.encoding.asn1.Asn1_objectidentifier.ObjectIdentifier):stdgo._internal.encoding.asn1.Asn1_objectidentifier.ObjectIdentifier {
        this.id = v;
        return v;
    }
    public var values(get, set) : Array<stdgo._internal.encoding.asn1.Asn1_rawvalue.RawValue>;
    function get_values():Array<stdgo._internal.encoding.asn1.Asn1_rawvalue.RawValue> return [for (i in this.values) i];
    function set_values(v:Array<stdgo._internal.encoding.asn1.Asn1_rawvalue.RawValue>):Array<stdgo._internal.encoding.asn1.Asn1_rawvalue.RawValue> {
        this.values = ([for (i in v) i] : stdgo.Slice<stdgo._internal.encoding.asn1.Asn1_rawvalue.RawValue>);
        return v;
    }
    public function new(?id:stdgo._internal.encoding.asn1.Asn1_objectidentifier.ObjectIdentifier, ?values:Array<stdgo._internal.encoding.asn1.Asn1_rawvalue.RawValue>) this = new stdgo._internal.crypto.x509.X509_t__parsecsrextensions___localname___pkcs10attribute_63210.T__parseCSRExtensions___localname___pkcs10Attribute_63210(id, ([for (i in values) i] : stdgo.Slice<stdgo._internal.encoding.asn1.Asn1_rawvalue.RawValue>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
typedef CertPoolPointer = stdgo._internal.crypto.x509.X509_certpoolpointer.CertPoolPointer;
class CertPool_static_extension {
    static public function equal(_s:CertPool, _other:CertPool):Bool {
        final _s = (_s : stdgo.Ref<stdgo._internal.crypto.x509.X509_certpool.CertPool>);
        final _other = (_other : stdgo.Ref<stdgo._internal.crypto.x509.X509_certpool.CertPool>);
        return stdgo._internal.crypto.x509.X509_certpool_static_extension.CertPool_static_extension.equal(_s, _other);
    }
    static public function subjects(_s:CertPool):Array<Array<std.UInt>> {
        final _s = (_s : stdgo.Ref<stdgo._internal.crypto.x509.X509_certpool.CertPool>);
        return [for (i in stdgo._internal.crypto.x509.X509_certpool_static_extension.CertPool_static_extension.subjects(_s)) [for (i in i) i]];
    }
    static public function appendCertsFromPEM(_s:CertPool, _pemCerts:Array<std.UInt>):Bool {
        final _s = (_s : stdgo.Ref<stdgo._internal.crypto.x509.X509_certpool.CertPool>);
        final _pemCerts = ([for (i in _pemCerts) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.crypto.x509.X509_certpool_static_extension.CertPool_static_extension.appendCertsFromPEM(_s, _pemCerts);
    }
    static public function _addCertFunc(_s:CertPool, _rawSum224:T_sum224, _rawSubject:String, _getCert:() -> stdgo.Tuple<Certificate, stdgo.Error>):Void {
        final _s = (_s : stdgo.Ref<stdgo._internal.crypto.x509.X509_certpool.CertPool>);
        final _rawSubject = (_rawSubject : stdgo.GoString);
        final _getCert = _getCert;
        stdgo._internal.crypto.x509.X509_certpool_static_extension.CertPool_static_extension._addCertFunc(_s, _rawSum224, _rawSubject, _getCert);
    }
    static public function addCert(_s:CertPool, _cert:Certificate):Void {
        final _s = (_s : stdgo.Ref<stdgo._internal.crypto.x509.X509_certpool.CertPool>);
        final _cert = (_cert : stdgo.Ref<stdgo._internal.crypto.x509.X509_certificate.Certificate>);
        stdgo._internal.crypto.x509.X509_certpool_static_extension.CertPool_static_extension.addCert(_s, _cert);
    }
    static public function _contains(_s:CertPool, _cert:Certificate):Bool {
        final _s = (_s : stdgo.Ref<stdgo._internal.crypto.x509.X509_certpool.CertPool>);
        final _cert = (_cert : stdgo.Ref<stdgo._internal.crypto.x509.X509_certificate.Certificate>);
        return stdgo._internal.crypto.x509.X509_certpool_static_extension.CertPool_static_extension._contains(_s, _cert);
    }
    static public function _findPotentialParents(_s:CertPool, _cert:Certificate):Array<Certificate> {
        final _s = (_s : stdgo.Ref<stdgo._internal.crypto.x509.X509_certpool.CertPool>);
        final _cert = (_cert : stdgo.Ref<stdgo._internal.crypto.x509.X509_certificate.Certificate>);
        return [for (i in stdgo._internal.crypto.x509.X509_certpool_static_extension.CertPool_static_extension._findPotentialParents(_s, _cert)) i];
    }
    static public function clone(_s:CertPool):CertPool {
        final _s = (_s : stdgo.Ref<stdgo._internal.crypto.x509.X509_certpool.CertPool>);
        return stdgo._internal.crypto.x509.X509_certpool_static_extension.CertPool_static_extension.clone(_s);
    }
    static public function _cert(_s:CertPool, _n:StdTypes.Int):stdgo.Tuple<Certificate, stdgo.Error> {
        final _s = (_s : stdgo.Ref<stdgo._internal.crypto.x509.X509_certpool.CertPool>);
        final _n = (_n : stdgo.GoInt);
        return {
            final obj = stdgo._internal.crypto.x509.X509_certpool_static_extension.CertPool_static_extension._cert(_s, _n);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _len(_s:CertPool):StdTypes.Int {
        final _s = (_s : stdgo.Ref<stdgo._internal.crypto.x509.X509_certpool.CertPool>);
        return stdgo._internal.crypto.x509.X509_certpool_static_extension.CertPool_static_extension._len(_s);
    }
}
@:dox(hide) typedef T_lazyCertPointer = stdgo._internal.crypto.x509.X509_t_lazycertpointer.T_lazyCertPointer;
@:dox(hide) class T_lazyCert_static_extension {

}
@:dox(hide) typedef T_rfc1423AlgoPointer = stdgo._internal.crypto.x509.X509_t_rfc1423algopointer.T_rfc1423AlgoPointer;
@:dox(hide) class T_rfc1423Algo_static_extension {
    static public function _deriveKey(_c:T_rfc1423Algo, _password:Array<std.UInt>, _salt:Array<std.UInt>):Array<std.UInt> {
        final _password = ([for (i in _password) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _salt = ([for (i in _salt) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return [for (i in stdgo._internal.crypto.x509.X509_t_rfc1423algo_static_extension.T_rfc1423Algo_static_extension._deriveKey(_c, _password, _salt)) i];
    }
}
@:dox(hide) typedef T_pkcs1PrivateKeyPointer = stdgo._internal.crypto.x509.X509_t_pkcs1privatekeypointer.T_pkcs1PrivateKeyPointer;
@:dox(hide) class T_pkcs1PrivateKey_static_extension {

}
@:dox(hide) typedef T_pkcs1AdditionalRSAPrimePointer = stdgo._internal.crypto.x509.X509_t_pkcs1additionalrsaprimepointer.T_pkcs1AdditionalRSAPrimePointer;
@:dox(hide) class T_pkcs1AdditionalRSAPrime_static_extension {

}
@:dox(hide) typedef T_pkcs1PublicKeyPointer = stdgo._internal.crypto.x509.X509_t_pkcs1publickeypointer.T_pkcs1PublicKeyPointer;
@:dox(hide) class T_pkcs1PublicKey_static_extension {

}
@:dox(hide) typedef T_pkcs8Pointer = stdgo._internal.crypto.x509.X509_t_pkcs8pointer.T_pkcs8Pointer;
@:dox(hide) class T_pkcs8_static_extension {

}
@:dox(hide) typedef T_ecPrivateKeyPointer = stdgo._internal.crypto.x509.X509_t_ecprivatekeypointer.T_ecPrivateKeyPointer;
@:dox(hide) class T_ecPrivateKey_static_extension {

}
typedef CertificateInvalidErrorPointer = stdgo._internal.crypto.x509.X509_certificateinvaliderrorpointer.CertificateInvalidErrorPointer;
class CertificateInvalidError_static_extension {
    static public function error(_e:CertificateInvalidError):String {
        return stdgo._internal.crypto.x509.X509_certificateinvaliderror_static_extension.CertificateInvalidError_static_extension.error(_e);
    }
}
typedef HostnameErrorPointer = stdgo._internal.crypto.x509.X509_hostnameerrorpointer.HostnameErrorPointer;
class HostnameError_static_extension {
    static public function error(_h:HostnameError):String {
        return stdgo._internal.crypto.x509.X509_hostnameerror_static_extension.HostnameError_static_extension.error(_h);
    }
}
typedef UnknownAuthorityErrorPointer = stdgo._internal.crypto.x509.X509_unknownauthorityerrorpointer.UnknownAuthorityErrorPointer;
class UnknownAuthorityError_static_extension {
    static public function error(_e:UnknownAuthorityError):String {
        return stdgo._internal.crypto.x509.X509_unknownauthorityerror_static_extension.UnknownAuthorityError_static_extension.error(_e);
    }
}
typedef SystemRootsErrorPointer = stdgo._internal.crypto.x509.X509_systemrootserrorpointer.SystemRootsErrorPointer;
class SystemRootsError_static_extension {
    static public function unwrap(_se:SystemRootsError):stdgo.Error {
        return stdgo._internal.crypto.x509.X509_systemrootserror_static_extension.SystemRootsError_static_extension.unwrap(_se);
    }
    static public function error(_se:SystemRootsError):String {
        return stdgo._internal.crypto.x509.X509_systemrootserror_static_extension.SystemRootsError_static_extension.error(_se);
    }
}
typedef VerifyOptionsPointer = stdgo._internal.crypto.x509.X509_verifyoptionspointer.VerifyOptionsPointer;
class VerifyOptions_static_extension {

}
@:dox(hide) typedef T_rfc2821MailboxPointer = stdgo._internal.crypto.x509.X509_t_rfc2821mailboxpointer.T_rfc2821MailboxPointer;
@:dox(hide) class T_rfc2821Mailbox_static_extension {

}
@:dox(hide) typedef T_pkixPublicKeyPointer = stdgo._internal.crypto.x509.X509_t_pkixpublickeypointer.T_pkixPublicKeyPointer;
@:dox(hide) class T_pkixPublicKey_static_extension {

}
@:dox(hide) typedef T_certificatePointer = stdgo._internal.crypto.x509.X509_t_certificatepointer.T_certificatePointer;
@:dox(hide) class T_certificate_static_extension {

}
@:dox(hide) typedef T_tbsCertificatePointer = stdgo._internal.crypto.x509.X509_t_tbscertificatepointer.T_tbsCertificatePointer;
@:dox(hide) class T_tbsCertificate_static_extension {

}
@:dox(hide) typedef T_dsaAlgorithmParametersPointer = stdgo._internal.crypto.x509.X509_t_dsaalgorithmparameterspointer.T_dsaAlgorithmParametersPointer;
@:dox(hide) class T_dsaAlgorithmParameters_static_extension {

}
@:dox(hide) typedef T_validityPointer = stdgo._internal.crypto.x509.X509_t_validitypointer.T_validityPointer;
@:dox(hide) class T_validity_static_extension {

}
@:dox(hide) typedef T_publicKeyInfoPointer = stdgo._internal.crypto.x509.X509_t_publickeyinfopointer.T_publicKeyInfoPointer;
@:dox(hide) class T_publicKeyInfo_static_extension {

}
@:dox(hide) typedef T_authKeyIdPointer = stdgo._internal.crypto.x509.X509_t_authkeyidpointer.T_authKeyIdPointer;
@:dox(hide) class T_authKeyId_static_extension {

}
@:dox(hide) typedef T_pssParametersPointer = stdgo._internal.crypto.x509.X509_t_pssparameterspointer.T_pssParametersPointer;
@:dox(hide) class T_pssParameters_static_extension {

}
typedef CertificatePointer = stdgo._internal.crypto.x509.X509_certificatepointer.CertificatePointer;
class Certificate_static_extension {
    static public function createCRL(_c:Certificate, _rand:stdgo._internal.io.Io_reader.Reader, _priv:stdgo.AnyInterface, _revokedCerts:Array<stdgo._internal.crypto.x509.pkix.Pkix_revokedcertificate.RevokedCertificate>, _now:stdgo._internal.time.Time_time.Time, _expiry:stdgo._internal.time.Time_time.Time):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        final _c = (_c : stdgo.Ref<stdgo._internal.crypto.x509.X509_certificate.Certificate>);
        final _priv = (_priv : stdgo.AnyInterface);
        final _revokedCerts = ([for (i in _revokedCerts) i] : stdgo.Slice<stdgo._internal.crypto.x509.pkix.Pkix_revokedcertificate.RevokedCertificate>);
        return {
            final obj = stdgo._internal.crypto.x509.X509_certificate_static_extension.Certificate_static_extension.createCRL(_c, _rand, _priv, _revokedCerts, _now, _expiry);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    static public function checkCRLSignature(_c:Certificate, _crl:stdgo._internal.crypto.x509.pkix.Pkix_certificatelist.CertificateList):stdgo.Error {
        final _c = (_c : stdgo.Ref<stdgo._internal.crypto.x509.X509_certificate.Certificate>);
        final _crl = (_crl : stdgo.Ref<stdgo._internal.crypto.x509.pkix.Pkix_certificatelist.CertificateList>);
        return stdgo._internal.crypto.x509.X509_certificate_static_extension.Certificate_static_extension.checkCRLSignature(_c, _crl);
    }
    static public function _getSANExtension(_c:Certificate):Array<std.UInt> {
        final _c = (_c : stdgo.Ref<stdgo._internal.crypto.x509.X509_certificate.Certificate>);
        return [for (i in stdgo._internal.crypto.x509.X509_certificate_static_extension.Certificate_static_extension._getSANExtension(_c)) i];
    }
    static public function _hasNameConstraints(_c:Certificate):Bool {
        final _c = (_c : stdgo.Ref<stdgo._internal.crypto.x509.X509_certificate.Certificate>);
        return stdgo._internal.crypto.x509.X509_certificate_static_extension.Certificate_static_extension._hasNameConstraints(_c);
    }
    static public function checkSignature(_c:Certificate, _algo:SignatureAlgorithm, _signed:Array<std.UInt>, _signature:Array<std.UInt>):stdgo.Error {
        final _c = (_c : stdgo.Ref<stdgo._internal.crypto.x509.X509_certificate.Certificate>);
        final _signed = ([for (i in _signed) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _signature = ([for (i in _signature) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.crypto.x509.X509_certificate_static_extension.Certificate_static_extension.checkSignature(_c, _algo, _signed, _signature);
    }
    static public function checkSignatureFrom(_c:Certificate, _parent:Certificate):stdgo.Error {
        final _c = (_c : stdgo.Ref<stdgo._internal.crypto.x509.X509_certificate.Certificate>);
        final _parent = (_parent : stdgo.Ref<stdgo._internal.crypto.x509.X509_certificate.Certificate>);
        return stdgo._internal.crypto.x509.X509_certificate_static_extension.Certificate_static_extension.checkSignatureFrom(_c, _parent);
    }
    static public function _hasSANExtension(_c:Certificate):Bool {
        final _c = (_c : stdgo.Ref<stdgo._internal.crypto.x509.X509_certificate.Certificate>);
        return stdgo._internal.crypto.x509.X509_certificate_static_extension.Certificate_static_extension._hasSANExtension(_c);
    }
    static public function equal(_c:Certificate, _other:Certificate):Bool {
        final _c = (_c : stdgo.Ref<stdgo._internal.crypto.x509.X509_certificate.Certificate>);
        final _other = (_other : stdgo.Ref<stdgo._internal.crypto.x509.X509_certificate.Certificate>);
        return stdgo._internal.crypto.x509.X509_certificate_static_extension.Certificate_static_extension.equal(_c, _other);
    }
    static public function verifyHostname(_c:Certificate, _h:String):stdgo.Error {
        final _c = (_c : stdgo.Ref<stdgo._internal.crypto.x509.X509_certificate.Certificate>);
        final _h = (_h : stdgo.GoString);
        return stdgo._internal.crypto.x509.X509_certificate_static_extension.Certificate_static_extension.verifyHostname(_c, _h);
    }
    static public function _buildChains(_c:Certificate, _currentChain:Array<Certificate>, _sigChecks:stdgo.Pointer<StdTypes.Int>, _opts:VerifyOptions):stdgo.Tuple<Array<Array<Certificate>>, stdgo.Error> {
        final _c = (_c : stdgo.Ref<stdgo._internal.crypto.x509.X509_certificate.Certificate>);
        final _currentChain = ([for (i in _currentChain) (i : stdgo.Ref<stdgo._internal.crypto.x509.X509_certificate.Certificate>)] : stdgo.Slice<stdgo.Ref<stdgo._internal.crypto.x509.X509_certificate.Certificate>>);
        final _opts = (_opts : stdgo.Ref<stdgo._internal.crypto.x509.X509_verifyoptions.VerifyOptions>);
        return {
            final obj = stdgo._internal.crypto.x509.X509_certificate_static_extension.Certificate_static_extension._buildChains(_c, _currentChain, _sigChecks, _opts);
            { _0 : [for (i in obj._0) [for (i in i) i]], _1 : obj._1 };
        };
    }
    static public function verify(_c:Certificate, _opts:VerifyOptions):stdgo.Tuple<Array<Array<Certificate>>, stdgo.Error> {
        final _c = (_c : stdgo.Ref<stdgo._internal.crypto.x509.X509_certificate.Certificate>);
        return {
            final obj = stdgo._internal.crypto.x509.X509_certificate_static_extension.Certificate_static_extension.verify(_c, _opts);
            { _0 : [for (i in obj._0) [for (i in i) i]], _1 : obj._1 };
        };
    }
    static public function _isValid(_c:Certificate, _certType:StdTypes.Int, _currentChain:Array<Certificate>, _opts:VerifyOptions):stdgo.Error {
        final _c = (_c : stdgo.Ref<stdgo._internal.crypto.x509.X509_certificate.Certificate>);
        final _certType = (_certType : stdgo.GoInt);
        final _currentChain = ([for (i in _currentChain) (i : stdgo.Ref<stdgo._internal.crypto.x509.X509_certificate.Certificate>)] : stdgo.Slice<stdgo.Ref<stdgo._internal.crypto.x509.X509_certificate.Certificate>>);
        final _opts = (_opts : stdgo.Ref<stdgo._internal.crypto.x509.X509_verifyoptions.VerifyOptions>);
        return stdgo._internal.crypto.x509.X509_certificate_static_extension.Certificate_static_extension._isValid(_c, _certType, _currentChain, _opts);
    }
    static public function _checkNameConstraints(_c:Certificate, _count:stdgo.Pointer<StdTypes.Int>, _maxConstraintComparisons:StdTypes.Int, _nameType:String, _name:String, _parsedName:stdgo.AnyInterface, _match:(stdgo.AnyInterface, stdgo.AnyInterface) -> stdgo.Tuple<Bool, stdgo.Error>, _permitted:stdgo.AnyInterface, _excluded:stdgo.AnyInterface):stdgo.Error {
        final _c = (_c : stdgo.Ref<stdgo._internal.crypto.x509.X509_certificate.Certificate>);
        final _maxConstraintComparisons = (_maxConstraintComparisons : stdgo.GoInt);
        final _nameType = (_nameType : stdgo.GoString);
        final _name = (_name : stdgo.GoString);
        final _parsedName = (_parsedName : stdgo.AnyInterface);
        final _match = _match;
        final _permitted = (_permitted : stdgo.AnyInterface);
        final _excluded = (_excluded : stdgo.AnyInterface);
        return stdgo._internal.crypto.x509.X509_certificate_static_extension.Certificate_static_extension._checkNameConstraints(_c, _count, _maxConstraintComparisons, _nameType, _name, _parsedName, _match, _permitted, _excluded);
    }
    static public function _systemVerify(_c:Certificate, _opts:VerifyOptions):stdgo.Tuple<Array<Array<Certificate>>, stdgo.Error> {
        final _c = (_c : stdgo.Ref<stdgo._internal.crypto.x509.X509_certificate.Certificate>);
        final _opts = (_opts : stdgo.Ref<stdgo._internal.crypto.x509.X509_verifyoptions.VerifyOptions>);
        return {
            final obj = stdgo._internal.crypto.x509.X509_certificate_static_extension.Certificate_static_extension._systemVerify(_c, _opts);
            { _0 : [for (i in obj._0) [for (i in i) i]], _1 : obj._1 };
        };
    }
}
typedef ConstraintViolationErrorPointer = stdgo._internal.crypto.x509.X509_constraintviolationerrorpointer.ConstraintViolationErrorPointer;
class ConstraintViolationError_static_extension {
    static public function error(_:ConstraintViolationError):String {
        return stdgo._internal.crypto.x509.X509_constraintviolationerror_static_extension.ConstraintViolationError_static_extension.error(_);
    }
}
typedef UnhandledCriticalExtensionPointer = stdgo._internal.crypto.x509.X509_unhandledcriticalextensionpointer.UnhandledCriticalExtensionPointer;
class UnhandledCriticalExtension_static_extension {
    static public function error(_h:UnhandledCriticalExtension):String {
        return stdgo._internal.crypto.x509.X509_unhandledcriticalextension_static_extension.UnhandledCriticalExtension_static_extension.error(_h);
    }
}
@:dox(hide) typedef T_basicConstraintsPointer = stdgo._internal.crypto.x509.X509_t_basicconstraintspointer.T_basicConstraintsPointer;
@:dox(hide) class T_basicConstraints_static_extension {

}
@:dox(hide) typedef T_policyInformationPointer = stdgo._internal.crypto.x509.X509_t_policyinformationpointer.T_policyInformationPointer;
@:dox(hide) class T_policyInformation_static_extension {

}
@:dox(hide) typedef T_authorityInfoAccessPointer = stdgo._internal.crypto.x509.X509_t_authorityinfoaccesspointer.T_authorityInfoAccessPointer;
@:dox(hide) class T_authorityInfoAccess_static_extension {

}
@:dox(hide) typedef T_distributionPointPointer = stdgo._internal.crypto.x509.X509_t_distributionpointpointer.T_distributionPointPointer;
@:dox(hide) class T_distributionPoint_static_extension {

}
@:dox(hide) typedef T_distributionPointNamePointer = stdgo._internal.crypto.x509.X509_t_distributionpointnamepointer.T_distributionPointNamePointer;
@:dox(hide) class T_distributionPointName_static_extension {

}
typedef CertificateRequestPointer = stdgo._internal.crypto.x509.X509_certificaterequestpointer.CertificateRequestPointer;
class CertificateRequest_static_extension {
    static public function checkSignature(_c:CertificateRequest):stdgo.Error {
        final _c = (_c : stdgo.Ref<stdgo._internal.crypto.x509.X509_certificaterequest.CertificateRequest>);
        return stdgo._internal.crypto.x509.X509_certificaterequest_static_extension.CertificateRequest_static_extension.checkSignature(_c);
    }
}
@:dox(hide) typedef T_tbsCertificateRequestPointer = stdgo._internal.crypto.x509.X509_t_tbscertificaterequestpointer.T_tbsCertificateRequestPointer;
@:dox(hide) class T_tbsCertificateRequest_static_extension {

}
@:dox(hide) typedef T_certificateRequestPointer = stdgo._internal.crypto.x509.X509_t_certificaterequestpointer.T_certificateRequestPointer;
@:dox(hide) class T_certificateRequest_static_extension {

}
typedef RevocationListEntryPointer = stdgo._internal.crypto.x509.X509_revocationlistentrypointer.RevocationListEntryPointer;
class RevocationListEntry_static_extension {

}
typedef RevocationListPointer = stdgo._internal.crypto.x509.X509_revocationlistpointer.RevocationListPointer;
class RevocationList_static_extension {
    static public function checkSignatureFrom(_rl:RevocationList, _parent:Certificate):stdgo.Error {
        final _rl = (_rl : stdgo.Ref<stdgo._internal.crypto.x509.X509_revocationlist.RevocationList>);
        final _parent = (_parent : stdgo.Ref<stdgo._internal.crypto.x509.X509_certificate.Certificate>);
        return stdgo._internal.crypto.x509.X509_revocationlist_static_extension.RevocationList_static_extension.checkSignatureFrom(_rl, _parent);
    }
}
@:dox(hide) typedef T_certificateListPointer = stdgo._internal.crypto.x509.X509_t_certificatelistpointer.T_certificateListPointer;
@:dox(hide) class T_certificateList_static_extension {

}
@:dox(hide) typedef T_tbsCertificateListPointer = stdgo._internal.crypto.x509.X509_t_tbscertificatelistpointer.T_tbsCertificateListPointer;
@:dox(hide) class T_tbsCertificateList_static_extension {

}
@:dox(hide) typedef T__struct_0PointerPointer = stdgo._internal.crypto.x509.X509_t__struct_0pointerpointer.T__struct_0PointerPointer;
@:dox(hide) class T__struct_0Pointer_static_extension {

}
@:dox(hide) typedef T__struct_1PointerPointer = stdgo._internal.crypto.x509.X509_t__struct_1pointerpointer.T__struct_1PointerPointer;
@:dox(hide) class T__struct_1Pointer_static_extension {

}
@:dox(hide) typedef T__struct_2PointerPointer = stdgo._internal.crypto.x509.X509_t__struct_2pointerpointer.T__struct_2PointerPointer;
@:dox(hide) class T__struct_2Pointer_static_extension {

}
@:dox(hide) typedef T__struct_3PointerPointer = stdgo._internal.crypto.x509.X509_t__struct_3pointerpointer.T__struct_3PointerPointer;
@:dox(hide) class T__struct_3Pointer_static_extension {

}
@:dox(hide) typedef T_sum224Pointer = stdgo._internal.crypto.x509.X509_t_sum224pointer.T_sum224Pointer;
@:dox(hide) class T_sum224_static_extension {

}
typedef PEMCipherPointer = stdgo._internal.crypto.x509.X509_pemcipherpointer.PEMCipherPointer;
class PEMCipher_static_extension {

}
typedef InvalidReasonPointer = stdgo._internal.crypto.x509.X509_invalidreasonpointer.InvalidReasonPointer;
class InvalidReason_static_extension {

}
typedef SignatureAlgorithmPointer = stdgo._internal.crypto.x509.X509_signaturealgorithmpointer.SignatureAlgorithmPointer;
class SignatureAlgorithm_static_extension {
    static public function string(_algo:SignatureAlgorithm):String {
        return stdgo._internal.crypto.x509.X509_signaturealgorithm_static_extension.SignatureAlgorithm_static_extension.string(_algo);
    }
    static public function _isRSAPSS(_algo:SignatureAlgorithm):Bool {
        return stdgo._internal.crypto.x509.X509_signaturealgorithm_static_extension.SignatureAlgorithm_static_extension._isRSAPSS(_algo);
    }
}
typedef PublicKeyAlgorithmPointer = stdgo._internal.crypto.x509.X509_publickeyalgorithmpointer.PublicKeyAlgorithmPointer;
class PublicKeyAlgorithm_static_extension {
    static public function string(_algo:PublicKeyAlgorithm):String {
        return stdgo._internal.crypto.x509.X509_publickeyalgorithm_static_extension.PublicKeyAlgorithm_static_extension.string(_algo);
    }
}
typedef KeyUsagePointer = stdgo._internal.crypto.x509.X509_keyusagepointer.KeyUsagePointer;
class KeyUsage_static_extension {

}
typedef ExtKeyUsagePointer = stdgo._internal.crypto.x509.X509_extkeyusagepointer.ExtKeyUsagePointer;
class ExtKeyUsage_static_extension {

}
typedef InsecureAlgorithmErrorPointer = stdgo._internal.crypto.x509.X509_insecurealgorithmerrorpointer.InsecureAlgorithmErrorPointer;
class InsecureAlgorithmError_static_extension {
    static public function error(_e:InsecureAlgorithmError):String {
        return stdgo._internal.crypto.x509.X509_insecurealgorithmerror_static_extension.InsecureAlgorithmError_static_extension.error(_e);
    }
}
@:dox(hide) typedef T__parseCSRExtensions___localname___pkcs10Attribute_63210Pointer = stdgo._internal.crypto.x509.X509_t__parsecsrextensions___localname___pkcs10attribute_63210pointer.T__parseCSRExtensions___localname___pkcs10Attribute_63210Pointer;
@:dox(hide) class T__parseCSRExtensions___localname___pkcs10Attribute_63210_static_extension {

}
/**
    * Package x509 implements a subset of the X.509 standard.
    * 
    * It allows parsing and generating certificates, certificate signing
    * requests, certificate revocation lists, and encoded public and private keys.
    * It provides a certificate verifier, complete with a chain builder.
    * 
    * The package targets the X.509 technical profile defined by the IETF (RFC
    * 2459/3280/5280), and as further restricted by the CA/Browser Forum Baseline
    * Requirements. There is minimal support for features outside of these
    * profiles, as the primary goal of the package is to provide compatibility
    * with the publicly trusted TLS certificate ecosystem and its policies and
    * constraints.
    * 
    * On macOS and Windows, certificate verification is handled by system APIs, but
    * the package aims to apply consistent validation rules across operating
    * systems.
**/
class X509 {
    /**
        * NewCertPool returns a new, empty CertPool.
    **/
    static public inline function newCertPool():CertPool {
        return stdgo._internal.crypto.x509.X509_newcertpool.newCertPool();
    }
    /**
        * SystemCertPool returns a copy of the system cert pool.
        * 
        * On Unix systems other than macOS the environment variables SSL_CERT_FILE and
        * SSL_CERT_DIR can be used to override the system default locations for the SSL
        * certificate file and SSL certificate files directory, respectively. The
        * latter can be a colon-separated list.
        * 
        * Any mutations to the returned pool are not written to disk and do not affect
        * any other pool returned by SystemCertPool.
        * 
        * New changes in the system cert pool might not be reflected in subsequent calls.
    **/
    static public inline function systemCertPool():stdgo.Tuple<CertPool, stdgo.Error> {
        return {
            final obj = stdgo._internal.crypto.x509.X509_systemcertpool.systemCertPool();
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        * ParseCertificate parses a single certificate from the given ASN.1 DER data.
    **/
    static public inline function parseCertificate(_der:Array<std.UInt>):stdgo.Tuple<Certificate, stdgo.Error> {
        final _der = ([for (i in _der) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.crypto.x509.X509_parsecertificate.parseCertificate(_der);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        * ParseCertificates parses one or more certificates from the given ASN.1 DER
        * data. The certificates must be concatenated with no intermediate padding.
    **/
    static public inline function parseCertificates(_der:Array<std.UInt>):stdgo.Tuple<Array<Certificate>, stdgo.Error> {
        final _der = ([for (i in _der) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.crypto.x509.X509_parsecertificates.parseCertificates(_der);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    /**
        * ParseRevocationList parses a X509 v2 Certificate Revocation List from the given
        * ASN.1 DER data.
    **/
    static public inline function parseRevocationList(_der:Array<std.UInt>):stdgo.Tuple<RevocationList, stdgo.Error> {
        final _der = ([for (i in _der) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.crypto.x509.X509_parserevocationlist.parseRevocationList(_der);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        * IsEncryptedPEMBlock returns whether the PEM block is password encrypted
        * according to RFC 1423.
        * 
        * Deprecated: Legacy PEM encryption as specified in RFC 1423 is insecure by
        * design. Since it does not authenticate the ciphertext, it is vulnerable to
        * padding oracle attacks that can let an attacker recover the plaintext.
    **/
    static public inline function isEncryptedPEMBlock(_b:stdgo._internal.encoding.pem.Pem_block.Block):Bool {
        final _b = (_b : stdgo.Ref<stdgo._internal.encoding.pem.Pem_block.Block>);
        return stdgo._internal.crypto.x509.X509_isencryptedpemblock.isEncryptedPEMBlock(_b);
    }
    /**
        * DecryptPEMBlock takes a PEM block encrypted according to RFC 1423 and the
        * password used to encrypt it and returns a slice of decrypted DER encoded
        * bytes. It inspects the DEK-Info header to determine the algorithm used for
        * decryption. If no DEK-Info header is present, an error is returned. If an
        * incorrect password is detected an IncorrectPasswordError is returned. Because
        * of deficiencies in the format, it's not always possible to detect an
        * incorrect password. In these cases no error will be returned but the
        * decrypted DER bytes will be random noise.
        * 
        * Deprecated: Legacy PEM encryption as specified in RFC 1423 is insecure by
        * design. Since it does not authenticate the ciphertext, it is vulnerable to
        * padding oracle attacks that can let an attacker recover the plaintext.
    **/
    static public inline function decryptPEMBlock(_b:stdgo._internal.encoding.pem.Pem_block.Block, _password:Array<std.UInt>):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        final _b = (_b : stdgo.Ref<stdgo._internal.encoding.pem.Pem_block.Block>);
        final _password = ([for (i in _password) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.crypto.x509.X509_decryptpemblock.decryptPEMBlock(_b, _password);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    /**
        * EncryptPEMBlock returns a PEM block of the specified type holding the
        * given DER encoded data encrypted with the specified algorithm and
        * password according to RFC 1423.
        * 
        * Deprecated: Legacy PEM encryption as specified in RFC 1423 is insecure by
        * design. Since it does not authenticate the ciphertext, it is vulnerable to
        * padding oracle attacks that can let an attacker recover the plaintext.
    **/
    static public inline function encryptPEMBlock(_rand:stdgo._internal.io.Io_reader.Reader, _blockType:String, _data:Array<std.UInt>, _password:Array<std.UInt>, _alg:PEMCipher):stdgo.Tuple<stdgo._internal.encoding.pem.Pem_block.Block, stdgo.Error> {
        final _blockType = (_blockType : stdgo.GoString);
        final _data = ([for (i in _data) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _password = ([for (i in _password) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.crypto.x509.X509_encryptpemblock.encryptPEMBlock(_rand, _blockType, _data, _password, _alg);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        * ParsePKCS1PrivateKey parses an RSA private key in PKCS #1, ASN.1 DER form.
        * 
        * This kind of key is commonly encoded in PEM blocks of type "RSA PRIVATE KEY".
    **/
    static public inline function parsePKCS1PrivateKey(_der:Array<std.UInt>):stdgo.Tuple<stdgo._internal.crypto.rsa.Rsa_privatekey.PrivateKey, stdgo.Error> {
        final _der = ([for (i in _der) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.crypto.x509.X509_parsepkcs1privatekey.parsePKCS1PrivateKey(_der);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        * MarshalPKCS1PrivateKey converts an RSA private key to PKCS #1, ASN.1 DER form.
        * 
        * This kind of key is commonly encoded in PEM blocks of type "RSA PRIVATE KEY".
        * For a more flexible key format which is not RSA specific, use
        * MarshalPKCS8PrivateKey.
    **/
    static public inline function marshalPKCS1PrivateKey(_key:stdgo._internal.crypto.rsa.Rsa_privatekey.PrivateKey):Array<std.UInt> {
        final _key = (_key : stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_privatekey.PrivateKey>);
        return [for (i in stdgo._internal.crypto.x509.X509_marshalpkcs1privatekey.marshalPKCS1PrivateKey(_key)) i];
    }
    /**
        * ParsePKCS1PublicKey parses an RSA public key in PKCS #1, ASN.1 DER form.
        * 
        * This kind of key is commonly encoded in PEM blocks of type "RSA PUBLIC KEY".
    **/
    static public inline function parsePKCS1PublicKey(_der:Array<std.UInt>):stdgo.Tuple<stdgo._internal.crypto.rsa.Rsa_publickey.PublicKey, stdgo.Error> {
        final _der = ([for (i in _der) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.crypto.x509.X509_parsepkcs1publickey.parsePKCS1PublicKey(_der);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        * MarshalPKCS1PublicKey converts an RSA public key to PKCS #1, ASN.1 DER form.
        * 
        * This kind of key is commonly encoded in PEM blocks of type "RSA PUBLIC KEY".
    **/
    static public inline function marshalPKCS1PublicKey(_key:stdgo._internal.crypto.rsa.Rsa_publickey.PublicKey):Array<std.UInt> {
        final _key = (_key : stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_publickey.PublicKey>);
        return [for (i in stdgo._internal.crypto.x509.X509_marshalpkcs1publickey.marshalPKCS1PublicKey(_key)) i];
    }
    /**
        * ParsePKCS8PrivateKey parses an unencrypted private key in PKCS #8, ASN.1 DER form.
        * 
        * It returns a *rsa.PrivateKey, an *ecdsa.PrivateKey, an ed25519.PrivateKey (not
        * a pointer), or an *ecdh.PrivateKey (for X25519). More types might be supported
        * in the future.
        * 
        * This kind of key is commonly encoded in PEM blocks of type "PRIVATE KEY".
    **/
    static public inline function parsePKCS8PrivateKey(_der:Array<std.UInt>):stdgo.Tuple<stdgo.AnyInterface, stdgo.Error> {
        final _der = ([for (i in _der) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.crypto.x509.X509_parsepkcs8privatekey.parsePKCS8PrivateKey(_der);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        * MarshalPKCS8PrivateKey converts a private key to PKCS #8, ASN.1 DER form.
        * 
        * The following key types are currently supported: *rsa.PrivateKey,
        * *ecdsa.PrivateKey, ed25519.PrivateKey (not a pointer), and *ecdh.PrivateKey.
        * Unsupported key types result in an error.
        * 
        * This kind of key is commonly encoded in PEM blocks of type "PRIVATE KEY".
    **/
    static public inline function marshalPKCS8PrivateKey(_key:stdgo.AnyInterface):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        final _key = (_key : stdgo.AnyInterface);
        return {
            final obj = stdgo._internal.crypto.x509.X509_marshalpkcs8privatekey.marshalPKCS8PrivateKey(_key);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    /**
        * SetFallbackRoots sets the roots to use during certificate verification, if no
        * custom roots are specified and a platform verifier or a system certificate
        * pool is not available (for instance in a container which does not have a root
        * certificate bundle). SetFallbackRoots will panic if roots is nil.
        * 
        * SetFallbackRoots may only be called once, if called multiple times it will
        * panic.
        * 
        * The fallback behavior can be forced on all platforms, even when there is a
        * system certificate pool, by setting GODEBUG=x509usefallbackroots=1 (note that
        * on Windows and macOS this will disable usage of the platform verification
        * APIs and cause the pure Go verifier to be used). Setting
        * x509usefallbackroots=1 without calling SetFallbackRoots has no effect.
    **/
    static public inline function setFallbackRoots(_roots:CertPool):Void {
        final _roots = (_roots : stdgo.Ref<stdgo._internal.crypto.x509.X509_certpool.CertPool>);
        stdgo._internal.crypto.x509.X509_setfallbackroots.setFallbackRoots(_roots);
    }
    /**
        * ParseECPrivateKey parses an EC private key in SEC 1, ASN.1 DER form.
        * 
        * This kind of key is commonly encoded in PEM blocks of type "EC PRIVATE KEY".
    **/
    static public inline function parseECPrivateKey(_der:Array<std.UInt>):stdgo.Tuple<stdgo._internal.crypto.ecdsa.Ecdsa_privatekey.PrivateKey, stdgo.Error> {
        final _der = ([for (i in _der) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.crypto.x509.X509_parseecprivatekey.parseECPrivateKey(_der);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        * MarshalECPrivateKey converts an EC private key to SEC 1, ASN.1 DER form.
        * 
        * This kind of key is commonly encoded in PEM blocks of type "EC PRIVATE KEY".
        * For a more flexible key format which is not EC specific, use
        * MarshalPKCS8PrivateKey.
    **/
    static public inline function marshalECPrivateKey(_key:stdgo._internal.crypto.ecdsa.Ecdsa_privatekey.PrivateKey):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        final _key = (_key : stdgo.Ref<stdgo._internal.crypto.ecdsa.Ecdsa_privatekey.PrivateKey>);
        return {
            final obj = stdgo._internal.crypto.x509.X509_marshalecprivatekey.marshalECPrivateKey(_key);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    /**
        * ParsePKIXPublicKey parses a public key in PKIX, ASN.1 DER form. The encoded
        * public key is a SubjectPublicKeyInfo structure (see RFC 5280, Section 4.1).
        * 
        * It returns a *rsa.PublicKey, *dsa.PublicKey, *ecdsa.PublicKey,
        * ed25519.PublicKey (not a pointer), or *ecdh.PublicKey (for X25519).
        * More types might be supported in the future.
        * 
        * This kind of key is commonly encoded in PEM blocks of type "PUBLIC KEY".
    **/
    static public inline function parsePKIXPublicKey(_derBytes:Array<std.UInt>):stdgo.Tuple<stdgo.AnyInterface, stdgo.Error> {
        final _derBytes = ([for (i in _derBytes) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.crypto.x509.X509_parsepkixpublickey.parsePKIXPublicKey(_derBytes);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        * MarshalPKIXPublicKey converts a public key to PKIX, ASN.1 DER form.
        * The encoded public key is a SubjectPublicKeyInfo structure
        * (see RFC 5280, Section 4.1).
        * 
        * The following key types are currently supported: *rsa.PublicKey,
        * *ecdsa.PublicKey, ed25519.PublicKey (not a pointer), and *ecdh.PublicKey.
        * Unsupported key types result in an error.
        * 
        * This kind of key is commonly encoded in PEM blocks of type "PUBLIC KEY".
    **/
    static public inline function marshalPKIXPublicKey(_pub:stdgo.AnyInterface):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        final _pub = (_pub : stdgo.AnyInterface);
        return {
            final obj = stdgo._internal.crypto.x509.X509_marshalpkixpublickey.marshalPKIXPublicKey(_pub);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    /**
        * CreateCertificate creates a new X.509 v3 certificate based on a template.
        * The following members of template are currently used:
        * 
        *   - AuthorityKeyId
        *   - BasicConstraintsValid
        *   - CRLDistributionPoints
        *   - DNSNames
        *   - EmailAddresses
        *   - ExcludedDNSDomains
        *   - ExcludedEmailAddresses
        *   - ExcludedIPRanges
        *   - ExcludedURIDomains
        *   - ExtKeyUsage
        *   - ExtraExtensions
        *   - IPAddresses
        *   - IsCA
        *   - IssuingCertificateURL
        *   - KeyUsage
        *   - MaxPathLen
        *   - MaxPathLenZero
        *   - NotAfter
        *   - NotBefore
        *   - OCSPServer
        *   - PermittedDNSDomains
        *   - PermittedDNSDomainsCritical
        *   - PermittedEmailAddresses
        *   - PermittedIPRanges
        *   - PermittedURIDomains
        *   - PolicyIdentifiers
        *   - SerialNumber
        *   - SignatureAlgorithm
        *   - Subject
        *   - SubjectKeyId
        *   - URIs
        *   - UnknownExtKeyUsage
        * 
        * The certificate is signed by parent. If parent is equal to template then the
        * certificate is self-signed. The parameter pub is the public key of the
        * certificate to be generated and priv is the private key of the signer.
        * 
        * The returned slice is the certificate in DER encoding.
        * 
        * The currently supported key types are *rsa.PublicKey, *ecdsa.PublicKey and
        * ed25519.PublicKey. pub must be a supported key type, and priv must be a
        * crypto.Signer with a supported public key.
        * 
        * The AuthorityKeyId will be taken from the SubjectKeyId of parent, if any,
        * unless the resulting certificate is self-signed. Otherwise the value from
        * template will be used.
        * 
        * If SubjectKeyId from template is empty and the template is a CA, SubjectKeyId
        * will be generated from the hash of the public key.
    **/
    static public inline function createCertificate(_rand:stdgo._internal.io.Io_reader.Reader, _template:Certificate, _parent:Certificate, _pub:stdgo.AnyInterface, _priv:stdgo.AnyInterface):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        final _template = (_template : stdgo.Ref<stdgo._internal.crypto.x509.X509_certificate.Certificate>);
        final _parent = (_parent : stdgo.Ref<stdgo._internal.crypto.x509.X509_certificate.Certificate>);
        final _pub = (_pub : stdgo.AnyInterface);
        final _priv = (_priv : stdgo.AnyInterface);
        return {
            final obj = stdgo._internal.crypto.x509.X509_createcertificate.createCertificate(_rand, _template, _parent, _pub, _priv);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    /**
        * ParseCRL parses a CRL from the given bytes. It's often the case that PEM
        * encoded CRLs will appear where they should be DER encoded, so this function
        * will transparently handle PEM encoding as long as there isn't any leading
        * garbage.
        * 
        * Deprecated: Use ParseRevocationList instead.
    **/
    static public inline function parseCRL(_crlBytes:Array<std.UInt>):stdgo.Tuple<stdgo._internal.crypto.x509.pkix.Pkix_certificatelist.CertificateList, stdgo.Error> {
        final _crlBytes = ([for (i in _crlBytes) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.crypto.x509.X509_parsecrl.parseCRL(_crlBytes);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        * ParseDERCRL parses a DER encoded CRL from the given bytes.
        * 
        * Deprecated: Use ParseRevocationList instead.
    **/
    static public inline function parseDERCRL(_derBytes:Array<std.UInt>):stdgo.Tuple<stdgo._internal.crypto.x509.pkix.Pkix_certificatelist.CertificateList, stdgo.Error> {
        final _derBytes = ([for (i in _derBytes) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.crypto.x509.X509_parsedercrl.parseDERCRL(_derBytes);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        * CreateCertificateRequest creates a new certificate request based on a
        * template. The following members of template are used:
        * 
        *   - SignatureAlgorithm
        *   - Subject
        *   - DNSNames
        *   - EmailAddresses
        *   - IPAddresses
        *   - URIs
        *   - ExtraExtensions
        *   - Attributes (deprecated)
        * 
        * priv is the private key to sign the CSR with, and the corresponding public
        * key will be included in the CSR. It must implement crypto.Signer and its
        * Public() method must return a *rsa.PublicKey or a *ecdsa.PublicKey or a
        * ed25519.PublicKey. (A *rsa.PrivateKey, *ecdsa.PrivateKey or
        * ed25519.PrivateKey satisfies this.)
        * 
        * The returned slice is the certificate request in DER encoding.
    **/
    static public inline function createCertificateRequest(_rand:stdgo._internal.io.Io_reader.Reader, _template:CertificateRequest, _priv:stdgo.AnyInterface):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        final _template = (_template : stdgo.Ref<stdgo._internal.crypto.x509.X509_certificaterequest.CertificateRequest>);
        final _priv = (_priv : stdgo.AnyInterface);
        return {
            final obj = stdgo._internal.crypto.x509.X509_createcertificaterequest.createCertificateRequest(_rand, _template, _priv);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    /**
        * ParseCertificateRequest parses a single certificate request from the
        * given ASN.1 DER data.
    **/
    static public inline function parseCertificateRequest(_asn1Data:Array<std.UInt>):stdgo.Tuple<CertificateRequest, stdgo.Error> {
        final _asn1Data = ([for (i in _asn1Data) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.crypto.x509.X509_parsecertificaterequest.parseCertificateRequest(_asn1Data);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        * CreateRevocationList creates a new X.509 v2 Certificate Revocation List,
        * according to RFC 5280, based on template.
        * 
        * The CRL is signed by priv which should be the private key associated with
        * the public key in the issuer certificate.
        * 
        * The issuer may not be nil, and the crlSign bit must be set in KeyUsage in
        * order to use it as a CRL issuer.
        * 
        * The issuer distinguished name CRL field and authority key identifier
        * extension are populated using the issuer certificate. issuer must have
        * SubjectKeyId set.
    **/
    static public inline function createRevocationList(_rand:stdgo._internal.io.Io_reader.Reader, _template:RevocationList, _issuer:Certificate, _priv:stdgo._internal.crypto.Crypto_signer.Signer):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        final _template = (_template : stdgo.Ref<stdgo._internal.crypto.x509.X509_revocationlist.RevocationList>);
        final _issuer = (_issuer : stdgo.Ref<stdgo._internal.crypto.x509.X509_certificate.Certificate>);
        return {
            final obj = stdgo._internal.crypto.x509.X509_createrevocationlist.createRevocationList(_rand, _template, _issuer, _priv);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
}
