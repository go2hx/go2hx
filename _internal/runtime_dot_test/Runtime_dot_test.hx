package _internal.runtime_dot_test;
import stdgo._internal.runtime.Runtime;
function main():Void {
        var _m = stdgo._internal.testing.Testing_mainStart.mainStart(stdgo.Go.asInterface((new stdgo._internal.testing.internal.testdeps.Testdeps_TestDeps.TestDeps() : stdgo._internal.testing.internal.testdeps.Testdeps_TestDeps.TestDeps)), _internal.runtime_dot_test.Runtime_dot_test__tests._tests, _internal.runtime_dot_test.Runtime_dot_test__benchmarks._benchmarks, _internal.runtime_dot_test.Runtime_dot_test__fuzzTargets._fuzzTargets, _internal.runtime_dot_test.Runtime_dot_test__examples._examples);
        _internal.runtime_test.Runtime_test_testMain.testMain(_m);
        Sys.exit((stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface(stdgo.Go.asInterface(_m))).elem().fieldByName(("exitCode" : stdgo.GoString)).int_() : stdgo.GoInt));
    }
@:keep var __init_go2hx__ = {
        try {
            var __deferstack__:Array<Void -> Void> = [];
            try {
                if (stdgo._internal.os.Os_getenv.getenv(("GO_TEST_RUNTIME_PANIC" : stdgo.GoString)) == (("1" : stdgo.GoString))) {
                    __deferstack__.unshift(() -> {
                        var a = function():Void {
                            var __deferstack__:Array<Void -> Void> = [];
                            try {
                                {
                                    var _r = ({
                                        final r = stdgo.Go.recover_exception;
                                        stdgo.Go.recover_exception = null;
                                        r;
                                    } : stdgo.AnyInterface);
                                    if (_r != null) {
                                        Sys.exit((0 : stdgo.GoInt));
                                    };
                                };
                                {
                                    for (defer in __deferstack__) {
                                        defer();
                                    };
                                    if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                                    return;
                                };
                            } catch(__exception__) {
                                var exe:Dynamic = __exception__.native;
                                if ((exe is haxe.ValueException)) exe = exe.value;
                                if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                                    if (__exception__.message == "__return__") throw "__return__";
                                    exe = stdgo.Go.toInterface(__exception__.message);
                                };
                                stdgo.Go.recover_exception = exe;
                                for (defer in __deferstack__) {
                                    defer();
                                };
                                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                                return;
                            };
                        };
                        a();
                    });
                    stdgo._internal.runtime.Runtime_panicForTesting.panicForTesting((null : stdgo.Slice<stdgo.GoUInt8>), (1 : stdgo.GoInt));
                    Sys.exit((0 : stdgo.GoInt));
                };
                {
                    for (defer in __deferstack__) {
                        defer();
                    };
                    if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                    throw "__return__";
                };
            } catch(__exception__) {
                var exe:Dynamic = __exception__.native;
                if ((exe is haxe.ValueException)) exe = exe.value;
                if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                    if (__exception__.message == "__return__") throw "__return__";
                    exe = stdgo.Go.toInterface(__exception__.message);
                };
                stdgo.Go.recover_exception = exe;
                for (defer in __deferstack__) {
                    defer();
                };
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                throw "__return__";
            };
            stdgo._internal.runtime.Runtime_fmtSprintf.fmtSprintf = stdgo._internal.fmt.Fmt_sprintf.sprintf;
            stdgo._internal.runtime.Runtime_testenvOptimizationOff.testenvOptimizationOff = stdgo._internal.internal.testenv.Testenv_optimizationOff.optimizationOff;
            stdgo._internal.runtime.Runtime_netpollGenericInit.netpollGenericInit();
            stdgo._internal.runtime.Runtime_setTracebackEnv.setTracebackEnv(("system" : stdgo.GoString));
            stdgo._internal.testing.internal.testdeps.Testdeps_importPath.importPath = ("runtime" : stdgo.GoString);
        } catch(__exception__) if (__exception__.message != "__return__") throw __exception__;
        true;
    };
