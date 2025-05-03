package stdgo._internal.encoding.json;
function _genString(_stddev:stdgo.GoFloat64):stdgo.GoString {
        var _n = (stdgo._internal.math.Math_abs.abs(((stdgo._internal.math.rand.Rand_normfloat64.normFloat64() * _stddev : stdgo.GoFloat64) + (_stddev / (2 : stdgo.GoFloat64) : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoInt);
        var _c = (new stdgo.Slice<stdgo.GoInt32>((_n : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
        //"file:///home/runner/.go/go1.21.3/src/encoding/json/scanner_test.go#L263"
        for (_i => _ in _c) {
            var _f = (stdgo._internal.math.Math_abs.abs(((stdgo._internal.math.rand.Rand_normfloat64.normFloat64() * (64 : stdgo.GoFloat64) : stdgo.GoFloat64) + (32 : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64);
            //"file:///home/runner/.go/go1.21.3/src/encoding/json/scanner_test.go#L265"
            if ((_f > (1.114111e+06 : stdgo.GoFloat64) : Bool)) {
                _f = (1.114111e+06 : stdgo.GoFloat64);
            };
            _c[(_i : stdgo.GoInt)] = (_f : stdgo.GoInt32);
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/json/scanner_test.go#L270"
        return (_c : stdgo.GoString)?.__copy__();
    }
