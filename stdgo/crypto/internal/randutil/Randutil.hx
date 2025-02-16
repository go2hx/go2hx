package stdgo.crypto.internal.randutil;
@:dox(hide) typedef T__struct_0Pointer = stdgo._internal.crypto.internal.randutil.Randutil_t__struct_0pointer.T__struct_0Pointer;
@:dox(hide) class T__struct_0_static_extension {

}
@:dox(hide) typedef T__struct_0 = stdgo._internal.crypto.internal.randutil.Randutil_t__struct_0.T__struct_0;
@:dox(hide) typedef T__struct_0PointerPointer = stdgo._internal.crypto.internal.randutil.Randutil_t__struct_0pointerpointer.T__struct_0PointerPointer;
@:dox(hide) class T__struct_0Pointer_static_extension {

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
        stdgo._internal.crypto.internal.randutil.Randutil_maybereadbyte.maybeReadByte(_r);
    }
}
