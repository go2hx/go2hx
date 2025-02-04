package stdgo._internal.math.big;
function _appendZeros(_buf:stdgo.Slice<stdgo.GoUInt8>, _n:stdgo.GoInt):stdgo.Slice<stdgo.GoUInt8> {
        while ((_n > (0 : stdgo.GoInt) : Bool)) {
            _buf = (_buf.__append__((48 : stdgo.GoUInt8)));
            _n--;
        };
        return _buf;
    }
