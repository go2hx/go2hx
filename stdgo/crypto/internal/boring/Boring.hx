package stdgo.crypto.internal.boring;
var enabled : Bool = false;
var randReader : stdgo._internal.crypto.internal.boring.Boring_t_randreader.T_randReader = 0i32;
typedef PublicKeyECDSA = stdgo._internal.crypto.internal.boring.Boring_publickeyecdsa.PublicKeyECDSA;
typedef PrivateKeyECDSA = stdgo._internal.crypto.internal.boring.Boring_privatekeyecdsa.PrivateKeyECDSA;
typedef PublicKeyRSA = stdgo._internal.crypto.internal.boring.Boring_publickeyrsa.PublicKeyRSA;
typedef PrivateKeyRSA = stdgo._internal.crypto.internal.boring.Boring_privatekeyrsa.PrivateKeyRSA;
typedef PublicKeyECDH = stdgo._internal.crypto.internal.boring.Boring_publickeyecdh.PublicKeyECDH;
typedef PrivateKeyECDH = stdgo._internal.crypto.internal.boring.Boring_privatekeyecdh.PrivateKeyECDH;
typedef BigInt = stdgo._internal.crypto.internal.boring.Boring_bigint.BigInt;
typedef PublicKeyECDSAPointer = stdgo._internal.crypto.internal.boring.Boring_publickeyecdsapointer.PublicKeyECDSAPointer;
typedef PrivateKeyECDSAPointer = stdgo._internal.crypto.internal.boring.Boring_privatekeyecdsapointer.PrivateKeyECDSAPointer;
typedef PublicKeyRSAPointer = stdgo._internal.crypto.internal.boring.Boring_publickeyrsapointer.PublicKeyRSAPointer;
typedef PrivateKeyRSAPointer = stdgo._internal.crypto.internal.boring.Boring_privatekeyrsapointer.PrivateKeyRSAPointer;
typedef PublicKeyECDHPointer = stdgo._internal.crypto.internal.boring.Boring_publickeyecdhpointer.PublicKeyECDHPointer;
typedef PrivateKeyECDHPointer = stdgo._internal.crypto.internal.boring.Boring_privatekeyecdhpointer.PrivateKeyECDHPointer;
typedef BigIntPointer = stdgo._internal.crypto.internal.boring.Boring_bigintpointer.BigIntPointer;
/**
    * Package boring provides access to BoringCrypto implementation functions.
    * Check the constant Enabled to find out whether BoringCrypto is available.
    * If BoringCrypto is not available, the functions in this package all panic.
**/
class Boring {
    /**
        * Unreachable marks code that should be unreachable
        * when BoringCrypto is in use. It is a no-op without BoringCrypto.
    **/
    static public inline function unreachable():Void stdgo._internal.crypto.internal.boring.Boring_unreachable.unreachable();
    /**
        * UnreachableExceptTests marks code that should be unreachable
        * when BoringCrypto is in use. It is a no-op without BoringCrypto.
    **/
    static public inline function unreachableExceptTests():Void stdgo._internal.crypto.internal.boring.Boring_unreachableexcepttests.unreachableExceptTests();
    static public inline function newSHA1():stdgo._internal.hash.Hash_hash.Hash return stdgo._internal.crypto.internal.boring.Boring_newsha1.newSHA1();
    static public inline function newSHA224():stdgo._internal.hash.Hash_hash.Hash return stdgo._internal.crypto.internal.boring.Boring_newsha224.newSHA224();
    static public inline function newSHA256():stdgo._internal.hash.Hash_hash.Hash return stdgo._internal.crypto.internal.boring.Boring_newsha256.newSHA256();
    static public inline function newSHA384():stdgo._internal.hash.Hash_hash.Hash return stdgo._internal.crypto.internal.boring.Boring_newsha384.newSHA384();
    static public inline function newSHA512():stdgo._internal.hash.Hash_hash.Hash return stdgo._internal.crypto.internal.boring.Boring_newsha512.newSHA512();
    static public inline function sHA1(_0:stdgo.Slice<stdgo.GoUInt8>):stdgo.GoArray<stdgo.GoUInt8> return stdgo._internal.crypto.internal.boring.Boring_sha1.sHA1(_0);
    static public inline function sHA224(_0:stdgo.Slice<stdgo.GoUInt8>):stdgo.GoArray<stdgo.GoUInt8> return stdgo._internal.crypto.internal.boring.Boring_sha224.sHA224(_0);
    static public inline function sHA256(_0:stdgo.Slice<stdgo.GoUInt8>):stdgo.GoArray<stdgo.GoUInt8> return stdgo._internal.crypto.internal.boring.Boring_sha256.sHA256(_0);
    static public inline function sHA384(_0:stdgo.Slice<stdgo.GoUInt8>):stdgo.GoArray<stdgo.GoUInt8> return stdgo._internal.crypto.internal.boring.Boring_sha384.sHA384(_0);
    static public inline function sHA512(_0:stdgo.Slice<stdgo.GoUInt8>):stdgo.GoArray<stdgo.GoUInt8> return stdgo._internal.crypto.internal.boring.Boring_sha512.sHA512(_0);
    static public inline function newHMAC(_h:() -> stdgo._internal.hash.Hash_hash.Hash, _key:stdgo.Slice<stdgo.GoUInt8>):stdgo._internal.hash.Hash_hash.Hash return stdgo._internal.crypto.internal.boring.Boring_newhmac.newHMAC(_h, _key);
    static public inline function newAESCipher(_key:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo._internal.crypto.cipher.Cipher_block.Block; var _1 : stdgo.Error; } return stdgo._internal.crypto.internal.boring.Boring_newaescipher.newAESCipher(_key);
    static public inline function newGCMTLS(_0:stdgo._internal.crypto.cipher.Cipher_block.Block):{ var _0 : stdgo._internal.crypto.cipher.Cipher_aead.AEAD; var _1 : stdgo.Error; } return stdgo._internal.crypto.internal.boring.Boring_newgcmtls.newGCMTLS(_0);
    static public inline function generateKeyECDSA(_curve:stdgo.GoString):{ var _0 : stdgo._internal.crypto.internal.boring.Boring_bigint.BigInt; var _1 : stdgo._internal.crypto.internal.boring.Boring_bigint.BigInt; var _2 : stdgo._internal.crypto.internal.boring.Boring_bigint.BigInt; var _3 : stdgo.Error; } return stdgo._internal.crypto.internal.boring.Boring_generatekeyecdsa.generateKeyECDSA(_curve);
    static public inline function newPrivateKeyECDSA(_curve:stdgo.GoString, x:BigInt, y:BigInt, d:BigInt):{ var _0 : stdgo.Ref<stdgo._internal.crypto.internal.boring.Boring_privatekeyecdsa.PrivateKeyECDSA>; var _1 : stdgo.Error; } return stdgo._internal.crypto.internal.boring.Boring_newprivatekeyecdsa.newPrivateKeyECDSA(_curve, x, y, d);
    static public inline function newPublicKeyECDSA(_curve:stdgo.GoString, x:BigInt, y:BigInt):{ var _0 : stdgo.Ref<stdgo._internal.crypto.internal.boring.Boring_publickeyecdsa.PublicKeyECDSA>; var _1 : stdgo.Error; } return stdgo._internal.crypto.internal.boring.Boring_newpublickeyecdsa.newPublicKeyECDSA(_curve, x, y);
    static public inline function signMarshalECDSA(_priv:stdgo.Ref<stdgo._internal.crypto.internal.boring.Boring_privatekeyecdsa.PrivateKeyECDSA>, _hash:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } return stdgo._internal.crypto.internal.boring.Boring_signmarshalecdsa.signMarshalECDSA(_priv, _hash);
    static public inline function verifyECDSA(_pub:stdgo.Ref<stdgo._internal.crypto.internal.boring.Boring_publickeyecdsa.PublicKeyECDSA>, _hash:stdgo.Slice<stdgo.GoUInt8>, _sig:stdgo.Slice<stdgo.GoUInt8>):Bool return stdgo._internal.crypto.internal.boring.Boring_verifyecdsa.verifyECDSA(_pub, _hash, _sig);
    static public inline function decryptRSAOAEP(_h:stdgo._internal.hash.Hash_hash.Hash, _mgfHash:stdgo._internal.hash.Hash_hash.Hash, _priv:stdgo.Ref<stdgo._internal.crypto.internal.boring.Boring_privatekeyrsa.PrivateKeyRSA>, _ciphertext:stdgo.Slice<stdgo.GoUInt8>, _label:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } return stdgo._internal.crypto.internal.boring.Boring_decryptrsaoaep.decryptRSAOAEP(_h, _mgfHash, _priv, _ciphertext, _label);
    static public inline function decryptRSAPKCS1(_priv:stdgo.Ref<stdgo._internal.crypto.internal.boring.Boring_privatekeyrsa.PrivateKeyRSA>, _ciphertext:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } return stdgo._internal.crypto.internal.boring.Boring_decryptrsapkcs1.decryptRSAPKCS1(_priv, _ciphertext);
    static public inline function decryptRSANoPadding(_priv:stdgo.Ref<stdgo._internal.crypto.internal.boring.Boring_privatekeyrsa.PrivateKeyRSA>, _ciphertext:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } return stdgo._internal.crypto.internal.boring.Boring_decryptrsanopadding.decryptRSANoPadding(_priv, _ciphertext);
    static public inline function encryptRSAOAEP(_h:stdgo._internal.hash.Hash_hash.Hash, _mgfHash:stdgo._internal.hash.Hash_hash.Hash, _pub:stdgo.Ref<stdgo._internal.crypto.internal.boring.Boring_publickeyrsa.PublicKeyRSA>, _msg:stdgo.Slice<stdgo.GoUInt8>, _label:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } return stdgo._internal.crypto.internal.boring.Boring_encryptrsaoaep.encryptRSAOAEP(_h, _mgfHash, _pub, _msg, _label);
    static public inline function encryptRSAPKCS1(_pub:stdgo.Ref<stdgo._internal.crypto.internal.boring.Boring_publickeyrsa.PublicKeyRSA>, _msg:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } return stdgo._internal.crypto.internal.boring.Boring_encryptrsapkcs1.encryptRSAPKCS1(_pub, _msg);
    static public inline function encryptRSANoPadding(_pub:stdgo.Ref<stdgo._internal.crypto.internal.boring.Boring_publickeyrsa.PublicKeyRSA>, _msg:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } return stdgo._internal.crypto.internal.boring.Boring_encryptrsanopadding.encryptRSANoPadding(_pub, _msg);
    static public inline function generateKeyRSA(_bits:stdgo.GoInt):{ var _0 : stdgo._internal.crypto.internal.boring.Boring_bigint.BigInt; var _1 : stdgo._internal.crypto.internal.boring.Boring_bigint.BigInt; var _2 : stdgo._internal.crypto.internal.boring.Boring_bigint.BigInt; var _3 : stdgo._internal.crypto.internal.boring.Boring_bigint.BigInt; var _4 : stdgo._internal.crypto.internal.boring.Boring_bigint.BigInt; var _5 : stdgo._internal.crypto.internal.boring.Boring_bigint.BigInt; var _6 : stdgo._internal.crypto.internal.boring.Boring_bigint.BigInt; var _7 : stdgo._internal.crypto.internal.boring.Boring_bigint.BigInt; var _8 : stdgo.Error; } return stdgo._internal.crypto.internal.boring.Boring_generatekeyrsa.generateKeyRSA(_bits);
    static public inline function newPrivateKeyRSA(n:BigInt, e:BigInt, d:BigInt, p:BigInt, q:BigInt, dp:BigInt, dq:BigInt, qinv:BigInt):{ var _0 : stdgo.Ref<stdgo._internal.crypto.internal.boring.Boring_privatekeyrsa.PrivateKeyRSA>; var _1 : stdgo.Error; } return stdgo._internal.crypto.internal.boring.Boring_newprivatekeyrsa.newPrivateKeyRSA(n, e, d, p, q, dp, dq, qinv);
    static public inline function newPublicKeyRSA(n:BigInt, e:BigInt):{ var _0 : stdgo.Ref<stdgo._internal.crypto.internal.boring.Boring_publickeyrsa.PublicKeyRSA>; var _1 : stdgo.Error; } return stdgo._internal.crypto.internal.boring.Boring_newpublickeyrsa.newPublicKeyRSA(n, e);
    static public inline function signRSAPKCS1v15(_priv:stdgo.Ref<stdgo._internal.crypto.internal.boring.Boring_privatekeyrsa.PrivateKeyRSA>, _h:stdgo._internal.crypto.Crypto_hash.Hash, _hashed:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } return stdgo._internal.crypto.internal.boring.Boring_signrsapkcs1v15.signRSAPKCS1v15(_priv, _h, _hashed);
    static public inline function signRSAPSS(_priv:stdgo.Ref<stdgo._internal.crypto.internal.boring.Boring_privatekeyrsa.PrivateKeyRSA>, _h:stdgo._internal.crypto.Crypto_hash.Hash, _hashed:stdgo.Slice<stdgo.GoUInt8>, _saltLen:stdgo.GoInt):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } return stdgo._internal.crypto.internal.boring.Boring_signrsapss.signRSAPSS(_priv, _h, _hashed, _saltLen);
    static public inline function verifyRSAPKCS1v15(_pub:stdgo.Ref<stdgo._internal.crypto.internal.boring.Boring_publickeyrsa.PublicKeyRSA>, _h:stdgo._internal.crypto.Crypto_hash.Hash, _hashed:stdgo.Slice<stdgo.GoUInt8>, _sig:stdgo.Slice<stdgo.GoUInt8>):stdgo.Error return stdgo._internal.crypto.internal.boring.Boring_verifyrsapkcs1v15.verifyRSAPKCS1v15(_pub, _h, _hashed, _sig);
    static public inline function verifyRSAPSS(_pub:stdgo.Ref<stdgo._internal.crypto.internal.boring.Boring_publickeyrsa.PublicKeyRSA>, _h:stdgo._internal.crypto.Crypto_hash.Hash, _hashed:stdgo.Slice<stdgo.GoUInt8>, _sig:stdgo.Slice<stdgo.GoUInt8>, _saltLen:stdgo.GoInt):stdgo.Error return stdgo._internal.crypto.internal.boring.Boring_verifyrsapss.verifyRSAPSS(_pub, _h, _hashed, _sig, _saltLen);
    static public inline function eCDH(_0:stdgo.Ref<stdgo._internal.crypto.internal.boring.Boring_privatekeyecdh.PrivateKeyECDH>, _1:stdgo.Ref<stdgo._internal.crypto.internal.boring.Boring_publickeyecdh.PublicKeyECDH>):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } return stdgo._internal.crypto.internal.boring.Boring_ecdh.eCDH(_0, _1);
    static public inline function generateKeyECDH(_0:stdgo.GoString):{ var _0 : stdgo.Ref<stdgo._internal.crypto.internal.boring.Boring_privatekeyecdh.PrivateKeyECDH>; var _1 : stdgo.Slice<stdgo.GoUInt8>; var _2 : stdgo.Error; } return stdgo._internal.crypto.internal.boring.Boring_generatekeyecdh.generateKeyECDH(_0);
    static public inline function newPrivateKeyECDH(_0:stdgo.GoString, _1:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.Ref<stdgo._internal.crypto.internal.boring.Boring_privatekeyecdh.PrivateKeyECDH>; var _1 : stdgo.Error; } return stdgo._internal.crypto.internal.boring.Boring_newprivatekeyecdh.newPrivateKeyECDH(_0, _1);
    static public inline function newPublicKeyECDH(_0:stdgo.GoString, _1:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.Ref<stdgo._internal.crypto.internal.boring.Boring_publickeyecdh.PublicKeyECDH>; var _1 : stdgo.Error; } return stdgo._internal.crypto.internal.boring.Boring_newpublickeyecdh.newPublicKeyECDH(_0, _1);
}
