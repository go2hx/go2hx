package stdgo.crypto.rsa;
final pSSSaltLengthAuto : haxe.UInt64 = stdgo._internal.crypto.rsa.Rsa_pSSSaltLengthAuto.pSSSaltLengthAuto;
final pSSSaltLengthEqualsHash : haxe.UInt64 = stdgo._internal.crypto.rsa.Rsa_pSSSaltLengthEqualsHash.pSSSaltLengthEqualsHash;
var errMessageTooLong(get, set) : stdgo.Error;
private function get_errMessageTooLong():stdgo.Error return stdgo._internal.crypto.rsa.Rsa_errMessageTooLong.errMessageTooLong;
private function set_errMessageTooLong(v:stdgo.Error):stdgo.Error {
        stdgo._internal.crypto.rsa.Rsa_errMessageTooLong.errMessageTooLong = v;
        return v;
    }
var errDecryption(get, set) : stdgo.Error;
private function get_errDecryption():stdgo.Error return stdgo._internal.crypto.rsa.Rsa_errDecryption.errDecryption;
private function set_errDecryption(v:stdgo.Error):stdgo.Error {
        stdgo._internal.crypto.rsa.Rsa_errDecryption.errDecryption = v;
        return v;
    }
var errVerification(get, set) : stdgo.Error;
private function get_errVerification():stdgo.Error return stdgo._internal.crypto.rsa.Rsa_errVerification.errVerification;
private function set_errVerification(v:stdgo.Error):stdgo.Error {
        stdgo._internal.crypto.rsa.Rsa_errVerification.errVerification = v;
        return v;
    }
