package _internal.flag_dot_test;
import stdgo._internal.flag.Flag;
function main():Void {
        var _m = stdgo._internal.testing.Testing_mainStart.mainStart(stdgo.Go.asInterface((new stdgo._internal.testing.internal.testdeps.Testdeps_TestDeps.TestDeps() : stdgo._internal.testing.internal.testdeps.Testdeps_TestDeps.TestDeps)), _internal.flag_dot_test.Flag_dot_test__tests._tests, _internal.flag_dot_test.Flag_dot_test__benchmarks._benchmarks, _internal.flag_dot_test.Flag_dot_test__fuzzTargets._fuzzTargets, _internal.flag_dot_test.Flag_dot_test__examples._examples);
        Sys.exit(_m.run());
    }
@:keep var __init_go2hx__ = {
        try {
            {};
            stdgo._internal.flag.Flag_stringVar.stringVar(stdgo.Go.pointer(_internal.flag_test.Flag_test__gopherType._gopherType), ("gopher_type" : stdgo.GoString), ("pocket" : stdgo.GoString), ("the variety of gopher" : stdgo.GoString));
            stdgo._internal.flag.Flag_stringVar.stringVar(stdgo.Go.pointer(_internal.flag_test.Flag_test__gopherType._gopherType), ("g" : stdgo.GoString), ("pocket" : stdgo.GoString), ("the variety of gopher (shorthand)" : stdgo.GoString));
            stdgo._internal.flag.Flag_var_.var_(stdgo.Go.asInterface((stdgo.Go.setRef(_internal.flag_test.Flag_test__intervalFlag._intervalFlag) : stdgo.Ref<_internal.flag_test.Flag_test_T_interval.T_interval>)), ("deltaT" : stdgo.GoString), ("comma-separated list of intervals to use between events" : stdgo.GoString));
            stdgo._internal.testing.internal.testdeps.Testdeps_importPath.importPath = ("flag" : stdgo.GoString);
        } catch(__exception__) if (__exception__.message != "__return__") throw __exception__;
        true;
    };
