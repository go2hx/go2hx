package stdgo.crypto.internal.nistec;
typedef P224Point = stdgo._internal.crypto.internal.nistec.Nistec_p224point.P224Point;
typedef P256Point = stdgo._internal.crypto.internal.nistec.Nistec_p256point.P256Point;
typedef P384Point = stdgo._internal.crypto.internal.nistec.Nistec_p384point.P384Point;
typedef P521Point = stdgo._internal.crypto.internal.nistec.Nistec_p521point.P521Point;
typedef P224PointPointer = stdgo._internal.crypto.internal.nistec.Nistec_p224pointpointer.P224PointPointer;
typedef P256PointPointer = stdgo._internal.crypto.internal.nistec.Nistec_p256pointpointer.P256PointPointer;
typedef P384PointPointer = stdgo._internal.crypto.internal.nistec.Nistec_p384pointpointer.P384PointPointer;
typedef P521PointPointer = stdgo._internal.crypto.internal.nistec.Nistec_p521pointpointer.P521PointPointer;
/**
    * Package nistec implements the NIST P elliptic curves from FIPS 186-4.
    * 
    * This package uses fiat-crypto or specialized assembly and Go code for its
    * backend field arithmetic (not math/big) and exposes constant-time, heap
    * allocation-free, byte slice-based safe APIs. Group operations use modern and
    * safe complete addition formulas where possible. The point at infinity is
    * handled and encoded according to SEC 1, Version 2.0, and invalid curve points
    * can't be represented.
**/
class Nistec {
    /**
        * NewP224Point returns a new P224Point representing the point at infinity point.
    **/
    static public inline function newP224Point():stdgo.Ref<stdgo._internal.crypto.internal.nistec.Nistec_p224point.P224Point> return stdgo._internal.crypto.internal.nistec.Nistec_newp224point.newP224Point();
    /**
        * NewP256Point returns a new P256Point representing the point at infinity point.
    **/
    static public inline function newP256Point():stdgo.Ref<stdgo._internal.crypto.internal.nistec.Nistec_p256point.P256Point> return stdgo._internal.crypto.internal.nistec.Nistec_newp256point.newP256Point();
    static public inline function p256OrdInverse(_k:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } return stdgo._internal.crypto.internal.nistec.Nistec_p256ordinverse.p256OrdInverse(_k);
    /**
        * NewP384Point returns a new P384Point representing the point at infinity point.
    **/
    static public inline function newP384Point():stdgo.Ref<stdgo._internal.crypto.internal.nistec.Nistec_p384point.P384Point> return stdgo._internal.crypto.internal.nistec.Nistec_newp384point.newP384Point();
    /**
        * NewP521Point returns a new P521Point representing the point at infinity point.
    **/
    static public inline function newP521Point():stdgo.Ref<stdgo._internal.crypto.internal.nistec.Nistec_p521point.P521Point> return stdgo._internal.crypto.internal.nistec.Nistec_newp521point.newP521Point();
}
