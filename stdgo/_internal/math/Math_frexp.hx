package stdgo._internal.math;
function frexp(_f:stdgo.GoFloat64):{ var _0 : stdgo.GoFloat64; var _1 : stdgo.GoInt; } {
        var _frac = (0 : stdgo.GoFloat64), _exp = (0 : stdgo.GoInt);
        if (false) {
            return {
                final __tmp__:{ var _0 : stdgo.GoFloat64; var _1 : stdgo.GoInt; } = stdgo._internal.math.Math__archfrexp._archFrexp(_f);
                _frac = __tmp__._0;
                _exp = __tmp__._1;
                __tmp__;
            };
        };
        return {
            final __tmp__:{ var _0 : stdgo.GoFloat64; var _1 : stdgo.GoInt; } = stdgo._internal.math.Math__frexp._frexp(_f);
            _frac = __tmp__._0;
            _exp = __tmp__._1;
            __tmp__;
        };
    }
