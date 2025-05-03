package stdgo._internal.internal.testenv;
function mustHaveExecPath(_t:stdgo._internal.testing.Testing_tb.TB, _path:stdgo.GoString):Void {
        //"file:///home/runner/.go/go1.21.3/src/internal/testenv/exec.go#L88"
        stdgo._internal.internal.testenv.Testenv_musthaveexec.mustHaveExec(_t);
        var __tmp__ = stdgo._internal.internal.testenv.Testenv__execpaths._execPaths.load(stdgo.Go.toInterface(_path)), _err:stdgo.AnyInterface = __tmp__._0, _found:Bool = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/internal/testenv/exec.go#L91"
        if (!_found) {
            {
                var __tmp__ = stdgo._internal.os.exec.Exec_lookpath.lookPath(_path?.__copy__());
                _err = stdgo.Go.toInterface(@:tmpset0 __tmp__._1);
            };
            {
                var __tmp__ = stdgo._internal.internal.testenv.Testenv__execpaths._execPaths.loadOrStore(stdgo.Go.toInterface(_path), _err);
                _err = @:tmpset0 __tmp__._0;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/internal/testenv/exec.go#L95"
        if (_err != null) {
            //"file:///home/runner/.go/go1.21.3/src/internal/testenv/exec.go#L96"
            _t.skipf(("skipping test: %s: %s" : stdgo.GoString), stdgo.Go.toInterface(_path), _err);
        };
    }
