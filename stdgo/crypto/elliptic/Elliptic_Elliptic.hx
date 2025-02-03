package stdgo.crypto.elliptic;
/**
    Package elliptic implements the standard NIST P-224, P-256, P-384, and P-521
    elliptic curves over prime fields.
    
    Direct use of this package is deprecated, beyond the [P224], [P256], [P384],
    and [P521] values necessary to use [crypto/ecdsa]. Most other uses
    should migrate to the more efficient and safer [crypto/ecdh], or to
    third-party modules for lower-level functionality.
**/
class Elliptic {
    /**
        GenerateKey returns a public/private key pair. The private key is
        generated using the given reader, which must return random data.
        
        Deprecated: for ECDH, use the GenerateKey methods of the crypto/ecdh package;
        for ECDSA, use the GenerateKey function of the crypto/ecdsa package.
    **/
    static public inline function generateKey(_curve:Curve, _rand:stdgo._internal.io.Io_Reader.Reader):stdgo.Tuple.Tuple4<Array<std.UInt>, stdgo._internal.math.big.Big_Int_.Int_, stdgo._internal.math.big.Big_Int_.Int_, stdgo.Error> {
        return {
            final obj = stdgo._internal.crypto.elliptic.Elliptic_generateKey.generateKey(_curve, _rand);
            { _0 : [for (i in obj._0) i], _1 : obj._1, _2 : obj._2, _3 : obj._3 };
        };
    }
    /**
        Marshal converts a point on the curve into the uncompressed form specified in
        SEC 1, Version 2.0, Section 2.3.3. If the point is not on the curve (or is
        the conventional point at infinity), the behavior is undefined.
        
        Deprecated: for ECDH, use the crypto/ecdh package. This function returns an
        encoding equivalent to that of PublicKey.Bytes in crypto/ecdh.
    **/
    static public inline function marshal(_curve:Curve, _x:stdgo._internal.math.big.Big_Int_.Int_, _y:stdgo._internal.math.big.Big_Int_.Int_):Array<std.UInt> {
        final _x = (_x : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
        final _y = (_y : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
        return [for (i in stdgo._internal.crypto.elliptic.Elliptic_marshal.marshal(_curve, _x, _y)) i];
    }
    /**
        MarshalCompressed converts a point on the curve into the compressed form
        specified in SEC 1, Version 2.0, Section 2.3.3. If the point is not on the
        curve (or is the conventional point at infinity), the behavior is undefined.
    **/
    static public inline function marshalCompressed(_curve:Curve, _x:stdgo._internal.math.big.Big_Int_.Int_, _y:stdgo._internal.math.big.Big_Int_.Int_):Array<std.UInt> {
        final _x = (_x : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
        final _y = (_y : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
        return [for (i in stdgo._internal.crypto.elliptic.Elliptic_marshalCompressed.marshalCompressed(_curve, _x, _y)) i];
    }
    /**
        Unmarshal converts a point, serialized by Marshal, into an x, y pair. It is
        an error if the point is not in uncompressed form, is not on the curve, or is
        the point at infinity. On error, x = nil.
        
        Deprecated: for ECDH, use the crypto/ecdh package. This function accepts an
        encoding equivalent to that of the NewPublicKey methods in crypto/ecdh.
    **/
    static public inline function unmarshal(_curve:Curve, _data:Array<std.UInt>):stdgo.Tuple<stdgo._internal.math.big.Big_Int_.Int_, stdgo._internal.math.big.Big_Int_.Int_> {
        final _data = ([for (i in _data) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.crypto.elliptic.Elliptic_unmarshal.unmarshal(_curve, _data);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        UnmarshalCompressed converts a point, serialized by MarshalCompressed, into
        an x, y pair. It is an error if the point is not in compressed form, is not
        on the curve, or is the point at infinity. On error, x = nil.
    **/
    static public inline function unmarshalCompressed(_curve:Curve, _data:Array<std.UInt>):stdgo.Tuple<stdgo._internal.math.big.Big_Int_.Int_, stdgo._internal.math.big.Big_Int_.Int_> {
        final _data = ([for (i in _data) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.crypto.elliptic.Elliptic_unmarshalCompressed.unmarshalCompressed(_curve, _data);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        P224 returns a Curve which implements NIST P-224 (FIPS 186-3, section D.2.2),
        also known as secp224r1. The CurveParams.Name of this Curve is "P-224".
        
        Multiple invocations of this function will return the same value, so it can
        be used for equality checks and switch statements.
        
        The cryptographic operations are implemented using constant-time algorithms.
    **/
    static public inline function p224():Curve {
        return stdgo._internal.crypto.elliptic.Elliptic_p224.p224();
    }
    /**
        P256 returns a Curve which implements NIST P-256 (FIPS 186-3, section D.2.3),
        also known as secp256r1 or prime256v1. The CurveParams.Name of this Curve is
        "P-256".
        
        Multiple invocations of this function will return the same value, so it can
        be used for equality checks and switch statements.
        
        The cryptographic operations are implemented using constant-time algorithms.
    **/
    static public inline function p256():Curve {
        return stdgo._internal.crypto.elliptic.Elliptic_p256.p256();
    }
    /**
        P384 returns a Curve which implements NIST P-384 (FIPS 186-3, section D.2.4),
        also known as secp384r1. The CurveParams.Name of this Curve is "P-384".
        
        Multiple invocations of this function will return the same value, so it can
        be used for equality checks and switch statements.
        
        The cryptographic operations are implemented using constant-time algorithms.
    **/
    static public inline function p384():Curve {
        return stdgo._internal.crypto.elliptic.Elliptic_p384.p384();
    }
    /**
        P521 returns a Curve which implements NIST P-521 (FIPS 186-3, section D.2.5),
        also known as secp521r1. The CurveParams.Name of this Curve is "P-521".
        
        Multiple invocations of this function will return the same value, so it can
        be used for equality checks and switch statements.
        
        The cryptographic operations are implemented using constant-time algorithms.
    **/
    static public inline function p521():Curve {
        return stdgo._internal.crypto.elliptic.Elliptic_p521.p521();
    }
}
