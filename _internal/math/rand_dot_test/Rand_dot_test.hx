package _internal.math.rand_dot_test;
import stdgo._internal.math.rand.Rand;
function main():Void {
        var _m = stdgo._internal.testing.Testing_mainStart.mainStart(stdgo.Go.asInterface((new stdgo._internal.testing.internal.testdeps.Testdeps_TestDeps.TestDeps() : stdgo._internal.testing.internal.testdeps.Testdeps_TestDeps.TestDeps)), _internal.math.rand_dot_test.Rand_dot_test__tests._tests, _internal.math.rand_dot_test.Rand_dot_test__benchmarks._benchmarks, _internal.math.rand_dot_test.Rand_dot_test__fuzzTargets._fuzzTargets, _internal.math.rand_dot_test.Rand_dot_test__examples._examples);
        Sys.exit(_m.run());
    }
@:keep var __init_go2hx__ = {
        try {
            var __tmp__0 = _internal.math.rand_test.Rand_test__rn._rn, __tmp__1 = _internal.math.rand_test.Rand_test__kn._kn, __tmp__2 = _internal.math.rand_test.Rand_test__wn._wn, __tmp__3 = _internal.math.rand_test.Rand_test__fn._fn, __tmp__4 = _internal.math.rand_test.Rand_test__re._re, __tmp__5 = _internal.math.rand_test.Rand_test__ke._ke, __tmp__6 = _internal.math.rand_test.Rand_test__we._we, __tmp__7 = _internal.math.rand_test.Rand_test__fe._fe, __tmp__8 = _internal.math.rand_test.Rand_test__testSeeds._testSeeds, __tmp__9 = _internal.math.rand_test.Rand_test__printgolden._printgolden, __tmp__10 = _internal.math.rand_test.Rand_test__regressGolden._regressGolden;
            var __tmp__0 = _internal.math.rand_dot_test.Rand_dot_test__tests._tests, __tmp__1 = _internal.math.rand_dot_test.Rand_dot_test__benchmarks._benchmarks, __tmp__2 = _internal.math.rand_dot_test.Rand_dot_test__fuzzTargets._fuzzTargets, __tmp__3 = _internal.math.rand_dot_test.Rand_dot_test__examples._examples;
            stdgo._internal.testing.internal.testdeps.Testdeps_importPath.importPath = ("math/rand" : stdgo.GoString);
        } catch(__exception__) if (__exception__.message != "__return__") throw __exception__;
        true;
    };
