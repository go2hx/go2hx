package stdgo._internal.internal.fuzz;
@:structInit @:using(stdgo._internal.internal.fuzz.Fuzz_T_workerClient_static_extension.T_workerClient_static_extension) class T_workerClient {
    @:embedded
    public var _workerComm : stdgo._internal.internal.fuzz.Fuzz_T_workerComm.T_workerComm = ({} : stdgo._internal.internal.fuzz.Fuzz_T_workerComm.T_workerComm);
    public var _m : stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_T_mutator.T_mutator> = (null : stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_T_mutator.T_mutator>);
    public var _mu : stdgo._internal.sync.Sync_Mutex.Mutex = ({} : stdgo._internal.sync.Sync_Mutex.Mutex);
    public function new(?_workerComm:stdgo._internal.internal.fuzz.Fuzz_T_workerComm.T_workerComm, ?_m:stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_T_mutator.T_mutator>, ?_mu:stdgo._internal.sync.Sync_Mutex.Mutex) {
        if (_workerComm != null) this._workerComm = _workerComm;
        if (_m != null) this._m = _m;
        if (_mu != null) this._mu = _mu;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_workerClient(_workerComm, _m, _mu);
    }
}
