package stdgo._internal.internal.testenv;
function skipIfOptimizationOff(_t:stdgo._internal.testing.Testing_tb.TB):Void {
        //"file:///home/runner/.go/go1.21.3/src/internal/testenv/testenv.go#L452"
        if (stdgo._internal.internal.testenv.Testenv_optimizationoff.optimizationOff()) {
            //"file:///home/runner/.go/go1.21.3/src/internal/testenv/testenv.go#L453"
            _t.helper();
            //"file:///home/runner/.go/go1.21.3/src/internal/testenv/testenv.go#L454"
            _t.skip(stdgo.Go.toInterface(("skipping test with optimization disabled" : stdgo.GoString)));
        };
    }
