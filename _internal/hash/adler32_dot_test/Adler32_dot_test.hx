package _internal.hash.adler32_dot_test;
function main():Void {
        var _m = stdgo._internal.testing.Testing_mainStart.mainStart(stdgo.Go.asInterface((new stdgo._internal.testing.internal.testdeps.Testdeps_TestDeps.TestDeps() : stdgo._internal.testing.internal.testdeps.Testdeps_TestDeps.TestDeps)), _internal.hash.adler32_dot_test.Adler32_dot_test__tests._tests, _internal.hash.adler32_dot_test.Adler32_dot_test__benchmarks._benchmarks, _internal.hash.adler32_dot_test.Adler32_dot_test__fuzzTargets._fuzzTargets, _internal.hash.adler32_dot_test.Adler32_dot_test__examples._examples);
        Sys.exit(_m.run());
    }
@:keep var __init_go2hx__ = {
        try {
            var __tmp__0 = stdgo._internal.hash.adler32.Adler32__golden._golden;
            var __tmp__0 = _internal.hash.adler32_dot_test.Adler32_dot_test__tests._tests, __tmp__1 = _internal.hash.adler32_dot_test.Adler32_dot_test__benchmarks._benchmarks, __tmp__2 = _internal.hash.adler32_dot_test.Adler32_dot_test__fuzzTargets._fuzzTargets, __tmp__3 = _internal.hash.adler32_dot_test.Adler32_dot_test__examples._examples;
            stdgo._internal.testing.internal.testdeps.Testdeps_importPath.importPath = ("hash/adler32" : stdgo.GoString);
        } catch(__exception__) if (__exception__.message != "__return__") throw __exception__;
        true;
    };
