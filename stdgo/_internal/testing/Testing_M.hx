package stdgo._internal.testing;
@:structInit @:using(stdgo._internal.testing.Testing_M_static_extension.M_static_extension) class M {
    public var _deps : stdgo._internal.testing.Testing_T_testDeps.T_testDeps = (null : stdgo._internal.testing.Testing_T_testDeps.T_testDeps);
    public var _tests : stdgo.Slice<stdgo._internal.testing.Testing_InternalTest.InternalTest> = (null : stdgo.Slice<stdgo._internal.testing.Testing_InternalTest.InternalTest>);
    public var _benchmarks : stdgo.Slice<stdgo._internal.testing.Testing_InternalBenchmark.InternalBenchmark> = (null : stdgo.Slice<stdgo._internal.testing.Testing_InternalBenchmark.InternalBenchmark>);
    public var _fuzzTargets : stdgo.Slice<stdgo._internal.testing.Testing_InternalFuzzTarget.InternalFuzzTarget> = (null : stdgo.Slice<stdgo._internal.testing.Testing_InternalFuzzTarget.InternalFuzzTarget>);
    public var _examples : stdgo.Slice<stdgo._internal.testing.Testing_InternalExample.InternalExample> = (null : stdgo.Slice<stdgo._internal.testing.Testing_InternalExample.InternalExample>);
    public var _timer : stdgo.Ref<stdgo._internal.time.Time_Timer.Timer> = (null : stdgo.Ref<stdgo._internal.time.Time_Timer.Timer>);
    public var _afterOnce : stdgo._internal.sync.Sync_Once.Once = ({} : stdgo._internal.sync.Sync_Once.Once);
    public var _numRun : stdgo.GoInt = 0;
    public var _exitCode : stdgo.GoInt = 0;
    public function new(?_deps:stdgo._internal.testing.Testing_T_testDeps.T_testDeps, ?_tests:stdgo.Slice<stdgo._internal.testing.Testing_InternalTest.InternalTest>, ?_benchmarks:stdgo.Slice<stdgo._internal.testing.Testing_InternalBenchmark.InternalBenchmark>, ?_fuzzTargets:stdgo.Slice<stdgo._internal.testing.Testing_InternalFuzzTarget.InternalFuzzTarget>, ?_examples:stdgo.Slice<stdgo._internal.testing.Testing_InternalExample.InternalExample>, ?_timer:stdgo.Ref<stdgo._internal.time.Time_Timer.Timer>, ?_afterOnce:stdgo._internal.sync.Sync_Once.Once, ?_numRun:stdgo.GoInt, ?_exitCode:stdgo.GoInt) {
        if (_deps != null) this._deps = _deps;
        if (_tests != null) this._tests = _tests;
        if (_benchmarks != null) this._benchmarks = _benchmarks;
        if (_fuzzTargets != null) this._fuzzTargets = _fuzzTargets;
        if (_examples != null) this._examples = _examples;
        if (_timer != null) this._timer = _timer;
        if (_afterOnce != null) this._afterOnce = _afterOnce;
        if (_numRun != null) this._numRun = _numRun;
        if (_exitCode != null) this._exitCode = _exitCode;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new M(_deps, _tests, _benchmarks, _fuzzTargets, _examples, _timer, _afterOnce, _numRun, _exitCode);
    }
}
