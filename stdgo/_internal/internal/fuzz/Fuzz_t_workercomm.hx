package stdgo._internal.internal.fuzz;
@:structInit @:using(stdgo._internal.internal.fuzz.Fuzz_t_workercomm_static_extension.T_workerComm_static_extension) class T_workerComm {
    public var _fuzzIn : stdgo.Ref<stdgo._internal.os.Os_file.File> = (null : stdgo.Ref<stdgo._internal.os.Os_file.File>);
    public var _fuzzOut : stdgo.Ref<stdgo._internal.os.Os_file.File> = (null : stdgo.Ref<stdgo._internal.os.Os_file.File>);
    public var _memMu : stdgo.Chan<stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_t_sharedmem.T_sharedMem>> = (null : stdgo.Chan<stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_t_sharedmem.T_sharedMem>>);
    public function new(?_fuzzIn:stdgo.Ref<stdgo._internal.os.Os_file.File>, ?_fuzzOut:stdgo.Ref<stdgo._internal.os.Os_file.File>, ?_memMu:stdgo.Chan<stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_t_sharedmem.T_sharedMem>>) {
        if (_fuzzIn != null) this._fuzzIn = _fuzzIn;
        if (_fuzzOut != null) this._fuzzOut = _fuzzOut;
        if (_memMu != null) this._memMu = _memMu;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_workerComm(_fuzzIn, _fuzzOut, _memMu);
    }
}
