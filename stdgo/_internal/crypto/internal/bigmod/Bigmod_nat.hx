package stdgo._internal.crypto.internal.bigmod;
@:structInit @:using(stdgo._internal.crypto.internal.bigmod.Bigmod_nat_static_extension.Nat_static_extension) class Nat {
    public var _limbs : stdgo.Slice<stdgo.GoUInt> = (null : stdgo.Slice<stdgo.GoUInt>);
    public function new(?_limbs:stdgo.Slice<stdgo.GoUInt>) {
        if (_limbs != null) this._limbs = _limbs;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Nat(_limbs);
    }
}
