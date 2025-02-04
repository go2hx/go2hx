package stdgo._internal.internal.testenv;
function mustHaveParallelism(_t:stdgo._internal.testing.Testing_tb.TB):Void {
        if (!stdgo._internal.internal.testenv.Testenv_hasparallelism.hasParallelism()) {
            _t.skipf(("skipping test: no parallelism available on %s/%s" : stdgo.GoString), stdgo.Go.toInterface(("js" : stdgo.GoString)), stdgo.Go.toInterface(("wasm" : stdgo.GoString)));
        };
    }
