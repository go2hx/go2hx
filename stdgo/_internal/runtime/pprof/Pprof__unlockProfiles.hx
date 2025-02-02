package stdgo._internal.runtime.pprof;
function _unlockProfiles():Void {
        @:check2 stdgo._internal.runtime.pprof.Pprof__profiles._profiles._mu.unlock();
    }
