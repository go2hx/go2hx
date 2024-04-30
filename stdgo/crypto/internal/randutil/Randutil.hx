package stdgo.crypto.internal.randutil;
/**
    Package randutil contains internal randomness utilities for various
    crypto packages.
**/
private var __go2hxdoc__package : Bool;
@:invalid typedef T__struct_0_asInterface = Dynamic;
@:invalid typedef T__struct_0_static_extension = Dynamic;
typedef T__struct_0 = stdgo._internal.crypto.internal.randutil.Randutil.T__struct_0;
/**
    MaybeReadByte reads a single byte from r with ~50% probability. This is used
    to ensure that callers do not depend on non-guaranteed behaviour, e.g.
    assuming that rsa.GenerateKey is deterministic w.r.t. a given random stream.
    
    This does not affect tests that pass a stream of fixed bytes as the random
    source (e.g. a zeroReader).
**/
inline function maybeReadByte(r:stdgo._internal.io.Io.Reader):Void throw "not implemented";
