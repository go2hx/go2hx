package stdgo._internal.runtime.coverage;
function _modeClash(_m:stdgo._internal.internal.coverage.Coverage_countermode.CounterMode):Bool {
        //"file:///home/runner/.go/go1.21.3/src/runtime/coverage/emit.go#L154"
        if (((_m == (4 : stdgo._internal.internal.coverage.Coverage_countermode.CounterMode)) || (_m == (5 : stdgo._internal.internal.coverage.Coverage_countermode.CounterMode)) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/runtime/coverage/emit.go#L155"
            return false;
        };
        //"file:///home/runner/.go/go1.21.3/src/runtime/coverage/emit.go#L157"
        if (stdgo._internal.runtime.coverage.Coverage__cmode._cmode == ((0 : stdgo._internal.internal.coverage.Coverage_countermode.CounterMode))) {
            stdgo._internal.runtime.coverage.Coverage__cmode._cmode = _m;
            //"file:///home/runner/.go/go1.21.3/src/runtime/coverage/emit.go#L159"
            return false;
        };
        //"file:///home/runner/.go/go1.21.3/src/runtime/coverage/emit.go#L161"
        return stdgo._internal.runtime.coverage.Coverage__cmode._cmode != (_m);
    }
