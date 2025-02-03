package stdgo.internal.fuzz;
class T_mutatorRand_static_extension {
    static public function _restore(t:stdgo._internal.internal.fuzz.Fuzz_T_mutatorRand.T_mutatorRand, _randState:haxe.UInt64, _randInc:haxe.UInt64):Void {
        final _randState = (_randState : stdgo.GoUInt64);
        final _randInc = (_randInc : stdgo.GoUInt64);
        stdgo._internal.internal.fuzz.Fuzz_T_mutatorRand_static_extension.T_mutatorRand_static_extension._restore(t, _randState, _randInc);
    }
    static public function _save(t:stdgo._internal.internal.fuzz.Fuzz_T_mutatorRand.T_mutatorRand, _randState:stdgo.Pointer<haxe.UInt64>, _randInc:stdgo.Pointer<haxe.UInt64>):Void {
        stdgo._internal.internal.fuzz.Fuzz_T_mutatorRand_static_extension.T_mutatorRand_static_extension._save(t, _randState, _randInc);
    }
    static public function _bool(t:stdgo._internal.internal.fuzz.Fuzz_T_mutatorRand.T_mutatorRand):Bool {
        return stdgo._internal.internal.fuzz.Fuzz_T_mutatorRand_static_extension.T_mutatorRand_static_extension._bool(t);
    }
    static public function _exp2(t:stdgo._internal.internal.fuzz.Fuzz_T_mutatorRand.T_mutatorRand):StdTypes.Int {
        return stdgo._internal.internal.fuzz.Fuzz_T_mutatorRand_static_extension.T_mutatorRand_static_extension._exp2(t);
    }
    static public function _uint32n(t:stdgo._internal.internal.fuzz.Fuzz_T_mutatorRand.T_mutatorRand, _0:std.UInt):std.UInt {
        final _0 = (_0 : stdgo.GoUInt32);
        return stdgo._internal.internal.fuzz.Fuzz_T_mutatorRand_static_extension.T_mutatorRand_static_extension._uint32n(t, _0);
    }
    static public function _intn(t:stdgo._internal.internal.fuzz.Fuzz_T_mutatorRand.T_mutatorRand, _0:StdTypes.Int):StdTypes.Int {
        final _0 = (_0 : stdgo.GoInt);
        return stdgo._internal.internal.fuzz.Fuzz_T_mutatorRand_static_extension.T_mutatorRand_static_extension._intn(t, _0);
    }
    static public function _uint32(t:stdgo._internal.internal.fuzz.Fuzz_T_mutatorRand.T_mutatorRand):std.UInt {
        return stdgo._internal.internal.fuzz.Fuzz_T_mutatorRand_static_extension.T_mutatorRand_static_extension._uint32(t);
    }
}
