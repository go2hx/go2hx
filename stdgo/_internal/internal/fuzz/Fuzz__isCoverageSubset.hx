package stdgo._internal.internal.fuzz;
import stdgo._internal.unsafe.Unsafe;
function _isCoverageSubset(_base:stdgo.Slice<stdgo.GoUInt8>, _snapshot:stdgo.Slice<stdgo.GoUInt8>):Bool {
        for (_i => _v in _base) {
            if ((_v & _snapshot[(_i : stdgo.GoInt)] : stdgo.GoUInt8) != (_v)) {
                return false;
            };
        };
        return true;
    }
