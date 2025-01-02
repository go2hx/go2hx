package stdgo._internal.internal.testenv;
function mustHaveExecPath(_t:stdgo._internal.testing.Testing_TB.TB, _path:stdgo.GoString):Void {
        stdgo._internal.internal.testenv.Testenv_mustHaveExec.mustHaveExec(_t);
        var __tmp__ = @:check2 stdgo._internal.internal.testenv.Testenv__execPaths._execPaths.load(stdgo.Go.toInterface(_path)), _err:stdgo.AnyInterface = __tmp__._0, _found:Bool = __tmp__._1;
        if (!_found) {
            {
                var __tmp__ = stdgo._internal.os.exec.Exec_lookPath.lookPath(_path?.__copy__());
                _err = stdgo.Go.toInterface(__tmp__._1);
            };
            {
                var __tmp__ = @:check2 stdgo._internal.internal.testenv.Testenv__execPaths._execPaths.loadOrStore(stdgo.Go.toInterface(_path), _err);
                _err = __tmp__._0;
            };
        };
        if (_err != null) {
            _t.skipf(("skipping test: %s: %s" : stdgo.GoString), stdgo.Go.toInterface(_path), _err);
        };
    }
