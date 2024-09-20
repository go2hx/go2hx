package _internal.encoding.base64_dot_test;
function main():Void {
        var _m = stdgo._internal.testing.Testing_mainStart.mainStart(stdgo.Go.asInterface((new stdgo._internal.testing.internal.testdeps.Testdeps_TestDeps.TestDeps() : stdgo._internal.testing.internal.testdeps.Testdeps_TestDeps.TestDeps)), _internal.encoding.base64_dot_test.Base64_dot_test__tests._tests, _internal.encoding.base64_dot_test.Base64_dot_test__benchmarks._benchmarks, _internal.encoding.base64_dot_test.Base64_dot_test__fuzzTargets._fuzzTargets, _internal.encoding.base64_dot_test.Base64_dot_test__examples._examples);
        Sys.exit(_m.run());
    }
@:keep var __init_go2hx__ = {
        try {
            var __tmp__0 = _internal.encoding.base64_dot_test.Base64_dot_test__tests._tests, __tmp__1 = _internal.encoding.base64_dot_test.Base64_dot_test__benchmarks._benchmarks, __tmp__2 = _internal.encoding.base64_dot_test.Base64_dot_test__fuzzTargets._fuzzTargets, __tmp__3 = _internal.encoding.base64_dot_test.Base64_dot_test__examples._examples;
            stdgo._internal.testing.internal.testdeps.Testdeps_importPath.importPath = ("encoding/base64" : stdgo.GoString);
        } catch(__exception__) if (__exception__.message != "__return__") throw __exception__;
        true;
    };
