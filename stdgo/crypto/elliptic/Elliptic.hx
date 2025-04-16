package stdgo.crypto.elliptic;
typedef Curve = stdgo._internal.crypto.elliptic.Elliptic_curve.Curve;
typedef CurveParams = stdgo._internal.crypto.elliptic.Elliptic_curveparams.CurveParams;
typedef CurveParamsPointer = stdgo._internal.crypto.elliptic.Elliptic_curveparamspointer.CurveParamsPointer;
/**
    * Package elliptic implements the standard NIST P-224, P-256, P-384, and P-521
    * elliptic curves over prime fields.
    * 
    * Direct use of this package is deprecated, beyond the [P224], [P256], [P384],
    * and [P521] values necessary to use [crypto/ecdsa]. Most other uses
    * should migrate to the more efficient and safer [crypto/ecdh], or to
    * third-party modules for lower-level functionality.
**/
class Elliptic {
    /**
        * GenerateKey returns a public/private key pair. The private key is
        * generated using the given reader, which must return random data.
        * 
        * Deprecated: for ECDH, use the GenerateKey methods of the crypto/ecdh package;
        * for ECDSA, use the GenerateKey function of the crypto/ecdsa package.
    **/
    static public inline function generateKey(_curve:Curve, _rand:stdgo._internal.io.Io_reader.Reader):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>; var _2 : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>; var _3 : stdgo.Error; } return stdgo._internal.crypto.elliptic.Elliptic_generatekey.generateKey(_curve, _rand);
    /**
        * Marshal converts a point on the curve into the uncompressed form specified in
        * SEC 1, Version 2.0, Section 2.3.3. If the point is not on the curve (or is
        * the conventional point at infinity), the behavior is undefined.
        * 
        * Deprecated: for ECDH, use the crypto/ecdh package. This function returns an
        * encoding equivalent to that of PublicKey.Bytes in crypto/ecdh.
    **/
    static public inline function marshal(_curve:Curve, _x:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>, _y:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>):stdgo.Slice<stdgo.GoUInt8> return stdgo._internal.crypto.elliptic.Elliptic_marshal.marshal(_curve, _x, _y);
    /**
        * MarshalCompressed converts a point on the curve into the compressed form
        * specified in SEC 1, Version 2.0, Section 2.3.3. If the point is not on the
        * curve (or is the conventional point at infinity), the behavior is undefined.
    **/
    static public inline function marshalCompressed(_curve:Curve, _x:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>, _y:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>):stdgo.Slice<stdgo.GoUInt8> return stdgo._internal.crypto.elliptic.Elliptic_marshalcompressed.marshalCompressed(_curve, _x, _y);
    /**
        * Unmarshal converts a point, serialized by Marshal, into an x, y pair. It is
        * an error if the point is not in uncompressed form, is not on the curve, or is
        * the point at infinity. On error, x = nil.
        * 
        * Deprecated: for ECDH, use the crypto/ecdh package. This function accepts an
        * encoding equivalent to that of the NewPublicKey methods in crypto/ecdh.
    **/
    static public inline function unmarshal(_curve:Curve, _data:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>; var _1 : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>; } return stdgo._internal.crypto.elliptic.Elliptic_unmarshal.unmarshal(_curve, _data);
    /**
        * UnmarshalCompressed converts a point, serialized by MarshalCompressed, into
        * an x, y pair. It is an error if the point is not in compressed form, is not
        * on the curve, or is the point at infinity. On error, x = nil.
    **/
    static public inline function unmarshalCompressed(_curve:Curve, _data:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>; var _1 : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>; } return stdgo._internal.crypto.elliptic.Elliptic_unmarshalcompressed.unmarshalCompressed(_curve, _data);
    /**
        * P224 returns a Curve which implements NIST P-224 (FIPS 186-3, section D.2.2),
        * also known as secp224r1. The CurveParams.Name of this Curve is "P-224".
        * 
        * Multiple invocations of this function will return the same value, so it can
        * be used for equality checks and switch statements.
        * 
        * The cryptographic operations are implemented using constant-time algorithms.
    **/
    static public inline function p224():stdgo._internal.crypto.elliptic.Elliptic_curve.Curve return stdgo._internal.crypto.elliptic.Elliptic_p224.p224();
    /**
        * P256 returns a Curve which implements NIST P-256 (FIPS 186-3, section D.2.3),
        * also known as secp256r1 or prime256v1. The CurveParams.Name of this Curve is
        * "P-256".
        * 
        * Multiple invocations of this function will return the same value, so it can
        * be used for equality checks and switch statements.
        * 
        * The cryptographic operations are implemented using constant-time algorithms.
    **/
    static public inline function p256():stdgo._internal.crypto.elliptic.Elliptic_curve.Curve return stdgo._internal.crypto.elliptic.Elliptic_p256.p256();
    /**
        * P384 returns a Curve which implements NIST P-384 (FIPS 186-3, section D.2.4),
        * also known as secp384r1. The CurveParams.Name of this Curve is "P-384".
        * 
        * Multiple invocations of this function will return the same value, so it can
        * be used for equality checks and switch statements.
        * 
        * The cryptographic operations are implemented using constant-time algorithms.
    **/
    static public inline function p384():stdgo._internal.crypto.elliptic.Elliptic_curve.Curve return stdgo._internal.crypto.elliptic.Elliptic_p384.p384();
    /**
        * P521 returns a Curve which implements NIST P-521 (FIPS 186-3, section D.2.5),
        * also known as secp521r1. The CurveParams.Name of this Curve is "P-521".
        * 
        * Multiple invocations of this function will return the same value, so it can
        * be used for equality checks and switch statements.
        * 
        * The cryptographic operations are implemented using constant-time algorithms.
    **/
    static public inline function p521():stdgo._internal.crypto.elliptic.Elliptic_curve.Curve return stdgo._internal.crypto.elliptic.Elliptic_p521.p521();
}
