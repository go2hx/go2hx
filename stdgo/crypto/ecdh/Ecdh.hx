package stdgo.crypto.ecdh;
typedef Curve = stdgo._internal.crypto.ecdh.Ecdh_curve.Curve;
typedef PublicKey = stdgo._internal.crypto.ecdh.Ecdh_publickey.PublicKey;
typedef PrivateKey = stdgo._internal.crypto.ecdh.Ecdh_privatekey.PrivateKey;
typedef PublicKeyPointer = stdgo._internal.crypto.ecdh.Ecdh_publickeypointer.PublicKeyPointer;
typedef PrivateKeyPointer = stdgo._internal.crypto.ecdh.Ecdh_privatekeypointer.PrivateKeyPointer;
/**
    * Package ecdh implements Elliptic Curve Diffie-Hellman over
    * NIST curves and Curve25519.
**/
class Ecdh {
    /**
        * P256 returns a Curve which implements NIST P-256 (FIPS 186-3, section D.2.3),
        * also known as secp256r1 or prime256v1.
        * 
        * Multiple invocations of this function will return the same value, which can
        * be used for equality checks and switch statements.
    **/
    static public inline function p256():stdgo._internal.crypto.ecdh.Ecdh_curve.Curve return stdgo._internal.crypto.ecdh.Ecdh_p256.p256();
    /**
        * P384 returns a Curve which implements NIST P-384 (FIPS 186-3, section D.2.4),
        * also known as secp384r1.
        * 
        * Multiple invocations of this function will return the same value, which can
        * be used for equality checks and switch statements.
    **/
    static public inline function p384():stdgo._internal.crypto.ecdh.Ecdh_curve.Curve return stdgo._internal.crypto.ecdh.Ecdh_p384.p384();
    /**
        * P521 returns a Curve which implements NIST P-521 (FIPS 186-3, section D.2.5),
        * also known as secp521r1.
        * 
        * Multiple invocations of this function will return the same value, which can
        * be used for equality checks and switch statements.
    **/
    static public inline function p521():stdgo._internal.crypto.ecdh.Ecdh_curve.Curve return stdgo._internal.crypto.ecdh.Ecdh_p521.p521();
    /**
        * X25519 returns a Curve which implements the X25519 function over Curve25519
        * (RFC 7748, Section 5).
        * 
        * Multiple invocations of this function will return the same value, so it can
        * be used for equality checks and switch statements.
    **/
    static public inline function x25519():stdgo._internal.crypto.ecdh.Ecdh_curve.Curve return stdgo._internal.crypto.ecdh.Ecdh_x25519.x25519();
}
