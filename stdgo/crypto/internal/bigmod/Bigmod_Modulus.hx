package stdgo.crypto.internal.bigmod;
@:structInit @:using(stdgo.crypto.internal.bigmod.Bigmod.Modulus_static_extension) abstract Modulus(stdgo._internal.crypto.internal.bigmod.Bigmod_Modulus.Modulus) from stdgo._internal.crypto.internal.bigmod.Bigmod_Modulus.Modulus to stdgo._internal.crypto.internal.bigmod.Bigmod_Modulus.Modulus {
    public var _nat(get, set) : Nat;
    function get__nat():Nat return this._nat;
    function set__nat(v:Nat):Nat {
        this._nat = (v : stdgo.Ref<stdgo._internal.crypto.internal.bigmod.Bigmod_Nat.Nat>);
        return v;
    }
    public var _leading(get, set) : StdTypes.Int;
    function get__leading():StdTypes.Int return this._leading;
    function set__leading(v:StdTypes.Int):StdTypes.Int {
        this._leading = (v : stdgo.GoInt);
        return v;
    }
    public var _m0inv(get, set) : std.UInt;
    function get__m0inv():std.UInt return this._m0inv;
    function set__m0inv(v:std.UInt):std.UInt {
        this._m0inv = (v : stdgo.GoUInt);
        return v;
    }
    public var _rr(get, set) : Nat;
    function get__rr():Nat return this._rr;
    function set__rr(v:Nat):Nat {
        this._rr = (v : stdgo.Ref<stdgo._internal.crypto.internal.bigmod.Bigmod_Nat.Nat>);
        return v;
    }
    public function new(?_nat:Nat, ?_leading:StdTypes.Int, ?_m0inv:std.UInt, ?_rr:Nat) this = new stdgo._internal.crypto.internal.bigmod.Bigmod_Modulus.Modulus((_nat : stdgo.Ref<stdgo._internal.crypto.internal.bigmod.Bigmod_Nat.Nat>), (_leading : stdgo.GoInt), (_m0inv : stdgo.GoUInt), (_rr : stdgo.Ref<stdgo._internal.crypto.internal.bigmod.Bigmod_Nat.Nat>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
