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
    Package dsa implements the Digital Signature Algorithm, as defined in FIPS 186-3.
    
    The DSA operations in this package are not implemented using constant-time algorithms.
    
    Deprecated: DSA is a legacy algorithm, and modern alternatives such as
    Ed25519 (implemented by package crypto/ed25519) should be used instead. Keys
    with 1024-bit moduli (L1024N160 parameters) are cryptographically weak, while
    bigger keys are not widely supported. Note that FIPS 186-5 no longer approves
    DSA for signature generation.
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
