package stdgo.crypto.rsa;
var pSSSaltLengthAuto : stdgo.GoUInt64 = 0i32;
var pSSSaltLengthEqualsHash : stdgo.GoUInt64 = -1i32;
var errMessageTooLong(get, set) : stdgo.Error;
private function get_errMessageTooLong():stdgo.Error return stdgo._internal.crypto.rsa.Rsa_errmessagetoolong.errMessageTooLong;
private function set_errMessageTooLong(v:stdgo.Error):stdgo.Error {
        stdgo._internal.crypto.rsa.Rsa_errmessagetoolong.errMessageTooLong = v;
        return v;
    }
var errDecryption(get, set) : stdgo.Error;
private function get_errDecryption():stdgo.Error return stdgo._internal.crypto.rsa.Rsa_errdecryption.errDecryption;
private function set_errDecryption(v:stdgo.Error):stdgo.Error {
        stdgo._internal.crypto.rsa.Rsa_errdecryption.errDecryption = v;
        return v;
    }
var errVerification(get, set) : stdgo.Error;
private function get_errVerification():stdgo.Error return stdgo._internal.crypto.rsa.Rsa_errverification.errVerification;
private function set_errVerification(v:stdgo.Error):stdgo.Error {
        stdgo._internal.crypto.rsa.Rsa_errverification.errVerification = v;
        return v;
    }
