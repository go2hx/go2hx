package stdgo._internal.crypto.internal.bigmod;
import stdgo._internal.math.bits.Bits;
import stdgo._internal.encoding.binary.Binary;
import stdgo._internal.errors.Errors;
import stdgo._internal.unsafe.Unsafe;
@:structInit @:using(stdgo._internal.crypto.internal.bigmod.Bigmod_Nat_static_extension.Nat_static_extension) class Nat {
    public var _limbs : stdgo.Slice<stdgo.GoUInt> = (null : stdgo.Slice<stdgo.GoUInt>);
    public function new(?_limbs:stdgo.Slice<stdgo.GoUInt>) {
        if (_limbs != null) this._limbs = _limbs;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Nat(_limbs);
    }
}
