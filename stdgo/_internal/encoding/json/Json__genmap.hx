package stdgo._internal.encoding.json;
function _genMap(_n:stdgo.GoInt):stdgo.GoMap<stdgo.GoString, stdgo.AnyInterface> {
        var _f = ((stdgo._internal.math.Math_abs.abs(stdgo._internal.math.rand.Rand_normfloat64.normFloat64()) * stdgo._internal.math.Math_min.min((10 : stdgo.GoFloat64), ((_n / (2 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoFloat64)) : stdgo.GoFloat64) : stdgo.GoInt);
        if ((_f > _n : Bool)) {
            _f = _n;
        };
        if (((_n > (0 : stdgo.GoInt) : Bool) && (_f == (0 : stdgo.GoInt)) : Bool)) {
            _f = (1 : stdgo.GoInt);
        };
        var _x = (({
            final x = new stdgo.GoMap.GoStringMap<stdgo.AnyInterface>();
            x.__defaultValue__ = () -> (null : stdgo.AnyInterface);
            {};
            x;
        } : stdgo.GoMap<stdgo.GoString, stdgo.AnyInterface>) : stdgo.GoMap<stdgo.GoString, stdgo.AnyInterface>);
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < _f : Bool)) {
                _x[stdgo._internal.encoding.json.Json__genstring._genString((10 : stdgo.GoFloat64))] = stdgo._internal.encoding.json.Json__genvalue._genValue(((((((_i + (1 : stdgo.GoInt) : stdgo.GoInt)) * _n : stdgo.GoInt)) / _f : stdgo.GoInt) - (((_i * _n : stdgo.GoInt)) / _f : stdgo.GoInt) : stdgo.GoInt));
                _i++;
            };
        };
        return _x;
    }
