package stdgo.crypto.internal.nistec;
/**
    Package nistec implements the NIST P elliptic curves from FIPS 186-4.
    
    This package uses fiat-crypto or specialized assembly and Go code for its
    backend field arithmetic (not math/big) and exposes constant-time, heap
    allocation-free, byte slice-based safe APIs. Group operations use modern and
    safe complete addition formulas where possible. The point at infinity is
    handled and encoded according to SEC 1, Version 2.0, and invalid curve points
    can't be represented.
**/
class Nistec {
    /**
        NewP224Point returns a new P224Point representing the point at infinity point.
    **/
    static public inline function newP224Point():P224Point {
        return stdgo._internal.crypto.internal.nistec.Nistec_newP224Point.newP224Point();
    }
    /**
        NewP256Point returns a new P256Point representing the point at infinity point.
    **/
    static public inline function newP256Point():P256Point {
        return stdgo._internal.crypto.internal.nistec.Nistec_newP256Point.newP256Point();
    }
    static public inline function p256OrdInverse(_k:Array<std.UInt>):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        final _k = ([for (i in _k) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.crypto.internal.nistec.Nistec_p256OrdInverse.p256OrdInverse(_k);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    /**
        NewP384Point returns a new P384Point representing the point at infinity point.
    **/
    static public inline function newP384Point():P384Point {
        return stdgo._internal.crypto.internal.nistec.Nistec_newP384Point.newP384Point();
    }
    /**
        NewP521Point returns a new P521Point representing the point at infinity point.
    **/
    static public inline function newP521Point():P521Point {
        return stdgo._internal.crypto.internal.nistec.Nistec_newP521Point.newP521Point();
    }
}
