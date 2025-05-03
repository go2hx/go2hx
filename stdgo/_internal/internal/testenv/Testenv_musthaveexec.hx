package stdgo._internal.internal.testenv;
function mustHaveExec(_t:stdgo._internal.testing.Testing_tb.TB):Void {
        //"file:///home/runner/.go/go1.21.3/src/internal/testenv/exec.go#L34"
        stdgo._internal.internal.testenv.Testenv__tryexeconce._tryExecOnce.do_(function():Void {
            stdgo._internal.internal.testenv.Testenv__tryexecerr._tryExecErr = stdgo._internal.internal.testenv.Testenv__tryexec._tryExec();
        });
        //"file:///home/runner/.go/go1.21.3/src/internal/testenv/exec.go#L37"
        if (stdgo._internal.internal.testenv.Testenv__tryexecerr._tryExecErr != null) {
            //"file:///home/runner/.go/go1.21.3/src/internal/testenv/exec.go#L38"
            _t.skipf(("skipping test: cannot exec subprocess on %s/%s: %v" : stdgo.GoString), stdgo.Go.toInterface(("js" : stdgo.GoString)), stdgo.Go.toInterface(("wasm" : stdgo.GoString)), stdgo.Go.toInterface(stdgo._internal.internal.testenv.Testenv__tryexecerr._tryExecErr));
        };
    }
