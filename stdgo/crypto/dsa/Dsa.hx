package stdgo.crypto.dsa;
final l1024n160 : ParameterSizes = stdgo._internal.crypto.dsa.Dsa_l1024n160.l1024n160;
final l2048n224 = stdgo._internal.crypto.dsa.Dsa_l2048n224.l2048n224;
final l2048n256 = stdgo._internal.crypto.dsa.Dsa_l2048n256.l2048n256;
final l3072n256 = stdgo._internal.crypto.dsa.Dsa_l3072n256.l3072n256;
var errInvalidPublicKey(get, set) : stdgo.Error;
private function get_errInvalidPublicKey():stdgo.Error return stdgo._internal.crypto.dsa.Dsa_errInvalidPublicKey.errInvalidPublicKey;
private function set_errInvalidPublicKey(v:stdgo.Error):stdgo.Error {
        stdgo._internal.crypto.dsa.Dsa_errInvalidPublicKey.errInvalidPublicKey = v;
        return v;
    }
@:structInit abstract Parameters(stdgo._internal.crypto.dsa.Dsa_Parameters.Parameters) from stdgo._internal.crypto.dsa.Dsa_Parameters.Parameters to stdgo._internal.crypto.dsa.Dsa_Parameters.Parameters {
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
    public function new(?p:stdgo._internal.math.big.Big_Int_.Int_, ?q:stdgo._internal.math.big.Big_Int_.Int_, ?g:stdgo._internal.math.big.Big_Int_.Int_) this = new stdgo._internal.crypto.dsa.Dsa_Parameters.Parameters(p, q, g);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.crypto.dsa.Dsa.PublicKey_static_extension) abstract PublicKey(stdgo._internal.crypto.dsa.Dsa_PublicKey.PublicKey) from stdgo._internal.crypto.dsa.Dsa_PublicKey.PublicKey to stdgo._internal.crypto.dsa.Dsa_PublicKey.PublicKey {
    public var parameters(get, set) : Parameters;
    function get_parameters():Parameters return this.parameters;
    function set_parameters(v:Parameters):Parameters {
        this.parameters = v;
        return v;
    }
    public var y(get, set) : stdgo._internal.math.big.Big_Int_.Int_;
    function get_y():stdgo._internal.math.big.Big_Int_.Int_ return this.y;
    function set_y(v:stdgo._internal.math.big.Big_Int_.Int_):stdgo._internal.math.big.Big_Int_.Int_ {
        this.y = v;
        return v;
    }
    public function new(?parameters:Parameters, ?y:stdgo._internal.math.big.Big_Int_.Int_) this = new stdgo._internal.crypto.dsa.Dsa_PublicKey.PublicKey(parameters, y);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.crypto.dsa.Dsa.PrivateKey_static_extension) abstract PrivateKey(stdgo._internal.crypto.dsa.Dsa_PrivateKey.PrivateKey) from stdgo._internal.crypto.dsa.Dsa_PrivateKey.PrivateKey to stdgo._internal.crypto.dsa.Dsa_PrivateKey.PrivateKey {
    public var publicKey(get, set) : PublicKey;
    function get_publicKey():PublicKey return this.publicKey;
    function set_publicKey(v:PublicKey):PublicKey {
        this.publicKey = v;
        return v;
    }
    public var x(get, set) : stdgo._internal.math.big.Big_Int_.Int_;
    function get_x():stdgo._internal.math.big.Big_Int_.Int_ return this.x;
    function set_x(v:stdgo._internal.math.big.Big_Int_.Int_):stdgo._internal.math.big.Big_Int_.Int_ {
        this.x = v;
        return v;
    }
    public function new(?publicKey:PublicKey, ?x:stdgo._internal.math.big.Big_Int_.Int_) this = new stdgo._internal.crypto.dsa.Dsa_PrivateKey.PrivateKey(publicKey, x);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
typedef ParameterSizes = stdgo._internal.crypto.dsa.Dsa_ParameterSizes.ParameterSizes;
class PublicKey_static_extension {

}
class PrivateKey_static_extension {

}
/**
    /|*{
    	gotoNext = 3977520
    	_ = gotoNext == 3977520
    	switch sizes {
    	case 0:
    		gotoNext = 3977536
    		_ = gotoNext == 3977536
    		L_3977510 = 1024
    		N_3977513 = 160
    		gotoNext = 3977760
    	case 1:
    		gotoNext = 3977574
    		_ = gotoNext == 3977574
    		L_3977510 = 2048
    		N_3977513 = 224
    		gotoNext = 3977760
    	case 2:
    		gotoNext = 3977612
    		_ = gotoNext == 3977612
    		L_3977510 = 2048
    		N_3977513 = 256
    		gotoNext = 3977760
    	case 3:
    		gotoNext = 3977650
    		_ = gotoNext == 3977650
    		L_3977510 = 3072
    		N_3977513 = 256
    		gotoNext = 3977760
    	default:
    		gotoNext = 3977688
    		_ = gotoNext == 3977688
    		return errors.New("crypto/dsa: invalid ParameterSizes")
    		gotoNext = 3977760
    	}
    	_ = gotoNext == 3977760
    	qBytes_3977760 = make([]byte, N_3977513/8)
    	pBytes_3977789 = make([]byte, L_3977510/8)
    	q_3977819 = new(big.Int)
    	p_3977838 = new(big.Int)
    	rem_3977857 = new(big.Int)
    	one_3977878 = new(big.Int)
    	one_3977878.SetInt64(1)
    	gotoNext = 3977916
    	_ = gotoNext == 3977916
    	_ = 0
    	GeneratePrimesBreak = false
    	gotoNext = 3977933
    	_ = gotoNext == 3977933
    	if !GeneratePrimesBreak {
    		gotoNext = 3977937
    		_ = gotoNext == 3977937
    		if _, err_3977947 = io.ReadFull(rand, qBytes_3977760); err_3977947 != nil {
    			gotoNext = 3977992
    			_ = gotoNext == 3977992
    			return err_3977947
    			gotoNext = 3978015
    		} else {
    			gotoNext = 3978015
    		}
    		_ = gotoNext == 3978015
    		qBytes_3977760[len(qBytes_3977760)-1] |= 1
    		qBytes_3977760[0] |= 128
    		q_3977819.SetBytes(qBytes_3977760)
    		if !q_3977819.ProbablyPrime(64) {
    			gotoNext = 3978118
    			_ = gotoNext == 3978118
    			_ = 0
    			gotoNext = 3977933
    			gotoNext = 3978139
    		} else {
    			gotoNext = 3978139
    		}
    		_ = gotoNext == 3978139
    		i_3978143 = 0
    		gotoNext = 3978139
    		_ = gotoNext == 3978139
    		if i_3978143 < 4*L_3977510 {
    			gotoNext = 3978164
    			_ = gotoNext == 3978164
    			if _, err_3978175 = io.ReadFull(rand, pBytes_3977789); err_3978175 != nil {
    				gotoNext = 3978220
    				_ = gotoNext == 3978220
    				return err_3978175
    				gotoNext = 3978246
    			} else {
    				gotoNext = 3978246
    			}
    			_ = gotoNext == 3978246
    			pBytes_3977789[len(pBytes_3977789)-1] |= 1
    			pBytes_3977789[0] |= 128
    			p_3977838.SetBytes(pBytes_3977789)
    			rem_3977857.Mod(p_3977838, q_3977819)
    			rem_3977857.Sub(rem_3977857, one_3977878)
    			p_3977838.Sub(p_3977838, rem_3977857)
    			if p_3977838.BitLen() < L_3977510 {
    				gotoNext = 3978393
    				_ = gotoNext == 3978393
    				i_3978143++
    				gotoNext = 3978139
    				gotoNext = 3978417
    			} else {
    				gotoNext = 3978417
    			}
    			_ = gotoNext == 3978417
    			if !p_3977838.ProbablyPrime(64) {
    				gotoNext = 3978449
    				_ = gotoNext == 3978449
    				i_3978143++
    				gotoNext = 3978139
    				gotoNext = 3978473
    			} else {
    				gotoNext = 3978473
    			}
    			_ = gotoNext == 3978473
    			params.P = p_3977838
    			params.Q = q_3977819
    			GeneratePrimesBreak = true
    			gotoNext = 3977933
    			i_3978143++
    			gotoNext = 3978139
    		} else {
    			gotoNext = 3977933
    		}
    		gotoNext = 3977933
    	} else {
    		gotoNext = 3978535
    	}
    	_ = gotoNext == 3978535
    	h_3978535 = new(big.Int)
    	h_3978535.SetInt64(2)
    	g_3978569 = new(big.Int)
    	pm1_3978589 = new(big.Int).Sub(p_3977838, one_3977878)
    	e_3978622 = new(big.Int).Div(pm1_3978589, q_3977819)
    	_ = 0
    	gotoNext = 3978654
    	_ = gotoNext == 3978654
    	if true {
    		gotoNext = 3978658
    		_ = gotoNext == 3978658
    		g_3978569.Exp(h_3978535, e_3978622, p_3977838)
    		if g_3978569.Cmp(one_3977878) == 0 {
    			gotoNext = 3978698
    			_ = gotoNext == 3978698
    			h_3978535.Add(h_3978535, one_3977878)
    			_ = 0
    			gotoNext = 3978654
    			gotoNext = 3978736
    		} else {
    			gotoNext = 3978736
    		}
    		_ = gotoNext == 3978736
    		params.G = g_3978569
    		return nil
    		gotoNext = 3978654
    	} else {
    		gotoNext = 3978765
    	}
    	_ = gotoNext == 3978765
    	gotoNext = -1
    }*|/
**/
class Dsa {
    /**
        GenerateParameters puts a random, valid set of DSA parameters into params.
        This function can take many seconds, even on fast machines.
    **/
    static public function generateParameters(_params:Parameters, _rand:stdgo._internal.io.Io_Reader.Reader, _sizes:ParameterSizes):stdgo.Error {
        return stdgo._internal.crypto.dsa.Dsa_generateParameters.generateParameters(_params, _rand, _sizes);
    }
    /**
        GenerateKey generates a public&private key pair. The Parameters of the
        PrivateKey must already be valid (see GenerateParameters).
    **/
    static public function generateKey(_priv:PrivateKey, _rand:stdgo._internal.io.Io_Reader.Reader):stdgo.Error {
        return stdgo._internal.crypto.dsa.Dsa_generateKey.generateKey(_priv, _rand);
    }
    /**
        Sign signs an arbitrary length hash (which should be the result of hashing a
        larger message) using the private key, priv. It returns the signature as a
        pair of integers. The security of the private key depends on the entropy of
        rand.
        
        Note that FIPS 186-3 section 4.6 specifies that the hash should be truncated
        to the byte-length of the subgroup. This function does not perform that
        truncation itself.
        
        Be aware that calling Sign with an attacker-controlled PrivateKey may
        require an arbitrary amount of CPU.
    **/
    static public function sign(_rand:stdgo._internal.io.Io_Reader.Reader, _priv:PrivateKey, _hash:Array<std.UInt>):stdgo.Tuple.Tuple3<stdgo._internal.math.big.Big_Int_.Int_, stdgo._internal.math.big.Big_Int_.Int_, stdgo.Error> {
        final _hash = ([for (i in _hash) i] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.crypto.dsa.Dsa_sign.sign(_rand, _priv, _hash);
            { _0 : obj._0, _1 : obj._1, _2 : obj._2 };
        };
    }
    /**
        Verify verifies the signature in r, s of hash using the public key, pub. It
        reports whether the signature is valid.
        
        Note that FIPS 186-3 section 4.6 specifies that the hash should be truncated
        to the byte-length of the subgroup. This function does not perform that
        truncation itself.
    **/
    static public function verify(_pub:PublicKey, _hash:Array<std.UInt>, _r:stdgo._internal.math.big.Big_Int_.Int_, _s:stdgo._internal.math.big.Big_Int_.Int_):Bool {
        final _hash = ([for (i in _hash) i] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.crypto.dsa.Dsa_verify.verify(_pub, _hash, _r, _s);
    }
}
