package stdgo._internal.runtime.coverage;
function _modeClash(_m:stdgo._internal.internal.coverage.Coverage_countermode.CounterMode):Bool {
        if (((_m == (4 : stdgo._internal.internal.coverage.Coverage_countermode.CounterMode)) || (_m == (5 : stdgo._internal.internal.coverage.Coverage_countermode.CounterMode)) : Bool)) {
            return false;
        };
        if (stdgo._internal.runtime.coverage.Coverage__cmode._cmode == ((0 : stdgo._internal.internal.coverage.Coverage_countermode.CounterMode))) {
            stdgo._internal.runtime.coverage.Coverage__cmode._cmode = _m;
            return false;
        };
        return stdgo._internal.runtime.coverage.Coverage__cmode._cmode != (_m);
    }
