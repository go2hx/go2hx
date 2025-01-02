package stdgo._internal.internal.testenv;
function mustHaveExec(_t:stdgo._internal.testing.Testing_TB.TB):Void {
        @:check2 stdgo._internal.internal.testenv.Testenv__tryExecOnce._tryExecOnce.do_(function():Void {
            stdgo._internal.internal.testenv.Testenv__tryExecErr._tryExecErr = stdgo._internal.internal.testenv.Testenv__tryExec._tryExec();
        });
        if (stdgo._internal.internal.testenv.Testenv__tryExecErr._tryExecErr != null) {
            _t.skipf(("skipping test: cannot exec subprocess on %s/%s: %v" : stdgo.GoString), stdgo.Go.toInterface(("js" : stdgo.GoString)), stdgo.Go.toInterface(("wasm" : stdgo.GoString)), stdgo.Go.toInterface(stdgo._internal.internal.testenv.Testenv__tryExecErr._tryExecErr));
        };
    }
