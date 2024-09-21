package _internal.os.exec_test;
import stdgo._internal.os.exec.Exec;
function _exePath(_t:stdgo._internal.testing.Testing_TB.TB):stdgo.GoString {
        _internal.os.exec_test.Exec_test__exeOnce._exeOnce.do_(function():Void {
            {
                var __tmp__ = stdgo._internal.os.Os_executable.executable();
                _internal.os.exec_test.Exec_test__exeOnce._exeOnce._path = __tmp__._0?.__copy__();
                _internal.os.exec_test.Exec_test__exeOnce._exeOnce._err = __tmp__._1;
            };
        });
        if (_internal.os.exec_test.Exec_test__exeOnce._exeOnce._err != null) {
            if (_t == null) {
                throw stdgo.Go.toInterface(_internal.os.exec_test.Exec_test__exeOnce._exeOnce._err);
            };
            _t.fatal(stdgo.Go.toInterface(_internal.os.exec_test.Exec_test__exeOnce._exeOnce._err));
        };
        return _internal.os.exec_test.Exec_test__exeOnce._exeOnce._path?.__copy__();
    }
