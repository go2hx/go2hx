package stdgo._internal.strconv;
function _digitZero(_dst:stdgo.Slice<stdgo.GoUInt8>):stdgo.GoInt {
        for (_i => _ in _dst) {
            _dst[(_i : stdgo.GoInt)] = (48 : stdgo.GoUInt8);
        };
        return (_dst.length);
    }
