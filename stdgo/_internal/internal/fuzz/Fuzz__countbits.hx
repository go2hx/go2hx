package stdgo._internal.internal.fuzz;
function _countBits(_cov:stdgo.Slice<stdgo.GoUInt8>):stdgo.GoInt {
        var _n = (0 : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/coverage.go#L93"
        for (__8 => _c in _cov) {
            _n = (_n + (stdgo._internal.math.bits.Bits_onescount8.onesCount8(_c)) : stdgo.GoInt);
        };
        //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/coverage.go#L96"
        return _n;
    }
