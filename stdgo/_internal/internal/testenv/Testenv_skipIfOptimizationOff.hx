package stdgo._internal.internal.testenv;
function skipIfOptimizationOff(_t:stdgo._internal.testing.Testing_TB.TB):Void {
        if (stdgo._internal.internal.testenv.Testenv_optimizationOff.optimizationOff()) {
            _t.helper();
            _t.skip(stdgo.Go.toInterface(("skipping test with optimization disabled" : stdgo.GoString)));
        };
    }
