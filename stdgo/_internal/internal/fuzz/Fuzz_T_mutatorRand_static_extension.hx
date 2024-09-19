package stdgo._internal.internal.fuzz;
import stdgo._internal.unsafe.Unsafe;
@:keep class T_mutatorRand_static_extension {
    static public function _restore(t:T_mutatorRand, _randState:stdgo.GoUInt64, _randInc:stdgo.GoUInt64):Void t._restore(_randState, _randInc);
    static public function _save(t:T_mutatorRand, _randState:stdgo.Pointer<stdgo.GoUInt64>, _randInc:stdgo.Pointer<stdgo.GoUInt64>):Void t._save(_randState, _randInc);
    static public function _bool(t:T_mutatorRand):Bool return t._bool();
    static public function _exp2(t:T_mutatorRand):stdgo.GoInt return t._exp2();
    static public function _uint32n(t:T_mutatorRand, _0:stdgo.GoUInt32):stdgo.GoUInt32 return t._uint32n(_0);
    static public function _intn(t:T_mutatorRand, _0:stdgo.GoInt):stdgo.GoInt return t._intn(_0);
    static public function _uint32(t:T_mutatorRand):stdgo.GoUInt32 return t._uint32();
}
