package stdgo._internal.internal.testenv;
function mustHaveCGO(_t:stdgo._internal.testing.Testing_TB.TB):Void {
        if (!stdgo._internal.internal.testenv.Testenv_hasCGO.hasCGO()) {
            _t.skipf(("skipping test: no cgo" : stdgo.GoString));
        };
    }
