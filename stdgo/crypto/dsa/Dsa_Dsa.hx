package stdgo.crypto.dsa;
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
    static public inline function generateParameters(_params:Parameters, _rand:stdgo._internal.io.Io_Reader.Reader, _sizes:ParameterSizes):stdgo.Error {
        final _params = (_params : stdgo.Ref<stdgo._internal.crypto.dsa.Dsa_Parameters.Parameters>);
        return stdgo._internal.crypto.dsa.Dsa_generateParameters.generateParameters(_params, _rand, _sizes);
    }
    /**
        GenerateKey generates a public&private key pair. The Parameters of the
        PrivateKey must already be valid (see GenerateParameters).
    **/
    static public inline function generateKey(_priv:PrivateKey, _rand:stdgo._internal.io.Io_Reader.Reader):stdgo.Error {
        final _priv = (_priv : stdgo.Ref<stdgo._internal.crypto.dsa.Dsa_PrivateKey.PrivateKey>);
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
    static public inline function sign(_rand:stdgo._internal.io.Io_Reader.Reader, _priv:PrivateKey, _hash:Array<std.UInt>):stdgo.Tuple.Tuple3<stdgo._internal.math.big.Big_Int_.Int_, stdgo._internal.math.big.Big_Int_.Int_, stdgo.Error> {
        final _priv = (_priv : stdgo.Ref<stdgo._internal.crypto.dsa.Dsa_PrivateKey.PrivateKey>);
        final _hash = ([for (i in _hash) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
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
    static public inline function verify(_pub:PublicKey, _hash:Array<std.UInt>, _r:stdgo._internal.math.big.Big_Int_.Int_, _s:stdgo._internal.math.big.Big_Int_.Int_):Bool {
        final _pub = (_pub : stdgo.Ref<stdgo._internal.crypto.dsa.Dsa_PublicKey.PublicKey>);
        final _hash = ([for (i in _hash) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _r = (_r : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
        final _s = (_s : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
        return stdgo._internal.crypto.dsa.Dsa_verify.verify(_pub, _hash, _r, _s);
    }
}
