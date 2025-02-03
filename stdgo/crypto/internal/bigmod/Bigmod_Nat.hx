package stdgo.crypto.internal.bigmod;
@:structInit @:using(stdgo.crypto.internal.bigmod.Bigmod.Nat_static_extension) abstract Nat(stdgo._internal.crypto.internal.bigmod.Bigmod_Nat.Nat) from stdgo._internal.crypto.internal.bigmod.Bigmod_Nat.Nat to stdgo._internal.crypto.internal.bigmod.Bigmod_Nat.Nat {
    public var _limbs(get, set) : Array<std.UInt>;
    function get__limbs():Array<std.UInt> return [for (i in this._limbs) i];
    function set__limbs(v:Array<std.UInt>):Array<std.UInt> {
        this._limbs = ([for (i in v) (i : stdgo.GoUInt)] : stdgo.Slice<stdgo.GoUInt>);
        return v;
    }
    public function new(?_limbs:Array<std.UInt>) this = new stdgo._internal.crypto.internal.bigmod.Bigmod_Nat.Nat(([for (i in _limbs) (i : stdgo.GoUInt)] : stdgo.Slice<stdgo.GoUInt>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
