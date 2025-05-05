package stdgo._internal.internal.fuzz;
function _hasCoverageBit(_base:stdgo.Slice<stdgo.GoUInt8>, _snapshot:stdgo.Slice<stdgo.GoUInt8>):Bool {
        //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/coverage.go#L83"
        for (_i => _ in _snapshot) {
            //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/coverage.go#L84"
            if ((_snapshot[(_i : stdgo.GoInt)] & _base[(_i : stdgo.GoInt)] : stdgo.GoUInt8) != ((0 : stdgo.GoUInt8))) {
                //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/coverage.go#L85"
                return true;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/coverage.go#L88"
        return false;
    }
