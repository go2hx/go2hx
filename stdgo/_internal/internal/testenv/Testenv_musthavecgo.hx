package stdgo._internal.internal.testenv;
function mustHaveCGO(_t:stdgo._internal.testing.Testing_tb.TB):Void {
        //"file:///home/runner/.go/go1.21.3/src/internal/testenv/testenv.go#L351"
        if (!stdgo._internal.internal.testenv.Testenv_hascgo.hasCGO()) {
            //"file:///home/runner/.go/go1.21.3/src/internal/testenv/testenv.go#L352"
            _t.skipf(("skipping test: no cgo" : stdgo.GoString));
        };
    }
