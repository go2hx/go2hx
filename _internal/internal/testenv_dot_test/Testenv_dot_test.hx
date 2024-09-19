package _internal.internal.testenv_dot_test;
import stdgo._internal.internal.testenv.Testenv;
function main():Void {
        var _m = stdgo._internal.testing.Testing_mainStart.mainStart(stdgo.Go.asInterface((new stdgo._internal.testing.internal.testdeps.Testdeps_TestDeps.TestDeps() : stdgo._internal.testing.internal.testdeps.Testdeps_TestDeps.TestDeps)), _internal.internal.testenv_dot_test.Testenv_dot_test__tests._tests, _internal.internal.testenv_dot_test.Testenv_dot_test__benchmarks._benchmarks, _internal.internal.testenv_dot_test.Testenv_dot_test__fuzzTargets._fuzzTargets, _internal.internal.testenv_dot_test.Testenv_dot_test__examples._examples);
        Sys.exit(_m.run());
    }
@:keep var __init_go2hx__ = {
        try {
            stdgo._internal.testing.internal.testdeps.Testdeps_importPath.importPath = ("internal/testenv" : stdgo.GoString);
        } catch(__exception__) if (__exception__.message != "__return__") throw __exception__;
        true;
    };
