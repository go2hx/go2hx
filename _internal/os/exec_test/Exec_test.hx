package _internal.os.exec_test;
import stdgo._internal.os.exec.Exec;
@:keep var __init_go2hx__ = {
        try {
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
        } catch(__exception__) if (__exception__.message != "__return__") throw __exception__;
        true;
    };
