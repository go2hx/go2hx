package stdgo._internal.crypto.internal.edwards25519;
import stdgo._internal.math.bits.Bits;
import stdgo._internal.errors.Errors;
import stdgo._internal.encoding.binary.Binary;
import stdgo._internal.crypto.subtle.Subtle;
@:local @:using(stdgo._internal.crypto.internal.edwards25519.Edwards25519_T__struct_0_static_extension.T__struct_0_static_extension) @:using(stdgo._internal.crypto.internal.edwards25519.Edwards25519_T__struct_0_static_extension.T__struct_0_static_extension) typedef T__struct_0 = {
    public var _table : stdgo.GoArray<stdgo._internal.crypto.internal.edwards25519.Edwards25519_T_affineLookupTable.T_affineLookupTable>;
    public var _initOnce : stdgo._internal.sync.Sync_Once.Once;
};
