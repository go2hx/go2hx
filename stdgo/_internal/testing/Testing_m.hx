package stdgo._internal.testing;
@:structInit @:using(stdgo._internal.testing.Testing_m_static_extension.M_static_extension) class M {
    public var _deps : stdgo._internal.testing.Testing_t_testdeps.T_testDeps = (null : stdgo._internal.testing.Testing_t_testdeps.T_testDeps);
    public var _tests : stdgo.Slice<stdgo._internal.testing.Testing_internaltest.InternalTest> = (null : stdgo.Slice<stdgo._internal.testing.Testing_internaltest.InternalTest>);
    public var _benchmarks : stdgo.Slice<stdgo._internal.testing.Testing_internalbenchmark.InternalBenchmark> = (null : stdgo.Slice<stdgo._internal.testing.Testing_internalbenchmark.InternalBenchmark>);
    public var _fuzzTargets : stdgo.Slice<stdgo._internal.testing.Testing_internalfuzztarget.InternalFuzzTarget> = (null : stdgo.Slice<stdgo._internal.testing.Testing_internalfuzztarget.InternalFuzzTarget>);
    public var _examples : stdgo.Slice<stdgo._internal.testing.Testing_internalexample.InternalExample> = (null : stdgo.Slice<stdgo._internal.testing.Testing_internalexample.InternalExample>);
    public var _timer : stdgo.Ref<stdgo._internal.time.Time_timer.Timer> = (null : stdgo.Ref<stdgo._internal.time.Time_timer.Timer>);
    public var _afterOnce : stdgo._internal.sync.Sync_once.Once = ({} : stdgo._internal.sync.Sync_once.Once);
    public var _numRun : stdgo.GoInt = 0;
    public var _exitCode : stdgo.GoInt = 0;
    public function new(?_deps:stdgo._internal.testing.Testing_t_testdeps.T_testDeps, ?_tests:stdgo.Slice<stdgo._internal.testing.Testing_internaltest.InternalTest>, ?_benchmarks:stdgo.Slice<stdgo._internal.testing.Testing_internalbenchmark.InternalBenchmark>, ?_fuzzTargets:stdgo.Slice<stdgo._internal.testing.Testing_internalfuzztarget.InternalFuzzTarget>, ?_examples:stdgo.Slice<stdgo._internal.testing.Testing_internalexample.InternalExample>, ?_timer:stdgo.Ref<stdgo._internal.time.Time_timer.Timer>, ?_afterOnce:stdgo._internal.sync.Sync_once.Once, ?_numRun:stdgo.GoInt, ?_exitCode:stdgo.GoInt) {
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
