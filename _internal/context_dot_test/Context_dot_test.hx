package _internal.context_dot_test;
import stdgo._internal.context.Context;
function main():Void {
        var _m = stdgo._internal.testing.Testing_mainStart.mainStart(stdgo.Go.asInterface((new stdgo._internal.testing.internal.testdeps.Testdeps_TestDeps.TestDeps() : stdgo._internal.testing.internal.testdeps.Testdeps_TestDeps.TestDeps)), _internal.context_dot_test.Context_dot_test__tests._tests, _internal.context_dot_test.Context_dot_test__benchmarks._benchmarks, _internal.context_dot_test.Context_dot_test__fuzzTargets._fuzzTargets, _internal.context_dot_test.Context_dot_test__examples._examples);
        Sys.exit(_m.run());
    }
@:keep var __init_go2hx__ = {
        try {
            var __tmp__0 = _internal.context_test.Context_test__neverReady._neverReady, __tmp__1 = _internal.context_test.Context_test__k1._k1, __tmp__2 = _internal.context_test.Context_test__k2._k2, __tmp__3 = _internal.context_test.Context_test__k3._k3;
            var __tmp__0 = _internal.context_dot_test.Context_dot_test__tests._tests, __tmp__1 = _internal.context_dot_test.Context_dot_test__benchmarks._benchmarks, __tmp__2 = _internal.context_dot_test.Context_dot_test__fuzzTargets._fuzzTargets, __tmp__3 = _internal.context_dot_test.Context_dot_test__examples._examples;
            stdgo._internal.testing.internal.testdeps.Testdeps_importPath.importPath = ("context" : stdgo.GoString);
        } catch(__exception__) if (__exception__.message != "__return__") throw __exception__;
        true;
    };
