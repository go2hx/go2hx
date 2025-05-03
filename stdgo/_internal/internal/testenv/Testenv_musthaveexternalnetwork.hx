package stdgo._internal.internal.testenv;
function mustHaveExternalNetwork(_t:stdgo._internal.testing.Testing_tb.TB):Void {
        //"file:///home/runner/.go/go1.21.3/src/internal/testenv/testenv.go#L313"
        if (true) {
            //"file:///home/runner/.go/go1.21.3/src/internal/testenv/testenv.go#L314"
            _t.helper();
            //"file:///home/runner/.go/go1.21.3/src/internal/testenv/testenv.go#L315"
            _t.skipf(("skipping test: no external network on %s" : stdgo.GoString), stdgo.Go.toInterface(("js" : stdgo.GoString)));
        };
        //"file:///home/runner/.go/go1.21.3/src/internal/testenv/testenv.go#L317"
        if (stdgo._internal.testing.Testing_short.short()) {
            //"file:///home/runner/.go/go1.21.3/src/internal/testenv/testenv.go#L318"
            _t.helper();
            //"file:///home/runner/.go/go1.21.3/src/internal/testenv/testenv.go#L319"
            _t.skipf(("skipping test: no external network in -short mode" : stdgo.GoString));
        };
    }
