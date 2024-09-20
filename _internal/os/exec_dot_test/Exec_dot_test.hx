package _internal.os.exec_dot_test;
function main():Void {
        var _m = stdgo._internal.testing.Testing_mainStart.mainStart(stdgo.Go.asInterface((new stdgo._internal.testing.internal.testdeps.Testdeps_TestDeps.TestDeps() : stdgo._internal.testing.internal.testdeps.Testdeps_TestDeps.TestDeps)), _internal.os.exec_dot_test.Exec_dot_test__tests._tests, _internal.os.exec_dot_test.Exec_dot_test__benchmarks._benchmarks, _internal.os.exec_dot_test.Exec_dot_test__fuzzTargets._fuzzTargets, _internal.os.exec_dot_test.Exec_dot_test__examples._examples);
        _internal.os.exec_test.Exec_test_testMain.testMain(_m);
        Sys.exit((stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface(stdgo.Go.asInterface(_m))).elem().fieldByName(("exitCode" : stdgo.GoString)).int_() : stdgo.GoInt));
    }
@:keep var __init_go2hx__ = {
        try {
            var __tmp__0 = _internal.os.exec_test.Exec_test__pathVar._pathVar, __tmp__1 = _internal.os.exec_test.Exec_test__quitSignal._quitSignal, __tmp__2 = _internal.os.exec_test.Exec_test__pipeSignal._pipeSignal, __tmp__3 = _internal.os.exec_test.Exec_test__helperCommands._helperCommands;
            var _godebug = (stdgo._internal.os.Os_getenv.getenv(("GODEBUG" : stdgo.GoString))?.__copy__() : stdgo.GoString);
            if (_godebug != (stdgo.Go.str())) {
                _godebug = (_godebug + (("," : stdgo.GoString))?.__copy__() : stdgo.GoString);
            };
            _godebug = (_godebug + (("execwait=2" : stdgo.GoString))?.__copy__() : stdgo.GoString);
            stdgo._internal.os.Os_setenv.setenv(("GODEBUG" : stdgo.GoString), _godebug?.__copy__());
            if (stdgo._internal.os.Os_getenv.getenv(("GO_EXEC_TEST_PID" : stdgo.GoString)) != (stdgo.Go.str())) {
                throw "__return__";
            };
            if (false) {
                throw "__return__";
            };
            {
                var _fd = ((3 : stdgo.GoUIntptr) : stdgo.GoUIntptr);
                stdgo.Go.cfor((_fd <= (100 : stdgo.GoUIntptr) : Bool), _fd++, {
                    if (stdgo._internal.internal.poll.Poll_isPollDescriptor.isPollDescriptor(_fd)) {
                        continue;
                    };
                    if (stdgo._internal.os.exec.internal.fdtest.Fdtest_exists.exists(_fd)) {
                        _internal.os.exec_test.Exec_test__haveUnexpectedFDs._haveUnexpectedFDs = true;
                        throw "__return__";
                    };
                });
            };
            var __tmp__0 = _internal.os.exec_dot_test.Exec_dot_test__tests._tests, __tmp__1 = _internal.os.exec_dot_test.Exec_dot_test__benchmarks._benchmarks, __tmp__2 = _internal.os.exec_dot_test.Exec_dot_test__fuzzTargets._fuzzTargets, __tmp__3 = _internal.os.exec_dot_test.Exec_dot_test__examples._examples;
            stdgo._internal.testing.internal.testdeps.Testdeps_importPath.importPath = ("os/exec" : stdgo.GoString);
        } catch(__exception__) if (__exception__.message != "__return__") throw __exception__;
        true;
    };
