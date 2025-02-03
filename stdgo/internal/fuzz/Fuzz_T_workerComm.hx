package stdgo.internal.fuzz;
@:structInit @:using(stdgo.internal.fuzz.Fuzz.T_workerComm_static_extension) abstract T_workerComm(stdgo._internal.internal.fuzz.Fuzz_T_workerComm.T_workerComm) from stdgo._internal.internal.fuzz.Fuzz_T_workerComm.T_workerComm to stdgo._internal.internal.fuzz.Fuzz_T_workerComm.T_workerComm {
    public var _fuzzIn(get, set) : stdgo._internal.os.Os_File.File;
    function get__fuzzIn():stdgo._internal.os.Os_File.File return this._fuzzIn;
    function set__fuzzIn(v:stdgo._internal.os.Os_File.File):stdgo._internal.os.Os_File.File {
        this._fuzzIn = (v : stdgo.Ref<stdgo._internal.os.Os_File.File>);
        return v;
    }
    public var _fuzzOut(get, set) : stdgo._internal.os.Os_File.File;
    function get__fuzzOut():stdgo._internal.os.Os_File.File return this._fuzzOut;
    function set__fuzzOut(v:stdgo._internal.os.Os_File.File):stdgo._internal.os.Os_File.File {
        this._fuzzOut = (v : stdgo.Ref<stdgo._internal.os.Os_File.File>);
        return v;
    }
    public var _memMu(get, set) : stdgo.Chan<stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_T_sharedMem.T_sharedMem>>;
    function get__memMu():stdgo.Chan<stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_T_sharedMem.T_sharedMem>> return this._memMu;
    function set__memMu(v:stdgo.Chan<stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_T_sharedMem.T_sharedMem>>):stdgo.Chan<stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_T_sharedMem.T_sharedMem>> {
        this._memMu = (v : stdgo.Chan<stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_T_sharedMem.T_sharedMem>>);
        return v;
    }
    public function new(?_fuzzIn:stdgo._internal.os.Os_File.File, ?_fuzzOut:stdgo._internal.os.Os_File.File, ?_memMu:stdgo.Chan<stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_T_sharedMem.T_sharedMem>>) this = new stdgo._internal.internal.fuzz.Fuzz_T_workerComm.T_workerComm((_fuzzIn : stdgo.Ref<stdgo._internal.os.Os_File.File>), (_fuzzOut : stdgo.Ref<stdgo._internal.os.Os_File.File>), (_memMu : stdgo.Chan<stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_T_sharedMem.T_sharedMem>>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
