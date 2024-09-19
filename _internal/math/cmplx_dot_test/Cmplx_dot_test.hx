package _internal.math.cmplx_dot_test;
function main():Void {
        var _m = stdgo._internal.testing.Testing_mainStart.mainStart(stdgo.Go.asInterface((new stdgo._internal.testing.internal.testdeps.Testdeps_TestDeps.TestDeps() : stdgo._internal.testing.internal.testdeps.Testdeps_TestDeps.TestDeps)), _internal.math.cmplx_dot_test.Cmplx_dot_test__tests._tests, _internal.math.cmplx_dot_test.Cmplx_dot_test__benchmarks._benchmarks, _internal.math.cmplx_dot_test.Cmplx_dot_test__fuzzTargets._fuzzTargets, _internal.math.cmplx_dot_test.Cmplx_dot_test__examples._examples);
        Sys.exit(_m.run());
    }
@:keep var __init_go2hx__ = {
        try {
            stdgo._internal.testing.internal.testdeps.Testdeps_importPath.importPath = ("math/cmplx" : stdgo.GoString);
        } catch(__exception__) if (__exception__.message != "__return__") throw __exception__;
        true;
    };
