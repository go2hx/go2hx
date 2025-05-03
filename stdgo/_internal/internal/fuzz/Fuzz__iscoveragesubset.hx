package stdgo._internal.internal.fuzz;
function _isCoverageSubset(_base:stdgo.Slice<stdgo.GoUInt8>, _snapshot:stdgo.Slice<stdgo.GoUInt8>):Bool {
        //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/coverage.go#L72"
        for (_i => _v in _base) {
            //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/coverage.go#L73"
            if ((_v & _snapshot[(_i : stdgo.GoInt)] : stdgo.GoUInt8) != (_v)) {
                //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/coverage.go#L74"
                return false;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/coverage.go#L77"
        return true;
    }
