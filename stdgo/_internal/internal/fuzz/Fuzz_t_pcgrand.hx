package stdgo._internal.internal.fuzz;
@:structInit @:using(stdgo._internal.internal.fuzz.Fuzz_t_pcgrand_static_extension.T_pcgRand_static_extension) class T_pcgRand {
    public var _noCopy : stdgo._internal.internal.fuzz.Fuzz_t_nocopy.T_noCopy = ({} : stdgo._internal.internal.fuzz.Fuzz_t_nocopy.T_noCopy);
    public var _state : stdgo.GoUInt64 = 0;
    public var _inc : stdgo.GoUInt64 = 0;
    public function new(?_noCopy:stdgo._internal.internal.fuzz.Fuzz_t_nocopy.T_noCopy, ?_state:stdgo.GoUInt64, ?_inc:stdgo.GoUInt64) {
        if (_noCopy != null) this._noCopy = _noCopy;
        if (_state != null) this._state = _state;
        if (_inc != null) this._inc = _inc;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_pcgRand(_noCopy, _state, _inc);
    }
}
