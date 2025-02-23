package stdgo;
final l1024N160 : ParameterSizes = stdgo._internal.crypto.dsa.Dsa_l1024n160.l1024N160;
final l2048N224 = stdgo._internal.crypto.dsa.Dsa_l2048n224.l2048N224;
final l2048N256 = stdgo._internal.crypto.dsa.Dsa_l2048n256.l2048N256;
final l3072N256 = stdgo._internal.crypto.dsa.Dsa_l3072n256.l3072N256;
var errInvalidPublicKey(get, set) : stdgo.Error;
private function get_errInvalidPublicKey():stdgo.Error return stdgo._internal.crypto.dsa.Dsa_errinvalidpublickey.errInvalidPublicKey;
private function set_errInvalidPublicKey(v:stdgo.Error):stdgo.Error {
        stdgo._internal.crypto.dsa.Dsa_errinvalidpublickey.errInvalidPublicKey = (v : stdgo.Error);
        return v;
    }
@:structInit @:using(stdgo.crypto.dsa.Dsa.Parameters_static_extension) abstract Parameters(stdgo._internal.crypto.dsa.Dsa_parameters.Parameters) from stdgo._internal.crypto.dsa.Dsa_parameters.Parameters to stdgo._internal.crypto.dsa.Dsa_parameters.Parameters {
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
    public function new(?p:stdgo._internal.math.big.Big_int_.Int_, ?q:stdgo._internal.math.big.Big_int_.Int_, ?g:stdgo._internal.math.big.Big_int_.Int_) this = new stdgo._internal.crypto.dsa.Dsa_parameters.Parameters((p : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>), (q : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>), (g : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.crypto.dsa.Dsa.PublicKey_static_extension) abstract PublicKey(stdgo._internal.crypto.dsa.Dsa_publickey.PublicKey) from stdgo._internal.crypto.dsa.Dsa_publickey.PublicKey to stdgo._internal.crypto.dsa.Dsa_publickey.PublicKey {
    public var parameters(get, set) : Parameters;
    function get_parameters():Parameters return this.parameters;
    function set_parameters(v:Parameters):Parameters {
        this.parameters = v;
        return v;
    }
    public var y(get, set) : stdgo._internal.math.big.Big_int_.Int_;
    function get_y():stdgo._internal.math.big.Big_int_.Int_ return this.y;
    function set_y(v:stdgo._internal.math.big.Big_int_.Int_):stdgo._internal.math.big.Big_int_.Int_ {
        this.y = (v : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        return v;
    }
    public function new(?parameters:Parameters, ?y:stdgo._internal.math.big.Big_int_.Int_) this = new stdgo._internal.crypto.dsa.Dsa_publickey.PublicKey(parameters, (y : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.crypto.dsa.Dsa.PrivateKey_static_extension) abstract PrivateKey(stdgo._internal.crypto.dsa.Dsa_privatekey.PrivateKey) from stdgo._internal.crypto.dsa.Dsa_privatekey.PrivateKey to stdgo._internal.crypto.dsa.Dsa_privatekey.PrivateKey {
    public var publicKey(get, set) : PublicKey;
    function get_publicKey():PublicKey return this.publicKey;
    function set_publicKey(v:PublicKey):PublicKey {
        this.publicKey = v;
        return v;
    }
    public var x(get, set) : stdgo._internal.math.big.Big_int_.Int_;
    function get_x():stdgo._internal.math.big.Big_int_.Int_ return this.x;
    function set_x(v:stdgo._internal.math.big.Big_int_.Int_):stdgo._internal.math.big.Big_int_.Int_ {
        this.x = (v : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        return v;
    }
    public function new(?publicKey:PublicKey, ?x:stdgo._internal.math.big.Big_int_.Int_) this = new stdgo._internal.crypto.dsa.Dsa_privatekey.PrivateKey(publicKey, (x : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
typedef ParameterSizes = stdgo._internal.crypto.dsa.Dsa_parametersizes.ParameterSizes;
typedef ParametersPointer = stdgo._internal.crypto.dsa.Dsa_parameterspointer.ParametersPointer;
class Parameters_static_extension {

}
typedef PublicKeyPointer = stdgo._internal.crypto.dsa.Dsa_publickeypointer.PublicKeyPointer;
class PublicKey_static_extension {

}
typedef PrivateKeyPointer = stdgo._internal.crypto.dsa.Dsa_privatekeypointer.PrivateKeyPointer;
class PrivateKey_static_extension {

}
typedef ParameterSizesPointer = stdgo._internal.crypto.dsa.Dsa_parametersizespointer.ParameterSizesPointer;
class ParameterSizes_static_extension {

}
/**
    * Package dsa implements the Digital Signature Algorithm, as defined in FIPS 186-3.
    * 
    * The DSA operations in this package are not implemented using constant-time algorithms.
    * 
    * Deprecated: DSA is a legacy algorithm, and modern alternatives such as
    * Ed25519 (implemented by package crypto/ed25519) should be used instead. Keys
    * with 1024-bit moduli (L1024N160 parameters) are cryptographically weak, while
    * bigger keys are not widely supported. Note that FIPS 186-5 no longer approves
    * DSA for signature generation.
**/
class Dsa {
    /**
        * GenerateParameters puts a random, valid set of DSA parameters into params.
        * This function can take many seconds, even on fast machines.
    **/
    static public inline function generateParameters(_params:Parameters, _rand:stdgo._internal.io.Io_reader.Reader, _sizes:ParameterSizes):stdgo.Error {
        final _params = (_params : stdgo.Ref<stdgo._internal.crypto.dsa.Dsa_parameters.Parameters>);
        return stdgo._internal.crypto.dsa.Dsa_generateparameters.generateParameters(_params, _rand, _sizes);
    }
    /**
        * GenerateKey generates a public&private key pair. The Parameters of the
        * PrivateKey must already be valid (see GenerateParameters).
    **/
    static public inline function generateKey(_priv:PrivateKey, _rand:stdgo._internal.io.Io_reader.Reader):stdgo.Error {
        final _priv = (_priv : stdgo.Ref<stdgo._internal.crypto.dsa.Dsa_privatekey.PrivateKey>);
        return stdgo._internal.crypto.dsa.Dsa_generatekey.generateKey(_priv, _rand);
    }
    /**
        * Sign signs an arbitrary length hash (which should be the result of hashing a
        * larger message) using the private key, priv. It returns the signature as a
        * pair of integers. The security of the private key depends on the entropy of
        * rand.
        * 
        * Note that FIPS 186-3 section 4.6 specifies that the hash should be truncated
        * to the byte-length of the subgroup. This function does not perform that
        * truncation itself.
        * 
        * Be aware that calling Sign with an attacker-controlled PrivateKey may
        * require an arbitrary amount of CPU.
    **/
    static public inline function sign(_rand:stdgo._internal.io.Io_reader.Reader, _priv:PrivateKey, _hash:Array<std.UInt>):stdgo.Tuple.Tuple3<stdgo._internal.math.big.Big_int_.Int_, stdgo._internal.math.big.Big_int_.Int_, stdgo.Error> {
        final _priv = (_priv : stdgo.Ref<stdgo._internal.crypto.dsa.Dsa_privatekey.PrivateKey>);
        final _hash = ([for (i in _hash) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.crypto.dsa.Dsa_sign.sign(_rand, _priv, _hash);
            { _0 : obj._0, _1 : obj._1, _2 : obj._2 };
        };
    }
    /**
        * Verify verifies the signature in r, s of hash using the public key, pub. It
        * reports whether the signature is valid.
        * 
        * Note that FIPS 186-3 section 4.6 specifies that the hash should be truncated
        * to the byte-length of the subgroup. This function does not perform that
        * truncation itself.
    **/
    static public inline function verify(_pub:PublicKey, _hash:Array<std.UInt>, _r:stdgo._internal.math.big.Big_int_.Int_, _s:stdgo._internal.math.big.Big_int_.Int_):Bool {
        final _pub = (_pub : stdgo.Ref<stdgo._internal.crypto.dsa.Dsa_publickey.PublicKey>);
        final _hash = ([for (i in _hash) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _r = (_r : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        final _s = (_s : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        return stdgo._internal.crypto.dsa.Dsa_verify.verify(_pub, _hash, _r, _s);
    }
}
