package stdgo.crypto.internal.randutil;
typedef T__struct_0Pointer = stdgo._internal.crypto.internal.randutil.Randutil_T__struct_0Pointer.T__struct_0Pointer;
class T__struct_0_static_extension {

}
typedef T__struct_0 = stdgo._internal.crypto.internal.randutil.Randutil_T__struct_0.T__struct_0;
typedef T__struct_0PointerPointer = stdgo._internal.crypto.internal.randutil.Randutil_T__struct_0PointerPointer.T__struct_0PointerPointer;
class T__struct_0Pointer_static_extension {

}
/**
    * Package randutil contains internal randomness utilities for various
    * crypto packages.
**/
class Randutil {
    /**
        * MaybeReadByte reads a single byte from r with ~50% probability. This is used
        * to ensure that callers do not depend on non-guaranteed behaviour, e.g.
        * assuming that rsa.GenerateKey is deterministic w.r.t. a given random stream.
        * 
        * This does not affect tests that pass a stream of fixed bytes as the random
        * source (e.g. a zeroReader).
    **/
    static public inline function maybeReadByte(_r:stdgo._internal.io.Io_reader.Reader):Void {
        stdgo._internal.crypto.internal.randutil.Randutil_maybeReadByte.maybeReadByte(_r);
    }
}
