package stdgo._internal.internal.fuzz;
import stdgo._internal.unsafe.Unsafe;
@:structInit class T_workerComm {
    public var _fuzzIn : stdgo.Ref<stdgo._internal.os.Os_File.File> = (null : stdgo.Ref<stdgo._internal.os.Os_File.File>);
    public var _fuzzOut : stdgo.Ref<stdgo._internal.os.Os_File.File> = (null : stdgo.Ref<stdgo._internal.os.Os_File.File>);
    public var _memMu : stdgo.Chan<stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_T_sharedMem.T_sharedMem>> = (null : stdgo.Chan<stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_T_sharedMem.T_sharedMem>>);
    public function new(?_fuzzIn:stdgo.Ref<stdgo._internal.os.Os_File.File>, ?_fuzzOut:stdgo.Ref<stdgo._internal.os.Os_File.File>, ?_memMu:stdgo.Chan<stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_T_sharedMem.T_sharedMem>>) {
        if (_fuzzIn != null) this._fuzzIn = _fuzzIn;
        if (_fuzzOut != null) this._fuzzOut = _fuzzOut;
        if (_memMu != null) this._memMu = _memMu;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_workerComm(_fuzzIn, _fuzzOut, _memMu);
    }
}
