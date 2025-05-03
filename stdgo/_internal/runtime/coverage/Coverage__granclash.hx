package stdgo._internal.runtime.coverage;
function _granClash(_g:stdgo._internal.internal.coverage.Coverage_countergranularity.CounterGranularity):Bool {
        //"file:///home/runner/.go/go1.21.3/src/runtime/coverage/emit.go#L165"
        if (stdgo._internal.runtime.coverage.Coverage__cgran._cgran == ((0 : stdgo._internal.internal.coverage.Coverage_countergranularity.CounterGranularity))) {
            stdgo._internal.runtime.coverage.Coverage__cgran._cgran = _g;
            //"file:///home/runner/.go/go1.21.3/src/runtime/coverage/emit.go#L167"
            return false;
        };
        //"file:///home/runner/.go/go1.21.3/src/runtime/coverage/emit.go#L169"
        return stdgo._internal.runtime.coverage.Coverage__cgran._cgran != (_g);
    }
