package stdgo._internal.internal.testenv;
function mustInternalLink(_t:stdgo._internal.testing.Testing_TB.TB, _withCgo:Bool):Void {
        if (!stdgo._internal.internal.testenv.Testenv_canInternalLink.canInternalLink(_withCgo)) {
            if ((_withCgo && stdgo._internal.internal.testenv.Testenv_canInternalLink.canInternalLink(false) : Bool)) {
                _t.skipf(("skipping test: internal linking on %s/%s is not supported with cgo" : stdgo.GoString), stdgo.Go.toInterface(("js" : stdgo.GoString)), stdgo.Go.toInterface(("wasm" : stdgo.GoString)));
            };
            _t.skipf(("skipping test: internal linking on %s/%s is not supported" : stdgo.GoString), stdgo.Go.toInterface(("js" : stdgo.GoString)), stdgo.Go.toInterface(("wasm" : stdgo.GoString)));
        };
    }
