package stdgo._internal.runtime.coverage;
function _granClash(_g:stdgo._internal.internal.coverage.Coverage_countergranularity.CounterGranularity):Bool {
        if (stdgo._internal.runtime.coverage.Coverage__cgran._cgran == ((0 : stdgo._internal.internal.coverage.Coverage_countergranularity.CounterGranularity))) {
            stdgo._internal.runtime.coverage.Coverage__cgran._cgran = _g;
            return false;
        };
        return stdgo._internal.runtime.coverage.Coverage__cgran._cgran != (_g);
    }
