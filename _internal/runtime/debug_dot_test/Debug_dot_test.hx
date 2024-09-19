package _internal.runtime.debug_dot_test;
import stdgo._internal.runtime.debug.Debug;
function main():Void {
        var _m = stdgo._internal.testing.Testing_mainStart.mainStart(stdgo.Go.asInterface((new stdgo._internal.testing.internal.testdeps.Testdeps_TestDeps.TestDeps() : stdgo._internal.testing.internal.testdeps.Testdeps_TestDeps.TestDeps)), _internal.runtime.debug_dot_test.Debug_dot_test__tests._tests, _internal.runtime.debug_dot_test.Debug_dot_test__benchmarks._benchmarks, _internal.runtime.debug_dot_test.Debug_dot_test__fuzzTargets._fuzzTargets, _internal.runtime.debug_dot_test.Debug_dot_test__examples._examples);
        _internal.runtime.debug_test.Debug_test_testMain.testMain(_m);
        Sys.exit((stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface(stdgo.Go.asInterface(_m))).elem().fieldByName(("exitCode" : stdgo.GoString)).int_() : stdgo.GoInt));
    }
@:keep var __init_go2hx__ = {
        try {
            stdgo._internal.testing.internal.testdeps.Testdeps_importPath.importPath = ("runtime/debug" : stdgo.GoString);
        } catch(__exception__) if (__exception__.message != "__return__") throw __exception__;
        true;
    };
