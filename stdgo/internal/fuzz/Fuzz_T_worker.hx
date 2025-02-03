package stdgo.internal.fuzz;
@:structInit @:using(stdgo.internal.fuzz.Fuzz.T_worker_static_extension) abstract T_worker(stdgo._internal.internal.fuzz.Fuzz_T_worker.T_worker) from stdgo._internal.internal.fuzz.Fuzz_T_worker.T_worker to stdgo._internal.internal.fuzz.Fuzz_T_worker.T_worker {
    public var _dir(get, set) : String;
    function get__dir():String return this._dir;
    function set__dir(v:String):String {
        this._dir = (v : stdgo.GoString);
        return v;
    }
    public var _binPath(get, set) : String;
    function get__binPath():String return this._binPath;
    function set__binPath(v:String):String {
        this._binPath = (v : stdgo.GoString);
        return v;
    }
    public var _args(get, set) : Array<String>;
    function get__args():Array<String> return [for (i in this._args) i];
    function set__args(v:Array<String>):Array<String> {
        this._args = ([for (i in v) (i : stdgo.GoString)] : stdgo.Slice<stdgo.GoString>);
        return v;
    }
    public var _env(get, set) : Array<String>;
    function get__env():Array<String> return [for (i in this._env) i];
    function set__env(v:Array<String>):Array<String> {
        this._env = ([for (i in v) (i : stdgo.GoString)] : stdgo.Slice<stdgo.GoString>);
        return v;
    }
    public var _coordinator(get, set) : T_coordinator;
    function get__coordinator():T_coordinator return this._coordinator;
    function set__coordinator(v:T_coordinator):T_coordinator {
        this._coordinator = (v : stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_T_coordinator.T_coordinator>);
        return v;
    }
    public var _memMu(get, set) : stdgo.Chan<stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_T_sharedMem.T_sharedMem>>;
    function get__memMu():stdgo.Chan<stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_T_sharedMem.T_sharedMem>> return this._memMu;
    function set__memMu(v:stdgo.Chan<stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_T_sharedMem.T_sharedMem>>):stdgo.Chan<stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_T_sharedMem.T_sharedMem>> {
        this._memMu = (v : stdgo.Chan<stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_T_sharedMem.T_sharedMem>>);
        return v;
    }
    public var _cmd(get, set) : stdgo._internal.os.exec.Exec_Cmd.Cmd;
    function get__cmd():stdgo._internal.os.exec.Exec_Cmd.Cmd return this._cmd;
    function set__cmd(v:stdgo._internal.os.exec.Exec_Cmd.Cmd):stdgo._internal.os.exec.Exec_Cmd.Cmd {
        this._cmd = (v : stdgo.Ref<stdgo._internal.os.exec.Exec_Cmd.Cmd>);
        return v;
    }
    public var _client(get, set) : T_workerClient;
    function get__client():T_workerClient return this._client;
    function set__client(v:T_workerClient):T_workerClient {
        this._client = (v : stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_T_workerClient.T_workerClient>);
        return v;
    }
    public var _waitErr(get, set) : stdgo.Error;
    function get__waitErr():stdgo.Error return this._waitErr;
    function set__waitErr(v:stdgo.Error):stdgo.Error {
        this._waitErr = (v : stdgo.Error);
        return v;
    }
    public var _interrupted(get, set) : Bool;
    function get__interrupted():Bool return this._interrupted;
    function set__interrupted(v:Bool):Bool {
        this._interrupted = v;
        return v;
    }
    public var _termC(get, set) : stdgo.Chan<stdgo._internal.internal.fuzz.Fuzz_T_noCopy.T_noCopy>;
    function get__termC():stdgo.Chan<stdgo._internal.internal.fuzz.Fuzz_T_noCopy.T_noCopy> return this._termC;
    function set__termC(v:stdgo.Chan<stdgo._internal.internal.fuzz.Fuzz_T_noCopy.T_noCopy>):stdgo.Chan<stdgo._internal.internal.fuzz.Fuzz_T_noCopy.T_noCopy> {
        this._termC = (v : stdgo.Chan<stdgo._internal.internal.fuzz.Fuzz_T_noCopy.T_noCopy>);
        return v;
    }
    public function new(?_dir:String, ?_binPath:String, ?_args:Array<String>, ?_env:Array<String>, ?_coordinator:T_coordinator, ?_memMu:stdgo.Chan<stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_T_sharedMem.T_sharedMem>>, ?_cmd:stdgo._internal.os.exec.Exec_Cmd.Cmd, ?_client:T_workerClient, ?_waitErr:stdgo.Error, ?_interrupted:Bool, ?_termC:stdgo.Chan<stdgo._internal.internal.fuzz.Fuzz_T_noCopy.T_noCopy>) this = new stdgo._internal.internal.fuzz.Fuzz_T_worker.T_worker(
(_dir : stdgo.GoString),
(_binPath : stdgo.GoString),
([for (i in _args) (i : stdgo.GoString)] : stdgo.Slice<stdgo.GoString>),
([for (i in _env) (i : stdgo.GoString)] : stdgo.Slice<stdgo.GoString>),
(_coordinator : stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_T_coordinator.T_coordinator>),
(_memMu : stdgo.Chan<stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_T_sharedMem.T_sharedMem>>),
(_cmd : stdgo.Ref<stdgo._internal.os.exec.Exec_Cmd.Cmd>),
(_client : stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_T_workerClient.T_workerClient>),
(_waitErr : stdgo.Error),
_interrupted,
(_termC : stdgo.Chan<stdgo._internal.internal.fuzz.Fuzz_T_noCopy.T_noCopy>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
