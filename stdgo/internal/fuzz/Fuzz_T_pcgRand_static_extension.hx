package stdgo.internal.fuzz;
class T_pcgRand_static_extension {
    static public function _bool(_r:T_pcgRand):Bool {
        final _r = (_r : stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_T_pcgRand.T_pcgRand>);
        return stdgo._internal.internal.fuzz.Fuzz_T_pcgRand_static_extension.T_pcgRand_static_extension._bool(_r);
    }
    static public function _exp2(_r:T_pcgRand):StdTypes.Int {
        final _r = (_r : stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_T_pcgRand.T_pcgRand>);
        return stdgo._internal.internal.fuzz.Fuzz_T_pcgRand_static_extension.T_pcgRand_static_extension._exp2(_r);
    }
    static public function _uint32n(_r:T_pcgRand, _n:std.UInt):std.UInt {
        final _r = (_r : stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_T_pcgRand.T_pcgRand>);
        final _n = (_n : stdgo.GoUInt32);
        return stdgo._internal.internal.fuzz.Fuzz_T_pcgRand_static_extension.T_pcgRand_static_extension._uint32n(_r, _n);
    }
    static public function _intn(_r:T_pcgRand, _n:StdTypes.Int):StdTypes.Int {
        final _r = (_r : stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_T_pcgRand.T_pcgRand>);
        final _n = (_n : stdgo.GoInt);
        return stdgo._internal.internal.fuzz.Fuzz_T_pcgRand_static_extension.T_pcgRand_static_extension._intn(_r, _n);
    }
    static public function _uint32(_r:T_pcgRand):std.UInt {
        final _r = (_r : stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_T_pcgRand.T_pcgRand>);
        return stdgo._internal.internal.fuzz.Fuzz_T_pcgRand_static_extension.T_pcgRand_static_extension._uint32(_r);
    }
    static public function _restore(_r:T_pcgRand, _randState:haxe.UInt64, _randInc:haxe.UInt64):Void {
        final _r = (_r : stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_T_pcgRand.T_pcgRand>);
        final _randState = (_randState : stdgo.GoUInt64);
        final _randInc = (_randInc : stdgo.GoUInt64);
        stdgo._internal.internal.fuzz.Fuzz_T_pcgRand_static_extension.T_pcgRand_static_extension._restore(_r, _randState, _randInc);
    }
    static public function _save(_r:T_pcgRand, _randState:stdgo.Pointer<haxe.UInt64>, _randInc:stdgo.Pointer<haxe.UInt64>):Void {
        final _r = (_r : stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_T_pcgRand.T_pcgRand>);
        stdgo._internal.internal.fuzz.Fuzz_T_pcgRand_static_extension.T_pcgRand_static_extension._save(_r, _randState, _randInc);
    }
    static public function _step(_r:T_pcgRand):Void {
        final _r = (_r : stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_T_pcgRand.T_pcgRand>);
        stdgo._internal.internal.fuzz.Fuzz_T_pcgRand_static_extension.T_pcgRand_static_extension._step(_r);
    }
}
