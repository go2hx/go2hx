package stdgo._internal.runtime.pprof;
function _unlockProfiles():Void {
        //"file:///home/runner/.go/go1.21.3/src/runtime/pprof/pprof.go#L198"
        stdgo._internal.runtime.pprof.Pprof__profiles._profiles._mu.unlock();
    }
