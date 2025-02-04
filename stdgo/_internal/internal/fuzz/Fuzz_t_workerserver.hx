package stdgo._internal.internal.fuzz;
@:structInit @:using(stdgo._internal.internal.fuzz.Fuzz_t_workerserver_static_extension.T_workerServer_static_extension) class T_workerServer {
    @:embedded
    public var _workerComm : stdgo._internal.internal.fuzz.Fuzz_t_workercomm.T_workerComm = ({} : stdgo._internal.internal.fuzz.Fuzz_t_workercomm.T_workerComm);
    public var _m : stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_t_mutator.T_mutator> = (null : stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_t_mutator.T_mutator>);
    public var _coverageMask : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public var _fuzzFn : stdgo._internal.internal.fuzz.Fuzz_corpusentry.CorpusEntry -> { var _0 : stdgo._internal.time.Time_duration.Duration; var _1 : stdgo.Error; } = null;
    public function new(?_workerComm:stdgo._internal.internal.fuzz.Fuzz_t_workercomm.T_workerComm, ?_m:stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_t_mutator.T_mutator>, ?_coverageMask:stdgo.Slice<stdgo.GoUInt8>, ?_fuzzFn:stdgo._internal.internal.fuzz.Fuzz_corpusentry.CorpusEntry -> { var _0 : stdgo._internal.time.Time_duration.Duration; var _1 : stdgo.Error; }) {
        if (_workerComm != null) this._workerComm = _workerComm;
        if (_m != null) this._m = _m;
        if (_coverageMask != null) this._coverageMask = _coverageMask;
        if (_fuzzFn != null) this._fuzzFn = _fuzzFn;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_workerServer(_workerComm, _m, _coverageMask, _fuzzFn);
    }
}
