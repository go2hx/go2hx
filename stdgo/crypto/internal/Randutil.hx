package stdgo.crypto.internal;
/**
    Package randutil contains internal randomness utilities for various
    crypto packages.
**/
private var __go2hxdoc__package : Bool;
@:forward @:forward.new abstract T__struct_0_asInterface(stdgo._internal.crypto.internal.randutil.Randutil.T__struct_0_asInterface) from stdgo._internal.crypto.internal.randutil.Randutil.T__struct_0_asInterface to stdgo._internal.crypto.internal.randutil.Randutil.T__struct_0_asInterface {

}
@:forward @:forward.new abstract T__struct_0_static_extension(stdgo._internal.crypto.internal.randutil.Randutil.T__struct_0_static_extension) from stdgo._internal.crypto.internal.randutil.Randutil.T__struct_0_static_extension to stdgo._internal.crypto.internal.randutil.Randutil.T__struct_0_static_extension {

}
typedef T__struct_0 = stdgo._internal.crypto.internal.randutil.Randutil.T__struct_0;
class Randutil {
    /**
        MaybeReadByte reads a single byte from r with ~50% probability. This is used
        to ensure that callers do not depend on non-guaranteed behaviour, e.g.
        assuming that rsa.GenerateKey is deterministic w.r.t. a given random stream.
        
        This does not affect tests that pass a stream of fixed bytes as the random
        source (e.g. a zeroReader).
    **/
    static public function maybeReadByte(r:stdgo._internal.io.Io.Reader):Void {
        stdgo._internal.crypto.internal.randutil.Randutil.maybeReadByte(r);
    }
}
