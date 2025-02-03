package stdgo.testing;
@:structInit @:using(stdgo.testing.Testing.M_static_extension) abstract M(stdgo._internal.testing.Testing_M.M) from stdgo._internal.testing.Testing_M.M to stdgo._internal.testing.Testing_M.M {
    public var _deps(get, set) : T_testDeps;
    function get__deps():T_testDeps return this._deps;
    function set__deps(v:T_testDeps):T_testDeps {
        this._deps = v;
        return v;
    }
    public var _tests(get, set) : Array<InternalTest>;
    function get__tests():Array<InternalTest> return [for (i in this._tests) i];
    function set__tests(v:Array<InternalTest>):Array<InternalTest> {
        this._tests = ([for (i in v) i] : stdgo.Slice<stdgo._internal.testing.Testing_InternalTest.InternalTest>);
        return v;
    }
    public var _benchmarks(get, set) : Array<InternalBenchmark>;
    function get__benchmarks():Array<InternalBenchmark> return [for (i in this._benchmarks) i];
    function set__benchmarks(v:Array<InternalBenchmark>):Array<InternalBenchmark> {
        this._benchmarks = ([for (i in v) i] : stdgo.Slice<stdgo._internal.testing.Testing_InternalBenchmark.InternalBenchmark>);
        return v;
    }
    public var _fuzzTargets(get, set) : Array<InternalFuzzTarget>;
    function get__fuzzTargets():Array<InternalFuzzTarget> return [for (i in this._fuzzTargets) i];
    function set__fuzzTargets(v:Array<InternalFuzzTarget>):Array<InternalFuzzTarget> {
        this._fuzzTargets = ([for (i in v) i] : stdgo.Slice<stdgo._internal.testing.Testing_InternalFuzzTarget.InternalFuzzTarget>);
        return v;
    }
    public var _examples(get, set) : Array<InternalExample>;
    function get__examples():Array<InternalExample> return [for (i in this._examples) i];
    function set__examples(v:Array<InternalExample>):Array<InternalExample> {
        this._examples = ([for (i in v) i] : stdgo.Slice<stdgo._internal.testing.Testing_InternalExample.InternalExample>);
        return v;
    }
    public var _timer(get, set) : stdgo._internal.time.Time_Timer.Timer;
    function get__timer():stdgo._internal.time.Time_Timer.Timer return this._timer;
    function set__timer(v:stdgo._internal.time.Time_Timer.Timer):stdgo._internal.time.Time_Timer.Timer {
        this._timer = (v : stdgo.Ref<stdgo._internal.time.Time_Timer.Timer>);
        return v;
    }
    public var _afterOnce(get, set) : stdgo._internal.sync.Sync_Once.Once;
    function get__afterOnce():stdgo._internal.sync.Sync_Once.Once return this._afterOnce;
    function set__afterOnce(v:stdgo._internal.sync.Sync_Once.Once):stdgo._internal.sync.Sync_Once.Once {
        this._afterOnce = v;
        return v;
    }
    public var _numRun(get, set) : StdTypes.Int;
    function get__numRun():StdTypes.Int return this._numRun;
    function set__numRun(v:StdTypes.Int):StdTypes.Int {
        this._numRun = (v : stdgo.GoInt);
        return v;
    }
    public var _exitCode(get, set) : StdTypes.Int;
    function get__exitCode():StdTypes.Int return this._exitCode;
    function set__exitCode(v:StdTypes.Int):StdTypes.Int {
        this._exitCode = (v : stdgo.GoInt);
        return v;
    }
    public function new(?_deps:T_testDeps, ?_tests:Array<InternalTest>, ?_benchmarks:Array<InternalBenchmark>, ?_fuzzTargets:Array<InternalFuzzTarget>, ?_examples:Array<InternalExample>, ?_timer:stdgo._internal.time.Time_Timer.Timer, ?_afterOnce:stdgo._internal.sync.Sync_Once.Once, ?_numRun:StdTypes.Int, ?_exitCode:StdTypes.Int) this = new stdgo._internal.testing.Testing_M.M(_deps, ([for (i in _tests) i] : stdgo.Slice<stdgo._internal.testing.Testing_InternalTest.InternalTest>), ([for (i in _benchmarks) i] : stdgo.Slice<stdgo._internal.testing.Testing_InternalBenchmark.InternalBenchmark>), ([for (i in _fuzzTargets) i] : stdgo.Slice<stdgo._internal.testing.Testing_InternalFuzzTarget.InternalFuzzTarget>), ([for (i in _examples) i] : stdgo.Slice<stdgo._internal.testing.Testing_InternalExample.InternalExample>), (_timer : stdgo.Ref<stdgo._internal.time.Time_Timer.Timer>), _afterOnce, (_numRun : stdgo.GoInt), (_exitCode : stdgo.GoInt));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