typedef PKCS1v15DecryptOptions = stdgo._internal.crypto.rsa.Rsa_pkcs1v15decryptoptions.PKCS1v15DecryptOptions;
typedef PSSOptions = stdgo._internal.crypto.rsa.Rsa_pssoptions.PSSOptions;
typedef PublicKey = stdgo._internal.crypto.rsa.Rsa_publickey.PublicKey;
typedef OAEPOptions = stdgo._internal.crypto.rsa.Rsa_oaepoptions.OAEPOptions;
typedef PrivateKey = stdgo._internal.crypto.rsa.Rsa_privatekey.PrivateKey;
typedef PrecomputedValues = stdgo._internal.crypto.rsa.Rsa_precomputedvalues.PrecomputedValues;
typedef CRTValue = stdgo._internal.crypto.rsa.Rsa_crtvalue.CRTValue;
typedef PKCS1v15DecryptOptionsPointer = stdgo._internal.crypto.rsa.Rsa_pkcs1v15decryptoptionspointer.PKCS1v15DecryptOptionsPointer;
typedef PSSOptionsPointer = stdgo._internal.crypto.rsa.Rsa_pssoptionspointer.PSSOptionsPointer;
typedef PublicKeyPointer = stdgo._internal.crypto.rsa.Rsa_publickeypointer.PublicKeyPointer;
typedef OAEPOptionsPointer = stdgo._internal.crypto.rsa.Rsa_oaepoptionspointer.OAEPOptionsPointer;
typedef PrivateKeyPointer = stdgo._internal.crypto.rsa.Rsa_privatekeypointer.PrivateKeyPointer;
typedef PrecomputedValuesPointer = stdgo._internal.crypto.rsa.Rsa_precomputedvaluespointer.PrecomputedValuesPointer;
typedef CRTValuePointer = stdgo._internal.crypto.rsa.Rsa_crtvaluepointer.CRTValuePointer;
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
    static public inline function encryptPKCS1v15(_random:stdgo._internal.io.Io_reader.Reader, _pub:stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_publickey.PublicKey>, _msg:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } return stdgo._internal.crypto.rsa.Rsa_encryptpkcs1v15.encryptPKCS1v15(_random, _pub, _msg);
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
    static public inline function decryptPKCS1v15(_random:stdgo._internal.io.Io_reader.Reader, _priv:stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_privatekey.PrivateKey>, _ciphertext:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } return stdgo._internal.crypto.rsa.Rsa_decryptpkcs1v15.decryptPKCS1v15(_random, _priv, _ciphertext);
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
    static public inline function decryptPKCS1v15SessionKey(_random:stdgo._internal.io.Io_reader.Reader, _priv:stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_privatekey.PrivateKey>, _ciphertext:stdgo.Slice<stdgo.GoUInt8>, _key:stdgo.Slice<stdgo.GoUInt8>):stdgo.Error return stdgo._internal.crypto.rsa.Rsa_decryptpkcs1v15sessionkey.decryptPKCS1v15SessionKey(_random, _priv, _ciphertext, _key);
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
    static public inline function signPKCS1v15(_random:stdgo._internal.io.Io_reader.Reader, _priv:stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_privatekey.PrivateKey>, _hash:stdgo._internal.crypto.Crypto_hash.Hash, _hashed:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } return stdgo._internal.crypto.rsa.Rsa_signpkcs1v15.signPKCS1v15(_random, _priv, _hash, _hashed);
    /**
        * VerifyPKCS1v15 verifies an RSA PKCS #1 v1.5 signature.
        * hashed is the result of hashing the input message using the given hash
        * function and sig is the signature. A valid signature is indicated by
        * returning a nil error. If hash is zero then hashed is used directly. This
        * isn't advisable except for interoperability.
    **/
    static public inline function verifyPKCS1v15(_pub:stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_publickey.PublicKey>, _hash:stdgo._internal.crypto.Crypto_hash.Hash, _hashed:stdgo.Slice<stdgo.GoUInt8>, _sig:stdgo.Slice<stdgo.GoUInt8>):stdgo.Error return stdgo._internal.crypto.rsa.Rsa_verifypkcs1v15.verifyPKCS1v15(_pub, _hash, _hashed, _sig);
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
    static public inline function signPSS(_rand:stdgo._internal.io.Io_reader.Reader, _priv:stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_privatekey.PrivateKey>, _hash:stdgo._internal.crypto.Crypto_hash.Hash, _digest:stdgo.Slice<stdgo.GoUInt8>, _opts:stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_pssoptions.PSSOptions>):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } return stdgo._internal.crypto.rsa.Rsa_signpss.signPSS(_rand, _priv, _hash, _digest, _opts);
    /**
        * VerifyPSS verifies a PSS signature.
        * 
        * A valid signature is indicated by returning a nil error. digest must be the
        * result of hashing the input message using the given hash function. The opts
        * argument may be nil, in which case sensible defaults are used. opts.Hash is
        * ignored.
    **/
    static public inline function verifyPSS(_pub:stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_publickey.PublicKey>, _hash:stdgo._internal.crypto.Crypto_hash.Hash, _digest:stdgo.Slice<stdgo.GoUInt8>, _sig:stdgo.Slice<stdgo.GoUInt8>, _opts:stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_pssoptions.PSSOptions>):stdgo.Error return stdgo._internal.crypto.rsa.Rsa_verifypss.verifyPSS(_pub, _hash, _digest, _sig, _opts);
    /**
        * GenerateKey generates a random RSA private key of the given bit size.
        * 
        * Most applications should use [crypto/rand.Reader] as rand. Note that the
        * returned key does not depend deterministically on the bytes read from rand,
        * and may change between calls and/or between versions.
    **/
    static public inline function generateKey(_random:stdgo._internal.io.Io_reader.Reader, _bits:stdgo.GoInt):{ var _0 : stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_privatekey.PrivateKey>; var _1 : stdgo.Error; } return stdgo._internal.crypto.rsa.Rsa_generatekey.generateKey(_random, _bits);
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
    static public inline function generateMultiPrimeKey(_random:stdgo._internal.io.Io_reader.Reader, _nprimes:stdgo.GoInt, _bits:stdgo.GoInt):{ var _0 : stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_privatekey.PrivateKey>; var _1 : stdgo.Error; } return stdgo._internal.crypto.rsa.Rsa_generatemultiprimekey.generateMultiPrimeKey(_random, _nprimes, _bits);
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
    static public inline function encryptOAEP(_hash:stdgo._internal.hash.Hash_hash.Hash, _random:stdgo._internal.io.Io_reader.Reader, _pub:stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_publickey.PublicKey>, _msg:stdgo.Slice<stdgo.GoUInt8>, _label:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } return stdgo._internal.crypto.rsa.Rsa_encryptoaep.encryptOAEP(_hash, _random, _pub, _msg, _label);
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
    static public inline function decryptOAEP(_hash:stdgo._internal.hash.Hash_hash.Hash, _random:stdgo._internal.io.Io_reader.Reader, _priv:stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_privatekey.PrivateKey>, _ciphertext:stdgo.Slice<stdgo.GoUInt8>, _label:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } return stdgo._internal.crypto.rsa.Rsa_decryptoaep.decryptOAEP(_hash, _random, _priv, _ciphertext, _label);
}
