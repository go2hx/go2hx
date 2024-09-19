package stdgo._internal.internal.fuzz;
import stdgo._internal.unsafe.Unsafe;
function resetCoverage():Void {
        var _cov = stdgo._internal.internal.fuzz.Fuzz__coverage._coverage();
        for (_i => _ in _cov) {
            _cov[(_i : stdgo.GoInt)] = (0 : stdgo.GoUInt8);
        };
    }
