package stdgo._internal.internal.testenv;
function mustHaveBuildMode(_t:stdgo._internal.testing.Testing_tb.TB, _buildmode:stdgo.GoString):Void {
        //"file:///home/runner/.go/go1.21.3/src/internal/testenv/testenv.go#L378"
        if (!stdgo._internal.internal.platform.Platform_buildmodesupported.buildModeSupported(stdgo._internal.runtime.Runtime_compiler.compiler?.__copy__(), _buildmode?.__copy__(), ("js" : stdgo.GoString), ("wasm" : stdgo.GoString))) {
            //"file:///home/runner/.go/go1.21.3/src/internal/testenv/testenv.go#L379"
            _t.skipf(("skipping test: build mode %s on %s/%s is not supported by the %s compiler" : stdgo.GoString), stdgo.Go.toInterface(_buildmode), stdgo.Go.toInterface(("js" : stdgo.GoString)), stdgo.Go.toInterface(("wasm" : stdgo.GoString)), stdgo.Go.toInterface(stdgo._internal.runtime.Runtime_compiler.compiler));
        };
    }
