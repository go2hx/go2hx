package stdgo._internal.internal.testenv;
function skipIfShortAndSlow(_t:stdgo._internal.testing.Testing_TB.TB):Void {
        if ((stdgo._internal.testing.Testing_short.short() && stdgo._internal.internal.testenv.Testenv_cPUIsSlow.cPUIsSlow() : Bool)) {
            _t.helper();
            _t.skipf(("skipping test in -short mode on %s" : stdgo.GoString), stdgo.Go.toInterface(("wasm" : stdgo.GoString)));
        };
    }
