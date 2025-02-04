package stdgo._internal.internal.testenv;
function mustHaveGoBuild(_t:stdgo._internal.testing.Testing_tb.TB):Void {
        if (stdgo._internal.os.Os_getenv.getenv(("GO_GCFLAGS" : stdgo.GoString)) != ((stdgo.Go.str() : stdgo.GoString))) {
            _t.helper();
            _t.skipf(("skipping test: \'go build\' not compatible with setting $GO_GCFLAGS" : stdgo.GoString));
        };
        if (!stdgo._internal.internal.testenv.Testenv_hasgobuild.hasGoBuild()) {
            _t.helper();
            _t.skipf(("skipping test: \'go build\' unavailable: %v" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.internal.testenv.Testenv__gobuilderr._goBuildErr));
        };
    }
