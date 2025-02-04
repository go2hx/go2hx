package stdgo._internal.internal.fuzz;
@:keep class T_mutatorRand_static_extension {
    @:interfacetypeffun
    static public function _restore(t:stdgo._internal.internal.fuzz.Fuzz_t_mutatorrand.T_mutatorRand, _randState:stdgo.GoUInt64, _randInc:stdgo.GoUInt64):Void t._restore(_randState, _randInc);
    @:interfacetypeffun
    static public function _save(t:stdgo._internal.internal.fuzz.Fuzz_t_mutatorrand.T_mutatorRand, _randState:stdgo.Pointer<stdgo.GoUInt64>, _randInc:stdgo.Pointer<stdgo.GoUInt64>):Void t._save(_randState, _randInc);
    @:interfacetypeffun
    static public function _bool(t:stdgo._internal.internal.fuzz.Fuzz_t_mutatorrand.T_mutatorRand):Bool return t._bool();
    @:interfacetypeffun
    static public function _exp2(t:stdgo._internal.internal.fuzz.Fuzz_t_mutatorrand.T_mutatorRand):stdgo.GoInt return t._exp2();
    @:interfacetypeffun
    static public function _uint32n(t:stdgo._internal.internal.fuzz.Fuzz_t_mutatorrand.T_mutatorRand, _0:stdgo.GoUInt32):stdgo.GoUInt32 return t._uint32n(_0);
    @:interfacetypeffun
    static public function _intn(t:stdgo._internal.internal.fuzz.Fuzz_t_mutatorrand.T_mutatorRand, _0:stdgo.GoInt):stdgo.GoInt return t._intn(_0);
    @:interfacetypeffun
    static public function _uint32(t:stdgo._internal.internal.fuzz.Fuzz_t_mutatorrand.T_mutatorRand):stdgo.GoUInt32 return t._uint32();
}
