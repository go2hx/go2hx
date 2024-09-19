package _internal.crypto.internal.bigmod;
@:structInit @:using(_internal.crypto.internal.bigmod.Bigmod_Modulus_static_extension.Modulus_static_extension) class Modulus {
    public var _nat : stdgo.Ref<_internal.crypto.internal.bigmod.Bigmod_Nat.Nat> = (null : stdgo.Ref<_internal.crypto.internal.bigmod.Bigmod_Nat.Nat>);
    public var _leading : stdgo.GoInt = 0;
    public var _m0inv : stdgo.GoUInt = 0;
    public var _rr : stdgo.Ref<_internal.crypto.internal.bigmod.Bigmod_Nat.Nat> = (null : stdgo.Ref<_internal.crypto.internal.bigmod.Bigmod_Nat.Nat>);
    public function new(?_nat:stdgo.Ref<_internal.crypto.internal.bigmod.Bigmod_Nat.Nat>, ?_leading:stdgo.GoInt, ?_m0inv:stdgo.GoUInt, ?_rr:stdgo.Ref<_internal.crypto.internal.bigmod.Bigmod_Nat.Nat>) {
        if (_nat != null) this._nat = _nat;
        if (_leading != null) this._leading = _leading;
        if (_m0inv != null) this._m0inv = _m0inv;
        if (_rr != null) this._rr = _rr;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Modulus(_nat, _leading, _m0inv, _rr);
    }
}