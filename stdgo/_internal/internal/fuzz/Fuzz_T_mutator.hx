package stdgo._internal.internal.fuzz;
import stdgo._internal.unsafe.Unsafe;
@:structInit @:using(stdgo._internal.internal.fuzz.Fuzz_T_mutator_static_extension.T_mutator_static_extension) class T_mutator {
    public var _r : stdgo._internal.internal.fuzz.Fuzz_T_mutatorRand.T_mutatorRand = (null : stdgo._internal.internal.fuzz.Fuzz_T_mutatorRand.T_mutatorRand);
    public var _scratch : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public function new(?_r:stdgo._internal.internal.fuzz.Fuzz_T_mutatorRand.T_mutatorRand, ?_scratch:stdgo.Slice<stdgo.GoUInt8>) {
        if (_r != null) this._r = _r;
        if (_scratch != null) this._scratch = _scratch;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_mutator(_r, _scratch);
    }
}