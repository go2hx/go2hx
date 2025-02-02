package stdgo._internal.runtime.pprof;
function _writeMutex(_w:stdgo._internal.io.Io_Writer.Writer, _debug:stdgo.GoInt):stdgo.Error {
        return stdgo._internal.runtime.pprof.Pprof__writeProfileInternal._writeProfileInternal(_w, _debug, ("mutex" : stdgo.GoString), stdgo._internal.runtime.Runtime_mutexProfile.mutexProfile);
    }
