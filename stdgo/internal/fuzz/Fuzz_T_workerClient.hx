package stdgo.internal.fuzz;
@:structInit @:using(stdgo.internal.fuzz.Fuzz.T_workerClient_static_extension) abstract T_workerClient(stdgo._internal.internal.fuzz.Fuzz_T_workerClient.T_workerClient) from stdgo._internal.internal.fuzz.Fuzz_T_workerClient.T_workerClient to stdgo._internal.internal.fuzz.Fuzz_T_workerClient.T_workerClient {
    public var _workerComm(get, set) : T_workerComm;
    function get__workerComm():T_workerComm return this._workerComm;
    function set__workerComm(v:T_workerComm):T_workerComm {
        this._workerComm = v;
        return v;
    }
    public var _m(get, set) : T_mutator;
    function get__m():T_mutator return this._m;
    function set__m(v:T_mutator):T_mutator {
        this._m = (v : stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_T_mutator.T_mutator>);
        return v;
    }
    public var _mu(get, set) : stdgo._internal.sync.Sync_Mutex.Mutex;
    function get__mu():stdgo._internal.sync.Sync_Mutex.Mutex return this._mu;
    function set__mu(v:stdgo._internal.sync.Sync_Mutex.Mutex):stdgo._internal.sync.Sync_Mutex.Mutex {
        this._mu = v;
        return v;
    }
    public function new(?_workerComm:T_workerComm, ?_m:T_mutator, ?_mu:stdgo._internal.sync.Sync_Mutex.Mutex) this = new stdgo._internal.internal.fuzz.Fuzz_T_workerClient.T_workerClient(_workerComm, (_m : stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_T_mutator.T_mutator>), _mu);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
