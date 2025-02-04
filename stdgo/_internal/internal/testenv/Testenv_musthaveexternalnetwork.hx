package stdgo._internal.internal.testenv;
function mustHaveExternalNetwork(_t:stdgo._internal.testing.Testing_tb.TB):Void {
        if (true) {
            _t.helper();
            _t.skipf(("skipping test: no external network on %s" : stdgo.GoString), stdgo.Go.toInterface(("js" : stdgo.GoString)));
        };
        if (stdgo._internal.testing.Testing_short.short()) {
            _t.helper();
            _t.skipf(("skipping test: no external network in -short mode" : stdgo.GoString));
        };
    }
