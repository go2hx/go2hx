package stdgo._internal.internal.testenv;
function mustHaveSymlink(_t:stdgo._internal.testing.Testing_tb.TB):Void {
        var __tmp__ = stdgo._internal.internal.testenv.Testenv__hassymlink._hasSymlink(), _ok:Bool = __tmp__._0, _reason:stdgo.GoString = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/internal/testenv/testenv.go#L393"
        if (!_ok) {
            //"file:///home/runner/.go/go1.21.3/src/internal/testenv/testenv.go#L394"
            _t.skipf(("skipping test: cannot make symlinks on %s/%s: %s" : stdgo.GoString), stdgo.Go.toInterface(("js" : stdgo.GoString)), stdgo.Go.toInterface(("wasm" : stdgo.GoString)), stdgo.Go.toInterface(_reason));
        };
    }
