package stdgo._internal.internal.testenv;
function mustInternalLink(_t:stdgo._internal.testing.Testing_tb.TB, _withCgo:Bool):Void {
        //"file:///home/runner/.go/go1.21.3/src/internal/testenv/testenv.go#L366"
        if (!stdgo._internal.internal.testenv.Testenv_caninternallink.canInternalLink(_withCgo)) {
            //"file:///home/runner/.go/go1.21.3/src/internal/testenv/testenv.go#L367"
            if ((_withCgo && stdgo._internal.internal.testenv.Testenv_caninternallink.canInternalLink(false) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/internal/testenv/testenv.go#L368"
                _t.skipf(("skipping test: internal linking on %s/%s is not supported with cgo" : stdgo.GoString), stdgo.Go.toInterface(("js" : stdgo.GoString)), stdgo.Go.toInterface(("wasm" : stdgo.GoString)));
            };
            //"file:///home/runner/.go/go1.21.3/src/internal/testenv/testenv.go#L370"
            _t.skipf(("skipping test: internal linking on %s/%s is not supported" : stdgo.GoString), stdgo.Go.toInterface(("js" : stdgo.GoString)), stdgo.Go.toInterface(("wasm" : stdgo.GoString)));
        };
    }
