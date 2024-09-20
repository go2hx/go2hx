package stdgo._internal.internal.fuzz;
import stdgo._internal.unsafe.Unsafe;
@:keep class T_mutatorRand_static_extension {
    static public function _restore(t:stdgo._internal.internal.fuzz.Fuzz_T_mutatorRand.T_mutatorRand, _randState:stdgo.GoUInt64, _randInc:stdgo.GoUInt64):Void t._restore(_randState, _randInc);
    static public function _save(t:stdgo._internal.internal.fuzz.Fuzz_T_mutatorRand.T_mutatorRand, _randState:stdgo.Pointer<stdgo.GoUInt64>, _randInc:stdgo.Pointer<stdgo.GoUInt64>):Void t._save(_randState, _randInc);
    static public function _bool(t:stdgo._internal.internal.fuzz.Fuzz_T_mutatorRand.T_mutatorRand):Bool return t._bool();
    static public function _exp2(t:stdgo._internal.internal.fuzz.Fuzz_T_mutatorRand.T_mutatorRand):stdgo.GoInt return t._exp2();
    static public function _uint32n(t:stdgo._internal.internal.fuzz.Fuzz_T_mutatorRand.T_mutatorRand, _0:stdgo.GoUInt32):stdgo.GoUInt32 return t._uint32n(_0);
    static public function _intn(t:stdgo._internal.internal.fuzz.Fuzz_T_mutatorRand.T_mutatorRand, _0:stdgo.GoInt):stdgo.GoInt return t._intn(_0);
    static public function _uint32(t:stdgo._internal.internal.fuzz.Fuzz_T_mutatorRand.T_mutatorRand):stdgo.GoUInt32 return t._uint32();
}
