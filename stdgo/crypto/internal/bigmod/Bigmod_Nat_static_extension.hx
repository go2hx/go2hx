package stdgo.crypto.internal.bigmod;
class Nat_static_extension {
    static public function expShort(_out:Nat, _x:Nat, _e:std.UInt, _m:Modulus):Nat {
        final _out = (_out : stdgo.Ref<stdgo._internal.crypto.internal.bigmod.Bigmod_Nat.Nat>);
        final _x = (_x : stdgo.Ref<stdgo._internal.crypto.internal.bigmod.Bigmod_Nat.Nat>);
        final _e = (_e : stdgo.GoUInt);
        final _m = (_m : stdgo.Ref<stdgo._internal.crypto.internal.bigmod.Bigmod_Modulus.Modulus>);
        return stdgo._internal.crypto.internal.bigmod.Bigmod_Nat_static_extension.Nat_static_extension.expShort(_out, _x, _e, _m);
    }
    static public function exp(_out:Nat, _x:Nat, _e:Array<std.UInt>, _m:Modulus):Nat {
        final _out = (_out : stdgo.Ref<stdgo._internal.crypto.internal.bigmod.Bigmod_Nat.Nat>);
        final _x = (_x : stdgo.Ref<stdgo._internal.crypto.internal.bigmod.Bigmod_Nat.Nat>);
        final _e = ([for (i in _e) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _m = (_m : stdgo.Ref<stdgo._internal.crypto.internal.bigmod.Bigmod_Modulus.Modulus>);
        return stdgo._internal.crypto.internal.bigmod.Bigmod_Nat_static_extension.Nat_static_extension.exp(_out, _x, _e, _m);
    }
    static public function mul(_x:Nat, _y:Nat, _m:Modulus):Nat {
        final _x = (_x : stdgo.Ref<stdgo._internal.crypto.internal.bigmod.Bigmod_Nat.Nat>);
        final _y = (_y : stdgo.Ref<stdgo._internal.crypto.internal.bigmod.Bigmod_Nat.Nat>);
        final _m = (_m : stdgo.Ref<stdgo._internal.crypto.internal.bigmod.Bigmod_Modulus.Modulus>);
        return stdgo._internal.crypto.internal.bigmod.Bigmod_Nat_static_extension.Nat_static_extension.mul(_x, _y, _m);
    }
    static public function _montgomeryMul(_x:Nat, _a:Nat, _b:Nat, _m:Modulus):Nat {
        final _x = (_x : stdgo.Ref<stdgo._internal.crypto.internal.bigmod.Bigmod_Nat.Nat>);
        final _a = (_a : stdgo.Ref<stdgo._internal.crypto.internal.bigmod.Bigmod_Nat.Nat>);
        final _b = (_b : stdgo.Ref<stdgo._internal.crypto.internal.bigmod.Bigmod_Nat.Nat>);
        final _m = (_m : stdgo.Ref<stdgo._internal.crypto.internal.bigmod.Bigmod_Modulus.Modulus>);
        return stdgo._internal.crypto.internal.bigmod.Bigmod_Nat_static_extension.Nat_static_extension._montgomeryMul(_x, _a, _b, _m);
    }
    static public function _montgomeryReduction(_x:Nat, _m:Modulus):Nat {
        final _x = (_x : stdgo.Ref<stdgo._internal.crypto.internal.bigmod.Bigmod_Nat.Nat>);
        final _m = (_m : stdgo.Ref<stdgo._internal.crypto.internal.bigmod.Bigmod_Modulus.Modulus>);
        return stdgo._internal.crypto.internal.bigmod.Bigmod_Nat_static_extension.Nat_static_extension._montgomeryReduction(_x, _m);
    }
    static public function _montgomeryRepresentation(_x:Nat, _m:Modulus):Nat {
        final _x = (_x : stdgo.Ref<stdgo._internal.crypto.internal.bigmod.Bigmod_Nat.Nat>);
        final _m = (_m : stdgo.Ref<stdgo._internal.crypto.internal.bigmod.Bigmod_Modulus.Modulus>);
        return stdgo._internal.crypto.internal.bigmod.Bigmod_Nat_static_extension.Nat_static_extension._montgomeryRepresentation(_x, _m);
    }
    static public function add(_x:Nat, _y:Nat, _m:Modulus):Nat {
        final _x = (_x : stdgo.Ref<stdgo._internal.crypto.internal.bigmod.Bigmod_Nat.Nat>);
        final _y = (_y : stdgo.Ref<stdgo._internal.crypto.internal.bigmod.Bigmod_Nat.Nat>);
        final _m = (_m : stdgo.Ref<stdgo._internal.crypto.internal.bigmod.Bigmod_Modulus.Modulus>);
        return stdgo._internal.crypto.internal.bigmod.Bigmod_Nat_static_extension.Nat_static_extension.add(_x, _y, _m);
    }
    static public function sub(_x:Nat, _y:Nat, _m:Modulus):Nat {
        final _x = (_x : stdgo.Ref<stdgo._internal.crypto.internal.bigmod.Bigmod_Nat.Nat>);
        final _y = (_y : stdgo.Ref<stdgo._internal.crypto.internal.bigmod.Bigmod_Nat.Nat>);
        final _m = (_m : stdgo.Ref<stdgo._internal.crypto.internal.bigmod.Bigmod_Modulus.Modulus>);
        return stdgo._internal.crypto.internal.bigmod.Bigmod_Nat_static_extension.Nat_static_extension.sub(_x, _y, _m);
    }
    static public function _maybeSubtractModulus(_x:Nat, _always:T_choice, _m:Modulus):Void {
        final _x = (_x : stdgo.Ref<stdgo._internal.crypto.internal.bigmod.Bigmod_Nat.Nat>);
        final _m = (_m : stdgo.Ref<stdgo._internal.crypto.internal.bigmod.Bigmod_Modulus.Modulus>);
        stdgo._internal.crypto.internal.bigmod.Bigmod_Nat_static_extension.Nat_static_extension._maybeSubtractModulus(_x, _always, _m);
    }
    static public function _resetFor(_out:Nat, _m:Modulus):Nat {
        final _out = (_out : stdgo.Ref<stdgo._internal.crypto.internal.bigmod.Bigmod_Nat.Nat>);
        final _m = (_m : stdgo.Ref<stdgo._internal.crypto.internal.bigmod.Bigmod_Modulus.Modulus>);
        return stdgo._internal.crypto.internal.bigmod.Bigmod_Nat_static_extension.Nat_static_extension._resetFor(_out, _m);
    }
    static public function expandFor(_x:Nat, _m:Modulus):Nat {
        final _x = (_x : stdgo.Ref<stdgo._internal.crypto.internal.bigmod.Bigmod_Nat.Nat>);
        final _m = (_m : stdgo.Ref<stdgo._internal.crypto.internal.bigmod.Bigmod_Modulus.Modulus>);
        return stdgo._internal.crypto.internal.bigmod.Bigmod_Nat_static_extension.Nat_static_extension.expandFor(_x, _m);
    }
    static public function mod(_out:Nat, _x:Nat, _m:Modulus):Nat {
        final _out = (_out : stdgo.Ref<stdgo._internal.crypto.internal.bigmod.Bigmod_Nat.Nat>);
        final _x = (_x : stdgo.Ref<stdgo._internal.crypto.internal.bigmod.Bigmod_Nat.Nat>);
        final _m = (_m : stdgo.Ref<stdgo._internal.crypto.internal.bigmod.Bigmod_Modulus.Modulus>);
        return stdgo._internal.crypto.internal.bigmod.Bigmod_Nat_static_extension.Nat_static_extension.mod(_out, _x, _m);
    }
    static public function _shiftIn(_x:Nat, _y:std.UInt, _m:Modulus):Nat {
        final _x = (_x : stdgo.Ref<stdgo._internal.crypto.internal.bigmod.Bigmod_Nat.Nat>);
        final _y = (_y : stdgo.GoUInt);
        final _m = (_m : stdgo.Ref<stdgo._internal.crypto.internal.bigmod.Bigmod_Modulus.Modulus>);
        return stdgo._internal.crypto.internal.bigmod.Bigmod_Nat_static_extension.Nat_static_extension._shiftIn(_x, _y, _m);
    }
    static public function _sub(_x:Nat, _y:Nat):std.UInt {
        final _x = (_x : stdgo.Ref<stdgo._internal.crypto.internal.bigmod.Bigmod_Nat.Nat>);
        final _y = (_y : stdgo.Ref<stdgo._internal.crypto.internal.bigmod.Bigmod_Nat.Nat>);
        return stdgo._internal.crypto.internal.bigmod.Bigmod_Nat_static_extension.Nat_static_extension._sub(_x, _y);
    }
    static public function _add(_x:Nat, _y:Nat):std.UInt {
        final _x = (_x : stdgo.Ref<stdgo._internal.crypto.internal.bigmod.Bigmod_Nat.Nat>);
        final _y = (_y : stdgo.Ref<stdgo._internal.crypto.internal.bigmod.Bigmod_Nat.Nat>);
        return stdgo._internal.crypto.internal.bigmod.Bigmod_Nat_static_extension.Nat_static_extension._add(_x, _y);
    }
    static public function _assign(_x:Nat, _on:T_choice, _y:Nat):Nat {
        final _x = (_x : stdgo.Ref<stdgo._internal.crypto.internal.bigmod.Bigmod_Nat.Nat>);
        final _y = (_y : stdgo.Ref<stdgo._internal.crypto.internal.bigmod.Bigmod_Nat.Nat>);
        return stdgo._internal.crypto.internal.bigmod.Bigmod_Nat_static_extension.Nat_static_extension._assign(_x, _on, _y);
    }
    static public function _cmpGeq(_x:Nat, _y:Nat):T_choice {
        final _x = (_x : stdgo.Ref<stdgo._internal.crypto.internal.bigmod.Bigmod_Nat.Nat>);
        final _y = (_y : stdgo.Ref<stdgo._internal.crypto.internal.bigmod.Bigmod_Nat.Nat>);
        return stdgo._internal.crypto.internal.bigmod.Bigmod_Nat_static_extension.Nat_static_extension._cmpGeq(_x, _y);
    }
    static public function isZero(_x:Nat):T_choice {
        final _x = (_x : stdgo.Ref<stdgo._internal.crypto.internal.bigmod.Bigmod_Nat.Nat>);
        return stdgo._internal.crypto.internal.bigmod.Bigmod_Nat_static_extension.Nat_static_extension.isZero(_x);
    }
    static public function equal(_x:Nat, _y:Nat):T_choice {
        final _x = (_x : stdgo.Ref<stdgo._internal.crypto.internal.bigmod.Bigmod_Nat.Nat>);
        final _y = (_y : stdgo.Ref<stdgo._internal.crypto.internal.bigmod.Bigmod_Nat.Nat>);
        return stdgo._internal.crypto.internal.bigmod.Bigmod_Nat_static_extension.Nat_static_extension.equal(_x, _y);
    }
    static public function _setBytes(_x:Nat, _b:Array<std.UInt>, _m:Modulus):stdgo.Error {
        final _x = (_x : stdgo.Ref<stdgo._internal.crypto.internal.bigmod.Bigmod_Nat.Nat>);
        final _b = ([for (i in _b) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _m = (_m : stdgo.Ref<stdgo._internal.crypto.internal.bigmod.Bigmod_Modulus.Modulus>);
        return stdgo._internal.crypto.internal.bigmod.Bigmod_Nat_static_extension.Nat_static_extension._setBytes(_x, _b, _m);
    }
    static public function setOverflowingBytes(_x:Nat, _b:Array<std.UInt>, _m:Modulus):stdgo.Tuple<Nat, stdgo.Error> {
        final _x = (_x : stdgo.Ref<stdgo._internal.crypto.internal.bigmod.Bigmod_Nat.Nat>);
        final _b = ([for (i in _b) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _m = (_m : stdgo.Ref<stdgo._internal.crypto.internal.bigmod.Bigmod_Modulus.Modulus>);
        return {
            final obj = stdgo._internal.crypto.internal.bigmod.Bigmod_Nat_static_extension.Nat_static_extension.setOverflowingBytes(_x, _b, _m);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function setBytes(_x:Nat, _b:Array<std.UInt>, _m:Modulus):stdgo.Tuple<Nat, stdgo.Error> {
        final _x = (_x : stdgo.Ref<stdgo._internal.crypto.internal.bigmod.Bigmod_Nat.Nat>);
        final _b = ([for (i in _b) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _m = (_m : stdgo.Ref<stdgo._internal.crypto.internal.bigmod.Bigmod_Modulus.Modulus>);
        return {
            final obj = stdgo._internal.crypto.internal.bigmod.Bigmod_Nat_static_extension.Nat_static_extension.setBytes(_x, _b, _m);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function bytes(_x:Nat, _m:Modulus):Array<std.UInt> {
        final _x = (_x : stdgo.Ref<stdgo._internal.crypto.internal.bigmod.Bigmod_Nat.Nat>);
        final _m = (_m : stdgo.Ref<stdgo._internal.crypto.internal.bigmod.Bigmod_Modulus.Modulus>);
        return [for (i in stdgo._internal.crypto.internal.bigmod.Bigmod_Nat_static_extension.Nat_static_extension.bytes(_x, _m)) i];
    }
    static public function _setBig(_x:Nat, _n:stdgo._internal.math.big.Big_Int_.Int_):Nat {
        final _x = (_x : stdgo.Ref<stdgo._internal.crypto.internal.bigmod.Bigmod_Nat.Nat>);
        final _n = (_n : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
        return stdgo._internal.crypto.internal.bigmod.Bigmod_Nat_static_extension.Nat_static_extension._setBig(_x, _n);
    }
    static public function _set(_x:Nat, _y:Nat):Nat {
        final _x = (_x : stdgo.Ref<stdgo._internal.crypto.internal.bigmod.Bigmod_Nat.Nat>);
        final _y = (_y : stdgo.Ref<stdgo._internal.crypto.internal.bigmod.Bigmod_Nat.Nat>);
        return stdgo._internal.crypto.internal.bigmod.Bigmod_Nat_static_extension.Nat_static_extension._set(_x, _y);
    }
    static public function _reset(_x:Nat, _n:StdTypes.Int):Nat {
        final _x = (_x : stdgo.Ref<stdgo._internal.crypto.internal.bigmod.Bigmod_Nat.Nat>);
        final _n = (_n : stdgo.GoInt);
        return stdgo._internal.crypto.internal.bigmod.Bigmod_Nat_static_extension.Nat_static_extension._reset(_x, _n);
    }
    static public function _expand(_x:Nat, _n:StdTypes.Int):Nat {
        final _x = (_x : stdgo.Ref<stdgo._internal.crypto.internal.bigmod.Bigmod_Nat.Nat>);
        final _n = (_n : stdgo.GoInt);
        return stdgo._internal.crypto.internal.bigmod.Bigmod_Nat_static_extension.Nat_static_extension._expand(_x, _n);
    }
}
