package stdgo._internal.internal.testenv;
function mustHaveGoBuild(_t:stdgo._internal.testing.Testing_tb.TB):Void {
        //"file:///home/runner/.go/go1.21.3/src/internal/testenv/testenv.go#L117"
        if (stdgo._internal.os.Os_getenv.getenv(("GO_GCFLAGS" : stdgo.GoString)) != ((stdgo.Go.str() : stdgo.GoString))) {
            //"file:///home/runner/.go/go1.21.3/src/internal/testenv/testenv.go#L118"
            _t.helper();
            //"file:///home/runner/.go/go1.21.3/src/internal/testenv/testenv.go#L119"
            _t.skipf(("skipping test: \'go build\' not compatible with setting $GO_GCFLAGS" : stdgo.GoString));
        };
        //"file:///home/runner/.go/go1.21.3/src/internal/testenv/testenv.go#L121"
        if (!stdgo._internal.internal.testenv.Testenv_hasgobuild.hasGoBuild()) {
            //"file:///home/runner/.go/go1.21.3/src/internal/testenv/testenv.go#L122"
            _t.helper();
            //"file:///home/runner/.go/go1.21.3/src/internal/testenv/testenv.go#L123"
            _t.skipf(("skipping test: \'go build\' unavailable: %v" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.internal.testenv.Testenv__gobuilderr._goBuildErr));
        };
    }