@:structInit abstract PKCS1v15DecryptOptions(stdgo._internal.crypto.rsa.Rsa_PKCS1v15DecryptOptions.PKCS1v15DecryptOptions) from stdgo._internal.crypto.rsa.Rsa_PKCS1v15DecryptOptions.PKCS1v15DecryptOptions to stdgo._internal.crypto.rsa.Rsa_PKCS1v15DecryptOptions.PKCS1v15DecryptOptions {
    public var sessionKeyLen(get, set) : StdTypes.Int;
    function get_sessionKeyLen():StdTypes.Int return this.sessionKeyLen;
    function set_sessionKeyLen(v:StdTypes.Int):StdTypes.Int {
        this.sessionKeyLen = v;
        return v;
    }
    public function new(?sessionKeyLen:StdTypes.Int) this = new stdgo._internal.crypto.rsa.Rsa_PKCS1v15DecryptOptions.PKCS1v15DecryptOptions(sessionKeyLen);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.crypto.rsa.Rsa.PSSOptions_static_extension) abstract PSSOptions(stdgo._internal.crypto.rsa.Rsa_PSSOptions.PSSOptions) from stdgo._internal.crypto.rsa.Rsa_PSSOptions.PSSOptions to stdgo._internal.crypto.rsa.Rsa_PSSOptions.PSSOptions {
    public var saltLength(get, set) : StdTypes.Int;
    function get_saltLength():StdTypes.Int return this.saltLength;
    function set_saltLength(v:StdTypes.Int):StdTypes.Int {
        this.saltLength = v;
        return v;
    }
    public var hash(get, set) : stdgo._internal.crypto.Crypto_Hash.Hash;
    function get_hash():stdgo._internal.crypto.Crypto_Hash.Hash return this.hash;
    function set_hash(v:stdgo._internal.crypto.Crypto_Hash.Hash):stdgo._internal.crypto.Crypto_Hash.Hash {
        this.hash = v;
        return v;
    }
    public function new(?saltLength:StdTypes.Int, ?hash:stdgo._internal.crypto.Crypto_Hash.Hash) this = new stdgo._internal.crypto.rsa.Rsa_PSSOptions.PSSOptions(saltLength, hash);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.crypto.rsa.Rsa.PublicKey_static_extension) abstract PublicKey(stdgo._internal.crypto.rsa.Rsa_PublicKey.PublicKey) from stdgo._internal.crypto.rsa.Rsa_PublicKey.PublicKey to stdgo._internal.crypto.rsa.Rsa_PublicKey.PublicKey {
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
    public function new(?n:stdgo._internal.math.big.Big_Int_.Int_, ?e:StdTypes.Int) this = new stdgo._internal.crypto.rsa.Rsa_PublicKey.PublicKey(n, e);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit abstract OAEPOptions(stdgo._internal.crypto.rsa.Rsa_OAEPOptions.OAEPOptions) from stdgo._internal.crypto.rsa.Rsa_OAEPOptions.OAEPOptions to stdgo._internal.crypto.rsa.Rsa_OAEPOptions.OAEPOptions {
    public var hash(get, set) : stdgo._internal.crypto.Crypto_Hash.Hash;
    function get_hash():stdgo._internal.crypto.Crypto_Hash.Hash return this.hash;
    function set_hash(v:stdgo._internal.crypto.Crypto_Hash.Hash):stdgo._internal.crypto.Crypto_Hash.Hash {
        this.hash = v;
        return v;
    }
    public var mGFHash(get, set) : stdgo._internal.crypto.Crypto_Hash.Hash;
    function get_mGFHash():stdgo._internal.crypto.Crypto_Hash.Hash return this.mGFHash;
    function set_mGFHash(v:stdgo._internal.crypto.Crypto_Hash.Hash):stdgo._internal.crypto.Crypto_Hash.Hash {
        this.mGFHash = v;
        return v;
    }
    public var label(get, set) : Array<std.UInt>;
    function get_label():Array<std.UInt> return [for (i in this.label) i];
    function set_label(v:Array<std.UInt>):Array<std.UInt> {
        this.label = ([for (i in v) i] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public function new(?hash:stdgo._internal.crypto.Crypto_Hash.Hash, ?mGFHash:stdgo._internal.crypto.Crypto_Hash.Hash, ?label:Array<std.UInt>) this = new stdgo._internal.crypto.rsa.Rsa_OAEPOptions.OAEPOptions(hash, mGFHash, ([for (i in label) i] : stdgo.Slice<stdgo.GoUInt8>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.crypto.rsa.Rsa.PrivateKey_static_extension) abstract PrivateKey(stdgo._internal.crypto.rsa.Rsa_PrivateKey.PrivateKey) from stdgo._internal.crypto.rsa.Rsa_PrivateKey.PrivateKey to stdgo._internal.crypto.rsa.Rsa_PrivateKey.PrivateKey {
    public var publicKey(get, set) : PublicKey;
    function get_publicKey():PublicKey return this.publicKey;
    function set_publicKey(v:PublicKey):PublicKey {
        this.publicKey = v;
        return v;
    }
    public var d(get, set) : stdgo._internal.math.big.Big_Int_.Int_;
    function get_d():stdgo._internal.math.big.Big_Int_.Int_ return this.d;
    function set_d(v:stdgo._internal.math.big.Big_Int_.Int_):stdgo._internal.math.big.Big_Int_.Int_ {
        this.d = v;
        return v;
    }
    public var primes(get, set) : Array<stdgo._internal.math.big.Big_Int_.Int_>;
    function get_primes():Array<stdgo._internal.math.big.Big_Int_.Int_> return [for (i in this.primes) i];
    function set_primes(v:Array<stdgo._internal.math.big.Big_Int_.Int_>):Array<stdgo._internal.math.big.Big_Int_.Int_> {
        this.primes = ([for (i in v) i] : stdgo.Slice<stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>>);
        return v;
    }
    public var precomputed(get, set) : PrecomputedValues;
    function get_precomputed():PrecomputedValues return this.precomputed;
    function set_precomputed(v:PrecomputedValues):PrecomputedValues {
        this.precomputed = v;
        return v;
    }
    public function new(?publicKey:PublicKey, ?d:stdgo._internal.math.big.Big_Int_.Int_, ?primes:Array<stdgo._internal.math.big.Big_Int_.Int_>, ?precomputed:PrecomputedValues) this = new stdgo._internal.crypto.rsa.Rsa_PrivateKey.PrivateKey(publicKey, d, ([for (i in primes) i] : stdgo.Slice<stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>>), precomputed);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit abstract PrecomputedValues(stdgo._internal.crypto.rsa.Rsa_PrecomputedValues.PrecomputedValues) from stdgo._internal.crypto.rsa.Rsa_PrecomputedValues.PrecomputedValues to stdgo._internal.crypto.rsa.Rsa_PrecomputedValues.PrecomputedValues {
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
    public var cRTValues(get, set) : Array<CRTValue>;
    function get_cRTValues():Array<CRTValue> return [for (i in this.cRTValues) i];
    function set_cRTValues(v:Array<CRTValue>):Array<CRTValue> {
        this.cRTValues = ([for (i in v) i] : stdgo.Slice<stdgo._internal.crypto.rsa.Rsa_CRTValue.CRTValue>);
        return v;
    }
    public var _n(get, set) : _internal.crypto.internal.bigmod.Bigmod_Modulus.Modulus;
    function get__n():_internal.crypto.internal.bigmod.Bigmod_Modulus.Modulus return this._n;
    function set__n(v:_internal.crypto.internal.bigmod.Bigmod_Modulus.Modulus):_internal.crypto.internal.bigmod.Bigmod_Modulus.Modulus {
        this._n = v;
        return v;
    }
    public var _p(get, set) : _internal.crypto.internal.bigmod.Bigmod_Modulus.Modulus;
    function get__p():_internal.crypto.internal.bigmod.Bigmod_Modulus.Modulus return this._p;
    function set__p(v:_internal.crypto.internal.bigmod.Bigmod_Modulus.Modulus):_internal.crypto.internal.bigmod.Bigmod_Modulus.Modulus {
        this._p = v;
        return v;
    }
    public var _q(get, set) : _internal.crypto.internal.bigmod.Bigmod_Modulus.Modulus;
    function get__q():_internal.crypto.internal.bigmod.Bigmod_Modulus.Modulus return this._q;
    function set__q(v:_internal.crypto.internal.bigmod.Bigmod_Modulus.Modulus):_internal.crypto.internal.bigmod.Bigmod_Modulus.Modulus {
        this._q = v;
        return v;
    }
    public function new(?dp:stdgo._internal.math.big.Big_Int_.Int_, ?dq:stdgo._internal.math.big.Big_Int_.Int_, ?qinv:stdgo._internal.math.big.Big_Int_.Int_, ?cRTValues:Array<CRTValue>, ?_n:_internal.crypto.internal.bigmod.Bigmod_Modulus.Modulus, ?_p:_internal.crypto.internal.bigmod.Bigmod_Modulus.Modulus, ?_q:_internal.crypto.internal.bigmod.Bigmod_Modulus.Modulus) this = new stdgo._internal.crypto.rsa.Rsa_PrecomputedValues.PrecomputedValues(dp, dq, qinv, ([for (i in cRTValues) i] : stdgo.Slice<stdgo._internal.crypto.rsa.Rsa_CRTValue.CRTValue>), _n, _p, _q);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit abstract CRTValue(stdgo._internal.crypto.rsa.Rsa_CRTValue.CRTValue) from stdgo._internal.crypto.rsa.Rsa_CRTValue.CRTValue to stdgo._internal.crypto.rsa.Rsa_CRTValue.CRTValue {
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
    public var r(get, set) : stdgo._internal.math.big.Big_Int_.Int_;
    function get_r():stdgo._internal.math.big.Big_Int_.Int_ return this.r;
    function set_r(v:stdgo._internal.math.big.Big_Int_.Int_):stdgo._internal.math.big.Big_Int_.Int_ {
        this.r = v;
        return v;
    }
    public function new(?exp:stdgo._internal.math.big.Big_Int_.Int_, ?coeff:stdgo._internal.math.big.Big_Int_.Int_, ?r:stdgo._internal.math.big.Big_Int_.Int_) this = new stdgo._internal.crypto.rsa.Rsa_CRTValue.CRTValue(exp, coeff, r);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
typedef PSSOptionsPointer = stdgo._internal.crypto.rsa.Rsa_PSSOptionsPointer.PSSOptionsPointer;
class PSSOptions_static_extension {
    static public function _saltLength(_opts:PSSOptions):StdTypes.Int {
        return stdgo._internal.crypto.rsa.Rsa_PSSOptions_static_extension.PSSOptions_static_extension._saltLength(_opts);
    }
    static public function hashFunc(_opts:PSSOptions):stdgo._internal.crypto.Crypto_Hash.Hash {
        return stdgo._internal.crypto.rsa.Rsa_PSSOptions_static_extension.PSSOptions_static_extension.hashFunc(_opts);
    }
}
typedef PublicKeyPointer = stdgo._internal.crypto.rsa.Rsa_PublicKeyPointer.PublicKeyPointer;
class PublicKey_static_extension {
    static public function equal(_pub:PublicKey, _x:stdgo._internal.crypto.Crypto_PublicKey.PublicKey):Bool {
        return stdgo._internal.crypto.rsa.Rsa_PublicKey_static_extension.PublicKey_static_extension.equal(_pub, _x);
    }
    static public function size(_pub:PublicKey):StdTypes.Int {
        return stdgo._internal.crypto.rsa.Rsa_PublicKey_static_extension.PublicKey_static_extension.size(_pub);
    }
}
typedef PrivateKeyPointer = stdgo._internal.crypto.rsa.Rsa_PrivateKeyPointer.PrivateKeyPointer;
class PrivateKey_static_extension {
    static public function precompute(_priv:PrivateKey):Void {
        stdgo._internal.crypto.rsa.Rsa_PrivateKey_static_extension.PrivateKey_static_extension.precompute(_priv);
    }
    static public function validate(_priv:PrivateKey):stdgo.Error {
        return stdgo._internal.crypto.rsa.Rsa_PrivateKey_static_extension.PrivateKey_static_extension.validate(_priv);
    }
    static public function decrypt(_priv:PrivateKey, _rand:stdgo._internal.io.Io_Reader.Reader, _ciphertext:Array<std.UInt>, _opts:stdgo._internal.crypto.Crypto_DecrypterOpts.DecrypterOpts):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        final _ciphertext = ([for (i in _ciphertext) i] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.crypto.rsa.Rsa_PrivateKey_static_extension.PrivateKey_static_extension.decrypt(_priv, _rand, _ciphertext, _opts);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    static public function sign(_priv:PrivateKey, _rand:stdgo._internal.io.Io_Reader.Reader, _digest:Array<std.UInt>, _opts:stdgo._internal.crypto.Crypto_SignerOpts.SignerOpts):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        final _digest = ([for (i in _digest) i] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.crypto.rsa.Rsa_PrivateKey_static_extension.PrivateKey_static_extension.sign(_priv, _rand, _digest, _opts);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    static public function equal(_priv:PrivateKey, _x:stdgo._internal.crypto.Crypto_PrivateKey.PrivateKey):Bool {
        return stdgo._internal.crypto.rsa.Rsa_PrivateKey_static_extension.PrivateKey_static_extension.equal(_priv, _x);
    }
    static public function public_(_priv:PrivateKey):stdgo._internal.crypto.Crypto_PublicKey.PublicKey {
        return stdgo._internal.crypto.rsa.Rsa_PrivateKey_static_extension.PrivateKey_static_extension.public_(_priv);
    }
    public static function size(__self__:stdgo._internal.crypto.rsa.Rsa_PrivateKey.PrivateKey):StdTypes.Int {
        return stdgo._internal.crypto.rsa.Rsa_PrivateKey_static_extension.PrivateKey_static_extension.size(__self__);
    }
}
/**
    /|*{
    	randutil.MaybeReadByte(random)
    	if false && random == 0 && nprimes == 2 && (bits == 2048 || bits == 3072 || bits == 4096) {
    		gotoNext = 4079262
    		_ = gotoNext == 4079262
    		bN_4079266, bE_4079270, bD_4079274, bP_4079278, bQ_4079282, bDp_4079286, bDq_4079291, bQinv_4079296, err_4079303 = boring.GenerateKeyRSA(bits)
    		if err_4079303 != nil {
    			gotoNext = 4079354
    			_ = gotoNext == 4079354
    			return nil, err_4079303
    			gotoNext = 4079381
    		} else {
    			gotoNext = 4079381
    		}
    		_ = gotoNext == 4079381
    		N_4079381 = bbig.Dec(bN_4079266)
    		E_4079401 = bbig.Dec(bE_4079270)
    		D_4079421 = bbig.Dec(bD_4079274)
    		P_4079441 = bbig.Dec(bP_4079278)
    		Q_4079461 = bbig.Dec(bQ_4079282)
    		Dp_4079481 = bbig.Dec(bDp_4079286)
    		Dq_4079503 = bbig.Dec(bDq_4079291)
    		Qinv_4079525 = bbig.Dec(bQinv_4079296)
    		e64_4079551 = E_4079401.Int64()
    		if !E_4079401.IsInt64() || int64(int(e64_4079551)) != e64_4079551 {
    			gotoNext = 4079612
    			_ = gotoNext == 4079612
    			return nil, errors.New("crypto/rsa: generated key exponent too large")
    			gotoNext = 4079695
    		} else {
    			gotoNext = 4079695
    		}
    		_ = gotoNext == 4079695
    		mn_4079695, err_4079303 = bigmod.NewModulusFromBig(N_4079381)
    		if err_4079303 != nil {
    			gotoNext = 4079750
    			_ = gotoNext == 4079750
    			return nil, err_4079303
    			gotoNext = 4079777
    		} else {
    			gotoNext = 4079777
    		}
    		_ = gotoNext == 4079777
    		mp_4079777, err_4079303 = bigmod.NewModulusFromBig(P_4079441)
    		if err_4079303 != nil {
    			gotoNext = 4079832
    			_ = gotoNext == 4079832
    			return nil, err_4079303
    			gotoNext = 4079859
    		} else {
    			gotoNext = 4079859
    		}
    		_ = gotoNext == 4079859
    		mq_4079859, err_4079303 = bigmod.NewModulusFromBig(Q_4079461)
    		if err_4079303 != nil {
    			gotoNext = 4079914
    			_ = gotoNext == 4079914
    			return nil, err_4079303
    			gotoNext = 4079942
    		} else {
    			gotoNext = 4079942
    		}
    		_ = gotoNext == 4079942
    		key_4079942 = &PrivateKey{PublicKey: PublicKey{N_4079381: N_4079381, E_4079401: int(e64_4079551)}, D_4079421: D_4079421, Primes: []*big.Int{P_4079441, Q_4079461}, Precomputed: PrecomputedValues{Dp_4079481: Dp_4079481, Dq_4079503: Dq_4079503, Qinv_4079525: Qinv_4079525, CRTValues: make([]CRTValue, 0), n: mn_4079695, p: mp_4079777, q: mq_4079859}}
    		return key_4079942, nil
    		gotoNext = 4080315
    	} else {
    		gotoNext = 4080315
    	}
    	_ = gotoNext == 4080315
    	priv_4080315 = new(PrivateKey)
    	priv_4080315.E = 65537
    	if nprimes < 2 {
    		gotoNext = 4080372
    		_ = gotoNext == 4080372
    		return nil, errors.New("crypto/rsa: GenerateMultiPrimeKey: nprimes must be >= 2")
    		gotoNext = 4080463
    	} else {
    		gotoNext = 4080463
    	}
    	_ = gotoNext == 4080463
    	if bits < 64 {
    		gotoNext = 4080476
    		_ = gotoNext == 4080476
    		primeLimit_4080480 = float64(uint64(1) << uint(bits/nprimes))
    		pi_4080600 = primeLimit_4080480 / (math.Log(primeLimit_4080480) - 1)
    		pi_4080600 /= 4
    		pi_4080600 /= 2
    		if pi_4080600 <= float64(nprimes) {
    			gotoNext = 4080888
    			_ = gotoNext == 4080888
    			return nil, errors.New("crypto/rsa: too few primes of given length to generate an RSA key")
    			gotoNext = 4080994
    		} else {
    			gotoNext = 4080994
    		}
    		gotoNext = 4080994
    	} else {
    		gotoNext = 4080994
    	}
    	_ = gotoNext == 4080994
    	primes_4080994 = make([]*big.Int, nprimes)
    	gotoNext = 4081031
    	_ = gotoNext == 4081031
    	_ = 0
    	NextSetOfPrimesBreak = false
    	gotoNext = 4081049
    	_ = gotoNext == 4081049
    	if !NextSetOfPrimesBreak {
    		gotoNext = 4081053
    		_ = gotoNext == 4081053
    		todo_4081057 = bits
    		if nprimes >= 7 {
    			gotoNext = 4081584
    			_ = gotoNext == 4081584
    			todo_4081057 += (nprimes - 2) / 5
    			gotoNext = 4081621
    		} else {
    			gotoNext = 4081621
    		}
    		_ = gotoNext == 4081621
    		i_4081625 = 0
    		gotoNext = 4081621
    		_ = gotoNext == 4081621
    		if i_4081625 < nprimes {
    			gotoNext = 4081650
    			_ = gotoNext == 4081650
    			primes_4080994[i_4081625], err_4081659 = rand.Prime(random, todo_4081057/(nprimes-i_4081625))
    			if err_4081659 != nil {
    				gotoNext = 4081743
    				_ = gotoNext == 4081743
    				return nil, err_4081659
    				gotoNext = 4081773
    			} else {
    				gotoNext = 4081773
    			}
    			_ = gotoNext == 4081773
    			todo_4081057 -= primes_4080994[i_4081625].BitLen()
    			i_4081625++
    			gotoNext = 4081621
    		} else {
    			gotoNext = 4081855
    		}
    		_ = gotoNext == 4081855
    		if 0 < len(primes_4080994) {
    			gotoNext = 4081991
    			_ = gotoNext == 4081991
    			i_4081859, prime_4081862 = 0, primes_4080994[0]
    			gotoNext = 4081992
    			_ = gotoNext == 4081992
    			if i_4081859 < len(primes_4080994) {
    				gotoNext = 4081884
    				_ = gotoNext == 4081884
    				prime_4081862 = primes_4080994[i_4081859]
    				j_4081893 = 0
    				gotoNext = 4081889
    				_ = gotoNext == 4081889
    				if j_4081893 < i_4081859 {
    					gotoNext = 4081912
    					_ = gotoNext == 4081912
    					if prime_4081862.Cmp(primes_4080994[j_4081893]) == 0 {
    						gotoNext = 4081947
    						_ = gotoNext == 4081947
    						gotoNext = 4081049
    						gotoNext = 4081908
    					} else {
    						gotoNext = 4081908
    					}
    					_ = gotoNext == 4081908
    					j_4081893++
    					gotoNext = 4081889
    				} else {
    					gotoNext = 4081859
    				}
    				_ = gotoNext == 4081859
    				i_4081859++
    				gotoNext = 4081992
    			} else {
    				gotoNext = 4081997
    			}
    			gotoNext = 4081997
    		} else {
    			gotoNext = 4081997
    		}
    		_ = gotoNext == 4081997
    		n_4081997 = new(big.Int).Set(bigOne)
    		totient_4082029 = new(big.Int).Set(bigOne)
    		pminus1_4082067 = new(big.Int)
    		if 0 < len(primes_4080994) {
    			gotoNext = 4082207
    			_ = gotoNext == 4082207
    			i_4082109_0, prime_4082100 = 0, primes_4080994[0]
    			gotoNext = 4082208
    			_ = gotoNext == 4082208
    			if i_4082109_0 < len(primes_4080994) {
    				gotoNext = 4082122
    				_ = gotoNext == 4082122
    				prime_4082100 = primes_4080994[i_4082109_0]
    				n_4081997.Mul(n_4081997, prime_4082100)
    				pminus1_4082067.Sub(prime_4082100, bigOne)
    				totient_4082029.Mul(totient_4082029, pminus1_4082067)
    				i_4082109_0++
    				gotoNext = 4082208
    			} else {
    				gotoNext = 4082212
    			}
    			gotoNext = 4082212
    		} else {
    			gotoNext = 4082212
    		}
    		_ = gotoNext == 4082212
    		if n_4081997.BitLen() != bits {
    			gotoNext = 4082234
    			_ = gotoNext == 4082234
    			gotoNext = 4081049
    			gotoNext = 4082444
    		} else {
    			gotoNext = 4082444
    		}
    		_ = gotoNext == 4082444
    		priv_4080315.D = new(big.Int)
    		e_4082468 = big.NewInt(int64(priv_4080315.E))
    		ok_4082501 = priv_4080315.D.ModInverse(e_4082468, totient_4082029)
    		if ok_4082501 != nil {
    			gotoNext = 4082553
    			_ = gotoNext == 4082553
    			priv_4080315.Primes = primes_4080994
    			priv_4080315.N = n_4081997
    			gotoNext = 4082611
    			gotoNext = 4081049
    		} else {
    			gotoNext = 4081049
    		}
    		gotoNext = 4081049
    	} else {
    		gotoNext = 4082611
    	}
    	_ = gotoNext == 4082611
    	priv_4080315.Precompute()
    	return priv_4080315, nil
    	gotoNext = -1
    }*|/
**/
class Rsa {
    /**
        EncryptPKCS1v15 encrypts the given message with RSA and the padding
        scheme from PKCS #1 v1.5.  The message must be no longer than the
        length of the public modulus minus 11 bytes.
        
        The random parameter is used as a source of entropy to ensure that
        encrypting the same message twice doesn't result in the same
        ciphertext. Most applications should use [crypto/rand.Reader]
        as random. Note that the returned ciphertext does not depend
        deterministically on the bytes read from random, and may change
        between calls and/or between versions.
        
        WARNING: use of this function to encrypt plaintexts other than
        session keys is dangerous. Use RSA OAEP in new protocols.
    **/
    static public function encryptPKCS1v15(_random:stdgo._internal.io.Io_Reader.Reader, _pub:PublicKey, _msg:Array<std.UInt>):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        final _msg = ([for (i in _msg) i] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.crypto.rsa.Rsa_encryptPKCS1v15.encryptPKCS1v15(_random, _pub, _msg);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    /**
        DecryptPKCS1v15 decrypts a plaintext using RSA and the padding scheme from PKCS #1 v1.5.
        The random parameter is legacy and ignored, and it can be nil.
        
        Note that whether this function returns an error or not discloses secret
        information. If an attacker can cause this function to run repeatedly and
        learn whether each instance returned an error then they can decrypt and
        forge signatures as if they had the private key. See
        DecryptPKCS1v15SessionKey for a way of solving this problem.
    **/
    static public function decryptPKCS1v15(_random:stdgo._internal.io.Io_Reader.Reader, _priv:PrivateKey, _ciphertext:Array<std.UInt>):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        final _ciphertext = ([for (i in _ciphertext) i] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.crypto.rsa.Rsa_decryptPKCS1v15.decryptPKCS1v15(_random, _priv, _ciphertext);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    /**
        DecryptPKCS1v15SessionKey decrypts a session key using RSA and the padding
        scheme from PKCS #1 v1.5. The random parameter is legacy and ignored, and it
        can be nil.
        
        DecryptPKCS1v15SessionKey returns an error if the ciphertext is the wrong
        length or if the ciphertext is greater than the public modulus. Otherwise, no
        error is returned. If the padding is valid, the resulting plaintext message
        is copied into key. Otherwise, key is unchanged. These alternatives occur in
        constant time. It is intended that the user of this function generate a
        random session key beforehand and continue the protocol with the resulting
        value.
        
        Note that if the session key is too small then it may be possible for an
        attacker to brute-force it. If they can do that then they can learn whether a
        random value was used (because it'll be different for the same ciphertext)
        and thus whether the padding was correct. This also defeats the point of this
        function. Using at least a 16-byte key will protect against this attack.
        
        This method implements protections against Bleichenbacher chosen ciphertext
        attacks [0] described in RFC 3218 Section 2.3.2 [1]. While these protections
        make a Bleichenbacher attack significantly more difficult, the protections
        are only effective if the rest of the protocol which uses
        DecryptPKCS1v15SessionKey is designed with these considerations in mind. In
        particular, if any subsequent operations which use the decrypted session key
        leak any information about the key (e.g. whether it is a static or random
        key) then the mitigations are defeated. This method must be used extremely
        carefully, and typically should only be used when absolutely necessary for
        compatibility with an existing protocol (such as TLS) that is designed with
        these properties in mind.
        
          - [0] “Chosen Ciphertext Attacks Against Protocols Based on the RSA Encryption
            Standard PKCS #1”, Daniel Bleichenbacher, Advances in Cryptology (Crypto '98)
          - [1] RFC 3218, Preventing the Million Message Attack on CMS,
            https://www.rfc-editor.org/rfc/rfc3218.html
    **/
    static public function decryptPKCS1v15SessionKey(_random:stdgo._internal.io.Io_Reader.Reader, _priv:PrivateKey, _ciphertext:Array<std.UInt>, _key:Array<std.UInt>):stdgo.Error {
        final _ciphertext = ([for (i in _ciphertext) i] : stdgo.Slice<stdgo.GoUInt8>);
        final _key = ([for (i in _key) i] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.crypto.rsa.Rsa_decryptPKCS1v15SessionKey.decryptPKCS1v15SessionKey(_random, _priv, _ciphertext, _key);
    }
    /**
        SignPKCS1v15 calculates the signature of hashed using
        RSASSA-PKCS1-V1_5-SIGN from RSA PKCS #1 v1.5.  Note that hashed must
        be the result of hashing the input message using the given hash
        function. If hash is zero, hashed is signed directly. This isn't
        advisable except for interoperability.
        
        The random parameter is legacy and ignored, and it can be nil.
        
        This function is deterministic. Thus, if the set of possible
        messages is small, an attacker may be able to build a map from
        messages to signatures and identify the signed messages. As ever,
        signatures provide authenticity, not confidentiality.
    **/
    static public function signPKCS1v15(_random:stdgo._internal.io.Io_Reader.Reader, _priv:PrivateKey, _hash:stdgo._internal.crypto.Crypto_Hash.Hash, _hashed:Array<std.UInt>):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        final _hashed = ([for (i in _hashed) i] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.crypto.rsa.Rsa_signPKCS1v15.signPKCS1v15(_random, _priv, _hash, _hashed);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    /**
        VerifyPKCS1v15 verifies an RSA PKCS #1 v1.5 signature.
        hashed is the result of hashing the input message using the given hash
        function and sig is the signature. A valid signature is indicated by
        returning a nil error. If hash is zero then hashed is used directly. This
        isn't advisable except for interoperability.
    **/
    static public function verifyPKCS1v15(_pub:PublicKey, _hash:stdgo._internal.crypto.Crypto_Hash.Hash, _hashed:Array<std.UInt>, _sig:Array<std.UInt>):stdgo.Error {
        final _hashed = ([for (i in _hashed) i] : stdgo.Slice<stdgo.GoUInt8>);
        final _sig = ([for (i in _sig) i] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.crypto.rsa.Rsa_verifyPKCS1v15.verifyPKCS1v15(_pub, _hash, _hashed, _sig);
    }
    /**
        SignPSS calculates the signature of digest using PSS.
        
        digest must be the result of hashing the input message using the given hash
        function. The opts argument may be nil, in which case sensible defaults are
        used. If opts.Hash is set, it overrides hash.
        
        The signature is randomized depending on the message, key, and salt size,
        using bytes from rand. Most applications should use [crypto/rand.Reader] as
        rand.
    **/
    static public function signPSS(_rand:stdgo._internal.io.Io_Reader.Reader, _priv:PrivateKey, _hash:stdgo._internal.crypto.Crypto_Hash.Hash, _digest:Array<std.UInt>, _opts:PSSOptions):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        final _digest = ([for (i in _digest) i] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.crypto.rsa.Rsa_signPSS.signPSS(_rand, _priv, _hash, _digest, _opts);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    /**
        VerifyPSS verifies a PSS signature.
        
        A valid signature is indicated by returning a nil error. digest must be the
        result of hashing the input message using the given hash function. The opts
        argument may be nil, in which case sensible defaults are used. opts.Hash is
        ignored.
    **/
    static public function verifyPSS(_pub:PublicKey, _hash:stdgo._internal.crypto.Crypto_Hash.Hash, _digest:Array<std.UInt>, _sig:Array<std.UInt>, _opts:PSSOptions):stdgo.Error {
        final _digest = ([for (i in _digest) i] : stdgo.Slice<stdgo.GoUInt8>);
        final _sig = ([for (i in _sig) i] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.crypto.rsa.Rsa_verifyPSS.verifyPSS(_pub, _hash, _digest, _sig, _opts);
    }
    /**
        GenerateKey generates a random RSA private key of the given bit size.
        
        Most applications should use [crypto/rand.Reader] as rand. Note that the
        returned key does not depend deterministically on the bytes read from rand,
        and may change between calls and/or between versions.
    **/
    static public function generateKey(_random:stdgo._internal.io.Io_Reader.Reader, _bits:StdTypes.Int):stdgo.Tuple<PrivateKey, stdgo.Error> {
        return {
            final obj = stdgo._internal.crypto.rsa.Rsa_generateKey.generateKey(_random, _bits);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        GenerateMultiPrimeKey generates a multi-prime RSA keypair of the given bit
        size and the given random source.
        
        Table 1 in "[On the Security of Multi-prime RSA]" suggests maximum numbers of
        primes for a given bit size.
        
        Although the public keys are compatible (actually, indistinguishable) from
        the 2-prime case, the private keys are not. Thus it may not be possible to
        export multi-prime private keys in certain formats or to subsequently import
        them into other code.
        
        This package does not implement CRT optimizations for multi-prime RSA, so the
        keys with more than two primes will have worse performance.
        
        Deprecated: The use of this function with a number of primes different from
        two is not recommended for the above security, compatibility, and performance
        reasons. Use GenerateKey instead.
        
        [On the Security of Multi-prime RSA]: http://www.cacr.math.uwaterloo.ca/techreports/2006/cacr2006-16.pdf
    **/
    static public function generateMultiPrimeKey(_random:stdgo._internal.io.Io_Reader.Reader, _nprimes:StdTypes.Int, _bits:StdTypes.Int):stdgo.Tuple<PrivateKey, stdgo.Error> {
        return {
            final obj = stdgo._internal.crypto.rsa.Rsa_generateMultiPrimeKey.generateMultiPrimeKey(_random, _nprimes, _bits);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        EncryptOAEP encrypts the given message with RSA-OAEP.
        
        OAEP is parameterised by a hash function that is used as a random oracle.
        Encryption and decryption of a given message must use the same hash function
        and sha256.New() is a reasonable choice.
        
        The random parameter is used as a source of entropy to ensure that
        encrypting the same message twice doesn't result in the same ciphertext.
        Most applications should use [crypto/rand.Reader] as random.
        
        The label parameter may contain arbitrary data that will not be encrypted,
        but which gives important context to the message. For example, if a given
        public key is used to encrypt two types of messages then distinct label
        values could be used to ensure that a ciphertext for one purpose cannot be
        used for another by an attacker. If not required it can be empty.
        
        The message must be no longer than the length of the public modulus minus
        twice the hash length, minus a further 2.
    **/
    static public function encryptOAEP(_hash:stdgo._internal.hash.Hash_Hash.Hash, _random:stdgo._internal.io.Io_Reader.Reader, _pub:PublicKey, _msg:Array<std.UInt>, _label:Array<std.UInt>):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        final _msg = ([for (i in _msg) i] : stdgo.Slice<stdgo.GoUInt8>);
        final _label = ([for (i in _label) i] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.crypto.rsa.Rsa_encryptOAEP.encryptOAEP(_hash, _random, _pub, _msg, _label);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    /**
        DecryptOAEP decrypts ciphertext using RSA-OAEP.
        
        OAEP is parameterised by a hash function that is used as a random oracle.
        Encryption and decryption of a given message must use the same hash function
        and sha256.New() is a reasonable choice.
        
        The random parameter is legacy and ignored, and it can be nil.
        
        The label parameter must match the value given when encrypting. See
        EncryptOAEP for details.
    **/
    static public function decryptOAEP(_hash:stdgo._internal.hash.Hash_Hash.Hash, _random:stdgo._internal.io.Io_Reader.Reader, _priv:PrivateKey, _ciphertext:Array<std.UInt>, _label:Array<std.UInt>):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        final _ciphertext = ([for (i in _ciphertext) i] : stdgo.Slice<stdgo.GoUInt8>);
        final _label = ([for (i in _label) i] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.crypto.rsa.Rsa_decryptOAEP.decryptOAEP(_hash, _random, _priv, _ciphertext, _label);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
}
