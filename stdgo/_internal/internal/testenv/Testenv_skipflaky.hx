package stdgo._internal.internal.testenv;
function skipFlaky(_t:stdgo._internal.testing.Testing_tb.TB, _issue:stdgo.GoInt):Void {
        //"file:///home/runner/.go/go1.21.3/src/internal/testenv/testenv.go#L417"
        _t.helper();
        //"file:///home/runner/.go/go1.21.3/src/internal/testenv/testenv.go#L418"
        if (!stdgo._internal.internal.testenv.Testenv__flaky._flaky.value) {
            //"file:///home/runner/.go/go1.21.3/src/internal/testenv/testenv.go#L419"
            _t.skipf(("skipping known flaky test without the -flaky flag; see golang.org/issue/%d" : stdgo.GoString), stdgo.Go.toInterface(_issue));
        };
    }
