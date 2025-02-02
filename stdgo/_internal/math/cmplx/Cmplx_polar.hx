package stdgo._internal.math.cmplx;
function polar(_x:stdgo.GoComplex128):{ var _0 : stdgo.GoFloat64; var _1 : stdgo.GoFloat64; } {
        var _r = (0 : stdgo.GoFloat64), __952 = (0 : stdgo.GoFloat64);
        return {
            final __tmp__:{ var _0 : stdgo.GoFloat64; var _1 : stdgo.GoFloat64; } = { _0 : stdgo._internal.math.cmplx.Cmplx_abs.abs(_x), _1 : stdgo._internal.math.cmplx.Cmplx_phase.phase(_x) };
            _r = __tmp__._0;
            __952 = __tmp__._1;
            __tmp__;
        };
    }
