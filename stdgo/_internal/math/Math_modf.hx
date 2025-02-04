package stdgo._internal.math;
function modf(_f:stdgo.GoFloat64):{ var _0 : stdgo.GoFloat64; var _1 : stdgo.GoFloat64; } {
        var _int = (0 : stdgo.GoFloat64), _frac = (0 : stdgo.GoFloat64);
        if (false) {
            return {
                final __tmp__:{ var _0 : stdgo.GoFloat64; var _1 : stdgo.GoFloat64; } = stdgo._internal.math.Math__archmodf._archModf(_f);
                _int = __tmp__._0;
                _frac = __tmp__._1;
                __tmp__;
            };
        };
        return {
            final __tmp__:{ var _0 : stdgo.GoFloat64; var _1 : stdgo.GoFloat64; } = stdgo._internal.math.Math__modf._modf(_f);
            _int = __tmp__._0;
            _frac = __tmp__._1;
            __tmp__;
        };
    }
