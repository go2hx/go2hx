package stdgo._internal.internal.testenv;
function skipFlaky(_t:stdgo._internal.testing.Testing_tb.TB, _issue:stdgo.GoInt):Void {
        _t.helper();
        if (!stdgo._internal.internal.testenv.Testenv__flaky._flaky.value) {
            _t.skipf(("skipping known flaky test without the -flaky flag; see golang.org/issue/%d" : stdgo.GoString), stdgo.Go.toInterface(_issue));
        };
    }
