package stdgo._internal.runtime.pprof;
function _writeMutex(_w:stdgo._internal.io.Io_writer.Writer, _debug:stdgo.GoInt):stdgo.Error {
        //"file:///home/runner/.go/go1.21.3/src/runtime/pprof/pprof.go#L861"
        return stdgo._internal.runtime.pprof.Pprof__writeprofileinternal._writeProfileInternal(_w, _debug, ("mutex" : stdgo.GoString), stdgo._internal.runtime.Runtime_mutexprofile.mutexProfile);
    }
