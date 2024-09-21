package _internal.io.fs_dot_test;
import stdgo._internal.io.fs.Fs;
function main():Void {
        var _m = stdgo._internal.testing.Testing_mainStart.mainStart(stdgo.Go.asInterface((new stdgo._internal.testing.internal.testdeps.Testdeps_TestDeps.TestDeps() : stdgo._internal.testing.internal.testdeps.Testdeps_TestDeps.TestDeps)), _internal.io.fs_dot_test.Fs_dot_test__tests._tests, _internal.io.fs_dot_test.Fs_dot_test__benchmarks._benchmarks, _internal.io.fs_dot_test.Fs_dot_test__fuzzTargets._fuzzTargets, _internal.io.fs_dot_test.Fs_dot_test__examples._examples);
        Sys.exit(_m.run());
    }
@:keep var __init_go2hx__ = {
        try {
            var __tmp__0 = _internal.io.fs_test.Fs_test__formatTests._formatTests, __tmp__1 = _internal.io.fs_test.Fs_test__isValidPathTests._isValidPathTests, __tmp__2 = _internal.io.fs_test.Fs_test__globTests._globTests, __tmp__3 = _internal.io.fs_test.Fs_test__testFsys._testFsys, __tmp__4 = _internal.io.fs_test.Fs_test__tree._tree;
            var __tmp__0 = _internal.io.fs_dot_test.Fs_dot_test__tests._tests, __tmp__1 = _internal.io.fs_dot_test.Fs_dot_test__benchmarks._benchmarks, __tmp__2 = _internal.io.fs_dot_test.Fs_dot_test__fuzzTargets._fuzzTargets, __tmp__3 = _internal.io.fs_dot_test.Fs_dot_test__examples._examples;
            stdgo._internal.testing.internal.testdeps.Testdeps_importPath.importPath = ("io/fs" : stdgo.GoString);
        } catch(__exception__) if (__exception__.message != "__return__") throw __exception__;
        true;
    };
