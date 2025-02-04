package stdgo._internal.encoding.json;
function _genArray(_n:stdgo.GoInt):stdgo.Slice<stdgo.AnyInterface> {
        var _f = ((stdgo._internal.math.Math_abs.abs(stdgo._internal.math.rand.Rand_normfloat64.normFloat64()) * stdgo._internal.math.Math_min.min((10 : stdgo.GoFloat64), ((_n / (2 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoFloat64)) : stdgo.GoFloat64) : stdgo.GoInt);
        if ((_f > _n : Bool)) {
            _f = _n;
        };
        if ((_f < (1 : stdgo.GoInt) : Bool)) {
            _f = (1 : stdgo.GoInt);
        };
        var _x = (new stdgo.Slice<stdgo.AnyInterface>((_f : stdgo.GoInt).toBasic(), 0) : stdgo.Slice<stdgo.AnyInterface>);
        for (_i => _ in _x) {
            _x[(_i : stdgo.GoInt)] = stdgo._internal.encoding.json.Json__genvalue._genValue(((((((_i + (1 : stdgo.GoInt) : stdgo.GoInt)) * _n : stdgo.GoInt)) / _f : stdgo.GoInt) - (((_i * _n : stdgo.GoInt)) / _f : stdgo.GoInt) : stdgo.GoInt));
        };
        return _x;
    }
