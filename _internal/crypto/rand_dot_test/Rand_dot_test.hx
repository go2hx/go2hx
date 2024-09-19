package _internal.crypto.rand_dot_test;
function main():Void {
        var _m = stdgo._internal.testing.Testing_mainStart.mainStart(stdgo.Go.asInterface((new stdgo._internal.testing.internal.testdeps.Testdeps_TestDeps.TestDeps() : stdgo._internal.testing.internal.testdeps.Testdeps_TestDeps.TestDeps)), _internal.crypto.rand_dot_test.Rand_dot_test__tests._tests, _internal.crypto.rand_dot_test.Rand_dot_test__benchmarks._benchmarks, _internal.crypto.rand_dot_test.Rand_dot_test__fuzzTargets._fuzzTargets, _internal.crypto.rand_dot_test.Rand_dot_test__examples._examples);
        Sys.exit(_m.run());
    }
@:keep var __init_go2hx__ = {
        try {
            stdgo._internal.testing.internal.testdeps.Testdeps_importPath.importPath = ("crypto/rand" : stdgo.GoString);
        } catch(__exception__) if (__exception__.message != "__return__") throw __exception__;
        true;
    };
