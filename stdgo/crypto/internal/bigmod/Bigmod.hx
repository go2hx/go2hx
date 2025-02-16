package stdgo.crypto.internal.bigmod;
@:structInit @:using(stdgo.crypto.internal.bigmod.Bigmod.Nat_static_extension) abstract Nat(stdgo._internal.crypto.internal.bigmod.Bigmod_nat.Nat) from stdgo._internal.crypto.internal.bigmod.Bigmod_nat.Nat to stdgo._internal.crypto.internal.bigmod.Bigmod_nat.Nat {
    public var _limbs(get, set) : Array<std.UInt>;
    function get__limbs():Array<std.UInt> return [for (i in this._limbs) i];
    function set__limbs(v:Array<std.UInt>):Array<std.UInt> {
        this._limbs = ([for (i in v) (i : stdgo.GoUInt)] : stdgo.Slice<stdgo.GoUInt>);
        return v;
    }
    public function new(?_limbs:Array<std.UInt>) this = new stdgo._internal.crypto.internal.bigmod.Bigmod_nat.Nat(([for (i in _limbs) (i : stdgo.GoUInt)] : stdgo.Slice<stdgo.GoUInt>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.crypto.internal.bigmod.Bigmod.Modulus_static_extension) abstract Modulus(stdgo._internal.crypto.internal.bigmod.Bigmod_modulus.Modulus) from stdgo._internal.crypto.internal.bigmod.Bigmod_modulus.Modulus to stdgo._internal.crypto.internal.bigmod.Bigmod_modulus.Modulus {
    public var _nat(get, set) : Nat;
    function get__nat():Nat return this._nat;
    function set__nat(v:Nat):Nat {
        this._nat = (v : stdgo.Ref<stdgo._internal.crypto.internal.bigmod.Bigmod_nat.Nat>);
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
        this._rr = (v : stdgo.Ref<stdgo._internal.crypto.internal.bigmod.Bigmod_nat.Nat>);
        return v;
    }
    public function new(?_nat:Nat, ?_leading:StdTypes.Int, ?_m0inv:std.UInt, ?_rr:Nat) this = new stdgo._internal.crypto.internal.bigmod.Bigmod_modulus.Modulus((_nat : stdgo.Ref<stdgo._internal.crypto.internal.bigmod.Bigmod_nat.Nat>), (_leading : stdgo.GoInt), (_m0inv : stdgo.GoUInt), (_rr : stdgo.Ref<stdgo._internal.crypto.internal.bigmod.Bigmod_nat.Nat>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:dox(hide) typedef T_choice = stdgo._internal.crypto.internal.bigmod.Bigmod_t_choice.T_choice;
typedef NatPointer = stdgo._internal.crypto.internal.bigmod.Bigmod_natpointer.NatPointer;
class Nat_static_extension {
    static public function expShort(_out:Nat, _x:Nat, _e:std.UInt, _m:Modulus):Nat {
        final _out = (_out : stdgo.Ref<stdgo._internal.crypto.internal.bigmod.Bigmod_nat.Nat>);
        final _x = (_x : stdgo.Ref<stdgo._internal.crypto.internal.bigmod.Bigmod_nat.Nat>);
        final _e = (_e : stdgo.GoUInt);
        final _m = (_m : stdgo.Ref<stdgo._internal.crypto.internal.bigmod.Bigmod_modulus.Modulus>);
        return stdgo._internal.crypto.internal.bigmod.Bigmod_nat_static_extension.Nat_static_extension.expShort(_out, _x, _e, _m);
    }
    static public function exp(_out:Nat, _x:Nat, _e:Array<std.UInt>, _m:Modulus):Nat {
        final _out = (_out : stdgo.Ref<stdgo._internal.crypto.internal.bigmod.Bigmod_nat.Nat>);
        final _x = (_x : stdgo.Ref<stdgo._internal.crypto.internal.bigmod.Bigmod_nat.Nat>);
        final _e = ([for (i in _e) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _m = (_m : stdgo.Ref<stdgo._internal.crypto.internal.bigmod.Bigmod_modulus.Modulus>);
        return stdgo._internal.crypto.internal.bigmod.Bigmod_nat_static_extension.Nat_static_extension.exp(_out, _x, _e, _m);
    }
    static public function mul(_x:Nat, _y:Nat, _m:Modulus):Nat {
        final _x = (_x : stdgo.Ref<stdgo._internal.crypto.internal.bigmod.Bigmod_nat.Nat>);
        final _y = (_y : stdgo.Ref<stdgo._internal.crypto.internal.bigmod.Bigmod_nat.Nat>);
        final _m = (_m : stdgo.Ref<stdgo._internal.crypto.internal.bigmod.Bigmod_modulus.Modulus>);
        return stdgo._internal.crypto.internal.bigmod.Bigmod_nat_static_extension.Nat_static_extension.mul(_x, _y, _m);
    }
    static public function _montgomeryMul(_x:Nat, _a:Nat, _b:Nat, _m:Modulus):Nat {
        final _x = (_x : stdgo.Ref<stdgo._internal.crypto.internal.bigmod.Bigmod_nat.Nat>);
        final _a = (_a : stdgo.Ref<stdgo._internal.crypto.internal.bigmod.Bigmod_nat.Nat>);
        final _b = (_b : stdgo.Ref<stdgo._internal.crypto.internal.bigmod.Bigmod_nat.Nat>);
        final _m = (_m : stdgo.Ref<stdgo._internal.crypto.internal.bigmod.Bigmod_modulus.Modulus>);
        return stdgo._internal.crypto.internal.bigmod.Bigmod_nat_static_extension.Nat_static_extension._montgomeryMul(_x, _a, _b, _m);
    }
    static public function _montgomeryReduction(_x:Nat, _m:Modulus):Nat {
        final _x = (_x : stdgo.Ref<stdgo._internal.crypto.internal.bigmod.Bigmod_nat.Nat>);
        final _m = (_m : stdgo.Ref<stdgo._internal.crypto.internal.bigmod.Bigmod_modulus.Modulus>);
        return stdgo._internal.crypto.internal.bigmod.Bigmod_nat_static_extension.Nat_static_extension._montgomeryReduction(_x, _m);
    }
    static public function _montgomeryRepresentation(_x:Nat, _m:Modulus):Nat {
        final _x = (_x : stdgo.Ref<stdgo._internal.crypto.internal.bigmod.Bigmod_nat.Nat>);
        final _m = (_m : stdgo.Ref<stdgo._internal.crypto.internal.bigmod.Bigmod_modulus.Modulus>);
        return stdgo._internal.crypto.internal.bigmod.Bigmod_nat_static_extension.Nat_static_extension._montgomeryRepresentation(_x, _m);
    }
    static public function add(_x:Nat, _y:Nat, _m:Modulus):Nat {
        final _x = (_x : stdgo.Ref<stdgo._internal.crypto.internal.bigmod.Bigmod_nat.Nat>);
        final _y = (_y : stdgo.Ref<stdgo._internal.crypto.internal.bigmod.Bigmod_nat.Nat>);
        final _m = (_m : stdgo.Ref<stdgo._internal.crypto.internal.bigmod.Bigmod_modulus.Modulus>);
        return stdgo._internal.crypto.internal.bigmod.Bigmod_nat_static_extension.Nat_static_extension.add(_x, _y, _m);
    }
    static public function sub(_x:Nat, _y:Nat, _m:Modulus):Nat {
        final _x = (_x : stdgo.Ref<stdgo._internal.crypto.internal.bigmod.Bigmod_nat.Nat>);
        final _y = (_y : stdgo.Ref<stdgo._internal.crypto.internal.bigmod.Bigmod_nat.Nat>);
        final _m = (_m : stdgo.Ref<stdgo._internal.crypto.internal.bigmod.Bigmod_modulus.Modulus>);
        return stdgo._internal.crypto.internal.bigmod.Bigmod_nat_static_extension.Nat_static_extension.sub(_x, _y, _m);
    }
    static public function _maybeSubtractModulus(_x:Nat, _always:T_choice, _m:Modulus):Void {
        final _x = (_x : stdgo.Ref<stdgo._internal.crypto.internal.bigmod.Bigmod_nat.Nat>);
        final _m = (_m : stdgo.Ref<stdgo._internal.crypto.internal.bigmod.Bigmod_modulus.Modulus>);
        stdgo._internal.crypto.internal.bigmod.Bigmod_nat_static_extension.Nat_static_extension._maybeSubtractModulus(_x, _always, _m);
    }
    static public function _resetFor(_out:Nat, _m:Modulus):Nat {
        final _out = (_out : stdgo.Ref<stdgo._internal.crypto.internal.bigmod.Bigmod_nat.Nat>);
        final _m = (_m : stdgo.Ref<stdgo._internal.crypto.internal.bigmod.Bigmod_modulus.Modulus>);
        return stdgo._internal.crypto.internal.bigmod.Bigmod_nat_static_extension.Nat_static_extension._resetFor(_out, _m);
    }
    static public function expandFor(_x:Nat, _m:Modulus):Nat {
        final _x = (_x : stdgo.Ref<stdgo._internal.crypto.internal.bigmod.Bigmod_nat.Nat>);
        final _m = (_m : stdgo.Ref<stdgo._internal.crypto.internal.bigmod.Bigmod_modulus.Modulus>);
        return stdgo._internal.crypto.internal.bigmod.Bigmod_nat_static_extension.Nat_static_extension.expandFor(_x, _m);
    }
    static public function mod(_out:Nat, _x:Nat, _m:Modulus):Nat {
        final _out = (_out : stdgo.Ref<stdgo._internal.crypto.internal.bigmod.Bigmod_nat.Nat>);
        final _x = (_x : stdgo.Ref<stdgo._internal.crypto.internal.bigmod.Bigmod_nat.Nat>);
        final _m = (_m : stdgo.Ref<stdgo._internal.crypto.internal.bigmod.Bigmod_modulus.Modulus>);
        return stdgo._internal.crypto.internal.bigmod.Bigmod_nat_static_extension.Nat_static_extension.mod(_out, _x, _m);
    }
    static public function _shiftIn(_x:Nat, _y:std.UInt, _m:Modulus):Nat {
        final _x = (_x : stdgo.Ref<stdgo._internal.crypto.internal.bigmod.Bigmod_nat.Nat>);
        final _y = (_y : stdgo.GoUInt);
        final _m = (_m : stdgo.Ref<stdgo._internal.crypto.internal.bigmod.Bigmod_modulus.Modulus>);
        return stdgo._internal.crypto.internal.bigmod.Bigmod_nat_static_extension.Nat_static_extension._shiftIn(_x, _y, _m);
    }
    static public function _sub(_x:Nat, _y:Nat):std.UInt {
        final _x = (_x : stdgo.Ref<stdgo._internal.crypto.internal.bigmod.Bigmod_nat.Nat>);
        final _y = (_y : stdgo.Ref<stdgo._internal.crypto.internal.bigmod.Bigmod_nat.Nat>);
        return stdgo._internal.crypto.internal.bigmod.Bigmod_nat_static_extension.Nat_static_extension._sub(_x, _y);
    }
    static public function _add(_x:Nat, _y:Nat):std.UInt {
        final _x = (_x : stdgo.Ref<stdgo._internal.crypto.internal.bigmod.Bigmod_nat.Nat>);
        final _y = (_y : stdgo.Ref<stdgo._internal.crypto.internal.bigmod.Bigmod_nat.Nat>);
        return stdgo._internal.crypto.internal.bigmod.Bigmod_nat_static_extension.Nat_static_extension._add(_x, _y);
    }
    static public function _assign(_x:Nat, _on:T_choice, _y:Nat):Nat {
        final _x = (_x : stdgo.Ref<stdgo._internal.crypto.internal.bigmod.Bigmod_nat.Nat>);
        final _y = (_y : stdgo.Ref<stdgo._internal.crypto.internal.bigmod.Bigmod_nat.Nat>);
        return stdgo._internal.crypto.internal.bigmod.Bigmod_nat_static_extension.Nat_static_extension._assign(_x, _on, _y);
    }
    static public function _cmpGeq(_x:Nat, _y:Nat):T_choice {
        final _x = (_x : stdgo.Ref<stdgo._internal.crypto.internal.bigmod.Bigmod_nat.Nat>);
        final _y = (_y : stdgo.Ref<stdgo._internal.crypto.internal.bigmod.Bigmod_nat.Nat>);
        return stdgo._internal.crypto.internal.bigmod.Bigmod_nat_static_extension.Nat_static_extension._cmpGeq(_x, _y);
    }
    static public function isZero(_x:Nat):T_choice {
        final _x = (_x : stdgo.Ref<stdgo._internal.crypto.internal.bigmod.Bigmod_nat.Nat>);
        return stdgo._internal.crypto.internal.bigmod.Bigmod_nat_static_extension.Nat_static_extension.isZero(_x);
    }
    static public function equal(_x:Nat, _y:Nat):T_choice {
        final _x = (_x : stdgo.Ref<stdgo._internal.crypto.internal.bigmod.Bigmod_nat.Nat>);
        final _y = (_y : stdgo.Ref<stdgo._internal.crypto.internal.bigmod.Bigmod_nat.Nat>);
        return stdgo._internal.crypto.internal.bigmod.Bigmod_nat_static_extension.Nat_static_extension.equal(_x, _y);
    }
    static public function _setBytes(_x:Nat, _b:Array<std.UInt>, _m:Modulus):stdgo.Error {
        final _x = (_x : stdgo.Ref<stdgo._internal.crypto.internal.bigmod.Bigmod_nat.Nat>);
        final _b = ([for (i in _b) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _m = (_m : stdgo.Ref<stdgo._internal.crypto.internal.bigmod.Bigmod_modulus.Modulus>);
        return stdgo._internal.crypto.internal.bigmod.Bigmod_nat_static_extension.Nat_static_extension._setBytes(_x, _b, _m);
    }
    static public function setOverflowingBytes(_x:Nat, _b:Array<std.UInt>, _m:Modulus):stdgo.Tuple<Nat, stdgo.Error> {
        final _x = (_x : stdgo.Ref<stdgo._internal.crypto.internal.bigmod.Bigmod_nat.Nat>);
        final _b = ([for (i in _b) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _m = (_m : stdgo.Ref<stdgo._internal.crypto.internal.bigmod.Bigmod_modulus.Modulus>);
        return {
            final obj = stdgo._internal.crypto.internal.bigmod.Bigmod_nat_static_extension.Nat_static_extension.setOverflowingBytes(_x, _b, _m);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function setBytes(_x:Nat, _b:Array<std.UInt>, _m:Modulus):stdgo.Tuple<Nat, stdgo.Error> {
        final _x = (_x : stdgo.Ref<stdgo._internal.crypto.internal.bigmod.Bigmod_nat.Nat>);
        final _b = ([for (i in _b) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _m = (_m : stdgo.Ref<stdgo._internal.crypto.internal.bigmod.Bigmod_modulus.Modulus>);
        return {
            final obj = stdgo._internal.crypto.internal.bigmod.Bigmod_nat_static_extension.Nat_static_extension.setBytes(_x, _b, _m);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function bytes(_x:Nat, _m:Modulus):Array<std.UInt> {
        final _x = (_x : stdgo.Ref<stdgo._internal.crypto.internal.bigmod.Bigmod_nat.Nat>);
        final _m = (_m : stdgo.Ref<stdgo._internal.crypto.internal.bigmod.Bigmod_modulus.Modulus>);
        return [for (i in stdgo._internal.crypto.internal.bigmod.Bigmod_nat_static_extension.Nat_static_extension.bytes(_x, _m)) i];
    }
    static public function _setBig(_x:Nat, _n:stdgo._internal.math.big.Big_int_.Int_):Nat {
        final _x = (_x : stdgo.Ref<stdgo._internal.crypto.internal.bigmod.Bigmod_nat.Nat>);
        final _n = (_n : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        return stdgo._internal.crypto.internal.bigmod.Bigmod_nat_static_extension.Nat_static_extension._setBig(_x, _n);
    }
    static public function _set(_x:Nat, _y:Nat):Nat {
        final _x = (_x : stdgo.Ref<stdgo._internal.crypto.internal.bigmod.Bigmod_nat.Nat>);
        final _y = (_y : stdgo.Ref<stdgo._internal.crypto.internal.bigmod.Bigmod_nat.Nat>);
        return stdgo._internal.crypto.internal.bigmod.Bigmod_nat_static_extension.Nat_static_extension._set(_x, _y);
    }
    static public function _reset(_x:Nat, _n:StdTypes.Int):Nat {
        final _x = (_x : stdgo.Ref<stdgo._internal.crypto.internal.bigmod.Bigmod_nat.Nat>);
        final _n = (_n : stdgo.GoInt);
        return stdgo._internal.crypto.internal.bigmod.Bigmod_nat_static_extension.Nat_static_extension._reset(_x, _n);
    }
    static public function _expand(_x:Nat, _n:StdTypes.Int):Nat {
        final _x = (_x : stdgo.Ref<stdgo._internal.crypto.internal.bigmod.Bigmod_nat.Nat>);
        final _n = (_n : stdgo.GoInt);
        return stdgo._internal.crypto.internal.bigmod.Bigmod_nat_static_extension.Nat_static_extension._expand(_x, _n);
    }
}
typedef ModulusPointer = stdgo._internal.crypto.internal.bigmod.Bigmod_moduluspointer.ModulusPointer;
class Modulus_static_extension {
    static public function nat(_m:Modulus):Nat {
        final _m = (_m : stdgo.Ref<stdgo._internal.crypto.internal.bigmod.Bigmod_modulus.Modulus>);
        return stdgo._internal.crypto.internal.bigmod.Bigmod_modulus_static_extension.Modulus_static_extension.nat(_m);
    }
    static public function bitLen(_m:Modulus):StdTypes.Int {
        final _m = (_m : stdgo.Ref<stdgo._internal.crypto.internal.bigmod.Bigmod_modulus.Modulus>);
        return stdgo._internal.crypto.internal.bigmod.Bigmod_modulus_static_extension.Modulus_static_extension.bitLen(_m);
    }
    static public function size(_m:Modulus):StdTypes.Int {
        final _m = (_m : stdgo.Ref<stdgo._internal.crypto.internal.bigmod.Bigmod_modulus.Modulus>);
        return stdgo._internal.crypto.internal.bigmod.Bigmod_modulus_static_extension.Modulus_static_extension.size(_m);
    }
}
@:dox(hide) typedef T_choicePointer = stdgo._internal.crypto.internal.bigmod.Bigmod_t_choicepointer.T_choicePointer;
@:dox(hide) class T_choice_static_extension {

}
class Bigmod {
    /**
        * NewNat returns a new nat with a size of zero, just like new(Nat), but with
        * the preallocated capacity to hold a number of up to preallocTarget bits.
        * NewNat inlines, so the allocation can live on the stack.
    **/
    static public inline function newNat():Nat {
        return stdgo._internal.crypto.internal.bigmod.Bigmod_newnat.newNat();
    }
    /**
        * NewModulusFromBig creates a new Modulus from a [big.Int].
        * 
        * The Int must be odd. The number of significant bits (and nothing else) is
        * leaked through timing side-channels.
    **/
    static public inline function newModulusFromBig(_n:stdgo._internal.math.big.Big_int_.Int_):stdgo.Tuple<Modulus, stdgo.Error> {
        final _n = (_n : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        return {
            final obj = stdgo._internal.crypto.internal.bigmod.Bigmod_newmodulusfrombig.newModulusFromBig(_n);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
