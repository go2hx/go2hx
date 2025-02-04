package stdgo._internal.internal.fuzz;
@:structInit @:using(stdgo._internal.internal.fuzz.Fuzz_t_mutator_static_extension.T_mutator_static_extension) class T_mutator {
    public var _r : stdgo._internal.internal.fuzz.Fuzz_t_mutatorrand.T_mutatorRand = (null : stdgo._internal.internal.fuzz.Fuzz_t_mutatorrand.T_mutatorRand);
    public var _scratch : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public function new(?_r:stdgo._internal.internal.fuzz.Fuzz_t_mutatorrand.T_mutatorRand, ?_scratch:stdgo.Slice<stdgo.GoUInt8>) {
        if (_r != null) this._r = _r;
        if (_scratch != null) this._scratch = _scratch;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_mutator(_r, _scratch);
    }
}
