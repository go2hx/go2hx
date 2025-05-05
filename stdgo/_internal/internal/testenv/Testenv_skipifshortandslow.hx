package stdgo._internal.internal.testenv;
function skipIfShortAndSlow(_t:stdgo._internal.testing.Testing_tb.TB):Void {
        //"file:///home/runner/.go/go1.21.3/src/internal/testenv/testenv.go#L444"
        if ((stdgo._internal.testing.Testing_short.short() && stdgo._internal.internal.testenv.Testenv_cpuisslow.cPUIsSlow() : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/internal/testenv/testenv.go#L445"
            _t.helper();
            //"file:///home/runner/.go/go1.21.3/src/internal/testenv/testenv.go#L446"
            _t.skipf(("skipping test in -short mode on %s" : stdgo.GoString), stdgo.Go.toInterface(("wasm" : stdgo.GoString)));
        };
    }
