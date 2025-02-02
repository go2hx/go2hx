package stdgo._internal.internal.testenv;
function mustHaveGoRun(_t:stdgo._internal.testing.Testing_TB.TB):Void {
        if (!stdgo._internal.internal.testenv.Testenv_hasGoRun.hasGoRun()) {
            _t.skipf(("skipping test: \'go run\' not available on %s/%s" : stdgo.GoString), stdgo.Go.toInterface(("js" : stdgo.GoString)), stdgo.Go.toInterface(("wasm" : stdgo.GoString)));
        };
    }
