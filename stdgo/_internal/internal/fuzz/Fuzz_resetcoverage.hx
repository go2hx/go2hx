package stdgo._internal.internal.fuzz;
function resetCoverage():Void {
        var _cov = stdgo._internal.internal.fuzz.Fuzz__coverage._coverage();
        //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/coverage.go#L16"
        for (_i => _ in _cov) {
            _cov[(_i : stdgo.GoInt)] = (0 : stdgo.GoUInt8);
        };
    }
