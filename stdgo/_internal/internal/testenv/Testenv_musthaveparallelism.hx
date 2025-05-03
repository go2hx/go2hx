package stdgo._internal.internal.testenv;
function mustHaveParallelism(_t:stdgo._internal.testing.Testing_tb.TB):Void {
        //"file:///home/runner/.go/go1.21.3/src/internal/testenv/testenv.go#L155"
        if (!stdgo._internal.internal.testenv.Testenv_hasparallelism.hasParallelism()) {
            //"file:///home/runner/.go/go1.21.3/src/internal/testenv/testenv.go#L156"
            _t.skipf(("skipping test: no parallelism available on %s/%s" : stdgo.GoString), stdgo.Go.toInterface(("js" : stdgo.GoString)), stdgo.Go.toInterface(("wasm" : stdgo.GoString)));
        };
    }
