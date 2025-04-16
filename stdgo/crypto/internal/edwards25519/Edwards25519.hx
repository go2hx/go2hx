package stdgo.crypto.internal.edwards25519;
typedef Point = stdgo._internal.crypto.internal.edwards25519.Edwards25519_point.Point;
typedef Scalar = stdgo._internal.crypto.internal.edwards25519.Edwards25519_scalar.Scalar;
typedef PointPointer = stdgo._internal.crypto.internal.edwards25519.Edwards25519_pointpointer.PointPointer;
typedef ScalarPointer = stdgo._internal.crypto.internal.edwards25519.Edwards25519_scalarpointer.ScalarPointer;
/**
    * Package edwards25519 implements group logic for the twisted Edwards curve
    * 
    * 	-x^2 + y^2 = 1 + -(121665/121666)*x^2*y^2
    * 
    * This is better known as the Edwards curve equivalent to Curve25519, and is
    * the curve used by the Ed25519 signature scheme.
    * 
    * Most users don't need this package, and should instead use crypto/ed25519 for
    * signatures, golang.org/x/crypto/curve25519 for Diffie-Hellman, or
    * github.com/gtank/ristretto255 for prime order group logic.
    * 
    * However, developers who do need to interact with low-level edwards25519
    * operations can use filippo.io/edwards25519, an extended version of this
    * package repackaged as an importable module.
    * 
    * (Note that filippo.io/edwards25519 and github.com/gtank/ristretto255 are not
    * maintained by the Go team and are not covered by the Go 1 Compatibility Promise.)
**/
class Edwards25519 {
    /**
        * NewIdentityPoint returns a new Point set to the identity.
    **/
    static public inline function newIdentityPoint():stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_point.Point> return stdgo._internal.crypto.internal.edwards25519.Edwards25519_newidentitypoint.newIdentityPoint();
    /**
        * NewGeneratorPoint returns a new Point set to the canonical generator.
    **/
    static public inline function newGeneratorPoint():stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_point.Point> return stdgo._internal.crypto.internal.edwards25519.Edwards25519_newgeneratorpoint.newGeneratorPoint();
    /**
        * NewScalar returns a new zero Scalar.
    **/
    static public inline function newScalar():stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_scalar.Scalar> return stdgo._internal.crypto.internal.edwards25519.Edwards25519_newscalar.newScalar();
}
