package stdgo._internal.internal.testenv;
function mustHaveLink(_t:stdgo._internal.testing.Testing_tb.TB):Void {
        //"file:///home/runner/.go/go1.21.3/src/internal/testenv/testenv.go#L409"
        if (!stdgo._internal.internal.testenv.Testenv_haslink.hasLink()) {
            //"file:///home/runner/.go/go1.21.3/src/internal/testenv/testenv.go#L410"
            _t.skipf(("skipping test: hardlinks are not supported on %s/%s" : stdgo.GoString), stdgo.Go.toInterface(("js" : stdgo.GoString)), stdgo.Go.toInterface(("wasm" : stdgo.GoString)));
        };
    }
