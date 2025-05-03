package stdgo._internal.internal.testenv;
function mustHaveGoRun(_t:stdgo._internal.testing.Testing_tb.TB):Void {
        //"file:///home/runner/.go/go1.21.3/src/internal/testenv/testenv.go#L136"
        if (!stdgo._internal.internal.testenv.Testenv_hasgorun.hasGoRun()) {
            //"file:///home/runner/.go/go1.21.3/src/internal/testenv/testenv.go#L137"
            _t.skipf(("skipping test: \'go run\' not available on %s/%s" : stdgo.GoString), stdgo.Go.toInterface(("js" : stdgo.GoString)), stdgo.Go.toInterface(("wasm" : stdgo.GoString)));
        };
    }
