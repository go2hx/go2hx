package _internal.time_dot_test;
import stdgo._internal.time.Time;
function main():Void {
        var _m = stdgo._internal.testing.Testing_mainStart.mainStart(stdgo.Go.asInterface((new stdgo._internal.testing.internal.testdeps.Testdeps_TestDeps.TestDeps() : stdgo._internal.testing.internal.testdeps.Testdeps_TestDeps.TestDeps)), _internal.time_dot_test.Time_dot_test__tests._tests, _internal.time_dot_test.Time_dot_test__benchmarks._benchmarks, _internal.time_dot_test.Time_dot_test__fuzzTargets._fuzzTargets, _internal.time_dot_test.Time_dot_test__examples._examples);
        Sys.exit(_m.run());
    }
@:keep var __init_go2hx__ = {
        try {
            if (stdgo._internal.time.Time_zoneinfoForTesting.zoneinfoForTesting() != null) {
                throw stdgo.Go.toInterface(stdgo._internal.fmt.Fmt_errorf.errorf(("zoneinfo initialized before first LoadLocation" : stdgo.GoString)));
            };
            stdgo._internal.testing.internal.testdeps.Testdeps_importPath.importPath = ("time" : stdgo.GoString);
        } catch(__exception__) if (__exception__.message != "__return__") throw __exception__;
        true;
    };
