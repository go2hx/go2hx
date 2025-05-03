package stdgo._internal.strconv;
function _digitZero(_dst:stdgo.Slice<stdgo.GoUInt8>):stdgo.GoInt {
        //"file:///home/runner/.go/go1.21.3/src/strconv/decimal.go#L62"
        for (_i => _ in _dst) {
            _dst[(_i : stdgo.GoInt)] = (48 : stdgo.GoUInt8);
        };
        //"file:///home/runner/.go/go1.21.3/src/strconv/decimal.go#L65"
        return (_dst.length);
    }
