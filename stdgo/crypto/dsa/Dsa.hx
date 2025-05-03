package stdgo.crypto.dsa;
var l1024N160 : ParameterSizes = 0i64;
var l2048N224 : ParameterSizes = 1i64;
var l2048N256 : ParameterSizes = 2i64;
var l3072N256 : ParameterSizes = 3i64;
var errInvalidPublicKey(get, set) : stdgo.Error;
private function get_errInvalidPublicKey():stdgo.Error return stdgo._internal.crypto.dsa.Dsa_errinvalidpublickey.errInvalidPublicKey;
private function set_errInvalidPublicKey(v:stdgo.Error):stdgo.Error {
        stdgo._internal.crypto.dsa.Dsa_errinvalidpublickey.errInvalidPublicKey = v;
        return v;
    }
typedef Parameters = stdgo._internal.crypto.dsa.Dsa_parameters.Parameters;
typedef PublicKey = stdgo._internal.crypto.dsa.Dsa_publickey.PublicKey;
typedef PrivateKey = stdgo._internal.crypto.dsa.Dsa_privatekey.PrivateKey;
typedef ParameterSizes = stdgo._internal.crypto.dsa.Dsa_parametersizes.ParameterSizes;
typedef ParametersPointer = stdgo._internal.crypto.dsa.Dsa_parameterspointer.ParametersPointer;
typedef PublicKeyPointer = stdgo._internal.crypto.dsa.Dsa_publickeypointer.PublicKeyPointer;
typedef PrivateKeyPointer = stdgo._internal.crypto.dsa.Dsa_privatekeypointer.PrivateKeyPointer;
typedef ParameterSizesPointer = stdgo._internal.crypto.dsa.Dsa_parametersizespointer.ParameterSizesPointer;
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
    static public inline function generateParameters(_params:stdgo.Ref<stdgo._internal.crypto.dsa.Dsa_parameters.Parameters>, _rand:stdgo._internal.io.Io_reader.Reader, _sizes:ParameterSizes):stdgo.Error return stdgo._internal.crypto.dsa.Dsa_generateparameters.generateParameters(_params, _rand, _sizes);
    /**
        * GenerateKey generates a public&private key pair. The Parameters of the
        * PrivateKey must already be valid (see GenerateParameters).
    **/
    static public inline function generateKey(_priv:stdgo.Ref<stdgo._internal.crypto.dsa.Dsa_privatekey.PrivateKey>, _rand:stdgo._internal.io.Io_reader.Reader):stdgo.Error return stdgo._internal.crypto.dsa.Dsa_generatekey.generateKey(_priv, _rand);
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
    static public inline function sign(_rand:stdgo._internal.io.Io_reader.Reader, _priv:stdgo.Ref<stdgo._internal.crypto.dsa.Dsa_privatekey.PrivateKey>, _hash:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>; var _1 : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>; var _2 : stdgo.Error; } return stdgo._internal.crypto.dsa.Dsa_sign.sign(_rand, _priv, _hash);
    /**
        * Verify verifies the signature in r, s of hash using the public key, pub. It
        * reports whether the signature is valid.
        * 
        * Note that FIPS 186-3 section 4.6 specifies that the hash should be truncated
        * to the byte-length of the subgroup. This function does not perform that
        * truncation itself.
    **/
    static public inline function verify(_pub:stdgo.Ref<stdgo._internal.crypto.dsa.Dsa_publickey.PublicKey>, _hash:stdgo.Slice<stdgo.GoUInt8>, _r:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>, _s:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>):Bool return stdgo._internal.crypto.dsa.Dsa_verify.verify(_pub, _hash, _r, _s);
}
