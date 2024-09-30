package stdgo._internal.internal.fuzz;
function _isCoverageSubset(_base:stdgo.Slice<stdgo.GoUInt8>, _snapshot:stdgo.Slice<stdgo.GoUInt8>):Bool {
        for (_i => _v in _base) {
            if ((_v & _snapshot[(_i : stdgo.GoInt)] : stdgo.GoUInt8) != (_v)) {
                return false;
            };
        };
        return true;
    }
