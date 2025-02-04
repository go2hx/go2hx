package stdgo._internal.internal.testenv;
function mustHaveExec(_t:stdgo._internal.testing.Testing_tb.TB):Void {
        @:check2 stdgo._internal.internal.testenv.Testenv__tryexeconce._tryExecOnce.do_(function():Void {
            stdgo._internal.internal.testenv.Testenv__tryexecerr._tryExecErr = stdgo._internal.internal.testenv.Testenv__tryexec._tryExec();
        });
        if (stdgo._internal.internal.testenv.Testenv__tryexecerr._tryExecErr != null) {
            _t.skipf(("skipping test: cannot exec subprocess on %s/%s: %v" : stdgo.GoString), stdgo.Go.toInterface(("js" : stdgo.GoString)), stdgo.Go.toInterface(("wasm" : stdgo.GoString)), stdgo.Go.toInterface(stdgo._internal.internal.testenv.Testenv__tryexecerr._tryExecErr));
        };
    }
