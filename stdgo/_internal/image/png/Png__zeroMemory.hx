package stdgo._internal.image.png;
function _zeroMemory(_v:stdgo.Slice<stdgo.GoUInt8>):Void {
        for (_i => _ in _v) {
            _v[(_i : stdgo.GoInt)] = (0 : stdgo.GoUInt8);
        };
    }
