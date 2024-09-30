package stdgo._internal.internal.fuzz;
function _hasCoverageBit(_base:stdgo.Slice<stdgo.GoUInt8>, _snapshot:stdgo.Slice<stdgo.GoUInt8>):Bool {
        for (_i => _ in _snapshot) {
            if ((_snapshot[(_i : stdgo.GoInt)] & _base[(_i : stdgo.GoInt)] : stdgo.GoUInt8) != ((0 : stdgo.GoUInt8))) {
                return true;
            };
        };
        return false;
    }
