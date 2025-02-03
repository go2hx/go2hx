package stdgo.internal.fuzz;
@:structInit @:using(stdgo.internal.fuzz.Fuzz.T_workerServer_static_extension) abstract T_workerServer(stdgo._internal.internal.fuzz.Fuzz_T_workerServer.T_workerServer) from stdgo._internal.internal.fuzz.Fuzz_T_workerServer.T_workerServer to stdgo._internal.internal.fuzz.Fuzz_T_workerServer.T_workerServer {
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
    public var _coverageMask(get, set) : Array<std.UInt>;
    function get__coverageMask():Array<std.UInt> return [for (i in this._coverageMask) i];
    function set__coverageMask(v:Array<std.UInt>):Array<std.UInt> {
        this._coverageMask = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public var _fuzzFn(get, set) : stdgo._internal.internal.fuzz.Fuzz_CorpusEntry.CorpusEntry -> { var _0 : stdgo._internal.time.Time_Duration.Duration; var _1 : stdgo.Error; };
    function get__fuzzFn():stdgo._internal.internal.fuzz.Fuzz_CorpusEntry.CorpusEntry -> { var _0 : stdgo._internal.time.Time_Duration.Duration; var _1 : stdgo.Error; } return _0 -> this._fuzzFn(_0);
    function set__fuzzFn(v:stdgo._internal.internal.fuzz.Fuzz_CorpusEntry.CorpusEntry -> { var _0 : stdgo._internal.time.Time_Duration.Duration; var _1 : stdgo.Error; }):stdgo._internal.internal.fuzz.Fuzz_CorpusEntry.CorpusEntry -> { var _0 : stdgo._internal.time.Time_Duration.Duration; var _1 : stdgo.Error; } {
        this._fuzzFn = v;
        return v;
    }
    public function new(?_workerComm:T_workerComm, ?_m:T_mutator, ?_coverageMask:Array<std.UInt>, ?_fuzzFn:stdgo._internal.internal.fuzz.Fuzz_CorpusEntry.CorpusEntry -> { var _0 : stdgo._internal.time.Time_Duration.Duration; var _1 : stdgo.Error; }) this = new stdgo._internal.internal.fuzz.Fuzz_T_workerServer.T_workerServer(_workerComm, (_m : stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_T_mutator.T_mutator>), ([for (i in _coverageMask) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>), _fuzzFn);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
