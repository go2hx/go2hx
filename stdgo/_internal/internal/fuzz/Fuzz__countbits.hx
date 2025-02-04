package stdgo._internal.internal.fuzz;
function _countBits(_cov:stdgo.Slice<stdgo.GoUInt8>):stdgo.GoInt {
        var _n = (0 : stdgo.GoInt);
        for (__8 => _c in _cov) {
            _n = (_n + (stdgo._internal.math.bits.Bits_onescount8.onesCount8(_c)) : stdgo.GoInt);
        };
        return _n;
    }
