package _internal.path_dot_test;
import stdgo._internal.path.Path;
function main():Void {
        var _m = stdgo._internal.testing.Testing_mainStart.mainStart(stdgo.Go.asInterface((new stdgo._internal.testing.internal.testdeps.Testdeps_TestDeps.TestDeps() : stdgo._internal.testing.internal.testdeps.Testdeps_TestDeps.TestDeps)), _internal.path_dot_test.Path_dot_test__tests._tests, _internal.path_dot_test.Path_dot_test__benchmarks._benchmarks, _internal.path_dot_test.Path_dot_test__fuzzTargets._fuzzTargets, _internal.path_dot_test.Path_dot_test__examples._examples);
        Sys.exit(_m.run());
    }
@:keep var __init_go2hx__ = {
        try {
            var __tmp__0 = _internal.path_test.Path_test__matchTests._matchTests, __tmp__1 = _internal.path_test.Path_test__cleantests._cleantests, __tmp__2 = _internal.path_test.Path_test__splittests._splittests, __tmp__3 = _internal.path_test.Path_test__jointests._jointests, __tmp__4 = _internal.path_test.Path_test__exttests._exttests, __tmp__5 = _internal.path_test.Path_test__basetests._basetests, __tmp__6 = _internal.path_test.Path_test__dirtests._dirtests, __tmp__7 = _internal.path_test.Path_test__isAbsTests._isAbsTests;
            var __tmp__0 = _internal.path_dot_test.Path_dot_test__tests._tests, __tmp__1 = _internal.path_dot_test.Path_dot_test__benchmarks._benchmarks, __tmp__2 = _internal.path_dot_test.Path_dot_test__fuzzTargets._fuzzTargets, __tmp__3 = _internal.path_dot_test.Path_dot_test__examples._examples;
            stdgo._internal.testing.internal.testdeps.Testdeps_importPath.importPath = ("path" : stdgo.GoString);
        } catch(__exception__) if (__exception__.message != "__return__") throw __exception__;
        true;
    };
